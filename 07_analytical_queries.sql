USE subtrack_db;
-- Total number of subscriptions
SELECT COUNT(*) AS total_subscriptions
FROM subscriptions;

-- Count subscriptions by status
SELECT status, COUNT(*) AS total
FROM subscriptions
GROUP BY status;

-- Calculate monthly equivalent expenses
SELECT ROUND(SUM(
    CASE
        WHEN billing_cycle = 'Monthly' THEN price
        WHEN billing_cycle = 'Yearly' THEN price / 12
    END
), 2) AS monthly_expense
FROM subscriptions
WHERE status = 'Active';

-- Calculate estimated annual expenses
SELECT SUM(
    CASE
        WHEN billing_cycle = 'Monthly' THEN price * 12
        WHEN billing_cycle = 'Yearly' THEN price
    END
) AS annual_expense
FROM subscriptions
WHERE status = 'Active';

-- Find the most expensive subscription
SELECT service_name, price, billing_cycle
FROM subscriptions
WHERE status = 'Active'
ORDER BY price DESC
LIMIT 1;

-- Count subscriptions by category
SELECT category, COUNT(*) AS total
FROM subscriptions
GROUP BY category;

-- View upcoming renewals within 30 days
SELECT service_name, price, renewal_date
FROM subscriptions
WHERE status = 'Active'
AND renewal_date BETWEEN CURDATE()
AND DATE_ADD(CURDATE(), INTERVAL 30 DAY)
ORDER BY renewal_date ASC;

-- Calculate remaining days until renewal
SELECT service_name, renewal_date,
DATEDIFF(renewal_date, CURDATE()) AS days_remaining
FROM subscriptions
WHERE status = 'Active'
AND renewal_date IS NOT NULL
ORDER BY days_remaining ASC;