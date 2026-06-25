-- 1. Top 5 fund houses by AUM
SELECT fund_house, aum_crore
FROM fact_aum
ORDER BY aum_crore DESC
LIMIT 5;

-- 2. Average NAV by month
SELECT
strftime('%Y-%m', date) AS month,
AVG(nav) AS avg_nav
FROM fact_nav
GROUP BY month
ORDER BY month;

-- 3. Total SIP amount
SELECT
SUM(amount_inr) AS total_sip_amount
FROM fact_transactions
WHERE transaction_type = 'SIP';

-- 4. Transactions by state
SELECT
state,
COUNT(*) AS transaction_count
FROM fact_transactions
GROUP BY state
ORDER BY transaction_count DESC;

-- 5. Funds with expense ratio less than 1%
SELECT
scheme_name,
expense_ratio_pct
FROM fact_performance
WHERE expense_ratio_pct < 1;

-- 6. Average return by category
SELECT
category,
AVG(return_1yr_pct) AS avg_return_1yr
FROM fact_performance
GROUP BY category;

-- 7. Average transaction amount by transaction type
SELECT
transaction_type,
AVG(amount_inr) AS avg_amount
FROM fact_transactions
GROUP BY transaction_type;

-- 8. Top 5 schemes by 5-year return
SELECT
scheme_name,
return_5yr_pct
FROM fact_performance
ORDER BY return_5yr_pct DESC
LIMIT 5;

-- 9. Investor count by city tier
SELECT
city_tier,
COUNT(DISTINCT investor_id) AS investor_count
FROM fact_transactions
GROUP BY city_tier;

-- 10. Average AUM by fund house
SELECT
fund_house,
AVG(aum_crore) AS avg_aum
FROM fact_aum
GROUP BY fund_house
ORDER BY avg_aum DESC;
