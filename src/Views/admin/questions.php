<!DOCTYPE html>
<html lang="de">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/css/main.css">
    <title>Vorhandene Fragen</title>
</head>
<body>
    <h1>Vorhandene Fragen</h1>

    <form method="get">
        <select name="category_id">
            <option value="">Alle Kategorien</option>
            <?php foreach ($categories as $c): ?>
                <option value="<?= $c['category_id'] ?>"
                    <?= $c['category_id'] === $selectedCategory ? 'selected' : '' ?>>
                    <?= e($c['category_label']) ?>
                </option>
            <?php endforeach; ?>
        </select>
        <input type="submit" value="Kategorie auswählen">
    </form>


    <table>
        <caption>Alle Fragen</caption>

        <thead>
            <tr>
                <th>ID</th>
                <th>Frage</th>
                <th>Kategorie</th>
                <th>Schwierigkeit</th>
                <th>Aktion</th>
            </tr>
        </thead>

        <tbody>
            <?php foreach($questions as $q): ?>
                <tr>
                    <td><?= $q['question_id'] ?></td>
                    <td><?= e($q['question_text']) ?></td>
                    <td><?= e($q['category_label']) ?></td>
                    <td><?= e($q['difficulty_label']) ?></td>
                    <td>
                        <form action="/admin/questions/edit" method="get">
                            <input type="hidden" name="qid_edit" value="<?= $q['question_id'] ?>">
                            <button type="submit">EDITIEREN</button>
                        </form>
                        <form action="/admin/questions/delete" method="post">
                            <input type="hidden" name="qid_delete" value="<?= $q['question_id'] ?>">
                            <button type="submit">LÖSCHEN</button>
                        </form>
                    </td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>

    <div class="pagination">
        <?php if ($page > 1): ?>
            <a href="?page=<?= $page - 1 ?>&category_id=<?= $selectedCategory ?>">« Zurück</a>
        <?php endif; ?>

        <span>Seite <?= $page ?> von <?= $totalPages ?></span>

        <?php if ($page < $totalPages): ?>
            <a href="?page=<?= $page + 1 ?>&category_id=<?= $selectedCategory ?>">Weiter »</a>
        <?php endif; ?>
    </div>

</body>
</html>