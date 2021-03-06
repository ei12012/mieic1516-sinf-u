<?php
// DEFINIR NOME DA PAGINA
$nome_pagina[0] = "Tarefas";
$nome_pagina[1] = $_SERVER["REQUEST_URI"];

// INCLUIR CONFIGURACOES
include_once("../config/init.php");

// ACESSO A BASE DE DADOS
// ...

// TRATAMENTO DE INFORMACAO
// ...

// INCLUIR HEADER
include_once($BASE_DIR . "pages/template/begin.php");
?>

<div class="container">
	<div class="col-sm-4">
		<h4 class="text-primary">Gestão de Jogos</h4>
		<form action = "<?php echo $BASE_URL;?>pages/adicionar_jogo.php" method="get" class="form" id="formLogin" >
			<input type="submit" class="btn btn-primary btn-block" value="Adicionar Jogo"/>
		</form>
		<br/>
		<form action = "<?php echo $BASE_URL;?>pages/editar_jogo.php" method="get" class="form" id="formLogin" >
			<input type="submit" class="btn btn-success btn-block" value="Editar Jogo"/>
		</form>
	</div>
</div>

<?php
include_once($BASE_DIR . "pages/template/end.php");
?>
