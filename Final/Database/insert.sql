/* CLIENTE */
INSERT INTO Cliente(nif, nome, sexo, email, contacto, morada, password)
VALUES(123123123, "Bruno Moreira", 'M', "ei12012@fe.up.pt", 123123123, "RUA A", "9d4e1e23bd5b727046a9e3b4b7db57bd8d6ee684");

INSERT INTO Cliente(nif, nome, sexo, email, contacto, morada, password)
VALUES(234234234, "José Pedro", 'M', "up201002597@fc.up.pt", 123123123, "RUA B", "9d4e1e23bd5b727046a9e3b4b7db57bd8d6ee684");

INSERT INTO Cliente(nif, nome, sexo, email, contacto, morada, password)
VALUES(345345345, "Mariana Moreno", 'F', "up201107685@fc.up.pt", 123123123, "RUA C", "9d4e1e23bd5b727046a9e3b4b7db57bd8d6ee684");

INSERT INTO Cliente(nif, nome, sexo, email, contacto, morada, password)
VALUES(456456456, "Luís Reis", 'M', "ei11001@fe.up.pt", 123123123, "RUA D", "9d4e1e23bd5b727046a9e3b4b7db57bd8d6ee684");

/* GENERO */
INSERT INTO Genero(nome)
VALUES("Acção");

INSERT INTO Genero(nome)
VALUES("Aventura");

INSERT INTO Genero(nome)
VALUES("Shoot'em All"); /* TIROS */

INSERT INTO Genero(nome)
VALUES("Beat'em All"); /* LUTA */

INSERT INTO Genero(nome)
VALUES("RPG");

INSERT INTO Genero(nome)
VALUES("Estrategia");

INSERT INTO Genero(nome)
VALUES("Simulacao");

INSERT INTO Genero(nome)
VALUES("Desporto");

INSERT INTO Genero(nome)
VALUES("Multiplayer");

/* IDIOMA */
INSERT INTO Idioma(nome)
VALUES("Português");

INSERT INTO Idioma(nome)
VALUES("Espanhol");

INSERT INTO Idioma(nome)
VALUES("Inglês");

INSERT INTO Idioma(nome)
VALUES("Francês");

INSERT INTO Idioma(nome)
VALUES("Italiano");

INSERT INTO Idioma(nome)
VALUES("Alemão");

INSERT INTO Idioma(nome)
VALUES("Russo");

INSERT INTO Idioma(nome)
VALUES("Chinês");

INSERT INTO Idioma(nome)
VALUES("Japonês");

/* PLATAFORMA */

INSERT INTO Plataforma(nome, empresa, ano)
VALUES("PlayStation 2", "Sony", 2000);

INSERT INTO Plataforma(nome, empresa, ano)
VALUES("PlayStation 3", "Sony", 2006);

INSERT INTO Plataforma(nome, empresa, ano)
VALUES("PlayStation 4", "Sony", 2013);

INSERT INTO Plataforma(nome, empresa, ano)
VALUES("PlayStation Portable", "Sony", 2004);

INSERT INTO Plataforma(nome, empresa, ano)
VALUES("PlayStation Vita", "Sony", 2011);

INSERT INTO Plataforma(nome, empresa, ano)
VALUES("Game Boy Advance", "Nintendo", 2001);

INSERT INTO Plataforma(nome, empresa, ano)
VALUES("Nintendo DS", "Nintendo", 2004);

INSERT INTO Plataforma(nome, empresa, ano)
VALUES("Nintendo 3DS", "Nintendo", 2011);

INSERT INTO Plataforma(nome, empresa, ano)
VALUES("Nintendo Wii", "Nintendo", 2006);

INSERT INTO Plataforma(nome, empresa, ano)
VALUES("Nintendo Wii U", "Nintendo", 2012);

INSERT INTO Plataforma(nome, empresa, ano)
VALUES("XBox 360", "Microsoft", 2005);

INSERT INTO Plataforma(nome, empresa, ano)
VALUES("XBox One", "Microsoft", 2013);

INSERT INTO Plataforma(nome, empresa, ano)
VALUES("Microsoft Windows", "Microsoft", 2006); /* CONSIDERARO WINDOWS VISTA */

/* JOGO */
INSERT INTO Jogo(nome, empresa, ano, idade)
VALUES("Grand Theft Auto V", "Rockstar Games", 2013, 18);

