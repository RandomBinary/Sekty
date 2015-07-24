<?php
    session_start();

	include('incl/sql.php');

	$username = mysqli_escape_string($link,$_POST['username']);
	$pass = mysqli_escape_string($link,$_POST['pass']);
	$query = mysqli_query($link,"SELECT * FROM users WHERE nick = '$username' AND pass = '$pass'");

	if(mysqli_num_rows($query) == 1){

			$_SESSION['nick'] = $username;
			header('Location: m/index.php');
		
	}else{
		
		$_SESSION['error'] = "Zły nick lub hasło";
		header('Location: index.php');
		
	}
	
    mysqli_close($link);
?>