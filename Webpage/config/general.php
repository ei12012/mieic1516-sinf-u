<?php
   function imprimir($str)
   {
      echo $str; ?><br/><?php
   }

   function novalinha()
   {
      imprimir("");
   }

   function navegar($link)
   {
      header("Location: " . $BASE_URL . $link);
   }

   function voltarAnterior()
   {
      header("Location: " . $_SERVER['HTTP_REFERER']);
   }

   function definirMensagem($tipo, $msg)
   {
      $_SESSION["mensagens"]["tipo"] = $tipo;
      $_SESSION["mensagens"]["conteudo"] = $msg;
   }
?>
