<!DOCTYPE html>
<html lang="de">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB"
          crossorigin="anonymous">
    <link rel="stylesheet" href="/css/main.css">
</head>
<body>
    <nav class="navbar navbar-expand-lg bg-body-tertiary">
        <div class="container-fluid justify-content-lg-start gap-2">
            <?php if(isset($_SESSION['player'])): ?>
                <a href="/" class="nav-link">Home</a>
                <a href="/quiz/start" class="nav-link">Quiz starten</a>
                <a href="/leaderboard" class="nav-link">Leaderboard</a>
                <?php if ($_SESSION['player']['is_admin']): ?>
                    <div class="nav-item dropdown">
                        <button class="nav-link dropdown-toggle"
                                role="button"
                                data-bs-toggle="dropdown">
                            Adminbereich
                        </button>
                        <div class="dropdown-menu">
                            <a href="/admin/questions" class="dropdown-item">Fragen verwalten</a>
                            <a href="/admin/categories" class="dropdown-item">Kategorien verwalten</a>
                        </div>
                    </div>
                <?php endif; ?>
                <form action="/logout" method="post">
                    <button class="btn btn-link nav-link">Logout</button>
                </form>
            <?php else: ?>
                <a href="/login" class="nav-link">Login</a>
                <a href="/register" class="nav-link">Registrieren</a>
                <a href="/leaderboard" class="nav-link">Leaderboard</a>
            <?php endif; ?>
        </div>
    </nav>