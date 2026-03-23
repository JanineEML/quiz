<?php
namespace App\Controllers;

use App\Connection;
use App\Models\Question;

class QuizController
{
    private const MIN_COUNT = 1;
    private const MAX_COUNT = 10;
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
        $category = (!empty($_POST['category']) ? (int)$_POST['category'] : null);
        $count = (int)$_POST['count'];

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
            'score' => 0
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
        $errors = [];
    }

    /**
     * POST /quiz/result
     * From $_POST uses 
     * 
     * 
     */
    public function result()
    {
        $this->requireAuth();
        $errors = [];
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

        require __DIR__ . '/../Views/quiz/play.php';
    }
    
    /**
     * GET /quiz/result renders result page, includes a link to /quiz/start.
     */
    public function resultView()
    {
        $this->requireAuth();

        require __DIR__ . '/../Views/quiz/result.php';
    }

    private function requireAuth() 
    {
        if (!isset($_SESSION['player'])) {
            header('Location: /login');
            exit;
        }
    }
}