# Write your MySQL query statement below
# 21/07
SELECT query_name, 
    IFNULL(ROUND(AVG(rating/position), 2), 0) AS quality, 
    ROUND(SUM(CASE WHEN rating < 3 THEN 1 ELSE 0 END) / COUNT(*) * 100, 2) AS poor_query_percentage
FROM Queries
GROUP BY query_name;