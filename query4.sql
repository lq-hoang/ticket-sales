SET SEARCH_PATH TO ticketchema;

DROP VIEW IF EXISTS CountPurchase CASCADE;

-- Table providing the total number of tickets each user bought
CREATE VIEW CountPurchase AS
    SELECT count(ticket_id) AS numPurchase, username
    FROM Purchase
    GROUP BY username;

SELECT username
FROM CountPurchase
WHERE numPurchase IS NOT DISTINCT FROM
    (SELECT MAX(numPurchase) FROM CountPurchase);