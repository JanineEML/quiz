<?php
namespace App\Controllers;

class HomeController
{
    /**
     * GET /
     * From $_SESSION uses 'player'.
     * Redirects to /login if not authenticated. Renders home view on success.
     */
    public function home(): void
    {
        // check if active Session
        if (!isset($_SESSION['player'])) {
            header('Location: /login');
            exit;
        }

        // displays the home view
        require __DIR__ . '/../Views/home.php';
    }
}