/*
Navicat MySQL Data Transfer

Source Server         : DD
Source Server Version : 50510
Source Host           : localhost:6306
Source Database       : kdestadisticas

Target Server Type    : MYSQL
Target Server Version : 50510
File Encoding         : 65001

Date: 2011-04-15 02:43:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `desp claves estadisticas`
-- ----------------------------
DROP TABLE IF EXISTS `desp claves estadisticas`;
CREATE TABLE `desp claves estadisticas` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `grupo` varchar(30) NOT NULL,
  `unidad` varchar(30) NOT NULL,
  `chequeo` varchar(255) NOT NULL,
  `cdadRx` bigint(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='InnoDB free: 7168 kB; InnoDB free: 7168 kB';

-- ----------------------------
-- Records of desp claves estadisticas
-- ----------------------------

-- ----------------------------
-- Table structure for `desp estadisticas`
-- ----------------------------
DROP TABLE IF EXISTS `desp estadisticas`;
CREATE TABLE `desp estadisticas` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `despachador` varchar(30) NOT NULL,
  `procesados` bigint(20) unsigned NOT NULL DEFAULT '0',
  `chequeados` bigint(20) unsigned NOT NULL DEFAULT '0',
  `masivos` bigint(20) unsigned NOT NULL DEFAULT '0',
  `ParaEstudio` bigint(20) unsigned NOT NULL DEFAULT '0',
  `almacenados` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='InnoDB free: 7168 kB; InnoDB free: 7168 kB';

-- ----------------------------
-- Records of desp estadisticas
-- ----------------------------

-- ----------------------------
-- Table structure for `desp grupos estadisticas`
-- ----------------------------
DROP TABLE IF EXISTS `desp grupos estadisticas`;
CREATE TABLE `desp grupos estadisticas` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `grupo` varchar(30) NOT NULL,
  `unidad` varchar(30) NOT NULL,
  `cdadRx` bigint(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='InnoDB free: 7168 kB; InnoDB free: 7168 kB';

-- ----------------------------
-- Records of desp grupos estadisticas
-- ----------------------------

-- ----------------------------
-- Table structure for `monkd estadisticas`
-- ----------------------------
DROP TABLE IF EXISTS `monkd estadisticas`;
CREATE TABLE `monkd estadisticas` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `idMon` varchar(30) NOT NULL,
  `tipoTx` varchar(8) NOT NULL,
  `PktRx` bigint(20) NOT NULL DEFAULT '0',
  `BytesRx` bigint(20) NOT NULL DEFAULT '0',
  `Cdad` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=latin1 COMMENT='InnoDB free: 7168 kB; InnoDB free: 7168 kB';

-- ----------------------------
-- Records of monkd estadisticas
-- ----------------------------

-- ----------------------------
-- Procedure structure for `IncDespClavesEstadisticas`
-- ----------------------------
DROP PROCEDURE IF EXISTS `IncDespClavesEstadisticas`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `IncDespClavesEstadisticas`(IN f varchar(10), IN grupo varchar(30), IN unidad varchar(30), IN chequeo varchar(255))
BEGIN
DECLARE id BIGINT DEFAULT (select `desp claves estadisticas`.id  FROM `desp claves estadisticas` where
     `desp claves estadisticas`.fecha = date(f) and 
     `desp claves estadisticas`.grupo = grupo and
     `desp claves estadisticas`.unidad = unidad and
     `desp claves estadisticas`.chequeo = chequeo LIMIT 1);

if id is null
THEN
insert into `desp claves estadisticas` (`desp claves estadisticas`.fecha,`desp claves estadisticas`.grupo,`desp claves estadisticas`.unidad, `desp claves estadisticas`.chequeo,`desp claves estadisticas`.cdadRx ) values (date(f),grupo,unidad,chequeo,1);
ELSE
update `desp claves estadisticas` set `desp claves estadisticas`.`cdadRx` = `desp claves estadisticas`.`cdadRx` + 1 where `desp claves estadisticas`.id = id;
END IF;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `IncDespEstadisticas`
-- ----------------------------
DROP PROCEDURE IF EXISTS `IncDespEstadisticas`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `IncDespEstadisticas`(IN f varchar(10), IN desp varchar(30), IN masiv Integer, IN cheq Integer, IN estudio Integer, IN almac Integer)
BEGIN
DECLARE id BIGINT DEFAULT (select `desp estadisticas`.id  FROM `desp estadisticas` where
     `desp estadisticas`.fecha = date(f) and 
     `desp estadisticas`.despachador = desp LIMIT 1);

if id is null
THEN
insert into `desp estadisticas` (`desp estadisticas`.fecha, `desp estadisticas`.despachador, `desp estadisticas`.procesados,
                                  `desp estadisticas`.masivos, `desp estadisticas`.chequeados, `desp estadisticas`.ParaEstudio,
                                  `desp estadisticas`.almacenados ) values (date(f),desp, 1,masiv, cheq, estudio, almac);
ELSE
update `desp estadisticas` set `desp estadisticas`.procesados = `desp estadisticas`.procesados + 1, 
                               `desp estadisticas`.masivos = `desp estadisticas`.masivos + masiv,
                               `desp estadisticas`.chequeados = `desp estadisticas`.chequeados + cheq,
                               `desp estadisticas`.ParaEstudio = `desp estadisticas`.ParaEstudio + estudio,
                               `desp estadisticas`.almacenados = `desp estadisticas`.almacenados + almac

                          where `desp estadisticas`.id = id;
END IF;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `IncDespGruposEstadisticas`
-- ----------------------------
DROP PROCEDURE IF EXISTS `IncDespGruposEstadisticas`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `IncDespGruposEstadisticas`(IN f varchar(10), IN grupo varchar(30), IN unidad varchar(30))
BEGIN
DECLARE id BIGINT DEFAULT (select `desp grupos estadisticas`.id  FROM `desp grupos estadisticas` where
     `desp grupos estadisticas`.fecha = date(f) and 
     `desp grupos estadisticas`.grupo = mon and
     `desp grupos estadisticas`.unidad = tipo LIMIT 1);

if id is null
THEN
insert into `desp grupos estadisticas` (`desp grupos estadisticas`.fecha,`desp grupos estadisticas`.grupo,`desp grupos estadisticas`.unidad,`desp grupos estadisticas`.cdadRx ) values (date(f),grupo,unidad, 1);
ELSE
update `desp grupos estadisticas` set `desp grupos estadisticas`.`cdadRx` = `desp grupos estadisticas`.`cdadRx` + 1 where `desp grupos estadisticas`.id = id;
END IF;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `MonKdFiles`
-- ----------------------------
DROP PROCEDURE IF EXISTS `MonKdFiles`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `MonKdFiles`(IN f varchar(10),  IN mon varchar(30), IN tipo varchar(8), IN cdadfiles integer)
BEGIN
DECLARE id BIGINT DEFAULT (select `monkd estadisticas`.id  FROM `monkd estadisticas` where
     `monkd estadisticas`.fecha = date(f) and 
     `monkd estadisticas`.idmon = mon and
     `monkd estadisticas`.tipoTx = tipo LIMIT 1);

if id is null
THEN
insert into `monkd estadisticas` (`monkd estadisticas`.fecha,`monkd estadisticas`.idmon,`monkd estadisticas`.tipoTx,`monkd estadisticas`.Cdad ) values (date(f),mon,tipo,cdadfiles);
ELSE
update `monkd estadisticas` set `monkd estadisticas`.`Cdad` = `monkd estadisticas`.`Cdad` + cdadfiles  where `monkd estadisticas`.id = id;
END IF;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `MonKdStat`
-- ----------------------------
DROP PROCEDURE IF EXISTS `MonKdStat`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `MonKdStat`(IN f varchar(10),  IN mon varchar(30), IN tipo varchar(8), IN cdadByt integer,IN  cdadPkt integer)
BEGIN
DECLARE id BIGINT DEFAULT (select `monkd estadisticas`.id  FROM `monkd estadisticas` where
     `monkd estadisticas`.fecha = date(f) and 
     `monkd estadisticas`.idmon = mon and
     `monkd estadisticas`.tipoTx = tipo LIMIT 1);

if id is null
THEN
insert into `monkd estadisticas` (`monkd estadisticas`.fecha,`monkd estadisticas`.idmon,`monkd estadisticas`.tipoTx,`monkd estadisticas`.BytesRx, `monkd estadisticas`.PktRx ) values (date(f),mon,tipo,cdadbyt,cdadpkt);
ELSE
update `monkd estadisticas` set `monkd estadisticas`.`BytesRx` = `monkd estadisticas`.`BytesRx` + cdadbyt, `monkd estadisticas`.`PktRx` = `monkd estadisticas`.`PktRx` + cdadpkt  where `monkd estadisticas`.id = id;
END IF;
END
;;
DELIMITER ;
