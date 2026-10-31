CREATE TABLE latest_intent_def AS
WITH intent_def AS (
    SELECT loan_intent,  count(loan_intent) AS Total_people, 
        count(CASE WHEN loan_status = 1 THEN loan_status END) AS People_defaulted, 
        COUNT(CASE WHEN cb_person_default_on_file = 'Y' AND loan_status = 1 THEN loan_status END) AS Default_earlier, 
        COUNT(CASE WHEN cb_person_default_on_file = 'N' AND loan_status = 1 THEN loan_status END) AS First_default,
        loan_grade
    FROM creditors
    GROUP BY loan_intent, loan_grade
),
def_rate AS (
    SELECT * , Round(100*People_defaulted/Total_people,2) AS default_rates,
        Round(100*First_default/Total_people,2) AS First_time_default_rates

    FROM intent_def
    ORDER BY Round(100*People_defaulted/Total_people,2) DESC
)
SELECT * FROM def_rate;