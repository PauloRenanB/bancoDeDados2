--3. Calcule o total de vendas (valor_compra) para cada usuário e ordene os resultados em
--ordem decrescente de valor total.

select v.cod_usuario, sum(v.valor_compra) as total_vendas
from vendas v
group by v.cod_usuario 
order by total_vendas desc 