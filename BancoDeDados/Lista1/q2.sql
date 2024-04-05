--2. Escreva uma consulta para listar todos os produtos na categoria 'Eletrônicos' com seus
--respectivos valores.

select p.categoria_produto, p.nome_produto, p.valor_produto 
from produtos p 
where p.categoria_produto = 'Eletronicos' 