USE [PRI2015]
GO

INSERT INTO [dbo].[TDU_ClienteAuxiliar]
	([CDU_codCliente]
	,[CDU_Sexo]
	,[CDU_Email]
	,[CDU_Password])
     VALUES
	('Bruno Moreira','M', 'ei12012@fe.up.pt', '9d4e1e23bd5b727046a9e3b4b7db56db8d6ee684'),
	('Pedro Carreira','M', 'altera@fe.up.pt', '9d4e1e23bd5b727046a9e3b4b7db56db8d6ee684'),
	('Luis Reis','M', 'ei11009@fe.up.pt', '9d4e1e23bd5b727046a9e3b4b7db56db8d6ee684'),
	('Jose Sousa','M', 'up201002597@fc.up.pt', '9d4e1e23bd5b727046a9e3b4b7db56db8d6ee684'),
	('Mariana Moreno','F', 'up201107685@fc.up.pt', '9d4e1e23bd5b727046a9e3b4b7db56db8d6ee684')
GO