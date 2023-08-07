/* Exercício 1 - LIVRARIA */

/* Criando o banco de dados da LIVRARIA */
CREATE DATABASE LIVRARIA;

/* Selecionando o banco de dados */
USE LIVRARIA;

/* Criando a tabela LIVROS */
CREATE TABLE LIVROS(
	NOM_LIVRO VARCHAR(50),
	NOME_AUTOR VARCHAR(50),
	SX_AUTOR VARCHAR(9),
	NUM_PAG CHAR(3),
	NOME_EDITORA VARCHAR(15),
	VALOR_LIVRO FLOAT(4,2),
	UF_EDITORA CHAR(2),
	ANO_PUB CHAR(4)
);

/* Inserindo os dados na tabela */
INSERT INTO LIVROS VALUES('Cavaleiro Real', 'Ana Claudia', 'Feminino', '465','Atlas', 49.9, 'RJ', '2009'),
('SQL para leigos', 'João Nunes', 'Masculino', '450','Addison', 98, 'SP', '2018'),
('Receitas Caseiras', 'Celia Tavares',	'Feminino',	'210',	'Atlas', 45, 'RJ', '2008'),
('Pessoas Efetivas', 'Eduardo Santos', 'Masculino', '390', 'Beta', 78.99, 'RJ',	'2018'),
('Habitos Saudáveis', 'Eduardo Santos',	'Masculino', '630', 'Beta', 150.98,	'RJ', '2019'),
('A Casa Marrom', 'Hermes Macedo', 'Masculino',	'250', 'Bubba',	60,	'MG', '2016'),
('Estacio Querido',	'Geraldo Francisco', 'Masculino', '310', 'Insignia', 100, 'ES', '2015'),
('Pra sempre amigas', 'Leda Silva',	'Feminino',	'510', 'Insignia',	78.98, 'ES', '2011'),
('Copas Inesqueciveis',	'Marco Alcantara', 'Masculino', '200', 'Larson', 130.98, 'RS', '2018'),
('O poder da mente', 'Clara Mafra',	'Feminino',	'120', 'Continental', 56.58, 'SP', '2017');

/* 1 - Trazer todos os dados */
SELECT * FROM LIVROS;

/* 2 - Trazer o nome do livro e o nome da editora */
SELECT NOM_LIVRO, NOME_EDITORA FROM LIVROS;

/* 3 - Trazer o nome do livro e UF dos livros publicados por autores do sexo masculino */
SELECT NOM_LIVRO, UF_EDITORA FROM LIVROS WHERE SX_AUTOR = 'Masculino';

/* 4 - Trazer o nome do livro e o número de páginas dos livros publicados por autores do sexo feminino */
SELECT NOM_LIVRO, NUM_PAG FROM LIVROS WHERE SX_AUTOR = 'Feminino';

/* 5 - Trazer os valores dos livros das editoras de São Paulo */
SELECT NOME_EDITORA FROM LIVROS;

/* DESAFIO - Trazer os dados dos autores do sexo masculino que tiveram livros publicados por São Paulo ou Rio de Janeiro */
SELECT NOME_AUTOR, SX_AUTOR FROM LIVROS WHERE SX_AUTOR = 'Masculino' AND (UF_EDITORA = 'SP' OR UF_EDITORA = 'RJ');

/* OBS. : PARA SABER QUAL BANCO DE DADOS FOI CONECTADO, USAR COMANDO ABAIXO */
STATUS;