<?php
// DEFINIR NOME DA PAGINA
$nome_pagina[0] = "Adicionar Jogo";
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

<h1>Adicionar Jogo</h1>


<form role="form" action="<?php echo $BASE_URL;?>action/adicionar_jogo.php" method="post">
   <div class="row">
      <div class="col-sm-6">
         <div class="form-group">
		      <label for="id">ID do Jogo [ex: A0010]</label>
		      <input pattern="[A].{4,}"name="id" type="text" class="form-control" id="id" placeholder="id" value="A0010" required>
		   </div>

        <div class="form-group">
		      <label for="nome">Nome do Jogo</label>
		      <input name="nome" type="text" class="form-control" id="nome" placeholder="nome" required>
		   </div>

         <div class="form-group">
		      <label for="plataforma">Plataforma do Jogo</label>
		      <input name="plataforma" type="text" class="form-control" id="plataforma" placeholder="plataforma" required>
		   </div>

          <div class="form-group">
		      <label for="empresa">Empresa do Jogo</label>
		      <input name="empresa" type="text" class="form-control" id="empresa" placeholder="empresa" required>
		   </div>
      </div>

      <div class="col-sm-6">
         <div class="form-group">
		      <label for="ano">Ano Lançamento</label>
		      <input name="ano" type="number" class="form-control" id="ano" placeholder="ano" required>
		   </div>
		   
		   <div class="form-group">
		      <label for="idade">Idade Minima</label>
		      <input name="idade" type="number" class="form-control" id="idade" placeholder="idade" required>
		   </div>
		   
		   <div class="form-group">
		      <label for="preco">Preço</label>
		      <input name="preco" type="text" class="form-control" id="preco" placeholder="preco" required>
		   </div>

		   <div class="form-group">
		      <label for="fim">Nome a registar</label>
		      <input name="fim" type="text" class="form-control" id="fim" disabled required>
		      <!--<p id="fim" name=""> </p>-->
		   </div>
      </div>
   </div>
	
   <div class="form-group row">
      <div class="col-sm-4">
      	<hr>
      	<!--<p id="fim"></p>-->
         <button id="entrar" type="submit" class="btn btn-default btn-block">Registar</button>
      </div>
   </div>
</form>

<script>
	$("form").submit(function(){
		$("#fim").prop("disabled", false);
		
		return true;
	});

	$("form #nome").on('change keydown paste input', function(){
		
		var x = $("form #nome").val();
		var y = $("form #plataforma").val();

		if(y != "")
			$("#fim").val(x + " (" + y + ")");
		else
			$("#fim").val(x);
	});

	$("form #plataforma").on('change keydown paste input', function(){
		
		var x = $("form #nome").val();
		var y = $("form #plataforma").val();

		if(y != "")
			$("#fim").val(x + " (" + y + ")");
		else
			$("#fim").val(x);
	});
</script>

<?php
include_once($BASE_DIR . "pages/template/end.php");
?>
