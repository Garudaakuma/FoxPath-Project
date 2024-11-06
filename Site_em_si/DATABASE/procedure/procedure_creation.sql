DELIMITER $$
CREATE PROCEDURE inserindo_nova_pessoa(
	IN tag CHAR(4),
    IN nome VARCHAR(50),
    IN data_nasc DATE,
    IN email VARCHAR(255),
    IN senha VARCHAR(255),
    IN num_telefone VARCHAR(14)
)
BEGIN
    DECLARE id_pessoa INT DEFAULT NULL;
    IF tag IS NOT NULL AND nome IS NOT NULL AND data_nasc IS NOT NULL AND email IS NOT NULL AND senha IS NOT NULL AND num_telefone IS NOT NULL
        INSERT INTO pessoas VALUES (NULL, tag, nome, data_nasc, email, senha, num_telefone, 0, 0, 100)
        SET id_pessoa := (SELECT LAST_INSERT_ID());
    END IF;
    SELECT id_pessoa ;
END $$
DELIMITER;