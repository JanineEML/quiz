<?php require __DIR__ . '/../shared/header.php' ?>
<div class="container-lg">
    <div class="row">
        <div class="col">
            <h1>Ergebnis</h1>
            <p><?= $score ?> von <?= $total ?>, <?= $xp ?> XP verdient.</p>
        
            <?php if ($score === $total): ?>
                <div class="alert alert-success">Perfekt!</div>
    
            <?php elseif ($score < ($total * 0.3)): ?>
                <div class="alert alert-danger">lmao, das war ja mal nix.</div>
    
            <?php elseif ($score < ($total * 0.6)): ?>
                <div class="alert alert-warning">Leider nicht alles richtig.</div>
    
            <?php else: ?>
                <div class="alert alert-success">Nice! Nur wenige Fehler.</div>
        
            <?php endif; ?>
        
            <?php if (!empty($wrongAnswers)): ?>
                <h2>Falsche Antworten:</h2>
                <ul class="list-group wrong-answers mb-3">
                    <?php foreach ($wrongAnswers as $a): ?>
                        <li class="list-group-item"><?= e($a['question']) ?><br>
                            Deine Antwort: <?= e($a['answer']) ?><br>
                            Richtige Antwort: <?= e($a['correct']) ?>
                        </li>
                    <?php endforeach; ?>
                </ul>
            <?php endif; ?>

            <div class="progress mb-3">
                <div class="progress-bar"
                     role="progressbar"
                     style="width: 100%"
                     aria-valuenow="100"
                     aria-valuemin="0"
                     aria-valuemax="100">
                </div>
            </div>
        
            <?php if (!empty($unlockedAchievements)): ?>
                <h2>Freigeschaltete Achievements:</h2>
                <ul class="list-group">
                    <?php foreach ($unlockedAchievements as $achievement): ?>
                        <li class="list-group-item"><?= e($achievement['achievement_name']) ?><br>
                                <?= e($achievement['achievement_desc']) ?>
                        </li>
                    <?php endforeach; ?>
                </ul>
            <?php endif; ?>
        
            <a href="/quiz/start" class="btn btn-primary mt-3">Nochmal?</a>
        </div>
        <div class="col-3">
            <?php require __DIR__ . '/../shared/sidebar.php' ?>
        </div>
    </div>
</div>
<?php require __DIR__ . '/../shared/footer.php' ?>