SELECT * 
FROM Customer 
WHERE Phone 
LIKE "+55%"
-- this % means the phone numbers HAS to start with +55 but can have anything after

SELECT COUNT(*)
FROM Customer 
-- COUNT will show how many rows there are, or how many Customers there are

SELECT Results.Name, Results.Title 
FROM (SELECT * FROM Album JOIN Artist ON Album.ArtistId == Artist.ArtistId) AS "Results" 
WHERE Name == "AC/DC"
-- example joining two tables and some other stuff :X  Code in Parenthesis is a Sub-query

SELECT * 
FROM Album 
ORDER BY ArtistId
-- orders artist ID from 1 to X

SELECT * 
FROM Album 
LIMIT 5
-- gives you the top 5 albums

SELECT * 
FROM Album 
LIMIT 5 OFFSET 10
-- gives you the next 5 albums after 10

SELECT * 
FROM Employee 
WHERE ReportsTo ISNULL
-- uses the ISNULL Expression  after the WHERE to show if something is empty
-- use sqllite documentation for lists of expression you can use

SELECT Track.Name AS "Track Name", ArtistAlbum.Name AS "Band Name" -- using alias for readability
FROM
	(SELECT * FROM Artist JOIN Album ON Artist.ArtistId == Album.ArtistId) AS "ArtistAlbum"
JOIN Track
	ON Track.AlbumId == ArtistAlbum.AlbumId
WHERE ArtistAlbum.Name LIKE "B%" --shows all band names starting with the letter B
ORDER BY Track.Name
-- Goes through 3 tables to get this info, creating an ALIAS for a SUBQUERY is necessary
-- order by goes alphanumerically but you can type DESC to go from z to 0

SELECT Name, COUNT(Album.Title) FROM Track --COUNT shows you how many albums have the same track name
JOIN Album 
	ON Track.AlbumId == Album.AlbumId
GROUP BY Name -- grouping by track title gives you the COUNT of albums the track title is on
ORDER BY Name
-- Basically uses a SINGLE ROW for duplicate track titles by showing how many albums have that track title
-- another example of this below

SELECT * FROM
	(SELECT Name, COUNT(Album.Title) AS "Albums" FROM Track 
		JOIN Album ON Track.AlbumId == Album.AlbumId
		GROUP BY Name
		ORDER BY Name)
WHERE ALBUMS > 1
-- this creates a subquery so you can use the WHERE function after a GROUP BY function, since the GROUP BY function is grouping up the duplicate songs


