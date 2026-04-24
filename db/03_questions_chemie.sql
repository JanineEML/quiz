-- -----------------------------------------------------------------
--     CATEGORY: CHEMIE
-- -----------------------------------------------------------------
USE quiz;
SET NAMES utf8mb4;
SET @c = 18; -- see insert.sql for id of chemie

-- LEICHT

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist das chemische Symbol für Wasser?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('H₂O', true, @q),
    ('CO₂', false, @q),
    ('NaCl', false, @q),
    ('O₂', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist das Periodensystem der Elemente?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Eine Tabelle, die alle chemischen Elemente nach ihren Eigenschaften ordnet', true, @q),
    ('Ein Chemielabor', false, @q),
    ('Eine chemische Verbindung', false, @q),
    ('Ein Reaktionsplan', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist das chemische Symbol für Gold?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Au', true, @q),
    ('Go', false, @q),
    ('Gd', false, @q),
    ('Ag', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Woraus besteht ein Atom?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Protonen, Neutronen und Elektronen', true, @q),
    ('Nur Protonen und Elektronen', false, @q),
    ('Molekülen und Ionen', false, @q),
    ('Atomen und Teilchen', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist das chemische Symbol für Sauerstoff?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('O', true, @q),
    ('Ox', false, @q),
    ('Sa', false, @q),
    ('Os', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist Oxidation?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Die Abgabe von Elektronen oder die Reaktion mit Sauerstoff', true, @q),
    ('Die Aufnahme von Elektronen', false, @q),
    ('Das Lösen eines Stoffs in Wasser', false, @q),
    ('Die Verbindung mit Stickstoff', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie nennt man eine Reaktion, bei der Wärme freigesetzt wird?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Exotherme Reaktion', true, @q),
    ('Endotherme Reaktion', false, @q),
    ('Neutrale Reaktion', false, @q),
    ('Thermische Reaktion', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist eine chemische Verbindung?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Ein Stoff, der aus zwei oder mehr verschiedenen Elementen aufgebaut ist', true, @q),
    ('Ein einzelnes Element in reiner Form', false, @q),
    ('Eine Mischung ohne chemische Bindung', false, @q),
    ('Ein Gas', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist ein Mol?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Eine Einheit der Stoffmenge, entspricht ca. 6,022 × 10²³ Teilchen', true, @q),
    ('Eine Masseneinheit', false, @q),
    ('Eine Temperatureinheit', false, @q),
    ('Ein Volumenmaß', false, @q);

-- MITTEL

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist eine kovalente Bindung?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Eine Bindung, bei der sich zwei Atome Elektronenpaare teilen', true, @q),
    ('Eine Bindung durch Übertragung von Elektronen (Ionenbindung)', false, @q),
    ('Eine metallische Bindung', false, @q),
    ('Eine schwache Van-der-Waals-Wechselwirkung', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was kennzeichnet einen neutralen pH-Wert?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('pH 7 – weder sauer noch basisch', true, @q),
    ('pH 0', false, @q),
    ('pH 14', false, @q),
    ('pH 3', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist Elektrolyse?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Die Zersetzung einer Substanz durch das Anlegen von elektrischem Strom', true, @q),
    ('Eine spontane chemische Synthese ohne Energiezufuhr', false, @q),
    ('Eine Oxidationsreaktion ohne Stromfluss', false, @q),
    ('Eine Neutralisationsreaktion', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist ein Katalysator?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Ein Stoff, der eine Reaktion beschleunigt, ohne selbst verbraucht zu werden', true, @q),
    ('Ein Reaktionsprodukt', false, @q),
    ('Ein Lösungsmittel', false, @q),
    ('Ein Oxidationsmittel', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist Isomerie?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Das Auftreten von Verbindungen mit gleicher Molekülformel, aber unterschiedlicher Struktur', true, @q),
    ('Gleiche Struktur, verschiedene Molekülformel', false, @q),
    ('Verschiedene Elemente mit ähnlichen Eigenschaften', false, @q),
    ('Gleiche Masse, verschiedene Ladung', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was unterscheidet organische von anorganischer Chemie?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Organische Chemie befasst sich mit kohlenstoffhaltigen Verbindungen', true, @q),
    ('Kein wesentlicher Unterschied', false, @q),
    ('Organisch bedeutet natürlich, anorganisch bedeutet künstlich', false, @q),
    ('Organisch = flüssig, anorganisch = fest', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist Polymerisation?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Das Verbinden vieler kleiner Moleküle (Monomere) zu langen Ketten (Polymeren)', true, @q),
    ('Eine Spaltungsreaktion großer Moleküle', false, @q),
    ('Eine Oxidationsreaktion', false, @q),
    ('Eine Säure-Base-Reaktion', false, @q);

-- SCHWER

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was besagt das Aufbauprinzip der Elektronenkonfiguration?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Elektronen besetzen Orbitale beginnend bei der niedrigsten verfügbaren Energie', true, @q),
    ('Elektronen verteilen sich gleichmäßig auf alle Orbitale', false, @q),
    ('Elektronen sind hauptsächlich im Kern gespeichert', false, @q),
    ('Elektronen besetzen zuerst die äußersten Schalen', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was besagt das Prinzip von Le Chatelier?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Ein Gleichgewichtssystem reagiert auf eine äußere Störung, indem es dieser entgegenwirkt', true, @q),
    ('Chemische Reaktionen laufen immer vollständig ab', false, @q),
    ('Katalysatoren verschieben das chemische Gleichgewicht dauerhaft', false, @q),
    ('Temperatur hat keinen Einfluss auf chemische Gleichgewichte', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist der Unterschied zwischen einem Elektrophil und einem Nukleophil?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Elektrophile sind elektronenmangelnde Teilchen, Nukleophile sind elektronenreiche Teilchen', true, @q),
    ('Kein Unterschied, beide bezeichnen dasselbe', false, @q),
    ('Elektrophile sind immer Metalle, Nukleophile immer Nichtmetalle', false, @q),
    ('Elektrophile geben Protonen ab, Nukleophile nehmen sie auf', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was untersucht die Stereochemie?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Die räumliche Anordnung von Atomen in Molekülen und deren Auswirkungen auf Eigenschaften', true, @q),
    ('Die Chemie der Metalle und Legierungen', false, @q),
    ('Die Elektronenkonfiguration von Atomen', false, @q),
    ('Die Synthese von Polymeren', false, @q);
