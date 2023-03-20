USE hw2;

INSERT INTO sales (order_date, count_productl) VALUES (CURDATE(), 154);
INSERT INTO sales (order_date, count_productl) VALUES (CURDATE(), 23);
INSERT INTO sales (order_date, count_productl) VALUES (CURDATE(), 501);
INSERT INTO sales (order_date, count_productl) VALUES (CURDATE(), 320);
INSERT INTO sales (order_date, count_productl) VALUES (CURDATE(), 10);
INSERT INTO sales (order_date, count_productl) VALUES (CURDATE(), 1);
INSERT INTO sales (order_date, count_productl) VALUES (CURDATE(), 160);
INSERT INTO sales (order_date, count_productl) VALUES (CURDATE(), 98);
INSERT INTO sales (order_date, count_productl) VALUES (CURDATE(), 56);

SELECT * FROM sales;

SELECT id, 
CASE
    WHEN count_productl BETWEEN 0 AND 99
        THEN 'Маленький заказ'
    WHEN count_productl BETWEEN 100 AND 299
        THEN 'Средний заказ'
    ELSE 'Большой заказ'
END AS 'Тип заказа'
FROM sales;

