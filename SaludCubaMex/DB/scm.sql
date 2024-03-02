/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100414
 Source Host           : localhost:3306
 Source Schema         : scm

 Target Server Type    : MySQL
 Target Server Version : 100414
 File Encoding         : 65001

 Date: 17/09/2020 21:42:21
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for  (no por ahora) producto_tipo
-- ----------------------------
DROP TABLE IF EXISTS ` (no por ahora) producto_tipo`;
CREATE TABLE ` (no por ahora) producto_tipo`  (
  `CODIGO` int NOT NULL AUTO_INCREMENT,
  `PRODUCTO` varchar(155) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CODIGO_PRODUCTO` int NULL DEFAULT NULL,
  `TIPO` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`CODIGO`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of  (no por ahora) producto_tipo
-- ----------------------------
INSERT INTO ` (no por ahora) producto_tipo` VALUES (1, 'DIPIRONA', 1, 'MEDICAMENTO');
INSERT INTO ` (no por ahora) producto_tipo` VALUES (2, 'SULFAPRIN', 2, 'MEDICAMENTO');
INSERT INTO ` (no por ahora) producto_tipo` VALUES (3, 'VITAMINA D', 3, 'MEDICAMENTO');
INSERT INTO ` (no por ahora) producto_tipo` VALUES (4, 'PENICILINA', 4, 'MEDICAMENTO');
INSERT INTO ` (no por ahora) producto_tipo` VALUES (5, 'VITAMINA K', 5, 'MEDICAMENTO');
INSERT INTO ` (no por ahora) producto_tipo` VALUES (6, 'KOGRIP', 6, 'MEDICAMENTO');
INSERT INTO ` (no por ahora) producto_tipo` VALUES (7, 'JERINGUILLAS', 1, 'INSUMO');
INSERT INTO ` (no por ahora) producto_tipo` VALUES (8, 'GUANTES', 2, 'INSUMO');
INSERT INTO ` (no por ahora) producto_tipo` VALUES (9, 'ALGODON', 3, 'INSUMO');
INSERT INTO ` (no por ahora) producto_tipo` VALUES (10, 'TURUNDAS', 4, 'INSUMO');

-- ----------------------------
-- Table structure for (no por ahora) venta_de_medicamentos
-- ----------------------------
DROP TABLE IF EXISTS `(no por ahora) venta_de_medicamentos`;
CREATE TABLE `(no por ahora) venta_de_medicamentos`  (
  `CODIGO` int NOT NULL AUTO_INCREMENT,
  `DESCRIPCION` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `PRESENTACION` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `LABORATORIO` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `CANTIDAD` int NULL DEFAULT NULL,
  `PRECIO` int NULL DEFAULT NULL,
  `PRECIO TOTAL` int NULL DEFAULT NULL,
  `LOTE` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `FECHA_DE_VENCIMIENTO` date NULL DEFAULT NULL,
  `ENTRADA` int NULL DEFAULT NULL,
  `VENDEDOR` varchar(11) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `FECHA_DE_VENTA` date NULL DEFAULT NULL,
  `HORA_DE_VENTA` time(0) NULL DEFAULT NULL,
  PRIMARY KEY (`CODIGO`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of (no por ahora) venta_de_medicamentos
-- ----------------------------

-- ----------------------------
-- Table structure for cargos
-- ----------------------------
DROP TABLE IF EXISTS `cargos`;
CREATE TABLE `cargos`  (
  `CODIGO` int NOT NULL AUTO_INCREMENT,
  `CARGOS` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`CODIGO`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cargos
-- ----------------------------
INSERT INTO `cargos` VALUES (1, 'DIRECTOR MEDICO');
INSERT INTO `cargos` VALUES (2, 'DIRECTOR ADMINISTRATIVO');
INSERT INTO `cargos` VALUES (3, 'DOCTOR');
INSERT INTO `cargos` VALUES (4, 'RECEPCIONISTA');
INSERT INTO `cargos` VALUES (5, 'FARMACEUTICO');
INSERT INTO `cargos` VALUES (6, 'ESTOMATOLOGO');

-- ----------------------------
-- Table structure for citas
-- ----------------------------
DROP TABLE IF EXISTS `citas`;
CREATE TABLE `citas`  (
  `CODIGO` int NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `TELEFONO` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `MOTIVO` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ESTADO` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `FECHA_CITA` date NULL DEFAULT NULL,
  `FECHA_CONFIRMACION` date NULL DEFAULT NULL,
  `HORA_INICIO` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `HORA_FIN` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `MEDICO_ASIGNADO` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `RECEPCIONISTA` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`CODIGO`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of citas
-- ----------------------------
INSERT INTO `citas` VALUES (4, 'ASDASD', '346745674578456784787', 'OPERACIONES', 'NO CONFIRMADA', '2017-12-11', NULL, '8:40 AM', '9:00 AM', 'ANGELA MARIA MONTEJO MESA', 'ANGELA MARIA MONTEJO MESA');

-- ----------------------------
-- Table structure for citas_historial
-- ----------------------------
DROP TABLE IF EXISTS `citas_historial`;
CREATE TABLE `citas_historial`  (
  `CODIGO` int NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `TELEFONO` int NULL DEFAULT NULL,
  `MOTIVO` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ESTADO` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `FECHA_CITA` date NULL DEFAULT NULL,
  `FECHA_CONFIRMACION` date NULL DEFAULT NULL,
  `HORA_INICIO` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `HORA_FIN` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `MEDICO_ASIGNADO` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `RECEPCIONISTA` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`CODIGO`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of citas_historial
-- ----------------------------

-- ----------------------------
-- Table structure for cod_categorias
-- ----------------------------
DROP TABLE IF EXISTS `cod_categorias`;
CREATE TABLE `cod_categorias`  (
  `CODIGO` int NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`CODIGO`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cod_categorias
-- ----------------------------
INSERT INTO `cod_categorias` VALUES (1, 'HIPERTENSION');
INSERT INTO `cod_categorias` VALUES (2, 'DIABETES');
INSERT INTO `cod_categorias` VALUES (3, 'CARDIOLOGIA');
INSERT INTO `cod_categorias` VALUES (4, 'ANTIRREUMATICOS');
INSERT INTO `cod_categorias` VALUES (5, 'ESTEROIDES');
INSERT INTO `cod_categorias` VALUES (6, 'ANTIPIRETICOS');
INSERT INTO `cod_categorias` VALUES (7, 'ANTIBIOTICOS');
INSERT INTO `cod_categorias` VALUES (8, 'OVULOS');
INSERT INTO `cod_categorias` VALUES (9, 'CREMAS');
INSERT INTO `cod_categorias` VALUES (10, 'GOTAS NASALES');
INSERT INTO `cod_categorias` VALUES (11, 'GOTAS OTICAS');
INSERT INTO `cod_categorias` VALUES (12, 'GOTAS OFTALMICAS');
INSERT INTO `cod_categorias` VALUES (13, 'GASTRITIS Y ULCERAS');
INSERT INTO `cod_categorias` VALUES (14, 'COLITIS');
INSERT INTO `cod_categorias` VALUES (15, 'HIPERURICEMIA');
INSERT INTO `cod_categorias` VALUES (16, 'HIPOLIPEMIANTES');

-- ----------------------------
-- Table structure for cod_citas_estados
-- ----------------------------
DROP TABLE IF EXISTS `cod_citas_estados`;
CREATE TABLE `cod_citas_estados`  (
  `CODIGO` int NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`CODIGO`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cod_citas_estados
-- ----------------------------
INSERT INTO `cod_citas_estados` VALUES (1, 'CONFIRMADA');
INSERT INTO `cod_citas_estados` VALUES (2, 'NO CONFIRMADA');
INSERT INTO `cod_citas_estados` VALUES (3, 'CANCELADA');
INSERT INTO `cod_citas_estados` VALUES (4, 'ATENDIDA');

-- ----------------------------
-- Table structure for cod_citas_motivos
-- ----------------------------
DROP TABLE IF EXISTS `cod_citas_motivos`;
CREATE TABLE `cod_citas_motivos`  (
  `CODIGO` int NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`CODIGO`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cod_citas_motivos
-- ----------------------------
INSERT INTO `cod_citas_motivos` VALUES (1, '1RA CONSULTA');
INSERT INTO `cod_citas_motivos` VALUES (2, 'SEGUIMIENTO');
INSERT INTO `cod_citas_motivos` VALUES (3, 'OPERACIONES');
INSERT INTO `cod_citas_motivos` VALUES (4, 'APLICACIONES');
INSERT INTO `cod_citas_motivos` VALUES (5, 'INTERCONSULTAS');

-- ----------------------------
-- Table structure for cod_estados_civiles
-- ----------------------------
DROP TABLE IF EXISTS `cod_estados_civiles`;
CREATE TABLE `cod_estados_civiles`  (
  `CODIGO` int NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`CODIGO`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cod_estados_civiles
-- ----------------------------
INSERT INTO `cod_estados_civiles` VALUES (1, 'SOLTERO/A');
INSERT INTO `cod_estados_civiles` VALUES (2, 'CASADO/A');
INSERT INTO `cod_estados_civiles` VALUES (3, 'VIUDO/A');
INSERT INTO `cod_estados_civiles` VALUES (4, 'DIVORCIADO/A');

-- ----------------------------
-- Table structure for cod_tipo_de_sangre
-- ----------------------------
DROP TABLE IF EXISTS `cod_tipo_de_sangre`;
CREATE TABLE `cod_tipo_de_sangre`  (
  `CODIGO` int NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`CODIGO`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cod_tipo_de_sangre
-- ----------------------------
INSERT INTO `cod_tipo_de_sangre` VALUES (1, 'A');
INSERT INTO `cod_tipo_de_sangre` VALUES (2, 'B');
INSERT INTO `cod_tipo_de_sangre` VALUES (3, 'O');
INSERT INTO `cod_tipo_de_sangre` VALUES (4, 'AB');
INSERT INTO `cod_tipo_de_sangre` VALUES (5, 'DESCONOCIDO');

-- ----------------------------
-- Table structure for doctores
-- ----------------------------
DROP TABLE IF EXISTS `doctores`;
CREATE TABLE `doctores`  (
  `CODIGO` int NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `TELEFONO` int NULL DEFAULT NULL,
  `EMAIL` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `DIRECCION` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ESPECIALIDADES` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`CODIGO`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of doctores
-- ----------------------------
INSERT INTO `doctores` VALUES (1, 'ANGELA MARIA MONTEJO MESA', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for horarios
-- ----------------------------
DROP TABLE IF EXISTS `horarios`;
CREATE TABLE `horarios`  (
  `CODIGO` int NOT NULL AUTO_INCREMENT,
  `HORA_INICIO` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `HORA_FIN` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`CODIGO`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 46 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of horarios
-- ----------------------------
INSERT INTO `horarios` VALUES (1, '8:00 AM', '8:20 AM');
INSERT INTO `horarios` VALUES (2, '8:20 AM', '8:40 AM');
INSERT INTO `horarios` VALUES (3, '8:40 AM', '9:00 AM');
INSERT INTO `horarios` VALUES (4, '9:00 AM', '9:20 AM');
INSERT INTO `horarios` VALUES (5, '9:20 AM', '9:40 AM');
INSERT INTO `horarios` VALUES (6, '9:40 AM', '10:00 AM');
INSERT INTO `horarios` VALUES (7, '10:00 AM', '10:20 AM');
INSERT INTO `horarios` VALUES (8, '10:20 AM', '10:40 AM');
INSERT INTO `horarios` VALUES (9, '10:40 AM', '11:00 AM');
INSERT INTO `horarios` VALUES (10, '11:00 AM', '11:20 AM');
INSERT INTO `horarios` VALUES (11, '11:20 AM', '11:40 AM');
INSERT INTO `horarios` VALUES (12, '11:40 AM', '12:00 PM');
INSERT INTO `horarios` VALUES (13, '12:00 PM', '12:20 PM');
INSERT INTO `horarios` VALUES (14, '12:20 PM', '12:40 PM');
INSERT INTO `horarios` VALUES (15, '12:40 PM', '1:00 PM');
INSERT INTO `horarios` VALUES (16, '1:00 PM', '1:20 PM');
INSERT INTO `horarios` VALUES (17, '1:20 PM', '1:40 PM');
INSERT INTO `horarios` VALUES (18, '1:40 PM', '2:00 PM');
INSERT INTO `horarios` VALUES (19, '2:00 PM', '2:20 PM');
INSERT INTO `horarios` VALUES (20, '2:20 PM', '2:40 PM');
INSERT INTO `horarios` VALUES (21, '2:40 PM', '3:00 PM');
INSERT INTO `horarios` VALUES (22, '3:00 PM', '3:20 PM');
INSERT INTO `horarios` VALUES (23, '3:20 PM', '3:40 PM');
INSERT INTO `horarios` VALUES (24, '3:40 PM', '4:00 PM');
INSERT INTO `horarios` VALUES (25, '4:00 PM', '4:20 PM');
INSERT INTO `horarios` VALUES (26, '4:20 PM', '4:40 PM');
INSERT INTO `horarios` VALUES (27, '4:40 PM', '5:00 PM');
INSERT INTO `horarios` VALUES (28, '5:00 PM', '5:20 PM');
INSERT INTO `horarios` VALUES (29, '5:20 PM', '5:40 PM');
INSERT INTO `horarios` VALUES (30, '5:40 PM', '6:00 PM');
INSERT INTO `horarios` VALUES (31, '6:00 PM', '6:20 PM');
INSERT INTO `horarios` VALUES (32, '6:20 PM', '6:40 PM');
INSERT INTO `horarios` VALUES (33, '6:40 PM', '7:00 PM');
INSERT INTO `horarios` VALUES (34, '7:00 PM', '7:20 PM');
INSERT INTO `horarios` VALUES (35, '7:20 PM', '7:40 PM');
INSERT INTO `horarios` VALUES (36, '7:40 PM', '8:00 PM');
INSERT INTO `horarios` VALUES (37, '8:00 PM', '8:20 PM');
INSERT INTO `horarios` VALUES (38, '8:20 PM', '8:40 PM');
INSERT INTO `horarios` VALUES (39, '8:40 PM', '9:00 PM');
INSERT INTO `horarios` VALUES (40, '9:00 PM', '9:20 PM');
INSERT INTO `horarios` VALUES (41, '9:20 PM', '9:40 PM');
INSERT INTO `horarios` VALUES (42, '9:40 PM', '10:00 PM');
INSERT INTO `horarios` VALUES (43, '10:00 PM', '10:20 PM');
INSERT INTO `horarios` VALUES (44, '10:20 PM', '10:40 PM');
INSERT INTO `horarios` VALUES (45, '10:40 PM', '11:00 PM');

-- ----------------------------
-- Table structure for insumos
-- ----------------------------
DROP TABLE IF EXISTS `insumos`;
CREATE TABLE `insumos`  (
  `CODIGO` int NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`CODIGO`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of insumos
-- ----------------------------
INSERT INTO `insumos` VALUES (1, 'JERINGUILLAS');
INSERT INTO `insumos` VALUES (2, 'GUANTES');
INSERT INTO `insumos` VALUES (3, 'ALGODON');
INSERT INTO `insumos` VALUES (5, 'TORUNDAS');

-- ----------------------------
-- Table structure for laboratorios
-- ----------------------------
DROP TABLE IF EXISTS `laboratorios`;
CREATE TABLE `laboratorios`  (
  `CODIGO` int NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `TELEFONO` int NULL DEFAULT NULL,
  `EMAIL` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `DIRECCION` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `DESCRIPCION` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`CODIGO`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of laboratorios
-- ----------------------------
INSERT INTO `laboratorios` VALUES (1, 'BAYER', NULL, NULL, NULL, '');
INSERT INTO `laboratorios` VALUES (2, 'ABBOT', NULL, NULL, NULL, '');
INSERT INTO `laboratorios` VALUES (3, 'LABIOMED', NULL, NULL, NULL, '');

-- ----------------------------
-- Table structure for medicamentos
-- ----------------------------
DROP TABLE IF EXISTS `medicamentos`;
CREATE TABLE `medicamentos`  (
  `CODIGO` int NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `CATEGORIA` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `PRESENTACION` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `TIEMPO` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `DOSIS` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`CODIGO`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of medicamentos
-- ----------------------------
INSERT INTO `medicamentos` VALUES (1, 'DIPIRONA', NULL, NULL, NULL, NULL);
INSERT INTO `medicamentos` VALUES (2, 'SULFAPRIN', NULL, NULL, NULL, NULL);
INSERT INTO `medicamentos` VALUES (3, 'VITAMINA D', NULL, NULL, NULL, NULL);
INSERT INTO `medicamentos` VALUES (4, 'PENICILINA', NULL, NULL, NULL, NULL);
INSERT INTO `medicamentos` VALUES (5, 'VITAMINA K', NULL, NULL, NULL, NULL);
INSERT INTO `medicamentos` VALUES (6, 'KOGRIP', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for pacientes
-- ----------------------------
DROP TABLE IF EXISTS `pacientes`;
CREATE TABLE `pacientes`  (
  `CODIGO` int NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PRIMER_APELLIDO` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `SEGUNDO_APELLIDO` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `TELEFONOS` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `CORREO` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `DIRECCION` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `SEXO` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ESCOLARIDAD` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ESTADO_CIVIL` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `OCUPACION` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `COMENTARIOS` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `FECHA_DE_CREADO` date NULL DEFAULT NULL,
  `MEDICO` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`CODIGO`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of pacientes
-- ----------------------------
INSERT INTO `pacientes` VALUES (5, 'R', 'R', '5', 'XCV', 'XCV', 'XCV', 'M', 'XCV', 'SOLTERO/A', 'XCV', 'CVXCV', '2020-09-10', 'ANGELA MARIA MONTEJO MESA');

-- ----------------------------
-- Table structure for pacientes_consultas
-- ----------------------------
DROP TABLE IF EXISTS `pacientes_consultas`;
CREATE TABLE `pacientes_consultas`  (
  `CODIGO` int NOT NULL AUTO_INCREMENT,
  `CODIGO_PACIENTE` int NULL DEFAULT NULL,
  `NOMBRE` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PRIMER_APELLIDO` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `SEGUNDO_APELLIDO` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `TIPO` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `EDAD` int NULL DEFAULT NULL,
  `MOTIVO_DE_CONSULTA` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `HISTORIA_DE_LA_ENFERMEDAD_ACTUAL` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `SEXO` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PULSO` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `TEMPERATURA` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `TA` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PESO` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `TALLA` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `IMC` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `DATOS_POSITIVOS_EXAMEN_FISICO` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ESTUDIOS_COMPLEMENTARIOS` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `IMPRESION_DIAGNOSTICA` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `TRATAMIENTO` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `OBSERVACIONES` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `TABAQUISMO` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ALCOHOLISMO` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `TIPO_DE_SANGRE` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `RH` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `APP` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `APF` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ALERGIAS` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `DOCTOR` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `FECHA` date NULL DEFAULT NULL,
  PRIMARY KEY (`CODIGO`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of pacientes_consultas
-- ----------------------------

-- ----------------------------
-- Table structure for pacientes_insumos
-- ----------------------------
DROP TABLE IF EXISTS `pacientes_insumos`;
CREATE TABLE `pacientes_insumos`  (
  `CODIGO` int NOT NULL AUTO_INCREMENT,
  `CODIGO_PRODUCTO` int NULL DEFAULT NULL,
  `CODIGO_PACIENTE` int NULL DEFAULT NULL,
  `NOMBRE` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `TIPO` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PROVEEDOR` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PRESENTACION` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `LABORATORIO` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `LOTE` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PRECIO_VENTA_POR_UNIDAD` int NULL DEFAULT NULL,
  `FECHA` date NULL DEFAULT NULL,
  `DOCTOR` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`CODIGO`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of pacientes_insumos
-- ----------------------------

-- ----------------------------
-- Table structure for pacientes_laboratorios
-- ----------------------------
DROP TABLE IF EXISTS `pacientes_laboratorios`;
CREATE TABLE `pacientes_laboratorios`  (
  `CODIGO` int NOT NULL AUTO_INCREMENT,
  `CODIGO_PACIENTE` int NULL DEFAULT NULL,
  `NOMBRE` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PRIMER_APELLIDO` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `SEGUNDO_APELLIDO` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `TIPO` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `EXAMEN_REALIZADO` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `FECHA` date NULL DEFAULT NULL,
  `RESULTADO` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `DOCTOR` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`CODIGO`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of pacientes_laboratorios
-- ----------------------------
INSERT INTO `pacientes_laboratorios` VALUES (2, 2, 'DAYRIS', 'RODRIGUEZ', 'GIL', 'LABORATORIO', 'SANGRE', '2017-12-31', 'OK', 'ANGELA MARIA MONTEJO MESA');

-- ----------------------------
-- Table structure for pacientes_recetas
-- ----------------------------
DROP TABLE IF EXISTS `pacientes_recetas`;
CREATE TABLE `pacientes_recetas`  (
  `CODIGO` int NOT NULL AUTO_INCREMENT,
  `CODIGO_PACIENTE` int NULL DEFAULT NULL,
  `NOMBRE` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PRIMER_APELLIDO` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `SEGUNDO_APELLIDO` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `TIPO` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `SEXO` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PESO` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `TALLA` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `TA` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `TEMPERATURA` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `RECOMENDACIONES` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `FECHA` date NULL DEFAULT NULL,
  `DOCTOR` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `EDAD` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`CODIGO`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of pacientes_recetas
-- ----------------------------
INSERT INTO `pacientes_recetas` VALUES (17, 2, 'DAYRIS', 'RODRIGUEZ', 'GIL', 'RECETA', 'F', '114 LB', '1.70', '120 80', '36', 'HACER TODO', '2017-12-18', 'ANGELA MARIA MONTEJO MESA', '29');
INSERT INTO `pacientes_recetas` VALUES (18, 2, 'DAYRIS', 'RODRIGUEZ', 'GIL', 'RECETA', 'F', '114 LB', '1.70', '120 80', '36', 'QQ1', '2017-12-18', 'ANGELA MARIA MONTEJO MESA', '29');

-- ----------------------------
-- Table structure for pacientes_recetas_medicamentos
-- ----------------------------
DROP TABLE IF EXISTS `pacientes_recetas_medicamentos`;
CREATE TABLE `pacientes_recetas_medicamentos`  (
  `CODIGO` int NOT NULL AUTO_INCREMENT,
  `CODIGO_RECETA` int NULL DEFAULT NULL,
  `MEDICAMENTO` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PRESENTACION` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `DOSIS` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`CODIGO`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of pacientes_recetas_medicamentos
-- ----------------------------
INSERT INTO `pacientes_recetas_medicamentos` VALUES (31, 17, 'AS', 'AS', 'AS');
INSERT INTO `pacientes_recetas_medicamentos` VALUES (32, 17, 'DIPIRONA', 'TABLETA', '1 AL DIA');
INSERT INTO `pacientes_recetas_medicamentos` VALUES (33, 17, 'KOGRIP', 'TABLETA', '1 AL DIA');
INSERT INTO `pacientes_recetas_medicamentos` VALUES (34, 18, 'QQ2', 'QQ3', 'QQ4');
INSERT INTO `pacientes_recetas_medicamentos` VALUES (37, 20, 'SS', 'SS', 'SS');

-- ----------------------------
-- Table structure for pacientes_recetas_medicamentos_temp
-- ----------------------------
DROP TABLE IF EXISTS `pacientes_recetas_medicamentos_temp`;
CREATE TABLE `pacientes_recetas_medicamentos_temp`  (
  `CODIGO` int NOT NULL AUTO_INCREMENT,
  `CODIGO_RECETA` int NULL DEFAULT NULL,
  `MEDICAMENTO` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PRESENTACION` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `DOSIS` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`CODIGO`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of pacientes_recetas_medicamentos_temp
-- ----------------------------

-- ----------------------------
-- Table structure for pacientes_servicios
-- ----------------------------
DROP TABLE IF EXISTS `pacientes_servicios`;
CREATE TABLE `pacientes_servicios`  (
  `CODIGO` int NOT NULL AUTO_INCREMENT,
  `CODIGO_PACIENTE` int NULL DEFAULT NULL,
  `NOMBRE` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PRIMER_APELLIDO` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `SEGUNDO_APELLIDO` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `SERVICIO` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PRECIO_VENTA` int NULL DEFAULT NULL,
  `TIPO` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `FECHA` date NULL DEFAULT NULL,
  `DOCTOR` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`CODIGO`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of pacientes_servicios
-- ----------------------------
INSERT INTO `pacientes_servicios` VALUES (11, 5, 'R', 'R', '5', 'ULTRASONIDO', 600, 'SERVICIO', '2020-09-11', 'ANGELA MARIA MONTEJO MESA');
INSERT INTO `pacientes_servicios` VALUES (12, 5, 'R', 'R', '5', 'ANALISIS', 200, 'SERVICIO', '2020-09-11', 'ANGELA MARIA MONTEJO MESA');
INSERT INTO `pacientes_servicios` VALUES (13, 5, 'R', 'R', '5', 'INYECCION', 800, 'SERVICIO', '2020-09-17', 'ANGELA MARIA MONTEJO MESA');
INSERT INTO `pacientes_servicios` VALUES (14, 5, 'R', 'R', '5', 'INYECCION', 88, 'SERVICIO', '2020-09-17', 'ANGELA MARIA MONTEJO MESA');

-- ----------------------------
-- Table structure for presentacion
-- ----------------------------
DROP TABLE IF EXISTS `presentacion`;
CREATE TABLE `presentacion`  (
  `CODIGO` int NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`CODIGO`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of presentacion
-- ----------------------------
INSERT INTO `presentacion` VALUES (1, 'TABLETAS');
INSERT INTO `presentacion` VALUES (2, 'FRASCO');
INSERT INTO `presentacion` VALUES (3, 'SUPOSITORIOS');
INSERT INTO `presentacion` VALUES (4, 'JARABE');
INSERT INTO `presentacion` VALUES (5, 'CREMA');
INSERT INTO `presentacion` VALUES (6, 'ÁMPULAS');
INSERT INTO `presentacion` VALUES (7, 'SOBRES');
INSERT INTO `presentacion` VALUES (8, 'EMULSIÓN');
INSERT INTO `presentacion` VALUES (9, 'GEL');
INSERT INTO `presentacion` VALUES (10, 'AEROSOL');
INSERT INTO `presentacion` VALUES (11, 'CAPSULAS');

-- ----------------------------
-- Table structure for productos_en_almacen
-- ----------------------------
DROP TABLE IF EXISTS `productos_en_almacen`;
CREATE TABLE `productos_en_almacen`  (
  `CODIGO` int NOT NULL AUTO_INCREMENT,
  `CODIGO_PRODUCTO` int NULL DEFAULT NULL,
  `NOMBRE` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `TIPO` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `PROVEEDOR` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `PRESENTACION` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `LABORATORIO` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `LOTE` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ENTRADA` int NULL DEFAULT NULL,
  `FECHA_DE_ENTRADA` date NULL DEFAULT NULL,
  `SALIDA` int NULL DEFAULT NULL,
  `FECHA_DE_SALIDA` date NULL DEFAULT NULL,
  `EXISTENCIA` int NULL DEFAULT NULL,
  `PRECIO_COSTO_POR_UNIDAD` int NULL DEFAULT NULL,
  `PRECIO_VENTA_POR_UNIDAD` int NULL DEFAULT NULL,
  `FECHA_DE_VENCIMIENTO` date NULL DEFAULT NULL,
  `OPERACION` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `FECHA_DE_LA_OPERACION` date NULL DEFAULT NULL,
  `ULTIMO_REG` int NULL DEFAULT 0,
  PRIMARY KEY (`CODIGO`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of productos_en_almacen
-- ----------------------------
INSERT INTO `productos_en_almacen` VALUES (1, 3, 'ALGODON', 'INSUMO', 'OMED', 'FRASCO', 'ABBOT', '55', 555, '2017-12-13', 0, NULL, NULL, 55, 66, '2017-12-13', 'ENTRADA', '2017-12-13', 0);
INSERT INTO `productos_en_almacen` VALUES (2, 3, 'ALGODON', 'INSUMO', 'OMED', 'FRASCO', 'ABBOT', '55', 0, '2017-12-13', 8, '2017-12-13', NULL, 55, 66, '2017-12-13', 'SALIDA', '2017-12-13', 0);

-- ----------------------------
-- Table structure for productos_en_almacen_historial
-- ----------------------------
DROP TABLE IF EXISTS `productos_en_almacen_historial`;
CREATE TABLE `productos_en_almacen_historial`  (
  `CODIGO` int NOT NULL AUTO_INCREMENT,
  `CODIGO_PRODUCTO` int NULL DEFAULT NULL,
  `NOMBRE` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `TIPO` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `PROVEEDOR` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `PRESENTACION` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `LABORATORIO` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `LOTE` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ENTRADA` int NULL DEFAULT NULL,
  `FECHA_DE_ENTRADA` date NULL DEFAULT NULL,
  `SALIDA` int NULL DEFAULT NULL,
  `FECHA_DE_SALIDA` date NULL DEFAULT NULL,
  `PRECIO_COSTO_POR_UNIDAD` int NULL DEFAULT NULL,
  `PRECIO_VENTA_POR_UNIDAD` int NULL DEFAULT NULL,
  `FECHA_DE_VENCIMIENTO` date NULL DEFAULT NULL,
  `OPERACION` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `FECHA_DE_LA_OPERACION` date NULL DEFAULT NULL,
  PRIMARY KEY (`CODIGO`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of productos_en_almacen_historial
-- ----------------------------

-- ----------------------------
-- Table structure for productos_en_consulta
-- ----------------------------
DROP TABLE IF EXISTS `productos_en_consulta`;
CREATE TABLE `productos_en_consulta`  (
  `CODIGO` int NOT NULL AUTO_INCREMENT,
  `CODIGO_PRODUCTO` int NULL DEFAULT NULL,
  `CODIGO_PACIENTE` int NULL DEFAULT NULL,
  `NOMBRE` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `TIPO` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PROVEEDOR` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PRESENTACION` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `LABORATORIO` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `LOTE` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `FECHA_DE_VENCIMIENTO` date NULL DEFAULT NULL,
  `ENTRADA` int NULL DEFAULT NULL,
  `FECHA_DE_ENTRADA` date NULL DEFAULT NULL,
  `SALIDA` int NULL DEFAULT NULL,
  `FECHA_DE_SALIDA` date NULL DEFAULT NULL,
  `PRECIO_COSTO_POR_UNIDAD` int NULL DEFAULT NULL,
  `PRECIO_VENTA_POR_UNIDAD` int NULL DEFAULT NULL,
  `OPERACION` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `FECHA_DE_LA_OPERACION` date NULL DEFAULT NULL,
  PRIMARY KEY (`CODIGO`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of productos_en_consulta
-- ----------------------------
INSERT INTO `productos_en_consulta` VALUES (1, 3, NULL, 'ALGODON', 'INSUMO', 'OMED', 'FRASCO', 'ABBOT', '55', '2017-12-13', 8, '2017-12-13', 0, NULL, 66, 55, 'ENTRADA', '2017-12-13');

-- ----------------------------
-- Table structure for productos_en_consulta_historial
-- ----------------------------
DROP TABLE IF EXISTS `productos_en_consulta_historial`;
CREATE TABLE `productos_en_consulta_historial`  (
  `CODIGO` int NOT NULL AUTO_INCREMENT,
  `CODIGO_PRODUCTO` int NULL DEFAULT NULL,
  `CODIGO_PACIENTE` int NULL DEFAULT NULL,
  `NOMBRE` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `TIPO` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PROVEEDOR` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PRESENTACION` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `LABORATORIO` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `LOTE` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `FECHA_DE_VENCIMIENTO` date NULL DEFAULT NULL,
  `ENTRADA` int NULL DEFAULT NULL,
  `FECHA_DE_ENTRADA` date NULL DEFAULT NULL,
  `SALIDA` int NULL DEFAULT NULL,
  `FECHA_DE_SALIDA` date NULL DEFAULT NULL,
  `PRECIO_COSTO_POR_UNIDAD` int NULL DEFAULT NULL,
  `PRECIO_VENTA_POR_UNIDAD` int NULL DEFAULT NULL,
  `OPERACION` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `FECHA_DE_LA_OPERACION` date NULL DEFAULT NULL,
  PRIMARY KEY (`CODIGO`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of productos_en_consulta_historial
-- ----------------------------

-- ----------------------------
-- Table structure for productos_en_farmacia
-- ----------------------------
DROP TABLE IF EXISTS `productos_en_farmacia`;
CREATE TABLE `productos_en_farmacia`  (
  `CODIGO` int NOT NULL AUTO_INCREMENT,
  `CODIGO_MEDICAMENTO` int NULL DEFAULT NULL,
  `NOMBRE` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `TIPO` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `LOTE` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `PRESENTACION` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `LABORATORIO` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `PROVEEDOR` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `EXISTENCIA` int NULL DEFAULT NULL,
  `FECHA_DE_VENCIMIENTO` date NULL DEFAULT NULL,
  `PRECIO_COSTO_POR_UNIDAD` int NULL DEFAULT NULL,
  `PRECIO_VENTA_POR_UNIDAD` int NULL DEFAULT NULL,
  `ENTRADA` int NULL DEFAULT NULL,
  `FECHA_DE_ENTRADA` date NULL DEFAULT NULL,
  `SALIDA` int NULL DEFAULT NULL,
  `FECHA_DE_SALIDA` date NULL DEFAULT NULL,
  `VENDEDOR` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `OPERACION` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `FECHA_DE_LA_OPERACION` date NULL DEFAULT NULL,
  `ULTIMO_REG` int NULL DEFAULT 0,
  PRIMARY KEY (`CODIGO`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of productos_en_farmacia
-- ----------------------------

-- ----------------------------
-- Table structure for productos_en_farmacia_historial
-- ----------------------------
DROP TABLE IF EXISTS `productos_en_farmacia_historial`;
CREATE TABLE `productos_en_farmacia_historial`  (
  `CODIGO` int NOT NULL AUTO_INCREMENT,
  `CODIGO_MEDICAMENTO` int NULL DEFAULT NULL,
  `NOMBRE` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `TIPO` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `PROVEEDOR` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `PRESENTACION` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `LABORATORIO` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `LOTE` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ENTRADA` int NULL DEFAULT NULL,
  `FECHA_DE_ENTRADA` date NULL DEFAULT NULL,
  `SALIDA` int NULL DEFAULT NULL,
  `FECHA_DE_SALIDA` date NULL DEFAULT NULL,
  `PRECIO_COSTO_POR_UNIDAD` int NULL DEFAULT NULL,
  `PRECIO_VENTA_POR_UNIDAD` int NULL DEFAULT NULL,
  `FECHA_DE_VENCIMIENTO` date NULL DEFAULT NULL,
  `OPERACION` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `FECHA_DE_LA_OPERACION` date NULL DEFAULT NULL,
  PRIMARY KEY (`CODIGO`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of productos_en_farmacia_historial
-- ----------------------------

-- ----------------------------
-- Table structure for productos_vencimiento_almacen
-- ----------------------------
DROP TABLE IF EXISTS `productos_vencimiento_almacen`;
CREATE TABLE `productos_vencimiento_almacen`  (
  `CODIGO` int NOT NULL AUTO_INCREMENT,
  `CODIGO_ALMACEN` int NULL DEFAULT NULL,
  `CODIGO_PRODUCTO` int NULL DEFAULT NULL,
  `NOMBRE` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `TIPO` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PROVEEDOR` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PRESENTACION` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `LABORATORIO` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `LOTE` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `EXISTENCIA` int NULL DEFAULT NULL,
  `FECHA_DE_VENCIMIENTO` date NULL DEFAULT NULL,
  `PRECIO_VENTA_POR_UNIDAD` int NULL DEFAULT NULL,
  `PRECIO_COSTO_POR_UNIDAD` int NULL DEFAULT NULL,
  PRIMARY KEY (`CODIGO`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of productos_vencimiento_almacen
-- ----------------------------
INSERT INTO `productos_vencimiento_almacen` VALUES (1, NULL, 3, 'ALGODON', 'INSUMO', 'OMED', 'FRASCO', 'ABBOT', '55', NULL, '2017-12-13', 66, 55);

-- ----------------------------
-- Table structure for productos_vencimiento_consulta
-- ----------------------------
DROP TABLE IF EXISTS `productos_vencimiento_consulta`;
CREATE TABLE `productos_vencimiento_consulta`  (
  `CODIGO` int NOT NULL AUTO_INCREMENT,
  `CODIGO_PRODUCTO` int NULL DEFAULT NULL,
  `NOMBRE` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `TIPO` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PROVEEDOR` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PRESENTACION` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `LABORATORIO` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `LOTE` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `FECHA_DE_VENCIMIENTO` date NULL DEFAULT NULL,
  `PRECIO_VENTA_POR_UNIDAD` int NULL DEFAULT NULL,
  `PRECIO_COSTO_POR_UNIDAD` int NULL DEFAULT NULL,
  PRIMARY KEY (`CODIGO`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of productos_vencimiento_consulta
-- ----------------------------
INSERT INTO `productos_vencimiento_consulta` VALUES (1, 3, 'ALGODON', 'INSUMO', 'OMED', 'FRASCO', 'ABBOT', '55', '2017-12-13', 66, 55);

-- ----------------------------
-- Table structure for productos_vencimiento_farmacia
-- ----------------------------
DROP TABLE IF EXISTS `productos_vencimiento_farmacia`;
CREATE TABLE `productos_vencimiento_farmacia`  (
  `CODIGO` int NOT NULL AUTO_INCREMENT,
  `CODIGO_PRODUCTO` int NULL DEFAULT NULL,
  `NOMBRE` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `TIPO` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `LOTE` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PRESENTACION` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `LABORATORIO` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PROVEEDOR` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `EXISTENCIA` int NULL DEFAULT NULL,
  `FECHA_DE_VENCIMIENTO` date NULL DEFAULT NULL,
  `PRECIO_VENTA_POR_UNIDAD` int NULL DEFAULT NULL,
  `PRECIO_COSTO_POR_UNIDAD` int NULL DEFAULT NULL,
  PRIMARY KEY (`CODIGO`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of productos_vencimiento_farmacia
-- ----------------------------

-- ----------------------------
-- Table structure for proveedores
-- ----------------------------
DROP TABLE IF EXISTS `proveedores`;
CREATE TABLE `proveedores`  (
  `CODIGO` int NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `TELEFONO` int NULL DEFAULT NULL,
  `EMAIL` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `DIRECCION` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `DESCRIPCION` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`CODIGO`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of proveedores
-- ----------------------------
INSERT INTO `proveedores` VALUES (1, 'IMED', NULL, NULL, NULL, NULL);
INSERT INTO `proveedores` VALUES (2, 'OMED', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for servicios
-- ----------------------------
DROP TABLE IF EXISTS `servicios`;
CREATE TABLE `servicios`  (
  `CODIGO` int NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `PRECIO_DE_VENTA` int NULL DEFAULT NULL,
  PRIMARY KEY (`CODIGO`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of servicios
-- ----------------------------
INSERT INTO `servicios` VALUES (1, 'INYECCION', 10);
INSERT INTO `servicios` VALUES (2, 'ULTRASONIDO', 11);
INSERT INTO `servicios` VALUES (3, 'RX', 12);
INSERT INTO `servicios` VALUES (4, 'ANALISIS', 13);
INSERT INTO `servicios` VALUES (5, 'TOMAR PRESION', 14);
INSERT INTO `servicios` VALUES (7, 'CONSULTA GENERAL', 300);
INSERT INTO `servicios` VALUES (8, 'CONSULTA ESPECIALIDAD', 600);
INSERT INTO `servicios` VALUES (9, 'NEBULIZACION', 100);
INSERT INTO `servicios` VALUES (10, 'UFUYF', NULL);

-- ----------------------------
-- Table structure for tipo
-- ----------------------------
DROP TABLE IF EXISTS `tipo`;
CREATE TABLE `tipo`  (
  `CODIGO` int NOT NULL AUTO_INCREMENT,
  `TIPO` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`CODIGO`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tipo
-- ----------------------------
INSERT INTO `tipo` VALUES (1, 'MEDICAMENTO');
INSERT INTO `tipo` VALUES (2, 'SERVICIO');
INSERT INTO `tipo` VALUES (3, 'INSUMO');

-- ----------------------------
-- Table structure for usuarios
-- ----------------------------
DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios`  (
  `CODIGO` int NOT NULL AUTO_INCREMENT,
  `NOMBRECOMPLETO` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `USUARIO` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `CONTRASEÑA` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `CARGO` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `FECHA_CREADO` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`CODIGO`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of usuarios
-- ----------------------------
INSERT INTO `usuarios` VALUES (6, 'JORGE RICARDO GIL GOMEZ', 'KIKI', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'DIRECTOR ADMINISTRATIVO', '2017-09-25 00:28:07');
INSERT INTO `usuarios` VALUES (8, 'ANGELA MARIA MONTEJO MESA', 'ANGELADIR', '3cacfd9c7fb9cb4cb9e97f95107e5e56bf020c5d', 'DIRECTOR MEDICO', '2017-10-24 13:28:17');
INSERT INTO `usuarios` VALUES (9, 'ANGELA MARIA MONTEJO MESA', 'ANGELADOC', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'DOCTOR', '2017-10-24 13:28:17');
INSERT INTO `usuarios` VALUES (10, 'YAIMA ALPIZAR', 'YAIMA', '25c9c5b47b512c39597348a5eca1a28501fbd188', 'ESTOMATOLOGO', NULL);

-- ----------------------------
-- Table structure for venta_de_productos
-- ----------------------------
DROP TABLE IF EXISTS `venta_de_productos`;
CREATE TABLE `venta_de_productos`  (
  `CODIGO` int NOT NULL AUTO_INCREMENT,
  `CODIGO_PRODUCTO` int NULL DEFAULT NULL,
  `NOMBRE` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `TIPO` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `PROVEEDOR` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `PRESENTACION` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `LABORATORIO` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `LOTE` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `FECHA_DE_VENCIMIENTO` date NULL DEFAULT NULL,
  `PRECIO_COSTO_POR_UNIDAD` int NULL DEFAULT NULL,
  `PRECIO_VENTA_POR_UNIDAD` int NULL DEFAULT NULL,
  `CANTIDAD_VENDIDO` int NULL DEFAULT NULL,
  `PRECIO_TOTAL` int NULL DEFAULT NULL,
  `FECHA_DE_VENTA` date NULL DEFAULT NULL,
  `HORA_DE_VENTA` time(0) NULL DEFAULT NULL,
  `VENDEDOR` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `NOMBRE_PACIENTE` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `PRIMER_APELLIDO` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `SEGUNDO_APELLIDO` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`CODIGO`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of venta_de_productos
-- ----------------------------
INSERT INTO `venta_de_productos` VALUES (1, NULL, 'ANALISIS', 'SERVICIO', NULL, NULL, NULL, NULL, NULL, NULL, 13, 1, 13, '2017-12-13', '14:26:24', 'ANGELA MARIA MONTEJO MESA', 'AA', 'AA', 'AA');
INSERT INTO `venta_de_productos` VALUES (2, NULL, 'TOMAR PRESION', 'SERVICIO', NULL, NULL, NULL, NULL, NULL, NULL, 14, 1, 14, '2017-12-18', '12:32:00', 'ANGELA MARIA MONTEJO MESA', 'DAYRIS', 'RODRIGUEZ', 'GIL');
INSERT INTO `venta_de_productos` VALUES (3, NULL, 'CONSULTA GENERAL', 'SERVICIO', NULL, NULL, NULL, NULL, NULL, NULL, 300, 1, 300, '2017-12-18', '12:32:00', 'ANGELA MARIA MONTEJO MESA', 'DAYRIS', 'RODRIGUEZ', 'GIL');
INSERT INTO `venta_de_productos` VALUES (4, NULL, 'INYECCION', 'SERVICIO', NULL, NULL, NULL, NULL, NULL, NULL, 10, 1, 10, '2017-12-18', '22:09:59', 'ANGELA MARIA MONTEJO MESA', 'DAYRIS', 'RODRIGUEZ', 'GIL');
INSERT INTO `venta_de_productos` VALUES (5, NULL, 'TOMAR PRESION', 'SERVICIO', NULL, NULL, NULL, NULL, NULL, NULL, 14, 1, 14, '2017-12-18', '22:43:36', 'ANGELA MARIA MONTEJO MESA', 'DAYRIS', 'RODRIGUEZ', 'GIL');
INSERT INTO `venta_de_productos` VALUES (6, NULL, 'CONSULTA ESPECIALIDAD', 'SERVICIO', NULL, NULL, NULL, NULL, NULL, NULL, 600, 1, 600, '2017-12-18', '22:43:36', 'ANGELA MARIA MONTEJO MESA', 'DAYRIS', 'RODRIGUEZ', 'GIL');
INSERT INTO `venta_de_productos` VALUES (7, NULL, 'RX', 'SERVICIO', NULL, NULL, NULL, NULL, NULL, NULL, 12, 1, 12, '2017-12-18', '22:45:03', 'ANGELA MARIA MONTEJO MESA', 'DAYRIS', 'RODRIGUEZ', 'GIL');
INSERT INTO `venta_de_productos` VALUES (8, NULL, 'RX', 'SERVICIO', NULL, NULL, NULL, NULL, NULL, NULL, 12, 1, 12, '2017-12-18', '22:46:16', 'ANGELA MARIA MONTEJO MESA', 'DAYRIS', 'RODRIGUEZ', 'GIL');
INSERT INTO `venta_de_productos` VALUES (9, NULL, 'RX', 'SERVICIO', NULL, NULL, NULL, NULL, NULL, NULL, 60, 1, 60, '2020-09-11', '22:25:53', 'ANGELA MARIA MONTEJO MESA', 'R', 'R', '5');
INSERT INTO `venta_de_productos` VALUES (10, NULL, 'INYECCION', 'SERVICIO', NULL, NULL, NULL, NULL, NULL, NULL, 50, 1, 50, '2020-09-11', '22:25:53', 'ANGELA MARIA MONTEJO MESA', 'R', 'R', '5');
INSERT INTO `venta_de_productos` VALUES (11, NULL, 'ULTRASONIDO', 'SERVICIO', NULL, NULL, NULL, NULL, NULL, NULL, 600, 1, 600, '2020-09-11', '22:36:10', 'ANGELA MARIA MONTEJO MESA', 'R', 'R', '5');
INSERT INTO `venta_de_productos` VALUES (12, NULL, 'ANALISIS', 'SERVICIO', NULL, NULL, NULL, NULL, NULL, NULL, 200, 1, 200, '2020-09-11', '22:36:10', 'ANGELA MARIA MONTEJO MESA', 'R', 'R', '5');
INSERT INTO `venta_de_productos` VALUES (13, NULL, 'INYECCION', 'SERVICIO', NULL, NULL, NULL, NULL, NULL, NULL, 800, NULL, 800, '2020-09-17', '21:16:44', 'ANGELA MARIA MONTEJO MESA', 'R', 'R', '5');
INSERT INTO `venta_de_productos` VALUES (14, NULL, 'INYECCION', 'SERVICIO', NULL, NULL, NULL, NULL, NULL, NULL, 88, NULL, 88, '2020-09-17', '21:16:57', 'ANGELA MARIA MONTEJO MESA', 'R', 'R', '5');

-- ----------------------------
-- Table structure for venta_de_productos_historial
-- ----------------------------
DROP TABLE IF EXISTS `venta_de_productos_historial`;
CREATE TABLE `venta_de_productos_historial`  (
  `CODIGO` int NOT NULL AUTO_INCREMENT,
  `CODIGO_PRODUCTO` int NULL DEFAULT NULL,
  `NOMBRE` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `TIPO` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `PROVEEDOR` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `PRESENTACION` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `LABORATORIO` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `LOTE` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `FECHA_DE_VENCIMIENTO` date NULL DEFAULT NULL,
  `PRECIO_COSTO_POR_UNIDAD` int NULL DEFAULT NULL,
  `PRECIO_VENTA_POR_UNIDAD` int NULL DEFAULT NULL,
  `CANTIDAD_VENDIDO` int NULL DEFAULT NULL,
  `PRECIO_TOTAL` int NULL DEFAULT NULL,
  `FECHA_DE_VENTA` date NULL DEFAULT NULL,
  `HORA_DE_VENTA` time(0) NULL DEFAULT NULL,
  `VENDEDOR` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`CODIGO`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of venta_de_productos_historial
-- ----------------------------

-- ----------------------------
-- Table structure for venta_estadisticas
-- ----------------------------
DROP TABLE IF EXISTS `venta_estadisticas`;
CREATE TABLE `venta_estadisticas`  (
  `ID` int NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `PRIMER_APELLIDO` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `SEGUNDO_APELLIDO` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `PRECIO` int NULL DEFAULT NULL,
  `IMPUESTO_CLINICA` int NULL DEFAULT NULL,
  `FECHA` date NULL DEFAULT NULL,
  `MEDICO` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of venta_estadisticas
-- ----------------------------
INSERT INTO `venta_estadisticas` VALUES (1, 'R', 'R', '5', 888, 100, '2020-09-17', 'ANGELA MARIA MONTEJO MESA');

-- ----------------------------
-- Table structure for venta_provicional_medicamentos
-- ----------------------------
DROP TABLE IF EXISTS `venta_provicional_medicamentos`;
CREATE TABLE `venta_provicional_medicamentos`  (
  `CODIGO` int NOT NULL AUTO_INCREMENT,
  `CODIGO_PACIENTE` int NULL DEFAULT NULL,
  `CODIGO_PRODUCTO` int NULL DEFAULT NULL,
  `CODIGO_FARMACIA` int NULL DEFAULT NULL,
  `CODIGO_MEDICAMENTO` int NULL DEFAULT NULL,
  `NOMBRE` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `SERVICIO` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `TIPO` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `LOTE` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `PRESENTACION` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `LABORATORIO` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `PROVEEDOR` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `EXISTENCIA` int NULL DEFAULT NULL,
  `FECHA_DE_VENCIMIENTO` date NULL DEFAULT NULL,
  `PRECIO_COSTO_POR_UNIDAD` int NULL DEFAULT NULL,
  `PRECIO_VENTA_POR_UNIDAD` int NULL DEFAULT NULL,
  `PRECIO_TOTAL` int NULL DEFAULT NULL,
  `ENTRADA` int NULL DEFAULT NULL,
  `FECHA_DE_ENTRADA` date NULL DEFAULT NULL,
  `SALIDA` int NULL DEFAULT NULL,
  `FECHA_DE_SALIDA` date NULL DEFAULT NULL,
  `ULTIMO_REG` int NULL DEFAULT NULL,
  `QUEDA` int NULL DEFAULT NULL,
  PRIMARY KEY (`CODIGO`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of venta_provicional_medicamentos
-- ----------------------------

-- ----------------------------
-- Procedure structure for new_proc
-- ----------------------------
DROP PROCEDURE IF EXISTS `new_proc`;
delimiter ;;
CREATE PROCEDURE `new_proc`()
BEGIN
 SELECT DISTINCT `productos_vencimiento`.`NOMBRE` FROM  `productos_vencimiento`;
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
