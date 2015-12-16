<?php
	session_start();
	if (isset($_POST["session"]) && !empty($_POST["session"])) {
	    $_SESSION["login"]["tipo"] = 0;
    	$_SESSION["login"]["dados"]=json_decode($_POST['session']); 
    	echo "true";
	}else{  
	    $_SESSION["login"]["tipo"] = 1;
	    echo "false";
	}


?>