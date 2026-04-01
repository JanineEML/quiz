<!DOCTYPE html>
<html lang="de">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/css/main.css">
    <title>Vorhandene Fragen</title>
</head>
<body>
    <h1>Alle verfügbaren Fragen</h1>

    <form method="get">
        <select name="category_id" id="category_id">
            <?php foreach ($categories as $c): ?>
                <option value="<?= $c['category_id'] ?>">
                    <?= e($c['category_label']) ?>
                </option>
            <?php endforeach; ?>
        </select>
        <input type="submit" value="Kategorie auswählen">
    </form>

    <table>
        <caption></caption>

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
</body>
</html>