CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

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
('Medicamentos', 'Medicamentos para tratamento de diversas doenças'),
('Cosméticos', 'Produtos de beleza e cuidados com a pele');

INSERT INTO tb_produtos (Nome, Descricao, Valor, CategoriaID) VALUES
('Dipirona', 'Analgésico e antitérmico', 10.00, 1),
('Paracetamol', 'Analgésico e antitérmico', 8.50, 1),
('Shampoo', 'Limpeza e cuidado dos cabelos', 15.00, 2),
('Creme Facial', 'Hidratação e cuidado com a pele', 20.00, 2),
('Protetor Solar', 'Proteção contra os raios solares', 30.00, 2),
('Sabonete', 'Limpeza e higienização da pele', 5.00, 2),
('Vitamina C', 'Suplemento vitamínico', 25.00, 1),
('Condicionador', 'Cuidado e hidratação dos cabelos', 18.00, 2);

SELECT * FROM tb_produtos WHERE Valor > 50.00;

SELECT * FROM tb_produtos WHERE Valor BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE Nome LIKE '%C%';

SELECT p.*, c.Nome AS Categoria 
FROM tb_produtos AS p 
INNER JOIN tb_categorias AS c ON p.CategoriaID = c.ID;

SELECT p.*, c.Nome AS Categoria 
FROM tb_produtos AS p 
INNER JOIN tb_categorias AS c ON p.CategoriaID = c.ID
WHERE c.Nome = 'Cosméticos';
