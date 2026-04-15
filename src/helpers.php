<?php

declare(strict_types=1);

function e(string $value): string
{
    return htmlspecialchars($value, ENT_QUOTES | ENT_SUBSTITUTE, 'UTF-8');
}

function redirect(string $path): never
{
    header('Location: ' . $path);
    exit;
}

function showErrors(): void
{
    if (!empty($_SESSION['errors'])) {
        foreach ($_SESSION['errors'] as $err) {
            echo '<p class="error">' . e($err) . '</p>';
        }

        unset($_SESSION['errors']);
    }
}