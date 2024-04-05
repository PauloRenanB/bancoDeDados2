--4. Obtenha uma lista de usuários que fizeram compras com cartão de crédito
--('forma_pagamento' é igual a 'Cartão de Crédito').

select u.cod_usuario, u.faixa_etaria, v.forma_pagamento, v.valor_compra 
from vendas v 
join usuarios u 
on u.cod_usuario = v.cod_usuario 
where v.forma_pagamento = 'cartao_credito' 