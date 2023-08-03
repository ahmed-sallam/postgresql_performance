-- Q1 Find users with ages between 25 and 35
SELECT * FROM users WHERE age BETWEEN 25 AND 35;

-- Q2 find active users
SELECT * FROM users WHERE active = true;

-- Q3 Find users with ages between 25 and 35
SELECT * FROM users WHERE active = true AND age BETWEEN 25 AND 35;

