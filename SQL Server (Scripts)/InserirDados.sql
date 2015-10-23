USE [PRI2015]
GO

INSERT INTO [dbo].[TDU_ClienteAuxiliar]
	([CDU_codCliente]
	,[CDU_Sexo]
	,[CDU_Email]
	,[CDU_Password])
     VALUES
	('C0001','M', 'ei12012@fe.up.pt', '9d4e1e23bd5b727046a9e3b4b7db56db8d6ee684'),
	('C0002','M', 'altera@fe.up.pt', '9d4e1e23bd5b727046a9e3b4b7db56db8d6ee684'),
	('C0003','M', 'ei11009@fe.up.pt', '9d4e1e23bd5b727046a9e3b4b7db56db8d6ee684'),
	('C0004','M', 'up201002597@fc.up.pt', '9d4e1e23bd5b727046a9e3b4b7db56db8d6ee684'),
	('C0005','F', 'up201107685@fc.up.pt', '9d4e1e23bd5b727046a9e3b4b7db56db8d6ee684')
GO

INSERT INTO [dbo].[TDU_ArtigoAuxiliar]
    ([CDU_codArtigo]
    ,[CDU_Empresa]
	,[CDU_Ano]
    ,[CDU_Idade]
    ,[CDU_Visitas]
    ,[CDU_Oculto])
     VALUES
			('GRAND THEFT AUTO V (PS3)', 'Rockstar Games', 2013, 18, 0, 0),
			('GRAND THEFT AUTO V (PS4)', 'Rockstar Games', 2013, 18, 0, 0),
			('GRAND THEFT AUTO V (PC)', 'Rockstar Games', 2013, 18, 0, 0),
			('GRAND THEFT AUTO V (X360)', 'Rockstar Games', 2013, 18, 0, 0),
			('GRAND THEFT AUTO V (XONE)', 'Rockstar Games', 2013, 18, 0, 0),
			('FINAL FANTASY XIV: A REALM REBORN (PS3)', 'Square Enix', 2013, 16, 0, 0),
			('FINAL FANTASY XIV: A REALM REBORN (PS4)', 'Square Enix', 2013, 16, 0, 0),
			('FINAL FANTASY XIV: A REALM REBORN (PC)', 'Square Enix', 2013, 16, 0, 0),
			('FINAL FANTASY XIV: A REALM REBORN (X360)', 'Square Enix', 2013, 16, 0, 0),
			('FINAL FANTASY XIV: A REALM REBORN (XONE)', 'Square Enix', 2013, 16, 0, 0),
			('MINECRAFT (PS3)', 'Mojang', 2011, 12, 0, 0),
			('MINECRAFT (PS4)', 'Mojang', 2011, 12, 0, 0),
			('MINECRAFT (PSP)', 'Mojang', 2011, 12, 0, 0),
			('MINECRAFT (PSV)', 'Mojang', 2011, 12, 0, 0),
			('MINECRAFT (PC)', 'Mojang', 2011, 12, 0, 0),
			('MINECRAFT (X360)', 'Mojang', 2011, 12, 0, 0),
			('MINECRAFT (XONE)', 'Mojang', 2011, 12, 0, 0),
			('ASSASSIN''S CREED: UNITY (PS3)', 'Ubisoft', 2013, 4, 0, 0),
			('ASSASSIN''S CREED: UNITY (PS4)', 'Ubisoft', 2013, 4, 0, 0),
			('ASSASSIN''S CREED: UNITY (X360)', 'Ubisoft', 2013, 4, 0, 0),
			('ASSASSIN''S CREED: UNITY (XONE)', 'Ubisoft', 2013, 4, 0, 0),
			('CALL OF DUTY: ADVANCED WARFARE (PS3)', 'Actionvision', 2014, 18, 0, 0),
			('CALL OF DUTY: ADVANCED WARFARE (PS4)', 'Actionvision', 2014, 18, 0, 0),
			('CALL OF DUTY: ADVANCED WARFARE (PC)', 'Actionvision', 2014, 18, 0, 0),
			('CALL OF DUTY: ADVANCED WARFARE (X360)', 'Actionvision', 2014, 18, 0, 0),
			('CALL OF DUTY: ADVANCED WARFARE (XONE)', 'Actionvision', 2014, 18, 0, 0),
			('TEKKEN 6 (PS3)', 'Namco', 2007, 12, 0, 0),
			('TEKKEN 6 (PSP)', 'Namco', 2007, 12, 0, 0),
			('PRO EVOLUTION SOCCER 2016 (PS3)', 'Konami', 2015, 4, 0, 0),
			('PRO EVOLUTION SOCCER 2016 (PS4)', 'Konami', 2015, 4, 0, 0),
			('PRO EVOLUTION SOCCER 2016 (PC)', 'Konami', 2015, 4, 0, 0),
			('PRO EVOLUTION SOCCER 2016 (X360)', 'Konami', 2015, 4, 0, 0),
			('PRO EVOLUTION SOCCER 2016 (XONE)', 'Konami', 2015, 4, 0, 0),
			('POKÉMON OMEGA RUBY (3DS)', 'Gamefreak', 2014, 6, 0, 0),
			('POKÉMON ALPHA SAPPHIRE (3DS)', 'Gamefreak', 2014, 6, 0, 0),
			('THE LEGEND OF ZELDA: MAJORA''S MASK 3D (3DS)', 'Grezzo', 2015, 12, 0, 0)
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
			('GRAND THEFT AUTO V (PS3)', 1),
			('GRAND THEFT AUTO V (PS3)', 3),
			('GRAND THEFT AUTO V (PS3)', 9),

			('GRAND THEFT AUTO V (PS4)', 1),
			('GRAND THEFT AUTO V (PS4)', 3),
			('GRAND THEFT AUTO V (PS4)', 9),

			('GRAND THEFT AUTO V (PC)', 1),
			('GRAND THEFT AUTO V (PC)', 3),
			('GRAND THEFT AUTO V (PC)', 9),

			('GRAND THEFT AUTO V (X360)', 1),
			('GRAND THEFT AUTO V (X360)', 3),
			('GRAND THEFT AUTO V (X360)', 9),

			('GRAND THEFT AUTO V (XOne)', 1),
			('GRAND THEFT AUTO V (XOne)', 3),
			('GRAND THEFT AUTO V (XOne)', 9),

			('FINAL FANTASY XIV: A REALM REBORN (PS3)', 2),
			('FINAL FANTASY XIV: A REALM REBORN (PS3)', 5),
			('FINAL FANTASY XIV: A REALM REBORN (PS3)', 6),
			('FINAL FANTASY XIV: A REALM REBORN (PS3)', 9),

			('FINAL FANTASY XIV: A REALM REBORN (PS4)', 2),
			('FINAL FANTASY XIV: A REALM REBORN (PS4)', 5),
			('FINAL FANTASY XIV: A REALM REBORN (PS4)', 6),
			('FINAL FANTASY XIV: A REALM REBORN (PS4)', 9),

			('FINAL FANTASY XIV: A REALM REBORN (PC)', 2),
			('FINAL FANTASY XIV: A REALM REBORN (PC)', 5),
			('FINAL FANTASY XIV: A REALM REBORN (PC)', 6),
			('FINAL FANTASY XIV: A REALM REBORN (PC)', 9),

			('FINAL FANTASY XIV: A REALM REBORN (X360)', 2),
			('FINAL FANTASY XIV: A REALM REBORN (X360)', 5),
			('FINAL FANTASY XIV: A REALM REBORN (X360)', 6),
			('FINAL FANTASY XIV: A REALM REBORN (X360)', 9),

			('FINAL FANTASY XIV: A REALM REBORN (XOne)', 2),
			('FINAL FANTASY XIV: A REALM REBORN (XOne)', 5),
			('FINAL FANTASY XIV: A REALM REBORN (XOne)', 6),
			('FINAL FANTASY XIV: A REALM REBORN (XOne)', 9),

			('MINECRAFT (PS3)', 2),
			('MINECRAFT (PS3)', 6),
			('MINECRAFT (PS3)', 7),
			('MINECRAFT (PS3)', 9),

			('MINECRAFT (PS4)', 2),
			('MINECRAFT (PS4)', 6),
			('MINECRAFT (PS4)', 7),
			('MINECRAFT (PS4)', 9),

			('MINECRAFT (PSP)', 2),
			('MINECRAFT (PSP)', 6),
			('MINECRAFT (PSP)', 7),
			('MINECRAFT (PSP)', 9),

			('MINECRAFT (PSV)', 2),
			('MINECRAFT (PSV)', 6),
			('MINECRAFT (PSV)', 7),
			('MINECRAFT (PSV)', 9),

			('MINECRAFT (PC)', 2),
			('MINECRAFT (PC)', 6),
			('MINECRAFT (PC)', 7),
			('MINECRAFT (PC)', 9),

			('MINECRAFT (X360)', 2),
			('MINECRAFT (X360)', 6),
			('MINECRAFT (X360)', 7),
			('MINECRAFT (X360)', 9),

			('MINECRAFT (XOne)', 2),
			('MINECRAFT (XOne)', 6),
			('MINECRAFT (XOne)', 7),
			('MINECRAFT (XOne)', 9),

			('ASSASSIN''S CREED: UNITY (PS3)', 1),
			('ASSASSIN''S CREED: UNITY (PS3)', 2),
			('ASSASSIN''S CREED: UNITY (PS3)', 6),
			('ASSASSIN''S CREED: UNITY (PS3)', 9),

			('ASSASSIN''S CREED: UNITY (PS4)', 1),
			('ASSASSIN''S CREED: UNITY (PS4)', 2),
			('ASSASSIN''S CREED: UNITY (PS4)', 6),
			('ASSASSIN''S CREED: UNITY (PS4)', 9),

			('ASSASSIN''S CREED: UNITY (X360)', 1),
			('ASSASSIN''S CREED: UNITY (X360)', 2),
			('ASSASSIN''S CREED: UNITY (X360)', 6),
			('ASSASSIN''S CREED: UNITY (X360)', 9),

			('ASSASSIN''S CREED: UNITY (XOne)', 1),
			('ASSASSIN''S CREED: UNITY (XOne)', 2),
			('ASSASSIN''S CREED: UNITY (XOne)', 6),
			('ASSASSIN''S CREED: UNITY (XOne)', 9),

			('CALL OF DUTY: ADVANCED WARFARE (PS3)', 1),
			('CALL OF DUTY: ADVANCED WARFARE (PS3)', 3),
			('CALL OF DUTY: ADVANCED WARFARE (PS3)', 6),
			('CALL OF DUTY: ADVANCED WARFARE (PS3)', 7),
			('CALL OF DUTY: ADVANCED WARFARE (PS3)', 9),

			('CALL OF DUTY: ADVANCED WARFARE (PS4)', 1),
			('CALL OF DUTY: ADVANCED WARFARE (PS4)', 3),
			('CALL OF DUTY: ADVANCED WARFARE (PS4)', 6),
			('CALL OF DUTY: ADVANCED WARFARE (PS4)', 7),
			('CALL OF DUTY: ADVANCED WARFARE (PS4)', 9),

			('CALL OF DUTY: ADVANCED WARFARE (PC)', 1),
			('CALL OF DUTY: ADVANCED WARFARE (PC)', 3),
			('CALL OF DUTY: ADVANCED WARFARE (PC)', 6),
			('CALL OF DUTY: ADVANCED WARFARE (PC)', 7),
			('CALL OF DUTY: ADVANCED WARFARE (PC)', 9),

			('CALL OF DUTY: ADVANCED WARFARE (X360)', 1),
			('CALL OF DUTY: ADVANCED WARFARE (X360)', 3),
			('CALL OF DUTY: ADVANCED WARFARE (X360)', 6),
			('CALL OF DUTY: ADVANCED WARFARE (X360)', 7),
			('CALL OF DUTY: ADVANCED WARFARE (X360)', 9),

			('CALL OF DUTY: ADVANCED WARFARE (XOne)', 1),
			('CALL OF DUTY: ADVANCED WARFARE (XOne)', 3),
			('CALL OF DUTY: ADVANCED WARFARE (XOne)', 6),
			('CALL OF DUTY: ADVANCED WARFARE (XOne)', 7),
			('CALL OF DUTY: ADVANCED WARFARE (XOne)', 9),

			('TEKKEN 6 (PS3)', 1),
			('TEKKEN 6 (PS3)', 4),
			('TEKKEN 6 (PS3)', 6),
			('TEKKEN 6 (PS3)', 7),
			('TEKKEN 6 (PS3)', 9),

			('TEKKEN 6 (PSP)', 1),
			('TEKKEN 6 (PSP)', 4),
			('TEKKEN 6 (PSP)', 6),
			('TEKKEN 6 (PSP)', 7),
			('TEKKEN 6 (PSP)', 9),

			('PRO EVOLUTION SOCCER 2016 (PS3)', 6),
			('PRO EVOLUTION SOCCER 2016 (PS3)', 7),
			('PRO EVOLUTION SOCCER 2016 (PS3)', 8),
			('PRO EVOLUTION SOCCER 2016 (PS3)', 9),

			('PRO EVOLUTION SOCCER 2016 (PS4)', 6),
			('PRO EVOLUTION SOCCER 2016 (PS4)', 7),
			('PRO EVOLUTION SOCCER 2016 (PS4)', 8),
			('PRO EVOLUTION SOCCER 2016 (PS4)', 9),

			('PRO EVOLUTION SOCCER 2016 (PC)', 6),
			('PRO EVOLUTION SOCCER 2016 (PC)', 7),
			('PRO EVOLUTION SOCCER 2016 (PC)', 8),
			('PRO EVOLUTION SOCCER 2016 (PC)', 9),

			('PRO EVOLUTION SOCCER 2016 (X360)', 6),
			('PRO EVOLUTION SOCCER 2016 (X360)', 7),
			('PRO EVOLUTION SOCCER 2016 (X360)', 8),
			('PRO EVOLUTION SOCCER 2016 (X360)', 9),

			('PRO EVOLUTION SOCCER 2016 (XOne)', 6),
			('PRO EVOLUTION SOCCER 2016 (XOne)', 7),
			('PRO EVOLUTION SOCCER 2016 (XOne)', 8),
			('PRO EVOLUTION SOCCER 2016 (XOne)', 9),

			('POKÉMON OMEGA RUBY (3DS)', 2),
			('POKÉMON OMEGA RUBY (3DS)', 5),
			('POKÉMON OMEGA RUBY (3DS)', 6),
			('POKÉMON OMEGA RUBY (3DS)', 9),

			('POKÉMON ALPHA SAPPHIRE (3DS)', 2),
			('POKÉMON ALPHA SAPPHIRE (3DS)', 5),
			('POKÉMON ALPHA SAPPHIRE (3DS)', 6),
			('POKÉMON ALPHA SAPPHIRE (3DS)', 9),

			('THE LEGEND OF ZELDA: MAJORA''S MASK 3D (3DS)', 2),
			('THE LEGEND OF ZELDA: MAJORA''S MASK 3D (3DS)', 6)
