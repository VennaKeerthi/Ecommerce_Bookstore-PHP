

//$conn = mysqli_connect('sql303.infinityfree.com', 'if0_37850778', '5phAMU0VMdtIT', 'if0_37850778_test', 3306) or die('Connection failed: ' . mysqli_connect_error());
<?php

$host = getenv('DB_HOST');
$user = getenv('DB_USER');
$password = getenv('DB_PASSWORD');
$dbname = getenv('DB_NAME');
$port = getenv('PORT');

$conn = mysqli_connect($host, $user, $password, $dbname, $port) 
    or die('Connection failed: ' . mysqli_connect_error());

?>

