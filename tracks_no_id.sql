SELECT t.Name, mt.Name, g.Name 
FROM Track AS "t" 
JOIN MediaType AS "mt" 
	ON mt.MediaTypeId == t.MediaTypeId 
JOIN Genre AS "g" 
	ON g.GenreId == t.GenreId

-- Provide a query that shows all the Tracks, but displays no IDs. The result should include the Album name, Media type and Genre.