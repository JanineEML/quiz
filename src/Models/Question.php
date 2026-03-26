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
     * Fetches a random selection of questions, optionally filtered by category.
     *
     * Returns an empty array if no questions match the criteria.
     *
     * @param int|null $category  Category ID to filter by, or null for all categories.
     * @param int      $count     Number of questions to fetch.
     * @return array              Array of question rows as associative arrays.
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
     * Fetches all four answers for a given question.
     *
     * Called by QuizController::playView() to render the answer buttons.
     *
     * @param int   $questionId  The question_id to fetch answers for.
     * @return array             Array of answer rows as associative arrays.
     */
    public function fetchAnswers(int $questionId): array
    {
        $stmt = $this->pdo->prepare("
            SELECT * FROM answer
            WHERE question_id = ?
        ");
        $stmt->execute([$questionId]);

        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    /**
     * Fetches a single answer row by its ID.
     *
     * Called by QuizController::play() to check if the player's choice is correct.
     *
     * @param int   $answerId  The answer_id to look up.
     * @return array           Associative array of the answer row.
     */
    public function fetchAnswer(int $answerId): array
    {
        $stmt = $this->pdo->prepare("
            SELECT * FROM answer
            WHERE answer_id = ?
        ");
        $stmt->execute([$answerId]);

        return $stmt->fetch(PDO::FETCH_ASSOC);
    }

    /**
     * Fetches the answer_text of the correct answer for a given question.
     *
     * Called by QuizController::play() to store the correct answer in wrong_answers.
     *
     * @param int    $questionId  The question_id to look up the correct answer for.
     * @return string             The answer_text of the correct answer.
     */
    public function fetchCorrectAnswer(int $questionId): string
    {
        $stmt = $this->pdo->prepare("
            SELECT answer_text FROM answer 
            WHERE question_id = ? AND is_correct = true
        ");
        $stmt->execute([$questionId]);

        return $stmt->fetchColumn();
    }

    /**
     * Fetches all categories from the database.
     *
     * Called by QuizController::startView() to populate the category dropdown.
     */
    public function fetchCategories(): array
    {
        $stmt = $this->pdo->query("SELECT * FROM category");

        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    /**
     * Returns the category_id of a randomly selected category.
     *
     * Called by QuizController::start() when the player selects "Zufällig".
     */
    public function fetchRandomCategoryId(): int
    {
        $stmt = $this->pdo->query("
            SELECT category_id
            FROM category
            ORDER BY RAND()
            LIMIT 1
        ");

        return (int) $stmt->fetchColumn();
    }

    /**
     * 
     */
    public function beginSession(int $playerId, ?int $categoryId, int $total): int
    {
        $stmt = $this->pdo->prepare("
            INSERT INTO quiz_session
            (player_id, category_id, total)
            VALUES (:pid, :cid, :total)
        ");

        $stmt->execute([
            ':pid' => $playerId,
            ':cid' => $categoryId,
            ':total' => $total
        ]);

        return (int) $this->pdo->lastInsertId();
    }

    /**
     * 
     */
    public function completeSession(int $qsId, int $score, int $xp): void
    {
        $stmt = $this->pdo->prepare("
            UPDATE quiz_session
            SET score = :score,
                xp_earned = :xp,
                time_completed = CURRENT_TIMESTAMP
            WHERE qs_id = :qsId
        ");
        $stmt->execute([
            ':score' => $score,
            ':xp' => $xp,
            ':qsId' => $qsId
        ]);
    }

    /**
     * Save a player's answer for a question to table player_result.
     *
     * From $_SESSION uses 'player_id'. Called by QuizController::play() after each answer.
     *
     * @param int  $isCorrect   Whether the chosen answer was correct.
     * @param int  $playerId    The ID of the player answering.
     * @param int  $questionId  The ID of the question answered.
     * @param int  $answerId    The ID of the answer chosen.
     */
    public function saveResult(int $isCorrect, int $questionId, int $answerId, int $sessionId): void
    {
        $stmt = $this->pdo->prepare("
            INSERT INTO quiz_answer 
            (is_correct, question_id, answer_id, qs_id)
            VALUES (:correct, :qid, :aid, :sid)
        ");
        $stmt->execute([
            ':correct' => $isCorrect,
            ':qid' => $questionId,
            ':aid' => $answerId,
            ':sid' => $sessionId
        ]);
    }
}