INSERT INTO Jogo(nome, empresa, ano, idade)
VALUES("Final Fantasy XIV: A Realm Reborn", "Square Enix", 2013, 16);

INSERT INTO Jogo(nome, empresa, ano, idade)
VALUES("Minecraft", "Mojang", 2011, 12);

INSERT INTO Jogo(nome, empresa, ano, idade)
VALUES("Assassin's Creed: Unity", "Ubisoft", 2013, 4);

INSERT INTO Jogo(nome, empresa, ano, idade)
VALUES("Call of Duty: Advanced Warfare", "Actionvision", 2014, 18);

INSERT INTO Jogo(nome, empresa, ano, idade)
VALUES("Tekken 6", "Namco", 2007, 12);

INSERT INTO Jogo(nome, empresa, ano, idade)
VALUES("Pro Evolution Soccer 2016", "Konami", 2015, 4);

INSERT INTO Jogo(nome, empresa, ano, idade)
VALUES("Pokémon Omega Ruby", "Gamefreak", 2014, 6);

INSERT INTO Jogo(nome, empresa, ano, idade)
VALUES("Pokémon Alpha Sapphire", "Gamefreak", 2014, 6);

INSERT INTO Jogo(nome, empresa, ano, idade)
VALUES("The Legend of Zelda: Majora's Mask 3D", "Grezzo", 2015, 12);

/* JOGOGENERO */
INSERT INTO JogoGenero(idJogo, idGenero)
VALUES(1, 1);

INSERT INTO JogoGenero(idJogo, idGenero)
VALUES(1, 3);

INSERT INTO JogoGenero(idJogo, idGenero)
VALUES(1, 9);

INSERT INTO JogoGenero(idJogo, idGenero)
VALUES(2, 2);

INSERT INTO JogoGenero(idJogo, idGenero)
VALUES(2, 5);

INSERT INTO JogoGenero(idJogo, idGenero)
VALUES(2, 6);

INSERT INTO JogoGenero(idJogo, idGenero)
VALUES(2, 9);

INSERT INTO JogoGenero(idJogo, idGenero)
VALUES(3, 2);

INSERT INTO JogoGenero(idJogo, idGenero)
VALUES(3, 6);

INSERT INTO JogoGenero(idJogo, idGenero)
VALUES(3, 7);

INSERT INTO JogoGenero(idJogo, idGenero)
VALUES(3, 9);

INSERT INTO JogoGenero(idJogo, idGenero)
VALUES(4, 1);

INSERT INTO JogoGenero(idJogo, idGenero)
VALUES(4, 2);

INSERT INTO JogoGenero(idJogo, idGenero)
VALUES(4, 6);

INSERT INTO JogoGenero(idJogo, idGenero)
VALUES(4, 9);

INSERT INTO JogoGenero(idJogo, idGenero)
VALUES(5, 1);

INSERT INTO JogoGenero(idJogo, idGenero)
VALUES(5, 3);

INSERT INTO JogoGenero(idJogo, idGenero)
VALUES(5, 6);

INSERT INTO JogoGenero(idJogo, idGenero)
VALUES(5, 7);

INSERT INTO JogoGenero(idJogo, idGenero)
VALUES(5, 9);

INSERT INTO JogoGenero(idJogo, idGenero)
VALUES(6, 1);

INSERT INTO JogoGenero(idJogo, idGenero)
VALUES(6, 4);

INSERT INTO JogoGenero(idJogo, idGenero)
VALUES(6, 6);

INSERT INTO JogoGenero(idJogo, idGenero)
VALUES(6, 7);

INSERT INTO JogoGenero(idJogo, idGenero)
VALUES(6, 9);

INSERT INTO JogoGenero(idJogo, idGenero)
VALUES(7, 6);

INSERT INTO JogoGenero(idJogo, idGenero)
VALUES(7, 7);

INSERT INTO JogoGenero(idJogo, idGenero)
VALUES(7, 8);

INSERT INTO JogoGenero(idJogo, idGenero)
VALUES(7, 9);

INSERT INTO JogoGenero(idJogo, idGenero)
VALUES(8, 2);

INSERT INTO JogoGenero(idJogo, idGenero)
VALUES(8, 5);

INSERT INTO JogoGenero(idJogo, idGenero)
VALUES(8, 6);

INSERT INTO JogoGenero(idJogo, idGenero)
VALUES(8, 9);

INSERT INTO JogoGenero(idJogo, idGenero)
VALUES(9, 2);

