/* Crie alguns scripts (no mínimo 10) para alterar (DDL) as  

estruturas das tabelas: */

ALTER TABLE
    Cliente
ADD
    cpf VARCHAR(14);

ALTER TABLE
    Cliente
ADD
    sexo CHAR(1);

ALTER TABLE
    Fornecedor
MODIFY
    telefone VARCHAR(20);

ALTER TABLE
    Estoque
ADD
    observacoes TEXT;

ALTER TABLE
    Produto
MODIFY
    preco DECIMAL(10, 2);

ALTER TABLE
    Funcionario
ADD
    email VARCHAR(100);

ALTER TABLE
    Venda
ALTER COLUMN
    status_entrega
SET
    DEFAULT 'Pendente';

ALTER TABLE
    Produto
ADD
    imagem_url VARCHAR(255);

ALTER TABLE
    ProdutoPromocao
ADD
    CONSTRAINT fk_produto_promocao_produto FOREIGN KEY (id_produto) REFERENCES Produto(id_produto);

ALTER TABLE
    Funcionario
MODIFY
    email VARCHAR(30);