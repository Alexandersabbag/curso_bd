/* Modelagem Básica 
 - ENTIDADE = TABELA 
 - CAMPOS = ATRIBUTOS

CLIENTE 

NOME - CHAR(30)
CPF - NUMBER(11)
EMAIL - CHAR(30)
TELEFONE - CHAR(30)
ENDERECO - CHAR(100)
SEXO - CHAR(1)

/* Processos de modelagem */ 

/*
FASE 1 e 2 - AD(ADM DE DADOS) -> fica a critério do administrador de dados que sabe onde está salvo os dados na empresa
Modelagem conceitual - Rascunho (é discutido com o cliente e o gerente de bd quais variaveis podem ou não ser usadas, por exemplo.)
Modelagem lógica - qualquer programa de modelagem 

FASE 3 - DBA/AD 
Modelagem Física - scripts de banco

*/

/* INICIANDO A MODELAGEM FÍSICA*/

CREATE DATABASE PROJETO; 

/*CONECTANDO NO BANCO*/
USE PROJETO;

/*CRIANDO A TABELA DE CLIENTES*/
CREATE TABLE CLIENTE(
	NOME VARCHAR(30),
	SEXO CHAR(1),
	EMAIL VARCHAR (30),
	CPF INT(11),
	TELEFONE VARCHAR(30),
	ENDERECO VARCHAR(100)
);

/*VERIFICANDO A TABELA*/
SHOW TABLES;

/* DESCOBRINDO A ESTRUTURA DE UMA TABELA*/
DESC CLIENTE;