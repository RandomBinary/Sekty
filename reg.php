<?php
    include_once 'incl/sql.php';
    $username = mysqli_escape_string($link, htmlspecialchars($_POST['username']));
    $pass = mysqli_escape_string($link, $_POST['pass']);
    $mail = mysqli_escape_string($link, htmlspecialchars($_POST['mail']));
    if(mysqli_num_rows(
        mysqli_query($link, "SELECT id FROM `users` WHERE `nick`='$username'")
    ) == 0){
        mysqli_query($link, "INSERT INTO `users` (`nick`,`pass`,`mail`) VALUES ('$username', '$pass', '$mail')");
        session_start();
        $_SESSION['nick'] = $username;
        header("Location: m/index.php");
    }