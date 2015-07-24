<!DOCTYPE html>
<?php 
    session_start();
    unset($_SESSION['error']);
    include_once '../incl/sql.php';
    include_once '../incl/utils.php';
    $user = getUserInfo($link, $_SESSION['nick']);
?>
<html lang="Sex,drugs and rock'n'roll">

	<head>
		<meta charset="utf-8"/>
		<link rel="stylesheet" type="text/css" href="css.css" />
		<title>Sekty - <?php echo $_SESSION['nick'] ?></title>
	</head>
	<body>
		<table border="0">
            <tbody><tr>
                <Td>
                    <?php echo "<img src=\"" . $user['avatar'] . "\" alt=\"Twój avatar.\" width=\"150\" height=\"150\">"; ?>
                </Td>
                <Td>
                    <h2>Witaj, <?php echo $_SESSION['nick'];?>!</h2>
                    <a href="logout.php">WYLOGUJ SIĘ</a>
                </Td>
            </tr></tbody>
        </table>
	</body>

</html>