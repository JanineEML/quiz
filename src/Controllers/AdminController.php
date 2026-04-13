<?php

declare(strict_types=1);

namespace App\Controllers;

use App\Connection;
use App\Models\Question;

class AdminController
{
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