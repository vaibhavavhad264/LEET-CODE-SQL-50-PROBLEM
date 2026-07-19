# Write your MySQL query statement below
# 19/07
SELECT DISTINCT author_id AS id FROM Views
WHERE author_id = viewer_id ORDER BY author_id;