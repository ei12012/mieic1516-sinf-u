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

<div class="row">
</div>

<?php
include_once($BASE_DIR . "pages/template/end.php");
?>
