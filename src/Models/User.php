<?php
namespace App\Models;

use PDO;

class User
{
    /** @var PDO DB connection, shared with all model-queries. */
    private PDO $pdo;

    /** @param PDO $pdo Active database connection, provided by Connection::connect(). */
    public function __construct(PDO $pdo)
    {
        $this->pdo = $pdo;
    }

    /**
     * Fetches a single player row by its primary key.
     *
     * @param int $id The player_id to look up.
     * @return array|null Associative array of the player row, or null if not found.
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
     * Used during login (credential check) and registration (uniqueness check).
     *
     * @param string $name The playername to look up.
     * @return array|null Associative array of the player row, or null if not found.
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
     * @param string $playername The chosen display name.
     * @param string $pw The plain-text password (hashed via password_hash()).
     */
    public function create(string $playername, string $pw): void
    {
        $pw_hash = password_hash($pw, PASSWORD_DEFAULT);

        $stmt = $this->pdo->prepare("INSERT INTO player (playername, pw_hash) VALUES (:playername, :pw_hash)");
        $stmt->execute([':playername' => $playername, ':pw_hash' => $pw_hash]);
    }
}