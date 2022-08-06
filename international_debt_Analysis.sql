-- 2
SELECT 
    COUNT(DISTINCT country_name) AS total_distinct_countries
FROM international_debt;

-- 3
SELECT 
    DISTINCT indicator_code AS distinct_debt_indicators
FROM international_debt;

-- 4
SELECT 
    SUM(debt) AS total_debt
FROM international_debt;

-- 5
SELECT 
    country_name, 
    SUM (debt) AS total_debt
FROM international_debt
GROUP BY country_name
ORDER BY total_debt DESC
LIMIT 1;

-- 6
SELECT 
    indicator_code AS debt_indicator,
    indicator_name,
    AVG (debt) AS average_debt
FROM international_debt
GROUP BY debt_indicator,indicator_name
ORDER BY average_debt DESC
LIMIT 10;