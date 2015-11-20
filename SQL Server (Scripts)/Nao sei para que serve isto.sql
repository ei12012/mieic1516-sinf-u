USE [PRI2015]
GO

SELECT * FROM Armazens

/*INSERT INTO Armazens(Armazem, Descricao, Telefone, Morada, Localidade, Pais)
VALUES('AR001', 'Armazem Principal', 111111111, 'Rua X', 'Paranhos', 'PT');*/

SELECT * FROM Localizacoes

/*INSERT INTO Localizacoes(Localizacao, Descricao)
VALUES('L0001', 'Paranhos');*/

SELECT * FROM ArmazemLocalizacoes

/*INSERT INTO ArmazemLocalizacoes(Localizacao, Armazem, Activa, Manual)
VALUES('L0001', 'AR001', 1, 1);*/

SELECT * FROM ArtigoArmazem

/*insert into ArtigoArmazem(Artigo, Armazem, Localizacao, StkActual, QtTransito)
VALUES('A0001', 'AR001', 'L0001', 20, 20);*/

SELECT * FROM Fornecedores
/*INSERT INTO Fornecedores(Fornecedor, Nome, Morada, Tel, NumContrib, PessoaSingular, RegimeIvaReembolsos, CambioADataDoc, AutoFacturacao, TrataIvaCaixa)
VALUES('F001', 'BCRSM', 'Rua X', 123123123, 123123123, 1, 1, 1, 1, 1);*/

SELECT * FROM ArtigoFornecedor
insert into ArtigoFornecedor(Artigo, Fornecedor, IvaIncluido)
VALUES('A0001', 'F001', 1);
