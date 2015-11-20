<?php
// DEFINIR NOME DA PAGINA
$nome_pagina[0] = "Adicionar Jogo";
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

<h1>Adicionar Jogo</h1>

<div class="row">
	<div class="col-md-6">
		<form role="form" id="formEntrar" action="<?php echo $BASE_URL;?>action/acesso_login.php">
		   
		   
		   <div class="form-group">
		      <label for="id">ID do Jogo</label>
		      <input name="id" type="text" class="form-control" id="id" placeholder="id" required>
		   </div>
		   
		   <div class="form-group">
		      <label for="nome">Nome do Jogo</label>
		      <input name="nome" type="text" class="form-control" id="nome" placeholder="nome" required>
		   </div>

		   <div class="form-group">
		      <label for="plataforma">Plataforma do Jogo</label>
		      <input name="plataforma" type="text" class="form-control" id="plataforma" placeholder="plataforma" required>
		   </div>
		   
		   <div class="form-group">
		      <label for="empresa">Empresa do Jogo</label>
		      <input name="empresa" type="text" class="form-control" id="empresa" placeholder="empresa" required>
		   </div>
		   
		   <div class="form-group">
		      <label for="ano">Ano Lançamento</label>
		      <input name="ano" type="number" class="form-control" id="ano" placeholder="ano" required>
		   </div>
		   
		   <div class="form-group">
		      <label for="idade">Idade Minima</label>
		      <input name="idade" type="number" class="form-control" id="idade" placeholder="idade" required>
		   </div>
		   
		   
		   <div class="form-group">
		      <label for="preco">Preço</label>
		      <input name="preco" type="text" class="form-control" id="preco" placeholder="preco" required>
		   </div>
		   
		   

		   <div class="form-group row">
		      <div class="col-sm-4">
		         <button id="entrar" type="submit" class="btn btn-default btn-block">Registar</button>
		      </div>
		   </div>

		   <a href="<?php echo $BASE_URL;?>pages/recuperar.php">Recuperar palavra-chave</a>
		</form>
	</div>
</div>

<?php
include_once($BASE_DIR . "pages/template/end.php");
?>
