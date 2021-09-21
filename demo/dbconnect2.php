<?php

$servername = "localhost";
$username = "root";
$password = "1234";
$dbname = "airline1";

// Create connection
$con = mysqli_connect($servername, $username, $password, $dbname);

// Check connection
if (!$con) {
    die('Could not connect: ' . mysqli_error($con));
} 
?>