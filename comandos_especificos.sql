/* ALGUNS COMANDOS EM ESPECÍFICO */

use projeto;

/* FILTRANDO VALORES NULOS */

--pessoas que tem email igual a nulo
select nome, sexo, endereco from cliente where email is NULL;

--Pessoas que nao tem emial nulo
select nome, sexo, endereco from cliente where email is not NULL;

/* Cláusula update */

update cliente set email = 'JOAO@IG.COM.BR' where nome = 'JOAO'; 

/* Cláusula Delete */

/* DELETANDO REGISTROS */

/* ATENÇÃO: SEMPRE USAR DELETE COM WHERE */
--sempre dê um select para saber qual(is) registros serão deletados
delete from cliente; -- Limpa a tabela

select * from cliente where nome = 'ANA'; -- verificar quantas Ana´s tem no db 
select count (*) from cliente where nome = 'ANA'; --verificar quantos itens tem na tabela

delete from cliente where nome = 'ANA';  

/* OBSERVAÇÃO */

-- Traz apenas um registro específico
select * from cliente where nome = 'CARLA' and email = 'LILIAN@HOTMAIL.COM'; 

-- Traz todos os registros que satisfaz as duas condições
select * from cliente where nome = 'CARLA' or email = 'LILIAN@HOTMAIL.COM'; 