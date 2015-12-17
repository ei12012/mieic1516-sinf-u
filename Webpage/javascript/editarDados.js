var CodCliente2 = "";
var NIF = 0;

$( document ).ready(function() {
   var link = window.location.href;
   var fx1 = $.getJSON( BASE_URL + "api/sessao.php", function() { })
   .done(function(data) {
		CodCliente2 = data.CodCliente;
		NIF = data.NumContribuinte;
   });
});

function actualizarSucesso(data)
{
	alert("Utilizador Registado. Entre na sua conta");
	//document.location.href="";
}

function actualizarError(request, error)
{
	alert("O utilizador já existe");
}

$("#formActualizar").submit(function(){
	var snome = $("#formActualizar #nome").val();	
	var ssexo = $("#formActualizar input[type='radio']:checked")[0].value;
	var smorada = $("#formActualizar #morada").val();
	var stelefone = $("#formActualizar #contacto").val();
	
	var semail = $("#formActualizar #email").val();
	var spassword = $("#formActualizar #password").val();
	var spassword2 = $("#formActualizar #password").val();
	
	console.log(NIF);
	console.log(snome);
	console.log(ssexo);
	console.log(smorada);
	console.log(stelefone);
	console.log(semail);
	console.log(spassword);
	console.log(spassword2);

	if(spassword != spassword2)
	{
		return false;
	}
	
	var dadosEnviar = {
		CodCliente : CodCliente2,
		NumContribuinte : snif,
		NomeCliente : snome,
		sexo : ssexo,
		Moeda : 'EUR',
		Morada : smorada,
		contacto : stelefone,
		email : semail,
		password : spassword
	};

	console.log(dadosEnviar);
	/*
	var link = "http://localhost:" + portaPrimavera + "/api/acesso/";
	
	var estadoEntrar = $.ajax({
		url: link,
		type: 'PUT',
		data : dadosEnviar,
		dataType: 'json',
		success : actualizarSucesso,
		error : actualizarError
	});*/

	return false;
});
