-- -----------------------------------------------------------------
--     CATEGORY: ALLGEMEINWISSEN
-- -----------------------------------------------------------------
USE quiz;
SET NAMES utf8mb4;
SET @c = 5; -- see insert.sql for id of allgemeinwissen

-- LEICHT

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie viele Tage hat ein Schaltjahr?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('366', true, @q),
    ('365', false, @q),
    ('367', false, @q),
    ('364', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist die chemische Formel für Wasser?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('H2O', true, @q),
    ('CO2', false, @q),
    ('H2O2', false, @q),
    ('O2', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie viele Planeten hat unser Sonnensystem?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('8', true, @q),
    ('9', false, @q),
    ('7', false, @q),
    ('10', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('In welchem Jahr endete der Zweite Weltkrieg?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('1945', true, @q),
    ('1944', false, @q),
    ('1943', false, @q),
    ('1946', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie viele Seiten hat ein Würfel?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('6', true, @q),
    ('4', false, @q),
    ('8', false, @q),
    ('12', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welches Tier ist das schnellste Landtier der Welt?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Gepard', true, @q),
    ('Löwe', false, @q),
    ('Strauß', false, @q),
    ('Pronghorn-Antilope', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist das häufigste Gas in der Erdatmosphäre?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Stickstoff', true, @q),
    ('Sauerstoff', false, @q),
    ('Kohlendioxid', false, @q),
    ('Argon', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie viele Stunden hat ein Tag?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('24', true, @q),
    ('12', false, @q),
    ('48', false, @q),
    ('20', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie heißt die Hauptstadt von Österreich?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Wien', true, @q),
    ('Salzburg', false, @q),
    ('Graz', false, @q),
    ('Innsbruck', false, @q);

-- MITTEL

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wer schrieb das Werk "Faust"?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Johann Wolfgang von Goethe', true, @q),
    ('Friedrich Schiller', false, @q),
    ('Heinrich Heine', false, @q),
    ('Bertolt Brecht', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('In welchem Jahr fiel die Berliner Mauer?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('1989', true, @q),
    ('1991', false, @q),
    ('1987', false, @q),
    ('1985', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist die SI-Einheit für elektrische Stromstärke?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Ampere', true, @q),
    ('Volt', false, @q),
    ('Watt', false, @q),
    ('Ohm', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie heißt das größte Organ des menschlichen Körpers?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Haut', true, @q),
    ('Leber', false, @q),
    ('Lunge', false, @q),
    ('Dünndarm', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wer malte die Mona Lisa?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Leonardo da Vinci', true, @q),
    ('Michelangelo', false, @q),
    ('Raffael', false, @q),
    ('Sandro Botticelli', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('In welchem Land wurde die Demokratie erfunden?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Griechenland', true, @q),
    ('Rom', false, @q),
    ('Ägypten', false, @q),
    ('Persien', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie viele Knochen hat ein erwachsener Mensch?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('206', true, @q),
    ('196', false, @q),
    ('215', false, @q),
    ('180', false, @q);

-- SCHWER

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('In welchem Jahr wurde die erste Atombombe gezündet (Trinitytest)?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('1945', true, @q),
    ('1944', false, @q),
    ('1946', false, @q),
    ('1943', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie groß ist die Lichtgeschwindigkeit (gerundet)?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('300.000 km/s', true, @q),
    ('150.000 km/s', false, @q),
    ('500.000 km/s', false, @q),
    ('30.000 km/s', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie heißt das chemische Element mit der Ordnungszahl 79?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Gold', true, @q),
    ('Silber', false, @q),
    ('Platin', false, @q),
    ('Kupfer', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welches Jahr gilt als Beginn der Französischen Revolution?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('1789', true, @q),
    ('1776', false, @q),
    ('1799', false, @q),
    ('1804', false, @q);