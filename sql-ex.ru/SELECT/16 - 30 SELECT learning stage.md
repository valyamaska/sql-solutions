## Задача 19

Для каждого производителя, имеющего модели в таблице Laptop, найдите средний размер экрана выпускаемых им ноутбуков.
Вывести: maker, средний размер экрана.

```sql
SELECT P.maker, AVG(L.screen) as avg_screen
FROM Laptop as L
JOIN Product as P ON L.model = P.model
GROUP BY P.maker
```
|maker|avg_screen|
|-----|----------|
|  A	|    13    |
|  B	|    14    |
|  C	|    12    |



