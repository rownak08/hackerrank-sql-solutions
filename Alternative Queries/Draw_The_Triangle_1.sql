WITH RECURSIVE pattern(n) AS (
    SELECT 20
    UNION ALL

    SELECT n-1
    FROM pattern
    WHERE n>1
)
SELECT 
    REPEAT('* ',n) AS roe_pattern
FROM pattern;