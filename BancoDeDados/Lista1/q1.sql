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
 
/*