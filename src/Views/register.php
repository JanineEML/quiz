<?php require __DIR__ . '/shared/header.php' ?>
<div class="wrapper">
    <div class="box">
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
</div>
<?php require __DIR__ . '/shared/footer.php' ?>