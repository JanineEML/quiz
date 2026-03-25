<!DOCTYPE html>
<html lang="de">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/css/main.css">
    <title>Result Quiz</title>
</head>
<body>
    <div class="f-container">
        <h1>Ergebnis: <?= $score ?> von <?= $total ?>.</h1>

        <p> <?php
        if ($score === $total) {
            echo "Perfekt!";
        }
        elseif ($score < ($total * 0.3)) {
            echo "lmao, das war ja mal nix.";
        }
        elseif ($score < ($total * 0.6)) {
            echo "Leider nicht alles richtig.";
        }
        else {
            echo "Nice! Nur wenige Fehler.";
        }
        ?> </p>

        <?php if (!empty($_SESSION['quiz']['wrong_answers'])) {
            echo "<h2> Falsche Antworten: </h2>";
            echo "<ul>";
            foreach ($_SESSION['quiz']['wrong_answers'] as $a) {
                echo "  <li>" . $a['question'] . "<br>
                        Deine Antwort: " . $a['answer'] . "<br>
                        Richtige Antwort: " . $a['correct'] .
                        "</li><br>";
            }
            echo "</ul>";
        } ?>

        <a href=/quiz/start>Nochmal?</a>
    </div>
</body>
</html>