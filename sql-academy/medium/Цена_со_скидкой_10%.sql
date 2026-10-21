-- Задача: Сделать цену со скидкой 10% для определенных товаров
-- Сложность: Medium
-- Идея: Здесь у нас цена зависит от цсловия поэтому мы используем CASE WHEN, если комната имеет телевизор и интернет одновременно, то применяем скидку 10%, если нет то оставляем прежнею

SELECT id, home_type, (CASE 
                        WHEN has_internet = TRUE and has_tv = TRUE THEN (price * 0.9) 
                        ELSE price 
                       END) as price
FROM Rooms
