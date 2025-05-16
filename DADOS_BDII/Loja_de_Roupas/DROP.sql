/* Crie um script para destruir (DDL) todas as tabelas, views,  

procedimentos, funções e dependências do seu banco de  

Dados: */

DROP VIEW IF EXISTS vw_produtos_em_promocao;

DROP VIEW IF EXISTS vw_vendas_por_cliente;

DROP VIEW IF EXISTS vw_estoque_baixo;

DROP VIEW IF EXISTS vw_clientes_compras;

DROP VIEW IF EXISTS vw_produtos_mais_vendidos;

DROP VIEW IF EXISTS vw_total_vendas_por_funcionario;

DROP VIEW IF EXISTS vw_produtos_por_categoria;

DROP VIEW IF EXISTS vw_promocoes_ativas;

DROP VIEW IF EXISTS vw_vendas_com_desconto;

DROP VIEW IF EXISTS vw_itens_venda_detalhado;

DROP PROCEDURE IF EXISTS sp_exemplo;

DROP FUNCTION IF EXISTS fn_exemplo;

DROP TABLE IF EXISTS ProdutoPromocao;

DROP TABLE IF EXISTS ItemVenda;

DROP TABLE IF EXISTS Estoque;

DROP TABLE IF EXISTS Produto;

DROP TABLE IF EXISTS Categoria;

DROP TABLE IF EXISTS Fornecedor;

DROP TABLE IF EXISTS Venda;

DROP TABLE IF EXISTS Cliente;

DROP TABLE IF EXISTS Funcionario;

DROP TABLE IF EXISTS Promocao;