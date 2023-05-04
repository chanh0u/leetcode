# Write your MySQL query statement below
# 두번째로 큰 값을 추출하는 쿼리.
select max(salary) as SecondHighestSalary from Employee
where salary not in (select max(salary) from Employee)