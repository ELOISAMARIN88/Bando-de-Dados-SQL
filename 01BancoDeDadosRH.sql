CREATE DATABASE db_BancodeDadosRH;

USE db_BancodeDadosRH;

CREATE TABLE tb_Colaboradores(

	id BIGINT auto_increment,
    nome VARCHAR(250) NOT NULL,
    cpf int NOT NULL,
    cargo VARCHAR(250),
    salario decimal(10,2),
    PRIMARY KEY(id)

);

INSERT INTO tb_Colaboradores(nome, cpf, cargo, salario)
VALUES("Luisa Monteiro", 123456789, "Analista de Business Intelligence", 4401),
	("Livia Melo", 987654321, "Desenvolvedora Web", 3334),
    ("Felipe Araújo", 999999999, "DevOps", 7527),
    ("Thiago  Carvalho", 888888888, "Estágio", 1400),
    ("Ana  Ventura", 777777777, "Jovem Aprendiz", 800),
    ("Pedro dos Santos",666666666, "Scrum Master",  7527),
    ("Daniela Rocha", 555555555, "Recepcionista", 1900),
    ("Sara Lima", 444444444, "Trainee", 1700.00),
    ("Miguel Moura", 333333333, "Auxiliar de Recursos Humanos", 1600.00),
    ("Gabriela  Prado", 222222222, "Analista de Recursos Humanos", 3000.00),
    ("Carol Peres", 111111111, "Gerente de Recursos Humanos", 6000.00);
    
SELECT * from tb_colaboradores;

SELECT nome FROM tb_colaboradores;

SELECT nome, cargo FROM tb_colaboradores;

SELECT * FROM tb_colaboradores WHERE salario > 2000;
SELECT * FROM tb_colaboradores WHERE  salario < 2000;

SELECT * FROM tb_colaboradores WHERE  id = 5;


DELETE FROM tb_colaboradores WHERE id = 3;

SELECT * from tb_colaboradores;

    
    