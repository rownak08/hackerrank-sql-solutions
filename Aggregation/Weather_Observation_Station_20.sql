WITH ordered AS (
    SELECT 
        LAT_N,
        ROW_NUMBER() OVER (ORDER BY LAT_N) AS rn,
        COUNT(*) OVER () AS total_rows
    FROM STATION
)
SELECT ROUND(AVG(LAT_N), 4) AS Median_Latitude
FROM ordered
WHERE rn IN (
    FLOOR((total_rows + 1) / 2),
    CEIL((total_rows + 1) / 2)
);
