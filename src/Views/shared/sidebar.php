<ul>
    <li>Spieler: <?= e($_SESSION['player']['playername']) ?></li>
    <li>Erfahrung: <?= $_SESSION['player']['xp'] ?></li>
    <li>Genaugikeit: <?= $_SESSION['player']['stats']['accuracy'] ?? 0 ?>
        von <?= $_SESSION['player']['stats']['total'] ?? 0 ?>
    </li>
</ul>