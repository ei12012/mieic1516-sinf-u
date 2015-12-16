<?php
	//if(count($_GET) == 0)
		//die();

	$json = file_get_contents("http://localhost:49822/api/artigos/");
	$lista = json_decode($json);
	var_dump($lista);
?>
