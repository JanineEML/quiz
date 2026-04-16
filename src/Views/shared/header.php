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
            <a href="/" class="btn">Home</a>
            <a href="/quiz/start" class="btn">Quiz starten</a>
            <a href="/leaderboard" class="btn">Leaderboard</a>
            <?php if ($_SESSION['player']['is_admin']): ?>
                <a href="/admin" class="btn">Adminbereich</a>
            <?php endif; ?>
            <form action="/logout" method="post">
                <button type="submit" class="btn">Logout</button>
            </form>
        <?php else: ?>
            <a href="/login" class="btn">Login</a>
            <a href="/register" class="btn">Registrieren</a>
            <a href="/leaderboard" class="btn">Leaderboard</a>
        <?php endif; ?>
    </nav>