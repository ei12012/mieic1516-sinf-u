<?php
// DEFINIR NOME DA PAGINA
$nome_pagina[0] = "Editar Jogo";
$nome_pagina[1] = $_SERVER["REQUEST_URI"];

// INCLUIR CONFIGURACOES
include_once("../config/init.php");

// ACESSO A BASE DE DADOS
include_once('../database/jogos.php');

// TRATAMENTO DE INFORMACAO
if (isset($_GET['id']))
{
	$id = $_GET['id'];
	$jogo = obterJogoIndex($id)[0];

	$idiomasVoz = obterIdiomasJogoVoz($id);
	if ($idiomasVoz == false)
	{
		header("Location: " . $BASE_URL . "pages/editar_jogo.php");
	}

	$idiomasSubtitulo = obterIdiomasJogoSubtitulo($id);
	if ($idiomasSubtitulo == false)
	{
		header("Location: " . $BASE_URL . "pages/editar_jogo.php");
	}

	$plataformas = obterPlataformasJogo($id);
	if ($plataformas == false)
	{
		header("Location: " . $BASE_URL . "pages/editar_jogo.php");
	}

	$generos = obterGenerosJogo($id);
	if ($generos == false)
	{
		header("Location: " . $BASE_URL . "pages/editar_jogo.php");
	}

	$comentarios = obterComentariosJogo($id);
}
else
{
	$jogos = obterJogos();
}

// INCLUIR HEADER
include_once($BASE_DIR . "pages/template/begin.php");
?>

<h1>Tarefas de Administrador do Sistema</h1>
<h4 class="text-primary">Editar Jogo</h4>

<?php
	if (isset($jogo))
	{
		?>
			
		<ol class="breadcrumb">
			<li>
				<a href="<?php echo $BASE_URL;?>pages/editar_jogo_info.php?id=<?php echo $id;?>">
					Editar Informacao
				</a>
			</li>
			<li>
				<a href="<?php echo $BASE_URL;?>pages/editar_jogo_info.php?id=<?php echo $id;?>">
					Editar Generos
				</a>
			</li>
			<li>
				<a href="<?php echo $BASE_URL;?>pages/editar_jogo_info.php?id=<?php echo $id;?>">
					Editar Idiomas Voz
				</a>
			</li>
			<li>
				<a href="<?php echo $BASE_URL;?>pages/editar_jogo_info.php?id=<?php echo $id;?>">
					Editar Idiomas Subtitulo
				</a>
			</li>
		</ol>
			
			
			<form action="<?php echo $BASE_URL;?>action/editar_jogo.php?id=<?php echo $jogo['id'];?>" method="post" class="form">
			
				<h2><?php echo $jogo["nome"];?></h2>

				<div class="row">
					<div class="col-sm-4">
						<a href="<?php echo $BASE_URL;?>images/capas/<?php echo $id;?>.png">
							<img src="<?php echo $BASE_URL;?>images/capas/<?php echo $id;?>.png" class="img-thumbnail" alt="jogo" width="360" height="240"/>
						</a>

						<br/><br/>

						<div class="panel panel-default">
							<ul class="list-group">
								<li class="list-group-item">
								   <h4 class="list-group-item-heading">Visitas</h4>
								   <p class="list-group-item-text"><?php echo $jogo["visitas"];?></p>
								</li>
							</ul>
						</div>
					</div>

					<div class="col-sm-8">
						<ul class="nav nav-tabs">
							<li class="active"><a data-toggle="tab" href="#intro">Introdução</a></li>
							<li><a data-toggle="tab" href="#detalhes">Detalhes</a></li>
						</ul>

						<div class="tab-content">
							<br/>

							<div id="intro" class="tab-pane fade in active">
								<div class="panel panel-default">
								   <ul class="list-group">
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

								      <li class="list-group-item">
								         <h4 class="list-group-item-heading">Resumo</h4>
								         <p class="list-group-item-text"><?php echo $jogo["detalhes"];?></p>
								      </li>
								   </ul>
								</div>


							</div>

							<div id="detalhes" class="tab-pane fade">
								<div class="row">
								   <div class="col-sm-6">
								      <div class="panel panel-default">
								         <div class="panel-heading">
								            Plataforma
								         </div>

								         <ul class="list-group">
								            <?php
								            foreach($plataformas as $plataforma)
								            {
								               ?>
								               <li class="list-group-item">
								                  <?php
								                  echo $plataforma["nome"];
								                  ?>
								                  <span class="text-danger">
								                     <?php
								                     echo $plataforma["preco"] . "€";
								                     ?>
								                  </span>
								               </li>
								               <?php
								            }
								            ?>
								         </ul>
								      </div>

								      <div class="panel panel-default">
								         <div class="panel-heading">
								            Generos
								         </div>

								         <ul class="list-group">
								            <?php
								            foreach($generos as $genero)
								            {
								               ?>
								               <li class="list-group-item">
								                  <?php
								                  echo $genero["nome"];
								                  ?>
								               </li>
								               <?php
								            }
								            ?>
								         </ul>
								      </div>
								   </div>

								   <div class="col-sm-6">
								      <div class="panel panel-default">
								         <div class="panel-heading">
								            Voz
								         </div>

								         <ul class="list-group">
								            <?php
								            foreach($idiomasVoz as $idioma)
								            {
								               ?>
								               <li class="list-group-item">
								                  <?php
								                  echo $idioma["nome"];
								                  ?>
								               </li>
								               <?php
								            }
								            ?>
								         </ul>
								      </div>

								      <div class="panel panel-default">
								         <div class="panel-heading">
								            Subtitulos
								         </div>

								         <ul class="list-group">
								            <?php
								            foreach($idiomasSubtitulo as $idioma)
								            {
								               ?>
								               <li class="list-group-item">
								                  <?php
								                  echo $idioma["nome"];
								                  ?>
								               </li>
								               <?php
								            }
								            ?>
								         </ul>
								      </div>
								   </div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</form>
		<?php
	}
	else // escolher o jogo
	{
		?>
			<table class="table table-hover table-condensed">
				<thead>
					<tr>
						<th>Nome</th>
						<th>Empresa</th>
						<th>Ano Lancamento</th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<?php
						foreach($jogos as $arg)
						{
							?>
							<tr>
								<td>
									<?php
										echo $arg['nome'];
									?>
								</td>
								<td>
									<?php
										echo $arg['empresa'];
									?>
								</td>
								<td>
									<?php
										echo $arg['ano'];
									?>
								</td>
								<td>
									<a href="<?php echo$BASE_URL;?>pages/editar_jogo.php?id=<?php echo $arg['id'];?>">
										<span class="glyphicon glyphicon-edit"></span>
									</a>
								</td>
							</tr>
							<?php
						}
					?>
				</tbody>
			</table>
		<?php
	}
?>

<?php
include_once($BASE_DIR . "pages/template/end.php");
?>
