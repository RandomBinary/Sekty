<?php
    $mail_regex = "^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$^"; //Wzorzec adresu e-mail
    $avatar_default = "https://static.dyp.im/GHlp38HSG4/b4fd8d86f6c8d73c491134ad415d139d.jpg"; //Adres do domyślnego avataru

    function getUserInfo($link, $username){
        $quer = mysqli_query($link, "SELECT * FROM `users` WHERE `nick`='$username'");
        return mysqli_fetch_array($quer);
    }