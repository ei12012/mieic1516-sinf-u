<?php
   function obterNumeroJogos()
   {
      $query = "
         SELECT COUNT(*) as total
         FROM Jogo
      ";

      return (executarSQL($query));
   }

   function obterJogos()
   {
      $query = "
         SELECT *
         FROM Jogo
      ";

      return (executarSQL($query));
   }

   function obterJogosMaisVisitados()
   {
      $query = "
         SELECT *
         FROM Jogo
         ORDER BY visitas DESC
         LIMIT 5
      ";

      return (executarSQL($query));
   }

   function obterJogosMaisRecentes()
   {
      $query = "
         SELECT *
         FROM Jogo
         ORDER BY ano DESC
         LIMIT 5
      ";

      return (executarSQL($query));
   }

   function obterJogosNome($arg)
   {
      $query = "
         SELECT *
         FROM Jogo
         WHERE
            nome LIKE ?
         ";

      return (executarSQLArgumentos($query, array($arg)));
   }

   function obterJogosAno($arg)
   {
      $query = "
         SELECT *
         FROM Jogo
         WHERE
            ano = ?
      ";

      return (executarSQLArgumentos($query, array($arg)));
   }

   function obterJogosEmpresa($arg)
   {
      $query = "
         SELECT *
         FROM Jogo
         WHERE
            empresa = ?
      ";

      return (executarSQLArgumentos($query, array($arg)));
   }

   function obterJogosPlataforma($arg)
   {
      $query = "
         SELECT Jogo.nome, Jogo.id, Jogo.empresa, Jogo.ano, Jogo.idade
         FROM Jogo, Plataforma, JogoPlataforma
         WHERE
               JogoPlataforma.idPlataforma = Plataforma.id
         AND   JogoPlataforma.idJogo = Jogo.id
         AND   Plataforma.nome = ?
      ";

      return (executarSQLArgumentos($query, array($arg)));
   }

   function obterJogoIndex($id)
   {
      $query = "
         SELECT *
         FROM Jogo
         WHERE id = ?
      ";

      return (executarSQLArgumentos($query, array($id)));
   }

   function obterIdiomasJogoVoz($id)
   {
      $query = "
         SELECT Idioma.nome
         FROM Idioma, Jogo, JogoIdioma
         WHERE Jogo.id = JogoIdioma.idJogo
         AND   Idioma.id = JogoIdioma.idIdioma
         AND   JogoIdioma.tipo = 'Voz'
         AND   Jogo.id = ?
      ";

      return (executarSQLArgumentos($query, array($id)));
   }

   function obterIdiomasJogoSubtitulo($id)
   {
      $query = "
         SELECT Idioma.nome
         FROM Idioma, Jogo, JogoIdioma
         WHERE Jogo.id = JogoIdioma.idJogo
         AND   Idioma.id = JogoIdioma.idIdioma
         AND   JogoIdioma.tipo = 'Subtitulo'
         AND   Jogo.id = ?
      ";

      return (executarSQLArgumentos($query, array($id)));
   }

   function obterPlataformasJogo($id)
   {
      $query = "
         SELECT Plataforma.id, Plataforma.nome, JogoPlataforma.preco as preco
         FROM Plataforma, Jogo, JogoPlataforma
         WHERE Jogo.id = JogoPlataforma.idJogo
         AND   Plataforma.id = JogoPlataforma.idPlataforma
         AND   Jogo.id = ?
      ";

      return (executarSQLArgumentos($query, array($id)));
   }

   function obterPlataformaJogo($idJogo, $idPlataforma)
   {
      $query = "
         SELECT Plataforma.id, Plataforma.nome as nomePlataforma, JogoPlataforma.preco as preco, Jogo.nome as nomeJogo
         FROM Plataforma, Jogo, JogoPlataforma
         WHERE Jogo.id = JogoPlataforma.idJogo
         AND   Plataforma.id = JogoPlataforma.idPlataforma
         AND   Jogo.id = ?
         AND   Plataforma.id = ?
      ";

      return (executarSQLArgumentos($query, array($idJogo, $idPlataforma)));
   }

   function obterGenerosJogo($id)
   {
      $query = "
         SELECT Genero.nome
         FROM Genero, Jogo, JogoGenero
         WHERE Jogo.id = JogoGenero.idJogo
         AND   Genero.id = JogoGenero.idGenero
         AND   Jogo.id = ?
      ";

      return (executarSQLArgumentos($query, array($id)));
   }

   function obterComentariosJogo($id)
   {
      $query = "
         SELECT Classificacao.valor, Classificacao.comentario, Cliente.email
         FROM Classificacao, Jogo, Cliente
         WHERE Jogo.id = Classificacao.idJogo
         AND   Cliente.nif = Classificacao.nifCliente
         AND   Jogo.id = ?
      ";

      return (executarSQLArgumentos($query, array($id)));
   }

   function obterJogosEntreLimites($offset, $quantidade)
   {
      $query = "
         SELECT *
         FROM Jogo
         ORDER BY ano DESC, empresa, nome
         LIMIT ?, ?
      ";

      return (executarSQLArgumentos($query, array($offset, $quantidade)));
   }

   function obterCompras($nifCliente)
   {
      $query = "
         SELECT Pagamento.idJogo as idJogo, Pagamento.idPlataforma as idPlataforma, Jogo.nome as nomeJogo, Plataforma.nome as nomePlataforma, JogoPlataforma.preco as preco, Pagamento.adicionado as dataAdicionado, Pagamento.comprado as dataComprado
         FROM Jogo, Plataforma, JogoPlataforma, Cliente, Pagamento
         WHERE
               JogoPlataforma.idJogo = Jogo.id
         AND   JogoPlataforma.idPlataforma = Plataforma.id
         AND   Pagamento.nifCliente = Cliente.nif
         AND   Pagamento.idJogo = Jogo.id
         AND   Pagamento.idPlataforma = Plataforma.id
         AND   Cliente.nif = ?
      ";

      return (executarSQLArgumentos($query, array($nifCliente)));
   }

   function inserirCarrinho($idJogo, $idPlataforma, $nifCliente)
   {
      $query = "
         INSERT INTO Pagamento(idJogo, idPlataforma, nifCliente, adicionado)
         VALUES(?, ?, ?, CURRENT_TIMESTAMP);
      ";

      return (executarSQLActionArgumentos($query, array($idJogo, $idPlataforma, $nifCliente)));
   }

   function removerCarrinho($idJogo, $idPlataforma, $nifCliente)
   {
      $query = "
         DELETE FROM Pagamento
         WHERE
               idJogo = ?
         AND   idPlataforma = ?
         AND   nifCliente = ?
      ";

      return (executarSQLActionArgumentos($query, array($idJogo, $idPlataforma, $nifCliente)));
   }

   function confirmarCompra($idJogo, $idPlataforma, $nifCliente)
   {
      $query = "
         UPDATE Pagamento
         SET comprado = CURRENT_TIMESTAMP
               WHERE
               idJogo = ?
         AND   idPlataforma = ?
         AND   nifCliente = ?
      ";

      return (executarSQLActionArgumentos($query, array($idJogo, $idPlataforma, $nifCliente)));
   }
?>
