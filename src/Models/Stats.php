<?php
namespace App\Models;

use PDO;

class Stats
{
    /** @var PDO DB connection, shared with all model-queries. */
    private PDO $pdo;

    /** @param PDO $pdo Active database connection, provided by Connection::connect(). */
    public function __construct(PDO $pdo)
    {
        $this->pdo = $pdo;
    }

    /**
     * Fetches aggregate answer stats and session count for a given player.
     *
     * Not yet called — intended for the statistics view.
     *
     * @param int   $playerId  The player's ID.
     * @return array           Associative array with total, correct, accuracy, and quizzesCompleted.
     */
    public function fetchByPlayer(int $playerId): array
    {
        $stmt = $this->pdo->prepare("
            SELECT  COUNT(*) AS total,
                    SUM(is_correct) AS correct,
                    ROUND(SUM(is_correct) / NULLIF(COUNT(*), 0) * 100, 1) AS accuracy
            FROM quiz_answer
            JOIN quiz_session USING (qs_id)
                WHERE player_id = :pid
        ");
        $stmt->execute([':pid' => $playerId]);

        $result = $stmt->fetch(PDO::FETCH_ASSOC);
        
        $stmt = $this->pdo->prepare("
            SELECT COUNT(*)
            FROM quiz_session
            WHERE player_id = :pid
        ");
        $stmt->execute([':pid' => $playerId]);

        $result['completed'] = $stmt->fetchColumn();   

        return $result;
    }
}