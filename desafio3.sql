-- SELECT (SELECT DISTINCT (id_user) FROM SpotifyClone.user) AS usuario,
-- (SELECT COUNT (id_user) FROM SpotifyClone.playback_history) AS qt_de_musicas_ouvidas,
-- (SELECT ROUND SUM () )
SELECT
    u.id_user AS usuario ,
    COUNT (p.id_user) AS qt_de_musicas_ouvidas,
    ROUND (SUM(m.sec_duration) / 60, 2) AS total_minutos
FROM 
    SpotifyClone.user AS u
INNER JOIN SpotfyCiclone.playback_history AS p ON u.id_user = p.ud_user
INNER JOIN SpotfyCiclone.music AS m ON m.id_music = p.id_music
GROUP BY user
ORDER BY user ASC;
 
