USE subtrack_db;
CREATE TABLE IF NOT EXISTS subscriptions (
    subscription_id INT PRIMARY KEY AUTO_INCREMENT,
    service_name VARCHAR(100) NOT NULL,
    category VARCHAR(50) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    billing_cycle VARCHAR(20) NOT NULL,
    start_date DATE NOT NULL,
    renewal_date DATE,
    status VARCHAR(20) DEFAULT 'Active'
);
SHOW TABLES;
DESCRIBE subscriptions;