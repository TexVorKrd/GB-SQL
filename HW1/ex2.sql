SELECT 
	ProductName as "Название",
    Manufacturer as "Производитель",
    Price as "Цена"
FROM 
	GB.phones
WHERE
	ProductCount > 2
;