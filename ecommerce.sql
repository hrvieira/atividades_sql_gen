create database Ecommerce;

use Ecommerce;

-- Crie uma tabela
create table Produtos (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100),
    Categoria VARCHAR(100),
    Preco DECIMAL(10, 2),
    QuantidadeEstoque INT,
    Descricao TEXT
);

-- inserindo
INSERT INTO Produtos (Nome, Categoria, Preco, QuantidadeEstoque, Descricao) VALUES
('Notebook Dell Inspiron', 'Eletrônicos', 3000.00, 10, 'Notebook com processador Intel Core i5 e 8GB de RAM.'),
('Smartphone Samsung Galaxy S22', 'Eletrônicos', 4500.00, 15, 'Smartphone com câmera de alta resolução e tela AMOLED.'),
('Televisor LG 4K', 'Eletrônicos', 2500.00, 5, 'Televisor de 55 polegadas com resolução 4K.'),
('Geladeira Brastemp', 'Eletrodomésticos', 3500.00, 8, 'Geladeira frost-free com capacidade para 450 litros.'),
('Fogão Consul 5 Bocas', 'Eletrodomésticos', 1200.00, 12, 'Fogão de piso com queimadores a gás.'),
('Cadeira de Escritório', 'Móveis', 400.00, 20, 'Cadeira ergonômica com ajuste de altura.'),
('Mesa de Jantar', 'Móveis', 800.00, 10, 'Mesa retangular com tampo de vidro temperado.'),
('Sofá de Couro', 'Móveis', 3500.00, 6, 'Sofá de três lugares com revestimento em couro sintético.');

-- produtos com o valor maior do que 500
SELECT * FROM Produtos WHERE Preco > 500;

-- produtos com o valor menor do que 500
SELECT * FROM Produtos WHERE Preco < 500;

-- atualize um registro desta tabela através de uma query de atualização
UPDATE Produtos SET Preco = 3800.00 WHERE Nome = 'Smartphone Samsung Galaxy S22';

