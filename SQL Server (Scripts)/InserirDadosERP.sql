USE [PRI2015]
GO

/* CLIENTES */
Execute PDU_RegistarCliente
@codigo = 'C0001', @nome = 'Bruno Moreira', @contribuinte = 111111111, @morada = 'Rua A', @contacto = 111111111,
@email = 'ei12012@fe.up.pt', @sexo = 'M', @password = '9D4E1E23BD5B727046A9E3B4B7DB57BD8D6EE684';

GO

Execute PDU_RegistarCliente
@codigo = 'C0002', @nome = 'Pedro Carreira', @contribuinte = 222222222, @morada = 'Rua B', @contacto = 222222222,
@email = 'up201502855@fe.up.pt', @sexo = 'M', @password = '9D4E1E23BD5B727046A9E3B4B7DB57BD8D6EE684';

GO

Execute PDU_RegistarCliente
@codigo = 'C0003', @nome = 'Luís Reis', @contribuinte = 333333333, @morada = 'Rua C', @contacto = 333333333,
@email = 'ei11009@fe.up.pt', @sexo = 'M', @password = '9D4E1E23BD5B727046A9E3B4B7DB57BD8D6EE684';

GO

Execute PDU_RegistarCliente
@codigo = 'C0004', @nome = 'José Sousa', @contribuinte = 444444444, @morada = 'Rua D', @contacto = 444444444,
@email = 'up201002597@fc.up.pt', @sexo = 'M', @password = '9D4E1E23BD5B727046A9E3B4B7DB57BD8D6EE684';

GO

Execute PDU_RegistarCliente
@codigo = 'C0005', @nome = 'Mariana Moreno', @contribuinte = 555555555, @morada = 'Rua E', @contacto = 555555555,
@email = 'up201107685@fc.up.pt', @sexo = 'F', @password = '9D4E1E23BD5B727046A9E3B4B7DB57BD8D6EE684';

GO

/* ARTIGOS */
Execute PDU_RegistarArtigo
@codigo = 'GRAND THEFT AUTO V (PS3)', @empresa = 'Rockstar Games', @ano = 2013, @idade = 18, @descricao = '',
@stock = 20, @preco = 59.99;

GO

Execute PDU_RegistarArtigo
@codigo = 'GRAND THEFT AUTO V (PS4)', @empresa = 'Rockstar Games', @ano = 2013, @idade = 18, @descricao = '',
@stock = 20, @preco = 59.99;

GO

Execute PDU_RegistarArtigo
@codigo = 'GRAND THEFT AUTO V (PC)', @empresa = 'Rockstar Games', @ano = 2013, @idade = 18, @descricao = '',
@stock = 20, @preco = 59.99;

GO

Execute PDU_RegistarArtigo
@codigo = 'GRAND THEFT AUTO V (X360)', @empresa = 'Rockstar Games', @ano = 2013, @idade = 18, @descricao = '',
@stock = 20, @preco = 59.99;

GO

Execute PDU_RegistarArtigo
@codigo = 'GRAND THEFT AUTO V (XONE)', @empresa = 'Rockstar Games', @ano = 2013, @idade = 18, @descricao = '',
@stock = 20, @preco = 59.99;

GO

Execute PDU_RegistarArtigo
@codigo = 'FINAL FANTASY XIV: A REALM REBORN (PS3)', @empresa = 'Square Enix', @ano = 2013, @idade = 16, @descricao = '',
@stock = 20, @preco = 19.99;

GO

Execute PDU_RegistarArtigo
@codigo = 'FINAL FANTASY XIV: A REALM REBORN (PS4)', @empresa = 'Square Enix', @ano = 2013, @idade = 16, @descricao = '',
@stock = 20, @preco = 19.99;

GO

Execute PDU_RegistarArtigo
@codigo = 'FINAL FANTASY XIV: A REALM REBORN (PC)', @empresa = 'Square Enix', @ano = 2013, @idade = 16, @descricao = '',
@stock = 20, @preco = 19.99;

GO

Execute PDU_RegistarArtigo
@codigo = 'FINAL FANTASY XIV: A REALM REBORN (X360)', @empresa = 'Square Enix', @ano = 2013, @idade = 16, @descricao = '',
@stock = 20, @preco = 19.99;

GO

Execute PDU_RegistarArtigo
@codigo = 'FINAL FANTASY XIV: A REALM REBORN (XONE)', @empresa = 'Square Enix', @ano = 2013, @idade = 16, @descricao = '',
@stock = 20, @preco = 19.99;

GO

Execute PDU_RegistarArtigo
@codigo = 'MINECRAFT (PS3)', @empresa = 'Mojang', @ano = 2011, @idade = 12, @descricao = '',
@stock = 20, @preco = 19.99;

GO

Execute PDU_RegistarArtigo
@codigo = 'MINECRAFT (PS4)', @empresa = 'Mojang', @ano = 2011, @idade = 12, @descricao = '',
@stock = 20, @preco = 19.99;

GO

Execute PDU_RegistarArtigo
@codigo = 'MINECRAFT (PSP)', @empresa = 'Mojang', @ano = 2011, @idade = 12, @descricao = '',
@stock = 20, @preco = 19.99;

GO

Execute PDU_RegistarArtigo
@codigo = 'MINECRAFT (PSV)', @empresa = 'Mojang', @ano = 2011, @idade = 12, @descricao = '',
@stock = 20, @preco = 19.99;

GO

