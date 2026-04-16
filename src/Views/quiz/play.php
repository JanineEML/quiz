<?php require __DIR__ . '/shared/header.php' ?>
    <div class="f-container">
        <h1>Frage <?= $i + 1 ?> von <?= $total ?></h1>

        <?php showErrors() ?>

        <h2><?= e($question['question_text']) ?></h2>

        <div class="answers">
            <?php foreach ($answers as $a): ?>
                <form action="/quiz/play" method="post">
                    <input type="hidden" name="answer_id" value="<?= $a['answer_id'] ?>">
                    <button type="submit"><?= e($a['answer_text']) ?></button>
                </form>
            <?php endforeach; ?>
        </div>
    </div>
<?php require __DIR__ . '/shared/footer.php' ?>