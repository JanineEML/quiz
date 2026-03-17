<?php

namespace App;

use PDO;
use PDOException;

/**
 * 
 */

class Connection {
    private static $pdo = null;

    public static function connect(): PDO {
        // Check for already existing Connection
        if (is_null(self::$pdo)) {
            try {
                self::$pdo = new PDO(
                    'mysql:host=quiz-mysql,dbname=quiz', 'jeml', 'pass'
                );

                self::$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

            } catch (PDOException $e) {
                http_response_code(500);
                echo 'DB Verbindung fehlgeschlagen ' . $e->getMessage();
            }
        }

        return self::$pdo;
    }
}