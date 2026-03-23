-- -----------------------------------------------------------------
--     CATEGORY: SOULSBORNE
-- -----------------------------------------------------------------
SET @c = 2; -- see insert.sql for id of soulsborne

-- LEICHT

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welches Unternehmen entwickelte Dark Souls?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('FromSoftware', true, @q),
    ('Capcom', false, @q),
    ('Square Enix', false, @q),
    ('Bandai Namco', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was verliert man in Dark Souls beim Tod?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Alle gesammelten Seelen', true, @q),
    ('Alle Ausrüstung', false, @q),
    ('Ein Leben', false, @q),
    ('Nichts', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('In welchem Spiel spielt man in der verfluchten Stadt Yharnam?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Bloodborne', true, @q),
    ('Dark Souls', false, @q),
    ('Elden Ring', false, @q),
    ('Demon''s Souls', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie heißt die Hauptressource in Elden Ring?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Runen', true, @q),
    ('Seelen', false, @q),
    ('Blutecho', false, @q),
    ('Erfahrungspunkte', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welches Soulsborne-Spiel erschien im Jahr 2022?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Elden Ring', true, @q),
    ('Dark Souls 3', false, @q),
    ('Sekiro', false, @q),
    ('Bloodborne', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie heißt das Heiltrank-Item in Dark Souls?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Estus-Flasche', true, @q),
    ('Heiltrank', false, @q),
    ('Bluttrank', false, @q),
    ('Lebenselixier', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('In welchem Spiel kämpft man gegen den Boss "Malenia"?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Elden Ring', true, @q),
    ('Dark Souls 3', false, @q),
    ('Bloodborne', false, @q),
    ('Sekiro', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welcher Regisseur ist bekannt als Schöpfer der Souls-Reihe?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Hidetaka Miyazaki', true, @q),
    ('Hideo Kojima', false, @q),
    ('Shigeru Miyamoto', false, @q),
    ('Yoko Taro', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist Sekiro?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Ein Samurai-Actionspiel', true, @q),
    ('Ein Rollenspiel in der Zukunft', false, @q),
    ('Ein Piraten-Abenteuer', false, @q),
    ('Ein Wikinger-Epos', false, @q);

-- MITTEL

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie heißt der finale Boss in Dark Souls 1?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Gwyn, Herr der Asche', true, @q),
    ('Seath der Schuppenlose', false, @q),
    ('Der Bett der Chaos', false, @q),
    ('Vier Könige', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie heißt der Protagonist in Sekiro?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Wolf', true, @q),
    ('Kuro', false, @q),
    ('Genichiro', false, @q),
    ('Isshin', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist die zentrale Kampfmechanik in Sekiro?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Angriffe ablenken (Deflect)', true, @q),
    ('Ausweichen', false, @q),
    ('Blocken mit Schild', false, @q),
    ('Fernkampf', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie heißt die offene Welt in Elden Ring?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Zwischenland', true, @q),
    ('Lordran', false, @q),
    ('Lothric', false, @q),
    ('Drangleic', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welches Soulsborne-Spiel war ursprünglich ein PlayStation-Exklusivtitel?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Bloodborne', true, @q),
    ('Dark Souls', false, @q),
    ('Sekiro', false, @q),
    ('Elden Ring', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was passiert, wenn man in Dark Souls stirbt und zur Leiche zurückkehrt?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Man erhält die verlorenen Seelen zurück', true, @q),
    ('Man verliert die Seelen endgültig', false, @q),
    ('Man startet das Spiel neu', false, @q),
    ('Man verliert ein Level', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie heißt der erste Boss in Dark Souls 1?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Asylum Demon', true, @q),
    ('Taurus Demon', false, @q),
    ('Capra Demon', false, @q),
    ('Gaping Dragon', false, @q);

-- SCHWER

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist die maximale Seelenstufe in Dark Souls 1?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('711', true, @q),
    ('99', false, @q),
    ('500', false, @q),
    ('999', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie heißt der geheime Boss in Dark Souls, den man nur durch eine spezifische Aktion freischalten kann?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Darkwraith', false, @q),
    ('Untoten-Asyl-Dämon', false, @q),
    ('Sif, der große graue Wolf', false, @q),
    ('Manus, Vater des Abgrunds', true, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('In welchem Jahr erschien das originale Demon''s Souls in Japan?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('2009', true, @q),
    ('2011', false, @q),
    ('2007', false, @q),
    ('2010', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie heißt der Waffenschmied in Dark Souls 1, der in der Untoten-Kirche sitzt?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Andre von Astora', true, @q),
    ('Rickert von Vinheim', false, @q),
    ('Domhnall von Zena', false, @q),
    ('Blacksmith Ed', false, @q);