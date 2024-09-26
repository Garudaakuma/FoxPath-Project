
CREATE TABLE usuarios(
    id_pessoa INTEGER NOT NULL AUTO_INCREMENT,
    score_perfil INTEGER NOT NULL DEFAULT 100,
    nacionalidade VARCHAR(50) NOT NULL,
    PRIMARY KEY(id_pessoa),
    CONSTRAINT fk_pessoaUsuario FOREIGN KEY(id_pessoa) REFERENCES pessoas(id_pessoa)
);

CREATE TABLE administradores(
    id_pessoa INTEGER NOT NULL AUTO_INCREMENT,
    num_banimentos INTEGER NOT NULL DEFAULT 0,
    num_denuncias INTEGER NOT NULL DEFAULT 0,
    num_denun_resolvidas INTEGER NOT NULL DEFAULT 0,
    PRIMARY KEY(id_pessoa),
    CONSTRAINT fk_pessoaAdm FOREIGN KEY(id_pessoa) REFERENCES pessoas(id_pessoa)
);