Execute PDU_RegistarArtigo
@codigo = 'MINECRAFT (PC)', @empresa = 'Mojang', @ano = 2011, @idade = 12, @descricao = '',
@stock = 20, @preco = 19.99;

GO

Execute PDU_RegistarArtigo
@codigo = 'MINECRAFT (X360)', @empresa = 'Mojang', @ano = 2011, @idade = 12, @descricao = '',
@stock = 20, @preco = 19.99;

GO

Execute PDU_RegistarArtigo
@codigo = 'MINECRAFT (XONE)', @empresa = 'Mojang', @ano = 2011, @idade = 12, @descricao = '',
@stock = 20, @preco = 19.99;

GO

Execute PDU_RegistarArtigo
@codigo = 'ASSASSIN''S CREED: UNITY (PS3)', @empresa = 'Ubisoft', @ano = 2013, @idade = 4, @descricao = '',
@stock = 20, @preco = 24.99;

GO

Execute PDU_RegistarArtigo
@codigo = 'ASSASSIN''S CREED: UNITY (PS4)', @empresa = 'Ubisoft', @ano = 2013, @idade = 4, @descricao = '',
@stock = 20, @preco = 24.99;

GO

Execute PDU_RegistarArtigo
@codigo = 'ASSASSIN''S CREED: UNITY (XBOX)', @empresa = 'Ubisoft', @ano = 2013, @idade = 4, @descricao = '',
@stock = 20, @preco = 24.99;

GO

Execute PDU_RegistarArtigo
@codigo = 'ASSASSIN''S CREED: UNITY (XONE)', @empresa = 'Ubisoft', @ano = 2013, @idade = 4, @descricao = '',
@stock = 20, @preco = 24.99;

GO

Execute PDU_RegistarArtigo
@codigo = 'CALL OF DUTY: ADVANCED WARFARE (PS3)', @empresa = 'Actionvision', @ano = 2013, @idade = 18, @descricao = '',
@stock = 20, @preco = 39.99;

GO

Execute PDU_RegistarArtigo
@codigo = 'CALL OF DUTY: ADVANCED WARFARE (PS4)', @empresa = 'Actionvision', @ano = 2013, @idade = 18, @descricao = '',
@stock = 20, @preco = 39.99;

GO

Execute PDU_RegistarArtigo
@codigo = 'CALL OF DUTY: ADVANCED WARFARE (PC)', @empresa = 'Actionvision', @ano = 2013, @idade = 18, @descricao = '',
@stock = 20, @preco = 39.99;

GO

Execute PDU_RegistarArtigo
@codigo = 'CALL OF DUTY: ADVANCED WARFARE (X360)', @empresa = 'Actionvision', @ano = 2013, @idade = 18, @descricao = '',
@stock = 20, @preco = 39.99;

GO

Execute PDU_RegistarArtigo
@codigo = 'CALL OF DUTY: ADVANCED WARFARE (XONE)', @empresa = 'Actionvision', @ano = 2013, @idade = 18, @descricao = '',
@stock = 20, @preco = 39.99;

GO

Execute PDU_RegistarArtigo
@codigo = 'TEKKEN 6 (PS3)', @empresa = 'KONAMI', @ano = 2007, @idade = 12, @descricao = '',
@stock = 20, @preco = 14.99;

GO

Execute PDU_RegistarArtigo
@codigo = 'TEKKEN 6 (PSP)', @empresa = 'KONAMI', @ano = 2007, @idade = 12, @descricao = '',
@stock = 20, @preco = 9.99;

GO

Execute PDU_RegistarArtigo
@codigo = 'PRO EVOLUTION SOCCER 2016 (PS3)', @empresa = 'KONAMI', @ano = 2013, @idade = 4, @descricao = '',
@stock = 20, @preco = 24.99;

GO

Execute PDU_RegistarArtigo
@codigo = 'PRO EVOLUTION SOCCER 2016 (PS4)', @empresa = 'KONAMI', @ano = 2013, @idade = 4, @descricao = '',
@stock = 20, @preco = 24.99;

GO

Execute PDU_RegistarArtigo
@codigo = 'PRO EVOLUTION SOCCER 2016 (PC)', @empresa = 'KONAMI', @ano = 2013, @idade = 4, @descricao = '',
@stock = 20, @preco = 24.99;

GO

Execute PDU_RegistarArtigo
@codigo = 'PRO EVOLUTION SOCCER 2016 (X360)', @empresa = 'KONAMI', @ano = 2013, @idade = 4, @descricao = '',
@stock = 20, @preco = 24.99;

GO

Execute PDU_RegistarArtigo
@codigo = 'PRO EVOLUTION SOCCER 2016 (XONE)', @empresa = 'KONAMI', @ano = 2013, @idade = 4, @descricao = '',
@stock = 20, @preco = 24.99;

GO

Execute PDU_RegistarArtigo
@codigo = 'POKÉMON OMEGA RUBY (3DS)', @empresa = 'Gamefreak', @ano = 2014, @idade = 6, @descricao = '',
@stock = 20, @preco = 24.99;

GO

Execute PDU_RegistarArtigo
@codigo = 'POKÉMON ALPHA SAPPHIRE (3DS)', @empresa = 'Gamefreak', @ano = 2014, @idade = 6, @descricao = '',
@stock = 20, @preco = 24.99;

GO

Execute PDU_RegistarArtigo
@codigo = 'THE LEGEND OF ZELDA: MAJORA''S MASK 3D (3DS)', @empresa = 'Grezzo', @ano = 2015, @idade = 12, @descricao = '',
@stock = 20, @preco = 24.99;

GO

