/*
Navicat MySQL Data Transfer

Source Server         : informatica
Source Server Version : 50051
Source Host           : localhost:3306
Source Database       : itlhospital

Target Server Type    : MYSQL
Target Server Version : 50051
File Encoding         : 65001

Date: 2019-11-20 19:19:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for agendas
-- ----------------------------
DROP TABLE IF EXISTS `agendas`;
CREATE TABLE `agendas` (
  `id_agenda` int(11) NOT NULL auto_increment,
  `id_especialidad` int(11) default NULL,
  `fecha_cita` date default NULL,
  `hora_cita` time default NULL,
  `id_medico` int(11) default NULL,
  `id_consultorio` int(11) default NULL,
  `nhc` varchar(255) default NULL,
  `activo` int(11) default NULL,
  `fecha_registro` date default NULL,
  `hora_registro` time default NULL,
  `usuario_registro` int(11) default NULL,
  PRIMARY KEY  (`id_agenda`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of agendas
-- ----------------------------

-- ----------------------------
-- Table structure for ambulancias
-- ----------------------------
DROP TABLE IF EXISTS `ambulancias`;
CREATE TABLE `ambulancias` (
  `id_ambulancia` int(11) NOT NULL auto_increment,
  `num_ambulancia` int(11) default NULL,
  `modelo_ambulancia` text,
  `descripcion_ambulancia` text,
  `activo` int(11) default NULL,
  `fecha_registro` date default NULL,
  `hora_registro` time default NULL,
  `usuario_registro` int(11) default NULL,
  PRIMARY KEY  (`id_ambulancia`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ambulancias
-- ----------------------------

-- ----------------------------
-- Table structure for camas
-- ----------------------------
DROP TABLE IF EXISTS `camas`;
CREATE TABLE `camas` (
  `id_cama` int(11) NOT NULL auto_increment,
  `id_especialiadad` int(11) default NULL,
  `no_cama` int(11) default NULL,
  `activo` int(11) default NULL,
  `fecha_registro` date default NULL,
  `hora_registro` time default NULL,
  `usuario_registro` int(11) default NULL,
  PRIMARY KEY  (`id_cama`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of camas
-- ----------------------------

-- ----------------------------
-- Table structure for choferes
-- ----------------------------
DROP TABLE IF EXISTS `choferes`;
CREATE TABLE `choferes` (
  `id_chofer` int(11) NOT NULL auto_increment,
  `num_licencia` int(11) default NULL,
  `id_trabajador` int(11) default NULL,
  `activo` int(11) default NULL,
  `fecha_registro` date default NULL,
  `hora_registro` time default NULL,
  `usuario_registro` int(11) default NULL,
  PRIMARY KEY  (`id_chofer`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of choferes
-- ----------------------------

-- ----------------------------
-- Table structure for consultorios
-- ----------------------------
DROP TABLE IF EXISTS `consultorios`;
CREATE TABLE `consultorios` (
  `id_consultorio` int(11) NOT NULL auto_increment,
  `nombre_consultorio` text,
  `area` text COMMENT 'Urgencias o Consulta Externa',
  `activo` int(11) default NULL,
  `fecha_registro` date default NULL,
  `hora_registro` time default NULL,
  `usuario_registro` int(11) default NULL,
  PRIMARY KEY  (`id_consultorio`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of consultorios
-- ----------------------------

-- ----------------------------
-- Table structure for departamentos
-- ----------------------------
DROP TABLE IF EXISTS `departamentos`;
CREATE TABLE `departamentos` (
  `id_departamento` int(11) NOT NULL auto_increment,
  `nombre_departamento` text,
  `activo` int(11) default NULL,
  `fecha_registro` date default NULL,
  `hora_registro` time default NULL,
  `usuario_registro` int(11) default NULL,
  PRIMARY KEY  (`id_departamento`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of departamentos
-- ----------------------------
INSERT INTO `departamentos` VALUES ('1', 'Sistemas', '1', '2019-11-19', '17:30:56', '1');
INSERT INTO `departamentos` VALUES ('2', 'Recursos Humanos', '1', '2019-11-20', '18:20:16', null);
INSERT INTO `departamentos` VALUES ('3', 'Financieros', '1', '0000-00-00', '11:11:00', '1');
INSERT INTO `departamentos` VALUES ('4', 'Sistemas y computacion', '1', '2019-11-20', '07:01:37', '1');
INSERT INTO `departamentos` VALUES ('5', 'Biblioteca', '1', '2019-11-20', '07:01:53', '1');
INSERT INTO `departamentos` VALUES ('6', 'Escolares', '1', '2019-11-20', '07:02:27', '1');

-- ----------------------------
-- Table structure for descuentos
-- ----------------------------
DROP TABLE IF EXISTS `descuentos`;
CREATE TABLE `descuentos` (
  `id_descuento` int(11) NOT NULL auto_increment,
  `nhc` int(11) default NULL,
  `fecha_descuento` date default NULL,
  `atencion` text COMMENT 'hospitalizado,urgencias,consulta externa',
  `costo_total` double default NULL,
  `costo_descuento` double default NULL,
  `diferencia` double default NULL,
  `porcentaje_descuento` double default NULL,
  `activo` int(11) default NULL,
  `fecha_registro` date default NULL,
  `hora_registro` time default NULL,
  `usuario_registro` int(11) default NULL,
  PRIMARY KEY  (`id_descuento`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of descuentos
-- ----------------------------

-- ----------------------------
-- Table structure for enfermeros
-- ----------------------------
DROP TABLE IF EXISTS `enfermeros`;
CREATE TABLE `enfermeros` (
  `id_enfermero` int(11) NOT NULL auto_increment,
  `cedula` int(11) default NULL,
  `id_trabajador` int(11) default NULL,
  `activo` int(11) default NULL,
  `fecha_registro` date default NULL,
  `hora_registro` time default NULL,
  `usuario_registro` int(11) default NULL,
  PRIMARY KEY  (`id_enfermero`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of enfermeros
-- ----------------------------

-- ----------------------------
-- Table structure for especialidades
-- ----------------------------
DROP TABLE IF EXISTS `especialidades`;
CREATE TABLE `especialidades` (
  `id_especialidad` int(11) NOT NULL auto_increment,
  `nombre_especialidad` text,
  `activo` int(11) default NULL,
  `fecha_registro` date default NULL,
  `hora_registro` time default NULL,
  `usuario_registro` int(11) default NULL,
  PRIMARY KEY  (`id_especialidad`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of especialidades
-- ----------------------------

-- ----------------------------
-- Table structure for hospitales
-- ----------------------------
DROP TABLE IF EXISTS `hospitales`;
CREATE TABLE `hospitales` (
  `id_hospital` int(11) NOT NULL auto_increment,
  `nombre_hospital` text,
  `direccion` text,
  `telefono` text,
  `activo` int(11) default NULL,
  `fecha_registro` date default NULL,
  `hora_registro` time default NULL,
  `usuario_registro` int(11) default NULL,
  PRIMARY KEY  (`id_hospital`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hospitales
-- ----------------------------

-- ----------------------------
-- Table structure for hospitalizados
-- ----------------------------
DROP TABLE IF EXISTS `hospitalizados`;
CREATE TABLE `hospitalizados` (
  `id_hospitalizado` int(11) NOT NULL auto_increment,
  `id_cama` int(11) default NULL,
  `nhc` int(11) default NULL,
  `fecha_ingresa` date default NULL,
  `hora_ingresa` time default NULL,
  `estatus` text COMMENT 'ingresado,alta,fallecido',
  `fecha_alta` date default NULL,
  `hora_alta` time default NULL,
  `id_medico_alta` int(11) default NULL,
  `activo` int(11) default NULL,
  `fecha_registro` date default NULL,
  `hora_registro` time default NULL,
  `usuario_registro` int(11) default NULL,
  PRIMARY KEY  (`id_hospitalizado`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hospitalizados
-- ----------------------------

-- ----------------------------
-- Table structure for medicos
-- ----------------------------
DROP TABLE IF EXISTS `medicos`;
CREATE TABLE `medicos` (
  `id_medico` int(11) NOT NULL auto_increment,
  `cedula` int(11) default NULL,
  `id_trabajador` int(11) default NULL,
  `especialista` int(11) default NULL COMMENT '1-Si , 0-No',
  `id_especialidad` int(11) default NULL,
  `activo` int(11) default NULL,
  `fecha_registro` date default NULL,
  `hora_registro` time default NULL,
  `usuario_registro` int(11) default NULL,
  PRIMARY KEY  (`id_medico`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of medicos
-- ----------------------------

-- ----------------------------
-- Table structure for pacientes
-- ----------------------------
DROP TABLE IF EXISTS `pacientes`;
CREATE TABLE `pacientes` (
  `id_paciente` int(11) NOT NULL auto_increment,
  `nhc` int(11) default NULL COMMENT 'Numero de historia Clinica',
  `nombre` text,
  `ap_paterno` text,
  `ap_materno` text,
  `direccion` text,
  `telefono` int(11) default NULL,
  `correo` text,
  `id_religion` int(11) default NULL,
  `tipo_sangre` text,
  `activo` int(11) default NULL,
  `fecha_registro` date default NULL,
  `hora_registro` time default NULL,
  `usuario_registro` int(11) default NULL,
  PRIMARY KEY  (`id_paciente`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pacientes
-- ----------------------------

-- ----------------------------
-- Table structure for personas
-- ----------------------------
DROP TABLE IF EXISTS `personas`;
CREATE TABLE `personas` (
  `id_persona` int(11) NOT NULL auto_increment,
  `nombre` text,
  `ap_paterno` text,
  `ap_materno` text,
  `sexo` text COMMENT 'M o F',
  `ecivil` text,
  `telefono` text,
  `rfc` text,
  `correo` text,
  `fecha_nac` date default NULL,
  `colonia` text,
  `calle` text,
  `numero` int(11) default NULL,
  `municipio` text,
  `estado` text,
  `activo` int(11) default NULL,
  `fecha_registro` date default NULL,
  `hora_registro` time default NULL,
  `usuario_registro` int(11) default NULL,
  PRIMARY KEY  (`id_persona`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of personas
-- ----------------------------
INSERT INTO `personas` VALUES ('1', 'Pablo Adrián', 'Perez', 'Briseño', 'M', 'Casad@', '821174899', 'PBP840305BT0', 'paperez@itlinares.edu.mx', '1984-03-05', 'Provileon', 'Ahuehuete', '675', 'Linares', 'Nuevo Leon', '1', '2019-11-19', '17:28:58', '1');

-- ----------------------------
-- Table structure for puestos
-- ----------------------------
DROP TABLE IF EXISTS `puestos`;
CREATE TABLE `puestos` (
  `id_puesto` int(11) NOT NULL auto_increment,
  `nombre_puesto` text,
  `activo` int(11) default NULL,
  `fecha_registro` date default NULL,
  `hora_registro` time default NULL,
  `usuario_registro` int(11) default NULL,
  PRIMARY KEY  (`id_puesto`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of puestos
-- ----------------------------
INSERT INTO `puestos` VALUES ('1', 'Encargado', '1', '2019-11-19', '17:31:21', '1');

-- ----------------------------
-- Table structure for religiones
-- ----------------------------
DROP TABLE IF EXISTS `religiones`;
CREATE TABLE `religiones` (
  `id_religion` int(11) NOT NULL auto_increment,
  `nombre_religion` text,
  `fecha_registro` date default NULL,
  `hora_registro` time default NULL,
  `usuario_registro` int(11) default NULL,
  PRIMARY KEY  (`id_religion`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of religiones
-- ----------------------------

-- ----------------------------
-- Table structure for tipos_trabajador
-- ----------------------------
DROP TABLE IF EXISTS `tipos_trabajador`;
CREATE TABLE `tipos_trabajador` (
  `id_tipo_trabajador` int(11) NOT NULL auto_increment,
  `descripcion` text,
  `activo` int(11) default NULL,
  `fecha_registro` date default NULL,
  `hora_registro` time default NULL,
  `usuario_registro` int(255) default NULL,
  PRIMARY KEY  (`id_tipo_trabajador`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tipos_trabajador
-- ----------------------------
INSERT INTO `tipos_trabajador` VALUES ('1', 'Trabajdor de Base', '1', '2019-11-19', '17:29:51', '1');

-- ----------------------------
-- Table structure for trabajadores
-- ----------------------------
DROP TABLE IF EXISTS `trabajadores`;
CREATE TABLE `trabajadores` (
  `id_trabajador` int(11) NOT NULL auto_increment,
  `id_persona` int(11) default NULL,
  `clave_trabajador` int(11) default NULL,
  `fecha_ingreso` date default NULL,
  `id_departamento` int(11) default NULL,
  `id_puesto` int(11) default NULL,
  `id_tipo_trabajador` text,
  `medico` int(11) default NULL COMMENT '1-Si , 0-No',
  `activo` int(11) default NULL,
  `fecha_registro` date default NULL,
  `hora_registro` time default NULL,
  `usuario_registro` int(11) default NULL,
  PRIMARY KEY  (`id_trabajador`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of trabajadores
-- ----------------------------
INSERT INTO `trabajadores` VALUES ('1', '1', '115', '2019-11-19', '1', '1', '1', '0', '1', '2019-11-19', '17:30:33', '1');

-- ----------------------------
-- Table structure for traslados
-- ----------------------------
DROP TABLE IF EXISTS `traslados`;
CREATE TABLE `traslados` (
  `id_traslado` int(11) NOT NULL auto_increment,
  `nhc` int(11) default NULL,
  `id_hospital_traslado` int(11) default NULL,
  `id_chofer` int(11) default NULL COMMENT 'Persona que conducira la ambulancia',
  `id_ambulancia` int(11) default NULL,
  `id_medico` int(11) default NULL COMMENT 'Medico que realiza la referencia del traslado',
  `fecha_traslado` date default NULL,
  `hora_traslado` time default NULL,
  `id_especialidad` int(11) default NULL,
  `motivo` text,
  `activo` int(11) default NULL,
  `fecha_registro` date default NULL,
  `hora_registro` time default NULL,
  `usuario_registro` int(11) default NULL,
  PRIMARY KEY  (`id_traslado`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of traslados
-- ----------------------------

-- ----------------------------
-- Table structure for urgencias
-- ----------------------------
DROP TABLE IF EXISTS `urgencias`;
CREATE TABLE `urgencias` (
  `id_urgencia` int(11) NOT NULL auto_increment,
  `nhc` int(255) default NULL,
  `id_consultorio` int(11) default NULL,
  `id_medico` int(11) default NULL,
  `diagnostico` text,
  `medicamento` text,
  `id_enfermero_triage` int(11) default NULL,
  `resultado_triage` text,
  `estatus` text,
  `activo` int(11) default NULL,
  `fecha_registro` date default NULL,
  `hora_registro` time default NULL,
  `usuario_registro` int(11) default NULL,
  PRIMARY KEY  (`id_urgencia`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urgencias
-- ----------------------------

-- ----------------------------
-- Table structure for usuarios
-- ----------------------------
DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL auto_increment,
  `nombre_usuario` text,
  `id_trabajador` int(11) default NULL,
  `contra` text,
  `activo` int(11) default NULL,
  `fecha_registro` date default NULL,
  `hora_registro` time default NULL,
  `usuario_registro` int(11) default NULL,
  PRIMARY KEY  (`id_usuario`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usuarios
-- ----------------------------
INSERT INTO `usuarios` VALUES ('1', 'paperez', '1', '827ccb0eea8a706c4c34a16891f84e7b', '1', '2019-11-19', '17:32:16', '1');
