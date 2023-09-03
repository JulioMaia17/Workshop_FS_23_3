-- criando a base de dados
CREATE DATABASE lojas_eletronicos;
-- usando o base de dados 
USE lojas_eletronicos;
-- criando as tabelas 
CREATE TABLE clientes (
    id INT,
    nome VARCHAR(50),
    email VARCHAR(100),
    
    PRIMARY KEY(id)
    );
    
    CREATE TABLE produtos(
    id_produto INT,
    nome VARCHAR(100),
    disponivel CHAR,
    
    PRIMARY KEY(id_produto)
    );
    
    CREATE TABLE marcas(
    nome VARCHAR(100),
    tipo VARCHAR(100),
    cnpj INT,
    
    PRIMARY KEY(cnpj)
    );
    -- fazendo modificacoes nas colunas 
    ALTER TABLE clientes ADD COLUMN genero CHAR;
    ALTER TABLE produtos ADD COLUMN estoque INT;
    ALTER TABLE marcas ADD COLUMN produto VARCHAR(100); 
    
    -- insrindo os dados nas tabelas 
    INSERT INTO clientes VALUES
    (1, "Holanda","doca@gmail.com","M"),
    (2,'Rafael','rafael@gmail.com',"M"),
    (3,'Ana',"anabibi@gmail.com",'F');
    
    INSERT INTO produtos VAlUES
    (28,'Celular','Sim',239),
    (17,'Notebook','Sim',120),
    (11,'Tablet','Nao', 0);
    
    INSERT INTO marcas VALUES
    ('Samsung','Geral',999999-99,'todos'),
    ('Motorola','Smartphones', 888888-88,'celular'),
    ('IPHONE','Smartphones', 777777-77,'celular');
    -- excluindo variavel da tabela
    ALTER TABLE marcas DROP COLUMN produto;
    -- exibindo as tabelas 
	SELECT * FROM clientes;
	SELECT * FROM produtos;
	SELECT * FROM marcas;
    
    
    
    
    
    