# Write your MySQL query statement below

# 21/07
SELECT project_id, IFNULL(ROUND(SUM(experience_years) / count(employee_id), 2), 0) AS average_years
FROM Project p
JOIN Employee e
USING(employee_id)
GROUP BY project_id;

