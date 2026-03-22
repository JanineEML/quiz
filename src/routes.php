<?php
use App\Router;

// namespaces to shorten ::class call
use App\Controllers\HomeController;
use App\Controllers\AuthController;

/**
 * Define routes, see pattern below. Will be passed through Router->add()
 * returns a function call of a Router object, either get() or post()
 */
return function (Router $router): void {
    /* $router->add(
    string $httpMethod,
    string $path,
    string $ctrl,
    string $ctrlMethod
    );
    */

    // HOME CONTROLLER
    $router->add('GET', '/', HomeController::class, 'home');

    // AUTH CONTROLLER
    $router->add('GET', '/login', AuthController::class, 'loginView');
    $router->add('POST', '/login', AuthController::class, 'login');
    $router->add('GET', '/register', AuthController::class, 'registerView');
    $router->add('POST', '/register', AuthController::class, 'register');
    $router->add('GET', '/logout', AuthController::class, 'logout');
};