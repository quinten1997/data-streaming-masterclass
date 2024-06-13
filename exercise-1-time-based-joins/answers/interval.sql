-- Drop table if exists and create clicks table
DROP TABLE IF EXISTS clicks;
CREATE TABLE clicks (
    user_id INT,
    product_id INT,
    datetime_occurred DATETIME
);

INSERT INTO clicks (user_id, product_id, datetime_occurred) VALUES
INSERT INTO clicks (user_id, product_id, datetime_occurred) VALUES
(1, 101, '2023-06-13 10:00:00')
(1, 101, '2023-06-13 12:00:00'),
(2, 102, '2023-06-13 11:15:00'),
(2, 102, '2023-06-13 12:15:00'),
(2, 102, '2023-06-13 12:16:00'),
(3, 103, '2023-06-13 12:30:00');

-- Drop table if exists and create checkouts table
DROP TABLE IF EXISTS checkouts;
CREATE TABLE checkouts (
    user_id INT,
    product_id INT,
    datetime_occurred DATETIME
);

INSERT INTO checkouts (user_id, product_id, datetime_occurred) VALUES
(1, 101, '2023-06-13 12:30:00'),
(2, 102, '2023-06-13 13:00:00'),
(3, 103, '2023-06-13 14:30:00');

-- Perform interval join use
SELECT co.user_id, co.product_id, co.datetime_occurred AS checkout_time, cl.datetime_occurred AS click_time
FROM checkouts AS co
JOIN clicks AS cl ON co.user_id = cl.user_id
AND co.product_id = cl.product_id
AND co.datetime_occurred BETWEEN cl.datetime_occurred AND DATETIME(cl.datetime_occurred, '+1 hour');
