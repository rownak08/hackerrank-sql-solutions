WITH RankedNames AS (
    SELECT Name, Occupation,
    ROW_NUMBER() OVER (PARTITION BY Occupation ORDER BY NAME) AS rn 
    FROM OCCUPATIONS
)
SELECT 
MAX(CASE WHEN Occupation='Doctor' THEN NAME END) AS Doctor,
MAX(CASE WHEN Occupation='Professor' THEN NAME END) AS Professor,
MAX(CASE WHEN Occupation='Singer' THEN NAME END) AS Singer,
MAX(CASE WHEN Occupation='Actor' THEN NAME END) AS Actor
FROM RankedNames
GROUP BY rn 
ORDER BY rn;