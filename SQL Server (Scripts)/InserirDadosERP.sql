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
@codigo = 'A0001', @empresa = 'Rockstar Games', @ano = 2013, @idade = 18, @descricao = 'GRAND THEFT AUTO V (PS3)',
@stock = 20, @preco = 59.99;

GO

Execute PDU_RegistarArtigo
@codigo = 'A0002', @empresa = 'Rockstar Games', @ano = 2013, @idade = 18, @descricao = 'GRAND THEFT AUTO V (PS4)',
@stock = 20, @preco = 59.99;

GO

Execute PDU_RegistarArtigo
@codigo = 'A0003', @empresa = 'Rockstar Games', @ano = 2013, @idade = 18, @descricao = 'GRAND THEFT AUTO V (PC)',
@stock = 20, @preco = 59.99;

GO

Execute PDU_RegistarArtigo
@codigo = 'A0004', @empresa = 'Rockstar Games', @ano = 2013, @idade = 18, @descricao = 'GRAND THEFT AUTO V (X360)',
@stock = 20, @preco = 59.99;

GO

Execute PDU_RegistarArtigo
@codigo = 'A0005', @empresa = 'Rockstar Games', @ano = 2013, @idade = 18, @descricao = 'GRAND THEFT AUTO V (XONE)',
@stock = 20, @preco = 59.99;

GO

Execute PDU_RegistarArtigo
@codigo = 'A0006', @empresa = 'Square Enix', @ano = 2013, @idade = 16, @descricao = 'FINAL FANTASY XIV: A REALM REBORN (PS3)',
@stock = 20, @preco = 19.99;

GO

Execute PDU_RegistarArtigo
@codigo = 'A0007', @empresa = 'Square Enix', @ano = 2013, @idade = 16, @descricao = 'FINAL FANTASY XIV: A REALM REBORN (PS4)',
@stock = 20, @preco = 19.99;

GO

Execute PDU_RegistarArtigo
@codigo = 'A0008', @empresa = 'Square Enix', @ano = 2013, @idade = 16, @descricao = 'FINAL FANTASY XIV: A REALM REBORN (PC)',
@stock = 20, @preco = 19.99;

GO

Execute PDU_RegistarArtigo
@codigo = 'A0009', @empresa = 'Square Enix', @ano = 2013, @idade = 16, @descricao = 'FINAL FANTASY XIV: A REALM REBORN (X360)',
@stock = 20, @preco = 19.99;

GO

Execute PDU_RegistarArtigo
@codigo = 'A0010', @empresa = 'Square Enix', @ano = 2013, @idade = 16, @descricao = 'FINAL FANTASY XIV: A REALM REBORN (XONE)',
@stock = 20, @preco = 19.99;

GO

Execute PDU_RegistarArtigo
@codigo = 'A0011', @empresa = 'Mojang', @ano = 2011, @idade = 12, @descricao = 'MINECRAFT (PS3)',
@stock = 20, @preco = 19.99;

GO

Execute PDU_RegistarArtigo
@codigo = 'A0012', @empresa = 'Mojang', @ano = 2011, @idade = 12, @descricao = 'MINECRAFT (PS4)',
@stock = 20, @preco = 19.99;

GO

Execute PDU_RegistarArtigo
@codigo = 'A0013', @empresa = 'Mojang', @ano = 2011, @idade = 12, @descricao = 'MINECRAFT (PSP)',
@stock = 20, @preco = 19.99;

GO

Execute PDU_RegistarArtigo
@codigo = 'A0014', @empresa = 'Mojang', @ano = 2011, @idade = 12, @descricao = 'MINECRAFT (PSV)',
@stock = 20, @preco = 19.99;

GO

Execute PDU_RegistarArtigo
@codigo = 'A0015', @empresa = 'Mojang', @ano = 2011, @idade = 12, @descricao = 'MINECRAFT (PC)',
@stock = 20, @preco = 19.99;

GO

Execute PDU_RegistarArtigo
@codigo = 'A0016', @empresa = 'Mojang', @ano = 2011, @idade = 12, @descricao = 'MINECRAFT (X360)',
@stock = 20, @preco = 19.99;

GO

Execute PDU_RegistarArtigo
@codigo = 'A0017', @empresa = 'Mojang', @ano = 2011, @idade = 12, @descricao = 'MINECRAFT (XONE)',
@stock = 20, @preco = 19.99;

GO

Execute PDU_RegistarArtigo
@codigo = 'A0018', @empresa = 'Ubisoft', @ano = 2013, @idade = 4, @descricao = 'ASSASSIN''S CREED: UNITY (PS3)',
@stock = 20, @preco = 24.99;

GO

