CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
	id BIGINT AUTO_INCREMENT,
	jogo VARCHAR(255) NOT NULL,
    descrição VARCHAR(255),
PRIMARY KEY(id)
);
CREATE TABLE tb_personagens(
	id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
    poder VARCHAR(255),
    nível INT,
    fraqueza VARCHAR(255),
    categoria_id BIGINT,
PRIMARY KEY(id),
FOREIGN KEY(categoria_id) REFERENCES tb_classes (id)
);

INSERT INTO tb_classes(jogo,descrição) VALUES 
("COD", "Tiro"),
("God of War", "Luta"),
("Mario", "Plataforma"),
("Velozes e Furiosos", "Corrida"),
("GTA", "RPG");

INSERT INTO tb_personagens(nome,poder,nível,fraqueza,categoria_id) VALUES 
("Kratos", "super força", 10, "Atreus", 1),
("Atreus", "tiro de flecha", 6, "Sua mãe" , 1),
("Mario", "velocidade", 15, "planta venenosa" , 3),
("Luigi", "força", 10 , "wluigi" , 3),
("Wario", "maldade", 7 , "mario" , 3),
("Trevor", "coragem", 25 , "alcool" , 5),
("Franklin", "inteligencia", 20 , "mulheres" , 5),
("Michael", "dinheiro", 25 , "maconha" , 5);

SELECT * FROM tb_personagens WHERE nível > 20;
SELECT * FROM tb_personagens WHERE nível >= 10 AND nível <=20;
SELECT * FROM tb_personagens WHERE nome LIKE "%M%";
SELECT * FROM tb_personagens
INNER JOIN tb_classes ON tb_classes.id = tb_personagens.categoria_id;
SELECT * FROM tb_personagens
INNER JOIN tb_classes ON tb_classes.id = tb_personagens.categoria_id
WHERE tb_classes.descrição = "RPG";
