-- Задача: 176. Second Highest Salary
-- Уровень: Medium
-- Сылка: https://leetcode.com/problems/second-highest-salary/description/?search=sql
-- Идея: Нам нужно найти вторую по величине зарплату. Подзапрос в WHERE находит максимальную
-- зарплату после чего мы оставляем только меньшие, а внешний MAX берёт самую большую из них.
-- Если второй зарплаты нет, MAX вернёт NULL.

SELECT MAX(salary) AS SecondHighestSalary
FROM Employee
WHERE salary < (SELECT MAX(salary) FROM Employee)
