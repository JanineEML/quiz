-- -----------------------------------------------------------------
--     CATEGORY: ERNAEHRUNG
-- -----------------------------------------------------------------
USE quiz;
SET NAMES utf8mb4;
SET @c = 14; -- see insert.sql for id of ernährung

-- LEICHT

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welches Vitamin ist vor allem in Zitrusfrüchten enthalten?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Vitamin C', true, @q),
    ('Vitamin A', false, @q),
    ('Vitamin D', false, @q),
    ('Vitamin B12', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welches Mineral ist besonders wichtig für den Knochenaufbau?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Kalzium', true, @q),
    ('Eisen', false, @q),
    ('Magnesium', false, @q),
    ('Jod', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welcher Makronährstoff liefert dem Körper am schnellsten Energie?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Kohlenhydrate', true, @q),
    ('Proteine', false, @q),
    ('Fette', false, @q),
    ('Ballaststoffe', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie viel Wasser sollte ein Erwachsener täglich mindestens trinken?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('1,5 – 2 Liter', true, @q),
    ('0,5 Liter', false, @q),
    ('4 – 5 Liter', false, @q),
    ('0,75 Liter', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welche drei Makronährstoffe liefert Nahrung?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Kohlenhydrate, Proteine und Fette', true, @q),
    ('Kohlenhydrate, Wasser und Vitamine', false, @q),
    ('Proteine, Ballaststoffe und Fette', false, @q),
    ('Fette, Mineralien und Zucker', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welches Lebensmittel ist besonders reich an Eiweiß (Protein)?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Hühnchenfleisch', true, @q),
    ('Kartoffeln', false, @q),
    ('Äpfel', false, @q),
    ('Weißbrot', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist ein Vollkornprodukt?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Ein Produkt, das aus dem vollständigen Getreidekorn (mit Schale) hergestellt wird', true, @q),
    ('Ein besonders fettarmes Produkt', false, @q),
    ('Ein proteinreiches Sportprodukt', false, @q),
    ('Ein zuckerfreies Nahrungsmittel', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welches Tier produziert Honig?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Biene', true, @q),
    ('Wespe', false, @q),
    ('Hummel', false, @q),
    ('Hornisse', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wozu dienen Ballaststoffe im Körper vor allem?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Sie fördern die Verdauung', true, @q),
    ('Sie liefern besonders viel Energie', false, @q),
    ('Sie bauen Muskeln auf', false, @q),
    ('Sie stärken das Immunsystem direkt', false, @q);

-- MITTEL

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist der Body-Mass-Index (BMI)?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Ein Maß, das Körpergewicht und Körpergröße ins Verhältnis setzt', true, @q),
    ('Die empfohlene tägliche Kalorienzufuhr', false, @q),
    ('Der individuelle Proteinbedarf pro Tag', false, @q),
    ('Ein Bluttest zur Nährstoffbestimmung', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welches Vitamin wird durch Sonnenlicht in der Haut gebildet?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Vitamin D', true, @q),
    ('Vitamin C', false, @q),
    ('Vitamin B12', false, @q),
    ('Vitamin A', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was sind Transfette?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Industriell gehärtete Fette, die als gesundheitsschädlich gelten', true, @q),
    ('Natürliche Pflanzenfette', false, @q),
    ('Tierische Fette aus Milchprodukten', false, @q),
    ('Omega-3-Fettsäuren', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist Gluten?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Ein Klebereiweiß, das in vielen Getreideprodukten vorkommt', true, @q),
    ('Ein natürlicher Zucker', false, @q),
    ('Ein pflanzliches Fett', false, @q),
    ('Ein Mineral', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist der glykämische Index (GI)?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Ein Maß dafür, wie stark ein Lebensmittel den Blutzucker ansteigen lässt', true, @q),
    ('Die Kaloriendichte eines Lebensmittels', false, @q),
    ('Der Fettgehalt pro 100 g', false, @q),
    ('Die Verdauungszeit eines Lebensmittels', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wofür wird Jod im Körper benötigt?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Für die Funktion der Schilddrüse', true, @q),
    ('Für den Knochenaufbau', false, @q),
    ('Für die Blutbildung', false, @q),
    ('Für die Muskelfunktion', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was unterscheidet gesättigte von ungesättigten Fettsäuren?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Gesättigte kommen vor allem in tierischen Produkten vor und gelten als weniger gesund', true, @q),
    ('Kein gesundheitlicher Unterschied', false, @q),
    ('Gesättigte Fettsäuren sind grundsätzlich gesünder', false, @q),
    ('Ungesättigte Fettsäuren kommen selten in der Nahrung vor', false, @q);

-- SCHWER

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was sind essentielle Aminosäuren?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Aminosäuren, die der Körper nicht selbst herstellen kann und über die Nahrung aufnehmen muss', true, @q),
    ('Die besonders energiereichen Aminosäuren', false, @q),
    ('Aminosäuren, die ausschließlich in tierischen Produkten vorkommen', false, @q),
    ('Sehr selten vorkommende Aminosäuren', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist die Maillard-Reaktion?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Eine Reaktion zwischen Aminosäuren und Zuckern beim Erhitzen, die zur Bräunung von Lebensmitteln führt', true, @q),
    ('Ein Kochverfahren bei besonders niedrigen Temperaturen', false, @q),
    ('Ein Fermentationsprozess bei Milchprodukten', false, @q),
    ('Ein Kühlverfahren zur Konservierung', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie viele Kilokalorien (kcal) liefert 1 Gramm Fett?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('9 kcal', true, @q),
    ('4 kcal', false, @q),
    ('7 kcal', false, @q),
    ('5 kcal', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welche tägliche Ballaststoffmenge empfiehlt die Deutsche Gesellschaft für Ernährung (DGE) für Erwachsene?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('30 g', true, @q),
    ('10 g', false, @q),
    ('50 g', false, @q),
    ('20 g', false, @q);
