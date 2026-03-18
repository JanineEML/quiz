<?php

use App\Router;

// namespaces to shorten ::class call
use App\Controllers\HomeController;
use App\Controllers\AuthController;

/**
 * Define routes, see pattern below. Will be passed through Handler->add()
 * returns a function call of a Handler object, either get() or post()
 */
return function (Router $router): void {
    /* $router->add(
    string $httpMethod,
    string $path,
    string $ctrl,
    string $ctrlMethod
    );
    */

    $router->add('GET', '/', HomeController::class, 'home');
    $router->add('GET', '/login', AuthController::class, 'login');
    $router->add('POST', '/register', AuthController::class, 'register');
};