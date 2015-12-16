<?php
// DEFINIR NOME DA PAGINA
$nome_pagina[0] = "Conta";
$nome_pagina[1] = $_SERVER["REQUEST_URI"];

// INCLUIR CONFIGURACOES
include_once("../config/init.php");

// ACESSO A BASE DE DADOS
// ...

// TRATAMENTO DE INFORMACAO
$cliente = $_SESSION["login"]["dados"];

// INCLUIR HEADER
include_once($BASE_DIR . "pages/template/begin.php");
?>

<h1>Dados</h1>

<div class="row">
   <div class="col-sm-4">
      <div class="panel panel-default">
         <div class="panel-heading">
            Opções
         </div>

         <ul class="list-group">
            <li class="list-group-item">
               <a href="<?php echo $BASE_URL;?>pages/editarDados.php">Editar dados</a>
            </li>
         </ul>
      </div>
   </div>

   <div class="col-sm-8">
      <div class="panel panel-default">
         <ul class="list-group">
            <li class="list-group-item">
               <h4 class="list-group-item-heading">Nome do Cliente</h4>
               <p class="list-group-item-text"><?php echo $cliente->{"NomeCliente"};?></p>
            </li>
            <li class="list-group-item">
               <h4 class="list-group-item-heading">NIF</h4>
               <p class="list-group-item-text"><?php echo $cliente->{"NumContribuinte"};?></p>
            </li>
            <li class="list-group-item">
               <h4 class="list-group-item-heading">Sexo</h4>
               <p class="list-group-item-text"><?php echo ($cliente->{"sexo"} == 'M' ? "Masculino" : "Feminino");?></p>
            </li>
         </ul>
      </div>

      <div class="panel panel-default">
         <ul class="list-group">
            <li class="list-group-item">
               <h4 class="list-group-item-heading">Email</h4>
               <p class="list-group-item-text"><?php echo $cliente->{"email"};?></p>
            </li>
            <li class="list-group-item">
               <h4 class="list-group-item-heading">Contacto</h4>
               <p class="list-group-item-text"><?php echo $cliente->{"contacto"};?></p>
            </li>
            <li class="list-group-item">
               <h4 class="list-group-item-heading">Morada</h4>
               <p class="list-group-item-text"><?php echo $cliente->{"Morada"};?></p>
            </li>
         </ul>
      </div>
   </div>
</div>

<?php
include_once($BASE_DIR . "pages/template/end.php");
?>
