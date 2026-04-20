<?php require __DIR__ . '/shared/header.php' ?>
<div class="container-lg">
    <div class="row">
        <div class="col">
            <h1>Willkommen, <?= e($_SESSION['player']['playername']) ?>!</h1>
        </div>
        <div class="col-3">
            <?php require __DIR__ . '/shared/sidebar.php' ?>
        </div>
    </div>
</div>
<?php require __DIR__ . '/shared/footer.php' ?>