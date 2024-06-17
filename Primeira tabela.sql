create database cadastro
default character set utf8mb4
default collate utf8mb4_general_ci;

CREATE TABLE pessoas (
id int NOT NULL AUTO_INCREMENT,
nome varchar(30) NOT NULL,
nascimento date,
sexo enum('M', 'F'),
peso decimal (5,2),
altura decimal (3,2),
nacionalidade varchar(20) DEFAULT 'Brasil',
PRIMARY KEY (id)
) DEFAULT CHARSET = utf8mb4;

INSERT INTO pessoas VALUES
(default, 'Claudio', '1975-4-22', 'M', '99.0', '2.15', 'Brasil'),
(default, 'Pedro', '1999-12-3', 'M', '87', '2', default),
(default, 'Janaína', '1987-11-12', 'F', '75.4', '1.66', 'EUA');


select * from gafanhotos;
ALTER TABLE pessoas
ADD COLUMN profissao varchar(10) AFTER nome;
ALTER TABLE pessoas
DROP COLUMN profissao;
ALTER TABLE pessoas
ADD COLUMN codigo int FIRST;
ALTER TABLE pessoas
MODIFY COLUMN profissao varchar(20);
describe pessoas;
alter table pessoas
modify column profissao varchar(25) not null default '';

alter table pessoas
change column profissao prof varchar(20);
alter table pessoas
rename to gafanhotos;