<?php
	function obterCarrinho($cliente)
	{
		$json = file_get_contents("http://localhost:49822/api/carrinho?codcliente=".$cliente);
		$lista = json_decode($json);
		return $lista;
	}
?>
