<?php require __DIR__ . '/shared/header.php' ?>
<div class="container-lg">
    <div class="row">
        <div class="col">
            <h1>Leaderboard</h1>
            <a href="/leaderboard?tab=xp" class="btn btn-<?= $tab !== 'xp' ? 'outline-' : '' ?>secondary">Spieler Erfahrung</a>
            <a href="/leaderboard?tab=completed" class="btn btn-<?= $tab !== 'completed' ? 'outline-' : '' ?>secondary">Abgeschlossene Quiz</a>
            <a href="/leaderboard?tab=correct" class="btn btn-<?= $tab !== 'correct' ? 'outline-' : '' ?>secondary">Richtige Antworten</a>
            <a href="/leaderboard?tab=achievements" class="btn btn-<?= $tab !== 'achievements' ? 'outline-' : '' ?>secondary">Anzahl Achievements</a>
        
            <table class="table table-striped">
                <caption>Ranking</caption>
                <thead>
                    <tr>
                        <th>Rang</th>
                        <th>Spieler</th>
                        <th> <?= $tab ?></th>
                    </tr>
                </thead>
                <tbody>
                    <?php foreach($ranking as $i => $rank): ?>
                        <tr class="<?= $player && $rank['player_id'] === $player ? 'self' : '' ?>">
                            <td><?= $i + 1 ?></td>
                            <td><?= e($rank['playername']) ?></td>
                            <td><?= $rank[$tab] ?></td>
                        </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>
        </div>
        <div class="col-3">
            <?php require __DIR__ . '/shared/sidebar.php' ?>
        </div>
        
    </div>
</div>
<?php require __DIR__ . '/shared/footer.php' ?>