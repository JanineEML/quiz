<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="main.css">
    <title>Document</title>
</head>
<body>
    <h1>Frage <?= $i + 1 ?> von <?= $total ?></h1>

    <?php
    if (isset($_SESSION['errors'])) {
        foreach ($_SESSION['errors'] as $e) {
            echo "<p class='error'> $e </p>";
        }

        unset($_SESSION['errors']);
    }
    ?>

    <h2><?= $question['question_text'] ?></h2>

    <?php foreach ($answers as $answer): ?>
        <form action="/quiz/play" method="post">
            <input type="hidden" name="answer_id" value="<?= $answer['answer_id'] ?>">
            <button type="submit"> <?= $answer['answer_text'] ?> </button>
        </form>
    <?php endforeach; ?>
    
</body>
</html>