INSERT INTO JogoGenero(idJogo, idGenero)
VALUES(9, 5);

INSERT INTO JogoGenero(idJogo, idGenero)
VALUES(9, 6);

INSERT INTO JogoGenero(idJogo, idGenero)
VALUES(9, 9);

INSERT INTO JogoGenero(idJogo, idGenero)
VALUES(10, 2);

INSERT INTO JogoGenero(idJogo, idGenero)
VALUES(10, 6);

/* JOGOIDIOMA */

INSERT INTO JogoIdioma(idJogo, idIdioma, tipo)
VALUES(1, 3, "Voz");

INSERT INTO JogoIdioma(idJogo, idIdioma, tipo)
VALUES(1, 2, "Subtitulo");

INSERT INTO JogoIdioma(idJogo, idIdioma, tipo)
VALUES(1, 3, "Subtitulo");

INSERT INTO JogoIdioma(idJogo, idIdioma, tipo)
VALUES(1, 4, "Subtitulo");

INSERT INTO JogoIdioma(idJogo, idIdioma, tipo)
VALUES(1, 5, "Subtitulo");

INSERT INTO JogoIdioma(idJogo, idIdioma, tipo)
VALUES(1, 6, "Subtitulo");

INSERT INTO JogoIdioma(idJogo, idIdioma, tipo)
VALUES(2, 9, "Voz");

INSERT INTO JogoIdioma(idJogo, idIdioma, tipo)
VALUES(2, 3, "Subtitulo");

INSERT INTO JogoIdioma(idJogo, idIdioma, tipo)
VALUES(2, 6, "Subtitulo");

INSERT INTO JogoIdioma(idJogo, idIdioma, tipo)
VALUES(2, 9, "Subtitulo");

INSERT INTO JogoIdioma(idJogo, idIdioma, tipo)
VALUES(3, 1, "Subtitulo");

INSERT INTO JogoIdioma(idJogo, idIdioma, tipo)
VALUES(3, 2, "Subtitulo");

INSERT INTO JogoIdioma(idJogo, idIdioma, tipo)
VALUES(3, 3, "Subtitulo");

INSERT INTO JogoIdioma(idJogo, idIdioma, tipo)
VALUES(3, 4, "Subtitulo");

INSERT INTO JogoIdioma(idJogo, idIdioma, tipo)
VALUES(3, 5, "Subtitulo");

INSERT INTO JogoIdioma(idJogo, idIdioma, tipo)
VALUES(3, 6, "Subtitulo");

INSERT INTO JogoIdioma(idJogo, idIdioma, tipo)
VALUES(3, 7, "Subtitulo");

INSERT INTO JogoIdioma(idJogo, idIdioma, tipo)
VALUES(3, 8, "Subtitulo");

INSERT INTO JogoIdioma(idJogo, idIdioma, tipo)
VALUES(3, 9, "Subtitulo");

INSERT INTO JogoIdioma(idJogo, idIdioma, tipo)
VALUES(4, 1, "Voz");

INSERT INTO JogoIdioma(idJogo, idIdioma, tipo)
VALUES(4, 2, "Voz");

INSERT INTO JogoIdioma(idJogo, idIdioma, tipo)
VALUES(4, 3, "Voz");

INSERT INTO JogoIdioma(idJogo, idIdioma, tipo)
VALUES(4, 4, "Voz");

INSERT INTO JogoIdioma(idJogo, idIdioma, tipo)
VALUES(4, 5, "Voz");

INSERT INTO JogoIdioma(idJogo, idIdioma, tipo)
VALUES(4, 6, "Voz");

INSERT INTO JogoIdioma(idJogo, idIdioma, tipo)
VALUES(4, 1, "Subtitulo");

INSERT INTO JogoIdioma(idJogo, idIdioma, tipo)
VALUES(4, 2, "Subtitulo");

INSERT INTO JogoIdioma(idJogo, idIdioma, tipo)
VALUES(4, 3, "Subtitulo");

INSERT INTO JogoIdioma(idJogo, idIdioma, tipo)
VALUES(4, 4, "Subtitulo");

INSERT INTO JogoIdioma(idJogo, idIdioma, tipo)
VALUES(4, 5, "Subtitulo");

INSERT INTO JogoIdioma(idJogo, idIdioma, tipo)
VALUES(4, 6, "Subtitulo");

INSERT INTO JogoIdioma(idJogo, idIdioma, tipo)
VALUES(5, 3, "Voz");

