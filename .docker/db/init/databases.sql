CREATE DATABASE IF NOT EXISTS `todo`;
CREATE DATABASE IF NOT EXISTS `todo_test`;

CREATE USER 'user'@'%' IDENTIFIED BY 'pass';
GRANT ALL ON *.* TO 'user'@'%';