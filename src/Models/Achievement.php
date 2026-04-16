<?php

declare(strict_types=1);

namespace App\Models;

use PDO;

class Achievement
{
    /** @var PDO DB connection, shared with all model-queries. */
    private PDO $pdo;

    /** @param PDO $pdo Active database connection, provided by Connection->connect(). */
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
        $stmt = $this->pdo->prepare("SELECT *
            FROM player_achievement
            WHERE player_id = :pid");
        $stmt->execute([':pid' => $playerId]);

        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
    
    /**
     * Fetches all achievement IDs already unlocked by a given player.
     *
     * Called by Achievement->award().
     *
     * @param int    $playerId  The player's ID.
     * @return array            Flat array of unlocked achievement IDs.
     */
    private function fetchUnlocked(int $playerId): array
    {
        $stmt = $this->pdo->prepare("SELECT achievement_id
            FROM player_achievement
            WHERE player_id = ?");
        $stmt->execute([$playerId]);

        return $stmt->fetchAll(PDO::FETCH_COLUMN);
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
        $stmt = $this->pdo->prepare("INSERT IGNORE INTO player_achievement (player_id, achievement_id)
            VALUES (:pid, :aid)");
        $stmt->execute([
            ':pid' => $playerId,
            ':aid' => $achievementId
        ]);
    }

    /**
     * Checks all achievements and unlocks any newly met conditions for a player.
     *
     * Called by QuizController->resultView() after a session is completed.
     *
     * @param int    $playerId  The player's ID.
     * @return array            Newly unlocked achievement rows as associative arrays, or [] if none.
     */
    public function award(int $playerId): array
    {
        // get lookup-array to use as filter
        $unlockedIds = array_fill_keys(
            $this->fetchUnlocked($playerId),
            true
        );

        // filter out already unlocked achievements by the player
        $lockedAchievements = array_filter(
            $this->fetchAll(),
            fn($row) => !isset($unlockedIds[$row['achievement_id']])
        );

        $unlockedAchievements = [];

        // iterate through the still locked achievements and use the condition_type
        // to be able to call the matching check function
        foreach($lockedAchievements as $achievement) {
            $matched = match($achievement['condition_type']) {
                'completed_quizzes' => $this->checkCompletedQuizzes($playerId, $achievement['condition_value']),
                'total_answers' => $this->checkTotalAnswers($playerId, $achievement['condition_value']),
                'correct_answers' => $this->checkCorrectAnswers($playerId, $achievement['condition_value']),
                'perfect_quiz' => $this->checkPerfectQuiz($playerId, $achievement['condition_value']),
                'categories_played' => $this->checkCategoriesPlayed($playerId, $achievement['condition_value']),
                default => false
            };

            if ($matched) {
                $this->unlock($playerId, $achievement['achievement_id']);
                $unlockedAchievements[] = $achievement;
            }
        }

        return $unlockedAchievements;
    }

    /**
     * Returns true if the player has completed at least $required quiz sessions.
     *
     * Called by Achievement->award().
     *
     * @param int   $playerId  The player's ID.
     * @param int   $required  Minimum number of completed sessions required.
     * @return bool            True if the threshold is met.
     */
    private function checkCompletedQuizzes(int $playerId, int $required): bool
    {
        $stmt = $this->pdo->prepare("SELECT COUNT(*)
            FROM quiz_session
            WHERE player_id = ? AND time_completed IS NOT NULL");
        $stmt->execute([$playerId]);
        $result = $stmt->fetchColumn();

        return $result >= $required;
    }

    /**
     * Returns true if the player has submitted at least $required answers in total.
     *
     * Called by Achievement->award().
     *
     * @param int   $playerId  The player's ID.
     * @param int   $required  Minimum number of answers required.
     * @return bool            True if the threshold is met.
     */
    private function checkTotalAnswers(int $playerId, int $required): bool
    {
        $stmt = $this->pdo->prepare("SELECT COUNT(*)
            FROM quiz_session AS qs
            INNER JOIN quiz_answer AS qa USING (qs_id)
            WHERE qs.player_id = ?");
        $stmt->execute([$playerId]);
        $result = $stmt->fetchColumn();

        return $result >= $required;
    }

    /**
     * Returns true if the player has given at least $required correct answers.
     *
     * Called by Achievement->award().
     *
     * @param int   $playerId  The player's ID.
     * @param int   $required  Minimum number of correct answers required.
     * @return bool            True if the threshold is met.
     */
    private function checkCorrectAnswers(int $playerId, int $required): bool
    {
        $stmt = $this->pdo->prepare("SELECT COUNT(*)
            FROM quiz_session AS qs
            INNER JOIN quiz_answer AS qa USING (qs_id)
            WHERE qs.player_id = ? AND is_correct = 1");
        $stmt->execute([$playerId]);
        $result = $stmt->fetchColumn();

        return $result >= $required;
    }

    /**
     * Returns true if the player has completed at least $required quiz sessions with a perfect score.
     *
     * Called by Achievement->award().
     *
     * @param int   $playerId  The player's ID.
     * @param int   $required  Minimum number of perfect sessions required.
     * @return bool            True if the threshold is met.
     */
    private function checkPerfectQuiz(int $playerId, int $required): bool
    {
        $stmt = $this->pdo->prepare("SELECT COUNT(*)
            FROM quiz_session
            WHERE player_id = ? 
                AND score = total
                AND time_completed IS NOT NULL");
        $stmt->execute([$playerId]);
        $result = $stmt->fetchColumn();

        return $result >= $required;
    }

    /**
     * Returns true if the player has played in at least $required distinct categories.
     *
     * Called by Achievement->award().
     *
     * @param int   $playerId  The player's ID.
     * @param int   $required  Minimum number of distinct categories required.
     * @return bool            True if the threshold is met.
     */
    private function checkCategoriesPlayed(int $playerId, int $required): bool
    {
        $stmt = $this->pdo->prepare("SELECT COUNT(DISTINCT category_id)
            FROM quiz_session
            WHERE player_id = ? AND time_completed IS NOT NULL");
        $stmt->execute([$playerId]);
        $result = $stmt->fetchColumn();

        return $result >= $required;
    }
}