CREATE DATABASE bd_foxpath;
USE bd_foxpath;

CREATE TABLE pessoas(
    id_pessoa INTEGER NOT NULL AUTO_INCREMENT,
    tag CHAR(4) UNIQUE NOT NULL,
    nome VARCHAR(50) NOT NULL,
    data_nasc DATE NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    num_telefone VARCHAR(14) UNIQUE NOT NULL,
    lvl_conta INTEGER NOT NULL DEFAULT 0,
    exp_conta INTEGER NOT NULL DEFAULT 0,
    exp_proximo_lvl INTEGER NOT NULL DEFAULT 100,
    PRIMARY KEY(id_pessoa)
);
