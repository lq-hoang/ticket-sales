SET SEARCH_PATH TO ticketchema;

DROP VIEW IF EXISTS AccessibleSeat CASCADE;
DROP VIEW IF EXISTS TotalSeats CASCADE;

-- Table containing number of accessible seats in a venue
CREATE VIEW AccessibleSeat AS
    SELECT Section.venue_id AS venue_id,
           count(*) FILTER ( WHERE Seat.accessible = True ) AS accessible_seats
    FROM Seat, Section
    WHERE Seat.section_id = Section.section_id
    GROUP BY Section.venue_id;

-- Table containing the number of seats in total
CREATE VIEW TotalSeats AS
    SELECT count(Seat.seat_id) AS num_seats, Section.venue_id AS venue_id
    FROM Seat, Section
    WHERE Seat.section_id = Section.section_ID
    GROUP BY venue_id;

SELECT acs.venue_id AS venue,
       (acs.accessible_seats * 100  / ts.num_seats) AS percentageAccessible
FROM AccessibleSeat acs, TotalSeats ts
WHERE acs.venue_id = ts.venue_id;