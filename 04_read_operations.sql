USE subtrack_db;

-- View all subscriptions
SELECT * FROM subscriptions;

-- View active subscriptions
SELECT * FROM subscriptions
WHERE status = 'Active';

-- View cancelled subscriptions
SELECT * FROM subscriptions
WHERE status = 'Cancelled';

-- View monthly subscriptions
SELECT * FROM subscriptions
WHERE billing_cycle = 'Monthly';

-- Sort subscriptions by highest price
SELECT * FROM subscriptions
ORDER BY price DESC;

-- Search for Netflix
SELECT * FROM subscriptions
WHERE service_name = 'Netflix';

-- View specific columns
SELECT service_name, price, status
FROM subscriptions;