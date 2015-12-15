<?php
   // DEFINIR NOME DA PAGINA
   $nome_pagina[0] = "Jogos";
   $nome_pagina[1] = $_SERVER["REQUEST_URI"];

   // INCLUIR CONFIGURACOES
   include_once("../config/init.php");

   // ACESSO A BASE DE DADOS
   include_once($BASE_DIR . "database/jogos.php");
	include_once($BASE_DIR . "database/primavera/artigos.php");
	
   // TRATAMENTO DE INFORMACAO
   $jogos = obterJogos();
   $artigos = array();//obterArtigos();

   function apresentar($arg)
   {
   	global $BASE_URL;
   	echo "<div class='col-sm-4'>";
   		echo "<div class='panel panel-default'>";
   			echo "<ul class='list-group'>";
   				echo "<li class='list-group-item'>";
						echo "<img src=" . $BASE_URL . "images/capas/" . $arg->{'CodArtigo'} . ".png class='img-thumbnail' alt='jogo' width='360' height='240'/>";
						echo "<p></p>";
						echo "<h4 class='list-group-item-heading'>";
							echo "<a href=" . $BASE_URL . "pages/jogo.php?id=" . $arg->{'CodArtigo'} . ">";	
								echo $arg->{'Descricao'};
							echo "</a>";			
						echo "</h4>";
						echo "<p class='list-group-item-text'>" . round($arg->{'Preco'}, 2) . "</p>";				
					echo "</li>";	
				echo "</ul>";	
			echo "</div>";
		echo "</div>";	
   }

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
<div class="container">
	<?php
		for($index = 0; $index < count($artigos); $index++)
		{
			$artigo = $artigos[$index];
			$contador = $index % 3;

			if($contador == 0)
			{
				?>
					<div class="row">
						<?php apresentar($artigo);?>
				<?php
			}
			else if($contador == 1)
			{
				?>
						<?php apresentar($artigo);?>
				<?php
			}
			else
			{
				?>
						<?php apresentar($artigo);?>
					</div>
				<?php
			}
		}
	?>
</div>

<script src="<?php echo $BASE_URL;?>javascript/primavera/artigos.js"></script>

<?php
include_once($BASE_DIR . "pages/template/end.php");
?>
