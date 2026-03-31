<!DOCTYPE html>
<html lang="de">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/css/main.css">
    <title>Quiz Spielen</title>
</head>
<body>
    <div class="f-container">
        <h1>Frage <?= $i + 1 ?> von <?= $total ?></h1>

        <?php if (isset($_SESSION['errors'])):
            foreach ($_SESSION['errors'] as $e): ?>
                <p class="error"><?= htmlspecialchars($e) ?></p>
            <?php endforeach;

            unset($_SESSION['errors']);
        endif; ?>

        <h2><?= htmlspecialchars($question['question_text']) ?></h2>

        <div class="answers">
            <?php foreach ($answers as $a): ?>
                <form action="/quiz/play" method="post">
                    <input type="hidden" name="answer_id" value="<?= $a['answer_id'] ?>">
                    <button type="submit"><?= htmlspecialchars($a['answer_text']) ?></button>
                </form>
            <?php endforeach; ?>
        </div>
    </div>
</body>
</html>