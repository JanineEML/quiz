<?php

namespace App\Controllers;

use App\Connection;

class AuthController {
    /**
     * 
     */
    public function login() {
        $playername = $_POST['playername'];
        $password = $_POST['password'];

        // establish database connection to compare $_POST with DB Data
        $pdo = Connection::connect();
        $stmt = $pdo->prepare("SELECT * FROM player WHERE playername = ?");
        $stmt->execute([$playername]);

        // Fetch row to see if user matched! Since playernames are unique,
        // can only return one row or false (for none). Check 
        $player = $stmt->fetch();

        // OR check, so if player is false, pw won't need to be checked
        if (!$player || !password_verify($password, $player['pw_hash'])) {return;}

        // User found! Store to Session, redirect to home!
        $_SESSION['player'] = $player;
        header('Location: /');
        exit;
    }

    /**
     * 
     */
    public function register() {
        // Get user input info from POST
        $playername = $_POST['playername'];
        $password = $_POST['password'];

        // double-check if password was confirmed
        if ($password !== $_POST['password_confirm']) {return;}

        $password = password_hash($password, PASSWORD_DEFAULT);

        // establish Database connection, prepare statement
        $pdo = Connection::connect();

        $stmt = $pdo->prepare("INSERT INTO player (playername, pw_hash) VALUES (:playername, :pw_hash)");
        $stmt->execute([':playername' => $playername, ':pw_hash' => $password]);

        // after a succesful registration, the user must be redirected to /login
        header('Location: /login');
        exit; // stop PHP from executing /login
    }

    /**
     * loading Views from GET-Requests to give the user forms for either login or register
     */
    public function loginView() {require __DIR__ . '/../Views/login.php';}

    public function registerView() {require __DIR__ . '/../Views/register.php';}
}