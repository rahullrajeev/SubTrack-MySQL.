USE subtrack_db;

-- Verify final records
SELECT * FROM subscriptions;

-- Verify total subscriptions
SELECT COUNT(*) AS total_subscriptions
FROM subscriptions;

-- Verify active subscriptions
SELECT COUNT(*) AS active_subscriptions
FROM subscriptions
WHERE status = 'Active';

-- Verify cancelled subscriptions
SELECT COUNT(*) AS cancelled_subscriptions
FROM subscriptions
WHERE status = 'Cancelled';