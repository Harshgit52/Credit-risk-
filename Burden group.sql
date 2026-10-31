CREATE TABLE income_percnt_defalt AS
SELECT
    CASE
        WHEN loan_percent_income < 10 THEN '<10%'
        WHEN loan_percent_income < 20 THEN '10%-20%'
        WHEN loan_percent_income < 20 THEN '20%-30%'
        ELSE '>30%'
    END AS burden_group,
    COUNT(*) total_people,
    SUM(loan_status=1) defaults,
    ROUND(100 * SUM(loan_status=1)/COUNT(*),2) default_rate
FROM creditors
GROUP BY burden_group;