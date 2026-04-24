-- -----------------------------------------------------------------
--     CATEGORY: REDEWENDUNGEN
-- -----------------------------------------------------------------
USE quiz;
SET NAMES utf8mb4;
SET @c = 13; -- see insert.sql for id of redewendungen

-- LEICHT

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was bedeutet "Das ist nicht mein Bier"?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Das geht mich nichts an', true, @q),
    ('Ich mag kein Bier', false, @q),
    ('Das ist zu teuer', false, @q),
    ('Das ist mir zu anstrengend', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was bedeutet "Tomaten auf den Augen haben"?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Etwas Offensichtliches nicht sehen', true, @q),
    ('Schlechte Augen haben', false, @q),
    ('Gemüse mögen', false, @q),
    ('Weinen', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was bedeutet "Den Nagel auf den Kopf treffen"?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Genau das Richtige sagen oder tun', true, @q),
    ('Schlecht hämmern', false, @q),
    ('Pech haben', false, @q),
    ('Ungenau arbeiten', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was bedeutet "Ich verstehe nur Bahnhof"?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Ich verstehe gar nichts', true, @q),
    ('Ich mag Züge und Bahnhöfe', false, @q),
    ('Ich bin müde', false, @q),
    ('Ich bin mit den Gedanken woanders', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was bedeutet "Jemandem auf den Keks gehen"?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Jemanden nerven', true, @q),
    ('Jemandem etwas schenken', false, @q),
    ('Jemanden loben', false, @q),
    ('Jemanden besuchen', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was bedeutet "Das ist Jacke wie Hose"?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Das ist egal / macht keinen Unterschied', true, @q),
    ('Das ist unpassend', false, @q),
    ('Das ist zu groß', false, @q),
    ('Das ist alt', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was bedeutet "Auf dem Holzweg sein"?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Sich irren', true, @q),
    ('Im Wald sein', false, @q),
    ('Holz hacken', false, @q),
    ('Langsam vorankommen', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was bedeutet "Schwein haben"?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Glück haben', true, @q),
    ('Ein Schwein besitzen', false, @q),
    ('Pech haben', false, @q),
    ('Ungepflegt sein', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was bedeutet "Die Daumen drücken"?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Jemandem Glück wünschen', true, @q),
    ('Jemanden unter Druck setzen', false, @q),
    ('Schmerzen andeuten', false, @q),
    ('Zustimmen', false, @q);

-- MITTEL

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was bedeutet "Eulen nach Athen tragen"?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Etwas völlig Überflüssiges tun', true, @q),
    ('Tiere in fremde Länder transportieren', false, @q),
    ('Sehr klug und weise sein', false, @q),
    ('Auf weite Reisen gehen', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was bedeutet "Auf großem Fuß leben"?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Verschwenderisch und aufwändig leben', true, @q),
    ('Große Schuhe tragen', false, @q),
    ('Viel laufen', false, @q),
    ('In Armut leben', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was bedeutet "Den Braten riechen"?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Eine Absicht oder Gefahr frühzeitig ahnen', true, @q),
    ('Sehr gut kochen können', false, @q),
    ('Hunger haben', false, @q),
    ('Fleisch einkaufen gehen', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was bedeutet "Einen Bock schießen"?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Einen Fehler machen', true, @q),
    ('Besonders gut schießen', false, @q),
    ('Ein Tier jagen', false, @q),
    ('Sport treiben', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was bedeutet "Die Flinte ins Korn werfen"?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Aufgeben', true, @q),
    ('Auf die Jagd gehen', false, @q),
    ('Wütend werden', false, @q),
    ('Sich verteidigen', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was bedeutet "Mit dem falschen Fuß aufgestanden sein"?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Schlecht gelaunt sein', true, @q),
    ('Umgefallen sein', false, @q),
    ('Besonders früh aufgestanden sein', false, @q),
    ('Müde und erschöpft sein', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was bedeutet "Jemandem den Zahn ziehen"?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Jemandes Illusion oder Hoffnung zerstören', true, @q),
    ('Jemanden zum Zahnarzt bringen', false, @q),
    ('Jemandem bewusst Schmerzen bereiten', false, @q),
    ('Jemandem unter die Arme greifen', false, @q);

-- SCHWER

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was bedeutet "Das Ei des Kolumbus"?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Eine einfache Lösung für ein scheinbar schwieriges Problem', true, @q),
    ('Eine bedeutende geografische Entdeckung', false, @q),
    ('Eine aufgedeckte Lüge', false, @q),
    ('Eine sehr weite Reise', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was bedeutet "Den Teufel an die Wand malen"?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Unnötigerweise Schlechtes heraufbeschwören', true, @q),
    ('Gut malen können', false, @q),
    ('Abergläubisch sein', false, @q),
    ('Laut und dramatisch sprechen', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was bedeutet "Mit Kanonen auf Spatzen schießen"?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Auf eine kleine Sache mit unverhältnismäßig großem Aufwand reagieren', true, @q),
    ('Besonders präzise schießen können', false, @q),
    ('Tiere bejagen', false, @q),
    ('Überreagieren, ohne Konsequenzen zu tragen', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was bedeutet "Auf des Messers Schneide stehen"?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('In einer äußerst kritischen Situation sein, bei der es auf jede Kleinigkeit ankommt', true, @q),
    ('Beim Kochen besonders vorsichtig sein', false, @q),
    ('Besonders scharf und direkt sein', false, @q),
    ('Kurz vor dem Scheitern stehen, aber noch Chancen haben', false, @q);
