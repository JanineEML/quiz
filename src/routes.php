<?php

use App\Router;

// namespaces to shorten ::class call
use App\Controllers\HomeController;
use App\Controllers\AuthController;

/**
 * Define routes, see pattern below. Will be passed through Router->add()
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
    $router->add('POST', '/login', AuthController::class, 'login');
    $router->add('POST', '/register', AuthController::class, 'register');
};