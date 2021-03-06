 
 /* Criação da Base de Dados */ 
 CREATE DATABASE IF NOT EXISTS LIVRARIA;


USE LIVRARIA; 
 
 /* Criação da tabela */ 
 CREATE TABLE IF NOT EXISTS LIVROS(
	NOME_DO_LIVRO VARCHAR(30),
	NOME_DO_AUTOR VARCHAR(30),
	SEXO_DO_AUTOR ENUM('FEMININO', 'MASCULINO'),
	NUMERO_DE_PAGINAS INT,
	NOME_DA_EDITORA VARCHAR(30),
	VALOR_DO_LIVRO DOUBLE ,
	UF_DA_EDITORA CHAR(2),
	ANO_PUBLICACAO INT
 );
 
 select * from LIVROS;
 
/* INSERINDO DADOS NA TABELA */
 INSERT INTO LIVROS (NOME_DO_LIVRO, NOME_DO_AUTOR, SEXO_DO_AUTOR, NUMERO_DE_PAGINAS,
 NOME_DA_EDITORA, VALOR_DO_LIVRO, UF_DA_EDITORA, ANO_PUBLICACAO) VALUES
 ('Cavaleiro Real','Ana Claudia','FEMININO',465,'Atlas',49.9,'RJ',2009),
 ('SQL para leigos','João Nunes','MASCULINO',450,'Addison',98,'SP',2018),
 ('Receitas Caseiras','Celia Tavares','FEMININO',210,'Atlas',45,'RJ',2008),
 ('Pessoas Efetivas','Eduardo Santos','MASCULINO',390,'Beta',78.99,'RJ',2018),
 ('Habitos Saudáveis','Eduardo Santos','MASCULINO',630,'Beta',150.98,'RJ',2019),
 ('A Casa Marrom','Hermes Macedo','MASCULINO',250,'Bubba',60,'MG',2016),
 ('Estacio Querido','Geraldo Francisco','MASCULINO',310,'Insignia',100,'ES',2015),
 ('Pra sempre amigas','Leda Silva','FEMININO',510,'Insignia',78.98,'ES',2011),
 ('Copas Inesqueciveis','Marco Alcantara','MASCULINO',200,'Larson',130.98,'RS',2018),
 ('O poder da mente','Clara Mafra','FEMININO',120,'Continital',56.58,'RS',2017);
 
 USE LIVRARIA; 
 
 /* Queries á tabela LIVROS */
 
 /* 1 – Trazer todos os dados. */
 SELECT * FROM LIVROS;
 
 /* 2 – Trazer o nome do livro e o nome da editora */
 SELECT NOME_DO_LIVRO, NOME_DA_EDITORA FROM LIVROS;
 
 /* 3 – Trazer o nome do livro e a UF dos livros publicados por autores do sexo masculino..*/
 SELECT NOME_DO_LIVRO, UF_DA_EDITORA FROM LIVROS WHERE SEXO_DO_AUTOR = 'MASCULINO';
 
 /* 4 - Trazer o nome do livro e o número de páginas dos livros publicados por autores do sexo feminino.*/
SELECT 	NOME_DO_LIVRO, NUMERO_DE_PAGINAS FROM LIVROS WHERE SEXO_DO_AUTOR = 'FEMININO';	

/* 5 – Trazer os valores dos livros das editoras de São Paulo. */
SELECT * FROM LIVROS WHERE UF_DA_EDITORA = 'SP';

/*6 – Trazer os dados dos autores do sexo masculino que tiveram livros publicados por São Paulo ou Rio de Janeiro (Questão Desafio).*/

SELECT * FROM LIVROS WHERE SEXO_DO_AUTOR = 'MASCULINO' AND UF_DA_EDITORA = 'SP' OR UF_DA_EDITORA = 'RJ';