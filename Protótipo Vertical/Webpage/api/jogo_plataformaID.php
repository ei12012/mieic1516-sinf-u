<?php
   include_once('../config/init.php');
   include_once($BASE_DIR . "database/jogos.php");

   $idJogo = $_GET["idJogo"];
   $idPlataforma = $_GET["idPlataforma"];

   $resultado = obterPlataformaJogo($idJogo, $idPlataforma);
   echo json_encode($resultado);
?>
