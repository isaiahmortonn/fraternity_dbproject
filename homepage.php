<?php
session_start();

// Make sure user is logged in
if (!isset($_SESSION['email']) || !isset($_SESSION['member_id'])) {
    header("Location: index.php");
    exit();
}

// Optionally connect to database if you want profile data
$servername = "localhost";
$username = "root";
$password = "BayZayKrisTony123?!";
$database = "fraternity_db";

$conn = new mysqli($servername, $username, $password, $database);
if ($conn->connect_error) {
    die("Database connection failed: " . $conn->connect_error);
}

$member_id = $_SESSION['member_id'];

$sql = "SELECT mp.*, m.first_name, m.last_name 
        FROM member_profiles mp
        JOIN members m ON mp.member_id = m.member_id
        WHERE mp.member_id = '$member_id'";

$result = $conn->query($sql);

if ($result && $result->num_rows > 0) {
    $user = $result->fetch_assoc();
    $_SESSION['name'] = $user['first_name'] . ' ' . $user['last_name'];
} else {
    $user = ['first_name' => 'Member', 'last_name' => ''];
}
?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Homepage</title>
    <link rel="stylesheet" href="style.css">
</head>

<body class="home_page">

    <div class="slideshow">
        <img src="images/pike_home1.png" alt="Background 1">
        <img src="images/pike_home2.jpg" alt="Background 2">
        <img src="images/pike_home3.jpg" alt="Background 3">
        <img src="images/pike_home4.webp" alt="Background 4">
    </div>

    <!-- 🌟 Foreground Content -->
    <div class="content">
        <h1>Welcome, <?= $_SESSION['name'] ?>!</h1>
        <p>This is your homepage.</p>
    </div>

        
    <script src="script.js"></script>
</body>

</html>