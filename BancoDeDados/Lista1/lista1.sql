--1. Crie a Modelagem de Entidade e Relacionamento da base de dados disponibilizada
--em sala de aula.

/*
 MODELAGEM: 
 
 Tabela usuarios:
 cod_usuario (chave primaria)
 data_cadastro
 faixa_etaria
 cidade
 estado
 
 Tabela produtos:
 cod_produto (chave primaria)
 nome_produto
 categoria_produto
 valor_produto
 
 Tabela vendas:
 cod_usuario(chave estrangeira)
 cod_produto(chave estrangeira)
 data_compra
 forma_pagamento
 quantidade
 valor_compra
 data_prevista_entrega
 data_entrega
 
*/

--2. Escreva uma consulta para listar todos os produtos na categoria 'Eletrônicos' com seus
--respectivos valores.

select p.categoria_produto, p.nome_produto, p.valor_produto 
from produtos p 
where p.categoria_produto = 'Eletronicos' 

--3. Calcule o total de vendas (valor_compra) para cada usuário e ordene os resultados em
--ordem decrescente de valor total.

select v.cod_usuario, sum(v.valor_compra) as soma_valor 
from vendas v
group by v.cod_usuario
order by soma_valor desc


--4. Obtenha uma lista de usuários que fizeram compras com cartão de crédito
--('forma_pagamento' é igual a 'Cartão de Crédito').

select u.cod_usuario, v.forma_pagamento 
from usuarios u 
join vendas v 
on u.cod_usuario = v.cod_usuario 
where v.forma_pagamento = 'cartao_credito'

--5. Calcule a média de valor de compra por produto na categoria 'Tecnologia' e liste os
--produtos com valores acima dessa média.


select p.nome_produto, p.categoria_produto 
from produtos p 
where p.categoria_produto = 'Tecnologia' and p.valor_produto > (
	select avg(p2.valor_produto) as media_produto
	from produtos p2
	where p2.categoria_produto = 'Tecnologia'
)








