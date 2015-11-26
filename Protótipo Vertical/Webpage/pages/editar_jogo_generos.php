<?php
// DEFINIR NOME DA PAGINA
$nome_pagina[0] = "Editar Jogo";
$nome_pagina[1] = $_SERVER["REQUEST_URI"];

// INCLUIR CONFIGURACOES
include_once("../config/init.php");

// ACESSO A BASE DE DADOS
include_once('../database/jogos.php');
include_once('../database/generos.php');

// TRATAMENTO DE INFORMACAO
if (!isset($_GET['id']))
	header("Location:" . $BASE_URL . "pages/editar_jogo.php");

	
$id = $_GET['id'];

$jogo = obterJogoIndex($id)[0];
$generos = obterGenerosJogo($id);
if ($generos == false)
{
	header("Location: " . $BASE_URL . "pages/editar_jogo.php");
}

$todosGeneros = obterGeneros();

// INCLUIR HEADER
include_once($BASE_DIR . "pages/template/begin.php");
?>

<h1>Tarefas de Administrador do Sistema</h1>
<h4 class="text-primary">Editar Generos de um Jogo</h4>

<div class="row">
	<div class="col-sm-6">
		<div class="panel panel-default">
			<div class="panel-heading">
				Actuais
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
				Novos
			</div>
		
			<ul class="list-group">
				<li class="list-group-item">
					<div class="row">
						<div class="col-sm-2">
							<button id="remover" class="form-control btn btn-default">-</button>
						</div>
						<div class="col-sm-10">
							<select class="form-control">
								<?php
								foreach($todosGeneros as $genero)
								{
									?>
										<option><?php echo $genero['nome']; ?></option>
									<?php
								}
								?>
							</select>
						</div>
					</div>
				</li>
			</ul>
		</div>

		<div class="row">
			<div class="col-sm-2">
				<button id="adicionar" class="form-control btn btn-default">+</button>
			</div>
		</div>
   </div>
</div>

<div class="row">
	<div class="col-sm-2">
		<input type="submit" class="form-control btn btn-default" text="Guardar">
	</div>
</div>

<?php
include_once($BASE_DIR . "pages/template/end.php");
?>
