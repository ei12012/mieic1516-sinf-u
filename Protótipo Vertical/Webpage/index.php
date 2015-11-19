<?php
// DEFINIR NOME DA PAGINA
$nome_pagina[0] = "Home";
$nome_pagina[1] = $_SERVER["REQUEST_URI"];

// INCLUIR CONFIGURACOES
include_once("config/init.php");

// ACESSO A BASE DE DADOS
// ...

// TRATAMENTO DE INFORMACAO
// ...

// INCLUIR HEADER
include_once($BASE_DIR . "pages/template/begin.php");
?>

<div class="row">
   <div class="col-sm-7">
      <h1>Rede de venda de Videojogos online</h1>
   </div>
   <div class="col-sm-5">
      <div class="panel panel-default">
         <div class="panel-heading">
            Jogos + Visitados
         </div>

         <ul class="list-group">
            <li class="list-group-item">
               <a href="#">Grand Theft Auto VI (PS4)</a>
            </li>
            <li class="list-group-item">
               <a href="#">Pro Evolution Soccer 2016 (PS3)</a>
            </li>
         </ul>
      </div>
   </div>
</div>

<?php
include_once($BASE_DIR . "pages/template/end.php");
?>
