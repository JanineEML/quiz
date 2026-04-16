<?php require __DIR__ . '/shared/header.php' ?>
    <a href="/leaderboard?tab=xp" class="<?= $tab === 'xp' ? 'active' : '' ?>">XP</a>
    <a href="/leaderboard?tab=completed" class="<?= $tab === 'completed' ? 'active' : '' ?>">Abgeschlossene Quiz</a>
    <a href="/leaderboard?tab=correct" class="<?= $tab === 'correct' ? 'active' : '' ?>">Richtige Antworten</a>
    <a href="/leaderboard?tab=achievements" class="<?= $tab === 'achievements' ? 'active' : '' ?>">Anzahl Achievements</a>

    <table>
        <thead>
            <tr>
                <th>Rang</th>
                <th>Spieler</th>
                <th>Score</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach($ranking as $i => $rank): ?>
                <tr>
                    <td><?= $i + 1 ?></td>
                    <td class="<?= $player && $rank['player_id'] === $player ? 'self' : '' ?>"><?= e($rank['playername']) ?></td>
                    <td><?= $rank[$tab] ?></td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
<?php require __DIR__ . '/shared/footer.php' ?>