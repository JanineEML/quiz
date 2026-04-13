<?php

declare(strict_types=1);

namespace App\Models;

use PDO;

class User
{
    /** @var PDO DB connection, shared with all model-queries. */
    private PDO $pdo;

    /** @param PDO $pdo Active database connection, provided by Connection->connect(). */
    public function __construct(PDO $pdo)
    {
        $this->pdo = $pdo;
    }

    /**
     * Fetches a single player row by its primary key.
     *
     * Not yet called — reserved for session refresh after XP updates.
     *
     * @param int        $id  The player_id to look up.
     * @return array|null     Associative array of the player row, or null if not found.
     */
    public function fetchById(int $id): ?array
    {
        $stmt = $this->pdo->prepare("SELECT * FROM player WHERE player_id = ?");
        $stmt->execute([$id]);

        $result = $stmt->fetch(PDO::FETCH_ASSOC);
        return $result ?: null;
    }

    /**
     * Fetches a single player row by playername.
     *
     * Called by AuthController->login() to verify credentials and
     * AuthController->register() to check name uniqueness.
     *
     * @param string     $name  The playername to look up.
     * @return array|null       Associative array of the player row, or null if not found.
     */
    public function fetchByName(string $name): ?array
    {
        $stmt = $this->pdo->prepare("SELECT * FROM player WHERE playername = ?");
        $stmt->execute([$name]);

        $result = $stmt->fetch(PDO::FETCH_ASSOC);
        return $result ?: null;
    }

    /**
     * Creates a new player record. Hashes the password before storing.
     *
     * Called by AuthController->register() after successful validation.
     *
     * @param string $playername  The chosen display name.
     * @param string $pw          Plain-text password, hashed before storage.
     */
    public function create(string $playername, string $pw): void
    {
        $pw_hash = password_hash($pw, PASSWORD_DEFAULT);

        $stmt = $this->pdo->prepare("INSERT INTO player (playername, pw_hash) VALUES (:playername, :pw_hash)");
        $stmt->execute([':playername' => $playername, ':pw_hash' => $pw_hash]);
    }

    /**
     * Adds XP to a player's total in the database.
     *
     * Called by QuizController->resultView() after a quiz is completed.
     *
     * @param int $playerId  The ID of the player to award XP to.
     * @param int $xp        The amount of XP to add.
     */
    public function addXp(int $playerId, int $xp): void
    {
        $stmt = $this->pdo->prepare("
            UPDATE player
            SET xp = xp + :xp
            WHERE player_id = :pid
        ");
        $stmt->execute([
            ':xp' => $xp,
            ':pid' => $playerId
        ]);
    }
}