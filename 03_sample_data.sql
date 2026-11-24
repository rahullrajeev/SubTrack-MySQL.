USE subtrack_db;

INSERT INTO subscriptions
(service_name, category, price, billing_cycle, start_date, renewal_date, status)
VALUES
('Netflix', 'Entertainment', 499.00, 'Monthly', '2026-11-01', '2026-12-01', 'Active'),
('Spotify', 'Music', 119.00, 'Monthly', '2026-11-05', '2026-12-05', 'Active'),
('Amazon Prime', 'Entertainment', 1499.00, 'Yearly', '2026-11-10', '2027-11-10', 'Active'),
('YouTube Premium', 'Entertainment', 149.00, 'Monthly', '2026-11-15', '2026-12-15', 'Active'),
('iCloud+', 'Storage', 79.00, 'Monthly', '2026-11-20', '2026-12-20', 'Active'),
('Canva Pro', 'Productivity', 499.00, 'Monthly', '2026-10-01', NULL, 'Cancelled');
SELECT * FROM subscriptions;