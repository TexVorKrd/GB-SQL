-- Создайте функцию, которая принимает кол-во сек и формат их в кол-во дней часов. 
-- Пример: 123456 ->'1 days 10 hours 17 minutes 36 seconds

-- USE GB;
-- DROP FUNCTION `GB`.`sec_to_days`;

DELIMITER //
CREATE FUNCTION sec_to_days(sec_in int)
RETURNS VARCHAR(500)
DETERMINISTIC
BEGIN
	declare out_msg varchar(500) default '';
	declare int_part int default sec_in;
    
    declare secs int default sec_in%60;
    declare mins int default ((sec_in-secs)/60)%60;
    declare hours int default ((sec_in-secs-mins*60)/(60*60))%24;
    declare days int default (sec_in-secs-mins*60-hours*(60*60))/(60*60*24);
    
    -- sec = sec_in;
    set out_msg= concat(
		int_part,' секунд = ',
		days,' дней ', 
		hours,' часов ',
		mins,' минут ',
        secs,' cекунд');
        return out_msg;
END // 
DELIMITER ;

select sec_to_days(123456) as text;
