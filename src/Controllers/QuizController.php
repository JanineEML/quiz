<?php
namespace App\Controllers;

use App\Connection;
use App\Models\Question;

class QuizController
{
    private const MIN_COUNT = 1;
    private const MAX_COUNT = 15;
    /**
     * POST /quiz/start
     * From $_POST uses category and count
     * 
     * 
     */
    public function start()
    {
        $this->requireAuth();

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

        $questions = (new Question(Connection::connect()))->fetchQuestions($category, $count);

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
            'wrong_answers' => []
        ];

        header('Location: /quiz/play');
        exit;
    }

    /**
     * POST /quiz/play
     * From $_POST uses 
     * 
     * 
     */
    public function play()
    {
        $this->requireAuth();

        $playerAnswer = (int) $_POST['answer_id'];
        $currentQuestion = $_SESSION['quiz']['questions'][$_SESSION['quiz']['counter']];
        $correctAnswer = (new Question(Connection::connect()))->fetchCorrectAnswer((int) $currentQuestion['question_id']);

        $answer = (new Question(Connection::connect()))->fetchAnswer($playerAnswer);
        $isCorrect = $answer['is_correct'];

        if ($isCorrect) {
            $_SESSION['quiz']['score'] += 1;
        }
        else {
            $_SESSION['quiz']['wrong_answers'][] = [
                'question' => $currentQuestion['question_text'],
                'answer' => $answer['answer_text'],
                'correct' => $correctAnswer
            ];
        }

        // TODO: player_results (Database) - using Question->saveResults()

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
     * GET /quiz/start renders the form to start a quiz.
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
     * GET /quiz/play renders the form to play a quiz.
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
     * GET /quiz/result renders result page, includes a link to /quiz/start.
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

        require __DIR__ . '/../Views/quiz/result.php';

        unset($_SESSION['quiz']);
    }

    private function requireAuth() 
    {
        if (!isset($_SESSION['player'])) {
            header('Location: /login');
            exit;
        }
    }
}