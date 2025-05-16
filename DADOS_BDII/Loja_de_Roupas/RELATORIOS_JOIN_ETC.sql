/* Descreva as perguntas/relatórios (20) importantes que deverão  

ser implementados pelo seu projeto. Crie um script que irá  

realizar todas as suas consultas/perguntas/relatórios  

(DQL), é obrigatório uso de join e/ou subselect na maioria  

das consultas. Devem criar no mínimo 20 scripts de SELECT: */

SELECT
    p.id_produto,
    p.nome,
    c.nome AS categoria,
    f.nome AS fornecedor
FROM
    Produto p
    JOIN Categoria c ON p.id_categoria = c.id_categoria
    JOIN Fornecedor f ON p.id_fornecedor = f.id_fornecedor;

SELECT
    p.nome,
    e.quantidade,
    e.data_entrada,
    e.data_saida
FROM
    Estoque e
    JOIN Produto p ON e.id_produto = p.id_produto;

SELECT
    DISTINCT c.id_cliente,
    c.nome
FROM
    Cliente c
    JOIN Venda v ON c.id_cliente = v.id_cliente
WHERE
    v.data_venda >= DATE_SUB(CURDATE(), INTERVAL 1 MONTH);

SELECT
    v.id_venda,
    v.data_venda,
    c.nome AS cliente,
    v.forma_pagamento,
    v.desconto
FROM
    Venda v
    JOIN Cliente c ON v.id_cliente = c.id_cliente
WHERE
    v.data_venda = '2025-05-01';

SELECT
    p.nome,
    SUM(iv.quantidade) AS total_quantidade,
    SUM(iv.quantidade * iv.preco_unitario) AS total_valor
FROM
    ItemVenda iv
    JOIN Produto p ON iv.id_produto = p.id_produto
GROUP BY
    p.nome;

SELECT
    p.nome,
    e.quantidade
FROM
    Estoque e
    JOIN Produto p ON e.id_produto = p.id_produto
WHERE
    e.quantidade < 5;

SELECT
    c.nome,
    COUNT(v.id_venda) AS total_vendas,
    SUM(v.desconto) AS total_descontos
FROM
    Venda v
    JOIN Cliente c ON v.id_cliente = c.id_cliente
GROUP BY
    c.nome;

SELECT
    p.nome,
    SUM(iv.quantidade) AS total_vendido
FROM
    ItemVenda iv
    JOIN Produto p ON iv.id_produto = p.id_produto
GROUP BY
    p.nome
ORDER BY
    total_vendido DESC
LIMIT
    10;

SELECT
    v.id_venda,
    v.data_venda,
    p.nome,
    iv.quantidade,
    iv.preco_unitario
FROM
    Venda v
    JOIN Cliente c ON v.id_cliente = c.id_cliente
    JOIN ItemVenda iv ON iv.id_venda = v.id_venda
    JOIN Produto p ON iv.id_produto = p.id_produto
WHERE
    c.id_cliente = 1;

SELECT
    v.id_venda,
    c.nome,
    v.status_entrega
FROM
    Venda v
    JOIN Cliente c ON v.id_cliente = c.id_cliente
WHERE
    v.status_entrega = 'Pendente';

SELECT
    id_venda,
    desconto
FROM
    Venda
WHERE
    desconto > 0;

SELECT
    p.nome
FROM
    Produto p
    LEFT JOIN ItemVenda iv ON p.id_produto = iv.id_produto
WHERE
    iv.id_produto IS NULL;

SELECT
    c.nome,
    SUM(iv.quantidade) AS total_vendido
FROM
    Categoria c
    JOIN Produto p ON c.id_categoria = p.id_categoria
    JOIN ItemVenda iv ON p.id_produto = iv.id_produto
GROUP BY
    c.nome;

SELECT
    c.nome
FROM
    Cliente c
WHERE
    c.id_cliente NOT IN (
        SELECT
            DISTINCT id_cliente
        FROM
            Venda
        WHERE
            data_venda >= DATE_SUB(CURDATE(), INTERVAL 6 MONTH)
    );

SELECT
    DISTINCT f.id_fornecedor,
    f.nome
FROM
    Fornecedor f
    JOIN Produto p ON f.id_fornecedor = p.id_fornecedor;

SELECT
    nome,
    data_inicio,
    data_fim
FROM
    Promocao
WHERE
    data_fim < CURDATE();

SELECT
    id_funcionario,
    nome,
    cargo
FROM
    Funcionario;

SELECT
    c.nome,
    COUNT(p.id_produto) AS total_produtos
FROM
    Categoria c
    LEFT JOIN Produto p ON c.id_categoria = p.id_categoria
GROUP BY
    c.nome;

SELECT
    SUM(quantidade) AS total_estoque
FROM
    Estoque;

SELECT
    c.nome,
    COUNT(v.id_venda) AS total_compras
FROM
    Cliente c
    LEFT JOIN Venda v ON c.id_cliente = v.id_cliente
GROUP BY
    c.nome;

SELECT
    p.nome,
    SUM(iv.quantidade) AS total_vendido
FROM
    ItemVenda iv
    JOIN Produto p ON iv.id_produto = p.id_produto
GROUP BY
    p.nome
ORDER BY
    total_vendido DESC
LIMIT
    5;