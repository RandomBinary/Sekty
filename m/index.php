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
		<table border="0" cellspacing="0">
            <tbody>
                <tr>
                    <td style="margin:0;">
                        <?php include '../incl/topbar.php'; ?>
                    </td>
                </tr>
                <tr>
                    <td style="margin:0;">
                        <iframe width="800px" height="500px" src="http://jurassicworld.com" style="border:0;" name="main">
                        </iframe>
                    </td>
                </tr>
            </tbody>
        </table>
        <a href="http://bang.ru" target="main">klik</a>
	</body>

</html>