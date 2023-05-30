-- Вывести на экран сколько машин каждого цвета для машин марок BMW и LADA
SELECT 
	MARK,
    COLOR,
    COUNT(*) AS AMOUNT
FROM AUTO
WHERE MARK IN ('BMW','LADA')
group by
	MARK,
    COLOR
ORDER BY MARK;

-- Вывести на экран марку авто и количество AUTO не этой марки
SELECT 
	t1.MARK,
	t2.total-t1.MODEL_COUNT AS NOT_ME
FROM (SELECT MARK, COUNT(*) AS MODEL_COUNT FROM AUTO GROUP BY MARK) AS t1
	LEFT JOIN (SELECT COUNT(*) AS total FROM AUTO) AS t2
	ON TRUE
ORDER BY t1.MARK;



