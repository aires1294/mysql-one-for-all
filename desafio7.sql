SELECT  
    a.artist_name AS artista,
    al.album_name AS album,
    COUNT (ar.id_artist) AS seguidores
FROM 
    SpotifyClone.following_artist AS ar
    INNER JOIN SpotifyClone.artist AS a ON a.id_artist = ar.id_artist
    INNER JOIN SpotifyClone.album AS al ON al.id_artist = a.id_artist
GROUP BY 
    artista,
    album
ORDER BY 
    seguidores DESC,
    artista,
    album;

