<?php

namespace App\Controllers;

class AuthController {
    /**
     * 
     */

    public function loginView() {
        require __DIR__ . '/../Views/login.php';
    }

    public function login() {}

    public function registerView() {
        require __DIR__ . '/../Views/register.php';
    }

    public function register() {}
}