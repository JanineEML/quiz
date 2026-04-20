<?php if (isset($_SESSION['player'])): ?>
    <ul class="list-unstyled mb-0">
        <li>Spieler: <?= e($_SESSION['player']['playername']) ?></li>
        <li>Erfahrung: <?= $_SESSION['player']['xp'] ?></li>
        <li>Genauigkeit: <?= $_SESSION['player']['stats']['accuracy'] ?? 0 ?>
            von <?= $_SESSION['player']['stats']['total'] ?? 0 ?>
        </li>
    </ul>
<?php else: ?>
    <ul class="list-unstyled mb-0">
        <li><a href="/login" class="btn btn-outline-primary w-75">Login</a></li>
        <li><a href="/register" class="btn btn-outline-primary w-75">Registrieren</a></li>
    </ul>
<?php endif; ?>