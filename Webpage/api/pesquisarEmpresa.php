<?php
   include_once('../config/init.php');
   include_once($BASE_DIR . "database/jogos.php");

   $nome = $_GET["nomeEmpresa"];

   $res = obterJogosEmpresa($nome);
   echo json_encode($res);
?>
