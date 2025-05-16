/* Crie um script que irá realizar todos os inserts (DML) nas  

tabelas do seu banco de dados. Cada tabela deve ter no mínimo  

10 registros, use o bom senso: */

INSERT INTO
    Cliente (nome, endereco, telefone, email)
VALUES
(
        'Sophie Peixoto',
        'Residencial de Nunes, 67, Tres Marias, 82421948 Lima / AM',
        '+55 11 5781 5659',
        'hpires@caldeira.com'
    ),
(
        'Thiago Nunes',
        'Loteamento Luigi Martins, 4, Silveira, 32871158 Cavalcanti de Jesus / PI',
        '(021) 1858 3989',
        'mcarvalho@uol.com.br'
    ),
(
        'Sr. Gustavo da Mata',
        'Área Ferreira, 21, Vila Inestan, 20186848 da Rosa / RO',
        '0900 694 7751',
        'rodriguesjoana@ig.com.br'
    ),
(
        'Ana Clara Vieira',
        'Rua das Flores, 123, Centro, 70000-000 Brasília / DF',
        '61 91234-5678',
        'ana.vieira@gmail.com'
    ),
(
        'João Pedro Lima',
        'Av. Atlântica, 456, Copacabana, 22000-000 Rio de Janeiro / RJ',
        '21 99876-5432',
        'joao.lima@yahoo.com'
    ),
(
        'Beatriz Silva',
        'Rua A, 10, Bairro B, 12345-678 São Paulo / SP',
        '11 93456-7890',
        'beatriz.silva@hotmail.com'
    ),
(
        'Lucas Oliveira',
        'Rua 7 de Setembro, 89, Centro, 98765-432 Porto Alegre / RS',
        '51 98765-4321',
        'lucasoliveira@gmail.com'
    ),
(
        'Mariana Rocha',
        'Rua das Laranjeiras, 777, Recife / PE',
        '81 92345-1234',
        'mariana.rocha@gmail.com'
    ),
(
        'Carlos Eduardo',
        'Alameda Santos, 345, São Paulo / SP',
        '11 99999-9999',
        'carlos.edu@terra.com'
    ),
(
        'Patrícia Gomes',
        'Rua do Comércio, 100, Salvador / BA',
        '71 98888-8888',
        'patricia.gomes@uol.com.br'
    );

INSERT INTO
    Fornecedor (nome, endereco, telefone, email)
VALUES
(
        'das Neves',
        'Praça da Mota, 21, Estoril, 87317643 da Rosa / RN',
        '+55 (011) 1376-5821',
        'heloisanunes@ig.com.br'
    ),
(
        'Silveira',
        'Residencial Cecília da Paz, 193, Manacas, 50824-926 Ribeiro de Minas / SE',
        '+55 21 8013 2040',
        'igor27@yahoo.com.br'
    ),
(
        'Souza',
        'Viela Silveira, 416, Jardim Dos Comerciarios, 76993-002 Santos Verde / GO',
        '(071) 1744 6660',
        'luccagomes@caldeira.com'
    ),
(
        'Moura',
        'Rua Principal, 555, Centro / MG',
        '31 99876-5432',
        'moura@fornecedores.com'
    ),
(
        'Azevedo',
        'Av. Brasil, 1000, Curitiba / PR',
        '41 91234-5678',
        'azevedo@empresa.com'
    ),
(
        'Campos',
        'Rua Secundária, 222, Porto Velho / RO',
        '69 98765-4321',
        'campos@fornece.com'
    ),
(
        'Lima',
        'Av. Independência, 900, Teresina / PI',
        '86 92345-6789',
        'lima.supplier@gmail.com'
    ),
(
        'Freitas',
        'Rua B, 888, Florianópolis / SC',
        '48 99988-7766',
        'freitas@scforn.com'
    ),
(
        'Costa',
        'Rua das Palmeiras, 456, Manaus / AM',
        '92 98888-7777',
        'costa@amazon.com'
    ),
(
        'Barros',
        'Av. Central, 1234, Belém / PA',
        '91 97777-6666',
        'barros@belemforn.com'
    );

INSERT INTO
    Funcionario (nome, cargo, telefone)
VALUES
(
        'Isadora Cunha',
        'Gerente',
        '+55 (031) 1166-9728'
    ),
('Fernanda Moraes', 'Gerente', '(071) 6377-8570'),
(
        'Fernanda da Conceição',
        'Vendedor',
        '11 0930-5760'
    ),
('Ricardo Lopes', 'Caixa', '21 96543-2100'),
('Tatiane Souza', 'Estoquista', '11 97654-3210'),
('João Marcos', 'Vendedor', '31 92345-6789'),
('Amanda Teixeira', 'Caixa', '61 93456-7890'),
('Renato Alves', 'Gerente', '71 91234-5678'),
('Larissa Dias', 'Atendente', '81 98765-4321'),
('Bruno Carvalho', 'Vendedor', '27 98888-9999');

INSERT INTO
    Categoria (nome)
VALUES
    ('Casual'),
    ('Moda Praia'),
    ('Social'),
    ('Inverno'),
    ('Infantil'),
    ('Roupas Masculinas'),
    ('Roupas Femininas'),
    ('Calçados'),
    ('Esportivo'),
    ('Acessórios');

