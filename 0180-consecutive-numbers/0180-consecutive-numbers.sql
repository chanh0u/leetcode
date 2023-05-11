# Write your MySQL query statement below
# 연속 되는 값 찾는 SQL
# 자신의 테이블을 셀프 조인하여 id와 num을 이용하여 select
SELECT DISTINCT L1.num  AS  ConsecutiveNums
FROM (logs L1 JOIN logs L2 ON L1.num  = L2.num  AND L1.id = L2.id-1)
JOIN logs L3 ON L1.num  = L3.num  AND L2.id = L3.id-1;