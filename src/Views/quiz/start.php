<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="main.css">
    <title>Document</title>
</head>
<body>
    <h1>Quiz Starten</h1>

    <?php
    if (isset($_SESSION['errors'])) {
        foreach ($_SESSION['errors'] as $e) {
            echo "<p class='error'> $e </p>";
        }

        unset($_SESSION['errors']);
    }
    ?>

    <form action="/quiz/start" method="post">
        <select name="category" id="category_select">
            <option value="">Zufall</option>
            <?php 
                foreach ($categories as $c) {
                    echo "<option value='$c'>$c</option>";
                }
             ?>
        </select>

        <label>
            Anzahl:
            <input type="number" name="count" id="question_count" min="<?= $min_count ?>" max="<?= $max_count ?>">
        </label>

        <input type="submit" value="Quiz starten">
    </form>
    
</body>
</html>