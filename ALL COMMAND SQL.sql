SELECT Nome_dpto.Tabela_Dpto, Nome_func.Tabela_Funcionario, 
FROM Tabela_Dpto
INNER JOIN Tabela_Funcionario
ON Tabela_Dpto.Id_dpto = Tabela_Funcionario.Id_dpto
ORDER BY Nome_func


SELECT Nome_func, Data_nasc FROM Tabela_Funcionario 
ORDER BY Data_nasc asc
________________________________________________________________





USE db_Biblioteca

CREATE TABLE tbl_Livro
(
ID_Livro SMALLINT PRIMARY KEY IDENTITY(100,1),
Nome_Livro VARCHAR (50) NOT NULL,
ISBN VARCHAR(30) NOT NULL UNIQUE,
ID_Autor SMALLINT NOT NULL,
Data_Pub SMALLINT NOT NULL,
Preco_Livro MONEY NOT NULL
)



USE db_Biblioteca

CREATE TABLE tbl_Autores
(
ID_Autor SMALLINT PRIMARY KEY,
Nome_Autor VARCHAR (50),
SobreNome_Autor VARCHAR (60)
)



USE db_Biblioteca

CREATE TABLE tbl_editoras
(

ID_Editora SMALLINT PRIMARY KEY IDENTITY,
Nome_Editora VARCHAR (50) NOT NULL

)


USE db_Biblioteca

CREATE TABLE tbl_teste_identidade
(
ID_Teste SMALLINT PRIMARY KEY IDENTITY,
valor SMALLINT NOT NULL
)


INSERT INTO tbl_teste_identidade(valor)VALUES(10)
INSERT INTO tbl_teste_identidade(valor)VALUES(20)
INSERT INTO tbl_teste_identidade(valor)VALUES(30)
INSERT INTO tbl_teste_identidade(valor)VALUES(40)


SELECT * FROM tbl_teste_identidade





ALTER TABLE tbl_Livro
DROP COLUMN ID_Autor



ALTER TABLE tbl_Livro
ADD ID_Autor SMALLINT NOT NULL
CONSTRAINT fk_ID_Autor FOREIGN KEY (ID_Autor)
REFERENCES tbl_autores



ALTER TABLE tbl_Livro
ADD ID_editora SMALLINT NOT NULL
CONSTRAINT fk_ID_editora FOREIGN KEY (ID_editora)
REFERENCES tbl_editoras



ALTER TABLE tbl_Livro
ALTER COLUMN ID_Autor SMALLINT



ALTER TABLE Clientes
ADD PRIMARY KEY (ID_Cliente)



DROP TABLE nome_table
	DROP TABLE Clientes


DROP TABLE tbl_teste_identidade




INSERT INTO tabela (coluna1, coluna2, ...)
VALUES (valor1, valor2, ...)


INSERT INTO tbl_Autores (ID_Autor, Nome_Autor, SobreNome_Autor)
VALUES (1, 'Daniel', 'Barret')

INSERT INTO tbl_Autores (ID_Autor, Nome_Autor, SobreNome_Autor)
VALUES (2, 'Gerald', 'Carter')

INSERT INTO tbl_Autores (ID_Autor, Nome_Autor, SobreNome_Autor)
VALUES (3, 'Mark', 'Sobell')

INSERT INTO tbl_Autores (ID_Autor, Nome_Autor, SobreNome_Autor)
VALUES (4, 'William', 'Stanek')

INSERT INTO tbl_Autores (ID_Autor, Nome_Autor, SobreNome_Autor)
VALUES (5, 'Richard', 'Blum')




INSERT INTO tbl_Editoras (Nome_Editora)
VALUES ('Prentice Hall')

INSERT INTO tbl_Editoras (Nome_Editora)
VALUES ('O´Reilly')

INSERT INTO tbl_Editoras (Nome_Editora)
VALUES ('Microsift Press')

INSERT INTO tbl_Editoras (Nome_Editora)
VALUES ('Wiley')



