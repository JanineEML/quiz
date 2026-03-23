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
</body>
</html>