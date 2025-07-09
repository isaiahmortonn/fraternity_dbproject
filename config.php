<?php

$host = "localhost";
$user = "root";
$password = "BayZayKrisTony123?!";
$database = "fraternity_db";

$conn = new mysqli($host, $user, $password, $database);

if ($conn->connect_error) {
    die("Connection failed: ". $conn->connect_error);
}

?>