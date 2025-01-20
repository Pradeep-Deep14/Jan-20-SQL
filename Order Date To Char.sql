CREATE TABLE orders (
         order_id INT PRIMARY KEY, 
         order_date DATE
     );
     INSERT INTO orders VALUES 
         (1, '2024-01-05'), 
         (2, '2023-12-15'), 
         (3, '2024-02-10');


SELECT * FROM ORDERS


/*
List all orders placed in the year 2024.
*/

--APPROACH 1
	
SELECT ORDER_ID
FROM ORDERS
WHERE ORDER_DATE BETWEEN '2024-01-01' AND '2024-12-31'

--APPROACH 2

SELECT order_id
FROM orders
WHERE TO_CHAR(order_date, 'YYYY') = '2024';
