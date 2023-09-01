-- Criando as 3 tabelas com 3 variáveis diferentes
CREATE DATABASE loja_futebol;
USE loja_futebol;

CREATE TABLE camisas(
	preco FLOAT NOT NULL,
    id INT PRIMARY KEY,
    marca VARCHAR(100)
    
);
CREATE TABLE compradores(
	nome VARCHAR(100) NOT NULL,
    idade INT,
    equipe VARCHAR(100) PRIMARY KEY
    
);
CREATE TABLE patrocinadores (
	nome VARCHAR(100) NOT NULL,
    telefone VARCHAR (100),
    cnpj VARCHAR (100) PRIMARY KEY
    
);

-- Adicionando uma nova coluna em cada tabela
ALTER TABLE camisas ADD COLUMN quantidade INT NOT NULL;
ALTER TABLE compradores ADD COLUMN preferencia VARCHAR(100);
ALTER TABLE patrocinadores ADD COLUMN produtos INT;

-- Inserindo dados nas colunas de cada tabela
INSERT INTO camisas (preco, id, marca, quantidade) 
VALUES 
('dri-fit', 'A', 'NIKE', '1000'),
('plus size', 'B', 'Adidas', '200'),
('dri-fit', 'C', 'NIKE', '300');

INSERT INTO compradores (nome, idade, equipe, preferencia) 
VALUES 
('Ana', '15', 'VASCO', 'NIKE'),
('Jota', '18', 'VASCO', 'ADIDAS'),
('JULIO', '19', 'PALMEIRAS', 'PUMA');

INSERT INTO patrocinadores (nome, telefone, cnpj) 
VALUES 
('Centauro', '8888888-8888', '121-111-111'),
('Netshoes', '8888888-8888', '111-113-111'),
('PH-imports', '8888888-8888', '111-211-111');

-- Removendo uma coluna de cada tabela
ALTER TABLE camisas DROP COLUMN id;
ALTER TABLE compradores DROP COLUMN idade;
ALTER TABLE patrocinadores DROP COLUMN telefone;

-- Mostrando o conteúdo de cada tabela
SELECT * FROM camisas;
SELECT * FROM compradores;
SELECT * FROM patrocinadores;

-- Mostrando o conteúdo da tabela com uma condição
SELECT preco FROM camisas WHERE marca = 'NIKE';
SELECT equipe FROM compradores WHERE preferencia = 'nike';
SELECT cnpj FROM patrocinadores WHERE nome = 'Netshoues'