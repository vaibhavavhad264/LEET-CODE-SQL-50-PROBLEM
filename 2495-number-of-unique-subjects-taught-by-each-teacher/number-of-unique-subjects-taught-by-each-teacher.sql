# Write your MySQL query statement below
# 23/07
SELECT teacher_id, count(DISTINCT subject_id) AS cnt FROM Teacher GROUP BY Teacher_id;