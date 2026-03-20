<!DOCTYPE html>
<html lang="de">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/css/main.css">
    <title>Registrieren</title>
</head>
<body>
    <h1>Registrieren</h1>
    
    <?php
    if (isset($_SESSION['errors'])) {
        foreach ($_SESSION['errors'] as $e) {
            echo "<p class='error'> $e </p>";
        }

        unset($_SESSION['errors']);
    }
    ?>

    <form action="/register" method="POST">
        <label>
            Spielername

            <input type="text" id="playername" name="playername" required>
        </label>

        <label>
            Passwort

            <input type="password" id="password" name="password" required>
        </label>
        
        <label>
            Passwort wiederholen

            <input type="password" id="password_confirm" name="password_confirm" required>
        </label>

        <button type="submit">Registrieren</button>
    </form>
</body>
</html>