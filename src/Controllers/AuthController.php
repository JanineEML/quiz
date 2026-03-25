<?php
namespace App\Controllers;

use App\Connection;
use App\Models\User;

class AuthController
{
    /**
     * POST /register
     * From $_POST uses 'playername', 'password', 'password_confirm'.
     *
     * Stores errors in $_SESSION['errors'] and redirects to /register on failure.
     * Redirects to /login on success.
     */
    public function register()
    {
        // Get user input info from POST
        $playername = $_POST['playername'];
        $password = $_POST['password'];

        $errors = $this->validateRegistration($playername, $password);

        // Since database action are necessary, create User instance
        $user = (new User(Connection::connect()));

        // Check if username is already taken, if so, raise error and redirect to register
        $player = $user->fetchByName($playername);

        if ($player) {
            $errors[] = 'Name bereits vergeben';
        }

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
     * POST /login
     * From $_POST uses 'playername', 'password'.
     * 
     * Stores errors in $_SESSION['errors'] and redirects to /login on failure.
     * Stores player in $_SESSION['player'] and redirects to / on success.
     */
    public function login()
    {
        $errors = [];

        $playername = $_POST['playername'];
        $password = $_POST['password'];

        if (empty($playername) || empty($password)) {
            $errors[] = 'Bitte beide Felder ausfüllen.';
            header('Location: /login');
            exit;
        }

        // establish database connection to compare $_POST with DB Data
        $player = (new User(Connection::connect()))->fetchByName($playername);

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
     * POST /logout
     *
     * Destroys the current session and redirects to /.
     */
    public function logout()
    {
        session_destroy();
        header('Location: /');
        exit;
    }

    /**
     * GET /login renders the login form.
     */
    public function loginView()
    {
        require __DIR__ . '/../Views/login.php';
    }

    /**
     * GET /register renders the registration form.
     */
    public function registerView()
    {
        require __DIR__ . '/../Views/register.php';
    }

    /**
     * Validates playername and password for registration.
     * From $_POST uses 'password_confirm'.
     *
     * @param string $name  The chosen playername.
     * @param string $pw    The plain-text password.
     * @return array        Validation error messages in German. Empty if valid.
     */
    private function validateRegistration(string $name, string $pw): array
    {
        $errors = [];

        if (strlen($name) < 4) {
            $errors[] = 'Name zu kurz. Bitte mindestens 4 Zeichen.';
        }

        // double-check if password was confirmed
        if ($pw !== $_POST['password_confirm']) {
            $errors[] = 'Passwörter stimmen nicht überein.';
        }

        // some password checks before hashing it
        if (strlen($pw) < 6) {
            $errors[] = 'Passwort zu kurz. Bitte mindestens 6 Zeichen.';
        }

        if (!preg_match('/[A-Z]/', $pw)) {
            $errors[] = 'Mindestens ein Großbuchstabe.';
        }

        if (!preg_match('/[a-z]/', $pw)) {
            $errors[] = 'Mindestens ein Kleinbuchstabe.';
        }

        if (!preg_match('/[0-9]/', $pw)) {
            $errors[] = 'Mindestens eine Zahl.';
        }

        return $errors;
    }
}