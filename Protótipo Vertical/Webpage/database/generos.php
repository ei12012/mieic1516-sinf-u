<?php
   function obterGeneros()
   {
      $query = "
         SELECT *
         FROM Genero
      ";

      return executarSQL($query);
   }
?>
