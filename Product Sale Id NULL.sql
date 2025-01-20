DROP TABLE IF EXISTS Products;



CREATE TABLE Products (product_id SERIAL PRIMARY KEY, product_name VARCHAR(100), category VARCHAR(50), price DECIMAL(10, 2));


INSERT INTO Products (product_name, category, price) VALUES 
	('Product A', 'Category 1', 10.00),
	('Product B', 'Category 2', 15.00),
	('Product C', 'Category 1', 20.00), 
	('Product D', 'Category 3', 25.00);


DROP TABLE IF EXISTS Sales;


CREATE TABLE Sales (sale_id SERIAL PRIMARY KEY,
					product_id INT, sale_date DATE,
					quantity INT, 
					FOREIGN KEY (product_id) REFERENCES Products(product_id)); 


INSERT INTO Sales (product_id, sale_date, quantity) VALUES
	(1, '2023-09-15', 5), 
	(2, '2023-10-20', 3), 
	(1, '2024-01-05', 2), 
	(3, '2024-02-10', 4), 
	(4, '2023-12-03', 1);

/*
Select all products that have not received any sale in the current year.
*/


SELECT * FROM PRODUCTS
SELECT * FROM SALES



SELECT P.product_name
FROM Products P
LEFT JOIN Sales S ON P.product_id = S.product_id
AND EXTRACT(YEAR FROM S.sale_date) = EXTRACT(YEAR FROM CURRENT_DATE)
WHERE S.sale_id IS NULL;

