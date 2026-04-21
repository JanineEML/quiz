<?php if (isset($_SESSION['player'])): ?>
    <?php if ($_SESSION['player']['is_admin'] && str_starts_with($_SERVER['REQUEST_URI'], '/admin')): ?>
        <ul class="list-unstyled">
            <li class="mb-1"><a href="/admin/questions" class="btn btn-outline-primary">Fragen verwalten</a></li>
            <li><a href="/admin/categories" class="btn btn-outline-primary">Kategorien verwalten</a></li>
        </ul>
    <?php else: ?>
        <ul class="list-group">
            <li class="list-group-item">Spieler: <?= e($_SESSION['player']['playername']) ?></li>
            <li class="list-group-item">Erfahrung: <?= $_SESSION['player']['xp'] ?></li>
            <li class="list-group-item">Genauigkeit: <?= $_SESSION['player']['stats']['accuracy'] ?? 0 ?>
                von <?= $_SESSION['player']['stats']['total'] ?? 0 ?>
            </li>
        </ul>
    <?php endif; ?>
<?php else: ?>
    <ul class="list-unstyled">
        <li class="mb-1"><a href="/login" class="btn btn-outline-primary">Login</a></li>
        <li><a href="/register" class="btn btn-outline-primary">Registrieren</a></li>
    </ul>
<?php endif; ?>