<?php

namespace App\Controllers;

class AuthController {
    /**
     * 
     */

    

    public function login() {}

    public function register() {}


    /**
     * loading Views from GET-Requests to give the user forms for either login or register
     */
    public function loginView() {require __DIR__ . '/../Views/login.php';}

    public function registerView() {require __DIR__ . '/../Views/register.php';}
}