# Write your MySQL query statement below
-- 24/07
SELECT *, IF(
        x > 0 AND y > 0 AND z > 0 
        AND (x+y) > z AND (z+y) > x AND (x+z) > y,
        'Yes',
        'No') AS triangle 
FROM Triangle;