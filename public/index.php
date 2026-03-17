<?php
require __DIR__.'/../vendor/autoload.php';
use App\Router;

$router = new Router();
$routes = require __DIR__.'/../src/routes.php';
$routes($router);

$router->run(
    $_SERVER['REQUEST_METHOD'],
    $_SERVER['REQUEST_URI']
);