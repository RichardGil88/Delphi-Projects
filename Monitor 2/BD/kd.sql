/*
Navicat MySQL Data Transfer

Source Server         : DD
Source Server Version : 50510
Source Host           : localhost:6306
Source Database       : kd

Target Server Type    : MYSQL
Target Server Version : 50510
File Encoding         : 65001

Date: 2011-04-15 03:03:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `claves`
-- ----------------------------
DROP TABLE IF EXISTS `claves`;
CREATE TABLE `claves` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `chequeo` varchar(255) NOT NULL DEFAULT '',
  `grupo` varchar(20) NOT NULL DEFAULT '',
  `unidad` varchar(20) NOT NULL DEFAULT '',
  `fecha` datetime NOT NULL,
  `TipoTx` varchar(20) NOT NULL DEFAULT 'EMAIL',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of claves
-- ----------------------------
INSERT INTO `claves` VALUES ('1', 'cccc', '45', 'oi', '2008-04-10 17:00:00', 'EMAIL');

-- ----------------------------
-- Table structure for `claves historicas`
-- ----------------------------
DROP TABLE IF EXISTS `claves historicas`;
CREATE TABLE `claves historicas` (
  `idSolicitud` bigint(20) unsigned DEFAULT NULL,
  `clave` int(11) NOT NULL,
  `chequeo` varchar(150) DEFAULT NULL,
  `activa` tinyint(1) unsigned DEFAULT NULL,
  `tipotx` varchar(20) DEFAULT NULL,
  `aplicadopor` varchar(30) DEFAULT NULL,
  `ktalta` varchar(20) DEFAULT NULL,
  `fechaalta` datetime DEFAULT NULL,
  `ktbaja` varchar(20) DEFAULT NULL,
  `fechabaja` datetime DEFAULT NULL,
  `grupo` varchar(20) DEFAULT NULL,
  `unidad` varchar(20) DEFAULT NULL,
  `inicio` datetime DEFAULT NULL,
  `fin` datetime DEFAULT NULL,
  PRIMARY KEY (`clave`),
  UNIQUE KEY `clave` (`clave`),
  KEY `activa` (`activa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=80 PACK_KEYS=0 ROW_FORMAT=COMPACT COMMENT='InnoDB free: 6144 kB; InnoDB free: 12288 kB; (`IdTipoTx`) RE';

-- ----------------------------
-- Records of claves historicas
-- ----------------------------

-- ----------------------------
-- Table structure for `claves_plantilla`
-- ----------------------------
DROP TABLE IF EXISTS `claves_plantilla`;
CREATE TABLE `claves_plantilla` (
  `chequeo` varchar(255) NOT NULL DEFAULT '',
  `indice` int(11) NOT NULL DEFAULT '0',
  `grupo` varchar(20) NOT NULL DEFAULT '',
  `cdadCheq` int(11) NOT NULL DEFAULT '0',
  `fecha` varchar(50) NOT NULL DEFAULT '05/11/2008 17:00',
  `Observacion` varchar(150) NOT NULL DEFAULT 'OK',
  `TipoTx` varchar(20) NOT NULL DEFAULT 'EMAIL',
  PRIMARY KEY (`chequeo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of claves_plantilla
-- ----------------------------

-- ----------------------------
-- Table structure for `grupos`
-- ----------------------------
DROP TABLE IF EXISTS `grupos`;
CREATE TABLE `grupos` (
  `idgrupo` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `grupo` varchar(20) NOT NULL DEFAULT '1',
  `unidad` varchar(20) NOT NULL DEFAULT '1',
  `ttx` varchar(50) NOT NULL DEFAULT 'Tabla de Tx',
  `usarTablaTx` set('no','si') NOT NULL DEFAULT 'no' COMMENT 'escribir record en TablaTx',
  `Dirtx` varchar(250) NOT NULL DEFAULT '\\\\' COMMENT 'Directorio para tas tx finales del grupo para el despachador',
  `UsarDirTx` set('no','si') NOT NULL DEFAULT 'si' COMMENT 'si... indica utilizar la dirTx de cada grupo en el despacho',
  `CopiarIri` set('no','si') NOT NULL DEFAULT 'si',
  `formatoIri` set('xml','ini','iri') NOT NULL DEFAULT 'iri',
  `organizar` set('no','si') NOT NULL DEFAULT 'si',
  `tdoc` varchar(50) NOT NULL DEFAULT 'doc',
  `tenlacetxdoc` varchar(50) NOT NULL DEFAULT 'enlacetxdoc',
  `clavemenor` int(11) NOT NULL DEFAULT '0',
  `clavemayor` int(11) NOT NULL DEFAULT '1',
  `dirdoc` varchar(250) NOT NULL DEFAULT '\\\\',
  `dirbuzon` varchar(250) NOT NULL DEFAULT '\\\\',
  `descripcion` varchar(50) NOT NULL DEFAULT 'Grupo',
  `activo` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 grupo activo',
  `orden` int(11) DEFAULT NULL,
  `buzonautomatico` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Envia todo automaticamente al buzon',
  `Estructurado` set('no','si') NOT NULL DEFAULT 'no' COMMENT '"si" ... si las frases.txt son en forma de Record "temporal"',
  `chequear` set('no','si') NOT NULL DEFAULT 'si',
  `guardarlog` set('no','si') NOT NULL DEFAULT 'no',
  `FicherosCantidad` bigint(20) DEFAULT NULL,
  `FicherosCantidadAlarma` bigint(20) DEFAULT NULL,
  `FicherosCantidadLimite` bigint(20) DEFAULT NULL,
  `FicherosTamano` bigint(20) DEFAULT NULL,
  `FicherosTamanoAlarma` bigint(20) DEFAULT NULL,
  `FicherosTamanoLimite` bigint(20) DEFAULT NULL,
  `funcionando` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Dice si este grupo esta funcionando o no',
  `automatico` tinyint(1) DEFAULT '1' COMMENT 'el monitor automaticamente activa o desactiva este grupo',
  `BDatosKdGrupo` varchar(50) NOT NULL DEFAULT 'localhost',
  `PuertoKdGrupo` int(11) NOT NULL DEFAULT '9306',
  `UserKdGrupo` varchar(50) NOT NULL DEFAULT 'root',
  `PasswKdGrupo` varchar(50) NOT NULL DEFAULT 'yqswodnxj',
  PRIMARY KEY (`idgrupo`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1 MIN_ROWS=2340 AVG_ROW_LENGTH=2340 PACK_KEYS=0 ROW_FORMAT=COMPACT COMMENT='InnoDB free: 12288 kB; InnoDB free: 12288 kB; InnoDB free: 1';

-- ----------------------------
-- Records of grupos
-- ----------------------------
INSERT INTO `grupos` VALUES ('1', 'kd', 'd6', 'tx dpto6', 'no', 'e:\\grupos\\d6', 'si', 'si', 'iri', 'si', 'doc', 'enlace tx doc', '600000', '639999', '\\\\MC-SERVER\\e$\\PCI\\Doc D6\\', '\\\\MC-SERVER\\e$\\PCI\\Buzon D6\\', 'Dpto VI', '1', '1', '0', 'si', 'si', 'no', '0', '20000', '30000', null, null, null, '1', '1', 'localhost', '9306', 'root', 'yqswodnxj');

-- ----------------------------
-- Table structure for `tabla de servidores`
-- ----------------------------
DROP TABLE IF EXISTS `tabla de servidores`;
CREATE TABLE `tabla de servidores` (
  `servidor` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`servidor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tabla de servidores
-- ----------------------------
INSERT INTO `tabla de servidores` VALUES ('localhost');

-- ----------------------------
-- Table structure for `tabla de tipos de transmision`
-- ----------------------------
DROP TABLE IF EXISTS `tabla de tipos de transmision`;
CREATE TABLE `tabla de tipos de transmision` (
  `idtipotx` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tipo de transmision` varchar(20) DEFAULT NULL,
  `descripcion` varchar(50) DEFAULT NULL,
  `orden` int(11) DEFAULT NULL,
  `activa` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`idtipotx`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 PACK_KEYS=0 ROW_FORMAT=COMPACT COMMENT='InnoDB free: 12288 kB; InnoDB free: 14336 kB; InnoDB free: 1';

-- ----------------------------
-- Records of tabla de tipos de transmision
-- ----------------------------
INSERT INTO `tabla de tipos de transmision` VALUES ('1', 'CORREO', 'direccion de correo electronico', '1', '1');
INSERT INTO `tabla de tipos de transmision` VALUES ('2', 'FRASE', 'Frase de interes', '2', '1');
INSERT INTO `tabla de tipos de transmision` VALUES ('3', 'DIRIP', 'direccion IP', '3', '1');
INSERT INTO `tabla de tipos de transmision` VALUES ('4', 'TELEFONO', 'telefono', '4', '1');
INSERT INTO `tabla de tipos de transmision` VALUES ('5', 'USERNAME', 'nombre de usuario', '5', '1');
INSERT INTO `tabla de tipos de transmision` VALUES ('6', 'MAC', 'direccion mac', '6', '0');
INSERT INTO `tabla de tipos de transmision` VALUES ('7', 'URL', 'direccion Url', '7', '0');

-- ----------------------------
-- Table structure for `tabla de unidades`
-- ----------------------------
DROP TABLE IF EXISTS `tabla de unidades`;
CREATE TABLE `tabla de unidades` (
  `idunidad` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `unidad` varchar(20) DEFAULT NULL,
  `activo` tinyint(1) DEFAULT NULL,
  `orden` int(11) DEFAULT NULL,
  PRIMARY KEY (`idunidad`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1 COMMENT='InnoDB free: 12288 kB; InnoDB free: 12288 kB';

-- ----------------------------
-- Records of tabla de unidades
-- ----------------------------
INSERT INTO `tabla de unidades` VALUES ('16', 'd6', '1', '1');

-- ----------------------------
-- Table structure for `usuarios`
-- ----------------------------
DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios` (
  `idkt` int(11) NOT NULL AUTO_INCREMENT,
  `kt` varchar(50) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `1erapellido` varchar(20) DEFAULT NULL,
  `2doapellido` varchar(20) DEFAULT NULL,
  `grupo` varchar(20) DEFAULT NULL,
  `unidad` varchar(20) DEFAULT NULL,
  `cargo` varchar(15) DEFAULT NULL,
  `estadousuario` varchar(10) DEFAULT 'OFFLINE',
  `foto` varchar(50) DEFAULT NULL,
  `fotofamiliar` varchar(50) DEFAULT NULL,
  `activo` tinyint(1) unsigned DEFAULT '1',
  `traductor` tinyint(1) unsigned DEFAULT '0',
  `publico` tinyint(1) unsigned DEFAULT '0',
  `quien` varchar(10) DEFAULT NULL,
  `fechaquien` datetime DEFAULT NULL,
  `password` varchar(50) DEFAULT '564312',
  PRIMARY KEY (`idkt`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=184 PACK_KEYS=0 ROW_FORMAT=COMPACT COMMENT='InnoDB free: 9216 kB; InnoDB free: 9216 kB; InnoDB free: 921';

-- ----------------------------
-- Records of usuarios
-- ----------------------------
INSERT INTO `usuarios` VALUES ('2', 'admin', 'administrador', null, null, 'kd', 'd6', 'global', 'OFFLINE', null, null, '1', null, null, null, null, '564312');

-- ----------------------------
-- Table structure for `usuarios cargo`
-- ----------------------------
DROP TABLE IF EXISTS `usuarios cargo`;
CREATE TABLE `usuarios cargo` (
  `idcargo` int(11) NOT NULL AUTO_INCREMENT,
  `cargo` varchar(15) DEFAULT NULL,
  `activo` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`idcargo`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of usuarios cargo
-- ----------------------------
INSERT INTO `usuarios cargo` VALUES ('1', 'usuario', '1');
INSERT INTO `usuarios cargo` VALUES ('2', 'admin', '1');
INSERT INTO `usuarios cargo` VALUES ('4', 'analisis', '1');
INSERT INTO `usuarios cargo` VALUES ('5', 'coas', '1');
INSERT INTO `usuarios cargo` VALUES ('6', 'aplicador', '1');
INSERT INTO `usuarios cargo` VALUES ('7', 'ocic', '1');

-- ----------------------------
-- Table structure for `usuarios estado`
-- ----------------------------
DROP TABLE IF EXISTS `usuarios estado`;
CREATE TABLE `usuarios estado` (
  `idestado` int(11) NOT NULL AUTO_INCREMENT,
  `estado` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`idestado`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of usuarios estado
-- ----------------------------
INSERT INTO `usuarios estado` VALUES ('1', 'OFFLINE');
INSERT INTO `usuarios estado` VALUES ('2', 'ONLINE');

-- ----------------------------
-- Procedure structure for `Del ClavesxGrupos`
-- ----------------------------
DROP PROCEDURE IF EXISTS `Del ClavesxGrupos`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Del ClavesxGrupos`(IN grp varchar(20), IN udad varchar(20))
BEGIN
DELETE FROM `claves` where
     `claves`.grupo = grp and 
     `claves`.unidad = udad;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `Get ClavesxGrupos`
-- ----------------------------
DROP PROCEDURE IF EXISTS `Get ClavesxGrupos`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Get ClavesxGrupos`(IN grp varchar(20), IN udad varchar(20))
BEGIN
select `claves`.chequeo,`claves`.TipoTx  FROM `claves` where
     `claves`.grupo = grp and 
     `claves`.unidad = udad;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `Get Grupos`
-- ----------------------------
DROP PROCEDURE IF EXISTS `Get Grupos`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Get Grupos`()
BEGIN
select * FROM `grupos` where
     `grupos`.activo = 1 and 
     `grupos`.funcionando = 1 ORDER BY `grupos`.orden;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `Ins Claves`
-- ----------------------------
DROP PROCEDURE IF EXISTS `Ins Claves`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Ins Claves`(IN f varchar(30), IN grp varchar(20), IN udad varchar(20), IN cheq varchar(255), IN Tipo varchar(20))
BEGIN
DECLARE id BIGINT DEFAULT (select `claves`.id  FROM `claves` where
     `claves`.chequeo = cheq and 
     `claves`.TipoTx = tipo and 
     `claves`.grupo = mon and
     `claves`.unidad = tipo LIMIT 1);

if id is null
THEN
insert into `claves` (`claves`.fecha,`claves`.grupo,`claves`.unidad,`claves`.tipoTx, `claves`.chequeo  ) values (date(f),grp,udad, tipo, cheq);
END IF;

END
;;
DELIMITER ;
