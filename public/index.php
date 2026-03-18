<?php
require __DIR__.'/../vendor/autoload.php';
use App\Handler;

$handler = new Handler();
$routes = require __DIR__.'/../src/routes.php';
$routes($handler);

$handler->run(
    $_SERVER['REQUEST_METHOD'],
    $_SERVER['REQUEST_URI']
);