SELECT u.user AS "usuario",
    IF(MAX(YEAR(reproduction_date)) >= 2021, 'Usuário ativo', 'Usuário inativo') AS "status_usuario"
FROM SpotifyClone.user AS u
    INNER JOIN SpotifyClone.playback_history AS p ON u.id_user = p.id_user
GROUP BY usuario
ORDER BY usuario;