create database db_RH;

use db_RH;

-- tabela
CREATE TABLE Colaboradores (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100),
    Cargo VARCHAR(100),
    Departamento VARCHAR(100),
    Salario DECIMAL(10, 2),
    DataAdmissao DATE
);

-- inserindo
INSERT INTO Colaboradores (Nome, Cargo, Departamento, Salario, DataAdmissao) VALUES
('João Silva', 'Analista de RH', 'Recursos Humanos', 2500.00, '2022-01-15'),
('Maria Santos', 'Assistente Administrativo', 'Administração', 1800.00, '2022-02-10'),
('Pedro Oliveira', 'Programador', 'Tecnologia da Informação', 3000.00, '2021-11-20'),
('Ana Costa', 'Analista Financeiro', 'Financeiro', 2200.00, '2022-03-05'),
('Carlos Pereira', 'Gerente de Vendas', 'Vendas', 3500.00, '2021-09-30');

-- colaboradores com o salário maior do que 2000
SELECT * FROM Colaboradores WHERE Salario > 2000;

-- colaboradores com o salário menor do que 2000
SELECT * FROM Colaboradores WHERE Salario < 2000;

-- atualize um registro desta tabela através de uma query de atualização
UPDATE Colaboradores SET Salario = 2300.00 WHERE Nome = 'Maria Santos';
