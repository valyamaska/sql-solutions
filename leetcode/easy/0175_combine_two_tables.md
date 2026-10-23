 Задача: Combine Two Tables (LeetCode 175) 
 Ссылка: https://leetcode.com/problems/combine-two-tables/
 Сложность: Easy
 Идея: Нам нужны все люди из Person, даже те кто без адреса. LEFT JOIN оставляет все строки Person, а для тех, у кого нет адреса, city и state будут NULL

 Задача: Write a solution to report the first name, last name, city, and state 
 of each person in the Person table. If the address of a personId is not present in the Address table, 
 report null instead. Return the result table in any order.

 Решение:
```sql
SELECT p.firstName, p.lastName, a.city, a.state
FROM Person as p
left join Address as a on a.personId = p.personId
```
