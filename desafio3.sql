-- SELECT (SELECT DISTINCT (id_user) FROM SpotifyClone.user) AS usuario,
-- (SELECT COUNT (id_user) FROM SpotifyClone.playback_history) AS qt_de_musicas_ouvidas,
-- (SELECT ROUND SUM () )
SELECT
    u.user AS usuario ,
    COUNT(p.reproduction_date) AS qt_de_musicas_ouvidas,
    ROUND(SUM(m.sec_duration) / 60, 2) AS total_minutos
FROM 
    SpotifyClone.user AS u
INNER JOIN SpotifyClone.playback_history AS p 
ON u.id_user = p.id_user
INNER JOIN SpotifyClone.music AS m 
ON m.id_music = p.id_music
GROUP BY user
ORDER BY user;