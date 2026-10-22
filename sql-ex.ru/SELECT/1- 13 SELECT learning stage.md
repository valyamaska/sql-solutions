
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

|code|model|color|type| price   |
|----|-----|-----|----|---------|
| 3	 |1434 |  y	 | Jet|290.00000|
| 2	 |1433 |  y	 | Jet|270.00000|

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

## Задача 9

Найдите производителей ПК с процессором не менее 450 Мгц. Вывести: Maker

```sql
SELECT DISTINCT p.maker
FROM Product AS p
JOIN PC AS pc ON p.model = pc.model
WHERE p.type = 'PC' AND pc.speed >= 450
```
|maker|
|-----|
|  A  |
|  B  |
|  E  |

## Задача 10

Найдите модели принтеров, имеющих самую высокую цену. Вывести: model, price

```sql
SELECT model, price
FROM Printer
WHERE price = (SELECT MAX(price) FROM Printer)
```
|model|	price  |
|-----|--------|
|1288	|400.0000|
|1276	|400.0000|

## Задача 11

Найдите среднюю скорость ПК.

```sql
SELECT AVG(speed) as avg_speed
FROM PC
```
|avg_speed|
|---------|
|  608    |

## Задача 12

Найдите среднюю скорость ноутбуков, цена которых превышает 1000 дол.

```sql
SELECT AVG(speed) as avg_speed
FROM Laptop
WHERE price > 1000
```
|avg_speed|
|---------|
|   700   |

