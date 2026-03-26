-- -----------------------------------------------------------------
--     CATEGORY: FUSSBALL
-- -----------------------------------------------------------------
USE quiz;
SET NAMES utf8mb4;
SET @c = 3; -- see insert.sql for id of fussball

-- LEICHT

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie viele Spieler hat eine Fußballmannschaft auf dem Platz?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('11', true, @q),
    ('10', false, @q),
    ('12', false, @q),
    ('9', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie lange dauert ein reguläres Fußballspiel?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('90 Minuten', true, @q),
    ('80 Minuten', false, @q),
    ('100 Minuten', false, @q),
    ('60 Minuten', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welches Land hat die meisten FIFA-Weltmeistertitel gewonnen?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Brasilien', true, @q),
    ('Deutschland', false, @q),
    ('Italien', false, @q),
    ('Argentinien', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie heißt die wichtigste europäische Vereinsmeisterschaft?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('UEFA Champions League', true, @q),
    ('UEFA Europa League', false, @q),
    ('FIFA Club World Cup', false, @q),
    ('UEFA Super Cup', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welche Farbe hat die Karte bei einer Verwarnung?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Gelb', true, @q),
    ('Rot', false, @q),
    ('Blau', false, @q),
    ('Orange', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was bedeutet "Hattrick"?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Drei Tore eines Spielers in einem Spiel', true, @q),
    ('Zwei Tore in einer Halbzeit', false, @q),
    ('Ein Tor aus der eigenen Hälfte', false, @q),
    ('Ein Freistoßtor', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Aus welcher Entfernung wird ein Elfmeter ausgeführt?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('11 Meter', true, @q),
    ('9 Meter', false, @q),
    ('15 Meter', false, @q),
    ('7 Meter', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welcher Verein ist Rekordmeister der Bundesliga?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('FC Bayern München', true, @q),
    ('Borussia Dortmund', false, @q),
    ('Borussia Mönchengladbach', false, @q),
    ('Werder Bremen', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie lautet der Spitzname der brasilianischen Nationalmannschaft?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Seleção', true, @q),
    ('La Furia Roja', false, @q),
    ('Les Bleus', false, @q),
    ('Die Mannschaft', false, @q);

-- MITTEL

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('In welchem Jahr gewann Deutschland zuletzt die Weltmeisterschaft?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('2014', true, @q),
    ('2010', false, @q),
    ('2018', false, @q),
    ('2006', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welcher Verein hat die meisten UEFA Champions-League-Titel gewonnen?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Real Madrid', true, @q),
    ('FC Barcelona', false, @q),
    ('AC Mailand', false, @q),
    ('FC Bayern München', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('In welcher Stadt steht das Maracanã-Stadion?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Rio de Janeiro', true, @q),
    ('São Paulo', false, @q),
    ('Buenos Aires', false, @q),
    ('Brasília', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('In welchem Jahr wurde die Bundesliga gegründet?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('1963', true, @q),
    ('1955', false, @q),
    ('1970', false, @q),
    ('1949', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wer schoss das "Wembley-Tor" bei der WM 1966?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Geoff Hurst', true, @q),
    ('Bobby Charlton', false, @q),
    ('Roger Hunt', false, @q),
    ('Martin Peters', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie heißt die Trophäe, die dem besten Spieler der Welt jährlich verliehen wird?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Ballon d''Or', true, @q),
    ('FIFA Best Award', false, @q),
    ('Golden Boot', false, @q),
    ('Golden Glove', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wer ist der Rekordtorschütze der Bundesliga?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Robert Lewandowski', true, @q),
    ('Gerd Müller', false, @q),
    ('Klaus Fischer', false, @q),
    ('Uwe Seeler', false, @q);

-- SCHWER

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welcher Spieler erzielte das "Tor des Jahrhunderts" bei der WM 1986?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Diego Maradona', true, @q),
    ('Pelé', false, @q),
    ('Ronaldo', false, @q),
    ('Zidane', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welcher Verein gewann als erster den Europapokal der Landesmeister?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Real Madrid (1956)', true, @q),
    ('AC Mailand (1958)', false, @q),
    ('Benfica Lissabon (1960)', false, @q),
    ('FC Barcelona (1956)', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie viele Tore erzielte Gerd Müller bei der Weltmeisterschaft 1970?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('10', true, @q),
    ('8', false, @q),
    ('7', false, @q),
    ('12', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('In welchem Jahr fand die erste FIFA Weltmeisterschaft statt?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('1930', true, @q),
    ('1934', false, @q),
    ('1926', false, @q),
    ('1938', false, @q);