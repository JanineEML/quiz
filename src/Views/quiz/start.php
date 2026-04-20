<?php require __DIR__ . '/../shared/header.php' ?>
<div class="container-lg">
    <div class="row">
        <div class="col">
            <h1>Quiz Starten</h1>
        
            <?php showErrors() ?>
        
            <form action="/quiz/start" method="post">
                <select name="category_id" class="form-select">
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
                    <input type="number" name="question_count" class="form-control" min="<?= $min_count ?>" max="<?= $max_count ?>">
                </label>
        
                <button class="btn btn-primary">Quiz starten</button>
            </form>
        </div>
        <div class="col-3">
            <?php require __DIR__ . '/../shared/sidebar.php' ?>
        </div>
    </div>
</div>
<?php require __DIR__ . '/../shared/footer.php' ?>