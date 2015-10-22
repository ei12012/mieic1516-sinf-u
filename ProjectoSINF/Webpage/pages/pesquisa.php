<?php
// DEFINIR NOME DA PAGINA
$nome_pagina[0] = "Home";
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

<h1>Pesquisa</h1>

<div class="row">
   <div class="col-sm-4">
      <select id = "campo" name="campo" class = "form-control">
         <option class="opcao" value="Plataforma" selected>Plataforma</option>
         <option class="opcao" value="Jogo">Jogo</option>
         <option class="opcao" value="Empresa">Empresa</option>
      </select>
      <br/>
      <div class="form-group input-group">
         <input id="arg" type="text" class="form-control" placeholder="pesquisar" required>
         <span class="input-group-btn">
            <button id="btnPesquisar" class="btn btn-default" type="submit">Pesquisar</button>
         </span>
      </div>
   </div>
   <div id="pesquisar" class="col-sm-8">

   </div>
</div>

<script src="<?php echo $BASE_URL;?>javascript/pesquisa.js"></script>

<?php
include_once($BASE_DIR . "pages/template/end.php");
?>
