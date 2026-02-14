SQL practice
-- 1. Total transactions per customer
SELECT customer_id, COUNT(*) AS total_transactions
FROM transactions
GROUP BY customer_id;

-- 2. Average loan amount by loan grade
SELECT loan_grade, AVG(loan_amount) AS avg_loan
FROM loans
GROUP BY loan_grade;

-- 3. Default rate calculation
SELECT COUNT(CASE WHEN loan_status = 'Default' THEN 1 END) * 100.0 / COUNT(*) AS default_rate
FROM loans;

-- 4. Customers with loan amount above 500000
SELECT customer_id, loan_amount
FROM loans
WHERE loan_amount > 500000;

-- 5. Top 5 customers by transaction amount
SELECT customer_id, SUM(transaction_amount) AS total_amount
FROM transactions
GROUP BY customer_id
ORDER BY total_amount DESC
LIMIT 5;
