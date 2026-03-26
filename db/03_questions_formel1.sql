-- -----------------------------------------------------------------
--     CATEGORY: FORMEL 1
-- -----------------------------------------------------------------
USE quiz;
SET NAMES utf8mb4;
SET @c = 7; -- see insert.sql for id of formel 1

-- LEICHT

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie viele Punkte erhält der Sieger eines Formel-1-Rennens?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('25', true, @q),
    ('18', false, @q),
    ('15', false, @q),
    ('10', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('In welchem Fürstentum findet der bekannteste Straßenkurs der Formel 1 statt?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Monaco', true, @q),
    ('San Marino', false, @q),
    ('Luxemburg', false, @q),
    ('Liechtenstein', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was bedeutet "Pole Position"?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Startplatz 1 nach dem Qualifying', true, @q),
    ('Letzter Startplatz', false, @q),
    ('Schnellste Runde im Rennen', false, @q),
    ('Bester Boxenstopp', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welche Flagge signalisiert das Ende eines Rennens?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Schwarz-weiß karierte Flagge', true, @q),
    ('Rote Flagge', false, @q),
    ('Gelbe Flagge', false, @q),
    ('Grüne Flagge', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welche Farbe hat die Warnflagge bei einem Hindernis auf der Strecke?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Gelb', true, @q),
    ('Rot', false, @q),
    ('Blau', false, @q),
    ('Grün', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was signalisiert eine blaue Flagge einem Fahrer?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Er soll einen überrundenden Fahrer passieren lassen', true, @q),
    ('Er soll an die Box kommen', false, @q),
    ('Er hat das Rennen gewonnen', false, @q),
    ('Er soll langsamer fahren', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie viele Räder hat ein Formel-1-Auto?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('4', true, @q),
    ('6', false, @q),
    ('3', false, @q),
    ('8', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist ein "Safety Car"?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Ein Fahrzeug, das das Feld bei Gefahr auf der Strecke kontrolliert', true, @q),
    ('Ein Backup-Fahrzeug für ausgefallene Autos', false, @q),
    ('Das Fahrzeug des Rennsiegers', false, @q),
    ('Ein medizinisches Einsatzfahrzeug', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie viele Fahrer nehmen aktuell pro Saison an der Formel-1-WM teil?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('20', true, @q),
    ('18', false, @q),
    ('22', false, @q),
    ('24', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('In welchem Land liegt die berühmte Rennstrecke "Monza"?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Italien', true, @q),
    ('Frankreich', false, @q),
    ('Spanien', false, @q),
    ('Deutschland', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie nennt man den kurzen Halt zum Reifenwechsel während eines Rennens?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Boxenstopp', true, @q),
    ('Strafrunde', false, @q),
    ('Pace Lap', false, @q),
    ('Formation Lap', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welche Nationalität hat Max Verstappen?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Niederländisch', true, @q),
    ('Belgisch', false, @q),
    ('Deutsch', false, @q),
    ('Österreichisch', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie viele Formel-1-Weltmeistertitel hat Lewis Hamilton gewonnen?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('7', true, @q),
    ('5', false, @q),
    ('6', false, @q),
    ('4', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('In welchem Jahr fand das erste Formel-1-Weltmeisterschaftsrennen statt?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('1950', true, @q),
    ('1945', false, @q),
    ('1955', false, @q),
    ('1960', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie viele Punkte erhält der Zweite eines Rennens?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('18', true, @q),
    ('15', false, @q),
    ('20', false, @q),
    ('12', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wofür steht die Abkürzung "DRS"?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Drag Reduction System', true, @q),
    ('Digital Racing System', false, @q),
    ('Driver Recognition System', false, @q),
    ('Downforce Reduction System', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welche Nationalität hat Ferrari als Konstrukteur?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Italienisch', true, @q),
    ('Deutsch', false, @q),
    ('Britisch', false, @q),
    ('Französisch', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie nennt man die langsame Einführungsrunde vor dem Start?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Formation Lap', true, @q),
    ('Safety Car Lap', false, @q),
    ('Cool-down Lap', false, @q),
    ('Out Lap', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welcher Weltmeister gewann 2021 seinen ersten Formel-1-Titel?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Max Verstappen', true, @q),
    ('Lewis Hamilton', false, @q),
    ('Valtteri Bottas', false, @q),
    ('Charles Leclerc', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('In welcher Stadt findet der Große Preis von Australien statt?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Melbourne', true, @q),
    ('Sydney', false, @q),
    ('Brisbane', false, @q),
    ('Perth', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('In welchem Land befindet sich der Nürburgring?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Deutschland', true, @q),
    ('Österreich', false, @q),
    ('Schweiz', false, @q),
    ('Belgien', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie viele Teams nehmen aktuell an der Formel-1-WM teil?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('10', true, @q),
    ('8', false, @q),
    ('12', false, @q),
    ('6', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was bedeutet "DNF" in der Formel 1?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Did Not Finish', true, @q),
    ('Driver Not Found', false, @q),
    ('Driver Not Fit', false, @q),
    ('Did Not Follow', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welche Nationalität hat Lewis Hamilton?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Britisch', true, @q),
    ('Amerikanisch', false, @q),
    ('Kanadisch', false, @q),
    ('Australisch', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Auf welcher Strecke findet der Große Preis von Kanada statt?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Circuit Gilles Villeneuve', true, @q),
    ('Circuit Mont-Tremblant', false, @q),
    ('Toronto Street Circuit', false, @q),
    ('Vancouver Circuit', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist eine "Virtual Safety Car"-Phase?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Alle Fahrer müssen ihr Tempo deutlich reduzieren', true, @q),
    ('Ein echtes Safety Car fährt vor dem Feld', false, @q),
    ('Das Rennen wird komplett unterbrochen', false, @q),
    ('Der Start wird abgebrochen', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('In welcher Stadt findet der Große Preis von Japan statt?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Suzuka', true, @q),
    ('Tokio', false, @q),
    ('Osaka', false, @q),
    ('Kyoto', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welches Team fährt traditionell in Silber?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Mercedes', true, @q),
    ('Williams', false, @q),
    ('McLaren', false, @q),
    ('Haas', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie lautet der Name der Startaufstellung, die auf den Qualifying-Zeiten basiert?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Grid', true, @q),
    ('Formation', false, @q),
    ('Line-up', false, @q),
    ('Parade', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('In welchem Land liegt der Circuit de Spa-Francorchamps?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Belgien', true, @q),
    ('Frankreich', false, @q),
    ('Niederlande', false, @q),
    ('Luxemburg', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie viele Weltmeistertitel hat Sebastian Vettel gewonnen?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('4', true, @q),
    ('3', false, @q),
    ('5', false, @q),
    ('2', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welche Nationalität hat Sebastian Vettel?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Deutsch', true, @q),
    ('Österreichisch', false, @q),
    ('Schweizer', false, @q),
    ('Belgisch', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist ein "Stint" in der Formel 1?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Zeitraum, den ein Fahrer auf einem Reifensatz fährt', true, @q),
    ('Eine Qualifying-Runde', false, @q),
    ('Eine Boxenbesatzung', false, @q),
    ('Ein Rennabschnitt hinter dem Safety Car', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welche Nationalität hatte Ayrton Senna?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Brasilianisch', true, @q),
    ('Argentinisch', false, @q),
    ('Mexikanisch', false, @q),
    ('Kolumbianisch', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welches Qualifying-Segment scheidet die fünf langsamsten Fahrer aus?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Q1', true, @q),
    ('Q2', false, @q),
    ('Q3', false, @q),
    ('Super-Q', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Auf welcher Strecke findet der Große Preis von Singapur statt?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Marina Bay Street Circuit', true, @q),
    ('Singapore Raceway', false, @q),
    ('City Circuit Singapore', false, @q),
    ('Changi Circuit', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie nennt man die abgesperrte Zone, in der nach dem Qualifying keine Änderungen am Auto erlaubt sind?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Parc Fermé', true, @q),
    ('Pit Lane', false, @q),
    ('Paddock', false, @q),
    ('Tech Zone', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist ein "Out Lap"?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Die erste Runde nach einem Boxenstopp auf neuen Reifen', true, @q),
    ('Eine gestoppte Qualifying-Runde', false, @q),
    ('Eine Formation Lap', false, @q),
    ('Die letzte Runde eines Rennens', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welcher Fahrer ist bekannt als "The Iceman"?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Kimi Räikkönen', true, @q),
    ('Mika Häkkinen', false, @q),
    ('Valtteri Bottas', false, @q),
    ('Damon Hill', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was sind "Marbles" auf der Rennstrecke?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Reifenabrieb, der sich außerhalb der Ideallinie sammelt', true, @q),
    ('Kleine Steine auf der Strecke', false, @q),
    ('Unebenheiten im Asphalt', false, @q),
    ('Markierungen für die Ideallinie', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('In welchem Jahr führte die Formel 1 das Hybrid-Motorenreglement ein?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('2014', true, @q),
    ('2012', false, @q),
    ('2016', false, @q),
    ('2010', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welche Nationalität hat Fernando Alonso?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Spanisch', true, @q),
    ('Portugiesisch', false, @q),
    ('Italienisch', false, @q),
    ('Argentinisch', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie lautet der Name der Rennleitung, die über Strafen und Regelauslegung entscheidet?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Stewards', true, @q),
    ('Jury', false, @q),
    ('Race Board', false, @q),
    ('FIA Panel', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist ein "Drive-Through" als Strafe in der Formel 1?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Der Fahrer muss durch die Boxengasse fahren, ohne zu stoppen', true, @q),
    ('Der Fahrer muss an die Box und 10 Sekunden warten', false, @q),
    ('Der Fahrer verliert alle Punkte', false, @q),
    ('Der Fahrer startet vom letzten Platz', false, @q);

-- MITTEL

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('In welchem Jahr gewann Ayrton Senna seinen ersten Weltmeistertitel?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('1988', true, @q),
    ('1986', false, @q),
    ('1990', false, @q),
    ('1987', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie viele Weltmeistertitel gewann Juan Manuel Fangio?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('5', true, @q),
    ('4', false, @q),
    ('6', false, @q),
    ('3', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie viele Punkte bekommt der Zehnte eines Rennens?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('1', true, @q),
    ('2', false, @q),
    ('3', false, @q),
    ('0', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welcher Fahrer starb am 1. Mai 1994 beim Großen Preis von San Marino in Imola im Rennen?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Ayrton Senna', true, @q),
    ('Roland Ratzenberger', false, @q),
    ('Rubens Barrichello', false, @q),
    ('Michele Alboreto', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wer gewann den ersten Formel-1-Weltmeistertitel 1950?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Giuseppe Farina', true, @q),
    ('Juan Manuel Fangio', false, @q),
    ('Alberto Ascari', false, @q),
    ('Mike Hawthorn', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie viele Weltmeistertitel gewann Alain Prost?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('4', true, @q),
    ('3', false, @q),
    ('5', false, @q),
    ('2', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welches Team brachte 1977 den ersten Turbomotor in die Formel 1?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Renault', true, @q),
    ('Ferrari', false, @q),
    ('BMW', false, @q),
    ('Honda', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welcher Fahrer hält den Rekord für die meisten Siege in einer einzigen Formel-1-Saison (19 Siege, 2023)?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Max Verstappen', true, @q),
    ('Michael Schumacher', false, @q),
    ('Sebastian Vettel', false, @q),
    ('Lewis Hamilton', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Auf welcher Strecke befindet sich die berühmte Kurve "Eau Rouge"?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Spa-Francorchamps', true, @q),
    ('Silverstone', false, @q),
    ('Monza', false, @q),
    ('Suzuka', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist ein "Overcut" in der Formel-1-Strategie?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Länger draußen bleiben als der Konkurrent und dann später stoppen', true, @q),
    ('Früher stoppen als der Konkurrent', false, @q),
    ('Zweimal stoppen statt einmal', false, @q),
    ('Mit den härtesten Reifen starten', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('In welchem Jahr gewann Fernando Alonso seinen zweiten und letzten Weltmeistertitel?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('2006', true, @q),
    ('2008', false, @q),
    ('2005', false, @q),
    ('2010', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welcher Fahrer gewann 2008 seinen einzigen Weltmeistertitel mit McLaren?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Lewis Hamilton', true, @q),
    ('Kimi Räikkönen', false, @q),
    ('Felipe Massa', false, @q),
    ('Jenson Button', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('In welchem Jahr gewann Kimi Räikkönen seinen Weltmeistertitel?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('2007', true, @q),
    ('2005', false, @q),
    ('2009', false, @q),
    ('2006', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Auf welcher Strecke findet der Große Preis von Ungarn statt?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Hungaroring', true, @q),
    ('Budapest Raceway', false, @q),
    ('Pannonia Ring', false, @q),
    ('Circuit Hungary', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was bedeutet "Understeer" (Untersteuern) bei einem Formel-1-Auto?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Das Auto dreht weniger als gewünscht in die Kurve und geht nach außen', true, @q),
    ('Das Auto dreht zu stark in die Kurve', false, @q),
    ('Das Heck des Autos bricht aus', false, @q),
    ('Das Auto verliert Bodenhaftung an der Hinterachse', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('In welchem Jahr wurde KERS erstmals in der Formel 1 eingesetzt?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('2009', true, @q),
    ('2011', false, @q),
    ('2007', false, @q),
    ('2013', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie lautet die Bezeichnung für das Energierückgewinnungssystem seit dem Hybrid-Reglement 2014?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('ERS (Energy Recovery System)', true, @q),
    ('KERS', false, @q),
    ('Hybrid Drive', false, @q),
    ('Power Boost System', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welcher Fahrer gewann die Weltmeisterschaft 2009 mit dem Brawn GP Team?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Jenson Button', true, @q),
    ('Rubens Barrichello', false, @q),
    ('Lewis Hamilton', false, @q),
    ('Sebastian Vettel', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welcher Fahrer ist bekannt für die nach ihm benannte Kurve in Interlagos?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Ayrton Senna', true, @q),
    ('Nelson Piquet', false, @q),
    ('Rubens Barrichello', false, @q),
    ('Felipe Massa', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist die Mindestanzahl an verschiedenen Reifenmischungen, die in einem Trockenrennen verwendet werden müssen?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('2', true, @q),
    ('1', false, @q),
    ('3', false, @q),
    ('4', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welcher Fahrer gewann 1992 die Weltmeisterschaft mit einem Rekord von neun Saisonsiegen?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Nigel Mansell', true, @q),
    ('Alain Prost', false, @q),
    ('Ayrton Senna', false, @q),
    ('Michael Schumacher', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie nennt man die turbulente Luft hinter einem Formel-1-Auto, die das Überholen erschwert?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Dirty Air', true, @q),
    ('Turbulence', false, @q),
    ('Drag Zone', false, @q),
    ('Slipstream', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist ein "Undercut" in der Formel-1-Strategie?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Früher als der Konkurrent in die Box kommen, um mit frischen Reifen Zeit gutzumachen', true, @q),
    ('Länger als der Konkurrent draußen bleiben', false, @q),
    ('Den Konkurrenten in einer Kurve innen überholen', false, @q),
    ('Zweimal stoppen statt einmal', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welches Team dominierte die Formel-1-WM von 2014 bis 2021 mit sieben Konstrukteurstiteln in Folge?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Mercedes', true, @q),
    ('Red Bull', false, @q),
    ('Ferrari', false, @q),
    ('McLaren', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welche Nationalität hat Kimi Räikkönen?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Finnisch', true, @q),
    ('Schwedisch', false, @q),
    ('Norwegisch', false, @q),
    ('Dänisch', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was versteht man unter dem "Ground Effect" in der modernen Formel 1 seit 2022?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Abtrieb wird hauptsächlich durch den Unterboden erzeugt', true, @q),
    ('Ein spezieller Reifentyp für nasse Bedingungen', false, @q),
    ('Das Mindestgewicht des Autos', false, @q),
    ('Ein Motortuning-Verfahren', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('In welchem Jahr führte die Formel 1 den Bonuspunkt für die schnellste Runde ein?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('2019', true, @q),
    ('2017', false, @q),
    ('2021', false, @q),
    ('2015', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist ein "Flexi-Flügel"?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Ein Flügel, der sich unter Hochgeschwindigkeit verformt und so den Luftwiderstand reduziert', true, @q),
    ('Ein beweglicher Frontflügel, den der Fahrer aktiv verstellen kann', false, @q),
    ('Ein verstärkter Heckflügel ohne DRS', false, @q),
    ('Ein Heckspoiler für Regenrennen', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wer gewann den Großen Preis von Monaco am häufigsten?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Ayrton Senna', true, @q),
    ('Graham Hill', false, @q),
    ('Michael Schumacher', false, @q),
    ('Lewis Hamilton', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welcher Motorenhersteller belieferte Red Bull Racing in den Weltmeisterjahren 2010–2013?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Renault', true, @q),
    ('Ferrari', false, @q),
    ('Mercedes', false, @q),
    ('Honda', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist der "Budget Cap" in der Formel 1?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Eine Ausgabengrenze, die alle Teams pro Saison einhalten müssen', true, @q),
    ('Eine Begrenzung der Motorenleistung', false, @q),
    ('Ein Limit für Testfahrten', false, @q),
    ('Eine Beschränkung der Fahrergehälter', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welche Strafe erhält ein Fahrer, der seinen Konkurrenten beim Start abschießt und zurückfällt?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Das entscheiden die Stewards je nach Schwere des Vorfalls', true, @q),
    ('Automatisch 10-Sekunden-Strafe', false, @q),
    ('Disqualifikation', false, @q),
    ('Keine, wenn es als Rennunfall gilt', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist der Unterschied zwischen "Soft"-, "Medium"- und "Hard"-Reifen bei Pirelli?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Soft ist schneller aber hält weniger lang, Hard ist langsamer aber haltbarer', true, @q),
    ('Hard ist schneller, Soft haltbarer', false, @q),
    ('Alle haben die gleiche Lebensdauer, nur unterschiedliche Temperaturranges', false, @q),
    ('Medium ist immer die schnellste Mischung', false, @q);

-- SCHWER

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('In welchem Jahr wurde das "Concorde Agreement" erstmals unterzeichnet?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('1981', true, @q),
    ('1975', false, @q),
    ('1990', false, @q),
    ('1985', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welcher Fahrer gewann 1976 trotz seiner schweren Verletzungen beim Nürburgring beinahe die Weltmeisterschaft?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Niki Lauda', true, @q),
    ('James Hunt', false, @q),
    ('Clay Regazzoni', false, @q),
    ('Jody Scheckter', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie heißt die letzte Kurve vor der Start-Ziel-Geraden in Monza (heute Curva Alboreto)?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Parabolica', true, @q),
    ('Lesmo', false, @q),
    ('Ascari', false, @q),
    ('Variante del Rettifilo', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welcher Fahrer gewann 1994 trotz mehrerer Disqualifikationen und Sperren die Weltmeisterschaft?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Michael Schumacher', true, @q),
    ('Damon Hill', false, @q),
    ('Mika Häkkinen', false, @q),
    ('David Coulthard', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welcher Fahrer hält den Rekord für die meisten Pole Positions in der Formel-1-Geschichte?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Lewis Hamilton', true, @q),
    ('Ayrton Senna', false, @q),
    ('Michael Schumacher', false, @q),
    ('Sebastian Vettel', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welches Team gewann 2009 beide Weltmeisterschaften, obwohl es erst kurz vor Saisonbeginn gegründet wurde?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Brawn GP', true, @q),
    ('Force India', false, @q),
    ('Toyota', false, @q),
    ('BMW Sauber', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('In welchem Jahr endete die erste Turbo-Ära in der Formel 1, als Saugmotoren wieder zur Pflicht wurden?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('1988', true, @q),
    ('1990', false, @q),
    ('1986', false, @q),
    ('1992', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welcher Fahrer gewann 2005 und 2006 die Weltmeisterschaft mit Renault?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Fernando Alonso', true, @q),
    ('Giancarlo Fisichella', false, @q),
    ('Mark Webber', false, @q),
    ('Jarno Trulli', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welcher Motorenhersteller belieferte Red Bull Racing von 2019 bis 2021?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Honda', true, @q),
    ('Renault', false, @q),
    ('Ferrari', false, @q),
    ('Mercedes', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was versteht man unter dem "Diffusor" an einem Formel-1-Auto?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Ein aerodynamisches Bauteil am Unterboden, das Luft beschleunigt und Abtrieb erzeugt', true, @q),
    ('Ein Kühlsystem für den Motor', false, @q),
    ('Ein Bauteil zur Verteilung der Bremsbalance', false, @q),
    ('Eine Vorrichtung zur Reifenkühlung', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('In welchem Jahr wurde das HANS-System (Head and Neck Support) in der Formel 1 zur Pflicht?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('2003', true, @q),
    ('2000', false, @q),
    ('2005', false, @q),
    ('1998', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welcher Fahrer fuhr von 1990 bis 1992 für McLaren-Honda und gewann in dieser Zeit zwei Weltmeisterschaften?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Ayrton Senna', true, @q),
    ('Alain Prost', false, @q),
    ('Gerhard Berger', false, @q),
    ('Michael Andretti', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist die "Pitlane Speed Limit" bei den meisten Formel-1-Rennen?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('80 km/h', true, @q),
    ('60 km/h', false, @q),
    ('100 km/h', false, @q),
    ('120 km/h', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welches aerodynamische Konzept wurde 2010 eingesetzt und ließ den Heckflügel durch eine vom Fahrer gesteuerte Luftumleitung abreißen (vor DRS)?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('F-Duct', true, @q),
    ('EBD (Exhaust Blown Diffuser)', false, @q),
    ('Mass Damper', false, @q),
    ('Double Diffuser', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welches Team nutzte 2011 als erstes erfolgreich den "Exhaust Blown Diffuser" (EBD)?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Red Bull', true, @q),
    ('McLaren', false, @q),
    ('Ferrari', false, @q),
    ('Mercedes', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('In welchem Jahr führte die FIA den Halo-Überrollbügel zum Schutz des Fahrerkopfes ein?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('2018', true, @q),
    ('2016', false, @q),
    ('2020', false, @q),
    ('2015', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie nennt man die ab 2021 eingeführte Ausgabengrenze, die alle Formel-1-Teams pro Saison einhalten müssen?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Budget Cap', true, @q),
    ('Concorde Agreement', false, @q),
    ('Token-System', false, @q),
    ('Resource Restriction Agreement', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welcher Fahrer gewann 2000 den Großen Preis von Deutschland in Hockenheim bei wechselnden Bedingungen von Startplatz 18?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Rubens Barrichello', true, @q),
    ('Michael Schumacher', false, @q),
    ('David Coulthard', false, @q),
    ('Mika Häkkinen', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wer gewann 2007 die Weltmeisterschaft beim letzten Rennen in Brasilien, nachdem Lewis Hamilton durch einen Getriebedefekt zurückgefallen war?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Kimi Räikkönen', true, @q),
    ('Felipe Massa', false, @q),
    ('Fernando Alonso', false, @q),
    ('Jenson Button', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist der "Mass Damper", der 2006 von der FIA verboten wurde?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Ein Gewicht im Chassis, das Reifenvibration und Nickbewegungen dämpft und die Aerodynamik stabilisiert', true, @q),
    ('Ein Dämpfersystem für härtere Bremsmanöver', false, @q),
    ('Ein Motorlager zur Schwingungsdämpfung', false, @q),
    ('Ein Gewicht zur Optimierung des Schwerpunkts', false, @q);

-- -----------------------------------------------------------------
--     KATEGORIE FORMEL 1 — BATCH 2 (weitere 100 Fragen)
-- -----------------------------------------------------------------

-- LEICHT (Batch 2)

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was bedeutet die Abkürzung "WDC" in der Formel 1?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('World Drivers'' Championship (Fahrerweltmeisterschaft)', true, @q),
    ('World Driving Competition', false, @q),
    ('World Drag Championship', false, @q),
    ('World Dual Championship', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welche Nationalität hat Charles Leclerc?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Monegassisch', true, @q),
    ('Französisch', false, @q),
    ('Italienisch', false, @q),
    ('Belgisch', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Für welches Team fährt Charles Leclerc (Stand 2024)?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Ferrari', true, @q),
    ('McLaren', false, @q),
    ('Mercedes', false, @q),
    ('Alpine', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('In welchem Land liegt die Rennstrecke Silverstone?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Großbritannien', true, @q),
    ('Irland', false, @q),
    ('Frankreich', false, @q),
    ('Deutschland', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie heißt die Formel-1-Rennstrecke in Österreich?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Red Bull Ring', true, @q),
    ('A1 Ring', false, @q),
    ('Österreichring', false, @q),
    ('Zeltweg Circuit', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wofür steht die Abkürzung "FIA"?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Fédération Internationale de l''Automobile', true, @q),
    ('Formula International Association', false, @q),
    ('Federation of International Automobiles', false, @q),
    ('Formula Inspection Authority', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welche Farbe hat der Soft-Reifen von Pirelli in der Formel 1?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Rot', true, @q),
    ('Gelb', false, @q),
    ('Weiß', false, @q),
    ('Grün', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welche Farbe hat der Medium-Reifen von Pirelli in der Formel 1?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Gelb', true, @q),
    ('Rot', false, @q),
    ('Weiß', false, @q),
    ('Blau', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welche Farbe hat der Hard-Reifen von Pirelli in der Formel 1?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Weiß', true, @q),
    ('Schwarz', false, @q),
    ('Grau', false, @q),
    ('Gelb', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('In welchem Jahr trat Michael Schumacher erstmals in der Formel 1 an?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('1991', true, @q),
    ('1989', false, @q),
    ('1993', false, @q),
    ('1990', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie viele Formel-1-Weltmeisterschaften gewann Michael Schumacher?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('7', true, @q),
    ('5', false, @q),
    ('6', false, @q),
    ('4', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welche Nationalität hat Nico Rosberg?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Deutsch', true, @q),
    ('Finnisch', false, @q),
    ('Österreichisch', false, @q),
    ('Schwedisch', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('In welchem Jahr gewann Nico Rosberg seinen einzigen WM-Titel?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('2016', true, @q),
    ('2015', false, @q),
    ('2017', false, @q),
    ('2014', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist das "Paddock" bei einem Formel-1-Event?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Der abgesperrte Bereich hinter den Boxen mit Motorhomes und Trucks der Teams', true, @q),
    ('Die Boxengasse, in der Fahrzeuge gewartet werden', false, @q),
    ('Die Startaufstellungsfläche vor dem Start', false, @q),
    ('Der Pressebereich beim Rennen', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist ein "Sprint Race" in der Formel 1?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Ein kürzeres Rennen am Samstag, das Punkte vergibt', true, @q),
    ('Das eigentliche Hauptrennen am Sonntag', false, @q),
    ('Ein Zeitfahren auf einer verkürzten Strecke', false, @q),
    ('Ein Rennen ohne Boxenstopps', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welche Farbe hat der Intermediate-Reifen von Pirelli in der Formel 1?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Grün', true, @q),
    ('Blau', false, @q),
    ('Gelb', false, @q),
    ('Weiß', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('In welchem Land befindet sich der Emirat Abu Dhabi?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Vereinigte Arabische Emirate', true, @q),
    ('Saudi-Arabien', false, @q),
    ('Katar', false, @q),
    ('Bahrain', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welche Nationalität hat Carlos Sainz jun.?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Spanisch', true, @q),
    ('Portugiesisch', false, @q),
    ('Argentinisch', false, @q),
    ('Mexikanisch', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welche Nationalität hat Lando Norris?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Britisch', true, @q),
    ('Australisch', false, @q),
    ('Irisch', false, @q),
    ('Kanadisch', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Für welches Team fährt Lando Norris (Stand 2024)?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('McLaren', true, @q),
    ('Ferrari', false, @q),
    ('Mercedes', false, @q),
    ('Alpine', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('In welchem Land liegt die Rennstrecke Interlagos (São Paulo)?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Brasilien', true, @q),
    ('Argentinien', false, @q),
    ('Mexiko', false, @q),
    ('Kolumbien', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie viele Punkte erhält der Dritte eines Formel-1-Rennens?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('15', true, @q),
    ('12', false, @q),
    ('18', false, @q),
    ('10', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie viele Punkte erhält der Fünfte eines Formel-1-Rennens?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('10', true, @q),
    ('8', false, @q),
    ('12', false, @q),
    ('6', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('In welchem Jahr bestritt Max Verstappen sein erstes Formel-1-Rennen?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('2015', true, @q),
    ('2016', false, @q),
    ('2014', false, @q),
    ('2017', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welche Nationalität hat Sergio Perez?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Mexikanisch', true, @q),
    ('Argentinisch', false, @q),
    ('Kolumbianisch', false, @q),
    ('Brasilianisch', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Für welches Team fährt George Russell (Stand 2024)?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Mercedes', true, @q),
    ('Williams', false, @q),
    ('McLaren', false, @q),
    ('Red Bull', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welche Nationalität hat George Russell?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Britisch', true, @q),
    ('Australisch', false, @q),
    ('Kanadisch', false, @q),
    ('Neuseeländisch', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist ein "In Lap" in der Formel 1?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Die letzte Runde eines Stints vor dem Boxenstopp', true, @q),
    ('Die erste Runde nach dem Boxenstopp', false, @q),
    ('Eine Runde hinter dem Safety Car', false, @q),
    ('Die Einführungsrunde vor dem Start', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welche Farbe tragen die Ferrari-Formel-1-Autos traditionell?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Rot', true, @q),
    ('Blau', false, @q),
    ('Schwarz', false, @q),
    ('Silber', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was schützt der "Halo" am Formel-1-Auto?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Den Kopf des Fahrers vor Trümmerteilen und Fremdkörpern', true, @q),
    ('Den Motor vor Überhitzung', false, @q),
    ('Die Reifen vor Überhitzung', false, @q),
    ('Das Getriebe bei Auffahrunfällen', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie nennt man die Runde nach der Zieleinfahrt, in der das Auto langsam zurückfährt?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Cool-down Lap', true, @q),
    ('Out Lap', false, @q),
    ('Sighting Lap', false, @q),
    ('Warm-up Lap', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was bedeutet "DSQ" in einem Formel-1-Rennergebnis?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Disqualifikation', true, @q),
    ('Did Not Start – Qualifiziert', false, @q),
    ('Doppel-Stop-Qualifiziert', false, @q),
    ('Driver Safety Qualified', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('In welchem Monat findet der Große Preis von Monaco traditionell statt?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Mai', true, @q),
    ('Juni', false, @q),
    ('April', false, @q),
    ('Juli', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welches Team hat die meisten Konstrukteursweltmeisterschaften der Formel-1-Geschichte gewonnen?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Ferrari', true, @q),
    ('Williams', false, @q),
    ('McLaren', false, @q),
    ('Mercedes', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie viele Punkte erhält der Vierte eines Formel-1-Rennens?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('12', true, @q),
    ('10', false, @q),
    ('15', false, @q),
    ('8', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie viele rote Lichter leuchten in der Formel-1-Startampel auf?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('5', true, @q),
    ('3', false, @q),
    ('4', false, @q),
    ('6', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('In welchem Land liegt der Circuit of the Americas (COTA)?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('USA', true, @q),
    ('Kanada', false, @q),
    ('Mexiko', false, @q),
    ('Brasilien', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wofür steht die Abkürzung "WCC" in der Formel 1?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('World Constructors'' Championship (Konstrukteursweltmeisterschaft)', true, @q),
    ('World Car Championship', false, @q),
    ('World Circuit Championship', false, @q),
    ('World Competition Cup', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist ein "Reifenplatzer" in der Formel 1?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Ein plötzlicher Druckverlust an einem Reifen während der Fahrt', true, @q),
    ('Ein absichtlicher Boxenstopp zum Reifenwechsel', false, @q),
    ('Ein Reifenschaden durch den Kontakt mit einem Kerb', false, @q),
    ('Das Überhitzen eines Reifens', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist eine "Zeitstrafe" von 5 Sekunden in der Formel 1?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Eine Strafe, die nach dem Rennen zur Gesamtzeit addiert wird', true, @q),
    ('Der Fahrer muss 5 Sekunden in der Box stehen bleiben', false, @q),
    ('Der Fahrer verliert 5 Startplätze beim nächsten Rennen', false, @q),
    ('Der Fahrer wird um 5 Positionen zurückversetzt', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Auf welcher Strecke findet der Große Preis von Abu Dhabi statt?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Yas Marina Circuit', true, @q),
    ('Abu Dhabi Street Circuit', false, @q),
    ('Al Ain Raceway', false, @q),
    ('Emirates Circuit', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist "Porpoising" in der modernen Formel 1?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Ein Aufschaukeln des Autos bei hoher Geschwindigkeit durch den Ground-Effect-Unterboden', true, @q),
    ('Ein Reifenflattern bei niedrigen Geschwindigkeiten', false, @q),
    ('Ein Motorproblem bei hoher Drehzahl', false, @q),
    ('Das Vibrieren des Lenkrads über Kerbs', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welche Startnummer trägt der amtierende Formel-1-Weltmeister?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('1', true, @q),
    ('0', false, @q),
    ('99', false, @q),
    ('Die Nummer seiner Wahl', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('In welchem Land liegt die Rennstrecke Hockenheim?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Deutschland', true, @q),
    ('Österreich', false, @q),
    ('Schweiz', false, @q),
    ('Belgien', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was bedeutet "P2" in einem Formel-1-Rennergebnis?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Zweiter Platz', true, @q),
    ('Zweite Trainingseinheit', false, @q),
    ('Zweiter Boxenstopp', false, @q),
    ('Zweite Startzeile', false, @q);

-- MITTEL (Batch 2)

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('In welchem Jahr bestritt Lewis Hamilton sein erstes Formel-1-Rennen?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('2007', true, @q),
    ('2005', false, @q),
    ('2008', false, @q),
    ('2006', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welcher Fahrer verunglückte beim Großen Preis von Bahrain 2020 bei einem spektakulären Feuerunfall und überlebte unverletzt?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Romain Grosjean', true, @q),
    ('Kevin Magnussen', false, @q),
    ('Daniil Kvjat', false, @q),
    ('Antonio Giovinazzi', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('In welchem Jahr gewann Michael Schumacher seinen ersten Weltmeistertitel?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('1994', true, @q),
    ('1992', false, @q),
    ('1996', false, @q),
    ('1993', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('In welchem Jahr gewann Damon Hill seinen einzigen Weltmeistertitel?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('1996', true, @q),
    ('1994', false, @q),
    ('1998', false, @q),
    ('1995', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wessen Sohn ist Formel-1-Weltmeister Damon Hill?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Graham Hill', true, @q),
    ('Phil Hill', false, @q),
    ('Jack Brabham', false, @q),
    ('Stirling Moss', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('In welchem Jahr fand das erste Formel-1-Nachtrennen der Geschichte statt?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('2008', true, @q),
    ('2010', false, @q),
    ('2006', false, @q),
    ('2012', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist ein "Reifenwärmer" (Tyre Blanket) in der Formel 1?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Eine elektrische Wärmehülle, die die Reifen vor dem Einbau auf Betriebstemperatur bringt', true, @q),
    ('Eine Kühlvorrichtung nach überhitzten Reifen', false, @q),
    ('Ein Druckmessgerät für die Reifenkontrolle', false, @q),
    ('Eine Abdeckung zum Schutz der Reifen vor Regen', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welcher Konstrukteur gewann 2022 erstmals seit 2013 wieder die Konstrukteursweltmeisterschaft?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Red Bull Racing', true, @q),
    ('Ferrari', false, @q),
    ('McLaren', false, @q),
    ('Aston Martin', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist ein "Race Engineer" in der Formel 1?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Der technische Betreuer, der den Fahrer per Funk mit Informationen und Anweisungen versorgt', true, @q),
    ('Der Chefingenieur, der das Auto baut', false, @q),
    ('Der Mechaniker, der Boxenstopps koordiniert', false, @q),
    ('Der FIA-Techniker bei der Fahrzeugabnahme', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('In welchem Jahr setzte Red Bull Racing erstmals Honda-Motoren ein?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('2019', true, @q),
    ('2017', false, @q),
    ('2021', false, @q),
    ('2018', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist "Graining" bei Formel-1-Reifen?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Oberflächliche Rissbildung und Gummiabrieb durch zu kalte oder überlastete Reifen', true, @q),
    ('Blasenbildung unter der Reifenoberfläche durch zu hohe Temperaturen', false, @q),
    ('Gleichmäßiger Reifenverschleiß über die gesamte Lauffläche', false, @q),
    ('Das Aufwärmen eines neuen Reifensatzes nach dem Boxenstopp', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('In welchem Jahr gewann Mika Häkkinen seinen zweiten und letzten Weltmeistertitel?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('1999', true, @q),
    ('1997', false, @q),
    ('2001', false, @q),
    ('1998', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Mit welchem Motorenpartner dominierte McLaren 1998 und 1999 mit Mika Häkkinen?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Mercedes', true, @q),
    ('Honda', false, @q),
    ('Ford', false, @q),
    ('Renault', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist das "DAS" (Dual-Axis Steering), das Mercedes 2020 einsetzte?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Ein System, das dem Fahrer erlaubte, den Sturz der Vorderräder durch Vor-/Zurückziehen des Lenkrads zu verändern', true, @q),
    ('Ein automatisches Lenkhilfssystem für enge Kurven', false, @q),
    ('Eine Hinterradlenkung zur besseren Kurvenst ability', false, @q),
    ('Ein elektronisches Traktionskontrollsystem über die Lenkung', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welcher Fahrer gewann 1997 den WM-Titel, nachdem sein Titelrivale aus der Wertung ausgeschlossen wurde?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Jacques Villeneuve', true, @q),
    ('Damon Hill', false, @q),
    ('David Coulthard', false, @q),
    ('Heinz-Harald Frentzen', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welcher Fahrer ist der jüngste Formel-1-Weltmeister der Geschichte?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Sebastian Vettel (23 Jahre, 2010)', true, @q),
    ('Max Verstappen (24 Jahre, 2021)', false, @q),
    ('Lewis Hamilton (23 Jahre, 2008)', false, @q),
    ('Fernando Alonso (24 Jahre, 2005)', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('In welchem Jahr war die letzte Formel-1-Saison mit V8-Saugmotoren?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('2013', true, @q),
    ('2011', false, @q),
    ('2015', false, @q),
    ('2012', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist eine "One-Stop-Strategie" in der Formel 1?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Eine Rennstrategie mit nur einem einzigen Reifenwechsel-Boxenstopp', true, @q),
    ('Eine Strategie mit einer einmaligen Tankfüllung', false, @q),
    ('Das Fahren ohne Reifenwechsel durch das gesamte Rennen', false, @q),
    ('Ein Boxenstopp nur für Reparaturen, ohne Reifenwechsel', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welches Team entstand 2005 aus dem ehemaligen Jaguar Racing Team?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Red Bull Racing', true, @q),
    ('Toro Rosso', false, @q),
    ('Force India', false, @q),
    ('Super Aguri', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist ein "Token-System" in der Formel-1-Motorenentwicklung?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Eine begrenzte Anzahl erlaubter Entwicklungsschritte am Motor pro Saison', true, @q),
    ('Ein Bonuspunktesystem für besonders schnelle Runden', false, @q),
    ('Ein System zur Verteilung von Testkilometern', false, @q),
    ('Eine Regelung für den Tausch von Motorenteilen zwischen Teams', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist "Tyre Degradation" in der Formel 1?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Die zunehmende Leistungsabnahme eines Reifens durch thermische und mechanische Beanspruchung', true, @q),
    ('Das Aufheizen eines neuen Reifens auf Betriebstemperatur', false, @q),
    ('Der Unterschied in der Rundenzeit zwischen verschiedenen Reifenmischungen', false, @q),
    ('Das Platzen eines Reifens durch Überbelastung', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wer ist Bernd Mayländer in der Formel 1?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Der langjährige Safety-Car-Fahrer der Formel 1', true, @q),
    ('Ein ehemaliger Formel-1-Weltmeister', false, @q),
    ('Der FIA-Rennleiter', false, @q),
    ('Der Chefmechaniker bei Mercedes', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist die "Power Unit" (PU) in der modernen Formel 1 seit 2014?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Ein 1,6-Liter-V6-Turbohybrid-Antrieb aus Verbrenner, Turbo, MGU-H, MGU-K und Energiespeicher', true, @q),
    ('Ein 2,4-Liter-V8-Saugmotor mit Hybridunterstützung', false, @q),
    ('Ein reiner Elektromotor mit zusätzlichem Verbrennungsmotor', false, @q),
    ('Ein 1,8-Liter-V6-Hybrid ohne Turboaufladung', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welches Team wurde beim "Spygate"-Skandal 2007 aus der Konstrukteurswertung ausgeschlossen?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('McLaren', true, @q),
    ('Renault', false, @q),
    ('Ferrari', false, @q),
    ('Honda', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('In welchem Jahr wurden erstmals Doppelpunkte beim letzten Saisonrennen vergeben?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('2014', true, @q),
    ('2012', false, @q),
    ('2016', false, @q),
    ('2013', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist "Snap Oversteer" in der Formel 1?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Plötzliches, schwer kontrollierbares Ausbrechen des Hecks in einer Kurve', true, @q),
    ('Zu starkes Einlenken des Fahrzeugs nach innen', false, @q),
    ('Das Verziehen des Autos beim Bremsen', false, @q),
    ('Übermäßiger Reifenverschleiß an der Hinterachse', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welches Team gewann 2022 und 2023 jeweils beide WM-Titel (Fahrer und Konstrukteur)?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Red Bull Racing', true, @q),
    ('Ferrari', false, @q),
    ('Mercedes', false, @q),
    ('McLaren', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist der "Doppelte Diffusor" (Double Diffuser), den Brawn GP 2009 einsetzte?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Ein Diffusor, der durch eine Regellücke zwei getrennte Kanäle nutzte und deutlich mehr Abtrieb erzeugte', true, @q),
    ('Ein Doppelflügel am Heck des Autos', false, @q),
    ('Ein aktiv verstellbarer Heckdiffusor', false, @q),
    ('Eine Doppeldeck-Unterbodenstruktur für Regenrennen', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was regelt das "Concorde Agreement" in der Formel 1?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Die Teilnahmebedingungen und Einnahmenverteilung zwischen FIA, Teams und Formel-1-Organisation', true, @q),
    ('Die technischen Mindestanforderungen an Formel-1-Autos', false, @q),
    ('Das Sicherheitsprotokoll bei Rennunterbrechungen', false, @q),
    ('Die Punktevergabe in der WM', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie lautet der offizielle Begriff für den Vortriebsstrang eines Formel-1-Autos seit 2014?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Power Unit (PU)', true, @q),
    ('Hybrid Drive Unit', false, @q),
    ('Energy Motor Unit', false, @q),
    ('Combustion Drive System', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welcher Fahrer ist der einzige, der in drei verschiedenen Jahrzehnten Formel-1-Rennen gewann?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Lewis Hamilton (2000er, 2010er, 2020er)', true, @q),
    ('Michael Schumacher (1990er, 2000er, 2010er)', false, @q),
    ('Fernando Alonso (2000er, 2010er, 2020er)', false, @q),
    ('Rubens Barrichello (1990er, 2000er, 2010er)', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist "Blistering" bei Formel-1-Reifen?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Blasenbildung unter der Reifenoberfläche durch zu hohe Betriebstemperaturen', true, @q),
    ('Rissbildung durch zu kalte Reifen', false, @q),
    ('Gleichmäßiger Abrieb über die gesamte Reifenbreite', false, @q),
    ('Das Aufreißen der Lauffläche beim Start', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was war der "6-Auto-Skandal" beim Großen Preis der USA 2005 in Indianapolis?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Alle Michelin-bereiften Teams fuhren nach der Einführungsrunde in die Box, da Michelin keine sichere Bereifung garantieren konnte; nur 6 Bridgestone-Fahrzeuge starteten', true, @q),
    ('Sechs Fahrer wurden wegen technischer Vergehen disqualifiziert', false, @q),
    ('Das Rennen wurde nach einem Massenunfall abgebrochen und neu gestartet', false, @q),
    ('Sechs Teams wurden durch Reifenprobleme zum Aufgeben gezwungen', false, @q);

-- SCHWER (Batch 2)

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('In welchem Rennen kollidierten 1994 Michael Schumacher und Damon Hill im entscheidenden WM-Duell?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Großer Preis von Australien in Adelaide', true, @q),
    ('Großer Preis von Japan in Suzuka', false, @q),
    ('Großer Preis von Europa in Jerez', false, @q),
    ('Großer Preis von Portugal in Estoril', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welche Strafe erhielt Michael Schumacher nach seiner absichtlichen Kollision mit Jacques Villeneuve beim WM-Finale 1997 in Jerez?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Er wurde aus der gesamten WM-Abschlusswertung 1997 gestrichen (alle Saisonpunkte aberkannt)', true, @q),
    ('Er erhielt eine Sperre für die ersten 3 Rennen der Saison 1998', false, @q),
    ('Er wurde für den Rest der Saison 1997 gesperrt', false, @q),
    ('Er erhielt eine Geldstrafe und einen Startplatzverlust', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was war der "Crash-Gate"-Skandal beim Großen Preis von Singapur 2008?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Nelson Piquet jr. verursachte auf Teamanweisung von Renault absichtlich einen Unfall, um Teamkollege Fernando Alonso einen Strategievorteil zu verschaffen', true, @q),
    ('Lewis Hamilton verhinderte absichtlich den Sieg von Felipe Massa durch unfaire Fahrweise', false, @q),
    ('Ein Teammitglied sabotierte das Auto eines Konkurrenzteams in der Boxengasse', false, @q),
    ('Zwei Fahrer kollidierten absichtlich, um eine Safety-Car-Phase für ihr Team auszulösen', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was war der "Spygate"-Skandal 2007 im Detail?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('McLaren-Mitarbeiter erhielten vertrauliche Ferrari-Technikunterlagen; McLaren wurde aus der Konstrukteurswertung 2007 ausgeschlossen und zu 100 Millionen Dollar Strafe verurteilt', true, @q),
    ('Red Bull kopierte das Aerodynamikpaket von Ferrari und wurde aus dem Championat ausgeschlossen', false, @q),
    ('Ein FIA-Inspektor leakte technische Daten an mehrere Teams und wurde gesperrt', false, @q),
    ('Renault erhielt geheime Motorendaten von Honda und verlor alle Punkte der Saison', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welches Team gewann 1958 als erstes die Formel-1-Konstrukteursweltmeisterschaft?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Vanwall', true, @q),
    ('Ferrari', false, @q),
    ('Cooper', false, @q),
    ('Maserati', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist der "Coanda-Effekt" und wie wurde er in der Formel-1-Aerodynamik genutzt?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Die Tendenz eines Fluids, entlang einer gekrümmten Fläche zu fließen; wurde genutzt, um Auspuffgase gezielt über den Diffusor zu leiten', true, @q),
    ('Der Effekt, dass Luft unter dem Fahrzeug beschleunigt und Abtrieb erzeugt', false, @q),
    ('Die aerodynamische Wirkung des Frontflügels auf die Reifenanströmung', false, @q),
    ('Das Venturi-Prinzip im Unterboden des Autos', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('In welchem Jahr wurde DAS (Dual-Axis Steering) von Mercedes eingesetzt, und warum wurde es verboten?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('2020; ab 2021 durch ein explizites Regelverbot untersagt, da bewegliche Radaufhängungskomponenten unter Fahrt nicht erlaubt sind', true, @q),
    ('2019; nach einem Protest von Ferrari durch die FIA sofort gesperrt', false, @q),
    ('2021; nach einem Saisonunfall durch Sicherheitsbedenken verboten', false, @q),
    ('2018; nach dem Qualifying in Mexiko als zu vorteilhaft eingestuft und gesperrt', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('In welchem Jahr wurde die Regel mit Doppelpunkten beim letzten Saisonrennen wieder abgeschafft?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('2014 (galt nur eine einzige Saison)', true, @q),
    ('2016 (nach drei Saisons)', false, @q),
    ('2015 (nach zwei Saisons)', false, @q),
    ('2017 (nach vier Saisons)', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wer baute den "TAG-Porsche"-Motor, den McLaren von 1983 bis 1987 erfolgreich einsetzte?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Porsche (finanziert von TAG – Techniques d''Avant Garde)', true, @q),
    ('Ford (unter dem TAG-Label vermarktet)', false, @q),
    ('Ferrari (im Auftrag von McLaren und TAG gebaut)', false, @q),
    ('BMW (umbenannt als TAG-Triebwerk für McLaren)', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist "Homologation" einer Formel-1-Power-Unit?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Die FIA-Zertifizierung und anschließende Einfrierung des Motorendesigns für eine festgelegte Laufzeit', true, @q),
    ('Die Genehmigung eines neuen Reifenlieferanten durch die FIA', false, @q),
    ('Das Verfahren zur Zulassung neuer Teams für die Weltmeisterschaft', false, @q),
    ('Die technische Abnahme des Autos vor dem Qualifying', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('In welchem Jahr zog sich das Team Super Aguri mitten in der laufenden Saison zurück?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('2008 (nach vier Saisonrennen)', true, @q),
    ('2010 (nach der Hälfte der Saison)', false, @q),
    ('2007 (vor dem Saisonstart)', false, @q),
    ('2009 (nach dem ersten Rennen)', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist das "Delta Time"-Konzept beim Virtual Safety Car?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Eine auf dem Lenkrad angezeigte Soll-Zeit, die jeder Fahrer einhalten muss, um gleichmäßige Abstände ohne reales Safety Car zu gewährleisten', true, @q),
    ('Die Zeitdifferenz zwischen dem Schnellsten und dem Langsamsten im Feld', false, @q),
    ('Eine automatisch berechnete Strafe für zu schnelle Fahrer', false, @q),
    ('Die minimale Boxenstopp-Zeit, die Teams einhalten müssen', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Aus welchem Grund wurde Michael Schumacher beim Großen Preis von Belgien 1994 disqualifiziert?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Die Unterbodenplatte (Skidblock) seines Autos war unter das vorgeschriebene Mindestmaß abgenutzt', true, @q),
    ('Er wurde wegen einer Kollision mit Damon Hill aus dem Rennen gewertet', false, @q),
    ('Sein Motor war mit einem unerlaubten Treibstoff betankt worden', false, @q),
    ('Er fuhr eine unreglementäre Getriebesperre und wurde nachträglich disqualifiziert', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was war das ursprüngliche "Concorde Agreement" von 1981 und wer unterzeichnete es?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Ein Abkommen zwischen FIA, FOCA (Teamvereinigung) und den Teams über Einnahmenverteilung und Teilnahmebedingungen; unterzeichnet in Paris im Concorde-Gebäude', true, @q),
    ('Ein Sicherheitsprotokoll nach dem Unfall von Niki Lauda 1976, unterzeichnet von allen Fahrern', false, @q),
    ('Ein Motorenabkommen zwischen Herstellern und FIA zur Begrenzung der Motorenleistung', false, @q),
    ('Ein Vertrag zwischen Ferrari und der FIA über exklusive Ferrarirechte in der Formel 1', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welche Teams setzten 2009 neben Brawn GP ebenfalls den Doppeldiffusor (Double Diffuser) ein?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Williams und Toyota', true, @q),
    ('Ferrari und McLaren', false, @q),
    ('Red Bull und Renault', false, @q),
    ('BMW Sauber und Force India', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welcher Fahrer hält den Rekord für die meisten Podiumsplätze in der Formel-1-Geschichte?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Lewis Hamilton', true, @q),
    ('Michael Schumacher', false, @q),
    ('Sebastian Vettel', false, @q),
    ('Alain Prost', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist das "MGU-H" in der modernen Formel-1-Power-Unit?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Ein Motor-Generator, der Energie aus dem Turbolader zurückgewinnt und die Turboverzögerung (Turbolag) reduziert', true, @q),
    ('Ein Generator, der kinetische Bremsenergie zurückgewinnt', false, @q),
    ('Der Hauptelektromotor, der das Getriebe unterstützt', false, @q),
    ('Das Hochspannungs-Steuergerät des Hybridantriebs', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('In welchem Jahr wurde der erste Grand Prix in einem Tunnelabschnitt (Monaco-Tunnel) auf der Strecke ausgetragen, und wie lang ist der Tunnel ungefähr?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Der Monaco-Tunnel ist seit dem ersten GP Monaco 1929 Teil der Strecke und etwa 140 Meter lang', true, @q),
    ('Der Tunnel wurde 1955 zum Monaco GP hinzugefügt und ist ca. 300 Meter lang', false, @q),
    ('Der Tunnel ist seit 1950 Teil des WM-Kalenders und etwa 500 Meter lang', false, @q),
    ('Der Tunnel entstand 1970 und ist ca. 80 Meter lang', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welche technische Innovation setzte Williams 1992 ein, die das Auto von Nigel Mansell nahezu unschlagbar machte und danach verboten wurde?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Aktive Radaufhängung (Active Suspension)', true, @q),
    ('Traktionskontrolle (Traction Control)', false, @q),
    ('Automatikgetriebe (Semi-automatic Gearbox)', false, @q),
    ('Vierradlenkung (Four-Wheel Steering)', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was versteht man unter dem Begriff "Aero Wash" und warum ist er für überholende Fahrer ein Problem?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Die turbulente Luft hinter einem Fahrzeug reduziert den Abtrieb am nachfolgenden Auto, wodurch dieser in schnellen Kurven instabiler wird und weniger nah auffahren kann', true, @q),
    ('Der Wasserfilm auf der Strecke nach Regen reduziert die Haftung und erschwert Überholmanöver', false, @q),
    ('Die Abwärme des Motors beeinflusst die Reifentemperatur des Hinterautos', false, @q),
    ('Der Auspuffstrahl eines Vorderautos verschmutzt den Frontflügel des nachfolgenden Fahrzeugs', false, @q);