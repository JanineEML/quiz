<!DOCTYPE html>
<html lang="de">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/css/main.css">
    <title>Quiz Starten</title>
</head>
<body>
    <div class="f-container">
        <h1>Quiz Starten</h1>

        <?php if (isset($_SESSION['errors'])):
            foreach ($_SESSION['errors'] as $e): ?>
                <p class="error"><?= htmlspecialchars($e) ?></p>
            <?php endforeach;

            unset($_SESSION['errors']);
        endif; ?>

        <form action="/quiz/start" method="post">
            <select name="category_id" id="category_id">
                <option value="">Gemischte Fragen</option>
                <option value="random">Zufällige Kategorie</option>
                <?php foreach ($categories as $c): ?>
                    <option value="<?= $c['category_id'] ?>">
                        <?= $c['category_label'] ?>
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
</body>
</html>