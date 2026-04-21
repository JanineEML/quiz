<?php require __DIR__ . '/../shared/header.php' ?>
<div class="container-lg">
    <div class="row">
        <div class="col d-flex flex-column align-items-center">
            <h1>Frage <?= $i + 1 ?> von <?= $total ?></h1>
        
            <?php showErrors() ?>
        
            <div id="timer" class="mb-3 fs-3">30</div>
            <p class="fs-3 text-center"><?= e($question['question_text']) ?></p>
        
            <div class="quiz-answers mb-3">
                <?php foreach ($answers as $a): ?>
                    <form action="/quiz/play" method="post">
                        <input type="hidden" name="answer_id" value="<?= $a['answer_id'] ?>">
                        <button type="submit"
                                class="btn btn-primary mb-1"
                                data-correct="<?= $a['is_correct'] ? 'true' : 'false' ?>">
                            <?= e($a['answer_text']) ?>
                        </button>
                    </form>
                <?php endforeach; ?>
            </div>

            <?php $progress = (int) (($i) / $total * 100); ?>

            <div class="progress w-100">
                <div class="progress-bar"
                     role="progressbar"
                     style="width: <?= $progress ?>%"
                     aria-valuenow="<?= $progress ?>"
                     aria-valuemin="0"
                     aria-valuemax="100">
                </div>
            </div>
        </div>
        <div class="col-3">
            <?php require __DIR__ . '/../shared/sidebar.php' ?>
        </div>
    </div>
</div>
<script>
    // ElementsByClass returns a HTML Collections, buttons needs to be cast into an array
    // with querySelectorAll this is not necessary
    const buttons = document.querySelectorAll(".quiz-answers button");
    let timerId;
    buttons.forEach(button => {
        button.addEventListener("click", (event) => {
            clearInterval(timerId);
            event.preventDefault();

            // Prevent changing the Answer by locking the Buttons
            buttons.forEach(b => b.disabled = true);

            // replace class
            buttons.forEach(b => {
                if (b.dataset.correct === "true") {
                    b.classList.replace("btn-primary", "btn-success");
                }
            });

            if (event.currentTarget.dataset.correct !== "true") {
                event.currentTarget.classList.replace("btn-primary", "btn-danger");
            }

            // variable needed to fix timing problem within JS
            const answer = event.currentTarget;
            setTimeout(() => {answer.closest("form").submit();}, 500);
        });
    });

    let seconds = 30;
    timerId = setInterval(() => {
        seconds--;
        document.querySelector("#timer").textContent = seconds;

        if (seconds === 0) {
            clearInterval(timerId);
            document.querySelector(".quiz-answers form").submit();
        }
    }, 1000);
</script>
<?php require __DIR__ . '/../shared/footer.php' ?>