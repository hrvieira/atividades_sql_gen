CREATE DATABASE Escola;

USE Escola;

-- Crie uma tabela estudantes
CREATE TABLE Estudantes (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100),
    Idade INT,
    Turma VARCHAR(10),
    Nota DECIMAL(3, 1),
    Situacao VARCHAR(20)
);

-- Inserindo
INSERT INTO Estudantes (Nome, Idade, Turma, Nota, Situacao) VALUES
('João Silva', 15, '9A', 8.5, 'Aprovado'),
('Maria Santos', 16, '9B', 6.5, 'Reprovado'),
('Pedro Oliveira', 14, '8A', 9.0, 'Aprovado'),
('Ana Costa', 15, '8B', 7.2, 'Aprovado'),
('Carlos Pereira', 16, '7A', 6.8, 'Reprovado'),
('Juliana Lima', 14, '7B', 8.9, 'Aprovado'),
('Lucas Souza', 15, '6A', 6.0, 'Reprovado'),
('Mariana Silva', 16, '6B', 7.8, 'Aprovado');

--  estudantes com a nota maior do que 7.0
SELECT * FROM Estudantes WHERE Nota > 7.0;

-- estudantes com a nota menor do que 7.0
SELECT * FROM Estudantes WHERE Nota < 7.0;

-- atualize um registro desta tabela através de uma query de atualização
UPDATE Estudantes SET Nota = 8.0 WHERE Nome = 'Maria Santos';
UPDATE Estudantes SET Situacao = 'Aprovado' WHERE Nome = 'Maria Santos';
