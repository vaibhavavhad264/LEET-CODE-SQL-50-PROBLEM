# Write your MySQL query statement below
# 21/07
SELECT user_id, 
    ROUND(IFNULL(AVG(action = 'confirmed'), 0),2) AS confirmation_rate
FROM Signups s
LEFT JOIN Confirmations c
USING(user_id)
GROUP BY user_id;

