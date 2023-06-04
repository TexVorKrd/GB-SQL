USE GB;
DROP TABLE Cars;
CREATE TABLE Cars (
id INT NOT NULL AUTO_INCREMENT,
Name VARCHAR(50) NOT NULL,
Cost INT NOT NULL,
PRIMARY KEY (id),
UNIQUE INDEX `id_UNIQUE` (id ASC) VISIBLE);

insert into Cars  (Name ,Cost) values
('Audi', 52642),
('Mercedes', 57127),
('Skoda', 9000),
('Volvo', 29000),
('Bentley', 350000),
('Citroen', 21000),
('Hummer', 41400),
('Volkswagen', 21600);


 -- Создайте представление, в которое попадут автомобили стоимостью до 25 000 долларов
CREATE OR REPLACE VIEW CheapCars AS SELECT Name FROM Cars WHERE Cost<25000;

-- Изменить в существующем представлении порог для стоимости: пусть цена будет 
-- до 30 000 долларов (используя оператор ALTER VIEW)
ALTER VIEW CheapCars AS SELECT Name FROM Cars WHERE Cost < 30000;

-- Создайте представление, в котором будут только автомобили марки “Шкода” и “Ауди” (аналогично)
ALTER VIEW CheapCars AS SELECT Name FROM Cars WHERE
Name = 'Skoda'
OR Name =  'Audi';