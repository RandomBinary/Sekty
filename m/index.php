<!DOCTYPE html>
<?php 
    session_start();
    if(!isset($_SESSION['nick'])){
        header("Location:../index.php");
    }
    unset($_SESSION['error']);
    include_once '../incl/sql.php';
    include_once '../incl/utils.php';
    $user = getUserInfo($link, $_SESSION['nick']);
?>
<html lang="Sex,drugs and rock'n'roll">

	<head>
		<meta charset="utf-8"/>
		<link rel="stylesheet" type="text/css" href="img/css.css" />
		<title>Sekty - <?php echo $_SESSION['nick'] ?></title>
	</head>
	<body>
		<table border="0" class="topbar">
            <tbody><tr>
                <Td class="user">
                    <table>
                        <td>
                            <?php echo "<img src=\"" . $user['avatar'] . "\" alt=\"Twój avatar.\" class=\"avatar\">"; ?>
                        </td>
                        <Td>
                            <?php echo "<strong>" . $user['nick'] . "</strong>"; ?><br>
                            Cycki: 5
                        </Td>
                    </table>
                </Td>
                <Td class="menu">
                    <a href="logout.php"><img src="img/logout.gif" alt="Wyloguj się"></a>
                </Td>
            </tr></tbody>
        </table>
	</body>

</html>