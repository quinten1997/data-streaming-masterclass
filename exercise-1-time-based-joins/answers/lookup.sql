-- Drop table if exists and create checkouts table
DROP TABLE IF EXISTS checkouts;
CREATE TABLE checkouts (
    user_id INT,
    product_id INT,
    processing_time DATETIME
);

INSERT INTO checkouts (user_id, product_id, processing_time) VALUES
(1, 101, '2023-06-13 12:00:00'),
(2, 102, '2023-06-13 12:15:00'),
(3, 103, '2023-06-13 12:30:00');

-- Drop table if exists and create users table
DROP TABLE IF EXISTS users;
CREATE TABLE users (
    id INT,
    name VARCHAR(100)
);

INSERT INTO users (id, name) VALUES
(1, 'Alice'),
(2, 'Bob'),
(3, 'Charlie'),
(4, 'John');

-- Perform lookup join
SELECT co.user_id, co.product_id, co.processing_time, u.name
FROM checkouts AS co
JOIN users AS u ON co.user_id = u.id;
