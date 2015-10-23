<?php
   // DEFINIR NOME DA PAGINA
   $nome_pagina[0] = "Jogos";
   $nome_pagina[1] = $_SERVER["REQUEST_URI"];

   // INCLUIR CONFIGURACOES
   include_once("../config/init.php");

   // ACESSO A BASE DE DADOS
   include_once($BASE_DIR . "database/jogos.php");

   // TRATAMENTO DE INFORMACAO
   $jogos = obterJogos();

   // INCLUIR HEADER
   include_once($BASE_DIR . "pages/template/begin.php");
?>

<h1>Jogos</h1>

<!--
<ul class="pager">
    <li><a href="#">Previous</a></li>
    <li><a href="#">Next</a></li>
  </ul>
-->


<div class="row">
   <div class="col-sm-2">
      <button id="mais" type="submit" class="btn btn-default btn-block">Próximo</button>
   </div>
   <div class="col-sm-2">
      <button id="menos" type="submit" class="btn btn-default btn-block">Anterior</button>
   </div>
</div>

<div class="row">
   <div class="col-sm-10">
      <p></p>
      <div class="resultados">

      </div>
   </div>
</div>

<script src="<?php echo $BASE_URL;?>javascript/jogos.js"></script>

<?php
include_once($BASE_DIR . "pages/template/end.php");
?>
