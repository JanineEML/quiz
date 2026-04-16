<?php

declare(strict_types=1);

namespace App\Controllers;

use App\Connection;
use App\Models\Leaderboard;

class LeaderboardController
{
    /**
     * GET /leaderboard — renders the leaderboard for the active tab.
     */
    public function leaderboardView(): void
    {
        $lb = (new Leaderboard(Connection::connect()));
        $tab = $_GET['tab'] ?? 'xp';

        $ranking = match($tab) {
            'xp' => $lb->fetchByXp(),
            'completed' => $lb->fetchByCompletion(),
            'correct' => $lb->fetchByCorrectAnswers(),
            'achievements' => $lb->fetchByAchievements(),
            default => false
        };

        if (!$ranking) {
            redirect('/leaderboard');
        }

        $player = $_SESSION['player']['player_id'] ?? null;
        require __DIR__ . '/../Views/leaderboard.php';
    }
}