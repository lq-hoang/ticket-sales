SET SEARCH_PATH TO ticketchema;

INSERT INTO Owner(owner_id, owner_name) VALUES
	(111111111, 'The Corporation of Massey Hall and Roy Thomson Hall'),
	(222222222, 'Maple Leaf Sports & Entertainment');

INSERT INTO AppUser(username) VALUES
	('ahightower'), ('d_targaryen'), ('cristonc');

INSERT INTO Venue(venue_id, venue_name, city, address, owner_id) VALUES
	(1, 'Massey Hall', 'Toronto', '178 Victoria Street', 111111111),
	(2, 'Roy Thomson Hall', 'Toronto', '60 Simcoe St', 111111111),
	(3, 'ScotiaBank Arena', 'Toronto', '40 Bay St', 222222222);

INSERT INTO Concert(datetime, venue_id, concert_name, concert_id) VALUES
    ('2022-12-03 19:30', 1, 'Ron Sexsmith', 11),
    ('2022-11-25 20:00', 1, 'Women''s Blues Review', 12),
    ('2022-12-09 20:00', 3, 'Mariah Carey - Merry Christmas to all', 13),
    ('2022-12-11 20:00', 3, 'Mariah Carey - Merry Christmas to all', 14),
    ('2022-12-09 19:30', 2, 'TSO - Elf in Concert', 15),
    ('2022-12-10 14:30', 2, 'TSO - Elf in Concert', 16),
    ('2022-12-10 19:30', 2, 'TSO - Elf in Concert', 17);

INSERT INTO Section(section_name, venue_id, section_id) VALUES
    ('floor', 1, 21),
    ('balcony', 1, 22),
    ('main hall', 2, 23),
    ('100', 3, 24),
    ('200', 3, 25),
    ('300', 3, 26);

INSERT INTO Seat(identifier, section_id, accessible, seat_id) VALUES
    ('A1', 21, True, 1), ('A2', 21, True, 2), ('A3', 21, True, 3),
    ('A4', 21, False, 4), ('A5', 21, False, 5), ('A6', 21, False, 6),
    ('A7', 21, False, 7), ('A8', 21, True, 8), ('A9', 21, True, 9),
    ('A10', 21, True, 10), ('C1', 22, False, 11), ('C2', 22, False, 12),
    ('C3', 22, False, 13), ('C4', 22, False, 14), ('C5', 22, False, 15),
    ('AA1', 23, False, 16), ('AA2', 23, False, 17), ('AA3', 23, False, 18),
    ('BB1', 23, False, 19), ('BB2', 23, False, 20), ('BB3', 23, False, 21),
    ('BB4', 23, False, 22), ('BB5', 23, False, 23), ('BB6', 23, False, 24),
    ('BB7', 23, False, 25), ('BB8', 23, False, 26), ('CC1', 23, False, 27),
    ('CC2', 23, False, 28), ('CC3', 23, False, 29), ('CC4', 23, False, 30),
    ('CC5', 23, False, 31), ('CC6', 23, False, 32), ('CC7', 23, False, 33),
    ('CC8', 23, False, 34), ('CC9', 23, False, 35), ('CC10', 23, False, 36),
    ('row 1, seat 1', 24, True, 37), ('row 1, seat 2', 24, True, 38),
    ('row 1, seat 3', 24, True, 39), ('row 1, seat 4', 24, True, 40),
    ('row 1, seat 5', 24, True, 41), ('row 2, seat 1', 24, True, 42),
    ('row 2, seat 2', 24, True, 43), ('row 2, seat 3', 24, True, 44),
    ('row 2, seat 4', 24, True, 45), ('row 2, seat 5', 24, True, 46),
    ('row 1, seat 1', 25, False, 47), ('row 1, seat 2', 25, False, 48),
    ('row 1, seat 3', 25, False, 49), ('row 1, seat 4', 25, False, 50),
    ('row 1, seat 5', 25, False, 51), ('row 2, seat 1', 25, False, 52),
    ('row 2, seat 2', 25, False, 53), ('row 2, seat 3', 25, False, 54),
    ('row 2, seat 4', 25, False, 55), ('row 2, seat 5', 25, False, 56),
    ('row 1, seat 1', 26, False, 57), ('row 1, seat 2', 26, False, 58),
    ('row 1, seat 3', 26, False, 59), ('row 1, seat 4', 26, False, 60),
    ('row 1, seat 5', 26, False, 61), ('row 2, seat 1', 26, False, 62),
    ('row 2, seat 2', 26, False, 63), ('row 2, seat 3', 26, False, 64),
    ('row 2, seat 4', 26, False, 65), ('row 2, seat 5', 26, False, 66),
    ('B1', 21, False, 67), ('B2', 21, False, 68), ('B3', 21, False, 69),
    ('B4', 21, False, 70), ('B5', 21, False, 71), ('B6', 21, False, 72),
    ('B7', 21, False, 73), ('B8', 21, False, 74), ('B9', 21, False, 75),
    ('B10', 21, False, 76);

