SET SEARCH_PATH TO ticketchema;

SELECT Owner.owner_name as ownerName,
       count(Venue.venue_id) as venuesOwned
FROM Venue, Owner
WHERE Venue.owner_id = Owner.owner_id
GROUP BY Owner.owner_id;