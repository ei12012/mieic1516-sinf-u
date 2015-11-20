var pagina = 0;
var maximo = 8;

$( document ).ready(function() {
   proximo();
});

$("#mais").click(function(){
   proximo();
});

$("#menos").click(function(){
   anterior();
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

function proximo()
{
   var url = "";
   var fx1 = $.getJSON( "../api/init.php", function() { })
   .done(function(data) {
      //console.log( "success 1" );

      dir = data[0];
      url = data[1];

      var fx2 = $.getJSON( url + "api/numeroJogos.php", function( data_2 ){
         var tamanho = Number(data_2);
         var paginas = Math.ceil(tamanho / maximo);

         //console.log("Numero Jogos: " + tamanho);
         //console.log("Pagina actual: " + pagina);
         //console.log("Numero Items por pagina: " + maximo);
         //console.log("Numero Paginas Apresentar: " + paginas);

         if (pagina < paginas)
         {
            pagina++;

            var fx3 = $.getJSON( url + "api/obterJogosEntreLimites.php?pageNumber=" + pagina + "&pageSize=" + maximo, function() { })
               .done(function(data_3){
                  //console.log( "done 2" );
                  //console.log(data_3);

                  mostrarDados(url, data_3);

                  if (pagina == 1)
                  {
                     document.getElementById("menos").disabled = true;
                  }
                  else
                  {
                     document.getElementById("menos").disabled = false;
                     if (pagina >= paginas)
                     {
                        document.getElementById("mais").disabled = true;
                     }
                  }
               })
               .fail(function() {
                  //console.log( "error 2" );
               })
               .always(function() {
                  //console.log( "complete 2" );
               });
         }
      });
   }).fail(function() {
      //console.log( "error 1" );
   })
   .always(function() {
      //console.log( "complete 1" );
   });
}

function anterior()
{
   var url = "";
   var fx1 = $.getJSON( "../api/init.php", function() { })
   .done(function(data) {
      //console.log( "success 1" );

      dir = data[0];
      url = data[1];

      var fx2 = $.getJSON( url + "api/numeroJogos.php", function( data_2 ){
         var tamanho = Number(data_2);
         var paginas = Math.ceil(tamanho / maximo);

         //console.log("Numero Jogos: " + tamanho);
         //console.log("Pagina actual: " + pagina);
         //console.log("Numero Items por pagina: " + maximo);
         //console.log("Numero Paginas Apresentar: " + paginas);

         if (pagina > 0)
         {
            pagina--;

            var fx3 = $.getJSON( url + "api/obterJogosEntreLimites.php?pageNumber=" + pagina + "&pageSize=" + maximo, function() { })
               .done(function(data_3){
                  //console.log( "done 2" );
                  //console.log(data_3);

                  mostrarDados(url, data_3);

                  document.getElementById("mais").disabled = false;
                  if (pagina == 1)
                  {
                     document.getElementById("menos").disabled = true;
                  }
               })
               .fail(function() {
                  //console.log( "error 2" );
               })
               .always(function() {
                  //console.log( "complete 2" );
               });
         }
      });
   }).fail(function() {
      //console.log( "error 1" );
   })
   .always(function() {
      //console.log( "complete 1" );
   });
}
