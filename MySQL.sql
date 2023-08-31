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

# 37
expr BETWEEN min AND max
expr NOT BETWEEN min AND max

# 38
expr IN (value,...)
expr NOT IN (value,...)

# 39
expr LIKE pat [ESCAPE 'escape_char']
expr NOT LIKE pat [ESCAPE 'escape_char']

# 42
IF(expr1,expr2,expr3)

# 43 
CASE 
WHEN condition THEN result 
[WHEN condition THEN result ...] 
[ELSE result] 
END
CASE value 
WHEN compare_value THEN result 
[WHEN compare_value THEN result ...] 
[ELSE result] 
END

# 45
SELECT USER();
SELECT SESSION_USER();
SELECT SYSTEM_USER();

SELECT VERSION();

SELECT CHARSET(str);
SELECT CONVERT(expr USING transcoding_name)

SELECT DATABASE();

SELECT CONNECTION_ID();
# 46
SELECT * FROM `Table_Name` ORDER BY `Column_Name`;

SELECT * FROM `Table_Name` ORDER BY `Column_Name`, `Column_Name`;

SELECT * FROM `Table_Name` GROUP BY `Column_Name`;

SELECT `Column_Name`, SUM(`Column_Name`) FROM `Table_Name` GROUP BY `Column_Name`;

SELECT `Column_Name`, SUM(`Column_Name`) FROM `Table_Name` GROUP BY `Column_Name` ORDER BY `Column_Name` DESC;

SELECT ` Column_Name`, COUNT(`Column_Name`) `alias` FROM `Table_Name` GROUP BY `Column_Name` ORDER BY `Column_Name`;

SELECT `Column_Name`, COUNT(`Column_Name`) `alias` FROM `Table_Name` GROUP BY `Column_Name` HAVING `alias` > 1;

# 48
SELECT * FROM `Table_Name`, `Table_Name` WHERE `Table_Name`.`Column_Name` = `Table_Name`.`Column_Name`;

# 49
SELECT `alias`.`Column_Name`, `alias`.`Column_Name`, `alias`.`Column_Name` FROM `Table_Name` `alias` INNER JOIN `Table_Name` `alias` ON `alias`.`Column_Name` = `alias`.`Column_Name`;

# 50
SELECT `alias`.`Column_Name`, `alias`.`Column_Name`, `alias`.`Column_Name` FROM `Table_Name` `alias` LEFT JOIN `Table_Name` `alias` ON `alias`.`Column_Name` = `alias`.`Column_Name`;
SELECT `alias`.`Column_Name`, `alias`.`Column_Name`, `alias`.`Column_Name` FROM `Table_Name` `alias` RIGHT JOIN `Table_Name` `alias` ON `alias`.`Column_Name` = `alias`.`Column_Name`;

2023/08/31 06:36
