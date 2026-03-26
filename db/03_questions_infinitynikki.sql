USE quiz;
SET NAMES utf8mb4;
-- Füge zuerst in db/insert.sql hinzu:
--   INSERT INTO category (category_label) VALUES ('Infinity Nikki');
SET @c = 8;

-- -----------------------------------------------------------------
--     KATEGORIE INFINITY NIKKI — 40 FRAGEN (18L / 14M / 8S)
-- -----------------------------------------------------------------

-- ==============================
--  LEICHT (difficulty_id = 1)
-- ==============================

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Von welchem Studio wurde Infinity Nikki entwickelt?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Infold Games', true, @q),
    ('miHoYo', false, @q),
    ('Kuro Games', false, @q),
    ('HoYoverse', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('In welchem Jahr wurde Infinity Nikki weltweit veröffentlicht?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('2024', true, @q),
    ('2022', false, @q),
    ('2023', false, @q),
    ('2025', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie heißt Nikkis tierischer Begleiter in Infinity Nikki?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Momo', true, @q),
    ('Kiki', false, @q),
    ('Popo', false, @q),
    ('Luna', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welches Tier ist Momo, Nikkis Begleiter?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Eine Katze', true, @q),
    ('Ein Hund', false, @q),
    ('Ein Hase', false, @q),
    ('Ein Fuchs', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Auf welcher Konsole ist Infinity Nikki zum Launch verfügbar?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('PlayStation 5', true, @q),
    ('Xbox Series X', false, @q),
    ('Nintendo Switch', false, @q),
    ('PlayStation 4', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie heißt die Spielwelt in Infinity Nikki?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Miraland', true, @q),
    ('Starland', false, @q),
    ('Crystalia', false, @q),
    ('Dreamland', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie heißt die Startstadt in Infinity Nikki?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Florawish', true, @q),
    ('Blossomnest', false, @q),
    ('Springhaven', false, @q),
    ('Petalton', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welchem Genre gehört Infinity Nikki hauptsächlich an?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Open-World-Dress-up-Abenteuer', true, @q),
    ('Battle Royale', false, @q),
    ('Echtzeit-Strategie', false, @q),
    ('Roguelike', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie heißt die Premiumwährung in Infinity Nikki?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Diamanten', true, @q),
    ('Kristalle', false, @q),
    ('Edelsteine', false, @q),
    ('Sterne', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welches Geschäftsmodell verwendet Infinity Nikki?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Free-to-Play mit Gacha-Elementen', true, @q),
    ('Einmaliger Kaufpreis', false, @q),
    ('Monatliches Abonnement', false, @q),
    ('Free-to-Play ohne Mikrotransaktionen', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Zu welcher Spieleserie gehört Infinity Nikki?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Nikki-Reihe', true, @q),
    ('Dress-Dream-Reihe', false, @q),
    ('Style-World-Reihe', false, @q),
    ('Fashion-Quest-Reihe', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wer ist der Publisher von Infinity Nikki?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Papergames', true, @q),
    ('miHoYo', false, @q),
    ('NetEase', false, @q),
    ('Tencent', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was macht Momo, Nikkis Katzenbegleiter, besonders?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Er kann sprechen', true, @q),
    ('Er kann fliegen', false, @q),
    ('Er kann unsichtbar werden', false, @q),
    ('Er kann sich in einen Menschen verwandeln', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie nennt man die Fähigkeiten, die Nikki durch bestimmte Outfits erhält?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Resonanz', true, @q),
    ('Aura', false, @q),
    ('Magie', false, @q),
    ('Schimmer', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Auf welchem PC-Store ist Infinity Nikki erhältlich?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Epic Games Store', true, @q),
    ('Steam', false, @q),
    ('GOG', false, @q),
    ('Battle.net', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welches Spiel der Nikki-Reihe erschien direkt vor Infinity Nikki?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Shining Nikki', true, @q),
    ('Love Nikki', false, @q),
    ('Perfect Nikki', false, @q),
    ('Glowing Nikki', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie heißt die normale Spielwährung (Gold) in Infinity Nikki?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Bling', true, @q),
    ('Coins', false, @q),
    ('Zeni', false, @q),
    ('Credits', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Woher kommt Nikki laut der Hauptgeschichte von Infinity Nikki ursprünglich?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Aus der realen Welt', true, @q),
    ('Aus einem verborgenen Königreich Miralands', false, @q),
    ('Aus einer vergangenen Epoche Miralands', false, @q),
    ('Aus einer parallelen Dimension', false, @q);

-- ==============================
--  MITTEL (difficulty_id = 2)
-- ==============================

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie viele legendäre Wunder-Outfits (Miracle Outfits) stehen im Mittelpunkt der Hauptstory?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('10', true, @q),
    ('5', false, @q),
    ('7', false, @q),
    ('12', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist das Mutterunternehmen des Entwicklerstudios Infold Games?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Papergames', true, @q),
    ('Tencent', false, @q),
    ('NetEase', false, @q),
    ('miHoYo', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was unterscheidet Infinity Nikki gameplay-technisch am stärksten von früheren Nikki-Spielen?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Eine vollständig offene 3D-Welt zum Erkunden', true, @q),
    ('Es ist das erste Nikki-Spiel mit Multiplayer', false, @q),
    ('Es ist das erste Nikki-Spiel mit Gacha-System', false, @q),
    ('Es ist das erste Nikki-Spiel für Mobilgeräte', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was beschreibt den Begriff „Resonanz" in Infinity Nikki am treffendsten?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Durch das Tragen bestimmter Outfits aktivierbare Sonderfähigkeiten', true, @q),
    ('Ein Upgrade-System für Outfits', false, @q),
    ('Die emotionale Bindung zwischen Nikki und Momo', false, @q),
    ('Das Gacha-Wunschsystem des Spiels', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('In welchem Land hat das Entwicklerstudio Infold Games seinen Hauptsitz?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('China', true, @q),
    ('Japan', false, @q),
    ('Südkorea', false, @q),
    ('USA', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie viele Plattformen unterstützt Infinity Nikki zum globalen Launch?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('4 Plattformen (PC, PS5, iOS, Android)', true, @q),
    ('2 Plattformen', false, @q),
    ('3 Plattformen', false, @q),
    ('5 Plattformen', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist laut Hauptstory das übergeordnete Ziel von Nikkis Abenteuer?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Die 10 Wunder-Outfits zu finden, um Miraland zu retten', true, @q),
    ('Ein böses Kaiserreich zu stürzen', false, @q),
    ('Momo in einen Menschen zu verwandeln', false, @q),
    ('Den verlorenen König von Miraland zu finden', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie lautet das genaue Datum des globalen Launches von Infinity Nikki?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('5. Dezember 2024', true, @q),
    ('1. November 2024', false, @q),
    ('20. Dezember 2024', false, @q),
    ('15. Oktober 2024', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welche Art von Fähigkeiten können Resonanz-Outfits in Infinity Nikki verleihen?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Fähigkeiten wie Schweben, Schrumpfen oder Schwimmen', true, @q),
    ('Ausschließlich Kampffähigkeiten', false, @q),
    ('Nur ästhetische Veränderungen der Spielwelt', false, @q),
    ('Nur Geschwindigkeitsboosts', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie heißt das erste Spiel der Nikki-Reihe (auch bekannt als „Fashion Nikki")?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Nikki Up2U', true, @q),
    ('Love Nikki', false, @q),
    ('Shining Nikki', false, @q),
    ('Perfect Nikki', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welches bekannte Spielelement teilt Infinity Nikki mit Titeln wie Genshin Impact?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Ein Gacha-Wunschsystem zum Freischalten neuer Outfits', true, @q),
    ('Ein 1-vs-1-Kampfmodus', false, @q),
    ('Ein Gilden-/Klan-System', false, @q),
    ('Ein kompetitiver Ranglistenmodus', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wofür wird die Währung „Bling" in Infinity Nikki hauptsächlich verwendet?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Als Standard-Ingame-Währung für Käufe und Crafting', true, @q),
    ('Als Premiumwährung für Gacha-Züge', false, @q),
    ('Als Währung für saisonale Events', false, @q),
    ('Als Währung eines früheren Nikki-Spiels ohne Funktion', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie werden neue Outfits in Infinity Nikki typischerweise erlangt?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Durch Crafting mit gesammelten Materialien oder über das Gacha-System', true, @q),
    ('Ausschließlich durch das Besiegen von Gegnern', false, @q),
    ('Nur durch tägliche Login-Belohnungen', false, @q),
    ('Nur durch das Abschließen von Story-Kapiteln', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welche Kernmechanik nutzt Nikki, um Rätsel und Hindernisse in der Spielwelt zu überwinden?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Das Anlegen von Resonanz-Outfits mit spezifischen Fähigkeiten', true, @q),
    ('Das Einsetzen von Kampfzaubern', false, @q),
    ('Das Nutzen von Fahrzeugen und Reittieren', false, @q),
    ('Das Bezahlen mit der Ingame-Währung Bling', false, @q);

-- ==============================
--  SCHWER (difficulty_id = 3)
-- ==============================

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie lautet der chinesische Originaltitel von Infinity Nikki?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('无限暖暖 (Wúxiàn Nuǎnnuǎn)', true, @q),
    ('暖暖环游世界', false, @q),
    ('光之暖暖', false, @q),
    ('永恒暖暖', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('In welchem Jahr erschien das erste Spiel der Nikki-Reihe in China?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('2012', true, @q),
    ('2010', false, @q),
    ('2014', false, @q),
    ('2016', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist „Love Nikki – Dress UP Queen" im Kontext der Nikki-Reihe?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Ein Vorgängertitel der Reihe, konzipiert als 2D-Dress-up-Spiel', true, @q),
    ('Ein Nachfolger von Infinity Nikki', false, @q),
    ('Ein Spin-off ohne Verbindung zur Hauptreihe', false, @q),
    ('Eine Neuauflage (Remake) von Infinity Nikki', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Aus wie vielen Kleidungsteilen besteht ein vollständiges Outfit-Set, das eine Resonanzfähigkeit freischaltet?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('5 Teile', true, @q),
    ('3 Teile', false, @q),
    ('4 Teile', false, @q),
    ('7 Teile', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('In welchem Jahr wurde Love Nikki – Dress UP Queen international (außerhalb Chinas) veröffentlicht?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('2017', true, @q),
    ('2015', false, @q),
    ('2019', false, @q),
    ('2021', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welche große Spielplattform fehlt beim Launch von Infinity Nikki?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Nintendo Switch', true, @q),
    ('PlayStation 5', false, @q),
    ('iOS', false, @q),
    ('Android', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was unterscheidet Resonanz-Outfits grundlegend von normalen Outfits in Infinity Nikki?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Sie verleihen Nikki aktive Fähigkeiten zur Interaktion mit der Spielwelt', true, @q),
    ('Sie sind rein ästhetisch und haben keine Spielmechanik', false, @q),
    ('Sie erhöhen Nikkis Kampfstärke direkt', false, @q),
    ('Sie sind ausschließlich durch Echtgeld erhältlich', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welche narrative Besonderheit teilt Infinity Nikki mit dem Isekai-Genre?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Die Protagonistin Nikki wird aus der realen Welt in die Fantasiewelt Miraland versetzt', true, @q),
    ('Nikki kämpft gegen Zeitreisende, um in die reale Welt zurückzukehren', false, @q),
    ('Nikki ist eine KI, die Bewusstsein erlangt hat', false, @q),
    ('Nikki stammt aus einer Unterwasserwelt und erkundet die Oberfläche', false, @q);
