CREATE TABLE `GB`.`phones` (
  `Id` INT NOT NULL AUTO_INCREMENT,
  `ProductName` VARCHAR(200) NOT NULL,
  `Manufacturer` VARCHAR(200) NOT NULL,
  `Price` INT NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE INDEX `Id_UNIQUE` (`Id` ASC) VISIBLE);

INSERT INTO `GB`.`phones` (`ProductName`, `Manufacturer`, `Price`) VALUES ('Z Fold 4', 'Samsung', '95100');
INSERT INTO `GB`.`phones` (`ProductName`, `Manufacturer`, `Price`) VALUES ('S 22 Plus', 'Samsung', '55800');
INSERT INTO `GB`.`phones` (`ProductName`, `Manufacturer`, `Price`) VALUES ('A33', 'Samsung', '19700');
INSERT INTO `GB`.`phones` (`ProductName`, `Manufacturer`, `Price`) VALUES ('OnePlus 10', 'OnePlus', '46700');
INSERT INTO `GB`.`phones` (`ProductName`, `Manufacturer`, `Price`) VALUES ('OnePlus Ace', 'OnePlus', '35000');
INSERT INTO `GB`.`phones` (`ProductName`, `Manufacturer`, `Price`) VALUES ('Mi11', 'Xiaomi', '21400');
INSERT INTO `GB`.`phones` (`ProductName`, `Manufacturer`, `Price`) VALUES ('9a', 'Xiaomi', '6800');
INSERT INTO `GB`.`phones` (`ProductName`, `Manufacturer`, `Price`) VALUES ('Note 11', 'Xiaomi', '11000');
INSERT INTO `GB`.`phones` (`ProductName`, `Manufacturer`, `Price`) VALUES ('Y5P', 'Huawei', '6400');
INSERT INTO `GB`.`phones` (`ProductName`, `Manufacturer`, `Price`) VALUES ('Nova 9SE', 'Huawei', '16500');
INSERT INTO `GB`.`phones` (`ProductName`, `Manufacturer`, `Price`) VALUES ('P50', 'Huawei', '52700');
INSERT INTO `GB`.`phones` (`ProductName`, `Manufacturer`, `Price`) VALUES ('model1', 'Iphone', '1000');
INSERT INTO `GB`.`phones` (`ProductName`, `Manufacturer`, `Price`) VALUES ('model2', 'Iphone', '2000');
INSERT INTO `GB`.`phones` (`ProductName`, `Manufacturer`, `Price`) VALUES ('model3', 'Iphone', '3000');

ALTER TABLE `GB`.`phones` 
ADD COLUMN `ProductCount` INT NOT NULL AFTER `Price`;

UPDATE `GB`.`phones` SET `ProductCount` = '2' WHERE (`Id` = '1');
UPDATE `GB`.`phones` SET `ProductCount` = '5' WHERE (`Id` = '2');
UPDATE `GB`.`phones` SET `ProductCount` = '10' WHERE (`Id` = '3');
UPDATE `GB`.`phones` SET `ProductCount` = '5' WHERE (`Id` = '4');
UPDATE `GB`.`phones` SET `ProductCount` = '25' WHERE (`Id` = '5');
UPDATE `GB`.`phones` SET `ProductCount` = '15' WHERE (`Id` = '6');
UPDATE `GB`.`phones` SET `ProductCount` = '3' WHERE (`Id` = '7');
UPDATE `GB`.`phones` SET `ProductCount` = '17' WHERE (`Id` = '8');
UPDATE `GB`.`phones` SET `ProductCount` = '50' WHERE (`Id` = '9');
UPDATE `GB`.`phones` SET `ProductCount` = '2' WHERE (`Id` = '10');
UPDATE `GB`.`phones` SET `ProductCount` = '3' WHERE (`Id` = '11');
UPDATE `GB`.`phones` SET `ProductCount` = '1' WHERE (`Id` = '12');
UPDATE `GB`.`phones` SET `ProductCount` = '2' WHERE (`Id` = '13');
UPDATE `GB`.`phones` SET `ProductCount` = '3' WHERE (`Id` = '14');

