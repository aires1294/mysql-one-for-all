-- SELECT u.user  AS usuario,
--     CASE
--      WHEN MAX(YEAR(p.reproduction_date)) >= 2021 THEN 'Usuário ativo'
--      ELSE  'Usuário inativo' AS status_usuario;
--     END AS status_usuario
-- FROM SpotifyClone.user AS u
--         INNER JOIN SpotifyClone.playback_history AS p 
--         ON u.user_id = h.user_id
-- GROUP BY user
-- ORDER BY user;


-- SELECT u.user AS usuario,IF (MAX(YEAR(p.reproduction_date))>=2021,'Usuário ativo','Usuário inativo') AS status_usuario
-- FROM SpotifyClone.user AS u 
-- INNER JOIN SpotifyClone.playback_history AS p
-- ON  u.user_id = p.user_id
-- GROUP BY user_name
-- ORDER BY user_name ASC;



SELECT 
    DISTINCT u.user usuario,
	IF(YEAR(MAX(p.reproduction_date)) >= 2021,'Usuário ativo','Usuário inativo') status_usuario
FROM SpotifyClone.playback_history p
INNER JOIN SpotifyClone.user u ON p.user_id = u.user_id
GROUP BY u.user
ORDER BY u.user;
