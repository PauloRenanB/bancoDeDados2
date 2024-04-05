--5. Calcule a média de valor de compra por produto na categoria 'Tecnologia' e liste os
--produtos com valores acima dessa média.


select p.nome_produto, p.valor_produto 
from produtos p 
where p.categoria_produto = 'Tecnologia' and p.valor_produto > (
	select avg(p2.valor_produto) as media_produto
	from produtos p2
	where p2.categoria_produto = 'Tecnologia' 
)