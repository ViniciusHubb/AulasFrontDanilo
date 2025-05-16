/* Crie scripts (no mínimo 20) para deletar ou atualizar (DML) 

os dados inseridos nas tabelas: */

DELETE FROM
    ItemVenda
WHERE
    id_venda IN (8, 9, 10);

DELETE FROM
    Venda
WHERE
    id_venda IN (8, 9, 10);

DELETE FROM
    Estoque
WHERE
    id_estoque IN (8, 9, 10);

DELETE FROM
    ProdutoPromocao
WHERE
    id_produto IN (8, 9, 10);

DELETE FROM
    Produto
WHERE
    id_produto IN (8, 9, 10);

DELETE FROM
    Cliente
WHERE
    id_cliente IN (8, 9, 10);

DELETE FROM
    ItemVenda
WHERE
    id_venda IN (5, 6, 7);

DELETE FROM
    Venda
WHERE
    id_venda IN (5, 6, 7);

DELETE FROM
    ProdutoPromocao
WHERE
    id_produto IN (5, 6, 7);

DELETE FROM
    Estoque
WHERE
    id_estoque IN (5, 6, 7);

DELETE FROM
    Produto
WHERE
    id_produto IN (5, 6, 7);

DELETE FROM
    Fornecedor
WHERE
    id_fornecedor IN (8, 9, 10);

UPDATE
    Produto
SET
    preco = preco * 1.1
WHERE
    id_produto = 1;

UPDATE
    Estoque
SET
    quantidade = quantidade - 5
WHERE
    id_estoque = 1;

UPDATE
    Cliente
SET
    telefone = '999999999'
WHERE
    id_cliente = 1;

UPDATE
    Venda
SET
    status_entrega = 'Entregue'
WHERE
    id_venda = 1;

UPDATE
    Funcionario
SET
    cargo = 'Gerente'
WHERE
    id_funcionario = 1;