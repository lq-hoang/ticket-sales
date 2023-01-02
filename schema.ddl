DROP SCHEMA IF EXISTS ticketchema CASCADE ;
CREATE SCHEMA ticketchema;
SET search_path TO ticketchema;
-- Could not: + Can't enforce that there are more than 10 seats in a venue
--            + Can't enforce that a venue has seats that are accessible to people with
--              mobility issues
--            + Can't enforce that all seats in the venue are available for every concert
--              (where all seats are associated with a ticket)
--            + Can't enforce that a venue has at least one section
-- Did not: none
-- Extra constraints: + Tickets to a specific seat for a specific concert can only be
--                      purchased once
-- Assumptions: + Assumed a venue could have no concerts
--              + Assumed a user could purchase multiple tickets from different concerts
--                at the same date and time (shopping cart with multiple items)
--              + Assumed any string value column does not surpass more than 80 characters

-- A row in this table indicates a person or company that may own a venue
-- owner_id is the phone number of the owner
CREATE TABLE Owner (
    owner_id integer PRIMARY KEY,
    owner_name varchar(80) NOT NULL
);

-- A row in this table indicates a person of who has an account with
-- the company's concert ticket app
CREATE TABLE AppUser (
    username varchar(80) PRIMARY KEY
);

-- A row in this table indicates a location that can hold a concert
-- owner_id is the phone number of the venue's owner
CREATE TABLE Venue (
    venue_id integer PRIMARY KEY,
    venue_name varchar(80) NOT NULL,
    city varchar(80) NOT NULL,
    address varchar(80) NOT NULL,
    owner_id integer NOT NULL REFERENCES Owner
);

-- A row in this table indicates a concert held at a venue
-- datetime refers to the date and time the concert starts
CREATE TABLE Concert (
    datetime timestamp NOT NULL,
    venue_id integer NOT NULL REFERENCES Venue,
    concert_name varchar(80) NOT NULL,
    concert_id integer NOT NULL UNIQUE,
    PRIMARY KEY (datetime, venue_id)
);

-- A row in this table indicates a seating section of a venue
CREATE TABLE Section (
    section_name varchar(80) NOT NULL,
    venue_id integer NOT NULL REFERENCES Venue,
    section_id integer NOT NULL UNIQUE,
    PRIMARY KEY (section_name, venue_id)
);

-- A row in this table indicates a seat in a venue
-- accessible refers to if the seat can be accessed by those with mobility
--    issues and is True if it can be accessed
CREATE TABLE Seat (
    identifier varchar(80) NOT NULL,
    section_id integer NOT NULL REFERENCES Section(section_id),
    accessible boolean NOT NULL,
    seat_id integer NOT NULL UNIQUE ,
    PRIMARY KEY (identifier, section_id)
);

-- A row in this table indicates a ticket for a seat at a concert
-- price indicates the cost to buy the ticket
CREATE TABLE Ticket (
    concert_id integer NOT NULL REFERENCES Concert(concert_id),
    seat_id integer NOT NULL REFERENCES Seat(seat_id),
    price integer NOT NULL,
    ticket_id integer NOT NULL UNIQUE ,
    PRIMARY KEY (concert_id, seat_id)
);

-- A row in this table indicates a purchase made by a user for a ticket
-- datetime indicates the date and time the ticket was purchased
CREATE TABLE Purchase (
    ticket_id integer PRIMARY KEY references Ticket(ticket_id),
    username varchar(80) NOT NULL references AppUser,
    datetime timestamp NOT NULL
);