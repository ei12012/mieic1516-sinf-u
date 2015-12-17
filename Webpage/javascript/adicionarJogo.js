function adicionarJogo(cliente,artigo) {
console.log(portaPrimavera);
  var link = "http://localhost:" + portaPrimavera + "/api/carrinho";
                     
  $.ajax({
    type: "POST",
    url: link,
    dataType: "json",
    data: {
      'cliente':cliente,//session.login.dados.CodCliente,
      'artigo':artigo
    }
  }).done(function(data){
    if(data=="Sucesso"){
      document.location.href="./jogos.php";
      $("#addGame").css("visibility","visible");
    }
  });
}

function adicionarJogoIndex(cliente,artigo) {
  var link = "http://localhost:" + portaPrimavera + "/api/carrinho";
                     
  $.ajax({
    type: "POST",
    url: link,
    dataType: "json",
    data: {
      'cliente':cliente,//session.login.dados.CodCliente,
      'artigo':artigo
    }
  }).done(function(data){
    if(data=="Sucesso"){
      document.location.href="index.php";
      $("#addGame").css("visibility","visible");
    }
  });
}

function removerJogo(cliente,artigo) {
  var link = "http://localhost:" + portaPrimavera + "/api/carrinho";
                     
  $.ajax({
    type: "POST",
    url: link,
    dataType: "json",
    data: {
      'cliente':cliente,//session.login.dados.CodCliente,
      'artigo':artigo,
      'remover':1,
    }
  }).done(function(data){
    if(data=="Sucesso"){
      document.location.href="";
    }
  });
}

function comprarArtigos(listaArtigos){
  if(listaArtigos.length>0){
  $("#msgCompra").css("visibility","visible");
  $("#btnCompra").css("visibility","hidden");

  var sendData={};
  sendData["Entidade"]=listaArtigos[0].cliente;
  sendData["LinhasDoc"]=[];
  for(var i=0;i<listaArtigos.length;i++){
    sendData["LinhasDoc"].push({CodArtigo:listaArtigos[i].artigo,PrecoUnitario:listaArtigos[i].preco,Quantidade:1});
  }


  var link = "http://localhost:" + portaPrimavera + "/api/factura";
         console.log(sendData);            
  $.ajax({
    type: "POST",
    url: link,
    dataType: "json",
    data: sendData
  }).done(function(data){
    console.log(data);

    for(var i=0;i<listaArtigos.length;i++){
        removerJogo(listaArtigos[i].cliente,listaArtigos[i].artigo);
    }

    $("#btnCompra").css("visibility","visible");
    $("#msgCompra").css("visibility","hidden");
    $("#msgCompraEft").css("visibility","visible");

  });
}
}