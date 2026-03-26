-- -----------------------------------------------------------------
--     CATEGORY: WEBENTWICKLUNG
-- -----------------------------------------------------------------
USE quiz;
SET NAMES utf8mb4;
SET @c = 9; -- see insert.sql for id of webentwicklung

-- LEICHT

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wofür steht die Abkürzung HTML?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('HyperText Markup Language', true, @q),
    ('HighText Machine Language', false, @q),
    ('HyperTransfer Markup Language', false, @q),
    ('HyperText Modern Language', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welches HTML-Tag erstellt eine Überschrift der ersten Ebene?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('<h1>', true, @q),
    ('<heading>', false, @q),
    ('<title>', false, @q),
    ('<header>', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welches HTML-Tag wird für einen Textabsatz verwendet?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('<p>', true, @q),
    ('<text>', false, @q),
    ('<span>', false, @q),
    ('<div>', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welches Attribut gibt das Ziel eines HTML-Links an?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('href', true, @q),
    ('src', false, @q),
    ('link', false, @q),
    ('url', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welches HTML-Tag bindet ein Bild in eine Seite ein?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('<img>', true, @q),
    ('<image>', false, @q),
    ('<picture>', false, @q),
    ('<src>', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welches HTML-Tag definiert den sichtbaren Inhalt einer Webseite?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('<body>', true, @q),
    ('<main>', false, @q),
    ('<content>', false, @q),
    ('<html>', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welches HTML-Tag erstellt eine ungeordnete Liste?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('<ul>', true, @q),
    ('<ol>', false, @q),
    ('<list>', false, @q),
    ('<li>', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welches HTML-Tag definiert den Kopfbereich (Metadaten) einer Seite?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('<head>', true, @q),
    ('<meta>', false, @q),
    ('<top>', false, @q),
    ('<header>', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie schreibt man einen Kommentar in HTML?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('<!-- Kommentar -->', true, @q),
    ('// Kommentar', false, @q),
    ('/* Kommentar */', false, @q),
    ('# Kommentar', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wofür steht die Abkürzung CSS?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Cascading Style Sheets', true, @q),
    ('Creative Style Syntax', false, @q),
    ('Colored Style Sheets', false, @q),
    ('Computer Style Scripts', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie bindet man eine externe CSS-Datei in eine HTML-Seite ein?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('<link rel="stylesheet" href="style.css">', true, @q),
    ('<css src="style.css">', false, @q),
    ('<style src="style.css">', false, @q),
    ('<import href="style.css">', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welche CSS-Eigenschaft ändert die Textfarbe?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('color', true, @q),
    ('text-color', false, @q),
    ('font-color', false, @q),
    ('foreground', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welche CSS-Eigenschaft ändert die Schriftgröße?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('font-size', true, @q),
    ('text-size', false, @q),
    ('font-height', false, @q),
    ('size', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie schreibt man einen Kommentar in CSS?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('/* Kommentar */', true, @q),
    ('// Kommentar', false, @q),
    ('<!-- Kommentar -->', false, @q),
    ('# Kommentar', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welcher CSS-Selektor wählt alle Elemente einer Klasse aus?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('.klassenname', true, @q),
    ('#klassenname', false, @q),
    ('*klassenname', false, @q),
    ('@klassenname', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welcher CSS-Selektor wählt ein Element anhand seiner ID aus?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('#elementid', true, @q),
    ('.elementid', false, @q),
    ('*elementid', false, @q),
    ('@elementid', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wofür steht die Abkürzung HTTP?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('HyperText Transfer Protocol', true, @q),
    ('HyperText Transmission Process', false, @q),
    ('HighSpeed Transfer Protocol', false, @q),
    ('HyperText Transport Program', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welchen HTTP-Statuscode gibt ein Server zurück, wenn eine Seite nicht gefunden wurde?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('404', true, @q),
    ('200', false, @q),
    ('500', false, @q),
    ('301', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welcher HTTP-Statuscode zeigt an, dass eine Anfrage erfolgreich war?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('200', true, @q),
    ('404', false, @q),
    ('302', false, @q),
    ('500', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welche HTTP-Methode wird üblicherweise zum Senden von Formulardaten verwendet?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('POST', true, @q),
    ('GET', false, @q),
    ('PUT', false, @q),
    ('SEND', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welcher Port wird standardmäßig für HTTP-Verbindungen verwendet?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('80', true, @q),
    ('443', false, @q),
    ('8080', false, @q),
    ('21', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welcher Port wird standardmäßig für HTTPS-Verbindungen verwendet?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('443', true, @q),
    ('80', false, @q),
    ('8443', false, @q),
    ('22', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wofür steht die Abkürzung PHP?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('PHP: Hypertext Preprocessor', true, @q),
    ('Personal Home Page', false, @q),
    ('Private Hypertext Protocol', false, @q),
    ('Programmed Hypertext Processor', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie beginnt ein PHP-Code-Block?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('<?php', true, @q),
    ('<php>', false, @q),
    ('<?', false, @q),
    ('<script type="php">', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Mit welchem Befehl gibt man Text in PHP aus?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('echo', true, @q),
    ('print_text', false, @q),
    ('output', false, @q),
    ('write', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welche PHP-Superglobale enthält Daten aus einem POST-Formular?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('$_POST', true, @q),
    ('$_GET', false, @q),
    ('$_FORM', false, @q),
    ('$_REQUEST', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie schreibt man einen einzeiligen Kommentar in PHP?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('// Kommentar', true, @q),
    ('<!-- Kommentar -->', false, @q),
    ('/* Kommentar', false, @q),
    ('** Kommentar', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist ein URL?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Eine Adresse, die auf eine Ressource im Internet verweist', true, @q),
    ('Ein Protokoll zur verschlüsselten Datenübertragung', false, @q),
    ('Ein Datenbankabfrageformat', false, @q),
    ('Eine Programmiersprache für Webseiten', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was macht ein Webbrowser?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Er sendet HTTP-Anfragen und stellt die empfangenen Webseiten dar', true, @q),
    ('Er speichert Webseiten dauerhaft auf dem Server', false, @q),
    ('Er kompiliert PHP-Code zu Maschinencode', false, @q),
    ('Er verwaltet Datenbankverbindungen', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was bedeutet das "alt"-Attribut bei einem <img>-Tag?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Ein alternativer Text, der angezeigt wird, wenn das Bild nicht geladen werden kann', true, @q),
    ('Die Höhe des Bildes in Pixeln', false, @q),
    ('Der Dateiname des Bildes', false, @q),
    ('Eine alternative Bildquelle', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welches HTML-Tag erstellt eine Schaltfläche (Button)?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('<button>', true, @q),
    ('<btn>', false, @q),
    ('<click>', false, @q),
    ('<input type="click">', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist ein Webserver?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Eine Software, die HTTP-Anfragen entgegennimmt und Antworten zurücksendet', true, @q),
    ('Ein Browser-Plugin zur Darstellung von Webseiten', false, @q),
    ('Ein Programm, das HTML in CSS umwandelt', false, @q),
    ('Eine Datenbank für Webinhalte', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist der Unterschied zwischen dem <head>- und dem <body>-Tag in HTML?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('<head> enthält Metadaten, <body> den sichtbaren Seiteninhalt', true, @q),
    ('<head> ist für Überschriften, <body> für Texte', false, @q),
    ('<head> ist serverseitig, <body> clientseitig', false, @q),
    ('Es gibt keinen Unterschied, beide zeigen Inhalte an', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welches HTML-Element wird verwendet, um JavaScript-Code einzubinden?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('<script>', true, @q),
    ('<js>', false, @q),
    ('<code>', false, @q),
    ('<javascript>', false, @q);

-- MITTEL

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welches HTML5-Element markiert den Hauptnavigationsbereich einer Seite?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('<nav>', true, @q),
    ('<menu>', false, @q),
    ('<navigation>', false, @q),
    ('<links>', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welches HTML-Attribut macht ein Formularfeld zur Pflichtangabe?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('required', true, @q),
    ('mandatory', false, @q),
    ('validate', false, @q),
    ('notempty', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was bewirkt das Attribut target="_blank" bei einem HTML-Link?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Der Link öffnet sich in einem neuen Tab oder Fenster', true, @q),
    ('Der Link wird im selben Tab geöffnet', false, @q),
    ('Der Link öffnet sich in einem iFrame', false, @q),
    ('Der Link wird heruntergeladen statt geöffnet', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist der wesentliche Unterschied zwischen <div> und <span> in HTML?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('<div> ist ein Block-Element, <span> ein Inline-Element', true, @q),
    ('<div> ist veraltet, <span> ist modern', false, @q),
    ('<div> ist für Text, <span> für Bilder', false, @q),
    ('Es gibt keinen Unterschied, sie sind austauschbar', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Aus welchen vier Bereichen besteht das CSS Box-Modell?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Content, Padding, Border, Margin', true, @q),
    ('Content, Spacing, Frame, Offset', false, @q),
    ('Inner, Outer, Border, Shadow', false, @q),
    ('Width, Height, Border, Padding', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie zentriert man ein Block-Element horizontal mit CSS?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('margin: 0 auto; bei definierter Breite', true, @q),
    ('text-align: center;', false, @q),
    ('align: center;', false, @q),
    ('position: center;', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welche CSS-Einheit ist relativ zur Schriftgröße des Elternelements?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('em', true, @q),
    ('px', false, @q),
    ('vw', false, @q),
    ('rem', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was bewirkt "display: flex" in CSS?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Es aktiviert das Flexbox-Layoutmodell für das Element und seine Kinder', true, @q),
    ('Das Element wird ausgeblendet und flexibel skaliert', false, @q),
    ('Das Element passt sich automatisch der Bildschirmgröße an', false, @q),
    ('Es aktiviert CSS-Animationen für das Element', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist der Unterschied zwischen den HTTP-Methoden GET und POST?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('GET überträgt Daten in der URL, POST im Request-Body', true, @q),
    ('GET ist verschlüsselt, POST ist unverschlüsselt', false, @q),
    ('GET ist für Server, POST ist für Clients', false, @q),
    ('GET lädt Daten hoch, POST lädt sie herunter', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Welcher HTTP-Statuscode bedeutet "Moved Permanently"?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('301', true, @q),
    ('302', false, @q),
    ('304', false, @q),
    ('307', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was bedeutet der HTTP-Statuscode 403?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Forbidden – der Zugriff ist verweigert', true, @q),
    ('Not Found – die Ressource wurde nicht gefunden', false, @q),
    ('Unauthorized – Authentifizierung erforderlich', false, @q),
    ('Internal Server Error – Serverfehler', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist HTTPS?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('HTTP mit TLS/SSL-Verschlüsselung', true, @q),
    ('Eine neuere Version von HTTP mit schnellerer Übertragung', false, @q),
    ('Ein separates Protokoll für sichere Dateiübertragungen', false, @q),
    ('HTTP mit Passwortschutz auf Serverebene', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie überprüft man in PHP, ob eine Variable gesetzt ist?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('isset()', true, @q),
    ('defined()', false, @q),
    ('exists()', false, @q),
    ('has_value()', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist der Unterschied zwischen == und === in PHP?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('== vergleicht nur den Wert, === vergleicht Wert und Datentyp', true, @q),
    ('== ist schwächer als ===, beide sind identisch', false, @q),
    ('=== ist veraltet und sollte nicht verwendet werden', false, @q),
    ('== ist für Strings, === für Zahlen', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie startet man eine PHP-Session?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('session_start()', true, @q),
    ('start_session()', false, @q),
    ('$_SESSION = new Session()', false, @q),
    ('session_open()', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was macht die PHP-Funktion htmlspecialchars()?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Sie wandelt Sonderzeichen in HTML-Entities um, um XSS zu verhindern', true, @q),
    ('Sie entfernt alle HTML-Tags aus einem String', false, @q),
    ('Sie kodiert einen String als Base64', false, @q),
    ('Sie überprüft, ob ein String gültiges HTML enthält', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie gibt man in PHP die Anzahl der Elemente eines Arrays zurück?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('count()', true, @q),
    ('length()', false, @q),
    ('size()', false, @q),
    ('array_length()', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist DNS?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Ein System, das Domainnamen in IP-Adressen auflöst', true, @q),
    ('Ein Protokoll zur verschlüsselten Übertragung von Daten', false, @q),
    ('Ein Dateinamesystem auf Webservern', false, @q),
    ('Eine Methode zur Komprimierung von HTML-Dateien', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist ein HTTP-Cookie?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Eine kleine Datei, die der Server im Browser des Benutzers speichert', true, @q),
    ('Eine verschlüsselte Serververbindung', false, @q),
    ('Eine serverseitige Sitzungsdatei', false, @q),
    ('Ein Cache-Eintrag im Betriebssystem', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist der wesentliche Unterschied zwischen einer HTTP-Session und einem Cookie?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Session-Daten werden auf dem Server gespeichert, Cookie-Daten im Browser', true, @q),
    ('Sessions sind verschlüsselt, Cookies nicht', false, @q),
    ('Cookies laufen nie ab, Sessions schon', false, @q),
    ('Es gibt keinen Unterschied, beide speichern Daten clientseitig', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist eine REST-API?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Ein Architekturstil für Webschnittstellen, der auf HTTP-Methoden basiert', true, @q),
    ('Ein PHP-Framework für Datenbankabfragen', false, @q),
    ('Ein Protokoll für Echtzeitkommunikation', false, @q),
    ('Eine Bibliothek zur Erstellung von HTML-Formularen', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist ein CDN (Content Delivery Network)?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Ein Netzwerk verteilter Server, das Inhalte geografisch näher am Benutzer ausliefert', true, @q),
    ('Ein Tool zur Komprimierung von CSS- und JS-Dateien', false, @q),
    ('Ein Netzwerk zur verschlüsselten Dateiübertragung', false, @q),
    ('Ein System zur automatischen Code-Versionierung', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist ein Reverse Proxy?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Ein Server, der Anfragen von Clients entgegennimmt und an Backend-Server weiterleitet', true, @q),
    ('Ein Client, der Anfragen an mehrere Server gleichzeitig sendet', false, @q),
    ('Ein Tool zur Verschlüsselung von HTTP-Verbindungen', false, @q),
    ('Ein Cache auf der Clientseite', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist Responsive Web Design?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Ein Ansatz, bei dem sich das Layout einer Webseite an verschiedene Bildschirmgrößen anpasst', true, @q),
    ('Eine Methode zur automatischen Übersetzung von Webseiten', false, @q),
    ('Ein Framework zur Erstellung von Animationen', false, @q),
    ('Eine Technik zur Beschleunigung von Serverantworten', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist eine Media Query in CSS?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Eine Regel, die CSS-Stile nur unter bestimmten Bedingungen (z.B. Bildschirmbreite) anwendet', true, @q),
    ('Eine Abfrage an eine externe Mediendatenbank', false, @q),
    ('Ein Tag zum Einbinden von Videodateien', false, @q),
    ('Eine PHP-Funktion zum Laden von Bildern', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was macht die PHP-Funktion header()?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Sie sendet einen HTTP-Header an den Client', true, @q),
    ('Sie liest den HTTP-Header der aktuellen Anfrage aus', false, @q),
    ('Sie erstellt den <head>-Bereich in einer HTML-Ausgabe', false, @q),
    ('Sie setzt den Content-Type einer Datei', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist CORS (Cross-Origin Resource Sharing)?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Ein Mechanismus, der Browser-Anfragen über Domaingrenzen hinweg kontrolliert', true, @q),
    ('Ein Protokoll zur sicheren Passwortübertragung', false, @q),
    ('Eine Methode zur gemeinsamen Nutzung von CSS-Dateien', false, @q),
    ('Ein Standard für webseitenübergreifende Cookies', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist der HTTP-Statuscode 500?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Internal Server Error – ein unerwarteter Fehler auf dem Server', true, @q),
    ('Bad Request – die Anfrage war fehlerhaft', false, @q),
    ('Service Unavailable – der Server ist überlastet', false, @q),
    ('Gateway Timeout – der Server hat zu lange gewartet', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist der Unterschied zwischen HTTP/1.1 und HTTP/2?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('HTTP/2 unterstützt Multiplexing und überträgt mehrere Anfragen parallel über eine Verbindung', true, @q),
    ('HTTP/2 ist verschlüsselt, HTTP/1.1 nicht', false, @q),
    ('HTTP/2 verwendet andere Statuscodes als HTTP/1.1', false, @q),
    ('HTTP/2 erfordert keine TCP-Verbindung', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist SQL-Injection und wie kann man sich davor schützen?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Einschleusen von SQL-Code über Benutzereingaben; Schutz durch Prepared Statements', true, @q),
    ('Ein Angriff auf Passwörter; Schutz durch starke Hashing-Algorithmen', false, @q),
    ('Diebstahl von Cookies; Schutz durch HTTPS', false, @q),
    ('Überlastung des Servers; Schutz durch Firewalls', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist ein XSS-Angriff (Cross-Site Scripting)?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Einschleusen von schadhaftem JavaScript-Code in eine Webseite über Benutzereingaben', true, @q),
    ('Ein Angriff, bei dem SQL-Code in Datenbankabfragen eingeschleust wird', false, @q),
    ('Das Abfangen von HTTP-Anfragen zwischen Client und Server', false, @q),
    ('Das Überschreiben von Serverdateien über FTP', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was versteht man unter dem Client-Server-Modell?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Clients senden Anfragen an Server, die diese verarbeiten und eine Antwort zurücksenden', true, @q),
    ('Client und Server sind dasselbe Gerät in einem lokalen Netzwerk', false, @q),
    ('Der Server sendet Daten, ohne auf Anfragen zu warten', false, @q),
    ('Clients und Server kommunizieren nur über verschlüsselte Kanäle', false, @q);

-- SCHWER

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist der Unterschied zwischen den Attributen "defer" und "async" bei einem <script>-Tag?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('defer führt das Skript nach dem vollständigen Parsen des DOMs aus; async sobald es geladen ist', true, @q),
    ('defer lädt das Skript synchron, async asynchron', false, @q),
    ('async ist veraltet; defer sollte immer verwendet werden', false, @q),
    ('Beide sind identisch und nur Aliase füreinander', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist das Shadow DOM und wozu wird es verwendet?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Ein isolierter DOM-Teilbaum für Webkomponenten, der Stile und Markup kapselt', true, @q),
    ('Eine versteckte Kopie des DOMs zur Performanceoptimierung', false, @q),
    ('Der unsichtbare Teil des DOMs, der nur serverseitig gerendert wird', false, @q),
    ('Ein Browser-internes Cache-System für DOM-Elemente', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist CSS-Spezifität und welche Reihenfolge gilt?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Inline-Styles > ID-Selektoren > Klassen-Selektoren > Element-Selektoren', true, @q),
    ('Element-Selektoren > Klassen-Selektoren > ID-Selektoren > Inline-Styles', false, @q),
    ('Alle Selektoren haben dieselbe Spezifität, letzte Regel gewinnt', false, @q),
    ('ID-Selektoren > Inline-Styles > Klassen-Selektoren > Element-Selektoren', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Wie deklariert und verwendet man eine CSS-Variable (Custom Property)?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Deklaration: --name: wert; Verwendung: var(--name)', true, @q),
    ('Deklaration: $name: wert; Verwendung: $name', false, @q),
    ('Deklaration: @variable name: wert; Verwendung: @name', false, @q),
    ('Deklaration: let name = wert; Verwendung: {name}', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist der Unterschied zwischen "visibility: hidden" und "display: none" in CSS?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('visibility: hidden verbirgt das Element, behält aber seinen Platz; display: none entfernt es aus dem Layout', true, @q),
    ('Beide sind identisch und entfernen das Element vollständig', false, @q),
    ('display: none verbirgt nur den Text, visibility: hidden das gesamte Element', false, @q),
    ('visibility: hidden ist nur für Bilder, display: none für alle Elemente', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist der wesentliche Unterschied zwischen CSS Grid und Flexbox?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Grid ist für zweidimensionale Layouts (Zeilen & Spalten), Flexbox für eindimensionale (Zeile oder Spalte)', true, @q),
    ('Grid ist nur für Desktop, Flexbox für mobile Layouts', false, @q),
    ('Flexbox ist moderner und ersetzt Grid vollständig', false, @q),
    ('Grid benötigt JavaScript, Flexbox ist reines CSS', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was macht die CSS-Eigenschaft "will-change"?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Sie gibt dem Browser einen Hinweis, welche Eigenschaften sich ändern werden, um Optimierungen vorzunehmen', true, @q),
    ('Sie verhindert, dass ein Element durch andere CSS-Regeln verändert wird', false, @q),
    ('Sie deklariert CSS-Variablen für dynamische Wertänderungen', false, @q),
    ('Sie definiert eine Übergansanimation für Eigenschaftsänderungen', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist HTTP-Caching und welche Header sind daran beteiligt?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Das Zwischenspeichern von HTTP-Antworten; relevante Header: Cache-Control, ETag, Last-Modified', true, @q),
    ('Das Speichern von PHP-Sessions auf dem Server; Header: Set-Cookie, Session-ID', false, @q),
    ('Das Komprimieren von HTTP-Antworten; Header: Content-Encoding, Accept-Encoding', false, @q),
    ('Das Weiterleiten von Anfragen; Header: Location, Forwarded', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist ein TLS-Handshake?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Die Aushandlung von Verschlüsselungsparametern und der Austausch von Zertifikaten zwischen Client und Server', true, @q),
    ('Die Authentifizierung eines Benutzers mit Benutzername und Passwort', false, @q),
    ('Das Erstellen einer TCP-Verbindung durch den Drei-Wege-Handshake', false, @q),
    ('Die Übertragung eines JWT-Tokens beim Login', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist der Unterschied zwischen den HTTP-Statuscodes 401 und 403?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('401 bedeutet nicht authentifiziert (kein Login), 403 bedeutet nicht autorisiert (kein Recht)', true, @q),
    ('401 ist ein Clientfehler, 403 ein Serverfehler', false, @q),
    ('401 wird bei falschem Passwort zurückgegeben, 403 bei gesperrtem Account', false, @q),
    ('Es gibt keinen relevanten Unterschied, beide bedeuten Zugriff verweigert', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist ein CSRF-Angriff (Cross-Site Request Forgery)?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Ein Angriff, bei dem ein Benutzer durch eine fremde Seite dazu gebracht wird, ungewollte Aktionen auf einer authentifizierten Seite auszuführen', true, @q),
    ('Das Einschleusen von Skripten in eine Webseite über Benutzereingaben', false, @q),
    ('Das Abfangen von Netzwerkpaketen zwischen Client und Server', false, @q),
    ('Ein Brute-Force-Angriff auf ein Benutzerpasswort', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist HTTP/3 und welches Transportprotokoll nutzt es?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('HTTP/3 ist die neueste HTTP-Version und nutzt QUIC, ein auf UDP basierendes Protokoll', true, @q),
    ('HTTP/3 ist HTTP/2 mit verpflichtendem TLS und nutzt weiterhin TCP', false, @q),
    ('HTTP/3 ist ein experimentelles Protokoll das nur im Tor-Netzwerk eingesetzt wird', false, @q),
    ('HTTP/3 nutzt WebSocket als Transportschicht', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist PDO in PHP und warum wird es verwendet?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('PHP Data Objects – eine datenbankagnostische Abstraktionsschicht für Datenbankzugriffe', true, @q),
    ('PHP Deployment Object – ein Tool zur automatischen Serverbereitstellung', false, @q),
    ('Eine Erweiterung speziell für MySQL mit optimierter Performance', false, @q),
    ('Ein ORM-Framework, das SQL automatisch generiert', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was sind Prepared Statements und warum sind sie sicherheitsrelevant?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Vorkompilierte SQL-Abfragen mit Platzhaltern, die SQL-Injection verhindern', true, @q),
    ('Gecachte Datenbankabfragen zur Performanceverbesserung', false, @q),
    ('Abfragen, die in einer separaten Datei gespeichert werden', false, @q),
    ('Datenbankabfragen, die nur mit Administrator-Rechten ausgeführt werden können', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist Autoloading in PHP und welcher Standard wird dafür verwendet?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Automatisches Laden von PHP-Klassen bei Bedarf; der verbreitete Standard ist PSR-4', true, @q),
    ('Automatisches Starten von PHP-FPM beim Serverstart', false, @q),
    ('Das automatische Kompilieren von PHP-Code zu Bytecode', false, @q),
    ('Eine Funktion, die Konfigurationsdateien beim Start einer Anwendung lädt', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist der Unterschied zwischen include und require in PHP?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Bei require wird ein Fatal Error ausgelöst, wenn die Datei nicht gefunden wird; bei include nur eine Warnung', true, @q),
    ('include lädt die Datei einmalig, require kann sie mehrfach laden', false, @q),
    ('require ist für PHP-Dateien, include für HTML-Dateien', false, @q),
    ('Es gibt keinen Unterschied, beide verhalten sich identisch', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist ein PHP-Namespace und wozu dient er?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Ein logischer Bereich zur Organisation von Code, der Namenskonflikte zwischen Klassen verhindert', true, @q),
    ('Ein Bereich im PHP-Speicher für globale Variablen', false, @q),
    ('Ein Verzeichnis, in dem PHP-Dateien abgelegt werden müssen', false, @q),
    ('Eine Konfigurationseinstellung in der php.ini', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist Dependency Injection?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Ein Muster, bei dem Abhängigkeiten einer Klasse von außen übergeben werden statt intern erstellt zu werden', true, @q),
    ('Das automatische Installieren von PHP-Paketen über Composer', false, @q),
    ('Eine Technik zum Einschleusen von Code in laufende PHP-Prozesse', false, @q),
    ('Ein Datenbankdesign-Muster zur Normalisierung von Abhängigkeiten', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist WebSocket und worin unterscheidet es sich von HTTP?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('WebSocket ermöglicht eine bidirektionale Dauerverbindung; HTTP ist zustandslos und fordert/antwortet einmalig', true, @q),
    ('WebSocket ist verschlüsselt, HTTP nicht', false, @q),
    ('WebSocket ist eine modernere Version von HTTP', false, @q),
    ('WebSocket funktioniert nur mit PHP, nicht mit anderen Serversprachen', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist JWT (JSON Web Token)?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Ein signiertes, kompaktes Token zur Authentifizierung und Informationsübertragung zwischen Parteien', true, @q),
    ('Ein verschlüsselter Cookie für HTTPS-Verbindungen', false, @q),
    ('Ein PHP-Standard für die Session-Verwaltung', false, @q),
    ('Ein Format zur Komprimierung von JSON-Daten in HTTP-Anfragen', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist die Same-Origin Policy?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Eine Browser-Sicherheitsregel, die Skripten den Zugriff auf Ressourcen anderer Domains verbietet', true, @q),
    ('Eine Serverregel, die nur Anfragen von der eigenen IP-Adresse erlaubt', false, @q),
    ('Ein HTTP-Header, der doppelte Anfragen verhindert', false, @q),
    ('Ein PHP-Mechanismus, der Cross-Origin-Sessions blockiert', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was macht ob_start() in PHP?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Es aktiviert Output Buffering, sodass Ausgaben gesammelt und erst später gesendet werden', true, @q),
    ('Es öffnet eine Datei zum Schreiben im binären Modus', false, @q),
    ('Es startet einen Hintergrundprozess für asynchrone PHP-Aufgaben', false, @q),
    ('Es initialisiert eine Objektbibliothek (Object Buffer)', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist das Konzept der Content Security Policy (CSP)?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Ein HTTP-Header, der dem Browser vorschreibt, welche Quellen für Inhalte erlaubt sind, um XSS zu verhindern', true, @q),
    ('Eine PHP-Funktion zur Validierung von Formulareingaben', false, @q),
    ('Ein NGINX-Modul zur Zugriffskontrolle auf Serververzeichnisse', false, @q),
    ('Eine Verschlüsselungsmethode für HTTP-Cookies', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist der Unterschied zwischen einem relativen und einem absoluten Pfad in einer URL?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Absolute Pfade enthalten Protokoll und Domain; relative Pfade sind relativ zur aktuellen Ressource', true, @q),
    ('Relative Pfade sind kürzer, absolute sind sicherer', false, @q),
    ('Absolute Pfade funktionieren nur lokal, relative im Internet', false, @q),
    ('Relative Pfade beginnen mit /, absolute nicht', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist Rate Limiting bei einer Web-API?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Eine Begrenzung der Anzahl von Anfragen, die ein Client in einem bestimmten Zeitraum stellen darf', true, @q),
    ('Eine Technik zur Drosselung der Übertragungsgeschwindigkeit für große Dateien', false, @q),
    ('Ein Mechanismus, der doppelte Datenbankabfragen verhindert', false, @q),
    ('Ein Load-Balancing-Verfahren zur gleichmäßigen Serverauslastung', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was versteht man unter "Idempotenz" einer HTTP-Methode?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Eine Methode ist idempotent, wenn mehrfache identische Anfragen denselben Zustand erzeugen wie eine einzige', true, @q),
    ('Eine Methode, die immer dieselbe Antwort zurückgibt, unabhängig vom Serverzustand', false, @q),
    ('Eine verschlüsselte HTTP-Methode, die nur einmal verwendet werden kann', false, @q),
    ('Eine Methode, die keine Seiteneffekte auf dem Server hat', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist ein HTML-Formular und welches Attribut gibt an, wohin die Daten gesendet werden?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Ein <form>-Element; das action-Attribut gibt die Ziel-URL an', true, @q),
    ('Ein <input>-Element; das target-Attribut gibt die Ziel-URL an', false, @q),
    ('Ein <form>-Element; das href-Attribut gibt die Ziel-URL an', false, @q),
    ('Ein <submit>-Element; das url-Attribut gibt die Ziel-URL an', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was bedeutet das Attribut "placeholder" bei einem Eingabefeld?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Ein Hinweistext, der im leeren Feld angezeigt wird und beim Tippen verschwindet', true, @q),
    ('Der Standardwert des Feldes, der abgeschickt wird wenn nichts eingegeben wurde', false, @q),
    ('Eine Beschriftung, die dauerhaft neben dem Feld angezeigt wird', false, @q),
    ('Ein verstecktes Pflichtfeld, das vom Server befüllt wird', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist das CSS-Pseudo-Element ::before?', 1, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Es fügt mit CSS generierten Inhalt vor dem Inhalt des ausgewählten Elements ein', true, @q),
    ('Es wählt das Element aus, das dem ausgewählten Element vorausgeht', false, @q),
    ('Es bestimmt den Stil des Elements vor einem Hover-Effekt', false, @q),
    ('Es definiert Stile, die vor allen anderen CSS-Regeln gelten', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist "Minification" bei CSS- und JavaScript-Dateien?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Das Entfernen von Leerzeichen, Kommentaren und unnötigem Code, um die Dateigröße zu reduzieren', true, @q),
    ('Das Verschlüsseln von Code, damit er nicht lesbar ist', false, @q),
    ('Das Zusammenführen mehrerer Dateien zu einer einzigen', false, @q),
    ('Das Komprimieren von Bildern innerhalb von CSS-Dateien', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist der Unterschied zwischen "position: absolute" und "position: relative" in CSS?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('absolute positioniert relativ zum nächsten positionierten Vorfahren; relative relativ zur eigenen Normalposition', true, @q),
    ('absolute ist für Desktop, relative für mobile Layouts', false, @q),
    ('relative entfernt das Element aus dem Dokumentfluss, absolute nicht', false, @q),
    ('Es gibt keinen Unterschied, beide positionieren relativ zum Elternelement', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist ein Lazy Load bei Bildern im Web?', 2, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Bilder werden erst geladen, wenn sie in den sichtbaren Bereich des Browsers scrollen', true, @q),
    ('Bilder werden in niedriger Auflösung geladen und dann scharf gestellt', false, @q),
    ('Bilder werden im Hintergrund vorab geladen, bevor sie benötigt werden', false, @q),
    ('Bilder werden serverseitig komprimiert, bevor sie ausgeliefert werden', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist "method chaining" und wie unterstützt PHP es?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Das Verketten von Methodenaufrufen auf einem Objekt; möglich, wenn Methoden $this zurückgeben', true, @q),
    ('Das Verknüpfen mehrerer PHP-Dateien zu einer Ausführungskette', false, @q),
    ('Ein Entwurfsmuster, bei dem Klassen voneinander erben', false, @q),
    ('Das Verketten von SQL-Abfragen über PDO', false, @q);

INSERT INTO question (question_text, difficulty_id, category_id)
VALUES ('Was ist der Unterschied zwischen "early return" und einem geschachtelten if-else in einer PHP-Funktion?', 3, @c);
SET @q = LAST_INSERT_ID();
INSERT INTO answer (answer_text, is_correct, question_id) VALUES
    ('Early return verlässt die Funktion bei Fehlerfall sofort und reduziert Einrückungstiefe', true, @q),
    ('Early return ist schneller, weil PHP weniger Bytecode erzeugt', false, @q),
    ('Early return ist identisch zu if-else, nur syntaktisch kürzer', false, @q),
    ('Early return kann nur mit void-Funktionen verwendet werden', false, @q);
