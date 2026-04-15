<!DOCTYPE html>
<html lang="de">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/css/main.css">
    <title>Vorhandene Fragen</title>
</head>
<body>
    <h1>Admin: Frageverwaltung</h1>
    
    <div class="admin-table">
        <h2>Vorhandene Fragen</h2>

        <form method="get">
            <label>
                Kategorie
    
                <select name="category_id">
                    <option value="">Alle Kategorien</option>
                    <?php foreach ($categories as $c): ?>
                        <option value="<?= $c['category_id'] ?>"
                            <?= $c['category_id'] === $selectedCategory ? 'selected' : '' ?>>
                            <?= e($c['category_label']) ?>
                        </option>
                    <?php endforeach; ?>
                </select>
            </label>
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
                                <input type="hidden" name="question_id" value="<?= $q['question_id'] ?>">
                                <button type="submit">EDITIEREN</button>
                            </form>
                            <form action="/admin/questions/delete" method="post" onsubmit="return confirm('Frage wirklich löschen?')">
                                <input type="hidden" name="question_id" value="<?= $q['question_id'] ?>">
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
    </div>

    <h2>Frage hinzufügen</h2>
    <?php showErrors() ?>

    <div class="admin-add">
        <form action="/admin/questions/add" method="post">
            <label>
                Fragetext
    
                <textarea name="question_text" required></textarea>
            </label>
            <label>
                Kategorie
    
                <select name="category" required>
                    <?php foreach ($categories as $c): ?>
                        <option value="<?= $c['category_id'] ?>">
                            <?= e($c['category_label']) ?>
                        </option>
                    <?php endforeach; ?>
                </select>
            </label>
            <label>
                Schwierigkeit
    
                <select name="difficulty" required>
                    <?php foreach ($difficulties as $d): ?>
                        <option value="<?= $d['difficulty_id'] ?>">
                            <?= e($d['difficulty_label']) ?>
                        </option>
                    <?php endforeach; ?>
                </select>
            </label>
            <label>
                Antwort 1
    
                <input type="text" name="answers[]" required>
            </label>
            <label>
                Korrekt
    
                <input type="radio" name="correct" value="0" required>
            </label>
            <label>
                Antwort 2
    
                <input type="text" name="answers[]" required>
            </label>
            <label>
                Korrekt
    
                <input type="radio" name="correct" value="1">
            </label>
            <label>
                Antwort 3
    
                <input type="text" name="answers[]" required>
            </label>
            <label>
                Korrekt
    
                <input type="radio" name="correct" value="2">
            </label>
            <label>
                Antwort 4
    
                <input type="text" name="answers[]" required>
            </label>
            <label>
                Korrekt
    
                <input type="radio" name="correct" value="3">
            </label>

            <button type="submit">Frage hinzufügen</button>
        </form>
    </div>
</body>
</html>