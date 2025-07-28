SELECT CONCAT(NAME, CONCAT('(',CONCAT(SUBSTR(Occupation,1,1),')')))
FROM OCCUPATIONS
ORDER BY NAME ASC;

SELECT CONCAT('There are a total of ', COUNT(*), ' ', LOWER(Occupation), 's.')
FROM OCCUPATIONS
GROUP BY Occupation
ORDER BY COUNT(*), Occupation ASC;