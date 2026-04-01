<?php
namespace App\Controllers;

use App\Connection;
use App\Models\Stats;

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

        $xp = $_SESSION['player']['xp'];
        $playername = $_SESSION['player']['playername'];
        $playerId = $_SESSION['player']['player_id'];
        $stats = (new Stats(Connection::connect()))->fetchByPlayer($playerId);

        // displays the home view
        require __DIR__ . '/../Views/home.php';
    }
}