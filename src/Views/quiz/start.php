<?php require __DIR__ . '/../shared/header.php' ?>
<div class="wrapper">
    <div class="box">
        <h1>Quiz Starten</h1>
    
        <?php showErrors() ?>
    
        <form action="/quiz/start" method="post">
            <select name="category_id" id="category_id">
                <option value="">Gemischte Fragen</option>
                <option value="random">Zufällige Kategorie</option>
                <?php foreach ($categories as $c): ?>
                    <option value="<?= $c['category_id'] ?>">
                        <?= e($c['category_label']) ?>
                    </option>
                <?php endforeach; ?>
            </select>
    
            <label>
                Anzahl:
                <input type="number" name="question_count" id="question_count" min="<?= $min_count ?>" max="<?= $max_count ?>">
            </label>
    
            <input type="submit" value="Quiz starten">
        </form>
    </div>
</div>
<?php require __DIR__ . '/../shared/footer.php' ?>