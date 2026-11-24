USE subtrack_db;

-- Update Netflix subscription price
UPDATE subscriptions
SET price = 599.00
WHERE subscription_id = 1;

-- Cancel Spotify subscription
UPDATE subscriptions
SET status = 'Cancelled',
    renewal_date = NULL
WHERE subscription_id = 2;

-- Update YouTube Premium renewal date
UPDATE subscriptions
SET renewal_date = '2027-01-15'
WHERE subscription_id = 4;

-- Verify updated records
SELECT * FROM subscriptions;