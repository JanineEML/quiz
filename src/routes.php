<?php

declare(strict_types=1);

use App\Router;

// namespaces to shorten ::class call
use App\Controllers\HomeController;
use App\Controllers\AuthController;
use App\Controllers\QuizController;
use App\Controllers\AdminController;
use App\Controllers\LeaderboardController;

/** Defines all routes. Uses the add() function of Router to load the routes. */ 
return function (Router $router): void {
    /* $router->add(
    string $httpMethod,
    string $path,
    string $ctrl,
    string $ctrlMethod
    );
    */

    // HOME CONTROLLER
    $router->add('GET',  '/', HomeController::class, 'home');

    // AUTH CONTROLLER
    $router->add('GET',  '/login',    AuthController::class, 'loginView');
    $router->add('POST', '/login',    AuthController::class, 'login');
    $router->add('GET',  '/register', AuthController::class, 'registerView');
    $router->add('POST', '/register', AuthController::class, 'register');
    $router->add('POST', '/logout',   AuthController::class, 'logout');

    // QUIZ CONTROLLER
    $router->add('GET',  '/quiz/start',  QuizController::class, 'startView');
    $router->add('POST', '/quiz/start',  QuizController::class, 'start');
    $router->add('GET',  '/quiz/play',   QuizController::class, 'playView');
    $router->add('POST', '/quiz/play',   QuizController::class, 'play');
    $router->add('GET',  '/quiz/result', QuizController::class, 'resultView');

    // ADMIN CONTROLLER - QUESTIONS
    $router->add('GET',  '/admin/questions',        AdminController::class, 'questionsView');
    $router->add('POST', '/admin/questions/add',    AdminController::class, 'addQuestion');
    $router->add('GET',  '/admin/questions/edit',   AdminController::class, 'editQuestionView');
    $router->add('POST', '/admin/questions/edit',   AdminController::class, 'editQuestion');
    $router->add('POST', '/admin/questions/delete', AdminController::class, 'deleteQuestion');

    // ADMIN CONTROLLER - CATEGORIES
    $router->add('GET',  '/admin/categories',        AdminController::class, 'categoriesView');
    $router->add('POST', '/admin/categories/add',    AdminController::class, 'addCategory');
    $router->add('POST', '/admin/categories/edit',   AdminController::class, 'editCategory');
    $router->add('POST', '/admin/categories/delete', AdminController::class, 'deleteCategory');

    // LEADERBOARDS
    $router->add('GET',  '/leaderboard', LeaderboardController::class, 'leaderboardView');
};