INSERT INTO
    Produto (
        nome,
        descricao,
        preco,
        tamanho,
        cor,
        marca,
        id_categoria,
        id_fornecedor
    )
VALUES
    (
        'Camiseta Slim',
        'Camiseta de algodão feminina',
        59.90,
        'M',
        'Preto',
        'Hering',
        1,
        1
    ),
    (
        'Bermuda Jeans',
        'Bermuda masculina',
        89.90,
        'G',
        'Azul',
        'Colcci',
        6,
        2
    ),
    (
        'Vestido Floral',
        'Vestido leve feminino',
        129.90,
        'P',
        'Rosa',
        'Zara',
        7,
        3
    ),
    (
        'Tênis Casual masculino',
        'Tênis para uso diário',
        199.99,
        '40',
        'Branco',
        'Nike',
        8,
        4
    ),
    (
        'Blusa Tricot',
        'Blusa feminina de lã',
        149.90,
        'M',
        'Vermelho',
        'Renner',
        4,
        5
    ),
    (
        'Sunga Estampada',
        'Sunga tropical masculina',
        49.90,
        'M',
        'Azul',
        'Speedo',
        2,
        6
    ),
    (
        'Jaqueta Corta-Vento',
        'Jaqueta esportiva masculina',
        219.90,
        'G',
        'Cinza',
        'Adidas',
        9,
        7
    ),
    (
        'Macacão Infantil',
        'Macacão bebê infantil',
        89.90,
        'P',
        'Amarelo',
        'Lilica Ripilica',
        5,
        8
    ),
    (
        'Boné Estilo',
        'Boné ajustável unisex',
        39.90,
        'U',
        'Preto',
        'Oakley',
        10,
        9
    ),
    (
        'Camisa Social',
        'Camisa algodão masculino',
        109.90,
        'G',
        'Branco',
        'Dudalina',
        3,
        10
    );

INSERT INTO
    Estoque (id_produto, quantidade, data_entrada, data_saida)
VALUES
    (1, 50, '2025-05-01', NULL),
    (2, 30, '2025-05-01', NULL),
    (3, 40, '2025-05-01', NULL),
    (4, 25, '2025-05-01', NULL),
    (5, 35, '2025-05-01', NULL),
    (6, 20, '2025-05-01', NULL),
    (7, 15, '2025-05-01', NULL),
    (8, 10, '2025-05-01', NULL),
    (9, 45, '2025-05-01', NULL),
    (10, 28, '2025-05-01', NULL);

INSERT INTO
    Venda (
        data_venda,
        id_cliente,
        forma_pagamento,
        desconto,
        status_entrega
    )
VALUES
    ('2025-05-01', 1, 'Cartão', 0.00, 'Entregue'),
    ('2025-05-01', 2, 'Dinheiro', 5.00, 'Entregue'),
    ('2025-05-02', 3, 'Pix', 0.00, 'Em Transporte'),
    ('2025-05-03', 4, 'Cartão', 10.00, 'Entregue'),
    ('2025-05-03', 5, 'Boleto', 0.00, 'Pendente'),
    ('2025-05-04', 6, 'Cartão', 15.00, 'Entregue'),
    (
        '2025-05-05',
        7,
        'Dinheiro',
        0.00,
        'Em Transporte'
    ),
    ('2025-05-06', 8, 'Pix', 20.00, 'Entregue'),
    ('2025-05-07', 9, 'Cartão', 0.00, 'Cancelado'),
    ('2025-05-08', 10, 'Cartão', 0.00, 'Entregue');

INSERT INTO
    ItemVenda (id_venda, id_produto, quantidade, preco_unitario)
VALUES
    (1, 1, 2, 59.90),
    (2, 3, 1, 129.90),
    (3, 2, 1, 89.90),
    (4, 4, 1, 199.99),
    (5, 5, 2, 149.90),
    (6, 6, 3, 49.90),
    (7, 7, 1, 219.90),
    (8, 8, 2, 89.90),
    (9, 9, 1, 39.90),
    (10, 10, 2, 109.90);

INSERT INTO
    Promocao (nome, percentual_desconto, data_inicio, data_fim)
VALUES
    (
        'Black Friday',
        50.00,
        '2025-11-25',
        '2025-11-27'
    ),
    ('Natal', 30.00, '2025-12-20', '2025-12-25'),
    ('Ano Novo', 20.00, '2025-12-30', '2026-01-01'),
    (
        'Volta às Aulas',
        15.00,
        '2025-01-10',
        '2025-01-31'
    ),
    (
        'Dia das Mães',
        25.00,
        '2025-05-01',
        '2025-05-12'
    ),
    ('Inverno', 10.00, '2025-06-01', '2025-07-31'),
    (
        'Liquida Verão',
        40.00,
        '2025-02-01',
        '2025-02-10'
    ),
    ('Primavera', 12.00, '2025-09-01', '2025-09-30'),
    ('Halloween', 35.00, '2025-10-28', '2025-10-31'),
    (
        'Aniversário da Loja',
        60.00,
        '2025-08-15',
        '2025-08-20'
    );

INSERT INTO
    ProdutoPromocao (id_produto, id_promocao)
VALUES
    (1, 1),
    (2, 1),
    (3, 2),
    (4, 3),
    (5, 4),
    (6, 5),
    (7, 6),
    (8, 7),
    (9, 8),
    (10, 10);