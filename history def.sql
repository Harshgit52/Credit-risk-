CREATE TABLE new_default_history AS
WITH def_his AS(
SELECT loan_grade,
    CASE WHEN cb_person_default_on_file = 'N' THEN 'No Previous defaults'
    WHEN cb_person_default_on_file = 'Y' THEN 'Previously default'
    ELSE 'none'
    END AS 'Default history',
    COUNT(CASE WHEN loan_status = 0 THEN loan_status END) AS Paid_in_full,
    COUNT (CASE WHEN loan_status = 1 THEN loan_status END) AS Defaulted
FROM creditors
GROUP BY cb_person_default_on_file, loan_grade
)
SELECT * , round(100*Defaulted/29463,2) AS default_rates
FROM def_his