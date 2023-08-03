CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    age INTEGER,
    active BOOLEAN DEFAULT true,
    last_login_date DATE
);

CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users(user_id),
    order_date DATE,
    total_amount NUMERIC(10, 2)
);
