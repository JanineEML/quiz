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
     * Redirects to /admin/questions on validation error.
     * Redirects to /admin/questions on success.
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
            redirect("/admin/questions");
        }

        $q = new Question(Connection::connect());
        $q->addQuestion($questionText, $categoryId, $difficultyId, $answers, $correct);

        redirect('/admin/questions');
    }

    /**
     * POST /admin/questions/edit
     * From $_POST uses 'question_id', 'question_text', 'category_id', 'difficulty_id', 'answers', 'answer_ids', 'correct'.
     *
     * Redirects to /admin/questions on success.
     */
    public function editQuestion(): void
    {
        $this->requireAdmin();

        $questionId = (int) $_POST['question_id'];
        $questionText = $_POST['question_text'];
        $categoryId = (int) $_POST['category_id'];
        $difficultyId = (int) $_POST['difficulty_id'];
        $answers = $_POST['answers'];
        $answerIds = $_POST['answer_ids'];
        $correct = (int) $_POST['correct'];

        $q = new Question(Connection::connect());
        $q->updateQuestion($questionId, $questionText, $categoryId, $difficultyId);

        for ($i = 0; $i < count($answers); $i++) {
            $q->updateAnswer($answerIds[$i], $answers[$i], $correct === $i);
        }

        redirect('/admin/questions');
    }

    /**
     * POST /admin/questions/delete
     * From $_POST uses 'qid_delete'.
     *
     * Redirects to /admin/questions on success.
     */
    public function deleteQuestion(): void
    {
        $this->requireAdmin();

        $questionId = (int) $_POST['qid_delete'];
        (new Question(Connection::connect()))->deleteQuestion($questionId);
        redirect('/admin/questions');
    }

    /**
     * GET /admin — renders the admin dashboard.
     */
    public function dashboard(): void
    {
        $this->requireAdmin();

        require __DIR__ . '/../Views/admin/dashboard.php';
    }

    /**
     * GET /admin/questions — renders the question management view.
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
     * GET /admin/questions/edit — renders the edit form for a single question.
     */
    public function editQuestionView(): void
    {
        $this->requireAdmin();

        $questionId = (int) $_GET['qid_edit'];
        $q = (new Question(Connection::connect()));
        $question = $q->fetchQuestion($questionId);
        $answers = $q->fetchAnswers($questionId);

        $categories = $q->fetchCategories();
        $difficulties = $q->fetchDifficulties();

        require __DIR__ . '/../Views/admin/questionsEdit.php';
    }

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