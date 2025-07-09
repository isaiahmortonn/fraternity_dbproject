<?php

session_start();
if (!isset($_SESSION['email'])) {
    header("Location: index.php");
    exit();
}



$servername = "localhost";
$username = "root";
$password = "BayZayKrisTony123?!";
$database = "fraternity_db"; // ← change this to your actual database name

$conn = new mysqli($servername, $username, $password, $database);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$email = $_SESSION['email'];
$member_id = isset($_SESSION['member_id']) ? $_SESSION['member_id'] : null;

if ($member_id !== null) {
    $checkProfile = $conn->query("SELECT * FROM member_profiles WHERE member_id = '$member_id'");
    if ($checkProfile && $checkProfile->num_rows > 0) {
        // Redirect to homepage if profile already exists
        header("Location: homepage.php");
        exit();
    }
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $wku_id = $_POST['wku_id'];  
    $active_years = $_POST['active_years'];  
    $hometown = $_POST['hometown'];
    $grade_id = $_POST['grade_id'];
    $major_id = $_POST['major_id'];
    $grad_year = $_POST['grad_year'];
    $role = $_POST['role'];

    if ($member_id !== null) {
        $check = $conn->query("SELECT * FROM member_profiles WHERE member_id = '$member_id'");
        if ($check && $check->num_rows > 0) {
            // UPDATE
            $sql = "UPDATE member_profiles 
                    SET wku_id = '$wku_id', 
                        active_years = '$active_years', 
                        hometown = '$hometown', 
                        grade_id = '$grade_id', 
                        major_id = '$major_id', 
                        grad_year = '$grad_year', 
                        role = '$role' 
                    WHERE member_id = '$member_id'";
        } else {
            // INSERT
            $sql = "INSERT INTO member_profiles 
                    (member_id, wku_id, active_years, hometown, grade_id, major_id, grad_year, role)
                    VALUES ('$member_id', '$wku_id', '$active_years', '$hometown', '$grade_id', '$major_id', '$grad_year', '$role')";
        }

        if ($conn->query($sql) === TRUE) {
            $_SESSION['setup_success'] = "Profile updated successfully.";
            header("Location: homepage.php");
            exit();
        } else {
            echo "Error updating profile: " . $conn->error;
        }
    } else {
        echo "Member ID not found in session.";
    }
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Page</title>
    <link rel="stylesheet" href="style.css">
</head>
<body style="background: #fff;">
    <div class = "user-form-box">
        <img src="images/pike_logo.png" alt="Logo" class="user_logo">
        <h1>Welcome, <span><?= $_SESSION['name']; ?></span></h1>
        <form method="POST">
            <p>Please fill out these forms to finish setting up your account:</p>
            <label for="wku_id">WKU ID:</label>
            <input type="text" name="wku_id" id="wku_id" required><br>

            <label for="active_years">Active Years:</label>
            <input type="text" name="active_years" id="active_years" required><br>

            <label for="hometown">Hometown:</label>
            <input type="text" name="hometown" id="hometown" required><br>

            <label for="grade_id">Grade Level:</label>
            <input type="text" name="grade_id" id="grade_id" required><br>

            <label for="major_id">Major:</label>
            <input type="text" name="major_id" id="major_id" required><br>

            <label for="grad_year">Graduation Year:</label>
            <input type="text" name="grad_year" id="grad_year" required><br>

            <label for="role">Role:</label>
            <select name="role" id="role" required>
                <option value="user">User</option>
                <option value="admin">Admin</option>
        </select><br>
        <button class="logout-btn" onclick="window.location.href='logout.php'">Logout</button>
        <button class="next-btn" onclick="window.location.href='homepage.php'">Next</button>
    </div>
</body>
</html>