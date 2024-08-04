SELECT
    MIN(CASE WHEN Occupation = 'Doctor' THEN Name END) AS Doctor,
    MIN(CASE WHEN Occupation = 'Professor' THEN Name END) AS Professor,
    MIN(CASE WHEN Occupation = 'Singer' THEN Name END) AS Singer,
    MIN(CASE WHEN Occupation = 'Actor' THEN Name END) AS Actor
    
FROM (
    SELECT *, ROW_NUMBER() OVER(PARTITION BY Occupation ORDER BY Name) AS ID
    FROM OCCUPATIONS
) AS KEYED_OCCUPATIONS

GROUP BY ID;