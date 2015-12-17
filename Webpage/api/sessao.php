<?php
	include_once('../config/init.php');

	echo json_encode($_SESSION["login"]["dados"]);
?>
