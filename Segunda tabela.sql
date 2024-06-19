use cadastro;
select * from gafanhotos;
select ano, nome, carga from cursos
order by ano, nome;

select nome, descricao, ano from cursos
where ano != 2015
order by ano;

select nome, ano from cursos
where ano between 2014 and 2016
order by ano desc, nome;

select * from gafanhotos
where nascimento between '2000-01-01' and '2015-12-31';

select nome, descricao, ano from cursos
where ano in (2014, 2016, 2020)
order by ano;

select nome, carga, totaulas from cursos
where carga > 35 or totaulas < 30;

select * from cursos
where nome like '%a%';

select * from cursos
where nome not like '%a%';

select * from cursos
where nome like 'ph%p%';

select * from cursos
where nome like 'p__t%';

select * from gafanhotos
where nome like '%silva%';

select distinct nacionalidade from gafanhotos
order by nacionalidade;

select count(*) from cursos where carga > 40;
select max(carga) from cursos;
select max(totaulas) from cursos where ano = '2016';
select nome, min(totaulas) from cursos where ano = '2016';
select sum(totaulas) from cursos where ano = '2016';
select AVG(totaulas) from cursos where ano = '2016';

select * from gafanhotos
where sexo = 'F';

select * from gafanhotos
where sexo = 'M' and profissao = 'programador';
select * from gafanhotos
where sexo = 'F' and nacionalidade = 'Brasil' and nome like 'J%';
select nome, nacionalidade from gafanhotos
where peso < '100' and nome like '%Silva%' and nacionalidade not like 'Brasil';
select max(altura) from gafanhotos
where sexo = 'M' and nacionalidade = 'Brasil';
select avg(peso) from gafanhotos;
select min(peso) from gafanhotos
where sexo = 'F' and nacionalidade not like 'Brasil' and nascimento between '1990-01-01' and '2000-12-31';
select count(altura) from gafanhotos
where sexo = 'F' and altura > '1.90';