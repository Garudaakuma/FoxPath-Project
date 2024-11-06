DELIMITER $$
CREATE FUNCTION idade_jogador_nacionalidade(data_nasc DATE)
RETURNS INTEGER DETERMINISTIC
BEGIN
	DECLARE idade_jogador INTEGER;
    SET idade_jogador = YEAR(FROM_DAYS(TO_DAYS(NOW())-TO_DAYS(data_nasc)));
	RETURN idade_jogador;
END$$
DELIMITER ;