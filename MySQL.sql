# 02
C:\Program Files\MySQL\MySQL Server 8.0\bin>mysql -u root -p

# 03
SELECT `Column_Name`,... FROM `Table_Name`,... WHERE `Column_Name` = Value AND `Column_Name` = Value ORDER BY `Column_Name`,... LIMIT number;
SELECT * FROM `Table_Name`;
INSERT INTO `Database_Name`.`Table_Name` (`Column_Name`,...) VALUES (Value,...);

# 05
TRUNCATE `Table_Name`;

# 06
INSERT INTO `Database_Name`.`Table_Name` (`Column_Name) VALUES ( CURRENT_TIMESTAM);

# 07
ENUM(Value,...)
SET(Value,...)
INSERT INTO `Database_Name`.`Table_Name` (`Column_Name`,...) VALUES ('Value,...');

# 08
SHOW DATABASES;
USE `Database_Name`;
DROP DATABASE `Database_Name`;
DROP DATABASE IF EXISTS `Database_Name`;
CREATE DATABASE IF NOT EXISTS `Database_Name`;
SHOW DATABASES LIKE 'Database_Name';

# 09
CREATE TABLE `Table_Name` ( `Column_Name` DataType(Length),...);
DESCRIBE `Table_Name`;
SHOW COLUMNS FROM `Table_Name`;
SHOW FIELDS FROM `Table_Name`;
SHOW TABLE STATUS;
SHOW CREATE TABLE `Table_Name`;
DROP TABLE `Table_Name`;
DROP TABLE IF EXISTS `Table_Name`;
CREATE TABLE IF NOT EXISTS `Table_Name`; ( `Column_Name` DataType(Length),...);

# 10
RENAME TABLE `Table_Name` TO `Table_Name`...;
ALTER TABLE `Table_Name` ENGINE = MYISAM;

# 11
ALTER TABLE `Table_Name` ADD `Column_Name` DataType(Length);
ALTER TABLE `Table_Name` ADD `Column_Name` DataType(Length) AFTER `Column_Name`;
ALTER TABLE `Table_Name` ADD `Column_Name` DataType(Length) FIRST;
ALTER TABLE `Table_Name` DROP `Column_Name`;
ALTER TABLE `Table_Name` CHANGE `Column_Name` `Column_Name`  DataType(Length) AFTER `Column_Name`;
ALTER TABLE `Table_Name` CHANGE `Column_Name` `Column_Name`  DataType(Length) FIRST;
ALTER TABLE `Table_Name` MODIFY `Column_Name`  DataType(Length);

# 12
ALTER TABLE `Table_Name` RENAME `Table_Name`;
ALTER TABLE `Table_Name` MODIFY `Column_Name`  DataType(Length), 
CHANGE `Column_Name` `Column_Name`  DataType(Length);
ALTER TABLE `Table_Name` CONVERT TO CHARCTER SET utf8;

# 13
ALTER TABLE `Table_Name` MODIFY `Column_Name`  DataType(Length) NOT NULL;
ALTER TABLE `Table_Name` ADD `Column_Name` DataType(Length) NOT NULL;

# 14
ALTER TABLE `Table_Name` ADD UNIQUE(`Column_Name`);
ALTER TABLE `Table_Name` DROP INDEX `Column_Name`;
ALTER TABLE `Table_Name` ADD `Column_Name` DataType(Length) NOT NULL UNIQUE;

# 15
PRIMARY KEY
CREATE TABLE `Table_Name` ( `Column_Name` DataType(Length) PRIMARY KEY);
CREATE TABLE `Table_Name` ( `Column_Name` DataType(Length) PRIMARY KEY (`Column_Name`));
ALTER TABLE `Table_Name` ADD PRIMARY KEY(`Column_Name`); 
ALTER TABLE `Table_Name` DROP PRIMARY KEY;
ALTER TABLE `Table_Name` DROP PRIMARY KEY (`Column_Name`);
SHOW INDEXES FROM `Table_Name`;

# 16 
CREATE TABLE `Table_Name` ( `Column_Name` DataType(Length), CONSTRAINT `Constraint_Name` FOREIGN KEY(`Column_Name`) REFERENCES `Table_Name`(`Column_Name`) ON UPDATE CASCADE ON DELETE CASCADE) ENGINE = INNODB;
ALTER TABLE `Table_Name` ADD CONSTRAINT `Constraint_Name` FOREIGN KEY(`Column_Name`) REFERENCES `Table_Name`(`Column_Name`) ON UPDATE CASCADE ON DELETE CASCADE;

# 17
SELECT * FROM `Table_Name` JOIN `Table_Name` ON Condition WHERE Condition;
UPDATE `Database_Name`.`Table_Name` SET `Column_Name`,... = Value,... WHERE Condition;
DELET FROM `Table_Name` WHERE Condition;

# 18
ALTER TABLE `Table_Name` DROP FOREIGN KEY `Constraint_Name`;
ON UPDATE (CASCADE, SET NULL, NO ACTION, RESTRICT)
