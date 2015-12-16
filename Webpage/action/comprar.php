<?php
   include_once("../config/init.php");
   include_once($BASE_DIR . "database/jogos.php");

   $idJogo = $_GET["idJogo"];
   $idPlataforma = $_GET["idPlataforma"];
   $nifCliente = $_SESSION["login"]["dados"]->{"NomeCliente"};

   $estado = confirmarCompra($idJogo,$idPlataforma,$nifCliente);

   header("Location: " . $BASE_URL . "pages/carrinho.php");
?>
