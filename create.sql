CREATE TABLE IF NOT EXISTS Cliente(
   nif INTEGER NOT NULL,
   nome VARCHAR NOT NULL,
   sexo CHAR NOT NULL,

   email VARCHAR NOT NULL,
   contacto INTEGER NOT NULL DEFAULT 123456789,
   morada VARCHAR NOT NULL,

   password VARCHAR NOT NULL DEFAULT "9d4e1e23bd5b727046a9e3b4b7db57bd8d6ee684",

   CONSTRAINT cliente_primarykey PRIMARY KEY(nif),
   CONSTRAINT cliente_unique_email UNIQUE(email),
   CONSTRAINT cliente_check_nif CHECK(nif >= 100000000 AND nif < 1000000000),
   CONSTRAINT cliente_check_sexo CHECK(sexo = 'F' OR sexo = 'M'),
   CONSTRAINT cliente_check_contacto CHECK(contacto >= 100000000 AND contacto < 1000000000),
   CONSTRAINT cliente_check_password CHECK(LENGTH(password) >= 4)
);

/* TIPO DE JOGO: ACCAO, AVENTURA, DESPORTO, ... */
CREATE TABLE IF NOT EXISTS Genero(
   id INTEGER NOT NULL,

   nome VARCHAR NOT NULL,

   CONSTRAINT genero_primarykey PRIMARY KEY(id),
   CONSTRAINT genero_unique_nome UNIQUE(nome)
);

CREATE TABLE IF NOT EXISTS Idioma(
   id INTEGER NOT NULL,

   nome VARCHAR NOT NULL,

   CONSTRAINT idioma_primarykey PRIMARY KEY(id),
   CONSTRAINT idioma_unique_nome UNIQUE(nome)
);

/* PLATAFORMA/CONSOLA DO JOGO: PS4, PS3, XONE, N3DS, PC, ... */
CREATE TABLE IF NOT EXISTS Plataforma(
   id INTEGER NOT NULL,

   nome VARCHAR NOT NULL,
   empresa VARCHAR NOT NULL,
   ano INTEGER NOT NULL,

   CONSTRAINT plataforma_primarykey PRIMARY KEY(id),
   CONSTRAINT plataforma_check_ano CHECK(ano > 1960),
   CONSTRAINT plataforma_unique_nome UNIQUE(nome)
);



/* http://www.pegi.info/pt/index/id/390/ */
CREATE TABLE IF NOT EXISTS Jogo(
   id INTEGER NOT NULL,

   nome VARCHAR NOT NULL, /* NOME DO JOGO */

   empresa VARCHAR NOT NULL, /* NOME DA EMPRESA DO JOGO */
   idade INTEGER NOT NULL, /* IDADE MINIMA PARA PODER JOGAR */
   ano INTEGER NOT NULL,

   detalhes VARCHAR NOT NULL DEFAULT "",
   visitas INTEGER NOT NULL DEFAULT 0,
   oculto BOOLEAN NOT NULL DEFAULT false, /* OCULTO DA PAGINA DE PESQUISA, NAO DAS COMPRAS/HISTORICO */

   CONSTRAINT jogo_primarykey PRIMARY KEY(id),
   CONSTRAINT jogo_check_idade CHECK(idade = 4 OR idade = 6 OR idade = 12 OR idade = 16 OR idade = 18 ),
   CONSTRAINT jogo_check_ano CHECK( ano >= 1960 )
);

CREATE TABLE IF NOT EXISTS JogoGenero(
   idJogo INTEGER NOT NULL,
   idGenero INTEGER NOT NULL,

   CONSTRAINT jogogenero_primarykey PRIMARY KEY(idJogo, idGenero),
   CONSTRAINT jogogenero_foreignkey_jogo FOREIGN KEY(idJogo) REFERENCES Jogo(id),
   CONSTRAINT jogogenero_foreignkey_genero FOREIGN KEY(idGenero) REFERENCES Genero(id)
);

CREATE TABLE IF NOT EXISTS JogoIdioma(
   idJogo INTEGER NOT NULL,
   idIdioma INTEGER NOT NULL,

   tipo VARCHAR NOT NULL, /* VOZ OU SUBTITULOS */

   CONSTRAINT jogoidioma_primarykey PRIMARY KEY(idJogo, idIdioma, tipo),
   CONSTRAINT jogoidioma_foreignkey_jogo FOREIGN KEY(idJogo) REFERENCES Jogo(id),
   CONSTRAINT jogoidioma_foreignkey_idioma FOREIGN KEY(idIdioma) REFERENCES Idioma(id),
   CONSTRAINT jogoidioma_check_tipo CHECK( tipo = "Voz" OR tipo = "Subtitulo" )
);

CREATE TABLE IF NOT EXISTS JogoPlataforma(
   idJogo INTEGER NOT NULL,
   idPlataforma INTEGER NOT NULL,

   quantidadeStock INTEGER NOT NULL DEFAULT 20,
   quantidadeVendida INTEGER NOT NULL DEFAULT 0,

   preco REAL NOT NULL DEFAULT 59.99,

   CONSTRAINT jogoplataforma_primarykey PRIMARY KEY(idJogo, idPlataforma),
   CONSTRAINT jogoplataforma_foreignkey_jogo FOREIGN KEY(idJogo) REFERENCES Jogo(id),
   CONSTRAINT jogoplataforma_foreignkey_plataforma FOREIGN KEY(idPlataforma) REFERENCES Plataforma(id),

   CONSTRAINT jogoplataforma_check_quantidadestock CHECK(quantidadeStock >= 0),
   CONSTRAINT jogoplataforma_check_quantidadevendida CHECK(quantidadeVendida >= 0),
   CONSTRAINT jogoplataforma_check_preco CHECK(preco <> 0.00)
);

CREATE TABLE IF NOT EXISTS Classificacao(
   idJogo INTEGER NOT NULL,
   nifCliente INTEGER NOT NULL,

   valor INTEGER NOT NULL,
   comentario VARCHAR NOT NULL,

   CONSTRAINT classificacao_primarykey PRIMARY KEY(idJogo, nifCliente),
   CONSTRAINT classificacao_foreignkey_jogo FOREIGN KEY(idJogo) REFERENCES Jogo(id),
   CONSTRAINT classificacao_foreignkey_cliente FOREIGN KEY(nifCliente) REFERENCES Cliente(nif),
   CONSTRAINT classificacao_check_valor CHECK(valor >= 0 AND valor <= 100)
);

CREATE TABLE IF NOT EXISTS Pagamento(
   idJogo INTEGER NOT NULL,
   idPlataforma INTEGER NOT NULL,
   nifCliente INTEGER NOT NULL,

   adicionado DATE NOT NULL, /* DIA E HORA QUE O CLIENTE ADICIONOU O JOGO DA LOJA AO CARRINHO */
   comprado DATE, /* DIA E HORA QUE O CLIENTE COMPROU O JOGO DA LOJA */

   CONSTRAINT pagamento_primarykey PRIMARY KEY(idJogo, idPlataforma, nifCliente, adicionado),
   CONSTRAINT pagamento_foreignkey_jogo FOREIGN KEY(idJogo) REFERENCES Jogo(id),
   CONSTRAINT pagamento_foreignkey_plataforma FOREIGN KEY(idPlataforma) REFERENCES Plataforma(id),
   CONSTRAINT pagamento_foreignkey_cliente FOREIGN KEY(nifCliente) REFERENCES Cliente(nif)
);
