-- -----------------------------------------------------------------
--     CATEGORY: NINTENDO
-- -----------------------------------------------------------------
USE quiz;
SET NAMES utf8mb4;
SET @c = 10; -- see insert.sql for id of nintendo

-- LEICHT

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welche Spielfigur ist das bekannteste Maskottchen von Nintendo?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Mario', true, @q),
    ('Sonic', false, @q),
    ('Crash Bandicoot', false, @q),
    ('Spyro', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie heißt der Hauptcharakter in der "The Legend of Zelda"-Reihe?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Link', true, @q),
    ('Zelda', false, @q),
    ('Ganon', false, @q),
    ('Impa', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wer ist Luigi?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Der Bruder von Mario', true, @q),
    ('Der Vater von Mario', false, @q),
    ('Ein Gegner von Mario', false, @q),
    ('Eine Prinzessin', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie heißt das Pokémon mit der Pokédex-Nummer 25?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Pikachu', true, @q),
    ('Evoli', false, @q),
    ('Glumanda', false, @q),
    ('Schiggy', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie heißt der Hauptgegner in der Mario-Reihe?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Bowser', true, @q),
    ('Ganondorf', false, @q),
    ('King Dedede', false, @q),
    ('Master Hand', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist die Nintendo Switch?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Eine Hybrid-Konsole, die als Heimkonsole und Handheld genutzt werden kann', true, @q),
    ('Eine reine Handheld-Konsole', false, @q),
    ('Eine VR-Brille', false, @q),
    ('Ein Smartphone von Nintendo', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welches Item macht Mario in den meisten Spielen kurzzeitig unverwundbar?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Der Stern', true, @q),
    ('Die Feuerblume', false, @q),
    ('Der 1-UP-Pilz', false, @q),
    ('Das Superhorn', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welche Konsole erschien zuerst: NES oder SNES?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('NES', true, @q),
    ('SNES', false, @q),
    ('Beide gleichzeitig', false, @q),
    ('Game Boy', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie viele Starter-Pokémon gibt es in jeder Generation?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('3', true, @q),
    ('4', false, @q),
    ('6', false, @q),
    ('2', false, @q);

-- MITTEL

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('In welchem Jahr wurde Nintendo gegründet?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('1889', true, @q),
    ('1950', false, @q),
    ('1970', false, @q),
    ('1983', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Womit begann Nintendo sein Geschäft, bevor es in die Videospielbranche einstieg?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Spielkarten (Hanafuda)', true, @q),
    ('Elektronisches Spielzeug', false, @q),
    ('Brettspiele', false, @q),
    ('Modellbahnen', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welches Spiel erschien zum Launch der Nintendo 64?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Super Mario 64', true, @q),
    ('The Legend of Zelda: Ocarina of Time', false, @q),
    ('Mario Kart 64', false, @q),
    ('GoldenEye 007', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('In welchem Jahr erschien das erste Pokémon-Spiel?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('1996', true, @q),
    ('1999', false, @q),
    ('1993', false, @q),
    ('2001', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('In welchem Jahr erschien die Nintendo Switch?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('2017', true, @q),
    ('2015', false, @q),
    ('2019', false, @q),
    ('2016', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welches Instrument spielt Link in "The Legend of Zelda: Ocarina of Time"?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Okarina', true, @q),
    ('Flöte', false, @q),
    ('Harfe', false, @q),
    ('Gitarre', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist "amiibo"?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Figuren mit NFC-Chips, die mit Nintendo-Spielen interagieren', true, @q),
    ('Ein Nintendo-Spielformat', false, @q),
    ('Eine Nintendo-App', false, @q),
    ('Ein Spielcontroller', false, @q);

-- SCHWER

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie lautet der ursprüngliche Name des Entwicklerstudios hinter Donkey Kong und Mario Bros.?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Nintendo Research & Development 1', true, @q),
    ('HAL Laboratory', false, @q),
    ('Game Freak', false, @q),
    ('Retro Studios', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('In welchem Jahr erschien das erste "Metroid"-Spiel in Japan?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('1986', true, @q),
    ('1988', false, @q),
    ('1984', false, @q),
    ('1990', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist "Nintendo Labo"?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Bastelsets aus Pappe, die mit der Nintendo Switch kombiniert werden', true, @q),
    ('Eine neue Nintendo-Konsole', false, @q),
    ('Ein Zubehör für die Wii', false, @q),
    ('Eine Spielreihe für Kleinkinder', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welcher Charakter aus der "Fire Emblem"-Reihe wurde in Europa vor allem durch Super Smash Bros. bekannt?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Marth', true, @q),
    ('Ike', false, @q),
    ('Roy', false, @q),
    ('Lucina', false, @q);
