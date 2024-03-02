/*
Navicat MySQL Data Transfer

Source Server         : DD
Source Server Version : 50510
Source Host           : localhost:6306
Source Database       : aaa

Target Server Type    : MYSQL
Target Server Version : 50510
File Encoding         : 65001

Date: 2011-04-15 10:17:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `cli`
-- ----------------------------
DROP TABLE IF EXISTS `cli`;
CREATE TABLE `cli` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cli` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cli` (`cli`)
) ENGINE=InnoDB AUTO_INCREMENT=2205 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of cli
-- ----------------------------

-- ----------------------------
-- Table structure for `hostactivos`
-- ----------------------------
DROP TABLE IF EXISTS `hostactivos`;
CREATE TABLE `hostactivos` (
  `IdSesion` varchar(30) DEFAULT NULL,
  `hostIP` varchar(15) NOT NULL,
  PRIMARY KEY (`hostIP`),
  UNIQUE KEY `Sesion` (`IdSesion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of hostactivos
-- ----------------------------

-- ----------------------------
-- Table structure for `logaccesos`
-- ----------------------------
DROP TABLE IF EXISTS `logaccesos`;
CREATE TABLE `logaccesos` (
  `Id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `UserTelefono` varchar(50) DEFAULT NULL,
  `UserName` varchar(50) DEFAULT NULL,
  `UserIpV4` varchar(15) DEFAULT NULL,
  `UserInfo` varchar(50) DEFAULT NULL,
  `NasIP` varchar(15) DEFAULT NULL,
  `NasId` varchar(30) DEFAULT NULL,
  `IdSesion` varchar(30) DEFAULT NULL,
  `Inicio` datetime DEFAULT NULL,
  `Fin` datetime DEFAULT NULL,
  `Protocolo` varchar(15) DEFAULT NULL,
  `PortType` varchar(20) DEFAULT NULL,
  `CausaFin` varchar(50) DEFAULT NULL,
  `TSesion` varchar(10) DEFAULT '0',
  `InBytes` varchar(10) DEFAULT '0',
  `OutBytes` varchar(10) DEFAULT '0',
  PRIMARY KEY (`Id`),
  KEY `CLI` (`UserTelefono`),
  KEY `USERNAME` (`UserName`),
  CONSTRAINT `CLI` FOREIGN KEY (`UserTelefono`) REFERENCES `cli` (`cli`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `USERNAME` FOREIGN KEY (`UserName`) REFERENCES `username` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of logaccesos
-- ----------------------------

-- ----------------------------
-- Table structure for `username`
-- ----------------------------
DROP TABLE IF EXISTS `username`;
CREATE TABLE `username` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of username
-- ----------------------------

-- ----------------------------
-- Procedure structure for `InsLogAcceso`
-- ----------------------------
DROP PROCEDURE IF EXISTS `InsLogAcceso`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsLogAcceso`(IN fini datetime, IN ffin datetime, IN telefono varchar(50), IN login varchar(50), IN hostIp varchar(15), IN info varchar(50), IN NIP varchar(15), IN NID varchar(30), IN SesionId varchar(30), IN Proto varchar(15), IN TypePort varchar(20), IN Causa varchar(50), IN TSes varchar(10), IN inB varchar(10), IN outB varchar(10))
BEGIN
DECLARE id BIGINT DEFAULT (select `Cli`.id  FROM `Cli` where
     `Cli`.cli = telefono  LIMIT 1);
DECLARE id1 BIGINT DEFAULT (select `UserName`.id  FROM `UserName` where
     `Username`.username = login  LIMIT 1);

if id is null
THEN
insert into `Cli` (`Cli`.Cli) values (telefono);
END IF;

if id1 is null
THEN
INSERT INTO `UserName` (`UserName`.UserName) VALUES (login);
END IF;

INSERT INTO `LogAccesos` 
                 (`LogAccesos`.UserTelefono,`LogAccesos`.UserName, `LogAccesos`.Inicio, `LogAccesos`.Fin,`LogAccesos`.UserIpV4, 
                  `LogAccesos`.UserInfo, `LogAccesos`.NasIP, `LogAccesos`.NasId, `LogAccesos`.IdSesion,
                  `LogAccesos`.Protocolo, `LogAccesos`.PortType, `LogAccesos`.CausaFin, `LogAccesos`.TSesion, 
                  `LogAccesos`.InBytes,`LogAccesos`.OutBytes ) 
VALUES (telefono,login, fini, ffin, hostIp, info, NIP, NID, SesionId, Proto, TypePort, causa, TSes, InB, outB);
END
;;
DELIMITER ;
