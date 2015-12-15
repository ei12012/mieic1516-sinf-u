<?php
// DEFINIR NOME DA PAGINA
$nome_pagina[0] = "Carrinho";
$nome_pagina[1] = $_SERVER["REQUEST_URI"];

// INCLUIR CONFIGURACOES
include_once("../config/init.php");

// ACESSO A BASE DE DADOS
include_once($BASE_DIR . "database/jogos.php");

// TRATAMENTO DE INFORMACAO
$compras = obterCompras($_SESSION["login"]["dados"]["nif"]);

$carrinho = array();
$historico = array();
foreach($compras as $compra)
{
   if ( !isset($compra["dataComprado"]) )
   {
      $carrinho[] = $compra;
   }
   else
   {
      $historico[] = $compra;
   }
}

// INCLUIR HEADER
include_once($BASE_DIR . "pages/template/begin.php");
?>

<h1>Carrinho</h1>

<div class="row">
   <div class="col-sm-8">

      <ul class="nav nav-tabs">
         <li class="active"><a data-toggle="tab" href="#espera">Espera</a></li>
         <li><a data-toggle="tab" href="#historico">Histórico</a></li>
      </ul>


      <div class="tab-content">
         <br/>

         <div id="espera" class="tab-pane fade in active">
            <?php
            if (count($carrinho) != 0)
            {
               ?>
               <table class="table table-hover table-condensed">
                  <thead>
                     <tr>
                        <th>Jogo</th>
                        <th>Plataforma</th>
                        <th>Preço</th>
                        <th>Data adicionado</th>
                        <th></th>
                        <th></th>
                     </tr>
                  </thead>
                  <tbody>
                     <?php
                     foreach($carrinho as $compra)
                     {
                        $linkComprar = $BASE_URL . "pages/comprar.php?idJogo=" . $compra["idJogo"] . "&idPlataforma=" . $compra["idPlataforma"];
                        $linkRemover = $BASE_URL . "action/remover.php?idJogo=" . $compra["idJogo"] . "&idPlataforma=" . $compra["idPlataforma"];
                        ?>
                        <tr>
                           <td>
                              <?php
                              echo $compra["nomeJogo"];
                              ?>
                           </td>

                           <td>
                              <?php
                              echo $compra["nomePlataforma"];
                              ?>
                           </td>

                           <td>
                              <?php
                              echo $compra["preco"] . "€";
                              ?>
                           </td>

                           <td>
                              <?php
                              echo $compra["dataAdicionado"];
                              ?>
                           </td>

                           <td>
                              <a href="<?php echo $linkComprar;?>">
                                 Comprar
                              </a>
                           </td>

                           <td>
                              <a href="<?php echo $linkRemover;?>">
                                 Remover
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
            else
            {
               echo "(Nada apresentar)";
            }
            ?>
         </div>

         <div id="historico" class="tab-pane fade">
            <?php
            if (count($historico) != 0)
            {
               ?>
               <table class="table table-hover table-condensed">
                  <thead>
                     <tr>
                        <th>Jogo</th>
                        <th>Plataforma</th>
                        <th>Preço</th>
                        <th>Data adicionado</th>
                        <th>Data comprado</th>
                     </tr>
                  </thead>
                  <tbody>
                     <?php
                     foreach($historico as $compra)
                     {
                        ?>
                        <tr>
                           <td>
                              <?php
                              echo $compra["nomeJogo"];
                              ?>
                           </td>

                           <td>
                              <?php
                              echo $compra["nomePlataforma"];
                              ?>
                           </td>

                           <td>
                              <?php
                              echo $compra["preco"] . "€";
                              ?>
                           </td>

                           <td>
                              <?php
                              echo $compra["dataAdicionado"];
                              ?>
                           </td>

                           <td>
                              <?php
                              echo $compra["dataComprado"];
                              ?>
                           </td>
                        </tr>
                        <?php
                     }
                     ?>
                  </tbody>
               </table>
               <?php
            }
            else
            {
               echo "(Nada apresentar)";
            }
            ?>
         </div>
      </div>
   </div>

   <?php
   include_once($BASE_DIR . "pages/template/end.php");
   ?>
