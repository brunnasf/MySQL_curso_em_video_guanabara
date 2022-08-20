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

--Like

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















select * from cursos
where nome not like '%a%' 
