<?php
	// var_dump($_SESSION["mensagens"]); imprimir("");
	if (isset($_SESSION["mensagens"]))
	{
		if ($nome_pagina[0] != "Acesso") // todas mensagens a apagar ao sair da pagina Acesso
		{
			if ($_SESSION["mensagens"]["conteudo"] == "Cliente não existe")
			{
				unset($_SESSION["mensagens"]);
			}

			if ($_SESSION["mensagens"]["conteudo"] == "Palavra-chave errada")
			{
				unset($_SESSION["mensagens"]);
			}
		}

		if ($nome_pagina[0] != "Jogo") // todas mensagens a apagar ao sair da pagina Acesso
		{
			if ($_SESSION["mensagens"]["conteudo"] == "Não foi possivel adicionar ao carrinho")
			{
				unset($_SESSION["mensagens"]);
			}

			if ($_SESSION["mensagens"]["conteudo"] == "Adicionado no carrinho com sucesso")
			{
				unset($_SESSION["mensagens"]);
			}
		}
	}

	// var_dump($_SESSION["mensagens"]); imprimir("");
?>
