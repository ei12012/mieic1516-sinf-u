<?php
   include_once("../config/init.php");
   include_once($BASE_DIR . "database/jogos.php");

   //var_dump($_POST); novalinha();
   //var_dump($_GET);

   if(count($_POST) == 0)
      header("Location: " . $BASE_URL);

   $idJogo = $_POST["jogo"];
   $idPlataforma = $_POST["plataforma"];
   $nifCliente =  $_SESSION["login"]["dados"]["nif"];

   $resultado = inserirCarrinho($idJogo, $idPlataforma,$nifCliente);

   if ($resultado == false)
   {
      definirMensagem(1, "Não foi possivel adicionar ao carrinho");
   }
   else
   {
      definirMensagem(0, "Adicionado no carrinho com sucesso");
   }

   voltarAnterior();
?>
