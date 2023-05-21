UPDATE `GB`.`phones` SET `ProductName` = 'Iphone model1' WHERE (`Id` = '12');
UPDATE `GB`.`phones` SET `ProductName` = 'Iphone model2' WHERE (`Id` = '13');
UPDATE `GB`.`phones` SET `ProductName` = 'Iphone model3' WHERE (`Id` = '14');

#-- Товары, в наименовании которых есть упоминание "Iphone"

#-- Первый вариант задания 1
SELECT 
	* 
FROM 
	GB.phones
WHERE
	ProductName LIKE "%Iphone%"
    or ProductName LIKE "%Iphone"
    or ProductName LIKE "Iphone%"
;

#-- Второй вариант задания 1
SELECT 
	* 
FROM 
	GB.phones
WHERE
	ProductName REGEXP '^.*Iphone.*$'
;

# -- Товары, в наименовании которых есть упоминание "Samsung"
SELECT 
	* 
FROM 
	GB.phones
WHERE
	ProductName REGEXP '^.*Samsung.*$'
;

# -- Товары, в наименовании которых есть упоминание "Цифры"

SELECT 
	* 
FROM 
	GB.phones
WHERE
	ProductName REGEXP '^.*[:digit:].*$'
;

#-- Товары, в наименовании которых есть ЦИФРА "8"
SELECT 
	* 
FROM 
	GB.phones
WHERE
	ProductName REGEXP '^.*[8].*$'
;

