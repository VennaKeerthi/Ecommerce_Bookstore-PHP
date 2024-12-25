<?php

$host = getenv('DB_HOST');
$user = getenv('DB_USER');
$password = getenv('DB_PASSWORD');
$dbname = getenv('DB_NAME');

$conn = mysqli_connect($host, $user, $password, $dbname) 
    or die('Connection failed: ' . mysqli_connect_error());

?>

