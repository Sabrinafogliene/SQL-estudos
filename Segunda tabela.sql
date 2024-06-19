select count(nome), carga from cursos
group by carga;

select ano, count(*) from cursos
where totaulas > 30
group by ano
having ano > 2013 
order by count(*) desc;

select avg(carga) from cursos;

select carga, count(*) from cursos
where ano > 2015
group by carga
having carga > (select avg(carga) from cursos);

select count(nome), profissao from gafanhotos
group by profissao;

select count(nome), sexo from gafanhotos
where nascimento > '2005-01-01'
group by sexo;

select count(*), nacionalidade from gafanhotos
where nacionalidade != 'Brasil'
group by nacionalidade
having count(*) >= 3;

select count(altura), peso, altura from gafanhotos
where peso > '100'
group by altura
having altura > (select avg(altura) from gafanhotos);

select avg(altura) from gafanhotos;



