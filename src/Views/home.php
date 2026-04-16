<?php require __DIR__ . '/shared/header.php' ?>
    <div class="flex-c">
        <h1>Willkommen, <?= e($playername) ?>!</h1>
        <h2>Statistik:</h2>
        <ul>
            <li>Gesammelte XP: <?= $xp ?></li>

            <?php if ($stats['accuracy'] !== null): ?>
                <li>Genauigkeit: <?= $stats['accuracy'] ?>% - <?= $stats['correct'] ?> / <?= $stats['total'] ?></li>
            <?php else: ?>
                <li>Genauigkeit: N/A - 0 / 0</li>
            <?php endif; ?>
        </ul>
    </div>
<?php require __DIR__ . '/shared/footer.php' ?>