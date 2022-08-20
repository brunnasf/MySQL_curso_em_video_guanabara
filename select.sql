--Ordenação decrescente

select * from cursos
order by nome desc;

--Selecionando colunas

select nome, carga, ano
from cursos
order by nome;

--Selecionando linhas

select * from cursos
where ano = '2016'
order by nome;

--Selecionando linhas e colunas

select nome, descricao, carga from cursos
where ano = '2016'
order by nome;

--Selecionando intervalos

select * from cursos
where totaulas between '20' and '30'
order by nome

--Selecionando valores

select idcurso, nome from cursos
where ano in ('2014', '2016', '2018')
order by nome;


--Combinando testes

select * from cursos
where carga > 35 and totaulas < 30
order by nome;

--LIKE

--apresenta apenas os nomes que começam com a letra p

select * from cursos
where nome like 'P%'

--apresenta a letra a em qualquer parte do nome

select * from cursos
where nome like '%a%'

--não apresenta a letra a no nome

select * from cursos
where nome not like '%a%' 

--o nome começa com ph, depois pode ter qualquer coisa, em seguida aparece o p e finaliza obrigatoriamente com outro elemento

select * from cursos
where nome like 'ph%p_' 

--DISTINCT

select distinct carga from cursos

select distinct nacionalidade from gafanhotos

--Funções de agregação:

--COUNT

select count(nome) from cursos;

--MAX

select max(totaulas) from cursos

select max(totaulas) 
from cursos
where ano = '2016';

-MiN
where ano = '2016';

--SUM

select sum(totaulas) 
from cursos
where ano = '2016';

--AVG

select avg(totaulas) 
from cursos
where ano = '2016';

-EXERCÍCIOS:

#uma lista de dados com todas a mulheres que nasceram no brasil e que tem seu nome iniciado com a letra j.
select nome
from gafanhotos
where nacionalidade = 'Brasil' and nome like 'j%' and sexo = 'F';

#uma lista com o nome e nacionalidade de todos os homens que têm  Silva no nome, não nasceram no Brasil e pesam menos de 100 kg
select nome, nacionalidade
from gafanhotos
where nacionalidade <> 'Brasil' and nome like '%silva%' and sexo = 'M' and peso < '100';

#qual é a maior altura entre gafanhotos homens que mora no Brasil
select max(altura)
from gafanhotos
where sexo = 'F' and nacionalidade = 'Brasil';

#qual é a média de peso de gafanhotos cadastrados
select avg(peso)
from gafanhotos;

#qual é o menor peso entre as gafanhotos mulheres que nasceram fora do Brasil entre 01/jan/1990 e 31/dez/2000?
select min(peso)
from gafanhotos
where sexo = 'F' and nacionalidade <> 'Brasil' and nascimento between '1990-01-01' and '2000-12-31' ;

#quantas gafanhotas mulheres tem mais de 1.90 de altura?
select count(*)
from gafanhotos
where sexo = 'F' and altura > '1.90';


