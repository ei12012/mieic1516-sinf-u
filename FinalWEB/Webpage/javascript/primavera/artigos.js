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

$(document).ready(function () {
	
});

function obterArtigos()
{
	var link = "http://localhost:" + portaPrimavera + "/api/artigos/";

	$.ajax({
       type: "GET",
       url: link,
       dataType: "json"
   }).done(function(data){
		console.log(data);
   });
}


