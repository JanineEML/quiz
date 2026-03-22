<?php
namespace App\Models;

use PDO;

class Question
{
    /** @var PDO DB connection, shared with all model-queries. */
    private PDO $pdo;
    
    /** @param PDO $pdo Active database connection, provided by Connection::connect().*/
    public function __construct(PDO $pdo)
    {
        $this->pdo = $pdo;
    }
}