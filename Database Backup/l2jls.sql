/*
MySQL Backup
Database: l2jls
Backup Time: 2020-08-18 15:49:57
*/

SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `l2jls`.`account_data`;
DROP TABLE IF EXISTS `l2jls`.`accounts`;
DROP TABLE IF EXISTS `l2jls`.`accounts_ipauth`;
DROP TABLE IF EXISTS `l2jls`.`gameservers`;
CREATE TABLE `account_data` (
  `account_name` varchar(45) NOT NULL DEFAULT '',
  `var` varchar(20) NOT NULL DEFAULT '',
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`account_name`,`var`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE TABLE `accounts` (
  `login` varchar(45) NOT NULL DEFAULT '',
  `password` varchar(45) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `lastactive` bigint(13) unsigned NOT NULL DEFAULT 0,
  `accessLevel` tinyint(4) NOT NULL DEFAULT 0,
  `lastIP` char(15) DEFAULT NULL,
  `lastServer` tinyint(4) DEFAULT 1,
  `pcIp` char(15) DEFAULT NULL,
  `hop1` char(15) DEFAULT NULL,
  `hop2` char(15) DEFAULT NULL,
  `hop3` char(15) DEFAULT NULL,
  `hop4` char(15) DEFAULT NULL,
  PRIMARY KEY (`login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE TABLE `accounts_ipauth` (
  `login` varchar(45) NOT NULL,
  `ip` char(15) NOT NULL,
  `type` enum('deny','allow') DEFAULT 'allow'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE TABLE `gameservers` (
  `server_id` int(11) NOT NULL DEFAULT 0,
  `hexid` varchar(50) NOT NULL DEFAULT '',
  `host` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`server_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
BEGIN;
LOCK TABLES `l2jls`.`account_data` WRITE;
DELETE FROM `l2jls`.`account_data`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `l2jls`.`accounts` WRITE;
DELETE FROM `l2jls`.`accounts`;
INSERT INTO `l2jls`.`accounts` (`login`,`password`,`email`,`created_time`,`lastactive`,`accessLevel`,`lastIP`,`lastServer`,`pcIp`,`hop1`,`hop2`,`hop3`,`hop4`) VALUES ('lorranluck', 'peEHxTCt0j5e9nv+5/VC/YB5J/w=', NULL, '2020-08-18 15:19:08', 1597775060198, 8, '127.0.0.1', 1, '192.168.1.68', '0.0.0.0', '0.0.0.0', '0.0.0.0', '0.0.0.0');
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `l2jls`.`accounts_ipauth` WRITE;
DELETE FROM `l2jls`.`accounts_ipauth`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `l2jls`.`gameservers` WRITE;
DELETE FROM `l2jls`.`gameservers`;
INSERT INTO `l2jls`.`gameservers` (`server_id`,`hexid`,`host`) VALUES (1, '5c22f01ac477953256563e36278def84', '186.242.101.44');
UNLOCK TABLES;
COMMIT;
