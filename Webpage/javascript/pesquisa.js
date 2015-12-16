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
      pesquisaPlataforma(arg);
   }
   else if (campo == "Jogo")
   {
      pesquisaNome(arg);
   }
   else if (campo == "Empresa")
   {
      pesquisaEmpresa(arg);
   }
}

function mostrarDados(link, data)
{
   $("#pesquisar").empty();
   if (data.length != 0)
   {
      //$("#pesquisar").append("<h3 class='text-primary'>Resultados de Pesquisa</h3>");
      $("#pesquisar").append("<table class='table table-hover table-condensed'><thead><tr><th>Jogo</th><th>Empresa</th><th>Ano</th><th>Idade</th></tr></thead><tbody class='resultadosPesquisa'>");

      $.each(data, function(i, item) {
         jogo = data[i];

         $(".resultadosPesquisa").append("<tr><td><a href=' " + link + "pages/jogo.php?id=" + jogo.id + "'>" + jogo.nome + "</a></td><td>" + jogo.empresa + "</td><td>" + jogo.ano + "</td><td>+" + jogo.idade + "</td></tr>");

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
         mostrarDados(url, data_2);
      });
   });
}

function pesquisaPlataforma(arg)
{
   var url = "";
   var fx1 = $.getJSON( "../api/init.php", function() { })
   .done(function(data) {
      url = data[1];
      var info;

      var fx2 = $.getJSON( url + "api/pesquisarPlataforma.php?nomePlataforma=" + arg, function() { })
      .done(function(data_2) {
         mostrarDados(url, data_2);
      });
   });
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
         mostrarDados(url, data_2);
      });
   });
}
