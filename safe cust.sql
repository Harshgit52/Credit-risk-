CREATE TABLE safe_customer AS
SELECT  
    CASE WHEN person_income < 80000 THEN 'upto 80k'
        WHEN person_income BETWEEN 80000 AND 150000 THEN '80k to 1.5L'
        WHEN person_income BETWEEN 150000 AND 300000 THEN '1.5L to 3L'
        WHEN person_income BETWEEN 300000 AND 500000 THEN '3L to 5L'
        ELSE 'above 5L'
        END AS Income_group,
        loan_grade, person_home_ownership,
    COUNT(loan_status) AS Paid_loan,
    round(100*COUNT(loan_status)/29463,2) AS Recovery_rate
FROM creditors
WHERE loan_status = 0
GROUP BY Income_group, loan_grade, person_home_ownership