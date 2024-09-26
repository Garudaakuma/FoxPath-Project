-- Criação de avatar
CREATE TABLE avatar(
    id_avatar INTEGER NOT NULL AUTO_INCREMENT,
    id_usuario INTEGER NOT NULL,
    perna_type INTEGER NOT NULL DEFAULT 0,
    cauda_type INTEGER NOT NULL DEFAULT 0,
    torso_type INTEGER NOT NULL DEFAULT 0,
    head_type INTEGER NOT NULL DEFAULT 0,
    perna_color CHAR(7) NOT NULL DEFAULT '#000000',
    cauda_color CHAR(7) NOT NULL DEFAULT '#000000',
    torso_color CHAR(7) NOT NULL DEFAULT '#000000',
    head_color CHAR(7) NOT NULL DEFAULT '#000000',
    PRIMARY KEY(id_avatar),
    CONSTRAINT fk_userAvatar FOREIGN KEY(id_usuario) REFERENCES usuarios(id_pessoa)
);

CREATE TABLE cosmeticos(
    id_cosmetico INTEGER NOT NULL AUTO_INCREMENT,
    id_avatar INTEGER NOT NULL,
    tematica VARCHAR(25) NOT NULL,
    PRIMARY KEY(id_cosmetico),
    CONSTRAINT fk_avatarCosmeticos FOREIGN KEY(id_avatar) REFERENCES avatar(id_avatar)
);

CREATE TABLE cabelo(
    id_cabelo INTEGER NOT NULL AUTO_INCREMENT,
    id_cosmetico INTEGER NOT NULL,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    cor char(7) NOT NULL DEFAULT '#000000',
    PRIMARY KEY(id_cabelo, id_cosmetico),
    CONSTRAINT fk_cosmeticoCabelo FOREIGN KEY(id_cosmetico) REFERENCES cosmeticos(id_cosmetico)
);
CREATE TABLE chapeus(
    id_chapeus INTEGER NOT NULL AUTO_INCREMENT,
    id_cosmetico INTEGER NOT NULL,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    cor char(7) NOT NULL DEFAULT '#000000',
    PRIMARY KEY(id_chapeus, id_cosmetico),
    CONSTRAINT fk_cosmeticochapeus FOREIGN KEY(id_cosmetico) REFERENCES cosmeticos(id_cosmetico)
);
CREATE TABLE roupas_superiores(
    id_roupas_superior INTEGER NOT NULL AUTO_INCREMENT,
    id_cosmetico INTEGER NOT NULL,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    cor char(7) NOT NULL DEFAULT '#000000',
    PRIMARY KEY(id_roupas_superior, id_cosmetico),
    CONSTRAINT fk_cosmeticoRpsSuperiores FOREIGN KEY(id_cosmetico) REFERENCES cosmeticos(id_cosmetico)
);
CREATE TABLE roupas_inferiores(
    id_roupas_inferior INTEGER NOT NULL AUTO_INCREMENT,
    id_cosmetico INTEGER NOT NULL,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    cor char(7) NOT NULL DEFAULT '#000000',
    PRIMARY KEY(id_roupas_inferior, id_cosmetico),
    CONSTRAINT fk_cosmeticoRpsInferiores FOREIGN KEY(id_cosmetico) REFERENCES cosmeticos(id_cosmetico)
);