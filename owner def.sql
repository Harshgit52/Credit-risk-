WITH own_def AS (
    SELECT person_home_ownership,  count(*) AS Total_people, 
        count(CASE WHEN loan_status = 1 THEN loan_status END) AS People_defaulted, 
        COUNT(CASE WHEN cb_person_default_on_file = 'Y' AND loan_status = 1 THEN loan_status END) AS Default_earlier, 
        COUNT(CASE WHEN cb_person_default_on_file = 'N' AND loan_status = 1 THEN loan_status END) AS First_default
    FROM creditors
    GROUP BY person_home_ownership
),
own_def_rt AS (
    SELECT *,
        Round(100*People_defaulted/Total_people,2) AS default_rates
    FROM own_def
    ORDER BY Round(100*People_defaulted/Total_people,2) DESC
)
SELECT * FROM own_def_rt