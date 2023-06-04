USE GB;
DROP TABLE train_time;
CREATE TABLE train_time (
tarin_id INT NOT NULL,
station VARCHAR(20) NOT NULL,
station_time TIME);

insert into train_time (tarin_id, station, station_time) values
(110,'San Francisco','10:00:00'),
(110,'Palo Alto','11:02:00'),
(110,'Redwood city','10:54:00'),
(110,'San Jose','12:35:00'),
(120,'San Francisco','11:00:00'),
(120,'San Jose','13:30:00'),
(120,'Palo Alto','12:49:00');

select 
	tarin_id,
	station,
    station_time,    
    CASE
		when LEAD(station_time,1) over (PARTITION BY tarin_id order by station_time rows BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) then timediff(LEAD(station_time,1) over (PARTITION BY tarin_id order by station_time rows BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING),station_time)
        else '-'
    END as to_next
from
	train_time;