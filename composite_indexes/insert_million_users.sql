-- Generate one million users
INSERT INTO users (username, email, age, last_login_date)
SELECT
    'user_' || id,
    'user_' || id || '@example.com',
    FLOOR(RANDOM() * 100) + 18,
    CURRENT_DATE - (FLOOR(RANDOM() * 3650) || ' days')::INTERVAL
FROM generate_series(1, 1000000) AS id;

-- Generate related orders for each user
INSERT INTO orders (user_id, order_date, total_amount)
SELECT
    user_id,
    CURRENT_DATE - (FLOOR(RANDOM() * 365) || ' days')::INTERVAL,
    FLOOR(RANDOM() * 1000 + 100)
FROM users;
