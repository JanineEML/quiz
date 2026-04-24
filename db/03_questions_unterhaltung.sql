-- -----------------------------------------------------------------
--     CATEGORY: UNTERHALTUNG
-- -----------------------------------------------------------------
USE quiz;
SET NAMES utf8mb4;
SET @c = 4; -- see insert.sql for id of unterhaltung

-- LEICHT

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wer spielt Iron Man im Marvel Cinematic Universe?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Robert Downey Jr.', true, @q),
    ('Chris Evans', false, @q),
    ('Chris Hemsworth', false, @q),
    ('Mark Ruffalo', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('In welchem Film singt Elsa den Song "Let It Go"?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Die Eiskönigin', true, @q),
    ('Rapunzel', false, @q),
    ('Moana', false, @q),
    ('Brave', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie heißt der Löwenkönig in "Der König der Löwen"?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Simba', true, @q),
    ('Mufasa', false, @q),
    ('Scar', false, @q),
    ('Nala', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welche Band veröffentlichte den Song "Bohemian Rhapsody"?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Queen', true, @q),
    ('The Beatles', false, @q),
    ('Led Zeppelin', false, @q),
    ('Rolling Stones', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('In welcher Serie spielt der Chemiker Walter White?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Breaking Bad', true, @q),
    ('Better Call Saul', false, @q),
    ('Ozark', false, @q),
    ('Dexter', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welcher Schauspieler spielt Captain Jack Sparrow?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Johnny Depp', true, @q),
    ('Orlando Bloom', false, @q),
    ('Geoffrey Rush', false, @q),
    ('Keira Knightley', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('In welchem Film heißt die Hauptfigur Forrest?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Forrest Gump', true, @q),
    ('Cast Away', false, @q),
    ('The Green Mile', false, @q),
    ('Big', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie heißt der Hauptcharakter der Harry-Potter-Reihe?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Harry Potter', true, @q),
    ('Hermine Granger', false, @q),
    ('Ron Weasley', false, @q),
    ('Albus Dumbledore', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('In welchem Film kämpft Neo gegen die Maschinen?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Matrix', true, @q),
    ('Terminator', false, @q),
    ('I, Robot', false, @q),
    ('Blade Runner', false, @q);

-- MITTEL

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('In welchem Jahr erschien der erste Star-Wars-Film?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('1977', true, @q),
    ('1980', false, @q),
    ('1975', false, @q),
    ('1983', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wer schrieb die Harry-Potter-Bücher?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('J.K. Rowling', true, @q),
    ('J.R.R. Tolkien', false, @q),
    ('C.S. Lewis', false, @q),
    ('Roald Dahl', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welche Serie spielt in der fiktiven Welt Westeros?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Game of Thrones', true, @q),
    ('Vikings', false, @q),
    ('The Last Kingdom', false, @q),
    ('Marco Polo', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('In welchem Film hört man den Satz "Ich sehe tote Menschen"?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('The Sixth Sense', true, @q),
    ('The Others', false, @q),
    ('Paranormal Activity', false, @q),
    ('Insidious', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wer komponierte die Filmmusik zu "Der Herr der Ringe"?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Howard Shore', true, @q),
    ('Hans Zimmer', false, @q),
    ('John Williams', false, @q),
    ('Ennio Morricone', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie heißt der Regisseur von "Inception"?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Christopher Nolan', true, @q),
    ('Steven Spielberg', false, @q),
    ('James Cameron', false, @q),
    ('Ridley Scott', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welche Schauspielerin spielt Katniss Everdeen in "Die Tribute von Panem"?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Jennifer Lawrence', true, @q),
    ('Emma Watson', false, @q),
    ('Shailene Woodley', false, @q),
    ('Kristen Stewart', false, @q);

-- SCHWER

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('In welchem Jahr erschien der erste James-Bond-Film "Dr. No"?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('1962', true, @q),
    ('1965', false, @q),
    ('1958', false, @q),
    ('1960', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welcher Film gewann als erster den Oscar für "Bester Film"?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Wings', true, @q),
    ('Gone with the Wind', false, @q),
    ('Casablanca', false, @q),
    ('Ben-Hur', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welcher Schauspieler spielte den Joker in "The Dark Knight" und starb kurz nach den Dreharbeiten?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Heath Ledger', true, @q),
    ('Joaquin Phoenix', false, @q),
    ('Jack Nicholson', false, @q),
    ('Jared Leto', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('In welchem Jahr wurde die erste Staffel von "The Simpsons" ausgestrahlt?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('1989', true, @q),
    ('1992', false, @q),
    ('1987', false, @q),
    ('1991', false, @q);
