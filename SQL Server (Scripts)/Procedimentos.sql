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
	INSERT INTO Clientes(Cliente, Nome, NomeFiscal, Fac_Tel, Fac_Mor, NumContrib)
	VALUES(@codigo, @nome, @nome, @contacto, @morada,@contribuinte);

	INSERT INTO TDU_ClienteAuxiliar(CDU_codCliente, CDU_Email, CDU_Sexo, CDU_Password)
	VALUES(@codigo, @email, @sexo, @password);
GO
