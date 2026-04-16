<!DOCTYPE html>
<html lang="de">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/css/main.css">
</head>
<body>
    <nav>
        <?php if(isset($_SESSION['player'])): ?>
            <a href="/">Home</a>
            <a href="/quiz/start">Quiz starten</a>
            <a href="/leaderboard">Leaderboard</a>
            <?php if ($_SESSION['player']['is_admin']): ?>
                <a href="/admin">Adminbereich</a>
            <?php endif; ?>
            <form action="/logout" method="post">
                <button type="submit">Logout</button>
            </form>
        <?php else: ?>
            <a href="/login">Login</a>
            <a href="/register">Registrieren</a>
            <a href="/leaderboard">Leaderboard</a>
        <?php endif; ?>
    </nav>