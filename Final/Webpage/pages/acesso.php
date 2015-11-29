<?php
// DEFINIR NOME DA PAGINA
$nome_pagina[0] = "Acesso";
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

<h1>Acesso</h1>

<div class="row">
   <div class="col-sm-6">
      <form role="form" id="formEntrar" action="<?php echo $BASE_URL;?>action/acesso_login.php">
         <h3 class="text-primary">Entrar</h3>
         <div class="form-group">
            <label for="email">Email</label>
            <input pattern="*@*" name="email" type="email" class="form-control" id="email" placeholder="email" required>
         </div>

         <div class="form-group">
            <label for="pwd">Palavra-chave</label>
            <input type="password" class="form-control" name="password" id="password" placeholder="password" required>
         </div>

         <div class="form-group row">
            <div class="col-sm-4">
               <button id="entrar" type="submit" class="btn btn-default btn-block">Entrar</button>
            </div>
         </div>

         <a href="<?php echo $BASE_URL;?>pages/recuperar.php">Recuperar palavra-chave</a>
      </form>
   </div>

   <div class="col-sm-6">
      <form role="form" id="formRegistar" action="<?php echo $BASE_URL;?>action/acesso_registar.php" method="post">
         <h3 class="text-primary">Registar</h3>
         <div class="form-group">
            <label for="nif">NIF</label>
            <input type="text" class="form-control" name="nif" id="nif" placeholder="nif" required>
         </div>

         <div class="form-group">
            <label for="nome">Nome Completo</label>
            <input type="text" class="form-control" name="nome" id="nome" placeholder="nome" required>
         </div>

         <div class="form-group">
            <label for="sexo">Sexo</label>
            <div class="radio">
               <label class="radio-inline">
                  <input type="radio" name="sexo" checked>
                     Masculino
                  </input>
               </label>
               <label class="radio-inline">
                  <input type="radio" name="sexo">
                     Feminino
                  </input>
               </label>
            </div>
         </div>

         <div class="form-group">
            <label for="emailRegisto">Email</label>
            <input type="email" class="form-control" name="emailRegisto" id="emailRegisto" placeholder="email" required>
         </div>

         <div class="form-group">
            <label for="contacto">Contacto</label>
            <input type="number" class="form-control" name="contacto" id="contacto" placeholder="contacto" required>
         </div>

         <div class="form-group">
            <label for="morada">Morada</label>
            <input type="text" class="form-control" name="morada" id="morada" placeholder="morada" required>
         </div>

         <div class="form-group">
            <label for="passwordRegistar">Palavra-chave</label>
            <input type="password" class="form-control" name="passwordRegistar" id="passwordRegistar" placeholder="password" required>
         </div>

         <div class="row">
            <div class="col-sm-4">
               <button id="registar" type="submit" class="btn btn-default btn-block">Registar</button>
            </div>
         </div>
      </form>
   </div>
</div>

<script src="<?php echo $BASE_URL;?>javascript/registar.js"></script>

<?php
include_once($BASE_DIR . "pages/template/end.php");
?>
