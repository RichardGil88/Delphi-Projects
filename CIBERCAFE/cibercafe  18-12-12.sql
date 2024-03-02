/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50126
Source Host           : localhost:3306
Source Database       : cibercafe

Target Server Type    : MYSQL
Target Server Version : 50126
File Encoding         : 65001

Date: 2012-12-18 19:49:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `asociacion usuario-nombrepc`
-- ----------------------------
DROP TABLE IF EXISTS `asociacion usuario-nombrepc`;
CREATE TABLE `asociacion usuario-nombrepc` (
  `IdAsociacion` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `usuario` varchar(255) DEFAULT NULL,
  `PcName` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`IdAsociacion`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of asociacion usuario-nombrepc
-- ----------------------------
INSERT INTO `asociacion usuario-nombrepc` VALUES ('13', 'Richard', 'CIBERCAP-PC');

-- ----------------------------
-- Table structure for `cargos`
-- ----------------------------
DROP TABLE IF EXISTS `cargos`;
CREATE TABLE `cargos` (
  `cargos` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of cargos
-- ----------------------------
INSERT INTO `cargos` VALUES ('Usuario');
INSERT INTO `cargos` VALUES ('Admin');
INSERT INTO `cargos` VALUES ('Super Admin');

-- ----------------------------
-- Table structure for `maquinas`
-- ----------------------------
DROP TABLE IF EXISTS `maquinas`;
CREATE TABLE `maquinas` (
  `idMaquinas` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `Ip` varchar(15) DEFAULT '',
  `PcName` varchar(255) DEFAULT '',
  `Ftp` varchar(20) DEFAULT '',
  `DirFTP` varchar(255) DEFAULT '',
  `Activo` tinyint(4) DEFAULT '0',
  `Pantallas` tinyint(4) DEFAULT '0',
  `TiempoPantallas` int(11) DEFAULT '0',
  `Teclado` tinyint(4) DEFAULT '0',
  `TiempoTeclado` int(11) DEFAULT '0',
  `USB` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`idMaquinas`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of maquinas
-- ----------------------------
INSERT INTO `maquinas` VALUES ('0000000026', '192.168.22.128', 'RICHARD_VIRTUAL', '192.168.22.1', 'D:\\FTP\\', '1', '0', '0', '0', '0', '0');
INSERT INTO `maquinas` VALUES ('0000000027', '192.168.22.1', 'RICHARD-LAPTOP', '192.168.22.1', 'D:\\FTP\\', '1', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `servidor ftp`
-- ----------------------------
DROP TABLE IF EXISTS `servidor ftp`;
CREATE TABLE `servidor ftp` (
  `IP Servidor FTP` varchar(50) DEFAULT '',
  `Directorio Servidor FTP` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of servidor ftp
-- ----------------------------
INSERT INTO `servidor ftp` VALUES ('192.168.22.1', 'D:\\FTP\\');

-- ----------------------------
-- Table structure for `tipos de fichero`
-- ----------------------------
DROP TABLE IF EXISTS `tipos de fichero`;
CREATE TABLE `tipos de fichero` (
  `Tipo` varchar(10) DEFAULT NULL,
  `Extención` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tipos de fichero
-- ----------------------------
INSERT INTO `tipos de fichero` VALUES ('Imagen', '.bmp');
INSERT INTO `tipos de fichero` VALUES ('Texto', '.txt');
INSERT INTO `tipos de fichero` VALUES ('USB', '.txt');
INSERT INTO `tipos de fichero` VALUES ('USBInfo', '.txt');

-- ----------------------------
-- Table structure for `tx`
-- ----------------------------
DROP TABLE IF EXISTS `tx`;
CREATE TABLE `tx` (
  `idTx` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `PcName` varchar(100) DEFAULT NULL,
  `Carpeta` varchar(255) DEFAULT NULL,
  `Fichero` varchar(100) DEFAULT NULL,
  `FechaHora` datetime DEFAULT NULL,
  `Tipo` varchar(20) DEFAULT NULL,
  `Descripcion` varchar(20) DEFAULT NULL,
  `Extencion` varchar(20) DEFAULT NULL,
  `Procesado` tinyint(4) DEFAULT '0',
  `Conservar` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`idTx`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tx
-- ----------------------------

-- ----------------------------
-- Table structure for `ubicaciones`
-- ----------------------------
DROP TABLE IF EXISTS `ubicaciones`;
CREATE TABLE `ubicaciones` (
  `Nombre_Pc` varchar(254) DEFAULT NULL,
  `Provincia` varchar(254) DEFAULT NULL,
  `Municipio` varchar(254) DEFAULT NULL,
  `Nombre_CiberCafe` varchar(254) DEFAULT NULL,
  `Posicion_PC` varchar(254) DEFAULT NULL,
  `Descripcion` varchar(254) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ubicaciones
-- ----------------------------
INSERT INTO `ubicaciones` VALUES (null, '1', '2', '3', '4', '5');
INSERT INTO `ubicaciones` VALUES (null, '1', '2', '3', '4', '5');
INSERT INTO `ubicaciones` VALUES (null, '1', '2', '3', '4', '5');
INSERT INTO `ubicaciones` VALUES ('2', '2', '33', '4', '5', '66');

-- ----------------------------
-- Table structure for `unidades`
-- ----------------------------
DROP TABLE IF EXISTS `unidades`;
CREATE TABLE `unidades` (
  `unidad` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of unidades
-- ----------------------------
INSERT INTO `unidades` VALUES ('10');

-- ----------------------------
-- Table structure for `usuarios`
-- ----------------------------
DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios` (
  `usuario` varchar(20) DEFAULT NULL,
  `contraseña` varchar(50) DEFAULT NULL,
  `cargo` varchar(20) DEFAULT NULL,
  `unidad` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of usuarios
-- ----------------------------
INSERT INTO `usuarios` VALUES ('Richard', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'Super Admin', '10');

-- ----------------------------
-- View structure for `contenido`
-- ----------------------------
DROP VIEW IF EXISTS `contenido`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `contenido` AS select `tx`.`idTx` AS `idTx`,`tx`.`Fichero` AS `Fichero`,`tx`.`PcName` AS `PcName`,`tx`.`FechaHora` AS `FechaHora`,`tx`.`Tipo` AS `Tipo`,`tx`.`Descripcion` AS `Descripcion`,`tx`.`Extencion` AS `Extencion`,`tx`.`Procesado` AS `Procesado`,`tx`.`Conservar` AS `Conservar` from ((`asociacion usuario-nombrepc` join `tx` on((`asociacion usuario-nombrepc`.`PcName` = `tx`.`PcName`))) join `usuarios` on((`asociacion usuario-nombrepc`.`usuario` = `usuarios`.`usuario`))) where (`usuarios`.`unidad` = '10') ;