INSERT INTO tbl_Livros (Nome_Livro, ISBN, Data_Pub, Preco_Livro, ID_Livro, ID_Autor, ID_Editora)
VALUES ('Linux Command Line and Shell Scripting','143856969','20091221', 68.35, 5, 4)

INSERT INTO tbl_Livros (Nome_Livro, ISBN, Data_Pub, Preco_Livro, ID_Livro, ID_Autor, ID_Editora)
VALUES ('SSH, the Secure Shell','127658789','20091221', 58.30, 1, 2)

INSERT INTO tbl_Livros (Nome_Livro, ISBN, Data_Pub, Preco_Livro, ID_Livro, ID_Autor, ID_Editora)
VALUES ('Using Samba','123856789','20001221', 61.45, 2, 2)

INSERT INTO tbl_Livros (Nome_Livro, ISBN, Data_Pub, Preco_Livro, ID_Livro, ID_Autor, ID_Editora)

VALUES ('Fedora and Red Hat Linux','123346789', '20101101', 62.24, 3, 1)
INSERT INTO tbl_Livros (Nome_Livro, ISBN, Data_Pub, Preco_Livro, ID_Livro, ID_Autor, ID_Editora)

INSERT INTO tbl_Livros (Nome_Livro, ISBN, Data_Pub, Preco_Livro, ID_Livro, ID_Autor, ID_Editora)
VALUES ('Windows Server 2012 Inside Out','123356789','20040517', 66.80, 4, 3)

INSERT INTO tbl_Livros (Nome_Livro, ISBN, Data_Pub, Preco_Livro, ID_Livro, ID_Autor, ID_Editora)
VALUES ('Microsoft Exchange Server 2010','123366789','20001221', 45.30, 4, 3)

MASCULINO


use db_Biblioteca

ALTER TABLE tbl_Livros
ALTER COLUMN Data_Pub DATETIME NOT NULL



USE db_Biblioteca

SELECT * from tbl_Livros



USE db_Biblioteca

SELECT ID_Livro, Nome_Livro from tbl_Livros



USE db_Biblioteca

SELECT * from tbl_Livros

ORDER BY ID_Livro


select * from tbl_Livros

ORDER BY ID_Livro DESC



SELECT DISTINCT ID_Autor from tbl_Livros
--Mostra valores únicos (se tiver mais um valor, ele só mostra um único)



SELECT * from tbl_Livros

WHERE ID_Autor = '1'




SELECT * FROM tbl_livros

WHERE ID_Livro > 102 AND ID_Autor < 3;
--Quando todas as condições for VERDADEIRA
--Não retorna nada, se qualquer 1 das condições for FALSA

SELECT * FROM tbl_livros
WHERE ID_Livro > 102 OR ID_Autor < 3;
--Quando pelo menos 1 das condições for VERDADEIRA
--Só não retorna nada, se as 2 condições forem FALSAS




USE db_Biblioteca

--SELECT * FROM tbl_livros

--SINTXE UPDATE

--UPDATE tabela
  --SET coluna1 = valor1, coluna2 = valor2, 
--WHERE "filtro"

UPDATE tbl_Livros
SET Preco_Livro = 65.45
WHERE ID_Livro = 102

UPDATE tbl_livros
 SET Preco_Livro = 80.00,
 ISBN = '0202020'
 WHERE ID_Livro = 115;





--SELECT TOP Nº/PERC%_REGISTROS colunas FROM tabela

SELECT TOP 10 PERCENT Nome_Livro FROM tbl_Livros


SELECT TOP 3 Nome_Livro FROM tbl_Livros




SELECT Nome_Livro
AS Livro
 FROM tbl_livros
 
 
 
 SELECT Nome_Livro
AS Livro, ID_Autor AS Autor
 FROM tbl_livros
 
 
 
 
 
SELECT ID_Livro FROM tbl_livros
UNION
SELECT ID_Autor FROM tbl_autores


SELECT ID_Livro FROM tbl_livros
UNION ALL
SELECT ID_Autor FROM tbl_autores





--SELECT colunas
--INTO nova_tabelas
--FROM tabela_atual


