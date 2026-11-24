USE subtrack_db;

-- Delete Canva Pro subscription
DELETE FROM subscriptions
WHERE subscription_id = 6;

-- Verify remaining records
SELECT * FROM subscriptions;