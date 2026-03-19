<?php
session_start();

// load autoloader
require __DIR__.'/../vendor/autoload.php';

use App\Router;

// new 
$router = new Router();
$routes = require __DIR__.'/../src/routes.php';
$routes($router);

$router->run(
    $_SERVER['REQUEST_METHOD'],
    $_SERVER['REQUEST_URI']
);