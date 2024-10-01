DELETE FROM roupas_inferiores WHERE id_roupas_inferior;
ALTER TABLE roupas_inferiores AUTO_INCREMENT = 0;

DELETE FROM roupas_superiores WHERE id_roupas_superior;
ALTER TABLE roupas_superiores AUTO_INCREMENT = 0;

DELETE FROM chapeus WHERE id_chapeus;
ALTER TABLE chapeus AUTO_INCREMENT = 0;

DELETE FROM cabelo WHERE id_cabelo;
ALTER TABLE cabelo AUTO_INCREMENT = 0;

DELETE FROM cosmeticos WHERE id_cosmetico;
ALTER TABLE cosmeticos AUTO_INCREMENT = 0;

DELETE FROM avatar WHERE id_avatar;
ALTER TABLE avatar AUTO_INCREMENT = 0;

DELETE FROM alternativas WHERE id_alternativa;
ALTER TABLE alternativas AUTO_INCREMENT = 0;

DELETE FROM questoes_respondidas WHERE id_qsts_respondida;
ALTER TABLE questoes_respondidas AUTO_INCREMENT = 0;

DELETE FROM questoes WHERE id_questao;
ALTER TABLE questoes AUTO_INCREMENT = 0;

DELETE FROM grupo_questoes WHERE id_grp_questoes;
ALTER TABLE grupo_questoes AUTO_INCREMENT = 0;

DELETE FROM fases WHERE id_fase;
ALTER TABLE fases AUTO_INCREMENT = 0;

DELETE FROM leaderboard WHERE id_leaderboard;
ALTER TABLE leaderboard AUTO_INCREMENT = 0;

DELETE FROM jogadores WHERE id_usuario;

DELETE FROM idiomas WHERE id_idioma;
ALTER TABLE idiomas AUTO_INCREMENT = 0;

DELETE FROM agendas WHERE id_agenda;
ALTER TABLE agendas AUTO_INCREMENT = 0;

DELETE FROM certificado WHERE id_certificado;
ALTER TABLE certificado AUTO_INCREMENT = 0;

DELETE FROM fluentes WHERE id_usuario;

DELETE FROM denuncias WHERE id_denuncia;
ALTER TABLE denuncias AUTO_INCREMENT = 0;

DELETE FROM denunciados WHERE id_ban;
ALTER TABLE denunciados AUTO_INCREMENT = 0;

DELETE FROM administradores WHERE id_pessoa;

DELETE FROM usuarios WHERE id_pessoa;
ALTER TABLE usuarios AUTO_INCREMENT = 0;

DELETE FROM pessoas WHERE id_pessoa;
ALTER TABLE pessoas AUTO_INCREMENT = 0;
