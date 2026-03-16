<?php
require __DIR__.'/../vendor/autoload.php';

$routes = require __DIR__.'/../src/routes.php';

$router = new App\Router($routes);
$router->dispatch(
    $_SERVER['REQUEST_METHOD'],
    $_SERVER['REQUEST_URI']
);