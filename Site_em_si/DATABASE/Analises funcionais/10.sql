-- ! Melhores jogadores do LeaderBoard
SELECT
	ps.nome,
	lb.score_total as score,
    us.nacionalidade
FROM leaderboard lb
JOIN jogadores jg ON lb.id_jogador = jg.id_usuario
JOIN usuarios us ON jg.id_usuario = us.id_pessoa
JOIN pessoas ps ON us.id_pessoa = ps.id_pessoa
ORDER BY lb.score_total DESC;