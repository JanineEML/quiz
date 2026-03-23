-- -----------------------------------------------------------------
--     CATEGORY: VIDEOSPIEL
-- -----------------------------------------------------------------
SET @c = 1; -- see insert.sql for id of videospiel

-- LEICHT

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('In welchem Spiel spielt man als Klempner Mario?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Super Mario Bros.', true, @q),
    ('Donkey Kong', false, @q),
    ('Crash Bandicoot', false, @q),
    ('Sonic the Hedgehog', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie heißt der Hauptcharakter in The Legend of Zelda?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Link', true, @q),
    ('Zelda', false, @q),
    ('Ganon', false, @q),
    ('Kirby', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welche Farbe hat Sonic the Hedgehog?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Blau', true, @q),
    ('Rot', false, @q),
    ('Grün', false, @q),
    ('Gelb', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('In welchem Spiel baut man aus Blöcken eine Welt auf?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Minecraft', true, @q),
    ('Roblox', false, @q),
    ('Terraria', false, @q),
    ('Fortnite', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie heißt der Hauptgegner von Mario?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Bowser', true, @q),
    ('Wario', false, @q),
    ('Waluigi', false, @q),
    ('Donkey Kong', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welches Tier ist Pikachu?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Eine Maus', true, @q),
    ('Ein Hase', false, @q),
    ('Ein Eichhörnchen', false, @q),
    ('Ein Fuchs', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie heißt die Hauptfigur aus Pac-Man?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Pac-Man', true, @q),
    ('Blinky', false, @q),
    ('Inky', false, @q),
    ('Clyde', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welches Unternehmen hat Mario erschaffen?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Nintendo', true, @q),
    ('Sega', false, @q),
    ('Sony', false, @q),
    ('Atari', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('In welchem Spiel überleben Spieler auf einer schrumpfenden Insel?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Fortnite', true, @q),
    ('Call of Duty', false, @q),
    ('Battlefield', false, @q),
    ('Apex Legends', false, @q);

-- MITTEL

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('In welchem Jahr wurde das erste Pokémon-Spiel veröffentlicht?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('1996', true, @q),
    ('1998', false, @q),
    ('1994', false, @q),
    ('2000', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie heißt der Protagonist in Half-Life?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Gordon Freeman', true, @q),
    ('Alex Vance', false, @q),
    ('G-Man', false, @q),
    ('Barney Calhoun', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welches Studio entwickelte The Witcher 3: Wild Hunt?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('CD Projekt Red', true, @q),
    ('Bethesda', false, @q),
    ('BioWare', false, @q),
    ('Rockstar Games', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('In welcher fiktiven Stadt spielt der Großteil von GTA V?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Los Santos', true, @q),
    ('Liberty City', false, @q),
    ('Vice City', false, @q),
    ('San Fierro', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welches Spiel führte das "Bullet Time"-Feature ein?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Max Payne', true, @q),
    ('Doom', false, @q),
    ('Counter-Strike', false, @q),
    ('Quake', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie heißt die KI-Antagonistin in Portal?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('GLaDOS', true, @q),
    ('HAL 9000', false, @q),
    ('Wheatley', false, @q),
    ('SHODAN', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welches Unternehmen entwickelte Dark Souls?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('FromSoftware', true, @q),
    ('Capcom', false, @q),
    ('Square Enix', false, @q),
    ('Namco', false, @q);

-- SCHWER

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('In welchem Jahr erschien die erste PlayStation in Japan?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('1994', true, @q),
    ('1995', false, @q),
    ('1993', false, @q),
    ('1996', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welcher Charakter sagt den Satz "Stay a while and listen"?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Deckard Cain', true, @q),
    ('Tyrael', false, @q),
    ('Leah', false, @q),
    ('Diablo', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie heißt der Protagonist in Shadow of the Colossus?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Wander', true, @q),
    ('Ico', false, @q),
    ('Agro', false, @q),
    ('Mono', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welches Spiel gilt als erstes kommerziell erfolgreiches Videospiel?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Pong', true, @q),
    ('Tetris', false, @q),
    ('Space Invaders', false, @q),
    ('Pac-Man', false, @q);
