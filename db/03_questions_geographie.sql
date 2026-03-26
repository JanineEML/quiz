-- -----------------------------------------------------------------
--     CATEGORY: GEOGRAPHIE
-- -----------------------------------------------------------------
USE quiz;
SET NAMES utf8mb4;
SET @c = 4; -- see insert.sql for id of geographie

-- LEICHT

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie heißt die Hauptstadt von Deutschland?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Berlin', true, @q),
    ('München', false, @q),
    ('Hamburg', false, @q),
    ('Frankfurt', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welches ist das größte Land der Welt nach Fläche?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Russland', true, @q),
    ('Kanada', false, @q),
    ('China', false, @q),
    ('USA', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Auf welchem Kontinent liegt Ägypten?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Afrika', true, @q),
    ('Asien', false, @q),
    ('Europa', false, @q),
    ('Naher Osten', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie heißt der höchste Berg der Welt?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Mount Everest', true, @q),
    ('K2', false, @q),
    ('Kilimandscharo', false, @q),
    ('Mont Blanc', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie heißt die Hauptstadt von Frankreich?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Paris', true, @q),
    ('Lyon', false, @q),
    ('Marseille', false, @q),
    ('Bordeaux', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welches Meer liegt zwischen Europa und Afrika?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Mittelmeer', true, @q),
    ('Nordsee', false, @q),
    ('Schwarzes Meer', false, @q),
    ('Rotes Meer', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Auf welchem Kontinent liegt Brasilien?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Südamerika', true, @q),
    ('Nordamerika', false, @q),
    ('Mittelamerika', false, @q),
    ('Afrika', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie heißt die Hauptstadt von Japan?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Tokio', true, @q),
    ('Osaka', false, @q),
    ('Kyoto', false, @q),
    ('Hiroshima', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welcher Fluss ist der längste in Europa?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Wolga', true, @q),
    ('Donau', false, @q),
    ('Rhein', false, @q),
    ('Elbe', false, @q);

-- MITTEL

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie heißt die Hauptstadt von Australien?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Canberra', true, @q),
    ('Sydney', false, @q),
    ('Melbourne', false, @q),
    ('Brisbane', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welcher Ozean ist der größte der Welt?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Pazifik', true, @q),
    ('Atlantik', false, @q),
    ('Indischer Ozean', false, @q),
    ('Arktischer Ozean', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Zwischen welchen Ländern verläuft die längste Landgrenze der Welt?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('USA – Kanada', true, @q),
    ('Russland – Kasachstan', false, @q),
    ('China – Russland', false, @q),
    ('Argentinien – Chile', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie heißt die Hauptstadt von Kanada?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Ottawa', true, @q),
    ('Toronto', false, @q),
    ('Vancouver', false, @q),
    ('Montreal', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welches Land hat die meisten Einwohner?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Indien', true, @q),
    ('China', false, @q),
    ('USA', false, @q),
    ('Indonesien', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Durch wie viele Länder fließt der Rhein?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('6', true, @q),
    ('4', false, @q),
    ('3', false, @q),
    ('8', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Auf welchem Kontinent befindet sich die Sahara?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Afrika', true, @q),
    ('Asien', false, @q),
    ('Australien', false, @q),
    ('Südamerika', false, @q);

-- SCHWER

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie heißt der tiefste See der Welt?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Baikalsee', true, @q),
    ('Kaspisches Meer', false, @q),
    ('Tanganjikasee', false, @q),
    ('Victoriasee', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welches Land hat die meisten Zeitzonen weltweit?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Frankreich', true, @q),
    ('Russland', false, @q),
    ('USA', false, @q),
    ('Australien', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welches Land liegt sowohl in Europa als auch in Asien?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Russland', true, @q),
    ('Iran', false, @q),
    ('Griechenland', false, @q),
    ('Georgien', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie heißt die Hauptstadt von Island?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Reykjavik', true, @q),
    ('Helsinki', false, @q),
    ('Tallinn', false, @q),
    ('Bergen', false, @q);
