<?php
   include_once("../config/init.php");
   include_once($BASE_DIR . "database/jogos.php");
	
   if (count($_POST) == 0)
      header("Location: " . $BASE_URL);

   $nomeJogo = $_POST['fim'];
   $codigo = $_POST['id'];
   $empresa = $_POST['empresa'];
   $ano = $_POST['ano'];
   $idade = $_POST['idade'];
   $preco = $_POST['preco'];

	//imprimir($codigo);
   //imprimir($nomeJogo);
   //imprimir($empresa);
   //imprimir($preco);
   //imprimir($idade);
   //imprimir($preco);

   
?>
