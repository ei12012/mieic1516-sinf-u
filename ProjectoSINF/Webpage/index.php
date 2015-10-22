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
   <!-- -->
   <div class="col-sm-4">
      <div class="embed-responsive embed-responsive-16by9">
         <iframe class="embed-responsive-item" src="http://www.youtube.com/embed/dc5HY3KEqug?autoplay=0"></iframe>
      </div>

      <p></p>

      <div class="embed-responsive embed-responsive-16by9">
         <iframe class="embed-responsive-item" src="http://www.youtube.com/embed/VjZ5tgjPVfU?autoplay=0"></iframe>
      </div>
   </div>
   <div class="col-sm-4">
      <div class="embed-responsive embed-responsive-16by9">
         <iframe class="embed-responsive-item" src="http://www.youtube.com/embed/vCp5JLnd1Eo?autoplay=0"></iframe>
      </div>

      <p></p>

      <div class="embed-responsive embed-responsive-16by9">
         <iframe class="embed-responsive-item" src="http://www.youtube.com/embed/k2GMPVXLGbk?autoplay=0"></iframe>
      </div>
   </div>

   <div class="col-sm-4">
      <div class="embed-responsive embed-responsive-16by9">
         <iframe class="embed-responsive-item" src="http://www.youtube.com/embed/AFlL2pW6lY8?autoplay=0"></iframe>
      </div>

      <p></p>

      <div class="embed-responsive embed-responsive-16by9">
         <iframe class="embed-responsive-item" src="http://www.youtube.com/embed/MmB9b5njVbA?autoplay=0"></iframe>
      </div>
   </div>

</div>

<?php
include_once($BASE_DIR . "pages/template/end.php");
?>
