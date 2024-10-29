-- Por parte de adms
CREATE TABLE denunciados(
    id_ban INTEGER NOT NULL AUTO_INCREMENT,
    id_adm INTEGER NOT NULL,
    tempo TIME NOT NULL,
    tag_pessoa CHAR(4) UNIQUE NOT NULL,
    categoria VARCHAR(255) NOT NULL,
    PRIMARY KEY(id_ban),
    CONSTRAINT fk_admBan FOREIGN KEY(id_adm) REFERENCES administradores(id_pessoa)
);

-- parte multi Player
CREATE TABLE denuncias(
    id_denuncia INTEGER NOT NULL AUTO_INCREMENT,
    id_adm INTEGER NOT NULL,
    id_denunciado INTEGER NOT NULL,
    id_denunciador INTEGER NOT NULL,
    data_inicio DATETIME NOT NULL,
    data_fim DATETIME,
    tag_reportado CHAR(4) UNIQUE NOT NULL,
    motivo VARCHAR(50) NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    PRIMARY KEY(id_denuncia),
    CONSTRAINT fk_admDenuncia FOREIGN KEY(id_adm) REFERENCES administradores(id_pessoa),
    CONSTRAINT fk_userDnncdDenuncia FOREIGN KEY(id_denunciado) REFERENCES usuarios(id_pessoa),
    CONSTRAINT fk_userDnncdrDenuncia FOREIGN KEY(id_denunciador) REFERENCES usuarios(id_pessoa)
);

-- por parte de usuarios
CREATE TABLE fluentes(
    id_usuario INTEGER NOT NULL AUTO_INCREMENT,
    idioma_fluente VARCHAR(20) NOT NULL,
    PRIMARY KEY(id_usuario),
    CONSTRAINT fk_userFluente FOREIGN KEY(id_usuario) REFERENCES usuarios(id_pessoa)
);

-- Certificado do fluente
CREATE TABLE certificado(
    id_certificado INTEGER NOT NULL AUTO_INCREMENT,
    id_fluente INTEGER NOT NULL,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    data_emissao DATE NOT NULL,
    data_expiracao DATE NOT NULL,
    PRIMARY KEY(id_certificado, id_fluente),
    CONSTRAINT fk_fluenteCertificado FOREIGN KEY(id_fluente) REFERENCES fluentes(id_usuario)
);

-- Parte single Player
CREATE TABLE idiomas(
    id_idioma INTEGER NOT NULL AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    dificuldade VARCHAR(10) NOT NULL,
    PRIMARY KEY(id_idioma)
);

CREATE TABLE jogadores(
    id_usuario INTEGER NOT NULL AUTO_INCREMENT,
    id_idioma INTEGER NOT NULL,
    vidas TINYINT NOT NULL DEFAULT 3,
    tentativas TINYINT NOT NULL DEFAULT 2,
    PRIMARY KEY(id_usuario),
    CONSTRAINT fk_userJogador FOREIGN KEY(id_usuario) REFERENCES usuarios(id_pessoa),
    CONSTRAINT fk_idiomaJogador FOREIGN KEY(id_idioma) REFERENCES idiomas(id_idioma)
);

CREATE TABLE fases(
    id_fase INTEGER NOT NULL AUTO_INCREMENT,
    id_idioma INTEGER NOT NULL,
    nome VARCHAR(50) NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    PRIMARY KEY(id_fase),
    CONSTRAINT fk_idiomaFase FOREIGN KEY(id_idioma) REFERENCES idiomas(id_idioma)
);

CREATE TABLE grupo_questoes(
    id_grp_questoes INTEGER NOT NULL AUTO_INCREMENT,
    id_fase INTEGER NOT NULL,
    nome VARCHAR(50) NOT NULL,
    PRIMARY KEY(id_grp_questoes),
    CONSTRAINT fk_faseGrpQuestoes FOREIGN KEY(id_fase) REFERENCES fases(id_fase)
);

CREATE TABLE questoes(
    id_questao INTEGER NOT NULL AUTO_INCREMENT,
    id_grp_questoes INTEGER NOT NULL,
    score_total INTEGER NOT NULL DEFAULT 100,
    descritivo VARCHAR(255) NOT NULL,
    PRIMARY KEY(id_questao),
    CONSTRAINT fk_grpQuestoesQuestao FOREIGN KEY(id_grp_questoes) REFERENCES grupo_questoes(id_grp_questoes)
);

CREATE TABLE questoes_respondidas(
    id_qsts_respondida INTEGER NOT NULL AUTO_INCREMENT,
    id_questao INTEGER NOT NULL,
    id_jogador INTEGER NOT NULL,
    acertou BOOLEAN NOT NULL,
    data_resposta DATETIME NOT NULL,
    PRIMARY KEY(id_qsts_respondida),
    CONSTRAINT fk_questaoQstsRespondida FOREIGN KEY(id_questao) REFERENCES questoes(id_questao),
    CONSTRAINT fk_jogadorQstsRespondida FOREIGN KEY(id_jogador) REFERENCES jogadores(id_usuario)
);

CREATE TABLE alternativas(
    id_alternativa INTEGER NOT NULL AUTO_INCREMENT,
    id_questao INTEGER NOT NULL,
    opcao TINYINT NOT NULL,
    score INTEGER NOT NULL DEFAULT 0,
    descritivo VARCHAR(255) NOT NULL,
    correta BOOLEAN NOT NULL,
    PRIMARY KEY(id_alternativa),
    CONSTRAINT fk_questaoAlternativa FOREIGN KEY(id_questao) REFERENCES questoes(id_questao)
);

CREATE TABLE leaderboard(
    id_leaderboard INTEGER NOT NULL AUTO_INCREMENT,
    id_jogador INTEGER NOT NULL,
    score_total INTEGER NOT NULL DEFAULT 100,
    PRIMARY KEY(id_leaderboard),
    CONSTRAINT fk_jogadorLeaderboard FOREIGN KEY(id_jogador) REFERENCES jogadores(id_usuario)
);
