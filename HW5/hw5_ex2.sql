USE GB;
DROP TABLE Analysis;
CREATE TABLE Analysis (
an_id INT NOT NULL AUTO_INCREMENT,
an_name VARCHAR(50) NOT NULL,
an_cost INT NOT NULL,
an_price INT NOT NULL,
an_group INT NOT NULL,
PRIMARY KEY (an_id),
UNIQUE INDEX `an_id_UNIQUE` (an_id ASC) VISIBLE);

insert into Analysis  (an_name ,an_cost, an_price, an_group) values
('analis_01', 100, 200, 1),
('analis_02', 150, 300, 1),
('analis_03', 200, 250, 2),
('analis_04', 200, 350, 2),
('analis_05', 150, 300, 3),
('analis_06', 300, 450, 3),
('analis_07', 400, 700, 4),
('analis_08', 500, 900, 4),
('analis_09', 700, 900, 4),
('analis_10', 800, 1200, 1),
('analis_11', 900, 2000, 5),
('analis_13', 1000, 1500, 5),
('analis_14', 1100, 2000, 5),
('analis_15', 1000, 1500, 2),
('analis_16', 5000, 8000, 3);


DROP TABLE An_Groups;
CREATE TABLE An_Groups (
gr_id INT NOT NULL AUTO_INCREMENT,
gr_name VARCHAR(50) NOT NULL,
gr_temp INT NOT NULL,
PRIMARY KEY (gr_id),
UNIQUE INDEX `gr_id_UNIQUE` (gr_id ASC) VISIBLE);

insert into An_Groups  (gr_name ,gr_temp) values
('Group1',15),
('Group2',5),
('Group3',-10),
('Group4',-50),
('Group5',-150);

DROP TABLE Orders;
CREATE TABLE Orders (
ord_id INT NOT NULL AUTO_INCREMENT,
ord_datetime datetime NOT NULL,
ord_an INT NOT NULL,
PRIMARY KEY (ord_id),
UNIQUE INDEX `ord_id_UNIQUE` (ord_id ASC) VISIBLE);
insert into Orders  (ord_datetime ,ord_an) values
('2020-02-01 17:00:00',5),
('2020-02-01 17:30:00',2),
('2020-02-02 17:45:00',1),
('2020-02-02 18:15:00',5),
('2020-02-02 18:20:00',3),
('2020-02-02 18:45:00',4),
('2020-02-03 08:10:00',5),
('2020-02-03 08:20:00',2),
('2020-02-03 08:35:00',15),
('2020-02-04 09:15:00',7),
('2020-02-05 09:20:00',9),
('2020-02-05 09:45:00',12),
('2020-02-05 09:55:00',3),
('2020-02-06 10:05:00',15),
('2020-02-06 10:10:00',3),
('2020-02-06 10:20:00',7),
('2020-02-07 10:30:00',8),
('2020-02-07 10:45:00',4),
('2020-02-08 10:55:00',5),
('2020-02-09 11:05:00',15),
('2020-02-09 11:10:00',1),
('2020-02-09 11:20:00',2),
('2020-02-09 11:30:00',3),
('2020-02-10 11:45:00',4),
('2020-02-10 11:55:00',5),
('2020-02-10 12:05:00',6),
('2020-02-11 13:10:00',7),
('2020-02-11 14:20:00',8),
('2020-02-11 15:30:00',9),
('2020-02-12 16:45:00',10),
('2020-02-13 17:55:00',11),
('2020-02-14 08:10:00',5),
('2020-02-15 08:20:00',2),
('2020-03-16 08:35:00',15),
('2020-02-17 09:15:00',7),
('2020-02-18 09:20:00',9),
('2020-02-19 09:45:00',12),
('2020-02-20 09:55:00',3),
('2020-02-20 10:05:00',15),
('2020-02-21 10:10:00',3),
('2020-02-22 10:20:00',7),
('2020-02-23 10:30:00',8),
('2020-02-24 10:45:00',4);

-- Вывести название и цену для всех анализов, которые продавались 5 февраля 2020 и всю следующую неделю.

select an_name, an_price from Analysis
where an_id in (
	select distinct ord_an
	from Orders
	where date(ord_datetime) between  '2020-02-05' and '2020-02-12'
)
order by an_price;

