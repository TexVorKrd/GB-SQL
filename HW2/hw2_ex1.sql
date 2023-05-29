USE GB;
DROP TABLE sales;
CREATE TABLE sales (
id INT NOT NULL AUTO_INCREMENT,
order_date DATE NOT NULL,
sale_order VARCHAR(20) NOT NULL,
count	INT NOT NULL,
order_value INT NOT NULL,
 PRIMARY KEY (id)
); 

insert into sales (order_date, sale_order, count, order_value) VALUES 
	('2023-05-15', 'Z-15/1', '5', '100'),
    ('2023-05-16', 'Z-16/1', '7', '140'),
    ('2023-05-17', 'Z-17/1', '2', '40'),
    ('2023-05-18', 'Z-18/1', '10', '200'),
    ('2023-05-18', 'Z-18/2', '20', '400'),
    ('2023-05-19', 'Z-19/1', '1', '20'),
    ('2023-05-19', 'Z-19/2', '2', '40'),
    ('2023-05-20', 'Z-20/1', '3', '60'),
    ('2023-05-22', 'Z-22/1', '7', '140'),
    ('2023-05-23', 'Z-12/1', '14', '280'),
    ('2023-05-24', 'Z-24/1', '10', '200'),
    ('2023-05-25', 'Z-25/1', '40', '800'),
    ('2023-05-26', 'Z-26/1', '7', '140');

ALTER TABLE sales 
ADD COLUMN bucket VARCHAR(45) NULL AFTER order_value;
UPDATE `GB`.`sales` SET `bucket` = 
	CASE
		WHEN order_value < 100 THEN 'less then 100'
		WHEN order_value > 300 THEN 'more then 300'
		ELSE 'From 100 to 300'
	END    
WHERE id < 10000;

