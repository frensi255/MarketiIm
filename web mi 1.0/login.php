<?php
session_start();
require('config.php');

if (isset($_POST['email']) and isset($_POST['encrypted_password'])) {

    $myemail    = $_POST['email'];
    $mypassword = $_POST['encrypted_password'];

    $hash = base64_encode(sha1($mypassword, true));
    
    $query = "SELECT * FROM `userstb` WHERE email='$myemail' and encrypted_password='$hash'";
    
    $result = mysqli_query($connection, $query) or die(mysqli_error($connection));
    $count = mysqli_num_rows($result);

    if ($count == 1) {
        $_SESSION['email'] = $myemail;
    } else {

        echo "Invalid Login Credentials.";
    }
}

if (isset($_SESSION['email'])) {
    $myemail = $_SESSION['email'];
    header('Location: userprofile.html');
    
}
?>