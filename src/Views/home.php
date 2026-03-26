<!DOCTYPE html>
<html lang="de">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/css/main.css">
    <title>Home</title>
</head>
<body>
    <div class="f-container">
        <h1>Willkommen, <?= $playername ?>!</h1>
        <h2>Statistik:</h2>
        <ul>
            <li>Gesammelte XP: <?= $xp ?></li>

            <?php if ($stats['accuracy'] !== null) : ?>
                <li>Genauigkeit: <?= $stats['accuracy'] ?>% - <?= $stats['correct'] ?> / <?= $stats['total'] ?></li>
            <?php else : ?>
                <li>Genauigket: N/A - 0 / 0</li>
            <?php endif ?>
        </ul>

        <nav>
            <form action="/logout" method="post">
                <button type="submit">Abmelden</button>
            </form>
            <form action="/quiz/start" method="get">
                <button type="submit">Quiz starten</button>
            </form>
        </nav>
    </div>
</body>
</html>