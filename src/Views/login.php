<!DOCTYPE html>
<html lang="de">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
</head>
<body>
    <h1>Anmelden</h1>
    <form action="/login" method="POST">
        <label>
            Spielername
            
            <input type="text" id="playername" name="playername" required>
        </label>

        <label>
            Passwort

            <input type="password" id="password" name="password" required>
        </label>

        <button type="submit">Anmelden</button>
    </form>
</body>
</html>