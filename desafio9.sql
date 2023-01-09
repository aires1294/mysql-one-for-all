SELECT 
    COUNT (id_user) AS quantidade_musicas_no_historico
FROM
    SpotifyClone.playback_history
WHERE id_user = 1;

