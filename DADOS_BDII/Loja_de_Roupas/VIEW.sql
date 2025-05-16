/* Crie um script para criar todas as views (DDL) (no mínimo 10)  

dos principais relatórios do seu projeto: */

CREATE VIEW vw_ProdutosDetalhes AS
SELECT
    p.id_produto,
    p.nome,
    p.descricao,
    p.preco,
    p.tamanho,
    p.cor,
    p.marca,
    c.nome AS categoria,
    f.nome AS fornecedor
FROM
    Produto p
    JOIN Categoria c ON p.id_categoria = c.id_categoria
    JOIN Fornecedor f ON p.id_fornecedor = f.id_fornecedor;

CREATE VIEW vw_EstoqueAtual AS
SELECT
    p.nome AS produto,
    e.quantidade,
    e.data_entrada,
    e.data_saida
FROM
    Estoque e
    JOIN Produto p ON e.id_produto = p.id_produto;

CREATE VIEW vw_ClientesVendasRecentes AS
SELECT
    DISTINCT c.id_cliente,
    c.nome,
    c.telefone,
    c.email
FROM
    Cliente c
    JOIN Venda v ON c.id_cliente = v.id_cliente
WHERE
    v.data_venda >= DATE_SUB(CURDATE(), INTERVAL 1 MONTH);

CREATE VIEW vw_TotalVendidoPorProduto AS
SELECT
    p.id_produto,
    p.nome,
    SUM(iv.quantidade) AS total_quantidade,
    SUM(iv.quantidade * iv.preco_unitario) AS total_valor
FROM
    ItemVenda iv
    JOIN Produto p ON iv.id_produto = p.id_produto
GROUP BY
    p.id_produto,
    p.nome;

CREATE VIEW vw_ProdutosEstoqueBaixo AS
SELECT
    p.id_produto,
    p.nome,
    e.quantidade
FROM
    Estoque e
    JOIN Produto p ON e.id_produto = p.id_produto
WHERE
    e.quantidade < 5;

CREATE VIEW vw_PromocoesAtivas AS
SELECT
    id_promocao,
    nome,
    percentual_desconto,
    data_inicio,
    data_fim
FROM
    Promocao
WHERE
    CURDATE() BETWEEN data_inicio
    AND data_fim;

CREATE VIEW vw_ProdutosEmPromocao AS
SELECT
    p.id_produto,
    p.nome,
    pr.nome AS promocao,
    pr.percentual_desconto
FROM
    ProdutoPromocao pp
    JOIN Produto p ON pp.id_produto = p.id_produto
    JOIN Promocao pr ON pp.id_promocao = pr.id_promocao
WHERE
    CURDATE() BETWEEN pr.data_inicio
    AND pr.data_fim;

CREATE VIEW vw_TotalVendasPorCliente AS
SELECT
    c.id_cliente,
    c.nome,
    COUNT(v.id_venda) AS total_vendas,
    SUM(v.desconto) AS total_desconto
FROM
    Venda v
    JOIN Cliente c ON v.id_cliente = c.id_cliente
GROUP BY
    c.id_cliente,
    c.nome;

CREATE VIEW vw_ProdutosNuncaVendidos AS
SELECT
    p.id_produto,
    p.nome
FROM
    Produto p
    LEFT JOIN ItemVenda iv ON p.id_produto = iv.id_produto
WHERE
    iv.id_produto IS NULL;

CREATE VIEW vw_VendasPendentes AS
SELECT
    v.id_venda,
    c.nome AS cliente,
    v.data_venda,
    v.status_entrega
FROM
    Venda v
    JOIN Cliente c ON v.id_cliente = c.id_cliente
WHERE
    v.status_entrega = 'Pendente';