var idJogo = 0;
var idPlataforma = 0;

$( document ).ready(function() {
   var link = window.location.href;
   idJogo =  link.substr(0).split("id=")[1];

   alterarContainer();
});

function alterarContainer()
{
   $( "#plataforma option:selected" ).each(function() {
      idPlataforma = $( this ).val();}
   );

   var url = "";
   var fx1 = $.getJSON( "../api/init.php", function() { })
   .done(function(data) {
      url = data[1];
      var info;

      var fx2 = $.getJSON( url + "api/jogo_plataformaID.php?idJogo=" + idJogo + "&idPlataforma=" + idPlataforma, function() { })
      .done(function(data_2) {
         $.each(data_2, function(i, item) {
            info = data_2[i];
         });

         $("#fatura").empty();
         $("#fatura").append("<li class='list-group-item'>" +
            "<h4 class='list-group-item-heading'>Jogo</h4>" +
            "<p class='list-group-item-text'> " + info.nomeJogo + "</p>" +
            "</li>");
         $("#fatura").append("<li class='list-group-item'>" +
            "<h4 class='list-group-item-heading'>Plataforma</h4>" +
            "<p class='list-group-item-text'> " + info.nomePlataforma + "</p>" +
            "</li>");
         $("#fatura").append("<li class='list-group-item'>" +
            "<h4 class='list-group-item-heading'>Preço</h4>" +
            "<p class='list-group-item-text'> " + info.preco + "€</p>" +
            "</li>");

         var linkToGo = url + "action/jogo_adicionar.php?idJogo=" + idJogo + "&idPlataforma=" + idPlataforma;
         //console.log(linkToGo);

         var btn = $("#facturaForm").first();
         btn.attr("href", linkToGo);
      });
   });
}

$("#plataforma").change(function(){
   alterarContainer();
});

function post(path, params, method) {
    method = method || "post"; // Set method to post by default if not specified.

    // The rest of this code assumes you are not using a library.
    // It can be made less wordy if you use one.
    var form = document.createElement("form");
    form.setAttribute("method", method);
    form.setAttribute("action", path);

    for(var key in params) {
        if(params.hasOwnProperty(key)) {
            var hiddenField = document.createElement("input");
            hiddenField.setAttribute("type", "hidden");
            hiddenField.setAttribute("name", key);
            hiddenField.setAttribute("value", params[key]);

            form.appendChild(hiddenField);
         }
    }

    document.body.appendChild(form);
    form.submit();
}

$("#botao").click(function(){
   var url = "";
   var fx1 = $.getJSON( "../api/init.php", function() { })
   .done(function(data) {
      url = data[1];

      post(url + "action/jogo_adicionar.php", { jogo: idJogo, plataforma: idPlataforma });
      
      //
      // $.post( url + "action/jogo_adicionar.php", { jogo: idJogo, plataforma: idPlataforma })
      // .done(function( data ) {
      //    var x = $("#conteudoPagina .alert");
      //
      //    if(x == false)
      //    {
      //       console.log("passou");
      //       x.prepend("<div class='alert alert-success'>Inserido no carrinho com sucesso</div>");
      //    }
      //    else
      //    {
      //       console.log("n passou");
      //       $("#conteudoPagina:first-child").remove();
      //       $("#conteudoPagina").prepend("<div class='alert alert-success'>Inserido no carrinho com sucesso</div>");
      //    }
      // });
   });
});
