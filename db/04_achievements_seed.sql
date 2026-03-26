-- -----------------------------------------------------------------
--     GENERAL ACHIEVEMENTS
-- -----------------------------------------------------------------
USE quiz;
SET NAMES utf8mb4;

-- Completed Quizzes
INSERT INTO achievement
    (achievement_name, achievement_desc, condition_type, condition_value)
VALUES
    ('Quiz Novize', 'Schließe dein erstes Quiz ab', 'completed_quizzes', 1),
    ('Quiz Lehrling', 'Schließe 10 Quizze ab', 'completed_quizzes', 10),
    ('Quiz Geselle', 'Schließe 25 Quizze ab', 'completed_quizzes', 25),
    ('Quiz Experte', 'Schließe 50 Quizze ab', 'completed_quizzes', 50),
    ('Quiz Meister', 'Schließe 100 Quizze ab', 'completed_quizzes', 100);

-- Correct Answers
INSERT INTO achievement
    (achievement_name, achievement_desc, condition_type, condition_value)
VALUES
    ('Antwort Novize', 'Beantworte 10 Fragen', 'correct_answers', 10),
    ('Antwort Lehrling', 'Beantworte 50 Fragen', 'correct_answers', 50),
    ('Antwort Geselle', 'Beantworte 100 Fragen', 'correct_answers', 100),
    ('Antwort Experte', 'Beantworte 250 Fragen', 'correct_answers', 250),
    ('Antwort Meister', 'Beantworte 500 Fragen', 'correct_answers', 500);

-- Perfektes Quiz
INSERT INTO achievement
    (achievement_name, achievement_desc, condition_type, condition_value)
VALUES
    ('Antwort Novize', 'Beantworte 10 Fragen', 'total_answers', 10),
    ('Antwort Lehrling', 'Beantworte 50 Fragen', 'total_answers', 50),
    ('Antwort Geselle', 'Beantworte 100 Fragen', 'total_answers', 100),
    ('Antwort Experte', 'Beantworte 250 Fragen', 'total_answers', 250),
    ('Antwort Meister', 'Beantworte 500 Fragen', 'total_answers', 500);

-- Kategorien
INSERT INTO achievement
    (achievement_name, achievement_desc, condition_type, condition_value)
VALUES
    ('Erkunder Novize', 'Beantworte 10 Fragen', 'total_answers', 10),
    ('Erkunder Lehrling', 'Beantworte 50 Fragen', 'total_answers', 50),
    ('Erkunder Geselle', 'Beantworte 100 Fragen', 'total_answers', 100),
    ('Erkunder Experte', 'Beantworte 250 Fragen', 'total_answers', 250),
    ('Erkunder Meister', 'Beantworte 500 Fragen', 'total_answers', 500);