/* O COMANDO SELECT 
seleção projeção e junção
*/
USE PROJETO;

SELECT NOW() AS DATA_HORA, 'FILIPE MAFRA' AS PROFESSOR;

SELECT NOW();

SELECT 'FILIPE MAFRA';

SELECT 'BANCO DE DADOS';

/* ALIAS DE COLUNAS */

SELECT NOME, SEXO, EMAIL FROM CLIENTE;

SELECT NOME AS CLIENTE, SEXO, EMAIL FROM CLIENTE;


SELECT NOME, SEXO, EMAIL, ENDERECO FROM CLIENTE;

SELECT NOME, SEXO, EMAIL, ENDERECO, NOW() AS DATA_HORA FROM CLIENTE;

/* APENAS PARA FINS ACADEMICOS */

SELECT * FROM CLIENTE;