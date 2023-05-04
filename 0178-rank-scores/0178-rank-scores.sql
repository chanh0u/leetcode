# Write your MySQL query statement below
# 스코어 순으로 랭킹 내림차순. 점수가 같으면 같은 랭킹. (공동순위 반영)
# ROW_NUMBER () 활용. 결국 행의 개수가 순위의 개수. (1,2,3,4 공동x) 
# 공동순위를 반영 하기 위해서 RANK 함수 사용 (1,1,3 공동o, 다음순위 점프)
# DENSE_RANK 공동순위 다음 이어진 순위 (1,1,2, 공동o, 다음순위 연속)

select score,
    (DENSE_RANK() OVER(ORDER BY score DESC)) AS 'rank'
from Scores