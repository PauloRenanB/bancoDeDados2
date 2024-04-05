--3. Crie uma subconsulta para obter a quantidade total de vendas para cada produto e, em
--seguida, liste os produtos que tiveram mais de 50 vendas.


select v.cod_produto, sum(v.quantidade) as soma_quantidade 
from vendas v 
where v.cod_produto in (
	select p.cod_produto
	from produtos p 
)
group by v.cod_produto 
having sum(v.quantidade) > 50