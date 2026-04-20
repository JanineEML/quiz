<?php if (isset($_SESSION['player'])): ?>
    <ul class="list-group">
        <li class="list-group-item">Spieler: <?= e($_SESSION['player']['playername']) ?></li>
        <li class="list-group-item">Erfahrung: <?= $_SESSION['player']['xp'] ?></li>
        <li class="list-group-item">Genauigkeit: <?= $_SESSION['player']['stats']['accuracy'] ?? 0 ?>
            von <?= $_SESSION['player']['stats']['total'] ?? 0 ?>
        </li>
    </ul>
<?php else: ?>
    <ul class="list-unstyled">
        <li class="mb-1"><a href="/login" class="btn btn-outline-primary w-75">Login</a></li>
        <li><a href="/register" class="btn btn-outline-primary w-75">Registrieren</a></li>
    </ul>
<?php endif; ?>