<?php
   include_once("../config/init.php");
   include_once($BASE_DIR . "database/clientes.php");

   //var_dump($_POST);

   if(count($_POST) == 0)
      header("Location: " . $BASE_URL);

   $pass1 = $_POST["password"];
   $pass2 = $_POST["password2"];

   $pass = sha1($pass1);
   $confirmar = sha1($pass2);

   if($pass == $confirmar)
   {
      //$nif = $_POST["nif"];
      $nome = $_POST["nome"];
      $sexo = $_POST["sexo"];

      $email = $_POST["email"];
      $contacto = $_POST["contacto"];
      $morada = $_POST["morada"];

      $utilizador = $_SESSION["login"]["dados"];

      //imprimir($nif);
      imprimir($utilizador["nif"]);
      imprimir($nome);
      imprimir($sexo);

      imprimir($email);
      imprimir($contacto);
      imprimir($morada);

      if ($pass == $utilizador["password"])
      {
         $estado = actualizarCliente($utilizador["nif"], $nome, $sexo, $email, $contacto, $morada);
         var_dump($estado);
         //die();
         if($estado == false)
         {
            definirMensagem(1, "Dados não actualizados");
         }
         else
         {
            definirMensagem(0, "Dados actualizados com sucesso");
            $cliente = obterCliente($email);
            $_SESSION["login"]["dados"] = $cliente[0];
         }
      }
      else
      {
         definirMensagem(1, "Palavra-chave errada");
      }
   }
   else
   {
      definirMensagem(1, "Palavra-chave de confirmação não combina com a palavra-chave inicial");
   }

   voltarAnterior();
?>
