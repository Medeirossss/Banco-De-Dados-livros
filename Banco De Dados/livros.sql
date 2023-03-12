-- Criar o banco de dados
CREATE DATABASE biblioteca;

-- Usar o banco de dados
USE biblioteca;

-- Criar a tabela de livros
CREATE TABLE livros (
    id INT NOT NULL AUTO_INCREMENT,
    titulo VARCHAR(255) NOT NULL,
    autor VARCHAR(255) NOT NULL,
    editora VARCHAR(255),
    ano_publicacao INT,
    disponivel BOOLEAN NOT NULL DEFAULT TRUE,
    PRIMARY KEY (id)
);

-- Criar a tabela de usuários
CREATE TABLE usuarios (
    id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    senha VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

-- Criar a tabela de empréstimos
CREATE TABLE emprestimos (
    id INT NOT NULL AUTO_INCREMENT,
    livro_id INT NOT NULL,
    usuario_id INT NOT NULL,
    data_emprestimo DATE NOT NULL,
    data_devolucao DATE,
    PRIMARY KEY (id),
    FOREIGN KEY (livro_id) REFERENCES livros(id),
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
);
