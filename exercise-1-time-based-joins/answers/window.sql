-- Drop table if exists and create stream1 table
DROP TABLE IF EXISTS stream1;
CREATE TABLE stream1 (
    id INT,
    value1 INT,
    event_time DATETIME
);

INSERT INTO stream1 (id, value1, event_time) VALUES
(1, 10, '2023-06-13 12:00:00'),
(2, 20, '2023-06-13 12:05:00'),
(3, 30, '2023-06-13 12:10:00');

-- Drop table if exists and create stream2 table
DROP TABLE IF EXISTS stream2;
CREATE TABLE stream2 (
    id INT,
    value2 INT,
    event_time DATETIME
);

INSERT INTO stream2 (id, value2, event_time) VALUES
(1, 100, '2023-06-13 12:02:00'),
(2, 200, '2023-06-13 12:07:00'),
(3, 300, '2023-06-13 14:12:00');

-- Perform window join
SELECT s1.id, s1.value1, s2.value2, s1.event_time AS time1, s2.event_time AS time2
FROM stream1 AS s1
JOIN stream2 AS s2 ON s1.id = s2.id
AND s1.event_time BETWEEN DATETIME(s2.event_time, '-5 minutes') AND DATETIME(s2.event_time, '+5 minutes');
