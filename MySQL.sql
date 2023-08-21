# 02
mysql -u root -p

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
UPDATE `Database_Name`.`Table_Name` SET `Column_Name`,... = Value,... WHERE Condition;
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
