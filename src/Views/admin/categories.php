<?php require __DIR__ . '/../shared/header.php' ?>
<div class="container-lg">
    <div class="row">
        <div class="col">
            <h1>Kategorien bearbeiten</h1>
            <?php showErrors() ?>

            <h2>Vorhandene Kategorien</h2>
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th>Alter Name</th>
                        <th>Neuer Name</th>
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
                                    <input type="text" class="form-control" name="category_label" value="<?= e($c['category_label']) ?>">
                                    <button type="submit" class="btn btn-sm btn-outline-secondary">Ändern</button>
                                </form>
                            </td>
                            <td>
                                <form action="/admin/categories/delete" method="post" onsubmit="return confirm('Kategorie wirklich löschen?')">
                                    <input type="hidden" name="category_id" value="<?= $c['category_id'] ?>">
                                    <button type="submit" class="btn btn-sm btn-danger">Löschen</button>
                                </form>
                            </td>
                        </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>

            <h2>Kategorie hinzufügen</h2>
            <form action="/admin/categories/add" method="post">
                <input type="text" class="form-control" name="category_label">
                <button type="submit" class="btn btn-primary">Einfügen</button>
            </form>
        </div>
        <div class="col-3">
            <?php require __DIR__ . '/../shared/sidebar.php' ?>
        </div>
    </div>
</div>
<?php require __DIR__ . '/../shared/footer.php' ?>
