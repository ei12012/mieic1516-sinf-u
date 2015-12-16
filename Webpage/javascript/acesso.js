function loginSucesso(data)
{
	console.log(data);
	$.ajax({
		url: "acessoSession.php",
		type: 'POST',
		dataType: 'json',
		data: {session:JSON.stringify(data)}
	}).always(function(data){
		if(data){
			console.log(data);
			document.location.href="..";
		}
	});
}

function loginError(request, error)
{
	alert("Erro de credenciais");
	console.log(JSON.stringify(request));
}

function registarSucesso(data)
{
	alert("Utilizador Registado. Entre na sua conta");
	document.location.href="";
}

function registarError(request, error)
{
	alert("O utilizador já existe");
}

$("#formEntrar").submit(function(){
	var email = $("#formEntrar #email").val();
	var password = $("#formEntrar #password").val();

	var link = "http://localhost:" + portaPrimavera + "/api/acesso?email=" + email + "&password=" + password;
	
	var estadoEntrar = $.ajax({
		url: link,
		type: 'GET',
		dataType: 'json',
		success : loginSucesso,
		error : loginError
	});
	
	return false;
});

$("#formRegistar").submit(function(){
	var snif = $("#formRegistar #nif").val();
	var snome = $("#formRegistar #nome").val();
	var ssexo = $("#formRegistar input[type='radio']:checked")[0].name;
	var smorada = $("#formRegistar #morada").val();
	var stelefone = $("#formRegistar #contacto").val();
	
	var semail = $("#formRegistar #emailRegisto").val();
	var spassword = $("#formRegistar #passwordRegistar").val();

	console.log(snif);
	console.log(snome);
	console.log(ssexo);
	console.log(smorada);
	console.log(stelefone);
	console.log(semail);
	console.log(spassword);

	var dadosEnviar = {
		CodCliente : "C"+snif,
		NumContribuinte : snif,
		NomeCliente : snome,
		sexo : ssexo,
		Moeda : 'EUR',
		Morada : smorada,
		contacto : stelefone,
		email : semail,
		password : spassword
	};

	var link = "http://localhost:" + portaPrimavera + "/api/acesso/";
	
	var estadoEntrar = $.ajax({
		url: link,
		type: 'POST',
		data : dadosEnviar,
		dataType: 'json',
		success : registarSucesso,
		error : registarError
	});
	
	return false;
});
