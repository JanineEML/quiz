<?php require __DIR__ . '/shared/header.php' ?>
<div class="wrapper">
    <div class="box">
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
</div>
<?php require __DIR__ . '/shared/footer.php' ?>