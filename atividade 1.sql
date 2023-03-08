-- comando para criação de banco de dados
CREATE DATABASE db_quitanda;

-- comando que indica o bando de dados usado
USE db_quitanda;

-- comando para criação de tabela
CREATE TABLE tb_produtos(
-- BIGINT aguenta 20 digitos
	id BIGINT AUTO_INCREMENT, -- cria sozinho os números do id
    nome_produto VARCHAR (255),-- aceita até 255 caracteres
    preco DECIMAL(6,2), -- configura quantos números aceita. 6 numeros no total, e 2 após a virgula
    
    PRIMARY KEY(id) -- vai usar o id como dado primario da tabela
);

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos(nome_produto, preco) VALUES ("Maçã", 3.00), ("Banana", 5.00);

-- desativa o modo seguro do mysql e permite update e delete
SET SQL_SAFE_UPDATES =0;

-- atualização de um dado dentro da minha tabela
UPDATE tb_produtos SET preco = 7.90 WHERE id=2;