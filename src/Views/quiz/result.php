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
        <h1>Ergebnis</h1>
        <p><?= $score ?> von <?= $total ?>, <?= $xp ?> XP verdient.</p>

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

        <?php if (!empty($wrongAnswers)) {
            echo "<h2> Falsche Antworten: </h2>";
            echo "<ul>";
            foreach ($wrongAnswers as $a) {
                echo "  <li>" . htmlspecialchars($a['question']) . "<br>
                        Deine Antwort: " . htmlspecialchars($a['answer']) . "<br>
                        Richtige Antwort: " . htmlspecialchars($a['correct']) .
                        "</li><br>";
            }
            echo "</ul>";
        } ?>

        <a href=/quiz/start>Nochmal?</a>
    </div>
</body>
</html>