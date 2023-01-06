SELECT 
    DISTINCT u.user usuario,
	IF(YEAR(MAX(p.reproduction_date)) >= 2021,'Usuário ativo','Usuário inativo') status_usuario
FROM SpotifyClone.playback_history p
INNER JOIN SpotifyClone.user u ON p.user_id = u.user_id
GROUP BY u.user
ORDER BY u.user;


