CREATE DATABASE IF NOT EXISTS saep_db;
USE saep_db;

CREATE TABLE usuarios (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    usuario VARCHAR(50) NOT NULL UNIQUE,
    senha VARCHAR(255) NOT NULL,
    ativo BOOLEAN DEFAULT TRUE,
    data_cadastro DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE categorias (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL UNIQUE,
    descricao TEXT
);

CREATE TABLE unidades_medida (
    id INT PRIMARY KEY AUTO_INCREMENT,
    sigla VARCHAR(10) NOT NULL UNIQUE,
    descricao VARCHAR(50) NOT NULL
);

CREATE TABLE produtos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    categoria_id INT NOT NULL,
    quantidade DECIMAL(10, 2) DEFAULT 0.00,
    estoque_minimo DECIMAL(10, 2) DEFAULT 0.00,
    unidade_medida_id INT NOT NULL,
    data_validade DATE,
    cor VARCHAR(50),
    descricao TEXT,
    data_cadastro DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (categoria_id) REFERENCES categorias(id),
    FOREIGN KEY (unidade_medida_id) REFERENCES unidades_medida(id)
);

CREATE TABLE movimentacoes_estoque (
    id INT PRIMARY KEY AUTO_INCREMENT,
    produto_id INT NOT NULL,
    tipo_movimentacao ENUM('ENTRADA', 'SAIDA') NOT NULL,
    quantidade DECIMAL(10, 2) NOT NULL,
    data_movimentacao DATETIME DEFAULT CURRENT_TIMESTAMP,
    observacao TEXT,
    FOREIGN KEY (produto_id) REFERENCES produtos(id)
);

INSERT INTO usuarios (nome, usuario, senha) VALUES
('João Silva', 'joao.silva', 'senha123'),
('Maria Santos', 'maria.santos', 'senha456'),
('Pedro Oliveira', 'pedro.oliveira', 'senha789');

INSERT INTO categorias (nome, descricao) VALUES
('Cimento', 'Materiais de cimento e concreto'),
('Tinta', 'Tintas para pintura e acabamento'),
('Argamassa', 'Argamassas e rejuntes'),
('Fundação', 'Materiais para fundação'),
('Acabamento', 'Materiais de acabamento'),
('Estrutura', 'Materiais estruturais');

INSERT INTO unidades_medida (sigla, descricao) VALUES
('kg', 'Quilograma'),
('l', 'Litro'),
('un', 'Unidade'),
('m2', 'Metro quadrado'),
('m3', 'Metro cúbico');

INSERT INTO produtos (nome, categoria_id, quantidade, estoque_minimo, unidade_medida_id, data_validade, cor, descricao) VALUES
('Cimento Portland CP II-E-32', 1, 1500.00, 500.00, 1, '2025-12-31', 'Cinza', 'Cimento Portland composto com escória'),
('Cimento Portland CP II-Z-32', 1, 2000.00, 600.00, 1, '2025-11-30', 'Cinza', 'Cimento Portland composto com pozolana'),
('Cimento Portland CP V-ARI', 1, 800.00, 300.00, 1, '2026-01-15', 'Cinza', 'Cimento Portland de alta resistência inicial'),
('Tinta Acrílica Branco Gelo', 2, 120.00, 30.00, 2, '2025-10-20', 'Branco', 'Tinta acrílica para interiores'),
('Tinta Esmalte Sintético Vermelho', 2, 45.00, 15.00, 2, '2025-09-15', 'Vermelho', 'Tinta esmalte para exteriores'),
('Tinta Latex PVA Azul', 2, 80.00, 20.00, 2, '2026-02-28', 'Azul', 'Tinta látex PVA para áreas internas'),
('Argamassa Colante AC-I', 3, 500.00, 150.00, 1, '2025-08-30', 'Branco', 'Argamassa colante para revestimentos cerâmicos'),
('Argamassa de Rejunte', 3, 300.00, 100.00, 1, '2025-12-31', 'Cinza', 'Argamassa para rejuntamento de cerâmicas'),
('Argamassa de Assentamento', 3, 750.00, 200.00, 1, '2026-01-20', 'Cinza', 'Argamassa para assentamento de tijolos'),
('Viga de Concreto 10x20', 6, 25.00, 10.00, 3, NULL, 'Cinza', 'Viga pré-moldada de concreto'),
('Laje Pré-moldada', 6, 15.00, 5.00, 3, NULL, 'Cinza', 'Laje pré-moldada de concreto'),
('Bloco de Concreto 14x19x39', 6, 500.00, 150.00, 3, NULL, 'Cinza', 'Bloco estrutural de concreto'),
('Piso Cerâmico 60x60', 5, 200.00, 50.00, 4, NULL, 'Bege', 'Piso cerâmico esmaltado'),
('Azulejo Branco 15x15', 5, 350.00, 100.00, 4, NULL, 'Branco', 'Azulejo para área interna'),
('Revestimento Cerâmico 45x90', 5, 150.00, 40.00, 4, NULL, 'Marrom', 'Revestimento para fachadas');

INSERT INTO movimentacoes_estoque (produto_id, tipo_movimentacao, quantidade, observacao) VALUES
(1, 'ENTRADA', 500.00, 'Compra de fornecedor ABC'),
(1, 'SAIDA', 200.00, 'Venda para cliente XYZ'),
(1, 'ENTRADA', 300.00, 'Reposição de estoque'),
(2, 'ENTRADA', 1000.00, 'Compra inicial'),
(2, 'SAIDA', 150.00, 'Venda para obra'),
(2, 'ENTRADA', 500.00, 'Reposição'),
(3, 'ENTRADA', 400.00, 'Compra de fornecedor'),
(3, 'SAIDA', 100.00, 'Venda'),
(3, 'ENTRADA', 200.00, 'Reposição'),
(4, 'ENTRADA', 50.00, 'Compra inicial'),
(4, 'SAIDA', 15.00, 'Venda'),
(4, 'ENTRADA', 30.00, 'Reposição'),
(5, 'ENTRADA', 20.00, 'Compra'),
(5, 'SAIDA', 5.00, 'Venda'),
(5, 'ENTRADA', 10.00, 'Reposição'),
(6, 'ENTRADA', 40.00, 'Compra'),
(6, 'SAIDA', 12.00, 'Venda'),
(6, 'ENTRADA', 25.00, 'Reposição');

