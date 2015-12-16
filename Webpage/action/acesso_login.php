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
?>
