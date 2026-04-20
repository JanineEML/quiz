<?php require __DIR__ . '/../shared/header.php' ?>
<div class="container-lg">
    <div class="row">
        <div class="col">
            <h1>Frage editieren</h1>
            <form action="/admin/questions/edit" method="post">
                <input type="hidden" name="question_id" value="<?= $question['question_id'] ?>">
                <textarea name="question_text"><?= e($question['question_text']) ?></textarea>
                <select name="category_id">
                    <?php foreach ($categories as $c): ?>
                        <option value="<?= $c['category_id'] ?>"
                                <?= $c['category_id'] === $question['category_id'] ? 'selected' : '' ?>>
                            <?= e($c['category_label']) ?>
                        </option>
                    <?php endforeach; ?>
                </select>
                <select name="difficulty_id">
                    <?php foreach ($difficulties as $d): ?>
                        <option value="<?= $d['difficulty_id'] ?>"
                                <?= $d['difficulty_id'] === $question['difficulty_id'] ? 'selected' : '' ?>>
                            <?= e($d['difficulty_label']) ?>
                        </option>
                    <?php endforeach; ?>
                </select>
                <?php foreach($answers as $i => $a): ?>
                    <input type="hidden" name="answer_ids[]" value="<?= $a['answer_id'] ?>">
                    <input type="text" name="answers[]" value="<?= e($a['answer_text']) ?>">
                    <input type="radio"
                        name="correct"
                        value="<?= $i ?>"
                        <?= $a['is_correct'] ? 'checked' : '' ?>>
                <?php endforeach; ?>
                <button type="submit">Änderung speichern</button>
            </form>
        </div>
        <div class="col-3">
            <?php require __DIR__ . '/../shared/sidebar.php' ?>
        </div>
    </div>
</div>
<?php require __DIR__ . '/../shared/footer.php' ?>