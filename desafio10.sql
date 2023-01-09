SELECT 
    m.music_name AS nome,
    COUNT (i.id_music) AS reproducoes
FROM 
    SpotifyClone.playback_history AS i
    INNER JOIN SpotifyClone.music AS m ON m.id_music = i.id_music
    INNER JOIN SpotifyClone.user AS u ON i.id_user = u.id_user
    INNER JOIN SpotifyClone.plan AS p ON u.id_plan = p.id_plan
WHERE p.plan IN ('gratuito','pessoal')
GROUP BY    
    nome
ORDER BY
    nome;

  