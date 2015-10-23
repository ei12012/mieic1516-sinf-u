USE [PRI2015]
GO

INSERT INTO [dbo].[TDU_Classificacao]
           ([CDU_idArtigo]
           ,[CDU_idCliente]
           ,[CDU_Valor]
           ,[CDU_Comentario])
     VALUES
           ('Grand Theft Auto V (PS3)','Bruno Moreira', 95, 'Jogo muito bom!!'),
		   ('Grand Theft Auto V (PS3)','Pedro Carreia', 70, 'Mehh'),
		   ('Grand Theft Auto V (PS4)','Bruno Moreira', 98, 'Esta melhor que a versao PS3')
GO


