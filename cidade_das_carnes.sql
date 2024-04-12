CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categorias (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100),
    Descricao VARCHAR(255)
);

CREATE TABLE tb_produtos (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100),
    Descricao VARCHAR(255),
    Valor DECIMAL(8, 2),
    CategoriaID INT,
    FOREIGN KEY (CategoriaID) REFERENCES tb_categorias(ID)
);

INSERT INTO tb_categorias (Nome, Descricao) VALUES
('Carnes', 'Diversos tipos de carnes, como bovina, suína e de frango'),
('Frutas', 'Variedades de frutas frescas e saudáveis');

INSERT INTO tb_produtos (Nome, Descricao, Valor, CategoriaID) VALUES
('Picanha', 'Corte nobre de carne bovina', 70.00, 1),
('Frango Assado', 'Frango assado no forno', 55.00, 1),
('Banana', 'Fruta tropical e saborosa', 4.50, 2),
('Maçã', 'Fruta vermelha e suculenta', 3.50, 2),
('Alcatra', 'Corte de carne bovina macio e suculento', 60.00, 1),
('Laranja', 'Fruta cítrica e refrescante', 2.50, 2),
('Peito de Frango', 'Corte de frango magro e saudável', 45.00, 1),
('Abacaxi', 'Fruta tropical e doce', 6.00, 2);

SELECT * FROM tb_produtos WHERE Valor > 50.00;

SELECT * FROM tb_produtos WHERE Valor BETWEEN 50.00 AND 150.00;

SELECT * FROM tb_produtos WHERE Nome LIKE '%C%';

SELECT p.*, c.Nome AS Categoria 
FROM tb_produtos AS p 
INNER JOIN tb_categorias AS c ON p.CategoriaID = c.ID;

SELECT p.*, c.Nome AS Categoria 
FROM tb_produtos AS p 
INNER JOIN tb_categorias AS c ON p.CategoriaID = c.ID
WHERE c.Nome IN ('Carnes', 'Frutas');
