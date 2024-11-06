CREATE DATABASE bd_foxpath;
USE bd_foxpath;

CREATE TABLE pessoas(
    id_pessoa INTEGER NOT NULL AUTO_INCREMENT,
    tag CHAR(4) UNIQUE NOT NULL,
    nome VARCHAR(50) NOT NULL,
    data_nasc DATE NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    senha VARCHAR(255) NOT NULL,
    num_telefone VARCHAR(14) UNIQUE NOT NULL,
    lvl_conta INTEGER NOT NULL DEFAULT 0,
    exp_conta INTEGER NOT NULL DEFAULT 0,
    exp_proximo_lvl INTEGER NOT NULL DEFAULT 100,
    PRIMARY KEY(id_pessoa)
);

CREATE TABLE usuarios(
    id_pessoa INTEGER NOT NULL,
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

-- Por parte de adms
CREATE TABLE categorias(
    id_categoria INTEGER NOT NULL AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    PRIMARY KEY(id_categoria)
);

CREATE TABLE denunciados(
    id_ban INTEGER NOT NULL AUTO_INCREMENT,
    id_adm INTEGER NOT NULL,
    id_categoria INTEGER NOT NULL,
    tempo TIME NOT NULL,
    tag_pessoa CHAR(4) UNIQUE NOT NULL,
    PRIMARY KEY(id_ban),
    CONSTRAINT fk_admBan FOREIGN KEY(id_adm) REFERENCES administradores(id_pessoa),
    CONSTRAINT fk_catBan FOREIGN KEY(id_categoria) REFERENCES categorias(id_categoria)
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
    motivo VARCHAR(255) NOT NULL,
    descricao VARCHAR(500) NOT NULL,
    PRIMARY KEY(id_denuncia),
    CONSTRAINT fk_admDenuncia FOREIGN KEY(id_adm) REFERENCES administradores(id_pessoa),
    CONSTRAINT fk_userDnncdDenuncia FOREIGN KEY(id_denunciado) REFERENCES usuarios(id_pessoa),
    CONSTRAINT fk_userDnncdrDenuncia FOREIGN KEY(id_denunciador) REFERENCES usuarios(id_pessoa)
);

-- por parte de usuarios
CREATE TABLE fluentes(
    id_usuario INTEGER NOT NULL,
    idioma_fluente VARCHAR(20) NOT NULL,
    PRIMARY KEY(id_usuario),
    CONSTRAINT fk_userFluente FOREIGN KEY(id_usuario) REFERENCES usuarios(id_pessoa)
);

-- Certificado do fluente
CREATE TABLE certificado(
    id_certificado INTEGER NOT NULL AUTO_INCREMENT,
    id_fluente INTEGER NOT NULL,
    nome VARCHAR(100) NOT NULL,
    pdf_certificado BLOB NOT NULL,
    data_emissao DATE NOT NULL,
    data_expiracao DATE NOT NULL,
    PRIMARY KEY(id_certificado, id_fluente),
    CONSTRAINT fk_fluenteCertificado FOREIGN KEY(id_fluente) REFERENCES fluentes(id_usuario)
);

CREATE TABLE agendas(
    id_agenda INTEGER NOT NULL AUTO_INCREMENT,
    id_usuario INTEGER NOT NULL,
    id_fluente INTEGER NOT NULL,
    data_inicio DATETIME NOT NULL,
    data_expira TIME NOT NULL DEFAULT "00:30:00",
    data_fim DATETIME NOT NULL,
    feedback_user VARCHAR(255) NOT NULL,
    positive_exp_user BOOLEAN NOT NULL,
    feedback_fluente VARCHAR(255) NOT NULL,
    positive_exp_fluente BOOLEAN NOT NULL,
    PRIMARY KEY(id_agenda),
    CONSTRAINT fk_userAgenda FOREIGN KEY(id_usuario) REFERENCES usuarios(id_pessoa),
    CONSTRAINT fk_fluenteAgenda FOREIGN KEY(id_fluente) REFERENCES fluentes(id_usuario)
);

-- Parte single Player
CREATE TABLE idiomas(
    id_idioma INTEGER NOT NULL AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    dificuldade VARCHAR(15) NOT NULL,
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

CREATE TABLE leaderboard(
    id_leaderboard INTEGER NOT NULL AUTO_INCREMENT,
    id_jogador INTEGER NOT NULL,
    score_total INTEGER NOT NULL DEFAULT 100,
    PRIMARY KEY(id_leaderboard),
    CONSTRAINT fk_jogadorLeaderboard FOREIGN KEY(id_jogador) REFERENCES jogadores(id_usuario)
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

-- Criação de avatar
CREATE TABLE avatar(
    id_avatar INTEGER NOT NULL AUTO_INCREMENT,
    id_usuario INTEGER NOT NULL,
    perna_type INTEGER NOT NULL DEFAULT 0,
    cauda_type INTEGER NOT NULL DEFAULT 0,
    torso_type INTEGER NOT NULL DEFAULT 0,
    head_type INTEGER NOT NULL DEFAULT 0,
    perna_color CHAR(7) NOT NULL DEFAULT '#FFFFFF',
    cauda_color CHAR(7) NOT NULL DEFAULT '#FFFFFF',
    torso_color CHAR(7) NOT NULL DEFAULT '#FFFFFF',
    head_color CHAR(7) NOT NULL DEFAULT '#FFFFFF',
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
    cor char(7) NOT NULL DEFAULT '#FFFFFF',
    PRIMARY KEY(id_cabelo, id_cosmetico),
    CONSTRAINT fk_cosmeticoCabelo FOREIGN KEY(id_cosmetico) REFERENCES cosmeticos(id_cosmetico)
);
CREATE TABLE chapeus(
    id_chapeus INTEGER NOT NULL AUTO_INCREMENT,
    id_cosmetico INTEGER NOT NULL,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    cor char(7) NOT NULL DEFAULT '#FFFFFF',
    PRIMARY KEY(id_chapeus, id_cosmetico),
    CONSTRAINT fk_cosmeticochapeus FOREIGN KEY(id_cosmetico) REFERENCES cosmeticos(id_cosmetico)
);
CREATE TABLE roupas_superiores(
    id_roupas_superior INTEGER NOT NULL AUTO_INCREMENT,
    id_cosmetico INTEGER NOT NULL,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    cor char(7) NOT NULL DEFAULT '#FFFFFF',
    PRIMARY KEY(id_roupas_superior, id_cosmetico),
    CONSTRAINT fk_cosmeticoRpsSuperiores FOREIGN KEY(id_cosmetico) REFERENCES cosmeticos(id_cosmetico)
);
CREATE TABLE roupas_inferiores(
    id_roupas_inferior INTEGER NOT NULL AUTO_INCREMENT,
    id_cosmetico INTEGER NOT NULL,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    cor char(7) NOT NULL DEFAULT '#FFFFFF',
    PRIMARY KEY(id_roupas_inferior, id_cosmetico),
    CONSTRAINT fk_cosmeticoRpsInferiores FOREIGN KEY(id_cosmetico) REFERENCES cosmeticos(id_cosmetico)
);
