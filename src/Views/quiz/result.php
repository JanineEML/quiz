<!DOCTYPE html>
<html lang="de">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/css/main.css">
    <title>Ergebnis</title>
</head>
<body>
    <div class="f-container">
        <h1>Ergebnis</h1>
        <p><?= $score ?> von <?= $total ?>, <?= $xp ?> XP verdient.</p>

        <p>
            <?php if ($score === $total): ?>
                Perfekt!

            <?php elseif ($score < ($total * 0.3)): ?>
                lmao, das war ja mal nix.

            <?php elseif ($score < ($total * 0.6)): ?>
                Leider nicht alles richtig.

            <?php else: ?>
                Nice! Nur wenige Fehler.
        
            <?php endif; ?>
        </p>

        <?php if (!empty($wrongAnswers)): ?>
            <h2>Falsche Antworten:</h2>
            <ul>
                <?php foreach ($wrongAnswers as $a): ?>
                    <li><?= htmlspecialchars($a['question']) ?><br>
                        Deine Antwort: <?= htmlspecialchars($a['answer']) ?><br>
                        Richtige Antwort: <?= htmlspecialchars($a['correct']) ?>
                    </li>
                <?php endforeach; ?>
            </ul>
        <?php endif; ?>

        <?php if (!empty($unlockedAchievements)): ?>
            <h2>Freigeschaltete Achievements:</h2>
            <ul>
                <?php foreach ($unlockedAchievements as $achievement): ?>
                    <li><?= htmlspecialchars($achievement['achievement_name']) ?><br>
                         <?= htmlspecialchars($achievement['achievement_desc']) ?>
                    </li>
                <?php endforeach; ?>
            </ul>
        <?php endif; ?>

        <a href="/quiz/start">Nochmal?</a>
    </div>
</body>
</html>