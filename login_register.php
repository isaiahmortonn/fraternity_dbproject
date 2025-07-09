<?php

session_start();
require_once 'config.php';

if (isset($_POST['register'])) {
    //var_dump($_POST);
    //exit;
    
    $first_name = $_POST['first_name'];
    $last_name = $_POST['last_name'];
    $email = $_POST['email'];
    $password = password_hash($_POST['password'], PASSWORD_DEFAULT);
    $member_id = $_POST['member_id'];
    /*$wku_id = $_POST['wku_id'];  
    $active_years = $_POST['active_years'];  
    $hometown = $_POST['hometown'];
    $grade_id = $_POST['grade_id'];
    $major_id = $_POST['major_id'];
    $grad_year = $_POST['grad_year'];
    $role = $_POST['role'];
*/
    $checkEmail = $conn->query("SELECT email FROM members WHERE email = '$email'");
    if ($checkEmail->num_rows > 0) {
        $_SESSION['register_error'] = 'Email is already registered!';
        $_SESSION['active_form'] = 'register';
    } else {
        $conn->query("INSERT INTO members (first_name, last_name, email, password/*, wku_id, active_years, hometown, grade_id, major_id, grad_year, role*/)
                     VALUES ('$first_name', '$last_name', '$email', '$password' /*,'$wku_id', '$active_years', '$hometown', '$grade_id', '$major_id', '$grad_year', '$role'*/)");

    }

    header("Location: index.php");
    exit();

}

if(isset($_POST['login'])) {
    $email = $_POST['email'];
    $password = $_POST['password'];

    $result = $conn->query("SELECT * FROM members WHERE email = '$email'");
    if ($result->num_rows > 0) {
        $user = $result->fetch_assoc();
        if (password_verify($password, $user['password'])) {
            $_SESSION['name'] = $user['first_name'] . ' ' . $user['last_name'];
            $_SESSION['email']= $user['email'];
            $_SESSION['member_id']= $user['member_id'];

            if ($user['role'] === 'admin') {
                header("Location :admin_page.php");
            } else {
                header("Location: user_page.php");
            }
            exit();
        }
    }

    $_SESSION['login_error'] = 'Incorrect email or password';
    $_SESSION['active_form'] = 'login';
    header("Location; index.php");
    exit();
}

?>