<?php
    include_once 'incl/sql.php';
    include_once 'incl/utils.php';

    $username = mysqli_escape_string($link, htmlspecialchars($_POST['username']));
    $pass = mysqli_escape_string($link, $_POST['pass']);
    $mail = mysqli_escape_string($link, htmlspecialchars($_POST['mail']));

    if(preg_match($mail_regex, $mail) == 1
       &&
    mysqli_num_rows(mysqli_query($link, "SELECT id FROM `users` WHERE `nick`='$username'")) == 0){
        
        mysqli_query($link, "INSERT INTO `users` (`nick`,`pass`,`mail`,`avatar`) VALUES ('$username', '$pass', '$mail','$avatar_default')");
        session_start();
        $_SESSION['nick'] = $username;
        header("Location: m/index.php");
        
    }