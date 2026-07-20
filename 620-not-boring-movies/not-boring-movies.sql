# Write your MySQL query statement below
# 21/07
SELECT * 
FROM Cinema 
WHERE (id%2 != 0) AND (description != 'boring')
ORDER BY rating DESC;