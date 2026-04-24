-- -----------------------------------------------------------------
--     CATEGORY: MATHEMATIK
-- -----------------------------------------------------------------
USE quiz;
SET NAMES utf8mb4;
SET @c = 16; -- see insert.sql for id of mathematik

-- LEICHT

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist 12 × 12?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('144', true, @q),
    ('124', false, @q),
    ('132', false, @q),
    ('148', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie viele Grad hat ein rechter Winkel?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('90°', true, @q),
    ('180°', false, @q),
    ('45°', false, @q),
    ('60°', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist die Quadratwurzel von 81?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('9', true, @q),
    ('8', false, @q),
    ('7', false, @q),
    ('10', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist der Wert von π (Pi) näherungsweise?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('3,14159...', true, @q),
    ('2,71828...', false, @q),
    ('1,41421...', false, @q),
    ('1,61803...', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ergibt 2³?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('8', true, @q),
    ('6', false, @q),
    ('9', false, @q),
    ('4', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie viele Seiten hat ein Sechseck (Hexagon)?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('6', true, @q),
    ('5', false, @q),
    ('7', false, @q),
    ('8', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist 25 % von 200?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('50', true, @q),
    ('25', false, @q),
    ('100', false, @q),
    ('40', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist eine Primzahl?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Eine natürliche Zahl, die nur durch 1 und sich selbst teilbar ist', true, @q),
    ('Eine gerade Zahl', false, @q),
    ('Eine negative Zahl', false, @q),
    ('Eine Dezimalzahl', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist die Fläche eines Rechtecks mit Länge 5 cm und Breite 3 cm?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('15 cm²', true, @q),
    ('8 cm²', false, @q),
    ('30 cm²', false, @q),
    ('16 cm²', false, @q);

-- MITTEL

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was besagt der Satz des Pythagoras?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('In einem rechtwinkligen Dreieck gilt: a² + b² = c²', true, @q),
    ('In jedem Dreieck gilt: a + b = c', false, @q),
    ('Der Umfang eines Dreiecks berechnet sich als a × b', false, @q),
    ('c² = a × b × 2', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist eine Funktion in der Mathematik?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Eine Zuordnung, die jedem x-Wert genau einen y-Wert zuweist', true, @q),
    ('Eine Gleichung mit mehreren Lösungen', false, @q),
    ('Eine Kurve im Koordinatensystem', false, @q),
    ('Eine Tabelle von Zahlenwerten', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist die Ableitung von f(x) = x²?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('2x', true, @q),
    ('x', false, @q),
    ('2', false, @q),
    ('x² / 2', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist ein Vektor?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Eine gerichtete Größe mit Betrag und Richtung', true, @q),
    ('Eine einzelne reelle Zahl', false, @q),
    ('Eine Fläche im Koordinatensystem', false, @q),
    ('Ein einzelner Punkt im Raum', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ergibt log₁₀(1000)?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('3', true, @q),
    ('10', false, @q),
    ('100', false, @q),
    ('4', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist die Formel für die Fläche eines Kreises?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('A = π × r²', true, @q),
    ('A = 2 × π × r', false, @q),
    ('A = π × d', false, @q),
    ('A = r²', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist eine quadratische Gleichung?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Eine Gleichung der Form ax² + bx + c = 0', true, @q),
    ('Jede Gleichung, die genau zwei Lösungen hat', false, @q),
    ('Eine Gleichung mit x³ als höchster Potenz', false, @q),
    ('Eine Gleichung ohne Variable', false, @q);

-- SCHWER

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ergibt (a + b)² ausgemultipliziert?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('a² + 2ab + b²', true, @q),
    ('a² + b²', false, @q),
    ('2a + 2b', false, @q),
    ('a² + ab + b²', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was beschreibt die Determinante einer quadratischen Matrix?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Einen skalaren Wert, der der Matrix eindeutig zugeordnet ist und z.B. Invertierbarkeit anzeigt', true, @q),
    ('Die Anzahl der Zeilen der Matrix', false, @q),
    ('Das Ergebnis einer Matrizenmultiplikation', false, @q),
    ('Den größten Eintrag der Matrix', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist ein Grenzwert in der Analysis?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Der Wert, dem sich eine Funktion oder Folge beim Annähern an einen bestimmten Punkt beliebig nähert', true, @q),
    ('Der Maximalwert einer Funktion', false, @q),
    ('Ein Fixpunkt, an dem f(x) = x gilt', false, @q),
    ('Eine Asymptote', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist eine Permutation?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Eine geordnete Anordnung aller Elemente einer Menge', true, @q),
    ('Eine Kombination ohne Berücksichtigung der Reihenfolge', false, @q),
    ('Eine Teilmenge einer Menge', false, @q),
    ('Eine zufällige Auswahl von Elementen', false, @q);
