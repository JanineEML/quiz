<?php require __DIR__ . '/../shared/header.php' ?>
<div class="container-lg">
    <div class="row">
        <div class="col">
            <h1>Admin: Frageverwaltung</h1>
            <h2>Vorhandene Fragen</h2>

            <form method="get">
                <select class="form-select" name="category_id" onchange="this.form.submit()">
                    <option value="">Alle Kategorien</option>
                    <?php foreach ($categories as $c): ?>
                        <option value="<?= $c['category_id'] ?>"
                            <?= $c['category_id'] === $selectedCategory ? 'selected' : '' ?>>
                            <?= e($c['category_label']) ?>
                        </option>
                    <?php endforeach; ?>
                </select>
            </form>

            <table class="table table-striped">
                <caption>Alle Fragen</caption>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Frage</th>
                        <th>Kategorie</th>
                        <th>Schwierigkeit</th>
                        <th></th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <?php foreach($questions as $q): ?>
                        <tr>
                            <td><?= $q['question_id'] ?></td>
                            <td class="question-text"><?= e($q['question_text']) ?></td>
                            <td><?= e($q['category_label']) ?></td>
                            <td><?= e($q['difficulty_label']) ?></td>
                            <td>
                                <form action="/admin/questions/edit" method="get">
                                    <input type="hidden" name="question_id" value="<?= $q['question_id'] ?>">
                                    <button type="submit" class="btn btn-sm btn-outline-secondary">Editieren</button>
                                </form>
                            </td>
                            <td>
                                <form action="/admin/questions/delete" method="post" onsubmit="return confirm('Frage wirklich löschen?')">
                                    <input type="hidden" name="question_id" value="<?= $q['question_id'] ?>">
                                    <button type="submit" class="btn btn-sm btn-danger">Löschen</button>
                                </form>
                            </td>
                        </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>

            <div class="pagination">
                <?php if ($page > 1): ?>
                    <a href="?page=<?= $page - 1 ?>&category_id=<?= $selectedCategory ?>" class="btn btn-outline-secondary">« Zurück</a>
                <?php endif; ?>

                <span>Seite <?= $page ?> von <?= $totalPages ?></span>

                <?php if ($page < $totalPages): ?>
                    <a href="?page=<?= $page + 1 ?>&category_id=<?= $selectedCategory ?>" class="btn btn-outline-secondary">Weiter »</a>
                <?php endif; ?>
            </div>
        </div>
        <div class="col-3">
            <?php require __DIR__ . '/../shared/sidebar.php' ?>
        </div>
    </div>

    <div class="row">
        <div class="col">
            <h2>Frage hinzufügen</h2>
            <?php showErrors() ?>
            <form action="/admin/questions/add" method="post" class="d-flex flex-column gap-3">
                <label>
                    Fragetext
    
                    <textarea class="form-control" name="question_text" required></textarea>
                </label>
                <label>
                    Kategorie
    
                    <select class="form-select" name="category" required>
                        <?php foreach ($categories as $c): ?>
                            <option value="<?= $c['category_id'] ?>">
                                <?= e($c['category_label']) ?>
                            </option>
                        <?php endforeach; ?>
                    </select>
                </label>
                <label>
                    Schwierigkeit
    
                    <select class="form-select" name="difficulty" required>
                        <?php foreach ($difficulties as $d): ?>
                            <option value="<?= $d['difficulty_id'] ?>">
                                <?= e($d['difficulty_label']) ?>
                            </option>
                        <?php endforeach; ?>
                    </select>
                </label>
                <div class="d-flex gap-2 align-items-center">
                    <label class="flex-shrink-0"><input type="radio" name="correct" value="0" required> Korrekt</label>
                    <input type="text" class="form-control flex-grow-1" name="answers[]" placeholder="Antwort 1" required>
                </div>
                <div class="d-flex gap-2 align-items-center">
                    <label class="flex-shrink-0"><input type="radio" name="correct" value="1"> Korrekt</label>
                    <input type="text" class="form-control flex-grow-1" name="answers[]" placeholder="Antwort 2" required>
                </div>
                <div class="d-flex gap-2 align-items-center">
                    <label class="flex-shrink-0"><input type="radio" name="correct" value="2"> Korrekt</label>
                    <input type="text" class="form-control flex-grow-1" name="answers[]" placeholder="Antwort 3" required>
                </div>
                <div class="d-flex gap-2 align-items-center">
                    <label class="flex-shrink-0"><input type="radio" name="correct" value="3"> Korrekt</label>
                    <input type="text" class="form-control flex-grow-1" name="answers[]" placeholder="Antwort 4" required>
                </div>
    
                <button type="submit" class="btn btn-primary">Frage hinzufügen</button>
            </form>
        </div>
    </div>
</div>
<?php require __DIR__ . '/../shared/footer.php' ?>
