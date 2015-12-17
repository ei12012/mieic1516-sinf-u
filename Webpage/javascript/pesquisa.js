var campo = "";
var arg = "";

$("#btnPesquisar").click(function() {
   arg = $( "#arg" ).val();
   campo = $( "#campo option:selected").val();

   pesquisa(arg, campo);
});

function pesquisa(arg, campo)
{
	
      
   if (campo == "Plataforma")
   {
		var fx2 = $.getJSON( "http://localhost:49822/api/pesquisa?tipo=plataforma&arg=" + arg, function() { })
				.done(function(data_2) {
				   mostrarDados(data_2);
				});
   }
   else if (campo == "Jogo")
   {
      var fx2 = $.getJSON( "http://localhost:49822/api/pesquisa?tipo=nome&arg=" + arg, function() { })
				.done(function(data_2) {
				   mostrarDados(data_2);
				});
   }
   else if (campo == "Empresa")
   {
      var fx2 = $.getJSON( "http://localhost:49822/api/pesquisa?tipo=empresa&arg=" + arg, function() { })
				.done(function(data_2) {
				   mostrarDados(data_2);
				});
   }
}

function mostrarDados(data)
{
   $("#pesquisar").empty();
   if (data.length != 0)
   {
      //$("#pesquisar").append("<h3 class='text-primary'>Resultados de Pesquisa</h3>");
      $("#pesquisar").append("<table class='table table-hover table-condensed'><thead><tr><th>Jogo</th><th>Empresa</th><th>Ano</th><th>Idade</th></tr></thead><tbody class='resultadosPesquisa'>");

      $.each(data, function(i, item) {
         jogo = data[i];

         $(".resultadosPesquisa").append("<tr><td><a href=' " + BASE_URL + "pages/jogo.php?id=" + jogo.CodArtigo + "'>" + jogo.Descricao + "</a></td><td>" + jogo.Empresa + "</td><td>" + jogo.Ano + "</td><td>+" + jogo.Idade + "</td></tr>");

      });

      $("#pesquisar").append("</tbody></table>");
   }
   else
   {
      $("#pesquisar").append("<div class='alert alert-danger'>Não foi possível obter resultados</div>");
   }
}

function pesquisaEmpresa(arg)
{
   var url = "";
   var fx1 = $.getJSON( "../api/init.php", function() { })
   .done(function(data) {
      url = data[1];
      var info;

      var fx2 = $.getJSON( url + "api/pesquisarEmpresa.php?nomeEmpresa=" + arg, function() { })
      .done(function(data_2) {
         mostrarDados(data_2.data);
      });
   });
}

function pesquisaPlataforma(arg)
{
	
      
   /*var url = "";
   var fx1 = $.getJSON( "../api/init.php", function() { })
   .done(function(data) {
      url = data[1];
      var info; //url + "api/pesquisarPlataforma.php?nomePlataforma=" + arg

      
   });*/
}

function pesquisaNome(arg)
{
   var url = "";
   var fx1 = $.getJSON( "../api/init.php", function() { })
   .done(function(data) {
      url = data[1];
      var info;

      var frase = "%" + arg + "%";

      var fx2 = $.getJSON( url + "api/pesquisarNome.php?nomeJogo=" + frase, function() { })
      .done(function(data_2) {
         mostrarDados(data_2.data);
      });
   });
}
