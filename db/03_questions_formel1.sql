-- -----------------------------------------------------------------
--     CATEGORY: FORMEL 1
-- -----------------------------------------------------------------
USE quiz;
SET NAMES utf8mb4;
SET @c = 7; -- see insert.sql for id of formel1

-- LEICHT

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie viele Punkte erhält der Sieger eines Formel-1-Rennens?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('25', true, @q),
    ('20', false, @q),
    ('18', false, @q),
    ('30', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wofür steht die Abkürzung DRS?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Drag Reduction System', true, @q),
    ('Drive Reduction System', false, @q),
    ('Dynamic Race System', false, @q),
    ('Drift Reduction System', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welches Team hat die meisten Konstrukteurs-WM-Titel gewonnen?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Ferrari', true, @q),
    ('Mercedes', false, @q),
    ('McLaren', false, @q),
    ('Red Bull', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welcher Fahrer trägt den Spitznamen "Schumi"?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Michael Schumacher', true, @q),
    ('Sebastian Vettel', false, @q),
    ('Nico Rosberg', false, @q),
    ('Ralf Schumacher', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welche Flagge signalisiert das Ende eines Rennens?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Schwarz-weiß karierte Flagge', true, @q),
    ('Rote Flagge', false, @q),
    ('Gelbe Flagge', false, @q),
    ('Grüne Flagge', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('In welchem Land liegt der Hockenheimring?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Deutschland', true, @q),
    ('Österreich', false, @q),
    ('Schweiz', false, @q),
    ('Belgien', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist ein Pit Stop?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Ein Boxenstopp zum Reifenwechsel oder für Reparaturen', true, @q),
    ('Eine Strafversetzung ans Rennende', false, @q),
    ('Ein Überholmanöver in der Boxengasse', false, @q),
    ('Eine Qualifying-Runde', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Auf welcher Strecke findet der Große Preis von Monaco statt?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Circuit de Monaco', true, @q),
    ('Autodromo di Monza', false, @q),
    ('Circuit de Spa-Francorchamps', false, @q),
    ('Silverstone Circuit', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie viele Autos nehmen in einer Formel-1-Saison pro Rennen teil?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('20', true, @q),
    ('16', false, @q),
    ('22', false, @q),
    ('18', false, @q);

-- MITTEL

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie viele WM-Titel gewann Max Verstappen bis Ende 2023?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('3', true, @q),
    ('2', false, @q),
    ('4', false, @q),
    ('1', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welches Team dominierte die Hybridära von 2014 bis 2020?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Mercedes', true, @q),
    ('Ferrari', false, @q),
    ('Red Bull', false, @q),
    ('McLaren', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('In welchem Jahr gewann Nico Rosberg den WM-Titel?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('2016', true, @q),
    ('2014', false, @q),
    ('2018', false, @q),
    ('2015', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Auf welchem Kurs findet der Große Preis von Belgien statt?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Circuit de Spa-Francorchamps', true, @q),
    ('Autodromo di Monza', false, @q),
    ('Silverstone Circuit', false, @q),
    ('Suzuka Circuit', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wer gewann die erste Formel-1-Weltmeisterschaft im Jahr 1950?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Giuseppe Farina', true, @q),
    ('Juan Manuel Fangio', false, @q),
    ('Alberto Ascari', false, @q),
    ('Stirling Moss', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welcher Fahrer trug den Spitznamen "The Iceman"?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Kimi Räikkönen', true, @q),
    ('Mika Häkkinen', false, @q),
    ('Valtteri Bottas', false, @q),
    ('Lewis Hamilton', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie heißt das System, das kinetische Energie beim Bremsen zurückgewinnt?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('KERS (Kinetic Energy Recovery System)', true, @q),
    ('DRS (Drag Reduction System)', false, @q),
    ('HANS (Head and Neck Support)', false, @q),
    ('ERS (Electronic Rotation System)', false, @q);

-- SCHWER

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie viele Formel-1-WM-Titel gewann Ayrton Senna insgesamt?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('3', true, @q),
    ('4', false, @q),
    ('2', false, @q),
    ('1', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welcher Fahrer gewann die Weltmeistertitel 2005 und 2006?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Fernando Alonso', true, @q),
    ('Michael Schumacher', false, @q),
    ('Kimi Räikkönen', false, @q),
    ('Jenson Button', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welcher Fahrer hält den Rekord für die meisten Siege in einer einzigen Saison?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Max Verstappen (19 Siege, 2023)', true, @q),
    ('Michael Schumacher (13 Siege, 2004)', false, @q),
    ('Sebastian Vettel (13 Siege, 2013)', false, @q),
    ('Lewis Hamilton (11 Siege, 2014)', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('In welchem Jahr fand das allererste offizielle Formel-1-WM-Rennen statt?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('1950', true, @q),
    ('1948', false, @q),
    ('1952', false, @q),
    ('1955', false, @q);
