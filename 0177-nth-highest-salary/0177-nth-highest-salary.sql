# ★★★★★
# n번째로 큰 급여를 출력하는 쿼리.
# 1. 급여를 내림차순으로 정렬.
# 2. 입력받은 N값의 row를 출력.
# 3. ROW_NUMBER() OVER(ODER BY [컬럼명] ASC|DESC)
# 4. WHERE 조건 행번호 = N

CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
      # Write your MySQL query statement below.
      
      SELECT salary as getNthHighestSalary
        FROM
            (
            SELECT ROW_NUMBER() OVER( ORDER BY salary DESC ) as rn, salary
             FROM
                (
                SELECT DISTINCT salary
                    FROM Employee
                ORDER BY salary DESC
                )Employee
            )Employee
      WHERE rn = N
  );
END