Execute PDU_RegistarArtigo
@codigo = 'A0019', @empresa = 'Ubisoft', @ano = 2013, @idade = 4, @descricao = 'ASSASSIN''S CREED: UNITY (PS4)',
@stock = 20, @preco = 24.99;

GO

Execute PDU_RegistarArtigo
@codigo = 'A0020', @empresa = 'Ubisoft', @ano = 2013, @idade = 4, @descricao = 'ASSASSIN''S CREED: UNITY (XBOX)',
@stock = 20, @preco = 24.99;

GO

Execute PDU_RegistarArtigo
@codigo = 'A0021', @empresa = 'Ubisoft', @ano = 2013, @idade = 4, @descricao = 'ASSASSIN''S CREED: UNITY (XONE)',
@stock = 20, @preco = 24.99;

GO

Execute PDU_RegistarArtigo
@codigo = 'A0022', @empresa = 'Actionvision', @ano = 2013, @idade = 18, @descricao = 'CALL OF DUTY: ADVANCED WARFARE (PS3)',
@stock = 20, @preco = 39.99;

GO

Execute PDU_RegistarArtigo
@codigo = 'A0023', @empresa = 'Actionvision', @ano = 2013, @idade = 18, @descricao = 'CALL OF DUTY: ADVANCED WARFARE (PS4)',
@stock = 20, @preco = 39.99;

GO

Execute PDU_RegistarArtigo
@codigo = 'A0024', @empresa = 'Actionvision', @ano = 2013, @idade = 18, @descricao = 'CALL OF DUTY: ADVANCED WARFARE (PC)',
@stock = 20, @preco = 39.99;

GO

Execute PDU_RegistarArtigo
@codigo = 'A0025', @empresa = 'Actionvision', @ano = 2013, @idade = 18, @descricao = 'CALL OF DUTY: ADVANCED WARFARE (X360)',
@stock = 20, @preco = 39.99;

GO

Execute PDU_RegistarArtigo
@codigo = 'A0026', @empresa = 'Actionvision', @ano = 2013, @idade = 18, @descricao = 'CALL OF DUTY: ADVANCED WARFARE (XONE)',
@stock = 20, @preco = 39.99;

GO

Execute PDU_RegistarArtigo
@codigo = 'A0027', @empresa = 'KONAMI', @ano = 2007, @idade = 12, @descricao = 'TEKKEN 6 (PS3)',
@stock = 20, @preco = 14.99;

GO

Execute PDU_RegistarArtigo
@codigo = 'A0028', @empresa = 'KONAMI', @ano = 2007, @idade = 12, @descricao = 'TEKKEN 6 (PSP)',
@stock = 20, @preco = 9.99;

GO

Execute PDU_RegistarArtigo
@codigo = 'A0029', @empresa = 'KONAMI', @ano = 2013, @idade = 4, @descricao = 'PRO EVOLUTION SOCCER 2016 (PS3)',
@stock = 20, @preco = 24.99;

GO

Execute PDU_RegistarArtigo
@codigo = 'A0030', @empresa = 'KONAMI', @ano = 2013, @idade = 4, @descricao = 'PRO EVOLUTION SOCCER 2016 (PS4)',
@stock = 20, @preco = 24.99;

GO

Execute PDU_RegistarArtigo
@codigo = 'A0031', @empresa = 'KONAMI', @ano = 2013, @idade = 4, @descricao = 'PRO EVOLUTION SOCCER 2016 (PC)',
@stock = 20, @preco = 24.99;

GO

Execute PDU_RegistarArtigo
@codigo = 'A0032', @empresa = 'KONAMI', @ano = 2013, @idade = 4, @descricao = 'PRO EVOLUTION SOCCER 2016 (X360)',
@stock = 20, @preco = 24.99;

GO

Execute PDU_RegistarArtigo
@codigo = 'A0033', @empresa = 'KONAMI', @ano = 2013, @idade = 4, @descricao = 'PRO EVOLUTION SOCCER 2016 (XONE)',
@stock = 20, @preco = 24.99;

GO

Execute PDU_RegistarArtigo
@codigo = 'A0034', @empresa = 'Gamefreak', @ano = 2014, @idade = 6, @descricao = 'POKÉMON OMEGA RUBY (3DS)',
@stock = 20, @preco = 24.99;

GO

Execute PDU_RegistarArtigo
@codigo = 'A0035', @empresa = 'Gamefreak', @ano = 2014, @idade = 6, @descricao = 'POKÉMON ALPHA SAPPHIRE (3DS)',
@stock = 20, @preco = 24.99;

GO

Execute PDU_RegistarArtigo
@codigo = 'A0036', @empresa = 'Grezzo', @ano = 2015, @idade = 12, @descricao = 'THE LEGEND OF ZELDA: MAJORA''S MASK 3D (3DS)',
@stock = 20, @preco = 24.99;

GO