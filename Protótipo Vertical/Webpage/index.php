<?php
// DEFINIR NOME DA PAGINA
$nome_pagina[0] = "Home";
$nome_pagina[1] = $_SERVER["REQUEST_URI"];

// INCLUIR CONFIGURACOES
include_once("config/init.php");

// ACESSO A BASE DE DADOS
include_once($BASE_DIR . "database/jogos.php");

// TRATAMENTO DE INFORMACAO
$jogosVisitados = obterJogosMaisVisitados();
$jogosRecentes = obterJogosMaisRecentes();

// INCLUIR HEADER
include_once($BASE_DIR . "pages/template/begin.php");
?>

<div class="container">
	<h1>Rede de venda de Videojogos online</h1>
	<p>Dá-mos as boas-vindas ao nosso website. Passe o seu tempo e encontre o jogo que deseja.</p>
</div>

<div class="container">
	<div class="row">
		<div class="col-sm-4">
		   <div class="panel panel-default">
		      <div class="panel-heading">
		         Jogos + Visitados
		      </div>

		      <ul class="list-group">
		      	<?php
						foreach($jogosVisitados as $jogo)
						{
							?>
								<li class="list-group-item">
									<a href="<?php echo $BASE_URL;?>pages/jogo.php?id=<?php echo $jogo['id'];?>"><?php echo $jogo["nome"]; ?></a>
									<p><?php echo $jogo["visitas"]; ?> Visitas</p>
								</li>
							<?php
						}
		      	?>
		      </ul>
		   </div>
		</div>

		<div class="col-sm-4">
		   <div class="panel panel-default">
		      <div class="panel-heading">
		         Jogos + Recentes
		      </div>

		      <ul class="list-group">
		      	<?php
						foreach($jogosRecentes as $jogo)
						{
							?>
								<li class="list-group-item">
									<a href="<?php echo $BASE_URL;?>pages/jogo.php?id=<?php echo $jogo['id'];?>"><?php echo $jogo["nome"]; ?></a>
									<p>Ano <?php echo $jogo["ano"]; ?> </p>
								</li>
							<?php
						}
		      	?>
		      </ul>
		   </div>
		</div>

		<div class="col-sm-4">
		   <div class="panel panel-default">
		      <div class="panel-heading">
		         Jogos + Vendidos
		      </div>

		      <ul class="list-group">
		      	<li class="list-group-item">
						<a href="<?php echo $BASE_URL;?>pages/jogo.php?id=1">Grand Theft Auto V</a>
						<p>13 Unidades</p>
					</li>
					<li class="list-group-item">
						<a href="<?php echo $BASE_URL;?>pages/jogo.php?id=2">Final Fantasy XIV: A Realm Reborn</a>
						<p>12 Unidades</p>
					</li>
		      </ul>
		   </div>
		</div>
	</div>
</div>



<?php
include_once($BASE_DIR . "pages/template/end.php");
?>
