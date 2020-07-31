INSERT INTO Artist(ArtistName, YearEstablished)
Values("Kanopi", "2013");

INSERT INTO Album
(Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId)
Values ("King V", "07/07/2017", 1666, "None", 28, 2);

INSERT INTO Song
(Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId)
Values ("Given Up", 233, "07/07/2017", 2, 28, 23);

INSERT INTO Song
(Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId)
Values ("Waltz", 441, "07/07/2017", 2, 28, 23);

INSERT INTO Song
(Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId)
Values ("Half Silver", 887, "07/07/2017", 2, 28, 23);

SELECT song.title AS 'song title', album.title AS 'album title', ArtistName
FROM Song
JOIN Album ON song.AlbumId = album.AlbumId
JOIN Artist ON song.ArtistId = Artist.ArtistId
WHERE ArtistName = "Kanopi";

SELECT COUNT() as 'song total', album.title
FROM Song
JOIN Album on song.AlbumId = album.AlbumId
GROUP BY song.AlbumId;

SELECT album.title as 'Longest Album', MAX(album.AlbumLength) as 'Duration'
FROM Album;

SELECT song.title as 'Longest Song', album.title AS 'Album Title', MAX(song.SongLength) as 'Duration'
FROM Song
JOIN Album ON song.AlbumId = album.AlbumId;