SELECT Nome_Livro, ID_Autor
INTO LivroAutor
FROM tbl_Livros
WHERE ID_Livro > 2

SELECT *
INTO tbl_Livros_Bkp
FROM tbl_Livros


select * from tbl_Livros_Bkp



-- MIN = Valor Mínimo
-- MAX = Valor Máximo
-- AVG = Média Aritmética 
-- SUM = Total(Soma)
-- COUNT = Contar quantidade de itens

SELECT COUNT(*) FROM tbl_autores

SELECT MAX(Preco_Livro) FROM tbl_Livros

SELECT MIN(Preco_livro) FROM  Tbl_Livros

SELECT AVG(Preco_livro) FROM  Tbl_Livros

SELECT SUM(Preco_livro) FROM  Tbl_Livros


SELECT MAX(Preco_Livro) AS MÁXIMO FROM tbl_Livros
SELECT MIN(Preco_livro) AS MÍNIMO FROM  Tbl_Livros
SELECT AVG(Preco_livro) AS MÉDIA FROM  Tbl_Livros
SELECT SUM(Preco_livro) AS SOMA FROM  Tbl_Livros





--BETWEEN

SELECT colunas FROM tabela
WHERE coluna BETWEEN valor1 AND valor2

SELECT * FROM tbl_Livros
WHERE Data_Pub BETWEEN '20040517' AND '20100517'


SELECT Nome_Livro AS Livro, Preco_Livro AS Preco 
FROM tbl_Livros
WHERE Preco_livro BETWEEN 40.00 AND 60.00



--LIKE NOT LIKE

SELECT colunas FROM tabela
WHERE coluna LIKE padrao

--‘%’ — Qualquer cadeia de 0 ou mais caracteres

--‘_’ — Sublinhado: qualquer caracter único

--'[]'-  Qualquer caracter único no intervalo ou conjunto especificado ([a-h];[aeiou])

--'[^]'-  Qualquer caracter único que NAO esteja no intervalo ou conjunto especificado ([a-h];[aeiou])


SELECT Nome_Livro FROM tbl_Livros

WHERE Nome_Livro LIKE 'S%'
--Todos que começam com 'S'


SELECT Nome_Livro FROM tbl_Livros

WHERE Nome_Livro LIKE '%G'
--Todos que Terminam com 'G'


SELECT Nome_Livro FROM tbl_Livros

WHERE Nome_Livro LIKE '_I%'
--Todos que começam com 2ª letra com 'I'


SELECT Nome_Livro FROM tbl_Livros

WHERE Nome_Livro LIKE '[SL]%'
--Todos que começam com 'S' ou 'L'


SELECT Nome_Livro FROM tbl_Livros

WHERE Nome_Livro LIKE '%[gl]'
--Todos que terminam com 'g' ou 'l'


SELECT Nome_Livro FROM tbl_Livros

WHERE Nome_Livro LIKE '_[iS]%'
--Todos que começam com 2ª letra com 'i' ou 'S'


SELECT Nome_Livro FROM tbl_Livros

WHERE Nome_Livro LIKE '_i__o%'
--Todos que começam com 2ª letra com 'i' e 5ª letra 'o' 



JOIN
INNER JOIN

SELECT colunas
FROM tabela1
INNER JOIN tabela2
ON tabela1.coluna = tabela2.coluna;


SELECT * FROM tbl_livros
INNER JOIN tbl_autores
ON tbl_livros.ID_Autor = tbl_autores.ID_Autor; 


SELECT tbl_livros.Nome_Livro, tbl_livros.ISBN, tbl_autores.Nome_Autor
FROM tbl_livros
INNER JOIN tbl_autores
ON tbl_livros.ID_Autor = tbl_autores.ID_Autor;


SELECT L.Nome_Livro AS Livros, E.Nome_editora AS Editoras
FROM tbl_livros AS L
INNER JOIN tbl_editoras AS E
ON L.ID_editora = E.ID_editora
WHERE E.Nome_Editora LIKE 'M%';
