INSERT INTO JogoIdioma(idJogo, idIdioma, tipo)
VALUES(5, 7, "Voz");

INSERT INTO JogoIdioma(idJogo, idIdioma, tipo)
VALUES(5, 3, "Subtitulo");

INSERT INTO JogoIdioma(idJogo, idIdioma, tipo)
VALUES(6, 3, "Voz");

INSERT INTO JogoIdioma(idJogo, idIdioma, tipo)
VALUES(6, 3, "Subtitulo");

INSERT INTO JogoIdioma(idJogo, idIdioma, tipo)
VALUES(7, 1, "Voz");

INSERT INTO JogoIdioma(idJogo, idIdioma, tipo)
VALUES(7, 2, "Voz");

INSERT INTO JogoIdioma(idJogo, idIdioma, tipo)
VALUES(7, 3, "Voz");

INSERT INTO JogoIdioma(idJogo, idIdioma, tipo)
VALUES(7, 4, "Voz");

INSERT INTO JogoIdioma(idJogo, idIdioma, tipo)
VALUES(7, 5, "Voz");

INSERT INTO JogoIdioma(idJogo, idIdioma, tipo)
VALUES(7, 6, "Voz");

INSERT INTO JogoIdioma(idJogo, idIdioma, tipo)
VALUES(7, 7, "Voz");

INSERT INTO JogoIdioma(idJogo, idIdioma, tipo)
VALUES(7, 8, "Voz");

INSERT INTO JogoIdioma(idJogo, idIdioma, tipo)
VALUES(7, 9, "Voz");

INSERT INTO JogoIdioma(idJogo, idIdioma, tipo)
VALUES(7, 1, "Subtitulo");

INSERT INTO JogoIdioma(idJogo, idIdioma, tipo)
VALUES(7, 2, "Subtitulo");

INSERT INTO JogoIdioma(idJogo, idIdioma, tipo)
VALUES(7, 3, "Subtitulo");

INSERT INTO JogoIdioma(idJogo, idIdioma, tipo)
VALUES(7, 4, "Subtitulo");

INSERT INTO JogoIdioma(idJogo, idIdioma, tipo)
VALUES(7, 5, "Subtitulo");

INSERT INTO JogoIdioma(idJogo, idIdioma, tipo)
VALUES(7, 6, "Subtitulo");

INSERT INTO JogoIdioma(idJogo, idIdioma, tipo)
VALUES(7, 7, "Subtitulo");

INSERT INTO JogoIdioma(idJogo, idIdioma, tipo)
VALUES(7, 8, "Subtitulo");

INSERT INTO JogoIdioma(idJogo, idIdioma, tipo)
VALUES(7, 9, "Subtitulo");

INSERT INTO JogoIdioma(idJogo, idIdioma, tipo)
VALUES(8, 9, "Voz");

INSERT INTO JogoIdioma(idJogo, idIdioma, tipo)
VALUES(8, 2, "Subtitulo");

INSERT INTO JogoIdioma(idJogo, idIdioma, tipo)
VALUES(8, 3, "Subtitulo");

INSERT INTO JogoIdioma(idJogo, idIdioma, tipo)
VALUES(8, 4, "Subtitulo");

INSERT INTO JogoIdioma(idJogo, idIdioma, tipo)
VALUES(8, 5, "Subtitulo");

INSERT INTO JogoIdioma(idJogo, idIdioma, tipo)
VALUES(8, 6, "Subtitulo");

INSERT INTO JogoIdioma(idJogo, idIdioma, tipo)
VALUES(8, 9, "Subtitulo");

INSERT INTO JogoIdioma(idJogo, idIdioma, tipo)
VALUES(9, 9, "Voz");

INSERT INTO JogoIdioma(idJogo, idIdioma, tipo)
VALUES(9, 2, "Subtitulo");

INSERT INTO JogoIdioma(idJogo, idIdioma, tipo)
VALUES(9, 3, "Subtitulo");

INSERT INTO JogoIdioma(idJogo, idIdioma, tipo)
VALUES(9, 4, "Subtitulo");

INSERT INTO JogoIdioma(idJogo, idIdioma, tipo)
VALUES(9, 5, "Subtitulo");

INSERT INTO JogoIdioma(idJogo, idIdioma, tipo)
VALUES(9, 6, "Subtitulo");

INSERT INTO JogoIdioma(idJogo, idIdioma, tipo)
VALUES(9, 9, "Subtitulo");

