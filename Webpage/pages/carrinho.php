<?php
// DEFINIR NOME DA PAGINA
$nome_pagina[0] = "Carrinho";
$nome_pagina[1] = $_SERVER["REQUEST_URI"];

// INCLUIR CONFIGURACOES
include_once("../config/init.php");

// ACESSO A BASE DE DADOS
include_once($BASE_DIR . "database/jogos.php");

include_once($BASE_DIR . "database/primavera/carrinho.php");

// TRATAMENTO DE INFORMACAO
$compras = obterCarrinho($_SESSION["login"]["dados"]->{"CodCliente"});

$carrinho = array();
$historico = array();
foreach($compras as $compra)
{
   $compra= json_encode($compra);
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

<script src="../javascript/adicionarJogo.js"/></script>
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
                        $compra=json_decode($compra);
                        
                        $linkComprar = $BASE_URL . "pages/comprar.php?idJogo=" . $compra->{"artigo"};
                        $linkRemover = $BASE_URL . "action/remover.php?idJogo=" . $compra->{"artigo"};
                        ?>
                        <tr>
                           <td>
                              <?php
                              echo $compra->{"artigo"};
                              ?>
                           </td>

                           <td>
                              <?php
                              echo $compra->{"preco"} . "€";
                              ?>
                           </td>

                           <td>
                              <?php
                              echo $compra->{"adicionado"};
                              ?>
                           </td>

                           <td>
                              <a onclick='removerJogo(<?php echo json_encode($_SESSION[login][dados]->{'CodCliente'})?>,<?php echo json_encode($compra->{"artigo"})?>)'>
                                 Remover <?php
                              echo $compra->{"artigo"};
                              ?>
                              </a>
                           </td>
                        </tr>
                        <?php
                     }
                     ?>
                  </tbody>
               </table>


               <span id="msgCompra" style="visibility:hidden;color:red;font-size:2vw;">A comunicar a compra. Por favor, espere...</span></br>
               <button id="btnCompra" onclick='comprarArtigos(<?php echo json_encode($compras) ?>)'>Comprar</button></br>
               <span id="msgCompraEft" style="visibility:hidden;color:red;font-size:2vw;">Compra Efetuada</span></br>
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
