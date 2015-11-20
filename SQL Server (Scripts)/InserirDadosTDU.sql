USE [PRI2015]
GO

INSERT INTO [dbo].[TDU_Genero]
           ([CDU_ID]
           ,[CDU_Nome])
     VALUES
           (1, 'Ac��o'),
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
           (1, 'Portugu�s'),
		   (2, 'Espanhol'),
		   (3, 'Ingl�s'),
		   (4, 'Franc�s'),
		   (5, 'Italiano'),
		   (6, 'Alem�o'),
		   (7, 'Russo'),
		   (8, 'Chin�s'),
		   (9, 'Japon�s')
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

			('A0003', 1),
			('A0003', 3),
			('A0003', 9),

			('A0004', 1),
			('A0004', 3),
			('A0004', 9),

			('A0005', 1),
			('A0005', 3),
			('A0005', 9),

			('A0006', 2),
			('A0006', 5),
			('A0006', 6),
			('A0006', 9),

			('A0007', 2),
			('A0007', 5),
			('A0007', 6),
			('A0007', 9),

			('A0008', 2),
			('A0008', 5),
			('A0008', 6),
			('A0008', 9),

			('A0009', 2),
			('A0009', 5),
			('A0009', 6),
			('A0009', 9),

			('A0010', 2),
			('A0010', 5),
			('A0010', 6),
			('A0010', 9),

			('A0011', 2),
			('A0011', 6),
			('A0011', 7),
			('A0011', 9),

			('A0012', 2),
			('A0012', 6),
			('A0012', 7),
			('A0012', 9),

			('A0013', 2),
			('A0013', 6),
			('A0013', 7),
			('A0013', 9),

			('A0014', 2),
			('A0014', 6),
			('A0014', 7),
			('A0014', 9),

			('A0015', 2),
			('A0015', 6),
			('A0015', 7),
			('A0015', 9),

			('A0016', 2),
			('A0016', 6),
			('A0016', 7),
			('A0016', 9),

			('A0017', 2),
			('A0017', 6),
			('A0017', 7),
			('A0017', 9),

			('A0018', 1),
			('A0018', 2),
			('A0018', 6),
			('A0018', 9),

			('A0019', 1),
			('A0019', 2),
			('A0019', 6),
			('A0019', 9),

			('A0020', 1),
			('A0020', 2),
			('A0020', 6),
			('A0020', 9),

			('A0021', 1),
			('A0021', 2),
			('A0021', 6),
			('A0021', 9),

			('A0022', 1),
			('A0022', 3),
			('A0022', 6),
			('A0022', 7),
			('A0022', 9),

			('A0023', 1),
			('A0023', 3),
			('A0023', 6),
			('A0023', 7),
			('A0023', 9),

			('A0024', 1),
			('A0024', 3),
			('A0024', 6),
			('A0024', 7),
			('A0024', 9),

			('A0025', 1),
			('A0025', 3),
			('A0025', 6),
			('A0025', 7),
			('A0025', 9),

			('A0026', 1),
			('A0026', 3),
			('A0026', 6),
			('A0026', 7),
			('A0026', 9),

			('A0027', 1),
			('A0027', 4),
			('A0027', 6),
			('A0027', 7),
			('A0027', 9),

			('A0028', 1),
			('A0028', 4),
			('A0028', 6),
			('A0028', 7),
			('A0028', 9),

			('A0029', 6),
			('A0029', 7),
			('A0029', 8),
			('A0029', 9),

			('A0030', 6),
			('A0030', 7),
			('A0030', 8),
			('A0030', 9),

			('A0031', 6),
			('A0031', 7),
			('A0031', 8),
			('A0031', 9),

			('A0032', 6),
			('A0032', 7),
			('A0032', 8),
			('A0032', 9),

			('A0033', 6),
			('A0033', 7),
			('A0033', 8),
			('A0033', 9),

			('A0034', 2),
			('A0034', 5),
			('A0034', 6),
			('A0034', 9),

			('A0035', 2),
			('A0035', 5),
			('A0035', 6),
			('A0035', 9),

			('A0036', 2),
			('A0036', 6)
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

			('A0003', 3, 'Voz'),
			('A0003', 2, 'Subtitulo'),
			('A0003', 3, 'Subtitulo'),
			('A0003', 4, 'Subtitulo'),
			('A0003', 5, 'Subtitulo'),
			('A0003', 6, 'Subtitulo'),

			('A0004', 3, 'Voz'),
			('A0004', 2, 'Subtitulo'),
			('A0004', 3, 'Subtitulo'),
			('A0004', 4, 'Subtitulo'),
			('A0004', 5, 'Subtitulo'),
			('A0004', 6, 'Subtitulo'),

			('A0005', 3, 'Voz'),
			('A0005', 2, 'Subtitulo'),
			('A0005', 3, 'Subtitulo'),
			('A0005', 4, 'Subtitulo'),
			('A0005', 5, 'Subtitulo'),
			('A0005', 6, 'Subtitulo'),

			('A0006', 9, 'Voz'),
			('A0006', 3, 'Subtitulo'),
			('A0006', 6, 'Subtitulo'),
			('A0006', 9, 'Subtitulo'),

			('A0007', 9, 'Voz'),
			('A0007', 3, 'Subtitulo'),
			('A0007', 6, 'Subtitulo'),
			('A0007', 9, 'Subtitulo'),

			('A0008', 9, 'Voz'),
			('A0008', 3, 'Subtitulo'),
			('A0008', 6, 'Subtitulo'),
			('A0008', 9, 'Subtitulo'),

			('A0009', 9, 'Voz'),
			('A0009', 3, 'Subtitulo'),
			('A0009', 6, 'Subtitulo'),
			('A0009', 9, 'Subtitulo'),

			('A0010', 9, 'Voz'),
			('A0010', 3, 'Subtitulo'),
			('A0010', 6, 'Subtitulo'),
			('A0010', 9, 'Subtitulo'),

			('A0011', 1, 'Subtitulo'),
			('A0011', 2, 'Subtitulo'),
			('A0011', 3, 'Subtitulo'),
			('A0011', 4, 'Subtitulo'),
			('A0011', 5, 'Subtitulo'),
			('A0011', 6, 'Subtitulo'),
			('A0011', 7, 'Subtitulo'),
			('A0011', 8, 'Subtitulo'),
			('A0011', 9, 'Subtitulo'),

			('A0012', 1, 'Subtitulo'),
			('A0012', 2, 'Subtitulo'),
			('A0012', 3, 'Subtitulo'),
			('A0012', 4, 'Subtitulo'),
			('A0012', 5, 'Subtitulo'),
			('A0012', 6, 'Subtitulo'),
			('A0012', 7, 'Subtitulo'),
			('A0012', 8, 'Subtitulo'),
			('A0012', 9, 'Subtitulo'),

			('A0013', 1, 'Subtitulo'),
			('A0013', 2, 'Subtitulo'),
			('A0013', 3, 'Subtitulo'),
			('A0013', 4, 'Subtitulo'),
			('A0013', 5, 'Subtitulo'),
			('A0013', 6, 'Subtitulo'),
			('A0013', 7, 'Subtitulo'),
			('A0013', 8, 'Subtitulo'),
			('A0013', 9, 'Subtitulo'),

			('A0014', 1, 'Subtitulo'),
			('A0014', 2, 'Subtitulo'),
			('A0014', 3, 'Subtitulo'),
			('A0014', 4, 'Subtitulo'),
			('A0014', 5, 'Subtitulo'),
			('A0014', 6, 'Subtitulo'),
			('A0014', 7, 'Subtitulo'),
			('A0014', 8, 'Subtitulo'),
			('A0014', 9, 'Subtitulo'),

			('A0015', 1, 'Subtitulo'),
			('A0015', 2, 'Subtitulo'),
			('A0015', 3, 'Subtitulo'),
			('A0015', 4, 'Subtitulo'),
			('A0015', 5, 'Subtitulo'),
			('A0015', 6, 'Subtitulo'),
			('A0015', 7, 'Subtitulo'),
			('A0015', 8, 'Subtitulo'),
			('A0015', 9, 'Subtitulo'),

			('A0016', 1, 'Subtitulo'),
			('A0016', 2, 'Subtitulo'),
			('A0016', 3, 'Subtitulo'),
			('A0016', 4, 'Subtitulo'),
			('A0016', 5, 'Subtitulo'),
			('A0016', 6, 'Subtitulo'),
			('A0016', 7, 'Subtitulo'),
			('A0016', 8, 'Subtitulo'),
			('A0016', 9, 'Subtitulo'),

			('A0017', 1, 'Subtitulo'),
			('A0017', 2, 'Subtitulo'),
			('A0017', 3, 'Subtitulo'),
			('A0017', 4, 'Subtitulo'),
			('A0017', 5, 'Subtitulo'),
			('A0017', 6, 'Subtitulo'),
			('A0017', 7, 'Subtitulo'),
			('A0017', 8, 'Subtitulo'),
			('A0017', 9, 'Subtitulo'),

			('A0018', 1, 'Voz'),
			('A0018', 2, 'Voz'),
			('A0018', 3, 'Voz'),
			('A0018', 4, 'Voz'),
			('A0018', 5, 'Voz'),
			('A0018', 6, 'Voz'),
			('A0018', 1, 'Subtitulo'),
			('A0018', 2, 'Subtitulo'),
			('A0018', 3, 'Subtitulo'),
			('A0018', 4, 'Subtitulo'),
			('A0018', 5, 'Subtitulo'),
			('A0018', 6, 'Subtitulo'),

			('A0019', 1, 'Voz'),
			('A0019', 2, 'Voz'),
			('A0019', 3, 'Voz'),
			('A0019', 4, 'Voz'),
			('A0019', 5, 'Voz'),
			('A0019', 6, 'Voz'),
			('A0019', 1, 'Subtitulo'),
			('A0019', 2, 'Subtitulo'),
			('A0019', 3, 'Subtitulo'),
			('A0019', 4, 'Subtitulo'),
			('A0019', 5, 'Subtitulo'),
			('A0019', 6, 'Subtitulo'),

			('A0020', 1, 'Voz'),
			('A0020', 2, 'Voz'),
			('A0020', 3, 'Voz'),
			('A0020', 4, 'Voz'),
			('A0020', 5, 'Voz'),
			('A0020', 6, 'Voz'),
			('A0020', 1, 'Subtitulo'),
			('A0020', 2, 'Subtitulo'),
			('A0020', 3, 'Subtitulo'),
			('A0020', 4, 'Subtitulo'),
			('A0020', 5, 'Subtitulo'),
			('A0020', 6, 'Subtitulo'),

			('A0021', 1, 'Voz'),
			('A0021', 2, 'Voz'),
			('A0021', 3, 'Voz'),
			('A0021', 4, 'Voz'),
			('A0021', 5, 'Voz'),
			('A0021', 6, 'Voz'),
			('A0021', 1, 'Subtitulo'),
			('A0021', 2, 'Subtitulo'),
			('A0021', 3, 'Subtitulo'),
			('A0021', 4, 'Subtitulo'),
			('A0021', 5, 'Subtitulo'),
			('A0021', 6, 'Subtitulo'),

			('A0022', 3, 'Voz'),
			('A0022', 7, 'Voz'),
			('A0022', 3, 'Subtitulo'),

			('A0023', 3, 'Voz'),
			('A0023', 7, 'Voz'),
			('A0023', 3, 'Subtitulo'),

			('A0024', 3, 'Voz'),
			('A0024', 7, 'Voz'),
			('A0024', 3, 'Subtitulo'),

			('A0025', 3, 'Voz'),
			('A0025', 7, 'Voz'),
			('A0025', 3, 'Subtitulo'),

			('A0026', 3, 'Voz'),
			('A0026', 7, 'Voz'),
			('A0026', 3, 'Subtitulo'),

			('A0027', 6, 'Voz'),
			('A0027', 7, 'Subtitulo'),

			('A0028', 6, 'Voz'),
			('A0028', 7, 'Subtitulo'),

			('A0029', 1, 'Voz'),
			('A0029', 2, 'Voz'),
			('A0029', 3, 'Voz'),
			('A0029', 4, 'Voz'),
			('A0029', 5, 'Voz'),
			('A0029', 6, 'Voz'),
			('A0029', 7, 'Voz'),
			('A0029', 8, 'Voz'),
			('A0029', 9, 'Voz'),
			('A0029', 1, 'Subtitulo'),
			('A0029', 2, 'Subtitulo'),
			('A0029', 3, 'Subtitulo'),
			('A0029', 4, 'Subtitulo'),
			('A0029', 5, 'Subtitulo'),
			('A0029', 6, 'Subtitulo'),
			('A0029', 7, 'Subtitulo'),
			('A0029', 8, 'Subtitulo'),
			('A0029', 9, 'Subtitulo'),

			('A0030', 1, 'Voz'),
			('A0030', 2, 'Voz'),
			('A0030', 3, 'Voz'),
			('A0030', 4, 'Voz'),
			('A0030', 5, 'Voz'),
			('A0030', 6, 'Voz'),
			('A0030', 7, 'Voz'),
			('A0030', 8, 'Voz'),
			('A0030', 9, 'Voz'),
			('A0030', 1, 'Subtitulo'),
			('A0030', 2, 'Subtitulo'),
			('A0030', 3, 'Subtitulo'),
			('A0030', 4, 'Subtitulo'),
			('A0030', 5, 'Subtitulo'),
			('A0030', 6, 'Subtitulo'),
			('A0030', 7, 'Subtitulo'),
			('A0030', 8, 'Subtitulo'),
			('A0030', 9, 'Subtitulo'),

			('A0031', 1, 'Voz'),
			('A0031', 2, 'Voz'),
			('A0031', 3, 'Voz'),
			('A0031', 4, 'Voz'),
			('A0031', 5, 'Voz'),
			('A0031', 6, 'Voz'),
			('A0031', 7, 'Voz'),
			('A0031', 8, 'Voz'),
			('A0031', 9, 'Voz'),
			('A0031', 1, 'Subtitulo'),
			('A0031', 2, 'Subtitulo'),
			('A0031', 3, 'Subtitulo'),
			('A0031', 4, 'Subtitulo'),
			('A0031', 5, 'Subtitulo'),
			('A0031', 6, 'Subtitulo'),
			('A0031', 7, 'Subtitulo'),
			('A0031', 8, 'Subtitulo'),
			('A0031', 9, 'Subtitulo'),

			('A0032', 1, 'Voz'),
			('A0032', 2, 'Voz'),
			('A0032', 3, 'Voz'),
			('A0032', 4, 'Voz'),
			('A0032', 5, 'Voz'),
			('A0032', 6, 'Voz'),
			('A0032', 7, 'Voz'),
			('A0032', 8, 'Voz'),
			('A0032', 9, 'Voz'),
			('A0032', 1, 'Subtitulo'),
			('A0032', 2, 'Subtitulo'),
			('A0032', 3, 'Subtitulo'),
			('A0032', 4, 'Subtitulo'),
			('A0032', 5, 'Subtitulo'),
			('A0032', 6, 'Subtitulo'),
			('A0032', 7, 'Subtitulo'),
			('A0032', 8, 'Subtitulo'),
			('A0032', 9, 'Subtitulo'),

			('A0033', 1, 'Voz'),
			('A0033', 2, 'Voz'),
			('A0033', 3, 'Voz'),
			('A0033', 4, 'Voz'),
			('A0033', 5, 'Voz'),
			('A0033', 6, 'Voz'),
			('A0033', 7, 'Voz'),
			('A0033', 8, 'Voz'),
			('A0033', 9, 'Voz'),
			('A0033', 1, 'Subtitulo'),
			('A0033', 2, 'Subtitulo'),
			('A0033', 3, 'Subtitulo'),
			('A0033', 4, 'Subtitulo'),
			('A0033', 5, 'Subtitulo'),
			('A0033', 6, 'Subtitulo'),
			('A0033', 7, 'Subtitulo'),
			('A0033', 8, 'Subtitulo'),
			('A0033', 9, 'Subtitulo'),

			('A0034', 2, 'Subtitulo'),
			('A0034', 3, 'Subtitulo'),
			('A0034', 4, 'Subtitulo'),
			('A0034', 5, 'Subtitulo'),
			('A0034', 6, 'Subtitulo'),
			('A0034', 9, 'Subtitulo'),

			('A0035', 2, 'Subtitulo'),
			('A0035', 3, 'Subtitulo'),
			('A0035', 4, 'Subtitulo'),
			('A0035', 5, 'Subtitulo'),
			('A0035', 6, 'Subtitulo'),
			('A0035', 9, 'Subtitulo'),

			('A0036', 2, 'Subtitulo'),
			('A0036', 3, 'Subtitulo'),
			('A0036', 4, 'Subtitulo'),
			('A0036', 5, 'Subtitulo'),
			('A0036', 6, 'Subtitulo'),
			('A0036', 9, 'Subtitulo')
GO

INSERT INTO [dbo].[TDU_Classificacao]
           ([CDU_idArtigo]
           ,[CDU_idCliente]
           ,[CDU_Valor]
           ,[CDU_Comentario])
     VALUES
           ('A0001', 'C0001', 95, 'Muita bom!!'),
		   ('A0001', 'C0002', 95, 'Mehh'),
		   ('A0002', 'C0001', 98, 'Esta melhor que a vers�o da PS3')
GO