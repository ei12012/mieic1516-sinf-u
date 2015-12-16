USE [PRI2015]
GO

INSERT INTO [dbo].[TDU_Genero]
           ([CDU_ID]
           ,[CDU_Nome])
     VALUES
           (1, 'Acção'),
		   (2, 'Aventura'),
		   (3, 'Shoot''em All'),
		   (4, 'Beat''em All'),
		   (5, 'RPG'),
		   (6, 'Estrategia'),
		   (7, 'Simulacao'),
		   (8, 'Desporto'),
		   (9, 'Multiplayer')
GO

INSERT INTO [dbo].[TDU_Idioma]
           ([CDU_ID]
           ,[CDU_Nome])
     VALUES
           (1, 'Português'),
		   (2, 'Espanhol'),
		   (3, 'Inglês'),
		   (4, 'Francês'),
		   (5, 'Italiano'),
		   (6, 'Alemão'),
		   (7, 'Russo'),
		   (8, 'Chinês'),
		   (9, 'Japonês')
GO

INSERT INTO [dbo].[TDU_ArtigoGenero]
           ([CDU_idArtigo]
           ,[CDU_idGenero])
     VALUES
			('A0001', 1),
			('A0001', 3),
			('A0001', 9),

			('A0002', 1),
			('A0002', 3),
			('A0002', 9),

			('A0004', 2),
			('A0004', 5),
			('A0004', 6),
			('A0004', 9),

			('A0005', 2),
			('A0005', 5),
			('A0005', 6),
			('A0005', 9),

			('A0003', 6),
			('A0003', 7),
			('A0003', 8),
			('A0003', 9)
GO

INSERT INTO [dbo].[TDU_ArtigoIdioma]
           ([CDU_idArtigo]
           ,[CDU_idIdioma]
           ,[CDU_Tipo])
     VALUES
			('A0001', 3, 'Voz'),
			('A0001', 2, 'Subtitulo'),
			('A0001', 3, 'Subtitulo'),
			('A0001', 4, 'Subtitulo'),
			('A0001', 5, 'Subtitulo'),
			('A0001', 6, 'Subtitulo'),

			('A0002', 3, 'Voz'),
			('A0002', 2, 'Subtitulo'),
			('A0002', 3, 'Subtitulo'),
			('A0002', 4, 'Subtitulo'),
			('A0002', 5, 'Subtitulo'),
			('A0002', 6, 'Subtitulo'),

			('A0004', 9, 'Voz'),
			('A0004', 3, 'Subtitulo'),
			('A0004', 6, 'Subtitulo'),
			('A0004', 9, 'Subtitulo'),

			('A0005', 9, 'Voz'),
			('A0005', 3, 'Subtitulo'),
			('A0005', 6, 'Subtitulo'),
			('A0005', 9, 'Subtitulo'),

			('A0003', 1, 'Voz'),
			('A0003', 2, 'Voz'),
			('A0003', 3, 'Voz'),
			('A0003', 4, 'Voz'),
			('A0003', 5, 'Voz'),
			('A0003', 6, 'Voz'),
			('A0003', 7, 'Voz'),
			('A0003', 8, 'Voz'),
			('A0003', 9, 'Voz'),
			('A0003', 1, 'Subtitulo'),
			('A0003', 2, 'Subtitulo'),
			('A0003', 3, 'Subtitulo'),
			('A0003', 4, 'Subtitulo'),
			('A0003', 5, 'Subtitulo'),
			('A0003', 6, 'Subtitulo'),
			('A0003', 7, 'Subtitulo'),
			('A0003', 8, 'Subtitulo'),
			('A0003', 9, 'Subtitulo')
GO

INSERT INTO [dbo].[TDU_Classificacao]
           ([CDU_idArtigo]
           ,[CDU_idCliente]
           ,[CDU_Valor]
           ,[CDU_Comentario])
     VALUES
           ('A0001', 'C0001', 95, 'Muita bom!!'),
		   ('A0001', 'C0002', 95, 'Mehh'),
		   ('A0002', 'C0001', 98, 'Esta melhor que a versão da PS3')
GO