<?php
// DEFINIR NOME DA PAGINA
$nome_pagina[0] = "Recuperar";
$nome_pagina[1] = $_SERVER["REQUEST_URI"];

// INCLUIR CONFIGURACOES
include_once("../config/init.php");

// ACESSO A BASE DE DADOS
// ...

// TRATAMENTO DE INFORMACAO
// ...

// INCLUIR HEADER
include_once($BASE_DIR . "pages/template/begin.php");
?>

<h1>Recuperar</h1>

<div class="row">
   <div class="col-sm-6">
      <form role="form" id="formRegistar" action="<?php echo $BASE_URL;?>action/recuperar.php" method="post">
         <div class="form-group">
            <label for="nif">NIF</label>
            <input type="text" class="form-control" name="nif" id="nif" placeholder="nif" required>
         </div>

         <div class="form-group">
            <label for="emailRegisto">Email</label>
            <input type="email" class="form-control" name="email" id="email" placeholder="email" required>
         </div>

         <div class="row">
            <div class="col-sm-4">
               <button id="enviar" type="submit" class="btn btn-default btn-block">Enviar</button>
            </div>
         </div>
      </form>
   </div>
</div>

<?php
include_once($BASE_DIR . "pages/template/end.php");
?>
