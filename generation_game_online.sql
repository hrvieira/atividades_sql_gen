CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100),
    Tipo VARCHAR(50)
);

CREATE TABLE tb_personagens (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100),
    PoderAtaque INT,
    PoderDefesa INT,
    ClasseID INT,
    FOREIGN KEY (ClasseID) REFERENCES tb_classes(ID)
);

INSERT INTO tb_classes (Nome, Tipo) VALUES
('Guerreiro', 'Melee'),
('Mago', 'Mágico'),
('Arqueiro', 'À distância'),
('Cavaleiro', 'Melee'),
('Ladrão', 'À distância');

INSERT INTO tb_personagens (Nome, PoderAtaque, PoderDefesa, ClasseID) VALUES
('Frodo', 1800, 1200, 3),
('Gandalf', 2500, 1800, 2),
('Aragorn', 3000, 2000, 1),
('Legolas', 2200, 1500, 3),
('Gimli', 2800, 1900, 1),
('Gollum', 1500, 1000, 5),
('Boromir', 2700, 1800, 4),
('Sauron', 4000, 3000, 2);

SELECT * FROM tb_personagens WHERE PoderAtaque > 2000;

SELECT * FROM tb_personagens WHERE PoderDefesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE Nome LIKE '%C%';

SELECT p.*, c.Nome AS ClasseNome 
FROM tb_personagens AS p 
INNER JOIN tb_classes AS c ON p.ClasseID = c.ID;

SELECT p.*, c.Nome AS ClasseNome 
FROM tb_personagens AS p 
INNER JOIN tb_classes AS c ON p.ClasseID = c.ID
WHERE c.Nome = 'Arqueiro';
