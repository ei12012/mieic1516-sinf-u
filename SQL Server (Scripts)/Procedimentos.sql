/* /Databases/PRI2015/Programmability/Stored Procedures/ */
USE [PRI2015]
GO

/*
Execute PDU_RegistarCliente
@codigo = 'C010', @nome = 'X', @contribuinte = 123456789, @morada = 'Rua X', @contacto = 123987654,
@email = 'a@a.com', @sexo = 'M', @password = 'pass';
*/
CREATE PROCEDURE PDU_RegistarCliente
@codigo varchar(50),
@nome varchar(50),
@contribuinte int,
@morada varchar(50),
@contacto int,
@email varchar(50),
@sexo char,
@password varchar(70)
AS
	INSERT INTO Clientes(Cliente, Nome, NomeFiscal, Fac_Tel, Fac_Mor, NumContrib, Moeda,
	Desconto, TipoPrec, TipoCred, LimiteCred, TotalDeb, ModoPag, CondPag, TipoCli, PessoaSingular, SegmentoTerceiro, IntegraCessaoFactoring,
	CDU_Email, CDU_Sexo, CDU_Password)
	VALUES(@codigo, @nome, @nome, @contacto, @morada,@contribuinte, 'EUR',
	0, 0, 1, 0, 99.99, 'MB', 1, 0, 1, '001', 1,
	@email, @sexo, @password);
GO

CREATE PROCEDURE PDU_AlterarCliente
@codigo varchar(50),
@nome varchar(50),
@contribuinte int,
@morada varchar(50),
@contacto int,
@email varchar(50),
@sexo char
AS
	UPDATE Clientes
	SET
		Nome = @nome,
		NomeFiscal = @nome,
		NumContrib = @contribuinte,
		Fac_Mor = @morada,
		Fac_Tel = @contacto
	WHERE Cliente = @codigo;

	UPDATE TDU_ClienteAuxiliar
	SET
		CDU_Email = @email,
		CDU_Sexo = @sexo
	WHERE CDU_codCliente = @codigo;
GO

/*
Execute PDU_RegistarArtigo
@codigo = 'GRAND THEFT AUTO VI (PS4)', @empresa = 'RockStar Games', @ano = 2020, @idade = 18, @descricao = ' ',
@stock = 20, @preco = 59.99;
*/
CREATE PROCEDURE PDU_RegistarArtigo
@codigo varchar(50),
@empresa varchar(50),
@ano int,
@idade int,
@descricao varchar(50),
@stock int,
@preco real
AS
	INSERT INTO Artigo(Artigo, Descricao, STKActual, UnidadeBase, Iva, TipoArtigo)
	VALUES(@codigo, @descricao, @stock, 'UN', 23, 3);

	INSERT INTO ArtigoMoeda(Artigo, PVP1, Moeda, Unidade)
	VALUES(@codigo, @preco, 'EUR', 'UN');

	INSERT INTO TDU_ArtigoAuxiliar(CDU_codArtigo, CDU_Empresa, CDU_Ano, CDU_Idade, CDU_Visitas, CDU_Oculto)
	VALUES(@codigo, @empresa, @ano, @idade, 0, 0);
GO
