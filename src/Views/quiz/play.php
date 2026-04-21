<?php require __DIR__ . '/../shared/header.php' ?>
<div class="container-lg">
    <div class="row">
        <div class="col">
            <h1>Frage <?= $i + 1 ?> von <?= $total ?></h1>
        
            <?php showErrors() ?>
        
            <h2><?= e($question['question_text']) ?></h2>
        
            <div class="quiz-answers">
                <?php foreach ($answers as $a): ?>
                    <form action="/quiz/play" method="post">
                        <input type="hidden" name="answer_id" value="<?= $a['answer_id'] ?>">
                        <button type="submit" class="btn btn-primary"><?= e($a['answer_text']) ?></button>
                    </form>
                <?php endforeach; ?>
            </div>
        </div>
        <div class="col-3">
            <?php require __DIR__ . '/../shared/sidebar.php' ?>
        </div>
    </div>
</div>
<?php require __DIR__ . '/../shared/footer.php' ?>