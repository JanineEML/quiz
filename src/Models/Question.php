<?php

declare(strict_types=1);

namespace App\Models;

use PDO;

class Question
{
    /** @var PDO DB connection, shared with all model-queries. */
    private PDO $pdo;

    /** @param PDO $pdo Active database connection, provided by Connection->connect(). */
    public function __construct(PDO $pdo)
    {
        $this->pdo = $pdo;
    }

    /**
     * Fetches a single question row by its ID.
     *
     * Called by AdminController::editQuestionView().
     *
     * @param int   $questionId  The question_id to fetch.
     * @return array             Associative array of the question row.
     */
    public function fetchQuestion(int $questionId): array
    {
        $stmt = $this->pdo->prepare("
            SELECT * FROM question
            WHERE question_id = ?
        ");
        $stmt->execute([$questionId]);

        return $stmt->fetch(PDO::FETCH_ASSOC);
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
     * Fetches a paginated list of questions joined with their category and difficulty labels.
     *
     * Called by AdminController::questionsView().
     *
     * @param int      $limit       Maximum number of rows to return.
     * @param int      $offset      Number of rows to skip (for pagination).
     * @param int|null $categoryId  Filter by category ID, or null for all categories.
     * @return array                Questions with question_id, question_text, category_label, difficulty_label.
     */
    public function fetchAll(int $limit, int $offset, ?int $categoryId = null): array
    {
        $sql = "
            SELECT q.question_id, q.question_text, c.category_label, d.difficulty_label
            FROM question AS q
            JOIN category AS c USING (category_id)
            JOIN difficulty AS d USING (difficulty_id)
        ";

        if (!is_null($categoryId)) {
            $sql .= " WHERE q.category_id = :cid";
        }

        $sql .= " ORDER BY q.question_id LIMIT :lim OFFSET :off";
        $stmt = $this->pdo->prepare($sql);

        if (!is_null($categoryId)) {
           $stmt->bindValue(':cid', $categoryId, PDO::PARAM_INT);
        }
        $stmt->bindValue(':lim', $limit, PDO::PARAM_INT);
        $stmt->bindValue(':off', $offset, PDO::PARAM_INT);
        $stmt->execute();

        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    /**
     * Returns the total number of questions, optionally filtered by category.
     *
     * Called by AdminController::questionsView() to compute pagination.
     *
     * @param int|null $categoryId  Filter by category ID, or null for all categories.
     * @return int                  Total question count.
     */
    public function countQuestions(?int $categoryId = null): int
    {
        $sql = "SELECT COUNT(*) FROM question";

        if (!is_null($categoryId)) {
            $sql .= " WHERE category_id = ?";
        }
        $stmt = $this->pdo->prepare($sql);

        if (!is_null($categoryId)) {
            $stmt->bindValue(1, $categoryId, PDO::PARAM_INT);
        }
        $stmt->execute();

        return (int) $stmt->fetchColumn();
    }

    /**
     * Fetches all four answers for a given question.
     *
     * Called by QuizController->playView() to render the answer buttons.
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
     * Called by QuizController->play() to check if the player's choice is correct.
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
     * Called by QuizController->play() to store the correct answer in wrong_answers.
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
     * Called by QuizController->startView() to populate the category dropdown.
     * Called by AdminController->questionView() to populate the admin panel
     */
    public function fetchCategories(): array
    {
        $stmt = $this->pdo->query("SELECT * FROM category");

        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    /**
     * Fetches all difficulties from the database
     * 
     * Called by AdminController->questionView() to populate the admin panel
     */
    public function fetchDifficulties(): array
    {
        $stmt = $this->pdo->query("SELECT * FROM difficulty");

        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }


    /**
     * Returns the category_id of a randomly selected category.
     *
     * Called by QuizController->start() when the player selects "Zufällig".
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
     * Inserts a new quiz session row and returns its generated ID.
     *
     * Called by QuizController::start() when a quiz begins.
     *
     * @param int      $playerId    The ID of the player starting the quiz.
     * @param int|null $categoryId  The chosen category ID, or null if random.
     * @param int      $total       Total number of questions in the session.
     * @return int                  The qs_id of the newly created session.
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
     * Updates a quiz session with the final score, XP earned, and completion timestamp.
     *
     * Called by QuizController::result() when the quiz ends.
     *
     * @param int $qsId   The session ID to update.
     * @param int $score  The player's final score.
     * @param int $xp     XP earned during the session.
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
     * From $_SESSION uses 'player_id'. Called by QuizController->play() after each answer.
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

    /**
     * Save a new question and its anwers to question / answer
     */
    public function addQuestion(string $questionText, int $categoryId, int $difficultyId, array $answers, int $correct): void
    {
        $stmt = $this->pdo->prepare("
            INSERT INTO question
            (question_text, category_id, difficulty_id)
            VALUES (:qtxt, :cid, :did)
        ");
        $stmt->execute([
            ':qtxt' => $questionText,
            ':cid' => $categoryId,
            ':did' => $difficultyId
        ]);

        $questionId = (int) $this->pdo->lastInsertId();

        foreach ($answers as $i => $a) {
            $isCorrect = $i === $correct ? 1 : 0;
            $stmt = $this->pdo->prepare("
                INSERT INTO answer
                (answer_text, is_correct, question_id)
                VALUES (:atxt, :correct, :qid)
            ");
            $stmt->execute([
                ':atxt' => $a,
                ':correct' => $isCorrect,
                ':qid' => $questionId
            ]);
        }
    }

    /**
     * Deletes a question and all associated answers and quiz results.
     *
     * Called by AdminController::deleteQuestion().
     *
     * @param int $questionId  The question_id to delete.
     */
    public function deleteQuestion(int $questionId): void
    {
        $stmt = $this->pdo->prepare("
            DELETE FROM quiz_answer WHERE question_id = ?
        ");
        $stmt->execute([$questionId]);

        $stmt = $this->pdo->prepare("
            DELETE FROM answer WHERE question_id = ?
        ");
        $stmt->execute([$questionId]);

        $stmt = $this->pdo->prepare("
            DELETE FROM question WHERE question_id = ?
        ");
        $stmt->execute([$questionId]);
    }

    /**
     * Updates the text, category, and difficulty of an existing question.
     *
     * Called by AdminController::editQuestion().
     *
     * @param int    $questionId   The question_id to update.
     * @param string $questionText The new question text.
     * @param int    $categoryId   The new category ID.
     * @param int    $difficultyId The new difficulty ID.
     */
    public function updateQuestion(int $questionId, string $questionText, int $categoryId, int $difficultyId): void
    {
        $stmt = $this->pdo->prepare("
            UPDATE question
            SET question_text = :qtxt, category_id = :cid, difficulty_id = :did
            WHERE question_id = :qid
        ");
        $stmt->execute([
            ':qtxt' => $questionText,
            ':cid' => $categoryId,
            ':did' => $difficultyId,
            ':qid' => $questionId
        ]);
    }

    /**
     * Updates the text and correctness of an existing answer.
     *
     * Called by AdminController::editQuestion() once per answer.
     *
     * @param int    $answerId   The answer_id to update.
     * @param string $answerText The new answer text.
     * @param bool   $isCorrect  Whether this answer is the correct one.
     */
    public function updateAnswer(int $answerId, string $answerText, bool $isCorrect): void
    {
        $stmt = $this->pdo->prepare("
            UPDATE answer
            SET answer_text = :atxt, is_correct = :correct
            WHERE answer_id = :aid
        ");
        $stmt->execute([
            ':atxt' => $answerText,
            ':correct' => $isCorrect,
            ':aid' => $answerId
        ]);
    }

    /**
     * Inserts a new category with the given label.
     *
     * Called by AdminController::addCategory().
     *
     * @param string $label  The category label to insert.
     */
    public function addCategory(string $label): void
    {
        $stmt = $this->pdo->prepare("
            INSERT INTO category (category_label) VALUES (?)
        ");
        $stmt->execute([$label]);
    }

    /**
     * Deletes a category by its ID.
     *
     * Throws a PDOException if questions are still assigned to this category (FK constraint).
     * Called by AdminController::deleteCategory().
     *
     * @param int $categoryId  The category_id to delete.
     */
    public function deleteCategory(int $categoryId): void
    {
        $stmt = $this->pdo->prepare("
            DELETE FROM category WHERE category_id = ?
        ");
        $stmt->execute([$categoryId]);
    }

    /**
     * Updates the label of an existing category.
     *
     * Called by AdminController::editCategory().
     *
     * @param int    $categoryId  The category_id to update.
     * @param string $label       The new category label.
     */
    public function editCategory(int $categoryId, string $label): void
    {
        $stmt = $this->pdo->prepare("
            UPDATE category
            SET category_label = :label
            WHERE category_id = :cid
        ");
        $stmt->execute([
            ':label' => $label,
            ':cid' => $categoryId
        ]);
    }
}