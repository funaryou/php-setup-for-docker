<?php
$dsn = 'mysql:host=db;dbname=app_db;charset=utf8mb4';
$user = 'user';
$pass = 'password';

try {
    $pdo = new PDO($dsn, $user, $pass);
    echo "MySQLに接続できました！";
} catch (PDOException $e) {
    echo "接続エラー: " . $e->getMessage();
}

