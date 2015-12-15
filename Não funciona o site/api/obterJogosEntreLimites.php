<?php
   include_once('../config/init.php');
   include_once($BASE_DIR . "database/jogos.php");

   if (count($_GET) == 0)
      header("Location: " . $BASE_URL);

   $paginaActual = $_GET["pageNumber"];
   $maximo = $_GET["pageSize"];

   $from = ($paginaActual-1) * $maximo;

   $jogos = obterJogosEntreLimites($from, $maximo);
   echo json_encode($jogos);
?>