INSERT INTO JogoIdioma(idJogo, idIdioma, tipo)
VALUES(10, 9, "Voz");

INSERT INTO JogoIdioma(idJogo, idIdioma, tipo)
VALUES(10, 2, "Subtitulo");

INSERT INTO JogoIdioma(idJogo, idIdioma, tipo)
VALUES(10, 3, "Subtitulo");

INSERT INTO JogoIdioma(idJogo, idIdioma, tipo)
VALUES(10, 4, "Subtitulo");

INSERT INTO JogoIdioma(idJogo, idIdioma, tipo)
VALUES(10, 5, "Subtitulo");

INSERT INTO JogoIdioma(idJogo, idIdioma, tipo)
VALUES(10, 6, "Subtitulo");

INSERT INTO JogoIdioma(idJogo, idIdioma, tipo)
VALUES(10, 9, "Subtitulo");

/* JOGOPLATAFORMA */
INSERT INTO JogoPlataforma(idJogo, idPlataforma)
VALUES(1, 2);

INSERT INTO JogoPlataforma(idJogo, idPlataforma)
VALUES(1, 3);

INSERT INTO JogoPlataforma(idJogo, idPlataforma)
VALUES(1, 11);

INSERT INTO JogoPlataforma(idJogo, idPlataforma)
VALUES(1, 12);

INSERT INTO JogoPlataforma(idJogo, idPlataforma)
VALUES(1, 13);

INSERT INTO JogoPlataforma(idJogo, idPlataforma)
VALUES(2, 2);

INSERT INTO JogoPlataforma(idJogo, idPlataforma)
VALUES(2, 3);

INSERT INTO JogoPlataforma(idJogo, idPlataforma)
VALUES(2, 13);

INSERT INTO JogoPlataforma(idJogo, idPlataforma)
VALUES(3, 2);

INSERT INTO JogoPlataforma(idJogo, idPlataforma)
VALUES(3, 4);

INSERT INTO JogoPlataforma(idJogo, idPlataforma)
VALUES(3, 5);

INSERT INTO JogoPlataforma(idJogo, idPlataforma)
VALUES(3, 11);

INSERT INTO JogoPlataforma(idJogo, idPlataforma)
VALUES(3, 12);

INSERT INTO JogoPlataforma(idJogo, idPlataforma)
VALUES(3, 13);

INSERT INTO JogoPlataforma(idJogo, idPlataforma)
VALUES(4, 3);

INSERT INTO JogoPlataforma(idJogo, idPlataforma)
VALUES(4, 12);

INSERT INTO JogoPlataforma(idJogo, idPlataforma)
VALUES(4, 13);

INSERT INTO JogoPlataforma(idJogo, idPlataforma)
VALUES(5, 2);

INSERT INTO JogoPlataforma(idJogo, idPlataforma)
VALUES(5, 3);

INSERT INTO JogoPlataforma(idJogo, idPlataforma)
VALUES(5, 11);

INSERT INTO JogoPlataforma(idJogo, idPlataforma)
VALUES(5, 12);

INSERT INTO JogoPlataforma(idJogo, idPlataforma)
VALUES(5, 13);

INSERT INTO JogoPlataforma(idJogo, idPlataforma)
VALUES(6, 2);

INSERT INTO JogoPlataforma(idJogo, idPlataforma)
VALUES(6, 4);

INSERT INTO JogoPlataforma(idJogo, idPlataforma)
VALUES(6, 11);

INSERT INTO JogoPlataforma(idJogo, idPlataforma)
VALUES(7, 2);

INSERT INTO JogoPlataforma(idJogo, idPlataforma)
VALUES(7, 3);

INSERT INTO JogoPlataforma(idJogo, idPlataforma)
VALUES(7, 11);

INSERT INTO JogoPlataforma(idJogo, idPlataforma)
VALUES(7, 12);

INSERT INTO JogoPlataforma(idJogo, idPlataforma)
VALUES(7, 13);

INSERT INTO JogoPlataforma(idJogo, idPlataforma)
VALUES(8, 8);

INSERT INTO JogoPlataforma(idJogo, idPlataforma)
VALUES(9, 8);

INSERT INTO JogoPlataforma(idJogo, idPlataforma)
VALUES(10, 8);

/* CLASSIFICACAO */
INSERT INTO Classificacao(idJogo, nifCliente, valor, comentario)
VALUES(1, 123123123, 97, "Muito bom jogo!!");

/* PAGAMENTO */
