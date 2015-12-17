<?php
// DEFINIR NOME DA PAGINA
$nome_pagina[0] = "Home";
$nome_pagina[1] = $_SERVER["REQUEST_URI"];

// INCLUIR CONFIGURACOES
include_once("config/init.php");

// ACESSO A BASE DE DADOS
//include_once($BASE_DIR . "database/jogos.php");
include_once($BASE_DIR . "database/primavera/artigos.php");

// TRATAMENTO DE INFORMACAO
$jogosVisitados = obterArtigosVisitados();
$jogosRecentes = obterArtigosRecentes();

// INCLUIR HEADER
include_once($BASE_DIR . "pages/template/begin.php");

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
					echo "<p class='list-group-item-text'>" . round($arg->{'Preco'}, 2) . "€</p>";				
				echo "</li>";	
			echo "</ul>";	
		echo "</div>";
	echo "</div>";	
}
?>

<div class="container">
	<h1>Rede de venda de Videojogos online</h1>
	<p>Dá-mos as boas-vindas ao nosso website. Passe o seu tempo e encontre o jogo que deseja.</p>
</div>

<div class="container">
	<h2 class="text-primary">Visitados</h2>
	<?php
		for($index = 0; $index < count($jogosVisitados) && $index < 3; $index++)
		{
			$artigo = $jogosVisitados[$index];
			apresentar($artigo);
		}
	?>
</div>

<div class="container">
	<h2 class="text-primary">Recentes</h2>
	<?php
		for($index = 0; $index < count($jogosRecentes) && $index < 3; $index++)
		{
			$artigo = $jogosRecentes[$index];
			apresentar($artigo);
		}
	?>
</div>

<?php
include_once($BASE_DIR . "pages/template/end.php");
?>