INSERT INTO Ticket(concert_id, seat_id, price, ticket_id) VALUES
    (11, 1, 130, 1), (11, 2, 130, 2), (11, 3, 130, 3),
    (11, 4, 130, 4), (11, 5, 130, 5), (11, 6, 130, 6),
    (11, 7, 130, 7), (11, 8, 130, 8), (11, 9, 130, 9),
    (11, 10, 130, 10), (11, 11, 99, 11), (11, 12, 99, 12),
    (11, 13, 99, 13), (11, 14, 99, 14), (11, 15, 99, 15),
    (12, 1, 150, 16), (12, 2, 150, 17), (12, 3, 150, 18),
    (12, 4, 150, 19), (12, 5, 150, 20), (12, 6, 150, 21),
    (12, 7, 150, 22), (12, 8, 150, 23), (12, 9, 150, 24),
    (12, 10, 150, 25), (12, 11, 125, 26), (12, 12, 125, 27),
    (12, 13, 125, 28), (12, 14, 125, 29), (12, 15, 125, 30),
    (13, 37, 986, 31), (13, 38, 986, 32),
    (13, 39, 986, 33), (13, 40, 986, 34),
    (13, 41, 986, 35), (13, 42, 986, 36),
    (13, 43, 986, 37), (13, 44, 986, 38),
    (13, 45, 986, 39), (13, 46, 986, 40),
    (13, 47, 244, 41), (13, 48, 244, 42),
    (13, 49, 244, 43), (13, 50, 244, 44),
    (13, 51, 244, 45), (13, 52, 244, 46),
    (13, 53, 244, 47), (13, 54, 244, 48),
    (13, 55, 244, 49), (13, 56, 244, 50),
    (13, 57, 176, 51), (13, 58, 176, 52),
    (13, 59, 176, 53), (13, 60, 176, 54),
    (13, 61, 176, 55), (13, 62, 176, 56),
    (13, 63, 176, 57), (13, 64, 176, 58),
    (13, 65, 176, 59), (13, 66, 176, 60),
    (14, 37, 936, 61), (14, 38, 936, 62),
    (14, 39, 936, 63), (14, 40, 936, 64),
    (14, 41, 936, 65), (14, 42, 936, 66),
    (14, 43, 936, 67), (14, 44, 936, 68),
    (14, 45, 936, 69), (14, 46, 936, 70),
    (14, 47, 194, 71), (14, 48, 194, 72),
    (14, 49, 194, 73), (14, 50, 194, 74),
    (14, 51, 194, 75), (14, 52, 194, 76),
    (14, 53, 194, 77), (14, 54, 194, 78),
    (14, 55, 194, 79), (14, 56, 194, 80),
    (14, 57, 126, 81), (14, 58, 126, 82),
    (14, 59, 126, 83), (14, 60, 126, 84),
    (14, 61, 126, 85), (14, 62, 126, 86),
    (14, 63, 126, 87), (14, 64, 126, 88),
    (14, 65, 126, 89), (14, 66, 126, 90),
    (15, 16, 159, 91), (15, 17, 159, 92), (15, 18, 159, 93),
    (15, 19, 159, 94), (15, 20, 159, 95), (15, 21, 159, 96),
    (15, 22, 159, 97), (15, 23, 159, 98), (15, 24, 159, 99),
    (15, 25, 159, 100), (15, 26, 159, 101), (15, 27, 159, 102),
    (15, 28, 159, 103), (15, 29, 159, 104), (15, 30, 159, 105),
    (15, 31, 159, 106), (15, 32, 159, 107), (15, 33, 159, 108),
    (15, 34, 159, 109), (15, 35, 159, 110), (15, 36, 159, 111),
    (16, 16, 159, 112), (16, 17, 159, 113), (16, 18, 159, 114),
    (16, 19, 159, 115), (16, 20, 159, 116), (16, 21, 159, 117),
    (16, 22, 159, 118), (16, 23, 159, 119), (16, 24, 159, 120),
    (16, 25, 159, 121), (16, 26, 159, 122), (16, 27, 159, 123),
    (16, 28, 159, 124), (16, 29, 159, 125), (16, 30, 159, 126),
    (16, 31, 159, 127), (16, 32, 159, 128), (16, 33, 159, 129),
    (16, 34, 159, 130), (16, 35, 159, 131), (16, 36, 159, 132),
    (17, 16, 159, 133), (17, 17, 159, 134), (17, 18, 159, 135),
    (17, 19, 159, 136), (17, 20, 159, 137), (17, 21, 159, 138),
    (17, 22, 159, 139), (17, 23, 159, 140), (17, 24, 159, 141),
    (17, 25, 159, 142), (17, 26, 159, 143), (17, 27, 159, 144),
    (17, 28, 159, 145), (17, 29, 159, 146), (17, 30, 159, 147),
    (17, 31, 159, 148), (17, 32, 159, 149), (17, 33, 159, 150),
    (17, 34, 159, 151), (17, 35, 159, 152), (17, 36, 159, 153),

     (11, 67, 130, 154), (11, 68, 130, 155), (11, 69, 130, 156),
    (11, 70, 130, 157), (11, 71, 130, 158), (11, 72, 130, 159),
    (11, 73, 130, 160), (11, 74, 130, 161), (11, 75, 130, 162),
    (11, 76, 130, 163),

     (12, 67, 150, 164), (12, 68, 150, 165), (12,69, 150, 166),
    (12, 70, 150, 167), (12, 71, 150, 168), (12,72, 150, 169),
    (12, 73, 150, 170), (12, 74, 150, 171), (12, 75, 150, 172),
    (12, 76, 150, 173);

INSERT INTO Purchase(ticket_id, username, datetime) VALUES
    (20, 'ahightower', '2022-10-25 19:30'), (27, 'ahightower', '2022-10-25 19:30'),
    (156, 'd_targaryen', '2022-11-05 9:30'), (142, 'd_targaryen', '2022-11-05 9:30'),
    (33, 'cristonc', '2022-11-01 5:57'), (78, 'cristonc', '2022-11-01 5:57'),
    (79, 'cristonc', '2022-11-01 5:57');
