$( document ).ready(function() {
   
});

function mostrarDados(link, data)
{
   $(".resultados").empty();
   $(".resultados").append("<table class='table table-hover table-condensed'><thead><tr><th>Jogo</th><th>Empresa</th><th>Ano</th><th>Idade</th></tr></thead><tbody class='resultadoSelect'>");

   $.each(data, function(i, item) {
      var jogo = data[i];
      //$("#ucSelect").append("<option > " + uc.nome + " </option>");
      $(".resultadoSelect").append("<tr><td><a href=' " + link + "pages/jogo.php?id=" + jogo.id + "'>" + jogo.nome + "</a></td><td>" + jogo.empresa + "</td><td>" + jogo.ano + "</td><td>+" + jogo.idade + "</td></tr>");
   })

   $(".resultados").append("</tbody></table>");
}
