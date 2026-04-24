-- -----------------------------------------------------------------
--     CATEGORY: PHYSIK
-- -----------------------------------------------------------------
USE quiz;
SET NAMES utf8mb4;
SET @c = 17; -- see insert.sql for id of physik

-- LEICHT

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist die SI-Einheit der Kraft?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Newton (N)', true, @q),
    ('Watt (W)', false, @q),
    ('Joule (J)', false, @q),
    ('Pascal (Pa)', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie lautet die Formel für Geschwindigkeit?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('v = s / t', true, @q),
    ('v = s × t', false, @q),
    ('v = t / s', false, @q),
    ('v = a × t', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist Schwerkraft?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Die Anziehungskraft, die die Erde auf alle Körper ausübt', true, @q),
    ('Die Kraft, die Bewegung bremst', false, @q),
    ('Die magnetische Anziehungskraft', false, @q),
    ('Die Reibungskraft zwischen zwei Flächen', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist die SI-Einheit der Energie?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Joule (J)', true, @q),
    ('Newton (N)', false, @q),
    ('Watt (W)', false, @q),
    ('Pascal (Pa)', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist ein elektrischer Leiter?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Ein Material, das elektrischen Strom gut leitet', true, @q),
    ('Ein Material, das keinen Strom leitet', false, @q),
    ('Eine Stromquelle', false, @q),
    ('Ein isoliertes Kabel', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was beschreibt der Begriff Aggregatzustand?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Den physikalischen Zustand eines Stoffs: fest, flüssig oder gasförmig', true, @q),
    ('Die Temperatur eines Stoffs', false, @q),
    ('Das Volumen eines Stoffs', false, @q),
    ('Die Dichte eines Stoffs', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie lautet die Formel für mechanische Arbeit?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('W = F × s', true, @q),
    ('W = m × v', false, @q),
    ('W = P × t', false, @q),
    ('W = F / s', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist Reibung?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Eine Kraft, die der relativen Bewegung zweier Flächen aufeinander entgegenwirkt', true, @q),
    ('Eine Anziehungskraft zwischen Massen', false, @q),
    ('Eine elektrische Kraft', false, @q),
    ('Eine magnetische Kraft', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist Leistung in der Physik?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Energie pro Zeiteinheit (P = W / t)', true, @q),
    ('Kraft mal zurückgelegter Weg', false, @q),
    ('Masse mal Geschwindigkeit', false, @q),
    ('Arbeit mal Zeit', false, @q);

-- MITTEL

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was besagt das erste Newtonsche Gesetz (Trägheitsgesetz)?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Ein Körper bleibt in Ruhe oder gleichförmiger Bewegung, solange keine Kraft auf ihn wirkt', true, @q),
    ('Kraft ist gleich Masse mal Beschleunigung', false, @q),
    ('Actio und Reactio sind gleich groß und entgegengesetzt', false, @q),
    ('Energie bleibt in einem geschlossenen System stets erhalten', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist Druck in der Physik?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Kraft pro Fläche (p = F / A)', true, @q),
    ('Kraft mal Fläche', false, @q),
    ('Energie pro Volumen', false, @q),
    ('Masse pro Fläche', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist elektrische Spannung?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Die Potenzialdifferenz zwischen zwei Punkten, gemessen in Volt', true, @q),
    ('Die Stärke des elektrischen Stroms', false, @q),
    ('Der elektrische Widerstand eines Materials', false, @q),
    ('Die elektrische Ladung eines Körpers', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was besagt das Ohmsche Gesetz?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('U = R × I', true, @q),
    ('P = U × I', false, @q),
    ('W = F × s', false, @q),
    ('E = m × c²', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist der Doppler-Effekt?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Die scheinbare Frequenzänderung von Wellen durch relative Bewegung zwischen Quelle und Empfänger', true, @q),
    ('Die Reflexion von Licht an glatten Oberflächen', false, @q),
    ('Die Brechung von Schall in Wasser', false, @q),
    ('Die Absorption elektromagnetischer Wellen', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist spezifische Wärmekapazität?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Die Energiemenge, die nötig ist, um 1 kg eines Stoffs um 1 Kelvin zu erwärmen', true, @q),
    ('Der Schmelzpunkt eines Stoffs', false, @q),
    ('Die Wärmeleitfähigkeit eines Materials', false, @q),
    ('Die thermische Ausdehnung eines Körpers', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist Impuls in der Physik?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Das Produkt aus Masse und Geschwindigkeit eines Körpers (p = m × v)', true, @q),
    ('Die Kraft über einen bestimmten Weg', false, @q),
    ('Die in einem Körper gespeicherte potenzielle Energie', false, @q),
    ('Die Beschleunigung eines Körpers', false, @q);

-- SCHWER

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was beschreibt Einsteins Formel E = mc²?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Masse und Energie sind äquivalent und können ineinander umgewandelt werden', true, @q),
    ('Die Gesamtenergie eines Systems ist immer konstant', false, @q),
    ('Licht hat keine Ruhemasse', false, @q),
    ('Die Masse eines Körpers ist unveränderlich', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was besagt das Heisenbergsche Unschärfeprinzip?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Ort und Impuls eines Teilchens können nicht gleichzeitig beliebig genau bestimmt werden', true, @q),
    ('Teilchen haben keine exakte Position im Raum', false, @q),
    ('Die Energie eines Teilchens ist grundsätzlich unbestimmt', false, @q),
    ('Temperatur ist ein relativer Begriff', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist Supraleitung?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Der Zustand, in dem ein Material bei sehr tiefen Temperaturen keinen elektrischen Widerstand aufweist', true, @q),
    ('Perfekte Wärmeleitung ohne Verluste', false, @q),
    ('Maximale elektrische Spannung eines Leiters', false, @q),
    ('Magnetische Levitation ohne weitere Ursache', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist der photoelektrische Effekt?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Die Freisetzung von Elektronen aus einem Material durch eintreffende Lichtstrahlung', true, @q),
    ('Die Umwandlung von Licht in Wärme', false, @q),
    ('Die Reflexion von Elektronen an Oberflächen', false, @q),
    ('Die Absorption von Photonen ohne Elektronenemission', false, @q);
