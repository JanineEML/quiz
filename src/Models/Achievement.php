<?php
namespace App\Models;

use PDO;

class Achievement
{
    /** @var PDO DB connection, shared with all model-queries. */
    private PDO $pdo;

    /** @param PDO $pdo Active database connection, provided by Connection::connect(). */
    public function __construct(PDO $pdo)
    {
        $this->pdo = $pdo;
    }

    /**
     * Fetches all achievements from the achievement table.
     *
     * Not yet called — intended for the achievements overview view.
     *
     * @return array  All achievement rows as associative arrays.
     */
    public function fetchAll(): array
    {
        $stmt = $this->pdo->query("SELECT * FROM achievement");

        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    /**
     * Fetches all achievements unlocked by a given player.
     *
     * Not yet called — intended for the achievements overview view.
     *
     * @param int   $playerId  The player's ID.
     * @return array           Rows from player_achievement as associative arrays, or [] if none.
     */
    public function fetchByPlayer(int $playerId): array
    {
        $stmt = $this->pdo->prepare("
            SELECT * FROM player_achievement
            WHERE player_id = :pid
        ");
        $stmt->execute([':pid' => $playerId]);

        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    /**
     * Unlocks an achievement for a player, ignoring duplicates.
     *
     * Called by Achievement->award().
     *
     * @param int  $playerId       The player's ID.
     * @param int  $achievementId  The achievement to unlock.
     */
    private function unlock(int $playerId, int $achievementId): void
    {
        $stmt = $this->pdo->prepare("
            INSERT INTO player_achievement
            (player_id, achievement_id)
            VALUES (:pid, :aid)
        ");
        $stmt->execute([
            ':pid' => $playerId,
            ':aid' => $achievementId
        ]);
    }

    /**
     * 
     */
    private function validate()
    {}

    /**
     * 
     */
    public function award()
    {}
}