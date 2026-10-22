
# SELECT — обучающий этап

## Задача 1

Найдите номер модели, скорость и размер жесткого диска для всех ПК стоимостью менее 500 дол. Вывести: model, speed и hd

```sql
SELECT model, speed, hd
FROM PC
WHERE price < 500
```
| model | speed | hd |
|-------|-------|----|
| 1232	|  500	|10.0|  
| 1232	|  450	| 8.0|
| 1232	|  450  |10.0|
| 1260	|  500	|10.0|



## Задача 2

Найдите производителей принтеров. Вывести: maker

```sql
SELECT DISTINCT(maker)
FROM Product
WHERE type = 'Printer';
```
| maker|
|------|
|  A   |
|  D   |
|  E   |


## Задача 3

Найдите номер модели, объем памяти и размеры экранов ноутбуков, цена которых превышает 1000 дол.

```sql
SELECT model, ram, screen
FROM Laptop
WHERE price > 1000
```

|model|	ram	|screen|
|-----|-----|------|
|1750	| 128 |  14  |
|1298	| 64	|  15  |
|1752	| 128	|  14  |

## Задача 4

Найдите все записи таблицы Printer для цветных принтеров.

```sql
SELECT *
FROM Printer
WHERE color = 'y'
```

|code|model|color|type|price|
|----|-----|-----|----|-----|
| 3	 |1434 |  y	 | Jet|290.0|
| 2	 |1433 |  y	 | Jet|270.0|

## Задача 5

Найдите номер модели, скорость и размер жесткого диска ПК, имеющих 12x или 24x CD и цену менее 600 дол.

```sql
SELECT model, speed, hd
FROM PC
WHERE cd IN('12x', '24x') AND price < 600
```
| model | speed | hd |
|-------|-------|----|
| 1232	|  500	|10.0|  
| 1232	|  450	| 8.0|
| 1232	|  450  |10.0|
| 1260	|  500	|10.0|

## Задача 6

Для каждого производителя, выпускающего ноутбуки c объёмом жесткого диска не менее 10 Гбайт, найти скорости таких ноутбуков. Вывод: производитель, скорость.

```sql
SELECT DISTINCT p.maker, l.speed
FROM Product as p
JOIN Laptop as l on l.model = p.model
WHERE p.type = 'Laptop' AND hd >= 10
```
|maker|speed|
|-----|-----|
|  A	| 450 |
|  A	| 600 |
|  A	| 750 |
|  B	| 750 |




