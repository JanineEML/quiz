<?php
namespace App\Controllers;

use App\Connection;
use App\Models\Achievement;
use App\Models\User;
use App\Models\Question;

class QuizController
{
    private const MIN_COUNT = 1;
    private const MAX_COUNT = 15;
    /**
     * POST /quiz/start
     * From $_POST uses 'category_id', 'question_count'.
     *
     * Stores errors in $_SESSION['errors'] and redirects to /quiz/start on failure.
     * Stores quiz state in $_SESSION['quiz'] and redirects to /quiz/play on success.
     */
    public function start()
    {
        $this->requireAuth();

        $q = (new Question(Connection::connect()));

        // Question->fetchQuestions needs int (or null) as input
        $chosenCategory = $_POST['category_id'] ?? '';

        if ($chosenCategory === 'random') {
            $category = (new Question(Connection::connect()))->fetchRandomCategoryId();
        }
        elseif ($chosenCategory !== '') {
            $category = (int) $chosenCategory;
        }
        else {
            $category = null;
        }

        $count = (int)$_POST['question_count'];

        // Validate count span
        if ($count < self::MIN_COUNT || $count > self::MAX_COUNT) {
            $_SESSION['errors'] = ['Bitte zwischen ' . self::MIN_COUNT . ' und ' . self::MAX_COUNT . ' wählen.'];
            
            header('Location: /quiz/start');
            exit;
        }

        $questions = $q->fetchQuestions($category, $count);

        // Validate number of found Questions
        if (count($questions) < $count) {
            $_SESSION['errors'] = ['Zu wenig Fragen gefunden: ' . count($questions) . " / $count."];

            header('Location: /quiz/start');
            exit;
        }

        // save in $_SESSION
        $_SESSION['quiz'] = [
            'questions' => $questions,
            'counter' => 0,
            'score' => 0,
            'xp' => 0,
            'wrong_answers' => []
        ];

        $_SESSION['quiz']['quizId'] = $q->beginSession(
            $_SESSION['player']['player_id'],
            $category,
            $count
        );

        header('Location: /quiz/play');
        exit;
    }

    /**
     * POST /quiz/play
     * From $_POST uses 'answer_id'. From $_SESSION uses 'quiz', 'player'.
     *
     * Increments score and counter in $_SESSION['quiz'].
     * Redirects to /quiz/play while questions remain, then to /quiz/result.
     */
    public function play()
    {
        $this->requireAuth();

        $q = new Question(Connection::connect());

        $playerAnswer = (int) $_POST['answer_id'];
        $currentQuestion = $_SESSION['quiz']['questions'][$_SESSION['quiz']['counter']];

        $correctAnswer = $q->fetchCorrectAnswer((int) $currentQuestion['question_id']);
        $answer = $q->fetchAnswer($playerAnswer);

        $isCorrect = $answer['is_correct'];

        if ($isCorrect) {
            $_SESSION['quiz']['score'] += 1;
            $_SESSION['quiz']['xp'] += $this->calculateXp($currentQuestion['difficulty_id']);
        }
        else {
            $_SESSION['quiz']['wrong_answers'][] = [
                'question' => $currentQuestion['question_text'],
                'answer' => $answer['answer_text'],
                'correct' => $correctAnswer
            ];
        }
        
        // save Data to quiz_answer
        $q->saveResult(
            $isCorrect,
            $currentQuestion['question_id'],
            $playerAnswer,
            $_SESSION['quiz']['quizId']
        );

        // decide if redirecting to /play or /result
        $current = ++$_SESSION['quiz']['counter'];
        $total = count($_SESSION['quiz']['questions']);

        if ($current < $total) {
            header('Location: /quiz/play');
            exit;
        }

        header('Location: /quiz/result');
        exit;
    }

    /**
     * GET /quiz/start — renders the quiz start form.
     */
    public function startView()
    {
        $this->requireAuth();

        // pass constant as a local variable to the view
        $min_count = self::MIN_COUNT;
        $max_count = self::MAX_COUNT;
        $categories = (new Question(Connection::connect()))->fetchCategories();
        require __DIR__ . '/../Views/quiz/start.php';
    }
    
    /**
     * GET /quiz/play — renders the current question. Redirects to /quiz/start if no active quiz in $_SESSION.
     */
    public function playView()
    {
        $this->requireAuth();

        if (!isset($_SESSION['quiz'])) {
            $_SESSION['errors'] = ["Kein Quiz vorhanden, starte ein neues:"];
            header('Location: /quiz/start');
            exit;
        }

        $i = $_SESSION['quiz']['counter'];
        $total = count($_SESSION['quiz']['questions']);

        if ($i >= $total) {
            $_SESSION['errors'] = ["Counter invalide"];
            header('Location: /quiz/start');
            exit;
        }
        
        $question = $_SESSION['quiz']['questions'][$i];
        $answers = (new Question(Connection::connect()))->fetchAnswers($question['question_id']);

        shuffle($answers);

        require __DIR__ . '/../Views/quiz/play.php';
    }
    
    /**
     * GET /quiz/result — renders the result page and clears $_SESSION['quiz']. Redirects to /quiz/start if no active quiz.
     */
    public function resultView()
    {
        $this->requireAuth();

        if (!isset($_SESSION['quiz'])) {
            $_SESSION['errors'] = ["Kein Quiz vorhanden, starte ein neues:"];
            header('Location: /quiz/start');
            exit;
        }

        $score = $_SESSION['quiz']['score'];
        $total = count($_SESSION['quiz']['questions']);
        $wrongAnswers = $_SESSION['quiz']['wrong_answers'];
        // reward xp for completing the quiz
        $playerId = $_SESSION['player']['player_id'];
        $xp = $_SESSION['quiz']['xp'];

        (new User(Connection::connect()))->addXp($playerId, $xp);
        $_SESSION['player']['xp'] += $xp;

        (new Question(Connection::connect()))->completeSession(
            $_SESSION['quiz']['quizId'],
            $score,
            $xp
        );

        $unlockedAchievements = (new Achievement(Connection::connect()))->award($playerId);

        require __DIR__ . '/../Views/quiz/result.php';

        unset($_SESSION['quiz']);
    }

    /**
     * Calculates XP earned for a single correct answer based on difficulty.
     *
     * @param int $difficulty  The difficulty_id of the question (1 = easy, 2 = medium, 3 = hard).
     * @return int             XP to award, rounded to the nearest integer.
     */
    private function calculateXp(int $difficulty): int
    {
        $multiplier = [
            1 => 1.0,
            2 => 1.2,
            3 => 1.4,
        ];

        return (int) round(15 * ($multiplier[$difficulty] ?? 1.0));
    }

    /**
     * Redirects to /login if no active player session exists.
     */
    private function requireAuth() 
    {
        if (!isset($_SESSION['player'])) {
            header('Location: /login');
            exit;
        }
    }
}