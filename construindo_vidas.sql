CREATE DATABASE db_construindo_vidas;

USE db_construindo_vidas;

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
('Ferramentas', 'Diversos tipos de ferramentas para construção civil'),
('Elétrica', 'Materiais elétricos para instalações residenciais e comerciais');

INSERT INTO tb_produtos (Nome, Descricao, Valor, CategoriaID) VALUES
('Furadeira', 'Furadeira de impacto profissional', 120.00, 1),
('Torneira Elétrica', 'Torneira elétrica para banheiro', 90.00, 2),
('Martelo', 'Martelo de aço com cabo emborrachado', 25.00, 1),
('Fio Elétrico', 'Rolo de fio elétrico 2,5mm', 80.00, 2),
('Parafusadeira', 'Parafusadeira sem fio com bateria recarregável', 150.00, 1),
('Lâmpada LED', 'Lâmpada LED econômica e durável', 10.00, 2),
('Escada', 'Escada de alumínio dobrável', 100.00, 1),
('Disjuntor', 'Disjuntor bipolar para proteção elétrica', 30.00, 2);

SELECT * FROM tb_produtos WHERE Valor > 100.00;

SELECT * FROM tb_produtos WHERE Valor BETWEEN 70.00 AND 150.00;

SELECT * FROM tb_produtos WHERE Nome LIKE '%C%';

SELECT p.*, c.Nome AS Categoria 
FROM tb_produtos AS p 
INNER JOIN tb_categorias AS c ON p.CategoriaID = c.ID;

SELECT p.*, c.Nome AS Categoria 
FROM tb_produtos AS p 
INNER JOIN tb_categorias AS c ON p.CategoriaID = c.ID
WHERE c.Nome = 'Ferramentas';
