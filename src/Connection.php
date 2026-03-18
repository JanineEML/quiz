<?php

namespace App;

use PDO;
use PDOException;

class Connection {
    private static PDO $pdo;

    public static function connect(): PDO {
        $dsn = 'mysql:host=mysql,port=3306,dbname=quiz,charset=utf8';
        $username = 'jeml';
        $password = 'pass';

        try {
            self::$pdo = new PDO($dsn, $username, $password);
            self::$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        }
        catch (PDOException $e) {
            echo "Verbindung fehlgeschlagen" . $e->getMessage();
        }

        return self::$pdo;
    }
}