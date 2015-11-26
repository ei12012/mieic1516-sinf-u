<?php
// DEFINIR NOME DA PAGINA
$nome_pagina[0] = "Editar Dados";
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

<h1>Editar Dados</h1>
      <form role="form" action="<?php echo $BASE_URL;?>action/editarDados.php" method="post">
         <div class="row">
            <div class="col-sm-6">
               <!--<div class="form-group">
                  <label for="nif">NIF</label>
                  <input type="text" class="form-control" name="nif" id="nif" placeholder="nif" value="<?php echo $cliente["nif"];?>" required>
               </div>-->

               <div class="form-group">
                  <label for="nome">Nome Completo</label>
                  <input type="text" class="form-control" name="nome" id="nome" placeholder="nome" value="<?php echo $cliente["nome"];?>" required>
               </div>

               <div class="form-group">
                  <label for="sexo">Sexo</label>
                  <div class="radio">
                     <label class="radio-inline">
                        <input value="M" type="radio" name="sexo" <?php if($cliente["sexo"] == 'M')  echo "checked"; ?>>
                           Masculino
                        </input>
                     </label>
                     <label class="radio-inline">
                        <input value="F" type="radio" name="sexo" <?php if($cliente["sexo"] == 'F') echo "checked"; ?>>
                           Feminino
                        </input>
                     </label>
                  </div>
               </div>

               <div class="form-group">
                  <label for="email">Email</label>
                  <input type="email" class="form-control" name="email" id="email" placeholder="email" value="<?php echo $cliente["email"];?>"  required>
               </div>

               <div class="form-group">
                  <label for="contacto">Contacto</label>
                  <input type="number" class="form-control" name="contacto" id="contacto" placeholder="contacto" value="<?php echo $cliente["contacto"];?>" required>
               </div>

               <div class="form-group">
                  <label for="morada">Morada</label>
                  <input type="text" class="form-control" name="morada" id="morada" placeholder="morada" value="<?php echo $cliente["morada"];?>" required>
               </div>
            </div>

            <div class="col-sm-6">
               <div class="form-group">
                  <label for="password">Palavra-chave actual</label>
                  <input type="password" class="form-control" name="password" id="password" placeholder="password" required>
               </div>

               <div class="form-group">
                  <label for="password2">Confirmar palavra-chave actual</label>
                  <input type="password" class="form-control" name="password2" id="password2" placeholder="password" required>
               </div>

               <div class="row">
                  <div class="col-sm-4">
                     <button type="submit" class="btn btn-success btn-block">Guardar</button>
                  </div>
               </div>
            </div>
         </div>
      </form>
   </div>
</div>

<?php
include_once($BASE_DIR . "pages/template/end.php");
?>
