CREATE DATABASE db_nota;

use db_nota;

CREATE TABLE tb_alunos(
	id BIGINT auto_increment primary key,
    nome VARCHAR(250) NOT NULL,
    nota FLOAT NOT NULL,
    materia VARCHAR(200)
    
);
1 - Matemática.
2 - Língua Portuguesa.
3 - História.
4 - Física.
5 - Biologia.
6 - Química.
7 - Geografia.
8 - Filosofia.

INSERT INTO tb_alunos(nome, nota, materia)
VALUES("Luisa Monteiro", 10, "Matemática"),
		("Livia Melo", 8.7, "Língua Portuguesa"),
        ("Felipe Araújo", 5.6,"História"),
        ("Thiago Carvalho", 7.3, "Física"),
        ("Ana Ventura", 6.2,"Biologia"),
        ("Pedro dos Santos", 9.6, "Química"),
        ("Daniela Rocha", 4.5, "Geografia"),
        ("Sara Lima", 9.0, "Filosofia"),
        ("Miguel Moura", 10, "Geografia");
        
 SELECT * FROM tb_alunos;      
 
 SELECT * FROM tb_alunos WHERE nota > 7;
SELECT * FROM tb_alunos WHERE nota < 7;

 SELECT * FROM tb_alunos WHERE nota BETWEEN 5 AND 8;
 
 SELECT * FROM tb_alunos WHERE nome LIKE "%an%";

      
      