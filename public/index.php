<?php
session_start(); // since EVERYTHING starts here, session_status() check should not be necessary

// load autoloader
require __DIR__.'/../vendor/autoload.php';

use App\Router;

// create new Router instance and insert routes
$router = new Router();
$routes = require __DIR__.'/../src/routes.php';
$routes($router); // routes.php uses the add() function of router

$router->run(
    $_SERVER['REQUEST_METHOD'],
    $_SERVER['REQUEST_URI']
);