<?php
namespace App\Models;

use PDO;

class User {
    /**
     * 
     */
    private PDO $pdo;

    public function __construct(PDO $pdo) {
        $this->pdo = $pdo;
    }

    // provide a user by a unique id (or return null) - while searching for a id should
    // never return null, because the scope of the project is rather small, without
    // deletions during requests / sessions, but to learn 'defensive' programming,
    // the nullable return type will be used more often from now on.
    public function findId(int $id): ?array {
        $stmt = $this->pdo->prepare("SELECT * FROM player WHERE player_id = :id");
        $stmt->execute([':id' => $id]);

        $result = $stmt->fetch(PDO::FETCH_ASSOC); // return row in associative array

        // if something was found return $ result, if not, return null (since $result will be false)
        return $result ?: null;
    }
}