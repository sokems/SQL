USE hw2;

INSERT INTO orders (employee_id, amount, order_status) VALUES (1, 14.5, 'OPENED');
INSERT INTO orders (employee_id, amount, order_status) VALUES (5, 1, 'CLOSED');
INSERT INTO orders (employee_id, amount, order_status) VALUES (6, 104.8, 'CANCELLED');
INSERT INTO orders (employee_id, amount, order_status) VALUES (10, 6.9, 'CANCELLED');
INSERT INTO orders (employee_id, amount, order_status) VALUES (3, 105, 'OPENED');
INSERT INTO orders (employee_id, amount, order_status) VALUES (3, 105, 'ORDER');


SELECT * FROM orders;

SELECT id, 
CASE
    WHEN order_status = 'OPENED'
        THEN 'Order is in open state'
    WHEN order_status = 'CLOSED'
        THEN 'Order is closed'
	WHEN order_status = 'CANCELLED'
        THEN 'Order is cancelled'
    ELSE 'Unknown status'
END AS 'full_order_status'
FROM orders;

