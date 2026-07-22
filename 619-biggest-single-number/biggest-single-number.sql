# Write your MySQL query statement below
-- 23/07
SELECT MAX(num) AS num
FROM MyNumbers
WHERE num IN (SELECT num FROM MyNumbers GROUP BY num HAVING count(*) = 1);
