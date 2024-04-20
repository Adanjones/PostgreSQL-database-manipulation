SELECT 
    EXTRACT(YEAR FROM fiscal_year) AS fiscal_year,
    COUNT(*) AS grant_count,
    MIN(amount) AS min_amount,
    MAX(amount) AS max_amount
FROM grants
WHERE fiscal_year >= '2016-01-01'  -- Filter grants starting from 2016
GROUP BY fiscal_year
ORDER BY fiscal_year DESC;
