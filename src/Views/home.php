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
        <h1>Willkommen, <?= $_SESSION['player']['playername'] ?>!</h1>
        <p>Current XP: <?= $_SESSION['player']['xp'] ?></p>

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