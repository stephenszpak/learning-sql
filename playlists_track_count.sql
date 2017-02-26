--Provide a query that shows the total number of tracks in each playlist. 
--The Playlist name should be included on the resulant table.

SELECT COUNT(pt.TrackId), p.Name 
FROM Playlist AS "p" 
JOIN PlaylistTrack AS "pt" 
	ON p.PlaylistId == pt.PlaylistId
GROUP BY p.PlaylistId
