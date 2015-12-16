<?php
// DEFINIR NOME DA PAGINA
$nome_pagina[0] = "Jogo";
$nome_pagina[1] = $_SERVER["REQUEST_URI"];

// INCLUIR CONFIGURACOES
include_once("../config/init.php");

// ACESSO A BASE DE DADOS
include_once($BASE_DIR . "database/jogos.php");
include_once($BASE_DIR . "database/primavera/artigos.php");

// TRATAMENTO DE INFORMACAO
if (!isset($_GET["id"]))
{
   header("Location: " . $BASE_URL . "pages/jogos.php");
}

$id = $_GET["id"];
$artigo = obterArtigo($id);

if($artigo == null)
	header("Location: " . $BASE_URL . "pages/jogos.php");

$generos = obterGenerosArtigo($id);
$idiomas = obterIdiomasArtigo($id);
$classificacoes = obterClassificacoesArtigo($id);

$idiomasVoz = array();
$idiomasSubtitulo = array();

for($i = 0; $i < count($idiomas); $i++)
{
	$idioma = $idiomas[$i];
	if($idioma->{"Tipo"} == "Voz")
	{
		array_push($idiomasVoz, $idioma);
	}
	else
	{
		array_push($idiomasSubtitulo, $idioma);
	}
}

// INCLUIR HEADER
include_once($BASE_DIR . "pages/template/begin.php");
?>

<?php
   if (isset($_SESSION["mensagens"]))
   {
      if ($_SESSION["mensagens"]["tipo"] == 0) // correcto
      {
         ?>
            <div class="alert alert-success">
               <?php
                  echo $_SESSION["mensagens"]["conteudo"];
               ?>
            </div>
         <?php
      }
      else if ($_SESSION["mensagens"]["tipo"] == 1) // erro
      {
         ?>
            <div class="alert alert-danger">
               <?php
                  echo $_SESSION["mensagens"]["conteudo"];
               ?>
            </div>
         <?php
      }
   }
?>

<h1>
	<?php
		if (isset($_SESSION["login"]) && $_SESSION["login"]["tipo"] == 0)
		{
			?>
			
				<a href="<?php echo $BASE_URL;?>action/jogo_adicionar.php">
					<span class="glyphicon glyphicon-shopping-cart text-danger"></span>
				</a>
			<?php
		}
	?>
	<?php echo $artigo->{"Descricao"};?> 
	<small class="text-primary"><?php echo round($artigo->{'Preco'}, 2);?>€</small>
</h1>

<div class="row">
   <div class="col-sm-4">
      <a href="<?php echo $BASE_URL;?>images/capas/<?php echo $id;?>.png">
         <img src="<?php echo $BASE_URL;?>images/capas/<?php echo $id;?>.png" class="img-thumbnail" alt="jogo" width="360" height="240"/>
      </a>

      <br/><br/>

      <div class="panel panel-default">
         <ul class="list-group">
            <li class="list-group-item">
               <h4 class="list-group-item-heading">Stock</h4>
               <p class="list-group-item-text"><?php echo $artigo->{"Stock"};?></p>
            </li>
            <li class="list-group-item">
            	<h4 class="list-group-item-heading">Visitas</h4>
               <p class="list-group-item-text"><?php echo $artigo->{"Visitas"};?></p>
            </li>
         </ul>
      </div>
   </div>

   <div class="col-sm-8">
      <ul class="nav nav-tabs">
      	<li class="active"><a data-toggle="tab" href="#intro">Introdução</a></li>
      	<li><a data-toggle="tab" href="#detalhes">Detalhes</a></li>
      	<li><a data-toggle="tab" href="#comentarios">Comentários</a></li>
      </ul>

      <div class="tab-content">
         <br/>

         <div id="intro" class="tab-pane fade in active">
            <div class="panel panel-default">
               <ul class="list-group">
                  <li class="list-group-item">
                     <h4 class="list-group-item-heading">Empresa</h4>
                     <p class="list-group-item-text"><?php echo $artigo->{"Empresa"};?></p>
                  </li>

                  <li class="list-group-item">
                     <h4 class="list-group-item-heading">Ano Lançamento</h4>
                     <p class="list-group-item-text"><?php echo $artigo->{"Ano"};?></p>
                  </li>

                  <li class="list-group-item">
                     <h4 class="list-group-item-heading">Idade Minima</h4>
                     <p class="list-group-item-text">+<?php echo $artigo->{"Idade"};?></p>
                  </li>
               </ul>
            </div>
         </div>
		
         <div id="detalhes" class="tab-pane fade">
            <div class="row">
               <div class="col-sm-6">
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
                              echo $genero->{"Nome"};
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
                              echo $idioma->{"Nome"};
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
                              echo $idioma->{"Nome"};
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
			
         <div id="comentarios" class="tab-pane fade">
            <?php
               if (count($classificacoes) != 0)
               {
                  ?>
                  <div class="panel panel-default">
                     <ul class="list-group">
                        <?php
                        foreach($classificacoes as $class)
                        {
                           ?>
                           <li class="list-group-item">
                              <h4 class="list-group-item-heading"><?php echo $class->{"nomeCliente"};?> <span class="label label-primary"><?php echo $class->{"valor"};?></span></h4>
                              <p class="list-group-item-text"><?php echo $class->{"comentario"};?></p>
                           </li>
                           <?php
                        }
                     ?>
                     </ul>
                  </div>
                  <?php
               }
               else
               {

               }
            ?>
         </div>
         
      </div>
   </div>
</div>

<script src="<?php echo $BASE_URL;?>javascript/jogo.js"></script>

<?php
include_once($BASE_DIR . "pages/template/end.php");
?>
