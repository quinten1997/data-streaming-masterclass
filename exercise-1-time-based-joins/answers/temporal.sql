-- Drop table if exists and create orders table
DROP TABLE IF EXISTS orders;
CREATE TABLE orders (
    order_id INT,
    currency VARCHAR(10),
    order_time DATETIME
);

INSERT INTO orders (order_id, currency, order_time) VALUES
(1, 'USD', '2023-06-13 12:00:00'),
(2, 'EUR', '2023-06-13 12:15:00'),
(3, 'GBP', '2023-06-13 12:30:00');

-- Drop table if exists and create currency_rates table
DROP TABLE IF EXISTS currency_rates;
CREATE TABLE currency_rates (
    currency VARCHAR(10),
    rate FLOAT,
    rate_time DATETIME
);

INSERT INTO currency_rates (currency, rate, rate_time) VALUES
('USD', 1.0, '2023-06-13 12:00:00'),
('EUR', 0.85, '2023-06-13 12:00:00'),
('GBP', 0.75, '2023-06-13 12:00:00'),
('USD', 1.0, '2023-06-13 12:15:00'),
('EUR', 0.86, '2023-06-13 12:15:00'),
('GBP', 0.76, '2023-06-13 12:15:00'),
('GBP', 0.86, '2023-06-13 12:30:00');

-- Perform temporal join
SELECT o.order_id, o.currency, o.order_time, cr.rate, cr.rate_time
FROM orders AS o
LEFT JOIN currency_rates AS cr ON o.currency = cr.currency
AND cr.rate_time = o.order_time
ORDER BY cr.rate_time DESC
;
