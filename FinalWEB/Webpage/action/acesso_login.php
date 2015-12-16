<?php
   include_once("../config/init.php");
   include_once($BASE_DIR . "database/clientes.php");
   include_once($BASE_DIR . "database/primavera/clientes.php");

   if (count($_GET) == 0)
      header("Location: " . $BASE_URL);

   unset($_SESSION["mensagens"]);

   $email = $_GET["email"];
   $password = $_GET["password"];
   $pass = sha1($_GET["password"]);

   if ($email == $adminLogin)
   {
      $passAdmin = sha1($adminPassword);

      if ($passAdmin == $pass) //palavra-chave correcta
      {
         $_SESSION["login"]["tipo"] = 1;
         header("Location: " . $BASE_URL);
      }
      else //palavra-chave errada
      {
         definirMensagem(1, "Palavra-chave errada");
         voltarAnterior();
      }
   }
   else
   {
      $cliente = obterClienteEP($email, $password);
      if ($cliente == false) //senao existir o cliente
      {
         definirMensagem(1, "Cliente não existe");
         voltarAnterior();
      }
      else
      {
         $_SESSION["login"]["tipo"] = 0;
         $_SESSION["login"]["dados"] = $cliente;
         header("Location: " . $BASE_URL);
      }
   }
?>
