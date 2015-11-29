<?php
   include_once("../config/init.php");
   include_once($BASE_DIR . "database/clientes.php");

   if (count($_POST) == 0)
      header("Location: " . $BASE_URL);

   
?>
