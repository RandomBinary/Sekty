<!DOCTYPE html>
<?php 			session_start(); unset($_SESSION['error']);?>
<html lang="Sex,drugs and rock'n'roll">

	<head>
		<meta charset="utf-8"/>
		<link rel="stylesheet" type="text/css" href="css.css" />
		<title>Sekty - <?php echo $_SESSION['nick'] ?></title>
	</head>
	<body>
		<h2>Witaj, <?php echo $_SESSION['nick'];?>!</h2> 
		<a href="logout.php">WYLOGUJ SIĘ</a>
	</body>

</html>