
# SELECT — обучающий этап


## Задача 2

**Условие:** Найдите производителей принтеров. Вывести: maker

**Решение:**

```sql
SELECT DISTINCT(maker)
FROM Product
WHERE type = 'Printer'
);
```
