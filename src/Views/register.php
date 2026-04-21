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
        
                    <input type="password" class="form-control" name="password" id="password" required>
                </label>
                
                <label>
                    <span class="form-label">Passwort wiederholen</span>
        
                    <input type="password" class="form-control" name="password_confirm" id="password_confirm" required>
                    <div class="invalid-feedback">Passwörter stimmen nicht überein.</div>
                </label>
        
                <button type="submit" class="btn btn-primary">Registrieren</button>
            </form>
        </div>
        <div class="col-3">
            <?php require __DIR__ . '/shared/sidebar.php' ?>
        </div>
    </div>
</div>
<script>
    const pw_confirm = document.querySelector("#password_confirm");
    pw_confirm.addEventListener("input", (event) => {
        const pw = document.querySelector("#password");

        if (pw.value === pw_confirm.value) {
            event.currentTarget.classList.add("is-valid");
            event.currentTarget.classList.remove("is-invalid");
        }
        else {
            event.currentTarget.classList.add("is-invalid");
            event.currentTarget.classList.remove("is-valid");
        }
    });
</script>
<?php require __DIR__ . '/shared/footer.php' ?>