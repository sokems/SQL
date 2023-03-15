**1 Создайте таблицу с мобильными телефонами, используя графический интерфейс.**

![Таблица](/create.jpg)

**2 Выведите название, производителя и цену для товаров, количество которых превышает 2**

USE mobile;

SELECT model, brand, price FROM mobile.phone WHERE count > 2;

**3 Выведите весь ассортимент товаров марки “Samsung”**

SELECT * FROM mobile.phone WHERE brand = 'Samsung';

**4 Выведите информацию о телефонах, где суммарный чек больше 100 000 и меньше 145 000**

SELECT * FROM mobile.phone WHERE price * count > 100000 AND price * count < 145000;

**4.1 С помощью регулярных выражений найти товары, в которых есть упоминание "iPhone"**

SELECT * FROM mobile.phone WHERE model LIKE 'iPhone%';

**4.2 С помощью регулярных выражений найти товары, в которых есть упоминание "Galaxy"**

SELECT * FROM mobile.phone WHERE model LIKE 'Galaxy%';

**4.4 С помощью регулярных выражений найти товары, в которых есть ЦИФРА "8"**

SELECT * FROM mobile.phone WHERE model LIKE '%8%';
