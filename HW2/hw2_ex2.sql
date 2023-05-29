USE GB;
DROP TABLE orders;
CREATE TABLE orders (
orderid INT NOT NULL AUTO_INCREMENT,
employeeid VARCHAR(5) NOT NULL,
amount DECIMAL(10,2) NOT NULL,
orderstatus	VARCHAR(20) NOT NULL,
 PRIMARY KEY (orderid)
); 

insert into orders (employeeid, amount, orderstatus) VALUES 
	('e03', 15.00, 'OPEN'),
    ('e01', '25.50', 'OPEN'),
    ('e05', '100.70', 'CLOSED'),
    ('e02', '22.18', 'OPEN'),
    ('e04', '9.50', 'CANCELLED'),
    ('e04', '99.99', 'OPEN');

SELECT 
	orderid,
    orderstatus,
    CASE
		WHEN orderstatus = 'OPEN' THEN 'Order is in open srate'
        WHEN orderstatus = 'CLOSED' THEN 'Order is closed'
        WHEN orderstatus = 'CANCELLED' THEN 'Order is cancelled'
        ELSE 'error'
    END AS order_summary
FROM 
	orders	