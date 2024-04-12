CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100),
    Descricao VARCHAR(255)
);

CREATE TABLE tb_cursos (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100),
    Descricao VARCHAR(255),
    Valor DECIMAL(8, 2),
    CategoriaID INT,
    FOREIGN KEY (CategoriaID) REFERENCES tb_categorias(ID)
);

INSERT INTO tb_categorias (Nome, Descricao) VALUES
('Programação', 'Cursos de programação em diversas linguagens'),
('Design', 'Cursos de design gráfico e web');

INSERT INTO tb_cursos (Nome, Descricao, Valor, CategoriaID) VALUES
('Curso de Python', 'Aprenda Python do básico ao avançado', 800.00, 1),
('Curso de Java', 'Domine a linguagem Java e desenvolva aplicações profissionais', 1000.00, 1),
('Curso de HTML e CSS', 'Aprenda a criar páginas web com HTML e CSS', 600.00, 2),
('Curso de Photoshop', 'Aprenda a utilizar o Photoshop para edição de imagens', 700.00, 2),
('Curso de JavaScript', 'Aprenda a linguagem de programação JavaScript', 900.00, 1),
('Curso de UX/UI Design', 'Domine as técnicas de design de experiência do usuário', 850.00, 2),
('Curso de PHP', 'Desenvolvimento de aplicações web com PHP', 750.00, 1),
('Curso de Illustrator', 'Aprenda a criar ilustrações vetoriais com o Illustrator', 800.00, 2);

SELECT * FROM tb_cursos WHERE Valor > 500.00;

SELECT * FROM tb_cursos WHERE Valor BETWEEN 600.00 AND 1000.00;

SELECT * FROM tb_cursos WHERE Nome LIKE '%J%';

SELECT c.*, cat.Nome AS Categoria 
FROM tb_cursos AS c 
INNER JOIN tb_categorias AS cat ON c.CategoriaID = cat.ID;

SELECT c.*, cat.Nome AS Categoria 
FROM tb_cursos AS c 
INNER JOIN tb_categorias AS cat ON c.CategoriaID = cat.ID
WHERE cat.Nome = 'Programação';
