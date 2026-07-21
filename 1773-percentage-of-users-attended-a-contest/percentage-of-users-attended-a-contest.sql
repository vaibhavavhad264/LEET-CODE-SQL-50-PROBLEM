# Write your MySQL query statement below
# 21/07
SELECT contest_id, IFNULL(ROUND(COUNT(DISTINCT user_id) * 100 / (SELECT count(user_id) FROM Users),2 ), 0) AS percentage
FROM Users u
JOIN Register r
USING(user_id)
GROUP BY contest_id
ORDER BY percentage DESC, contest_id;