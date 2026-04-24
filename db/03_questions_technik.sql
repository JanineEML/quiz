-- -----------------------------------------------------------------
--     CATEGORY: TECHNIK
-- -----------------------------------------------------------------
USE quiz;
SET NAMES utf8mb4;
SET @c = 13; -- see insert.sql for id of technik

-- LEICHT

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wofür steht die Abkürzung CPU?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Central Processing Unit', true, @q),
    ('Computer Programming Unit', false, @q),
    ('Central Power Unit', false, @q),
    ('Coded Processing Unit', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist ein Betriebssystem?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Software, die Hardware verwaltet und das Ausführen von Programmen ermöglicht', true, @q),
    ('Eine Hardware-Komponente', false, @q),
    ('Ein externes Speichermedium', false, @q),
    ('Eine Programmiersprache', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wofür steht die Abkürzung WLAN?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Wireless Local Area Network', true, @q),
    ('Wide Local Area Network', false, @q),
    ('Wireless Long Access Network', false, @q),
    ('Web Local Area Node', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist ein Browser?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Ein Programm zum Anzeigen von Webseiten', true, @q),
    ('Ein Antivirenprogramm', false, @q),
    ('Ein E-Mail-Client', false, @q),
    ('Ein Betriebssystem', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist RAM?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Flüchtiger Arbeitsspeicher, der Daten temporär während der Laufzeit speichert', true, @q),
    ('Ein permanenter Datenspeicher', false, @q),
    ('Eine Grafikkarte', false, @q),
    ('Ein Prozessor', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wofür steht die Abkürzung USB?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Universal Serial Bus', true, @q),
    ('Universal System Bus', false, @q),
    ('Unified Serial Bus', false, @q),
    ('User Serial Bus', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie viele Megabyte (MB) hat 1 Gigabyte (GB)?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('1024 MB', true, @q),
    ('1000 MB', false, @q),
    ('512 MB', false, @q),
    ('2048 MB', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist ein Server?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Ein Computer, der Dienste oder Daten für andere Computer bereitstellt', true, @q),
    ('Ein tragbarer Computer', false, @q),
    ('Ein Eingabegerät', false, @q),
    ('Ein Drucker', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was macht eine Grafikkarte?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Sie berechnet und rendert Bilder und gibt sie auf dem Monitor aus', true, @q),
    ('Sie speichert Daten dauerhaft', false, @q),
    ('Sie verarbeitet Audiosignale', false, @q),
    ('Sie verbindet das Gerät mit dem Internet', false, @q);

-- MITTEL

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist ein Algorithmus?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Eine endliche, schrittweise Anleitung zur Lösung eines Problems', true, @q),
    ('Eine Programmiersprache', false, @q),
    ('Ein Betriebssystem', false, @q),
    ('Ein Datenbankformat', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist der Unterschied zwischen HDD und SSD?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('SSDs nutzen Flash-Speicher und sind schneller; HDDs nutzen mechanische Platten', true, @q),
    ('Kein wesentlicher Unterschied', false, @q),
    ('HDDs sind schneller, SSDs sind veraltet', false, @q),
    ('HDDs haben immer mehr Kapazität als SSDs', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist eine IP-Adresse?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Eine eindeutige Adresse eines Geräts in einem Netzwerk', true, @q),
    ('Ein Netzwerkpasswort', false, @q),
    ('Ein Dateisystem', false, @q),
    ('Eine Verschlüsselungsmethode', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist Cloud Computing?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('IT-Ressourcen wie Speicher oder Rechenleistung werden über das Internet bereitgestellt', true, @q),
    ('Lokale Datenspeicherung auf eigenen Servern', false, @q),
    ('Kabelloses Internet über WLAN', false, @q),
    ('Eine Methode zur Serverraumkühlung', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist das Binärsystem?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Ein Zahlensystem mit nur zwei Ziffern: 0 und 1', true, @q),
    ('Ein Betriebssystem für Server', false, @q),
    ('Ein Verschlüsselungsverfahren', false, @q),
    ('Ein Netzwerkprotokoll', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist Phishing?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Ein Angriff, bei dem Nutzer zur Preisgabe sensibler Daten verleitet werden', true, @q),
    ('Ein Antivirenprogramm', false, @q),
    ('Ein Netzwerkprotokoll', false, @q),
    ('Eine Verschlüsselungsmethode', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist ein Compiler?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Ein Programm, das Quellcode in ausführbaren Maschinencode übersetzt', true, @q),
    ('Ein erweiterter Texteditor', false, @q),
    ('Ein Betriebssystem', false, @q),
    ('Ein Browser-Plugin', false, @q);

-- SCHWER

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist das OSI-Referenzmodell?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Ein 7-Schichten-Modell zur standardisierten Beschreibung von Netzwerkkommunikation', true, @q),
    ('Ein Betriebssystem für Großrechner', false, @q),
    ('Ein Verschlüsselungsstandard', false, @q),
    ('Ein Datenbankmodell', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was besagt das Mooresche Gesetz (Moore''s Law)?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Die Anzahl der Transistoren auf einem Chip verdoppelt sich ungefähr alle zwei Jahre', true, @q),
    ('Ein Gesetz zur Netzwerkgeschwindigkeit', false, @q),
    ('Ein IT-Sicherheitsstandard', false, @q),
    ('Ein Datenbankprinzip', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist ein Buffer Overflow?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Eine Sicherheitslücke, bei der mehr Daten in einen Speicherpuffer geschrieben werden als er fassen kann', true, @q),
    ('Ein Netzwerkfehler bei zu vielen Paketen', false, @q),
    ('Ein Hardwaredefekt des RAM', false, @q),
    ('Ein Speicherleck durch fehlerhaftes Ressourcenmanagement', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist Latenz in der Netzwerktechnik?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Die Zeitverzögerung bei der Übertragung von Daten zwischen zwei Punkten', true, @q),
    ('Die maximale Übertragungsgeschwindigkeit eines Netzwerks', false, @q),
    ('Die übertragene Datenmenge pro Sekunde', false, @q),
    ('Die Signalstärke eines WLAN-Netzwerks', false, @q);