GO

INSERT INTO [dbo].[TDU_ArtigoIdioma]
           ([CDU_idArtigo]
           ,[CDU_idIdioma]
           ,[CDU_Tipo])
     VALUES
			('GRAND THEFT AUTO V (PS3)', 3, 'Voz'),
			('GRAND THEFT AUTO V (PS3)', 2, 'Subtitulo'),
			('GRAND THEFT AUTO V (PS3)', 3, 'Subtitulo'),
			('GRAND THEFT AUTO V (PS3)', 4, 'Subtitulo'),
			('GRAND THEFT AUTO V (PS3)', 5, 'Subtitulo'),
			('GRAND THEFT AUTO V (PS3)', 6, 'Subtitulo'),

			('GRAND THEFT AUTO V (PS4)', 3, 'Voz'),
			('GRAND THEFT AUTO V (PS4)', 2, 'Subtitulo'),
			('GRAND THEFT AUTO V (PS4)', 3, 'Subtitulo'),
			('GRAND THEFT AUTO V (PS4)', 4, 'Subtitulo'),
			('GRAND THEFT AUTO V (PS4)', 5, 'Subtitulo'),
			('GRAND THEFT AUTO V (PS4)', 6, 'Subtitulo'),

			('GRAND THEFT AUTO V (PC)', 3, 'Voz'),
			('GRAND THEFT AUTO V (PC)', 2, 'Subtitulo'),
			('GRAND THEFT AUTO V (PC)', 3, 'Subtitulo'),
			('GRAND THEFT AUTO V (PC)', 4, 'Subtitulo'),
			('GRAND THEFT AUTO V (PC)', 5, 'Subtitulo'),
			('GRAND THEFT AUTO V (PC)', 6, 'Subtitulo'),

			('GRAND THEFT AUTO V (X360)', 3, 'Voz'),
			('GRAND THEFT AUTO V (X360)', 2, 'Subtitulo'),
			('GRAND THEFT AUTO V (X360)', 3, 'Subtitulo'),
			('GRAND THEFT AUTO V (X360)', 4, 'Subtitulo'),
			('GRAND THEFT AUTO V (X360)', 5, 'Subtitulo'),
			('GRAND THEFT AUTO V (X360)', 6, 'Subtitulo'),

			('GRAND THEFT AUTO V (XOne)', 3, 'Voz'),
			('GRAND THEFT AUTO V (XOne)', 2, 'Subtitulo'),
			('GRAND THEFT AUTO V (XOne)', 3, 'Subtitulo'),
			('GRAND THEFT AUTO V (XOne)', 4, 'Subtitulo'),
			('GRAND THEFT AUTO V (XOne)', 5, 'Subtitulo'),
			('GRAND THEFT AUTO V (XOne)', 6, 'Subtitulo'),

			('FINAL FANTASY XIV: A REALM REBORN (PS3)', 9, 'Voz'),
			('FINAL FANTASY XIV: A REALM REBORN (PS3)', 3, 'Subtitulo'),
			('FINAL FANTASY XIV: A REALM REBORN (PS3)', 6, 'Subtitulo'),
			('FINAL FANTASY XIV: A REALM REBORN (PS3)', 9, 'Subtitulo'),

			('FINAL FANTASY XIV: A REALM REBORN (PS4)', 9, 'Voz'),
			('FINAL FANTASY XIV: A REALM REBORN (PS4)', 3, 'Subtitulo'),
			('FINAL FANTASY XIV: A REALM REBORN (PS4)', 6, 'Subtitulo'),
			('FINAL FANTASY XIV: A REALM REBORN (PS4)', 9, 'Subtitulo'),

			('FINAL FANTASY XIV: A REALM REBORN (PC)', 9, 'Voz'),
			('FINAL FANTASY XIV: A REALM REBORN (PC)', 3, 'Subtitulo'),
			('FINAL FANTASY XIV: A REALM REBORN (PC)', 6, 'Subtitulo'),
			('FINAL FANTASY XIV: A REALM REBORN (PC)', 9, 'Subtitulo'),

			('FINAL FANTASY XIV: A REALM REBORN (X360)', 9, 'Voz'),
			('FINAL FANTASY XIV: A REALM REBORN (X360)', 3, 'Subtitulo'),
			('FINAL FANTASY XIV: A REALM REBORN (X360)', 6, 'Subtitulo'),
			('FINAL FANTASY XIV: A REALM REBORN (X360)', 9, 'Subtitulo'),

			('FINAL FANTASY XIV: A REALM REBORN (XOne)', 9, 'Voz'),
			('FINAL FANTASY XIV: A REALM REBORN (XOne)', 3, 'Subtitulo'),
			('FINAL FANTASY XIV: A REALM REBORN (XOne)', 6, 'Subtitulo'),
			('FINAL FANTASY XIV: A REALM REBORN (XOne)', 9, 'Subtitulo'),

			('MINECRAFT (PS3)', 1, 'Subtitulo'),
			('MINECRAFT (PS3)', 2, 'Subtitulo'),
			('MINECRAFT (PS3)', 3, 'Subtitulo'),
			('MINECRAFT (PS3)', 4, 'Subtitulo'),
			('MINECRAFT (PS3)', 5, 'Subtitulo'),
			('MINECRAFT (PS3)', 6, 'Subtitulo'),
			('MINECRAFT (PS3)', 7, 'Subtitulo'),
			('MINECRAFT (PS3)', 8, 'Subtitulo'),
			('MINECRAFT (PS3)', 9, 'Subtitulo'),

			('MINECRAFT (PS4)', 1, 'Subtitulo'),
			('MINECRAFT (PS4)', 2, 'Subtitulo'),
			('MINECRAFT (PS4)', 3, 'Subtitulo'),
			('MINECRAFT (PS4)', 4, 'Subtitulo'),
			('MINECRAFT (PS4)', 5, 'Subtitulo'),
			('MINECRAFT (PS4)', 6, 'Subtitulo'),
			('MINECRAFT (PS4)', 7, 'Subtitulo'),
			('MINECRAFT (PS4)', 8, 'Subtitulo'),
			('MINECRAFT (PS4)', 9, 'Subtitulo'),

			('MINECRAFT (PSP)', 1, 'Subtitulo'),
			('MINECRAFT (PSP)', 2, 'Subtitulo'),
			('MINECRAFT (PSP)', 3, 'Subtitulo'),
			('MINECRAFT (PSP)', 4, 'Subtitulo'),
			('MINECRAFT (PSP)', 5, 'Subtitulo'),
			('MINECRAFT (PSP)', 6, 'Subtitulo'),
			('MINECRAFT (PSP)', 7, 'Subtitulo'),
			('MINECRAFT (PSP)', 8, 'Subtitulo'),
			('MINECRAFT (PSP)', 9, 'Subtitulo'),

			('MINECRAFT (PSV)', 1, 'Subtitulo'),
			('MINECRAFT (PSV)', 2, 'Subtitulo'),
			('MINECRAFT (PSV)', 3, 'Subtitulo'),
			('MINECRAFT (PSV)', 4, 'Subtitulo'),
			('MINECRAFT (PSV)', 5, 'Subtitulo'),
			('MINECRAFT (PSV)', 6, 'Subtitulo'),
			('MINECRAFT (PSV)', 7, 'Subtitulo'),
			('MINECRAFT (PSV)', 8, 'Subtitulo'),
			('MINECRAFT (PSV)', 9, 'Subtitulo'),

			('MINECRAFT (PC)', 1, 'Subtitulo'),
			('MINECRAFT (PC)', 2, 'Subtitulo'),
			('MINECRAFT (PC)', 3, 'Subtitulo'),
			('MINECRAFT (PC)', 4, 'Subtitulo'),
			('MINECRAFT (PC)', 5, 'Subtitulo'),
			('MINECRAFT (PC)', 6, 'Subtitulo'),
			('MINECRAFT (PC)', 7, 'Subtitulo'),
			('MINECRAFT (PC)', 8, 'Subtitulo'),
			('MINECRAFT (PC)', 9, 'Subtitulo'),

			('MINECRAFT (X360)', 1, 'Subtitulo'),
			('MINECRAFT (X360)', 2, 'Subtitulo'),
			('MINECRAFT (X360)', 3, 'Subtitulo'),
			('MINECRAFT (X360)', 4, 'Subtitulo'),
			('MINECRAFT (X360)', 5, 'Subtitulo'),
			('MINECRAFT (X360)', 6, 'Subtitulo'),
			('MINECRAFT (X360)', 7, 'Subtitulo'),
			('MINECRAFT (X360)', 8, 'Subtitulo'),
			('MINECRAFT (X360)', 9, 'Subtitulo'),

			('MINECRAFT (XOne)', 1, 'Subtitulo'),
			('MINECRAFT (XOne)', 2, 'Subtitulo'),
			('MINECRAFT (XOne)', 3, 'Subtitulo'),
			('MINECRAFT (XOne)', 4, 'Subtitulo'),
			('MINECRAFT (XOne)', 5, 'Subtitulo'),
			('MINECRAFT (XOne)', 6, 'Subtitulo'),
			('MINECRAFT (XOne)', 7, 'Subtitulo'),
			('MINECRAFT (XOne)', 8, 'Subtitulo'),
			('MINECRAFT (XOne)', 9, 'Subtitulo'),

			('ASSASSIN''S CREED: UNITY (PS3)', 1, 'Voz'),
			('ASSASSIN''S CREED: UNITY (PS3)', 2, 'Voz'),
			('ASSASSIN''S CREED: UNITY (PS3)', 3, 'Voz'),
			('ASSASSIN''S CREED: UNITY (PS3)', 4, 'Voz'),
			('ASSASSIN''S CREED: UNITY (PS3)', 5, 'Voz'),
			('ASSASSIN''S CREED: UNITY (PS3)', 6, 'Voz'),
			('ASSASSIN''S CREED: UNITY (PS3)', 1, 'Subtitulo'),
			('ASSASSIN''S CREED: UNITY (PS3)', 2, 'Subtitulo'),
			('ASSASSIN''S CREED: UNITY (PS3)', 3, 'Subtitulo'),
			('ASSASSIN''S CREED: UNITY (PS3)', 4, 'Subtitulo'),
			('ASSASSIN''S CREED: UNITY (PS3)', 5, 'Subtitulo'),
			('ASSASSIN''S CREED: UNITY (PS3)', 6, 'Subtitulo'),

			('ASSASSIN''S CREED: UNITY (PS4)', 1, 'Voz'),
			('ASSASSIN''S CREED: UNITY (PS4)', 2, 'Voz'),
			('ASSASSIN''S CREED: UNITY (PS4)', 3, 'Voz'),
			('ASSASSIN''S CREED: UNITY (PS4)', 4, 'Voz'),
			('ASSASSIN''S CREED: UNITY (PS4)', 5, 'Voz'),
			('ASSASSIN''S CREED: UNITY (PS4)', 6, 'Voz'),
			('ASSASSIN''S CREED: UNITY (PS4)', 1, 'Subtitulo'),
			('ASSASSIN''S CREED: UNITY (PS4)', 2, 'Subtitulo'),
			('ASSASSIN''S CREED: UNITY (PS4)', 3, 'Subtitulo'),
			('ASSASSIN''S CREED: UNITY (PS4)', 4, 'Subtitulo'),
			('ASSASSIN''S CREED: UNITY (PS4)', 5, 'Subtitulo'),
			('ASSASSIN''S CREED: UNITY (PS4)', 6, 'Subtitulo'),

			('ASSASSIN''S CREED: UNITY (X360)', 1, 'Voz'),
			('ASSASSIN''S CREED: UNITY (X360)', 2, 'Voz'),
			('ASSASSIN''S CREED: UNITY (X360)', 3, 'Voz'),
			('ASSASSIN''S CREED: UNITY (X360)', 4, 'Voz'),
			('ASSASSIN''S CREED: UNITY (X360)', 5, 'Voz'),
			('ASSASSIN''S CREED: UNITY (X360)', 6, 'Voz'),
			('ASSASSIN''S CREED: UNITY (X360)', 1, 'Subtitulo'),
			('ASSASSIN''S CREED: UNITY (X360)', 2, 'Subtitulo'),
			('ASSASSIN''S CREED: UNITY (X360)', 3, 'Subtitulo'),
			('ASSASSIN''S CREED: UNITY (X360)', 4, 'Subtitulo'),
			('ASSASSIN''S CREED: UNITY (X360)', 5, 'Subtitulo'),
			('ASSASSIN''S CREED: UNITY (X360)', 6, 'Subtitulo'),

			('ASSASSIN''S CREED: UNITY (XOne)', 1, 'Voz'),
			('ASSASSIN''S CREED: UNITY (XOne)', 2, 'Voz'),
			('ASSASSIN''S CREED: UNITY (XOne)', 3, 'Voz'),
			('ASSASSIN''S CREED: UNITY (XOne)', 4, 'Voz'),
			('ASSASSIN''S CREED: UNITY (XOne)', 5, 'Voz'),
			('ASSASSIN''S CREED: UNITY (XOne)', 6, 'Voz'),
			('ASSASSIN''S CREED: UNITY (XOne)', 1, 'Subtitulo'),
			('ASSASSIN''S CREED: UNITY (XOne)', 2, 'Subtitulo'),
			('ASSASSIN''S CREED: UNITY (XOne)', 3, 'Subtitulo'),
			('ASSASSIN''S CREED: UNITY (XOne)', 4, 'Subtitulo'),
			('ASSASSIN''S CREED: UNITY (XOne)', 5, 'Subtitulo'),
			('ASSASSIN''S CREED: UNITY (XOne)', 6, 'Subtitulo'),

			('CALL OF DUTY: ADVANCED WARFARE (PS3)', 3, 'Voz'),
			('CALL OF DUTY: ADVANCED WARFARE (PS3)', 7, 'Voz'),
			('CALL OF DUTY: ADVANCED WARFARE (PS3)', 3, 'Subtitulo'),

			('CALL OF DUTY: ADVANCED WARFARE (PS4)', 3, 'Voz'),
			('CALL OF DUTY: ADVANCED WARFARE (PS4)', 7, 'Voz'),
			('CALL OF DUTY: ADVANCED WARFARE (PS4)', 3, 'Subtitulo'),

			('CALL OF DUTY: ADVANCED WARFARE (PC)', 3, 'Voz'),
			('CALL OF DUTY: ADVANCED WARFARE (PC)', 7, 'Voz'),
			('CALL OF DUTY: ADVANCED WARFARE (PC)', 3, 'Subtitulo'),

			('CALL OF DUTY: ADVANCED WARFARE (X360)', 3, 'Voz'),
			('CALL OF DUTY: ADVANCED WARFARE (X360)', 7, 'Voz'),
			('CALL OF DUTY: ADVANCED WARFARE (X360)', 3, 'Subtitulo'),

			('CALL OF DUTY: ADVANCED WARFARE (XOne)', 3, 'Voz'),
			('CALL OF DUTY: ADVANCED WARFARE (XOne)', 7, 'Voz'),
			('CALL OF DUTY: ADVANCED WARFARE (XOne)', 3, 'Subtitulo'),

			('TEKKEN 6 (PS3)', 6, 'Voz'),
			('TEKKEN 6 (PS3)', 7, 'Subtitulo'),

			('TEKKEN 6 (PSP)', 6, 'Voz'),
			('TEKKEN 6 (PSP)', 7, 'Subtitulo'),

			('PRO EVOLUTION SOCCER 2016 (PS3)', 1, 'Voz'),
			('PRO EVOLUTION SOCCER 2016 (PS3)', 2, 'Voz'),
			('PRO EVOLUTION SOCCER 2016 (PS3)', 3, 'Voz'),
			('PRO EVOLUTION SOCCER 2016 (PS3)', 4, 'Voz'),
			('PRO EVOLUTION SOCCER 2016 (PS3)', 5, 'Voz'),
			('PRO EVOLUTION SOCCER 2016 (PS3)', 6, 'Voz'),
			('PRO EVOLUTION SOCCER 2016 (PS3)', 7, 'Voz'),
			('PRO EVOLUTION SOCCER 2016 (PS3)', 8, 'Voz'),
			('PRO EVOLUTION SOCCER 2016 (PS3)', 9, 'Voz'),
			('PRO EVOLUTION SOCCER 2016 (PS3)', 1, 'Subtitulo'),
			('PRO EVOLUTION SOCCER 2016 (PS3)', 2, 'Subtitulo'),
			('PRO EVOLUTION SOCCER 2016 (PS3)', 3, 'Subtitulo'),
			('PRO EVOLUTION SOCCER 2016 (PS3)', 4, 'Subtitulo'),
			('PRO EVOLUTION SOCCER 2016 (PS3)', 5, 'Subtitulo'),
			('PRO EVOLUTION SOCCER 2016 (PS3)', 6, 'Subtitulo'),
			('PRO EVOLUTION SOCCER 2016 (PS3)', 7, 'Subtitulo'),
			('PRO EVOLUTION SOCCER 2016 (PS3)', 8, 'Subtitulo'),
			('PRO EVOLUTION SOCCER 2016 (PS3)', 9, 'Subtitulo'),

			('PRO EVOLUTION SOCCER 2016 (PS4)', 1, 'Voz'),
			('PRO EVOLUTION SOCCER 2016 (PS4)', 2, 'Voz'),
			('PRO EVOLUTION SOCCER 2016 (PS4)', 3, 'Voz'),
			('PRO EVOLUTION SOCCER 2016 (PS4)', 4, 'Voz'),
			('PRO EVOLUTION SOCCER 2016 (PS4)', 5, 'Voz'),
			('PRO EVOLUTION SOCCER 2016 (PS4)', 6, 'Voz'),
			('PRO EVOLUTION SOCCER 2016 (PS4)', 7, 'Voz'),
			('PRO EVOLUTION SOCCER 2016 (PS4)', 8, 'Voz'),
			('PRO EVOLUTION SOCCER 2016 (PS4)', 9, 'Voz'),
			('PRO EVOLUTION SOCCER 2016 (PS4)', 1, 'Subtitulo'),
			('PRO EVOLUTION SOCCER 2016 (PS4)', 2, 'Subtitulo'),
			('PRO EVOLUTION SOCCER 2016 (PS4)', 3, 'Subtitulo'),
			('PRO EVOLUTION SOCCER 2016 (PS4)', 4, 'Subtitulo'),
			('PRO EVOLUTION SOCCER 2016 (PS4)', 5, 'Subtitulo'),
			('PRO EVOLUTION SOCCER 2016 (PS4)', 6, 'Subtitulo'),
			('PRO EVOLUTION SOCCER 2016 (PS4)', 7, 'Subtitulo'),
			('PRO EVOLUTION SOCCER 2016 (PS4)', 8, 'Subtitulo'),
			('PRO EVOLUTION SOCCER 2016 (PS4)', 9, 'Subtitulo'),

			('PRO EVOLUTION SOCCER 2016 (PC)', 1, 'Voz'),
			('PRO EVOLUTION SOCCER 2016 (PC)', 2, 'Voz'),
			('PRO EVOLUTION SOCCER 2016 (PC)', 3, 'Voz'),
			('PRO EVOLUTION SOCCER 2016 (PC)', 4, 'Voz'),
			('PRO EVOLUTION SOCCER 2016 (PC)', 5, 'Voz'),
			('PRO EVOLUTION SOCCER 2016 (PC)', 6, 'Voz'),
			('PRO EVOLUTION SOCCER 2016 (PC)', 7, 'Voz'),
			('PRO EVOLUTION SOCCER 2016 (PC)', 8, 'Voz'),
			('PRO EVOLUTION SOCCER 2016 (PC)', 9, 'Voz'),
			('PRO EVOLUTION SOCCER 2016 (PC)', 1, 'Subtitulo'),
			('PRO EVOLUTION SOCCER 2016 (PC)', 2, 'Subtitulo'),
			('PRO EVOLUTION SOCCER 2016 (PC)', 3, 'Subtitulo'),
			('PRO EVOLUTION SOCCER 2016 (PC)', 4, 'Subtitulo'),
			('PRO EVOLUTION SOCCER 2016 (PC)', 5, 'Subtitulo'),
			('PRO EVOLUTION SOCCER 2016 (PC)', 6, 'Subtitulo'),
			('PRO EVOLUTION SOCCER 2016 (PC)', 7, 'Subtitulo'),
			('PRO EVOLUTION SOCCER 2016 (PC)', 8, 'Subtitulo'),
			('PRO EVOLUTION SOCCER 2016 (PC)', 9, 'Subtitulo'),

			('PRO EVOLUTION SOCCER 2016 (X360)', 1, 'Voz'),
			('PRO EVOLUTION SOCCER 2016 (X360)', 2, 'Voz'),
			('PRO EVOLUTION SOCCER 2016 (X360)', 3, 'Voz'),
			('PRO EVOLUTION SOCCER 2016 (X360)', 4, 'Voz'),
			('PRO EVOLUTION SOCCER 2016 (X360)', 5, 'Voz'),
			('PRO EVOLUTION SOCCER 2016 (X360)', 6, 'Voz'),
			('PRO EVOLUTION SOCCER 2016 (X360)', 7, 'Voz'),
			('PRO EVOLUTION SOCCER 2016 (X360)', 8, 'Voz'),
			('PRO EVOLUTION SOCCER 2016 (X360)', 9, 'Voz'),
			('PRO EVOLUTION SOCCER 2016 (X360)', 1, 'Subtitulo'),
			('PRO EVOLUTION SOCCER 2016 (X360)', 2, 'Subtitulo'),
			('PRO EVOLUTION SOCCER 2016 (X360)', 3, 'Subtitulo'),
			('PRO EVOLUTION SOCCER 2016 (X360)', 4, 'Subtitulo'),
			('PRO EVOLUTION SOCCER 2016 (X360)', 5, 'Subtitulo'),
			('PRO EVOLUTION SOCCER 2016 (X360)', 6, 'Subtitulo'),
			('PRO EVOLUTION SOCCER 2016 (X360)', 7, 'Subtitulo'),
			('PRO EVOLUTION SOCCER 2016 (X360)', 8, 'Subtitulo'),
			('PRO EVOLUTION SOCCER 2016 (X360)', 9, 'Subtitulo'),

			('PRO EVOLUTION SOCCER 2016 (XOne)', 1, 'Voz'),
			('PRO EVOLUTION SOCCER 2016 (XOne)', 2, 'Voz'),
			('PRO EVOLUTION SOCCER 2016 (XOne)', 3, 'Voz'),
			('PRO EVOLUTION SOCCER 2016 (XOne)', 4, 'Voz'),
			('PRO EVOLUTION SOCCER 2016 (XOne)', 5, 'Voz'),
			('PRO EVOLUTION SOCCER 2016 (XOne)', 6, 'Voz'),
			('PRO EVOLUTION SOCCER 2016 (XOne)', 7, 'Voz'),
			('PRO EVOLUTION SOCCER 2016 (XOne)', 8, 'Voz'),
			('PRO EVOLUTION SOCCER 2016 (XOne)', 9, 'Voz'),
			('PRO EVOLUTION SOCCER 2016 (XOne)', 1, 'Subtitulo'),
			('PRO EVOLUTION SOCCER 2016 (XOne)', 2, 'Subtitulo'),
			('PRO EVOLUTION SOCCER 2016 (XOne)', 3, 'Subtitulo'),
			('PRO EVOLUTION SOCCER 2016 (XOne)', 4, 'Subtitulo'),
			('PRO EVOLUTION SOCCER 2016 (XOne)', 5, 'Subtitulo'),
			('PRO EVOLUTION SOCCER 2016 (XOne)', 6, 'Subtitulo'),
			('PRO EVOLUTION SOCCER 2016 (XOne)', 7, 'Subtitulo'),
			('PRO EVOLUTION SOCCER 2016 (XOne)', 8, 'Subtitulo'),
			('PRO EVOLUTION SOCCER 2016 (XOne)', 9, 'Subtitulo'),

			('POKÉMON OMEGA RUBY (3DS)', 2, 'Subtitulo'),
			('POKÉMON OMEGA RUBY (3DS)', 3, 'Subtitulo'),
			('POKÉMON OMEGA RUBY (3DS)', 4, 'Subtitulo'),
			('POKÉMON OMEGA RUBY (3DS)', 5, 'Subtitulo'),
			('POKÉMON OMEGA RUBY (3DS)', 6, 'Subtitulo'),
			('POKÉMON OMEGA RUBY (3DS)', 9, 'Subtitulo'),

			('POKÉMON ALPHA SAPPHIRE (3DS)', 2, 'Subtitulo'),
			('POKÉMON ALPHA SAPPHIRE (3DS)', 3, 'Subtitulo'),
			('POKÉMON ALPHA SAPPHIRE (3DS)', 4, 'Subtitulo'),
			('POKÉMON ALPHA SAPPHIRE (3DS)', 5, 'Subtitulo'),
			('POKÉMON ALPHA SAPPHIRE (3DS)', 6, 'Subtitulo'),
			('POKÉMON ALPHA SAPPHIRE (3DS)', 9, 'Subtitulo'),

			('THE LEGEND OF ZELDA: MAJORA''S MASK 3D (3DS)', 2, 'Subtitulo'),
			('THE LEGEND OF ZELDA: MAJORA''S MASK 3D (3DS)', 3, 'Subtitulo'),
			('THE LEGEND OF ZELDA: MAJORA''S MASK 3D (3DS)', 4, 'Subtitulo'),
			('THE LEGEND OF ZELDA: MAJORA''S MASK 3D (3DS)', 5, 'Subtitulo'),
			('THE LEGEND OF ZELDA: MAJORA''S MASK 3D (3DS)', 6, 'Subtitulo'),
			('THE LEGEND OF ZELDA: MAJORA''S MASK 3D (3DS)', 9, 'Subtitulo')
GO

INSERT INTO [dbo].[TDU_Classificacao]
           ([CDU_idArtigo]
           ,[CDU_idCliente]
           ,[CDU_Valor]
           ,[CDU_Comentario])
     VALUES
           ('GRAND THEFT AUTO V (PS3)', 'C0001', 95, 'Muita bom!!'),
		   ('GRAND THEFT AUTO V (PS3)', 'C0002', 95, 'Mehh'),
		   ('GRAND THEFT AUTO V (PS4)', 'C0001', 98, 'Esta melhor que a versão da PS3')
GO