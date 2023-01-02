SET SEARCH_PATH TO ticketchema;

DROP VIEW IF EXISTS TotalSeats CASCADE;
DROP VIEW IF EXISTS PriceTicket CASCADE;

-- Table containing the total number of seats in a venue
CREATE VIEW TotalSeats AS
    SELECT Section.venue_id AS venue_id, count(Seat.seat_id) AS num_seats
    FROM Seat, Section
    WHERE Seat.section_id = Section.section_id
    GROUP BY Section.venue_id;

-- Table containing the number of seats sold and the amount of money spent in total
-- to go to the concert between all tickets sold
CREATE VIEW PriceTicket AS
    SELECT Ticket.concert_id AS concert_id, sum(Ticket.price) AS total_sold,
           count(Ticket.ticket_id) AS num_sold
    FROM Purchase, Ticket
    WHERE purchase.ticket_id = ticket.ticket_id
    GROUP BY ticket.concert_id;

SELECT c.concert_id as concer_id, ps.total_sold as total_sold,
       (ps.num_sold * 100 / ts.num_seats) as percentVenueSold
FROM TotalSeats ts, PriceTicket ps , Concert c
WHERE ts.venue_id = c.venue_id AND c.concert_id = ps.concert_id;

