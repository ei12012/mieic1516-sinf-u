<?php
   include_once('../config/init.php');
   include_once($BASE_DIR . "database/jogos.php");

   $nome = $_GET["nomePlataforma"];

   $res = obterJogosPlataforma($nome);
   echo json_encode($res);
?>
