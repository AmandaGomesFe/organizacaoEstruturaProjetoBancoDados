CREATE DATABASE IF NOT EXISTS USCS_SELECT;
use USCS_SELECT;
create table IF NOT EXISTS curso
(codigo_curso char(3) primary key,
nome_curso char(30) not null
);
create table IF NOT EXISTS aluno
(codigo_alu int unsigned primary key NOT NULL AUTO_INCREMENT
UNIQUE,
nome_alu char(20) not null,
cpf_alu char(11) not null,
data_inicio_alu date,
curso_alu char(3) not null,
constraint foreign key (curso_alu) references curso (codigo_curso)
);
create table IF NOT EXISTS materia (
codigo_mat char(5) primary key,
nome_mat char(20) not null,
curso_mat char(3) not null
# constraint foreign key (curso_mat) references curso (codigo_curso)
);
alter table materia add constraint foreign key (curso_mat) references curso
(codigo_curso);
insert into curso (codigo_curso, nome_curso) values
('ADS', 'An e Des de Sistemas');
insert into curso (codigo_curso, nome_curso) values
('CC', 'Ciência da Computação');
insert into curso (codigo_curso, nome_curso) values
('JG', 'Jogos Digitais');
insert into curso (codigo_curso, nome_curso) values
('SI', 'Sistemas de Informação');
insert into curso (codigo_curso, nome_curso) values
('SEG', 'Segurança da Informação');
select * from curso;
insert into aluno
(nome_alu, cpf_alu, data_inicio_alu, curso_alu) values
('João', '11111111111', 01/01/2000, 'CC');
insert into aluno
(nome_alu, cpf_alu, data_inicio_alu, curso_alu) values
('Joaquim', '11111111111', 01/01/2000, 'ADS');
insert into aluno
(nome_alu, cpf_alu, data_inicio_alu, curso_alu) values
('Madalena', '11111111111', 01/01/2000, 'CC');
insert into aluno
(nome_alu, cpf_alu, data_inicio_alu, curso_alu) values
('Altair', '11111111111', 01/01/2000, 'CC');
insert into aluno
(nome_alu, cpf_alu, data_inicio_alu, curso_alu) values
('Roberto', '11111111111', 01/01/2000, 'ADS');
insert into aluno
(nome_alu, cpf_alu, data_inicio_alu, curso_alu) values
('Henrique', '11111111111', 01/01/2000, 'JG');
insert into aluno
(nome_alu, cpf_alu, data_inicio_alu, curso_alu) values
('Osmar', '11111111111', 01/01/2000, 'CC');
insert into aluno
(nome_alu, cpf_alu, data_inicio_alu, curso_alu) values
('Afonso', '11111111111', 01/01/2000, 'SEG');
insert into aluno
(nome_alu, cpf_alu, data_inicio_alu, curso_alu) values
('Carlos', '11111111111', 01/01/2000, 'SEG');
insert into aluno
(nome_alu, cpf_alu, data_inicio_alu, curso_alu) values
('Alberto', '11111111111', 01/01/2000, 'SI');
insert into aluno
(nome_alu, cpf_alu, data_inicio_alu, curso_alu) values
('Renato', '11111111111', 01/01/2000, 'ADS');
insert into aluno
(nome_alu, cpf_alu, data_inicio_alu, curso_alu) values
('Bob', '11111111111', 01/01/2000, 'SEG');
select * from aluno;
insert into materia (codigo_mat, nome_mat, curso_mat) values
('BDII', 'Banco de Dados II', 'CC');
select * from materia;
 UPDATE aluno SET curso_alu = 'ADS' where codigo_alu = 12;
 UPDATE aluno SET nome_alu = 'Sistemas operacionais' where codigo_alu = 12;
 DELETE FROM aluno WHERE codigo_alu = 12;
 insert into materia (codigo_mat, nome_mat, curso_mat) values
('SO', 'Sistema Operacional', 'ADS');
 UPDATE materia SET nome_mat = 'SO' where codigo_mat = 'SO';

select * from aluno;
SELECT codigo_alu, curso_alu FROM aluno;

