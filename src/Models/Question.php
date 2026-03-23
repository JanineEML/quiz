<?php
namespace App\Models;

use PDO;

class Question
{
    /** @var PDO DB connection, shared with all model-queries. */
    private PDO $pdo;

    /** @param PDO $pdo Active database connection, provided by Connection::connect(). */
    public function __construct(PDO $pdo)
    {
        $this->pdo = $pdo;
    }

    /**
     * Fetches a number of Questions, optionally from a category
     */
    public function fetchQuestions(?int $category, int $count): array
    {
        // Build statement
        $tempStmt = "SELECT * FROM question";
        
        if ($category) {
            $tempStmt .= " WHERE category_id = :category";
        }

        $tempStmt .= " ORDER BY RAND() LIMIT :count";

        // Prepare statement, bind values
        $stmt = $this->pdo->prepare($tempStmt);
        $stmt->bindValue(':count', $count, PDO::PARAM_INT);

        if ($category) {
            $stmt->bindValue(':category', $category, PDO::PARAM_INT);
        }

        $stmt->execute();
        $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
        
        return $result;
    }

    /**
     * Fetches all answers for a given question
     */
    public function fetchAnswers(int $questionId): array
    {
        $stmt = $this->pdo->prepare("SELECT * FROM answer WHERE question_id = ?");
        $stmt->execute([$questionId]);

        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    /**
     * Fetches all categories from the database, to fill the Dropdown Menu
     */
    public function fetchCategories(): array
    {
        $stmt = $this->pdo->query("SELECT * FROM category");

        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
}