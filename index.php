<!DOCTYPE html>
<?php 			session_start(); ?>
<html lang="Sex,drugs and rock'n'roll">

	<head>
		<meta charset="utf-8"/>
		<link rel="stylesheet" type="text/css" href="css.css" />
		<title>Sekty - Załóż swoją sektę i zabij księdza.</title>
	</head>
	<body>
		<h1>Witaj na Sekty.ugu.pl!</h1>
		<h2>Zaloguj się:</h2>
        <form action="login.php" method="post">
            Nick: <input name="username" type="text" /><br/>
            Hasło: <input name="pass" type="password" /><br/>
            <input type="submit" value="Zaloguj"/>
        </form>
        <?php 
            if(isset($_SESSION['error'])){
					
                echo "<span class=\"error\">" . $_SESSION['error'] . "</span>";
                unset($_SESSION['error']);
                    
            }
        ?>
        <br/>	
        <h2>Zarejestruj się:</h2>
        <form action="reg.php" method="post">
            Nick: <input name="username" type="text" placeholder="Zabijacz księdza 666" /><br/>
            E-mail: <input name="mail" type="text" /><br/>
            Hasło: <input name="pass" type="password" /><br/>
            <input type="submit" value="Zarejestruj"/>
        </form>
	</body>

</html>