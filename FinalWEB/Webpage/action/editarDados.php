<?php
   include_once("../config/init.php");
   include_once($BASE_DIR . "database/clientes.php");
	include_once($BASE_DIR . "database/primavera/clientes.php");
   var_dump($_POST);

   if(count($_POST) == 0)
      header("Location: " . $BASE_URL);

   $pass1 = $_POST["password"];
   $pass2 = $_POST["password2"];

   $pass = sha1($pass1);
   $confirmar = sha1($pass2);

   if($pass == $confirmar)
   {
      $NomeCliente = $_POST["nome"];
      $sexo = $_POST["sexo"];

      $email = $_POST["email"];
      $contacto = $_POST["contacto"];
      $morada = $_POST["morada"];

      $utilizador = $_SESSION["login"]["dados"];

      $CodCliente = $utilizador->{"CodCliente"};
		$NIF = $utilizador->{"NumContribuinte"};

		imprimir($CodCliente);
		imprimir($NomeCliente);
      imprimir($NIF);
      imprimir($sexo);

      imprimir($email);
      imprimir($contacto);
      imprimir($morada);
      imprimir($pass1);
      
		$comparar = strtoupper($pass);
		
      if ($comparar == $utilizador->{"password"})
      {
           	
         $estado = editarCliente($CodCliente, $NomeCliente, $NIF, $Morada, $contacto, $email, $sexo, $pass1);
         var_dump($estado);
         die();
         
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
