<?php
// DEFINIR NOME DA PAGINA
$nome_pagina[0] = "Jogo";
$nome_pagina[1] = $_SERVER["REQUEST_URI"];

// INCLUIR CONFIGURACOES
include_once("../config/init.php");

// ACESSO A BASE DE DADOS
include_once($BASE_DIR . "database/jogos.php");

// TRATAMENTO DE INFORMACAO
if (!isset($_GET["id"]))
{
   header("Location: " . $BASE_URL . "pages/jogos.php");
}

$id = $_GET["id"];

$jogoAuxiliar = obterJogoIndex($id);
if ($jogoAuxiliar == false)
{
   header("Location: " . $BASE_URL . "pages/jogos.php");
}

$jogo = $jogoAuxiliar[0];

$idiomasVoz = obterIdiomasJogoVoz($id);
if ($idiomasVoz == false)
{
   header("Location: " . $BASE_URL . "pages/jogos.php");
}

$idiomasSubtitulo = obterIdiomasJogoSubtitulo($id);
if ($idiomasSubtitulo == false)
{
   header("Location: " . $BASE_URL . "pages/jogos.php");
}

$plataformas = obterPlataformasJogo($id);
if ($plataformas == false)
{
   header("Location: " . $BASE_URL . "pages/jogos.php");
}

$generos = obterGenerosJogo($id);
if ($generos == false)
{
   header("Location: " . $BASE_URL . "pages/jogos.php");
}

$comentarios = obterComentariosJogo($id);


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

<h1><?php echo $jogo["nome"];?></h1>

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
         <li><a data-toggle="tab" href="#comentarios">Comentários</a></li>
         <?php
            if (isset($_SESSION["login"]) && $_SESSION["login"]["tipo"] == 0)
            {
               ?>
                  <li><a data-toggle="tab" href="#compra">Compra</a></li>
               <?php
            }
         ?>
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

         <div id="comentarios" class="tab-pane fade">
            <?php
               if (count($comentarios) != 0)
               {
                  ?>
                  <div class="panel panel-default">
                     <ul class="list-group">
                        <?php
                        foreach($comentarios as $comentario)
                        {
                           ?>
                           <li class="list-group-item">
                              <h4 class="list-group-item-heading"><?php echo $comentario["email"];?> <span class="label label-primary"><?php echo $comentario["valor"];?></span></h4>
                              <p class="list-group-item-text"><?php echo $comentario["comentario"];?></p>
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

         <?php
         if (isset($_SESSION["login"]) && $_SESSION["login"]["tipo"] == 0)
         {
            ?>
            <div id="compra" class="tab-pane fade">
               <form  class="form-horizontal" role="form" action="#" method="post">
                  <div class="form-group">
                     <label for="plataforma">Plataforma</label>
                     <select id = "plataforma" name="plataforma" class = "form-control">
                        <?php
                        for ($i = 0; $i < count($plataformas); $i++)
                        {
                           $plataforma = $plataformas[$i];

                           if ($i == 0)
                           {
                              ?>
                              <option class="opcao" value="<?php echo $plataforma["id"]?>" selected>
                                 <?php echo $plataforma["nome"]?>
                              </option>
                              <?php
                           }
                           else
                           {
                              ?>
                              <option class="opcao" value="<?php echo $plataforma["id"]?>"><?php echo $plataforma["nome"]?></option>
                              <?php
                           }
                        }
                        ?>
                     </select>
                  </div>

                  <div class="form-group">
                     <label for="plataforma">Factura</label>
                     <div class="panel panel-default">
                        <ul class="list-group" id="fatura">

                        </ul>
                     </div>
                  </div>
               </form>

               <div class="row">
                  <div class="col-sm-2">
                     <!--<a id="facturaForm" href="#">-->
                     <button id="botao" class="btn btn-default btn-block">
                        <span class="glyphicon glyphicon-shopping-cart"></span>
                     </button>
                     <!--</a>-->
                  </div>
               </div>
            </div>
            <?php
         }
         ?>


      </div>
   </div>
</div>

<script src="<?php echo $BASE_URL;?>javascript/jogo.js"></script>

<?php
include_once($BASE_DIR . "pages/template/end.php");
?>
