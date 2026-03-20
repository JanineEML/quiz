<?php
namespace App;

class Auth {
    public static function check_session() {
        if(!isset($_SESSION['player'])) {
            header('Location: /login');
        }
    }
}