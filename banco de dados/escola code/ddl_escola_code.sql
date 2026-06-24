/* Modelo Físico - DDL (Data Definition Language)
   Projeto: Escola Code
*/

CREATE DATABASE IF NOT EXISTS escolacode;
USE escolacode;

CREATE TABLE trilha (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL    
);

CREATE TABLE tag (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE curso (
    id INT PRIMARY KEY AUTO_INCREMENT, 
    nome VARCHAR(100) NOT NULL,
    carga_horaria INT NOT NULL,
    fk_trilha_id INT NOT NULL,
    fk_tag_id INT NOT NULL
);
 
-- Restrições de Chave Estrangeira (Foreign Keys)
ALTER TABLE curso ADD CONSTRAINT FK_curso_trilha
    FOREIGN KEY (fk_trilha_id)
    REFERENCES trilha (id)
    ON DELETE CASCADE;
 
ALTER TABLE curso ADD CONSTRAINT FK_curso_tag
    FOREIGN KEY (fk_tag_id)
    REFERENCES tag (id)
    ON DELETE CASCADE;

-- Comandos de verificação
SHOW TABLES;
DESCRIBE curso;