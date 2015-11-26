<?php
   include_once('../config/init.php');
   include_once($BASE_DIR . "database/jogos.php");

   $total = obterNumeroJogos()[0]["total"];
   echo json_encode($total);
?>
