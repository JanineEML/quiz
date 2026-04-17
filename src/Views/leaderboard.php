<?php require __DIR__ . '/shared/header.php' ?>
<div class="wrapper" >
    <div class="box">
        <h1>Leaderboard</h1>
        <a href="/leaderboard?tab=xp" class="<?= $tab === 'xp' ? 'active' : '' ?> btn">Spieler Erfahrung</a>
        <a href="/leaderboard?tab=completed" class="<?= $tab === 'completed' ? 'active' : '' ?> btn">Abgeschlossene Quiz</a>
        <a href="/leaderboard?tab=correct" class="<?= $tab === 'correct' ? 'active' : '' ?> btn">Richtige Antworten</a>
        <a href="/leaderboard?tab=achievements" class="<?= $tab === 'achievements' ? 'active' : '' ?> btn">Anzahl Achievements</a>
    
        <table class="leaderboard-table">
            <caption>Ranking</caption>
            <thead>
                <tr>
                    <th>Rang</th>
                    <th>Spieler</th>
                    <th class="fixed"> <?= $tab ?></th>
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
</div>
<?php require __DIR__ . '/shared/footer.php' ?>