<?php

use App\Handler;

// namespaces to shorten ::class call
use App\Controllers\HomeController;
use App\Controllers\AuthController;

/**
 * Define routes, see pattern below. Will be passed through Handler->add()
 * returns a function call of a Handler object, either get() or post()
 */
return function (Handler $handler): void {
    /* $handler->add(
    string $httpMethod,
    string $path,
    string $ctrl,
    string $ctrlMethod
    );
    */

    $handler->add('GET', '/', HomeController::class, 'home');
    $handler->add('GET', '/login', AuthController::class, 'login');
    $handler->add('POST', '/register', AuthController::class, 'register');
};