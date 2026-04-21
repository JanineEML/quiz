<?php require __DIR__ . '/shared/header.php' ?>
<div class="container-lg">
    <div class="row">
        <div class="col">
            <h1>Registrieren</h1>
            
            <?php showErrors() ?>
        
            <form action="/register" method="post">
                <label>
                    <span class="form-label">Spielername</span>
        
                    <input type="text" class="form-control" name="playername" required>
                </label>
        
                <label>
                    <span class="form-label">Passwort</span>
        
                    <input type="password" class="form-control" name="password" required>
                </label>
                
                <label>
                    <span class="form-label">Passwort wiederholen</span>
        
                    <input type="password" class="form-control" name="password_confirm" required>
                </label>
        
                <button type="submit" class="btn btn-primary">Registrieren</button>
            </form>
        </div>
        <div class="col-3">
            <?php require __DIR__ . '/shared/sidebar.php' ?>
        </div>
    </div>
</div>
<?php require __DIR__ . '/shared/footer.php' ?>