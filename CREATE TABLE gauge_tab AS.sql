CREATE TABLE gauge_tab AS
SELECT
    loan_intent,
    loan_grade,
    person_home_ownership, loan_int_rate 
    FROM creditors
WHERE loan_status = 1