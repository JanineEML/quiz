-- -----------------------------------------------------------------
--     GENERAL ACHIEVEMENTS
-- -----------------------------------------------------------------
USE quiz;
SET NAMES utf8mb4;

-- Completed Quizzes
INSERT INTO achievement
    (achievement_name, achievement_desc, condition_type, condition_value)
VALUES
    ('Erstversuch', 'Schließe dein erstes Quiz ab', 'completed_quizzes', 1),
    ('Stammgast', 'Schließe 10 Quiz ab', 'completed_quizzes', 10),
    ('Veteran', 'Schließe 25 Quiz ab', 'completed_quizzes', 25),
    ('Marathon', 'Schließe 50 Quiz ab', 'completed_quizzes', 50),
    ('Legende', 'Schließe 100 Quiz ab', 'completed_quizzes', 100);

-- Total Answers
INSERT INTO achievement
    (achievement_name, achievement_desc, condition_type, condition_value)
VALUES
    ('Neugierig', 'Beantworte 10 Fragen', 'total_answers', 10),
    ('Beflissen', 'Beantworte 50 Fragen', 'total_answers', 50),
    ('Vielwisser', 'Beantworte 100 Fragen', 'total_answers', 100),
    ('Enzyklopädie', 'Beantworte 250 Fragen', 'total_answers', 250),
    ('Orakel', 'Beantworte 500 Fragen', 'total_answers', 500);

-- Correct Answers
INSERT INTO achievement
    (achievement_name, achievement_desc, condition_type, condition_value)
VALUES
    ('Glücksgriff', 'Beantworte 10 Fragen richtig', 'correct_answers', 10),
    ('Treffsicher', 'Beantworte 30 Fragen richtig', 'correct_answers', 30),
    ('Scharfsinn', 'Beantworte 60 Fragen richtig', 'correct_answers', 60),
    ('Weitsicht', 'Beantworte 90 Fragen richtig', 'correct_answers', 90),
    ('Unfehlbar', 'Beantworte 150 Fragen richtig', 'correct_answers', 150);

-- Perfektes Quiz
INSERT INTO achievement
    (achievement_name, achievement_desc, condition_type, condition_value)
VALUES
    ('Makellos', 'Schließe 1 Quiz ohne Fehler ab', 'perfect_quiz', 1),
    ('Fehlerlos', 'Schließe 5 Quiz ohne Fehler ab', 'perfect_quiz', 5),
    ('Fleckenrein', 'Schließe 10 Quiz ohne Fehler ab', 'perfect_quiz', 10),
    ('Vollkommen', 'Schließe 25 Quiz ohne Fehler ab', 'perfect_quiz', 25),
    ('Perfektion', 'Schließe 50 Quiz ohne Fehler ab', 'perfect_quiz', 50);

-- Kategorien
INSERT INTO achievement
    (achievement_name, achievement_desc, condition_type, condition_value)
VALUES
    ('Entdecker', 'Spiele 3 verschiedene Kategorien', 'categories_played', 3),
    ('Weitgereist', 'Spiele 6 verschiedene Kategorien', 'categories_played', 6),
    ('Allrounder', 'Spiele 9 verschiedene Kategorien', 'categories_played', 9),
    ('Universalist', 'Spiele 12 verschiedene Kategorien', 'categories_played', 12),
    ('Polymath', 'Spiele 15 verschiedene Kategorien', 'categories_played', 15);