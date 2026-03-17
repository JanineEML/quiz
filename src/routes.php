<?php

use App\Router;

// namespaces to shorten ::class call
use App\Controllers\HomeController;

/**
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

    $router->add('GET', '/', HomeController::class, 'home');
};