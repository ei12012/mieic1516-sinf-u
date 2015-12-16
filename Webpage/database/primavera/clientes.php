<?php
	function obterClientes()
	{
		$json = file_get_contents("http://localhost:49822/api/clientes/");
		$lista = json_decode($json);
		return $lista;
	}

	function obterClienteEP($email, $password)
	{
		$json = file_get_contents("http://localhost:49822/api/acesso?email=" . $email . "&password=" . $password);
		$lista = json_decode($json);
		return $lista;
	}

	/*
		 {"CodCliente" : "C0001",
       "NomeCliente" : "Bruno Moreira",
       "NumContribuinte" : "111111111",
       "Morada" : "Rua A",
       "Moeda" : "EUR",
       "contacto" : "111111111",
       "email" : "ei12012@fe.up.pt",
       "sexo" : "M",
       "password" : "pass"
       }
	*/
	function editarCliente($CodCliente, $NomeCliente, $NIF, $Morada, $contacto, $email, $sexo, $password)
	{
		
		/*$dados = array(
				"CodCliente" => $CodCliente,
				"NomeCliente" => $NomeCliente,
				"NumContribuinte" => $NIF,
				"Morada" => $Morada,
				"Moeda" => "EUR",
				"contacto" => $contacto,
				"email" => $email,
				"sexo" => $sexo,
				"password" => $password
			);
		$postdata = http_build_query($dados);

		$header = array(
			"Content-Type: application/json"
		);

		$opts = array(
			"http" => array(
				"method" => "PUT",
				"header" => "Connection: close\r\n",
				"Content-type: application/x-www-form-urlencoded\r\n",
				"Content-Length: " . strlen($postdata) . "\r\n",
				"content" => $postdata
			)
		);

		$contexto = stream_context_create($opts);
		
		$json = file_get_contents("http://localhost:49822/api/acesso", false, $contexto);
		
		$lista = json_decode($json);
		return $lista;*/
	}
?>
