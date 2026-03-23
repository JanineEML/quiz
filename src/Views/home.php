<!DOCTYPE html>
<html lang="de">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/css/main.css">
    <title>Document</title>
</head>
<body>
    <h1>Willkommen, <?= $_SESSION['player']['playername'] ?>!</h1>

    <nav>
        <form action="/logout" method="post">
            <button type="submit">Abmelden</button>
        </form>
        <a href="/quiz/start">Quiz starten</a>
    </nav>
</body>
</html>