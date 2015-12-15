function loginSucesso(data)
{
	console.log(data);
}

function loginError(request, error)
{
	console.log(JSON.stringify(request));
}

function registarSucesso(data)
{
	console.log(data);
}

function registarError(request, error)
{
	console.log(JSON.stringify(request));
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
	alert("ola");	
	var snif = $("#formRegistar #nif").val();
	var snome = $("#formRegistar #nome").val();
	var ssexo = $("#formRegistar #sexo").val();
	var smorada = $("#formRegistar #morada").val();
	var stelefone = $("#formRegistar #contacto").val();
	
	var semail = $("#formRegistar #emailRegisto").val();
	var spassword = $("#formRegistar #passwordRegisto").val();

	console.log(snif);
	console.log(snome);
	console.log(ssexo);
	console.log(smorada);
	console.log(stelefone);
	console.log(semail);
	console.log(spassword);

	var dadosEnviar = {
		CodCliente : "C0020",
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
