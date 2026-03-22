<?php
namespace App\Controllers;

class HomeController
{
    /**
     * GET /
     * From $_SESSION uses 'player'
     * 
     * Landing Page.
     * For now, redirects visitors to /login for authentication and only loads home for players.
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