<?php
namespace App\Controllers;

use App\Connection;
use App\Models\User;

class AuthController {
    /**
     * 
     */
    public function register() {
        // For collecting errors during register
        $errors = [];

        // Get user input info from POST
        $playername = $_POST['playername'];
        $password = $_POST['password'];

        // double-check if password was confirmed
        if ($password !== $_POST['password_confirm']) {$errors[] = 'Passwörter stimmen nicht überein';}

        // some password checks before hashing it
        if (strlen($password) < 8) {$errors[] = 'Passwort zu kurz. Bitte mindestens 8 Zeichen';}
        if (!preg_match('/[A-Z]/', $password)) {$errors[] = 'Mindestens ein Großbuchstabe';}
        if (!preg_match('/[a-z]/', $password)) {$errors[] = 'Mindestens ein Kleinbuchstabe';}
        if (!preg_match('/[0-9]/', $password)) {$errors[] = 'Mindestens eine Zahl';}

        // Database Calls need a User - find one through 
        // $player is a associative Array, with DB attributes as key
        $user = new User(Connection::connect());
        $player = $user->getUserByName($playername);

        // if player data is already existing, add error
        if ($player) {$errors[] = 'Name bereits vergeben';}

        // if any error got collected through the registering process, prevent INSERT INTO statement
        if (!empty($errors)) {
            $_SESSION['errors'] = $errors;
            header('Location: /register');
            exit;
        }

        // no errors found, new player gets put in database and redirected to /login
        $user->create($playername, $password);

        header('Location: /login');
        exit; // stop PHP from executing /login
    }

    /**
     * 
     */
    public function login() {
        // for collecting errors
        $errors = [];

        $playername = $_POST['playername'];
        $password = $_POST['password'];

        if (empty($playername) || empty($password)) {
            $errors[] = 'Bitte beide Felder ausfüllen.';
            header(('Location: /login'));
            exit;
        }

        // establish database connection to compare $_POST with DB Data
        $player = new User(Connection::connect())->getUserByName($playername);

        // do a OR check, so if player is false / null, pw won't need to be checked
        if (!$player || !password_verify($password, $player['pw_hash'])) {
            $errors[] = 'Fehlender Benutzer oder falsches Passwort';
        }

        if (!empty($errors)) {
            $_SESSION['errors'] = $errors;
            header('Location: /login');
            exit;
        }

        // User found! Store to Session, redirect to home!
        $_SESSION['player'] = $player;
        header('Location: /');
        exit;
    }

    /**
     * 
     */
    public function logout() {
        session_destroy();
        header('Location: /');
        exit;
    }


    /**
     * loading Views from GET-Requests to give the user forms for either login or register
     */
    public function loginView() {require __DIR__ . '/../Views/login.php';}

    public function registerView() {require __DIR__ . '/../Views/register.php';}
}