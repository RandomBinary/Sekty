<?php

	include('incl/sql.php');
	
	$username = mysqli_escape_string($link,$_POST['username']);
	$pass = mysqli_escape_string($link,$_POST['pass']);
	$query = mysqli_query($link,"SELECT * FROM users WHERE nick = '$username' AND pass = '$pass'");
	if(mysqli_num_rows($query) == 1){
		
			session_start();
			$_SESSION['nick'] = $username;
			header('Location: m/index.php');
			
		
	}
	else{
		
		$_SESSION['error'] = '<span class="error">Zły nick lub hasło</span>';
		header('Location: index.php');
		
	}
	

?>