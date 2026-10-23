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

## Задача 20

Найдите производителей, выпускающих по меньшей мере три различных модели ПК. Вывести: Maker, число моделей ПК.

```sql
SELECT maker, COUNT(model) as count_model
FROM Product 
WHERE type = 'PC'
GROUP BY maker
HAVING count(*) >= 3
```
|maker|count_model|
|-----|-----------|
|  E	|     3     |


## Задача 21

Найдите максимальную цену ПК, выпускаемых каждым производителем, у которого есть модели в таблице PC.
Вывести: maker, максимальная цена.

```sql
SELECT p.maker, MAX(pc.price) as max_price
FROM PC as pc 
JOIN Product as p ON p.model = pc.model
GROUP BY p.maker
```
|maker|max_price|
|-----|---------|
|  A	| 980.0000|
|  B	| 850.0000|
|  E	| 350.0000|

## Задача 22

Для каждого значения скорости ПК, превышающего 600 МГц, определите среднюю цену ПК с такой же скоростью. Вывести: speed, средняя цена.

```sql
SELECT speed, AVG(price) as avg_price
FROM PC
WHERE speed > 600
GROUP BY speed
```
|speed|avg_price|
|-----|---------|
| 750 |	900.0000|
| 800	| 970.0000|
| 900	| 980.0000|




