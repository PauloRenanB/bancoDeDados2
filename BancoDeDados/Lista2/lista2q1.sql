--1. Escreva uma subconsulta para encontrar os usuários que compraram produtos na
--categoria 'Eletrônicos'.

select v.cod_usuario 
from vendas v 
where v.cod_produto in  (
	select p.cod_produto
	from produtos p
	where p.categoria_produto = 'Eletronicos'
)