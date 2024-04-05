--1. Criar uma view que apresente o nome do produto, a quantidade vendida e o valor total
--da venda para cada venda realizada.

create view produtosQuantidadeVendida as
select p.nome_produto, sum(v.quantidade) as quantidade, sum(v.valor_compra)  
from produtos p 
join vendas v 
on p.cod_produto = v.cod_produto 
group by p.nome_produto
order by quantidade desc

--2. Criar uma view que apresente a cidade com o maior número de vendas em 2023, com
--a quantidade total de vendas e o valor total das vendas.

create view cidadeMaiorNumVendas as
select u.cidade, sum(v.quantidade) as quantidade, sum(v.valor_compra) as valorTotal
from usuarios u 
join vendas v
on u.cod_usuario = v.cod_usuario
where v.data_compra >= '2023-00-00'
group by u.cidade 
order by quantidade desc