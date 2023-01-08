SELECT 
    a.artist_name AS artista,
    al.album_name AS album
FROM 
    SpotifyClone.artist AS a
    INNER JOIN SpotifyClone.album AS al ON a.id_artist = al.id_artist
WHERE a.artist_name = 'Elis Regina';
