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
    }
  });
}

function removerJogo(cliente,artigo) {
  var link = "http://localhost:" + portaPrimavera + "/api/carrinho";          
  $.ajax({
    type: 'DELETE',
    url: link,
    dataType: "json",
    data: {
      'cliente':cliente,//session.login.dados.CodCliente,
      'artigo':artigo
    }
  }).done(function(data){
    console.log(data);
  }).fail(function(data){
    console.log(data);
  });
}

function comprarArtigos(listaArtigos){
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
  });
}