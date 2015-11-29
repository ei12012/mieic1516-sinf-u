/*var apiRequest = $.ajax({
	beforeSend: function(xhrObj)
	{
		xhrObj.setRequestHeader("Content-Type", "application/json");
		xhrObj.setRequestHeader("Accept", "application/json");
	}
	url: '',
	method: 'get',
	crossDomain: true,
	contentType: 'application/json',
	dataType: 'json',
	processData: false,
	sucess: ajax_done
});*/

function ajax_done(data)
{
	console.log(data);
}

function AJAX_Sucesso(data)
{
	console.log(data);
	
}

function obterArtigos()
{
	var link = "http://localhost:" + portaPrimavera + "/api/artigos/";

	var apiRequest = $.ajax({
		url: link,
		method: 'get',
		crossDomain: true,
		dataType: 'json',
		processData: false,
		success: ajax_done,
		headers: { "Accept" : "application/json", "Content-Type" : "application/json" }
	});
}
