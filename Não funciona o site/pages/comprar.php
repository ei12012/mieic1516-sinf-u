<?php
// DEFINIR NOME DA PAGINA
$nome_pagina[0] = "Comprar";
$nome_pagina[1] = $_SERVER["REQUEST_URI"];

// INCLUIR CONFIGURACOES
include_once("../config/init.php");

// ACESSO A BASE DE DADOS
include_once($BASE_DIR . "database/jogos.php");

// TRATAMENTO DE INFORMACAO
if(!isset($_GET["idJogo"]))
	header("Location: " . $BASE_URL . "pages/carrinho.php");

$idCliente = $_SESSION["login"]["dados"]["id"];
$idPlataforma = $_GET["idPlataforma"];
$idJogo = $_GET["idJogo"];

$linkComprar = $BASE_URL . "action/comprar.php?idJogo=" . $idJogo . "&idPlataforma=" . $idPlataforma;

$jogo = obterJogoIndex($idJogo)[0];

// INCLUIR HEADER
include_once($BASE_DIR . "pages/template/begin.php");
?>

<h1>Confirmação de Compra</h1>

<div class="row">
	<div class="col-sm-6">
		<div class="panel panel-default">
			<ul class="list-group">
				<li class="list-group-item">
					<h4 class="list-group-item-heading">Nome</h4>
					<p class="list-group-item-text"><?php echo $jogo["nome"];?></p>
				</li>
				<li class="list-group-item">
					<h4 class="list-group-item-heading">Empresa</h4>
					<p class="list-group-item-text"><?php echo $jogo["empresa"];?></p>
				</li>
				<li class="list-group-item">
					<h4 class="list-group-item-heading">Ano Lançamento</h4>
					<p class="list-group-item-text"><?php echo $jogo["ano"];?></p>
				</li>

				<li class="list-group-item">
					<h4 class="list-group-item-heading">Idade Minima</h4>
					<p class="list-group-item-text">+<?php echo $jogo["idade"];?></p>
				</li>
			</ul>
		</div>

		<div class="panel panel-default">
			<ul class="list-group">
				<li class="list-group-item">
					<h4 class="list-group-item-heading">Preço</h4>
					<p class="list-group-item-text">59.99€</p>
				</li>
			</ul>
		</div>
	</div>
</div>

<div class="row">
	<div class="col-sm-3">
		<input data-toggle="modal" data-target="#comprar" type="submit" class="form-control btn btn-default" value="Comprar utilizando PayPal">
	</div>
</div>

<div id="comprar" class="modal fade" role="dialog">
	<form action="<?php echo $linkComprar;?>" method="post">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
				   <button type="button" class="close" data-dismiss="modal">&times;</button>
				   <h4 class="modal-title">
				      <span class="glyphicon glyphicon-signal"></span>
				      <span>Comprar utilizando PayPal</span>
				   </h4>
				</div>

				<div class="modal-body">
				   <p></p>
				</div>

				<div class="modal-footer">
					<button class="btn btn-success" type="submit"">Comprar</button>
					<button type="button" class="btn btn-danger" data-dismiss="modal">Cancelar</button>
				</div>
			</div>
		</div>
	</form>
</div>

<?php
include_once($BASE_DIR . "pages/template/end.php");
?>
