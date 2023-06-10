-- Выведите только четные числа от 1 до 10. Пример: 2,4,6,8,10

-- USE GB;
-- ROP FUNCTION `GB`.`div_2`;


DELIMITER //
CREATE FUNCTION div_2(dig_in int)
	RETURNS VARCHAR(500)
	DETERMINISTIC
BEGIN
	declare i int default 1;
    declare outer_msg varchar(500) default 'некорректные данные';
    
    if dig_in >0 then
		set outer_msg =' ';
		while i<= dig_in do
			if i%2=0 then
				set outer_msg = concat(outer_msg,' ',i);
            end if;    
            set i=i+1;
       end while;     
   end if;
   return outer_msg;     
    
END // 
DELIMITER ;

select div_2(10);