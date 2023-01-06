SELECT 
    m.music_name AS cancao, 
    COUNT(p.id_music) AS reproducoes
FROM SpotifyClone.music AS m
INNER JOIN SpotifyClone.playback_history AS p
    ON p.id_music = m.id_music
GROUP BY m.id_music
ORDER BY reproducoes DESC, cancao LIMIT 2;