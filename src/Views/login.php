<!DOCTYPE html>
<html lang="de">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/css/main.css">
    <title>Anmelden</title>
</head>
<body>
    <div class="f-container">
        <h1>Anmelden</h1>
    
        <?php showErrors() ?>

        <form action="/login" method="post">
            <label>
                <span class="auth-labels">Spielername</span>
                
                <input type="text" id="playername" name="playername" required>
            </label>

            <label>
                <span class="auth-labels">Passwort</span>

                <input type="password" id="password" name="password" required>
            </label>

            <button type="submit">Anmelden</button>
        </form>

        <form action="/register" method="get">
            <button type="submit">Registrieren</button>
        </form>
    </div>
</body>
</html>