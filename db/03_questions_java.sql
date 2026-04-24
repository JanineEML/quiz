-- -----------------------------------------------------------------
--     CATEGORY: JAVA
-- -----------------------------------------------------------------
USE quiz;
SET NAMES utf8mb4;
SET @c = 11; -- see insert.sql for id of java

-- LEICHT

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welcher Befehl gibt Text in Java auf der Konsole aus?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('System.out.println()', true, @q),
    ('print()', false, @q),
    ('console.log()', false, @q),
    ('echo()', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welches Schlüsselwort definiert eine Klasse in Java?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('class', true, @q),
    ('object', false, @q),
    ('struct', false, @q),
    ('type', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist der korrekte Datentyp für eine Ganzzahl in Java?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('int', true, @q),
    ('integer', false, @q),
    ('number', false, @q),
    ('whole', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie wird ein einzeiliger Kommentar in Java eingeleitet?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('//', true, @q),
    ('/*', false, @q),
    ('#', false, @q),
    ('--', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was macht das Schlüsselwort "new"?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Es erstellt ein neues Objekt einer Klasse', true, @q),
    ('Es importiert eine Klasse', false, @q),
    ('Es deklariert eine Variable', false, @q),
    ('Es beendet das Programm', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Womit beginnt die Ausführung eines Java-Programms?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('public static void main(String[] args)', true, @q),
    ('main()', false, @q),
    ('start()', false, @q),
    ('run()', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist ein Array in Java?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Eine feste Sammlung von Elementen desselben Typs', true, @q),
    ('Eine dynamisch erweiterbare Liste', false, @q),
    ('Ein Objekt mit beliebigen Feldern', false, @q),
    ('Eine Klasse ohne Methoden', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie lautet die korrekte Deklaration eines Strings in Java?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('String s = "Hallo";', true, @q),
    ('string s = ''Hallo'';', false, @q),
    ('text s = "Hallo";', false, @q),
    ('str s = "Hallo";', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist eine Methode in Java?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Ein benannter Codeblock, der aufgerufen werden kann', true, @q),
    ('Eine benannte Variable', false, @q),
    ('Eine Klasse ohne Felder', false, @q),
    ('Ein Datentyp', false, @q);

-- MITTEL

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist das Schlüsselwort für Vererbung in Java?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('extends', true, @q),
    ('inherits', false, @q),
    ('implements', false, @q),
    ('uses', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist der Unterschied zwischen == und .equals() beim Vergleich von Strings?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('== vergleicht Referenzen, .equals() vergleicht den Inhalt', true, @q),
    ('Kein Unterschied, beide vergleichen den Inhalt', false, @q),
    ('== vergleicht den Inhalt, .equals() die Referenz', false, @q),
    ('.equals() ist veraltet und sollte nicht mehr verwendet werden', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist eine ArrayList?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Eine dynamisch erweiterbare Liste aus dem Paket java.util', true, @q),
    ('Ein festes Array mit vorgegebener Größe', false, @q),
    ('Eine einfach verkettete Liste', false, @q),
    ('Eine Baumstruktur', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was bewirkt das Schlüsselwort "static"?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Es macht eine Methode oder Variable klassengebunden, nicht objektgebunden', true, @q),
    ('Es macht eine Variable privat', false, @q),
    ('Es verhindert die Vererbung einer Klasse', false, @q),
    ('Es beschleunigt den Zugriff auf eine Variable', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist ein Interface in Java?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Ein Vertrag, der Methoden definiert, die eine Klasse implementieren muss', true, @q),
    ('Eine abstrakte Klasse mit Feldern', false, @q),
    ('Ein spezieller Datentyp', false, @q),
    ('Eine Schleifenart', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist eine NullPointerException?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Eine Laufzeitausnahme, die auftritt, wenn auf ein null-Objekt zugegriffen wird', true, @q),
    ('Ein Compilerfehler bei fehlender Variable', false, @q),
    ('Eine Endlosschleife', false, @q),
    ('Ein Syntaxfehler', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was bewirkt das Schlüsselwort "final" in Java?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Es verhindert, dass eine Variable, Methode oder Klasse verändert bzw. überschrieben wird', true, @q),
    ('Es macht eine Klasse abstrakt', false, @q),
    ('Es gibt den belegten Speicher frei', false, @q),
    ('Es markiert den letzten Schritt eines Programms', false, @q);

-- SCHWER

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist Autoboxing in Java?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Die automatische Umwandlung zwischen primitiven Typen und ihren Wrapper-Klassen', true, @q),
    ('Automatische Speicherverwaltung durch den Garbage Collector', false, @q),
    ('Automatisches Casting zwischen beliebigen Klassen', false, @q),
    ('Eine Compilierzeit-Optimierung für Schleifen', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist der Unterschied zwischen Checked und Unchecked Exceptions?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Checked Exceptions müssen explizit behandelt oder weitergegeben werden, Unchecked nicht', true, @q),
    ('Kein Unterschied, beide müssen behandelt werden', false, @q),
    ('Unchecked Exceptions müssen behandelt werden, Checked nicht', false, @q),
    ('Checked Exceptions treten nur zur Laufzeit auf', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was regelt das Java Memory Model (JMM)?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Die Sichtbarkeit von Variablen zwischen Threads und die Reihenfolge von Speicherzugriffen', true, @q),
    ('Die maximale Heap-Größe einer JVM', false, @q),
    ('Den Algorithmus des Garbage Collectors', false, @q),
    ('Das Layout des Klassenspeichers (Metaspace)', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was bewirkt das Schlüsselwort "volatile" in Java?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Es stellt sicher, dass eine Variable immer direkt aus dem Hauptspeicher gelesen wird', true, @q),
    ('Es verhindert, dass eine Variable geändert werden kann', false, @q),
    ('Es beschleunigt den Zugriff durch CPU-Caching', false, @q),
    ('Es markiert eine Variable als unveränderlich (wie final)', false, @q);
