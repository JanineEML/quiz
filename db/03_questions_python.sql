-- -----------------------------------------------------------------
--     CATEGORY: PYTHON
-- -----------------------------------------------------------------
USE quiz;
SET NAMES utf8mb4;
SET @c = 12; -- see insert.sql for id of python

-- LEICHT

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Mit welcher Funktion gibt man Text in Python aus?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('print()', true, @q),
    ('output()', false, @q),
    ('echo()', false, @q),
    ('console()', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Womit werden Kommentare in Python eingeleitet?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('#', true, @q),
    ('//', false, @q),
    ('/*', false, @q),
    ('--', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was legt die Einrückung (Indentation) in Python fest?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Den Codeblock – statt geschweifter Klammern wie in anderen Sprachen', true, @q),
    ('Die Anzahl der Leerzeichen in einem Kommentar', false, @q),
    ('Den Rückgabewert einer Funktion', false, @q),
    ('Den Typ einer Variable', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie definiert man eine Funktion in Python?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('def funktionsname():', true, @q),
    ('function funktionsname():', false, @q),
    ('func():', false, @q),
    ('method():', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was gibt len([1, 2, 3]) zurück?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('3', true, @q),
    ('0', false, @q),
    ('1', false, @q),
    ('4', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was erzeugt range(5)?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Eine Folge von 0 bis 4', true, @q),
    ('Eine Folge von 1 bis 5', false, @q),
    ('Die einzelne Zahl 5', false, @q),
    ('Fünf Zufallszahlen', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist eine Liste (list) in Python?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Eine geordnete, veränderliche Sammlung von Elementen', true, @q),
    ('Eine unveränderliche Sammlung', false, @q),
    ('Eine Sammlung von Schlüssel-Wert-Paaren', false, @q),
    ('Ein einzelner Wert', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Mit welchem Schlüsselwort importiert man ein Modul?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('import', true, @q),
    ('include', false, @q),
    ('use', false, @q),
    ('require', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was gibt type(42) zurück?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('<class ''int''>', true, @q),
    ('int', false, @q),
    ('integer', false, @q),
    ('number', false, @q);

-- MITTEL

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist der Unterschied zwischen einer list und einem tuple?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Listen sind veränderlich (mutable), Tupel sind unveränderlich (immutable)', true, @q),
    ('Kein Unterschied', false, @q),
    ('Tupel können mehr Elemente speichern', false, @q),
    ('Listen können keine Zahlen enthalten', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist ein Dictionary in Python?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Eine Sammlung von Schlüssel-Wert-Paaren', true, @q),
    ('Eine geordnete Liste von Zahlen', false, @q),
    ('Ein Tupel mit Beschriftungen', false, @q),
    ('Eine unveränderliche Menge', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist eine List Comprehension?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Eine kompakte Syntax zur Erstellung von Listen, z.B. [x*2 for x in range(5)]', true, @q),
    ('Eine spezielle for-Schleife ohne Index', false, @q),
    ('Eine eingebaute Funktion für Listen', false, @q),
    ('Eine Unterklasse von list', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was macht das Schlüsselwort "yield"?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Es gibt einen Wert zurück, ohne die Funktion zu beenden – die Funktion wird zum Generator', true, @q),
    ('Es gibt einen Wert zurück und beendet die Funktion sofort', false, @q),
    ('Es importiert ein Modul bei Bedarf', false, @q),
    ('Es deklariert eine globale Variable', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist der Unterschied zwischen "is" und "==" in Python?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('"is" prüft Objektidentität, "==" vergleicht Werte', true, @q),
    ('Kein Unterschied', false, @q),
    ('"is" vergleicht Werte, "==" prüft Identität', false, @q),
    ('"is" ist veraltet und sollte nicht mehr verwendet werden', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist ein Decorator in Python?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Eine Funktion, die eine andere Funktion erweitert oder verändert', true, @q),
    ('Eine spezielle Klasse', false, @q),
    ('Ein Modul für UI-Gestaltung', false, @q),
    ('Ein Datentyp', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist der Unterschied zwischen __str__ und __repr__?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('__str__ liefert eine lesbare Darstellung für Endnutzer, __repr__ eine eindeutige für Entwickler', true, @q),
    ('Kein Unterschied', false, @q),
    ('__repr__ ist für Endnutzer, __str__ für Entwickler', false, @q),
    ('Beide geben immer denselben String zurück', false, @q);

-- SCHWER

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist der GIL in Python?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Der Global Interpreter Lock – er verhindert, dass mehrere Threads gleichzeitig Python-Bytecode ausführen', true, @q),
    ('Eine Speicherverwaltungsschicht des Interpreters', false, @q),
    ('Ein internes Import-System', false, @q),
    ('Ein Kompilierungsschritt vor der Ausführung', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist ein Context Manager in Python?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Ein Objekt, das das with-Statement unterstützt und sicheres Ressourcenmanagement ermöglicht', true, @q),
    ('Ein Decorator für Klassen', false, @q),
    ('Eine Unterart von Generator', false, @q),
    ('Ein Modul für Umgebungsvariablen', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was bedeutet "Duck Typing"?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Der Typ eines Objekts wird durch seine Fähigkeiten bestimmt, nicht durch seine Vererbung', true, @q),
    ('Ein strenges statisches Typsystem', false, @q),
    ('Automatisches Type Casting', false, @q),
    ('Eine Form von Type Hinting', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wofür stehen *args und **kwargs in einer Python-Funktion?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('*args für beliebig viele Positionsargumente, **kwargs für beliebig viele Schlüsselwortargumente', true, @q),
    ('Beide sind nur alternative Schreibweisen für normale Parameter', false, @q),
    ('*args für Listen, **kwargs für Dictionaries als Rückgabewert', false, @q),
    ('Beide werden ausschließlich für Zahlen verwendet', false, @q);
