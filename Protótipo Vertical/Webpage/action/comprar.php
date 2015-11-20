<?php
   include_once("../config/init.php");
   include_once($BASE_DIR . "database/jogos.php");

   $idJogo = $_GET["idJogo"];
   $idPlataforma = $_GET["idPlataforma"];
   $nifCliente = $_SESSION["login"]["dados"]["nif"];

   $estado = confirmarCompra($idJogo,$idPlataforma,$nifCliente);

   voltarAnterior();
?>
