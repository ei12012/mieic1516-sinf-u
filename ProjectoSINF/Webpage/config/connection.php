<?php
	try
	{
		$text = "sqlite:/Users/Miguel Moreira/Documents/Webpages/ProjectoSINF/Database/dados.db";
		$basedados = new PDO($text);
		if ($basedados === false)
		{
			echo 'Conexao a base de dados falhou';
			die();
		}

		$basedados->setAttribute(PDO::ATTR_PERSISTENT, true);
		$basedados->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
		$basedados->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

		function executarSQL($query)
	   {
	      global $basedados;
	      try
	      {
	         $stmt = $basedados->prepare($query);
	         $stmt->execute();
				$res = $stmt->fetchAll();

	         return( $res );
	      }
	      catch (PDOException $e)
	      {
	         imprimir($e->getMessage());
	         return false;
	      }
	   }

	   function executarSQLArgumentos($query, $arg)
	   {
	      global $basedados;
	      try
	      {
	         $stmt = $basedados->prepare($query);
	         $stmt->execute($arg);
				$res = $stmt->fetchAll();

	         return( $res );
	      }
	      catch (PDOException $e)
	      {
	         imprimir($e->getMessage());
	         return false;
	      }
	   }

		/* Action: Insert, Delete, Update */
		function executarSQLAction($query)
	   {
	      global $basedados;
	      try
	      {
	         $stmt = $basedados->prepare($query);
	         $stmt->execute();

	         return( $stmt );
	      }
	      catch (PDOException $e)
	      {
	         imprimir($e->getMessage());
	         return false;
	      }
	   }

		function executarSQLActionArgumentos($query, $arg)
	   {
	      global $basedados;
	      try
	      {
	         $stmt = $basedados->prepare($query);
	         $stmt->execute($arg);

	         return( $stmt );
	      }
	      catch (PDOException $e)
	      {
	         imprimir($e->getMessage());
	         return false;
	      }
	   }
	}
	catch (PDOException $e)
	{
		echo 'PDOException: '; echo $e->getMessage();?><br/><?php
	}
?>
