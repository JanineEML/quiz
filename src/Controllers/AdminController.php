<?php

declare(strict_types=1);

namespace App\Controllers;

use App\Connection;
use App\Models\Question;

class AdminController
{
    /**
     * POST /admin/questions/add
     * From $_POST uses 'question_text', 'answers', 'correct', 'category', 'difficulty'.
     *
     * Rendert Formular erneut bei Validierungsfehler.
     * Leitet nach /admin/questions weiter bei Erfolg.
     */
    public function addQuestion(): void
    {
        $this->requireAdmin();
        $errors = [];

        $questionText = $_POST['question_text'];
        $answers = $_POST['answers'];
        $correct = (int) $_POST['correct'];
        $categoryId = (int) $_POST['category'];
        $difficultyId = (int) $_POST['difficulty'];

        if (empty($questionText)) {
            $errors['missing_question'] = "Fragetext fehlt.";
        }

        foreach ($answers as $a) {
            if (empty($a)) {
                $errors['empty_answer'] = "Bitte alle Antwortfelder ausfüllen.";
                break;
            }
        }

        if (!empty($errors)) {
            $_SESSION['errors'] = $errors;
            redirect("/admin/questions/add");
        }

        $q = new Question(Connection::connect());
        $q->addQuestion($questionText, $categoryId, $difficultyId, $answers, $correct);

        redirect('/admin/questions');
    }

    /**
     *
     */
    public function editQuestion(): void
    {}

    /**
     *
     */
    public function deleteQuestion(): void
    {}

    /**
     * GET /admin — renders the admin dashboard.
     */
    public function dashboard(): void
    {
        $this->requireAdmin();

        require __DIR__ . '/../Views/admin/dashboard.php';
    }

    /**
     *
     */
    public function questionsView(): void
    {
        $this->requireAdmin();

        $q = new Question(Connection::connect());

        $page = max(1, (int) ($_GET['page'] ?? 1));
        $limit = 25;
        $offset = ($page - 1) * $limit;
        $categories = $q->fetchCategories();
        $difficulties = $q->fetchDifficulties();

        $selectedCategory = !empty($_GET['category_id']) ? (int) $_GET['category_id'] : null;
        $questions = $q->fetchAll($limit, $offset, $selectedCategory);
        $total = $q->countQuestions($selectedCategory);
        $totalPages = (int) ceil($total / $limit);
        
        require __DIR__ . '/../Views/admin/questions.php';
    }

    /**
     *
     */
    public function editQuestionView(): void
    {}

    /**
     * Redirects to / if the player is not logged in or is not an admin.
     */
    private function requireAdmin(): void
    {
        if (!isset($_SESSION['player'])) {
            redirect('/');
        }

        if (!$_SESSION['player']['is_admin']) {
            redirect('/');
        }
    }
}