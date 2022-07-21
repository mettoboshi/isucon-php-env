<?php

$dsn = sprintf( 'mysql:dbname=%s;host=%s', 'sample', 'mysql');
$pdo = new PDO($dsn, 'root', 'root');

$stmt = $pdo->prepare('select * from employee');
$result = $stmt->execute();

if ($result) {
    var_dump($stmt->fetch());
}