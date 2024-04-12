CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100),
    Descricao VARCHAR(255)
);

CREATE TABLE tb_pizzas (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100),
    Ingredientes VARCHAR(255),
    Valor DECIMAL(8, 2),
    CategoriaID INT,
    FOREIGN KEY (CategoriaID) REFERENCES tb_categorias(ID)
);

INSERT INTO tb_categorias (Nome, Descricao) VALUES
('Salgadas', 'Pizzas salgadas tradicionais'),
('Doces', 'Pizzas doces e sobremesas');

INSERT INTO tb_pizzas (Nome, Ingredientes, Valor, CategoriaID) VALUES
('Calabresa', 'Molho de tomate, calabresa, cebola, mussarela', 40.00, 1),
('Margherita', 'Molho de tomate, mussarela, manjericão fresco', 50.00, 1),
('Quatro Queijos', 'Molho de tomate, mussarela, provolone, parmesão, gorgonzola', 55.00, 1),
('Brigadeiro', 'Brigadeiro, granulado de chocolate', 35.00, 2),
('Banana com Canela', 'Banana, canela, leite condensado', 40.00, 2),
('Romeu e Julieta', 'Goiabada, queijo mussarela', 45.00, 2),
('Frango com Catupiry', 'Molho de tomate, frango desfiado, catupiry', 60.00, 1),
('Portuguesa', 'Molho de tomate, presunto, cebola, ovos, azeitonas, mussarela', 48.00, 1);

SELECT * FROM tb_pizzas WHERE Valor > 45.00;

SELECT * FROM tb_pizzas WHERE Valor BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE Nome LIKE '%M%';

SELECT p.*, c.Nome AS Categoria 
FROM tb_pizzas AS p 
INNER JOIN tb_categorias AS c ON p.CategoriaID = c.ID;

SELECT p.*, c.Nome AS Categoria 
FROM tb_pizzas AS p 
INNER JOIN tb_categorias AS c ON p.CategoriaID = c.ID
WHERE c.Nome = 'Doces';
