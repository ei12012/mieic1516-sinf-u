<?php
	function obterArtigos()
	{
		$json = file_get_contents("http://localhost:49822/api/artigos/");
		$lista = json_decode($json);
		return $lista;
	}

	function obterArtigosVisitados()

	{
		$json = file_get_contents("http://localhost:49822/api/favoritos/");
		$lista = json_decode($json);
		return $lista;
	}

	function obterArtigosRecentes()

	{
		$json = file_get_contents("http://localhost:49822/api/inicio/");
		$lista = json_decode($json);
		return $lista;
	}

	function obterArtigo($CodArtigo)
	{
		$json = file_get_contents("http://localhost:49822/api/artigos/" . $CodArtigo);
		$lista = json_decode($json);
		return $lista;
	}

	function obterGenerosArtigo($CodArtigo)
	{
		$json = file_get_contents("http://localhost:49822/api/generos?codArtigo=" . $CodArtigo);
		$lista = json_decode($json);
		return $lista;
	}

	function obterIdiomasArtigo($CodArtigo)
	{
		$json = file_get_contents("http://localhost:49822/api/idiomas?codArtigo=" . $CodArtigo);
		$lista = json_decode($json);
		return $lista;
	}

	function obterClassificacoesArtigo($CodArtigo)
	{
		$json = file_get_contents("http://localhost:49822/api/classificacao?codArtigo=" . $CodArtigo);
		$lista = json_decode($json);
		return $lista;
	}
?>
