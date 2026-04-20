<?php

declare(strict_types=1);

namespace App\Controllers;

use App\Connection;

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
            redirect('/login');
        }

        // displays the home view
        require __DIR__ . '/../Views/home.php';
    }
}