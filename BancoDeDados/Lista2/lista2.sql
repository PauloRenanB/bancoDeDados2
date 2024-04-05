--1. Escreva uma subconsulta para encontrar os usuários que compraram produtos na
--categoria 'Eletrônicos'.
select v.cod_usuario, v.cod_produto 
from vendas v 
where v.cod_produto in (
	select p.cod_produto
	from produtos p
	where p.categoria_produto = 'Eletronicos'
)

--2. Utilizando uma CTE, calcule a média de valor de compra por usuário e liste os
--usuários cuja média de compra seja superior a 500.

with mediaValorCompra as (
	select v.cod_usuario, avg(v.valor_compra) as media_compra
	from vendas v
	group by v.cod_usuario 
)
select * from mediaValorCompra
where media_compra > 500

--3. Crie uma subconsulta para obter a quantidade total de vendas para cada produto e, em
--seguida, liste os produtos que tiveram mais de 50 vendas.

select v.cod_produto, sum(v.quantidade) 
from vendas v 
group by v.cod_produto 

--4. Utilize uma CTE para calcular o total de vendas por estado e, em seguida, liste os
--estados com o maior total de vendas.

with totalVendasEstado as (
	select u.estado, sum(v.quantidade) as totalvendas
	from usuarios u 
	join vendas v 
	on u.cod_usuario = v.cod_usuario 
	group by u.estado 
	order by totalvendas desc
)
select * from totalVendasEstado



