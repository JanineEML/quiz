<!DOCTYPE html>
<html lang="de">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/css/main.css">
    <title>Registrieren</title>
</head>
<body>
    <div class="f-container">
        <h1>Registrieren</h1>
        
        <?php showErrors() ?>

        <form action="/register" method="post">
            <label>
                <span class="auth-labels">Spielername</span>

                <input type="text" id="playername" name="playername" required>
            </label>

            <label>
                <span class="auth-labels">Passwort</span>

                <input type="password" id="password" name="password" required>
            </label>
            
            <label>
                <span class="auth-labels">Passwort wiederholen</span>

                <input type="password" id="password_confirm" name="password_confirm" required>
            </label>

            <button type="submit">Registrieren</button>
        </form>
    </div>
</body>
</html>