<?php
	session_start();
	session_destroy();
	header('Location: http://localhost/Sekty/index.php');

?>