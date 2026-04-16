<?php require __DIR__ . '/../shared/header.php' ?>
    <h1>Kategorien bearbeiten</h1>
    <?php showErrors() ?>

    <h2>Vorhandene Kategorien</h2>
    <table>
        <thead>
            <tr>
                <th>Label</th>
                <th>Editieren</th>
                <th>Löschen</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach($categories as $c): ?>
                <tr>
                    <td><?= e($c['category_label']) ?></td>
                    <td>
                        <form action="/admin/categories/edit" method="post">
                            <input type="hidden" name="category_id" value="<?= $c['category_id'] ?>">
                            <input type="text" name="category_label" value="<?= e($c['category_label']) ?>">
                            <button type="submit">EDITIEREN</button>
                        </form>
                    </td>
                    <td>
                        <form action="/admin/categories/delete" method="post" onsubmit="return confirm('Kategorie wirklich löschen?')">
                            <input type="hidden" name="category_id" value="<?= $c['category_id'] ?>">
                            <button type="submit">LÖSCHEN</button>
                        </form>
                    </td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>

    <h2>Kategorie hinzufügen</h2>
    <form action="/admin/categories/add" method="post">
        <input type="text" name="category_label">
        <button type="submit">EINFÜGEN</button>
    </form>
<?php require __DIR__ . '/../shared/footer.php' ?>