<?php
   function obterCliente($email)
   {
      $query = "
         SELECT *
         FROM Cliente
         WHERE
            email = ?
      ";

      return executarSQLArgumentos($query, array($email));
   }

   function actualizarCliente($nif, $nome, $sexo, $email, $contacto, $morada)
   {
      $query = "
         UPDATE Cliente
         SET
            nome = ?, sexo = ?, email = ?, contacto = ?, morada = ?
         WHERE
            nif = ?
      ";

      return (executarSQLActionArgumentos($query, array($nome, $sexo, $email, $contacto, $morada, $nif)));
   }
?>
