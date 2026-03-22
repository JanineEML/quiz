<?php
namespace App;

use PDO;
use PDOException;

class Connection
{
    /** @var PDO Singleton database connection instance. */
    private static ?PDO $pdo = null;

    /**
     * Singleton database connection.
     * Returns the same PDO instance for the lifetime of a request.
     *
     * @return PDO
     * @throws PDOException If the connection fails.
     */
    public static function connect(): ?PDO
    {
        $dsn = 'mysql:host=mysql;port=3306;dbname=quiz;charset=utf8';
        $username = 'jeml';
        $password = 'pass';

        try {
            if (is_null(self::$pdo)) {
                self::$pdo = new PDO($dsn, $username, $password);
                self::$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
                }

        } catch (PDOException $e) {
            echo "Verbindung fehlgeschlagen" . $e->getMessage();
        }

        return self::$pdo;
    }
}