<?php

declare(strict_types=1);

namespace App\Models;

use PDO;

class Leaderboard 
{
        /** @var PDO DB connection, shared with all model-queries. */
    private PDO $pdo;

    /** @param PDO $pdo Active database connection, provided by Connection->connect(). */
    public function __construct(PDO $pdo)
    {
        $this->pdo = $pdo;
    }

    /**
     * Fetches all players ranked by total XP in descending order.
     *
     * Called by LeaderboardController::index().
     *
     * @return array  Player rows with player_id, playername, and xp.
     */
    public function fetchByXp(): array
    {
        $stmt = $this->pdo->query("SELECT player_id, playername, xp
            FROM player
            ORDER BY xp DESC
            LIMIT 50");
        
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    /**
     * Fetches all players ranked by total number of correct answers in descending order.
     *
     * Called by LeaderboardController::index().
     *
     * @return array  Player rows with player_id, playername, and correct.
     */
    public function fetchByCorrectAnswers(): array
    {
        $stmt = $this->pdo->query("SELECT p.player_id, p.playername, COUNT(*) AS correct
            FROM player AS p
            JOIN quiz_session AS qs USING (player_id)
            JOIN quiz_answer AS qa USING (qs_id)
            WHERE qa.is_correct = 1
            GROUP BY p.player_id
            ORDER BY correct DESC
            LIMIT 50");
        
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    /**
     * Fetches all players ranked by number of unlocked achievements in descending order.
     *
     * Called by LeaderboardController::index().
     *
     * @return array  Player rows with player_id, playername, and achievements.
     */
    public function fetchByAchievements(): array
    {
        $stmt = $this->pdo->query("SELECT p.player_id, p.playername, COUNT(*) AS achievements
            FROM player AS p
            JOIN player_achievement as pa USING (player_id)
            GROUP BY p.player_id
            ORDER BY achievements DESC
            LIMIT 50");

        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    /**
     * Fetches all players ranked by number of completed quiz sessions in descending order.
     *
     * Called by LeaderboardController::index().
     *
     * @return array  Player rows with player_id, playername, and completed.
     */
    public function fetchByCompletion(): array
    {
        $stmt = $this->pdo->query("SELECT p.player_id, p.playername, COUNT(qs.qs_id) AS completed
            FROM player AS p
            JOIN quiz_session AS qs USING (player_id)
            WHERE qs.time_completed IS NOT NULL
            GROUP BY p.player_id
            ORDER BY completed DESC
            LIMIT 50");

        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
}