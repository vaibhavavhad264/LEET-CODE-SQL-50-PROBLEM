# Write your MySQL query statement below
-- 25/07
SELECT p.product_name, SUM(o.unit) AS unit
FROM Products p 
JOIN Orders o
ON o.product_id=p.product_id
WHERE o.order_date like '2020-02-%'
GROUP BY o.product_id
HAVING unit>=100; 