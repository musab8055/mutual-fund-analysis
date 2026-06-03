
-- Top 5 Funds by AUM
SELECT * FROM fact_aum
ORDER BY aum DESC
LIMIT 5;

-- Average NAV
SELECT AVG(nav)
FROM fact_nav;

-- Transaction Count by Type
SELECT transaction_type,
COUNT(*)
FROM fact_transactions
GROUP BY transaction_type;

-- Expense Ratio < 1%
SELECT *
FROM fact_performance
WHERE expense_ratio < 1;

-- Top 10 Performing Funds
SELECT *
FROM fact_performance
ORDER BY return_1y DESC
LIMIT 10;

-- Category Wise Returns
SELECT category,
AVG(return_1y)
FROM fact_performance p
JOIN dim_fund f
ON p.amfi_code=f.amfi_code
GROUP BY category;

-- Monthly NAV Trend
SELECT date,
AVG(nav)
FROM fact_nav
GROUP BY date;

-- Total SIP Amount
SELECT SUM(amount)
FROM fact_transactions
WHERE transaction_type='SIP';

-- Redemption Amount
SELECT SUM(amount)
FROM fact_transactions
WHERE transaction_type='Redemption';

-- Fund Count by Category
SELECT category,
COUNT(*)
FROM dim_fund
GROUP BY category;
