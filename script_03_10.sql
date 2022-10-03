CREATE DATABASE IF NOT EXISTS USCS_SAM;
USE USCS_SAM;
CREATE TABLE IF NOT EXISTS `aluno` (
`id` int PRIMARY KEY NOT NULL AUTO_INCREMENT UNIQUE,
`nome` varchar(50) NOT NULL,
`login` varchar(15) NOT NULL,
`senha` varchar(15) NOT NULL,
`ciclo` int NOT NULL,
`email` varchar(50) DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS `disciplina` (
`cod_disciplina` int PRIMARY KEY NOT NULL AUTO_INCREMENT UNIQUE,
`nomeDisciplina` varchar(50) NOT NULL
);
INSERT into aluno (id, nome, login, senha, ciclo, email) values (189, 'Maria', 'mariaUscs', '12345', 3, 'maria@gmail.com');
INSERT into disciplina (cod_disciplina, nomeDisciplina) values (1094, 'Arquitetura de computadores');
UPDATE aluno SET nome = 'Amanda Gomes' WHERE id = 200;
SELECT nome FROM aluno ORDER by nome;
SELECT * FROM disciplina;
#DELETE FROM aluno;



#SHOW TABLES;