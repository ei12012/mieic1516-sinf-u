function editarCliente(CodCliente, NomeCliente, NIF, Morada, contacto, email, sexo, password)
{
	var link = "http://localhost:" + portaPrimavera + "/api/clientes/";
	var dados = array(
				"CodCliente" : CodCliente,
				"NomeCliente" : NomeCliente,
				"NumContribuinte" : NIF,
				"Morada" : Morada,
				"Moeda" : "EUR",
				"contacto" : contacto,
				"email" : email,
				"sexo" : sexo,
				"password" : password
			);
			
	$.ajax({
       type: "PUT",
       url: link,
       data: dados,
       dataType: "json"
   }).done(function(suc){
		console.log(suc);
   });
}
