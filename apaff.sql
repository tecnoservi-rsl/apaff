-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 21-03-2017 a las 13:32:49
-- Versión del servidor: 10.1.13-MariaDB
-- Versión de PHP: 5.5.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `apaff`
--
CREATE DATABASE IF NOT EXISTS `apaff` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `apaff`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

DROP TABLE IF EXISTS `departamento`;
CREATE TABLE IF NOT EXISTS `departamento` (
  `id_departamento` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(100) COLLATE utf8_bin NOT NULL,
  `nombre` varchar(100) COLLATE utf8_bin NOT NULL,
  `descripcion` varchar(500) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id_departamento`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`id_departamento`, `codigo`, `nombre`, `descripcion`) VALUES
(5, '001', 'FUMICT', 'FUNDACION');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `log`
--

DROP TABLE IF EXISTS `log`;
CREATE TABLE IF NOT EXISTS `log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) DEFAULT NULL,
  `ip` varchar(12) NOT NULL,
  `controlador` varchar(30) NOT NULL,
  `metodo` varchar(30) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_usuario` (`id_usuario`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu`
--

DROP TABLE IF EXISTS `menu`;
CREATE TABLE IF NOT EXISTS `menu` (
  `id_menu` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) NOT NULL,
  `enlace` varchar(50) NOT NULL,
  PRIMARY KEY (`id_menu`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `operacion`
--

DROP TABLE IF EXISTS `operacion`;
CREATE TABLE IF NOT EXISTS `operacion` (
  `id_aumento` int(11) NOT NULL AUTO_INCREMENT,
  `id_partida` int(11) NOT NULL,
  `cantidad` decimal(10,2) NOT NULL,
  `fecha` datetime NOT NULL,
  `comentario` varchar(1000) NOT NULL,
  `tipo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_aumento`),
  KEY `id_partidas` (`id_partida`)
) ENGINE=MyISAM AUTO_INCREMENT=105 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `operacion`
--

INSERT INTO `operacion` (`id_aumento`, `id_partida`, `cantidad`, `fecha`, `comentario`, `tipo`) VALUES
(49, 47, '6000000.00', '2017-03-01 12:43:18', 'Apertura de partida', 'aum'),
(50, 48, '99999999.99', '2017-03-01 12:44:44', 'Apertura de partida', 'aum'),
(51, 49, '5000000.00', '2017-03-14 00:31:54', 'Apertura de partida', 'aum'),
(52, 50, '5000.00', '2017-03-14 00:43:05', 'Apertura de partida', 'aum'),
(53, 51, '60000.00', '2017-03-14 00:43:33', 'Apertura de partida', 'aum'),
(54, 52, '50000.00', '2017-03-14 19:48:57', 'Apertura de partida', 'aum'),
(55, 53, '200000.00', '2017-03-14 19:49:30', 'Apertura de partida', 'aum'),
(56, 54, '200000.00', '2017-03-14 19:49:31', 'Apertura de partida', 'aum'),
(57, 55, '1000.00', '2017-03-14 19:50:27', 'Apertura de partida', 'aum'),
(58, 56, '1000.00', '2017-03-14 19:50:27', 'Apertura de partida', 'aum'),
(59, 57, '23423424.00', '2017-03-14 19:53:58', 'Apertura de partida', 'aum'),
(60, 58, '324234.00', '2017-03-14 19:54:49', 'Apertura de partida', 'aum'),
(61, 59, '565656.00', '2017-03-14 19:55:24', 'Apertura de partida', 'aum'),
(62, 60, '66666666.00', '2017-03-14 19:55:56', 'Apertura de partida', 'aum'),
(63, 61, '6665555.00', '2017-03-14 19:56:36', 'Apertura de partida', 'aum'),
(64, 62, '676767.00', '2017-03-14 19:57:15', 'Apertura de partida', 'aum'),
(65, 63, '4444.00', '2017-03-14 19:57:59', 'Apertura de partida', 'aum'),
(66, 64, '666.00', '2017-03-14 19:59:29', 'Apertura de partida', 'aum'),
(67, 65, '200.00', '2017-03-14 20:00:39', 'Apertura de partida', 'aum'),
(68, 66, '5000.00', '2017-03-14 20:01:27', 'Apertura de partida', 'aum'),
(69, 67, '6005000.30', '2017-03-14 20:02:09', 'Apertura de partida', 'aum'),
(70, 68, '4000.30', '2017-03-14 20:02:54', 'Apertura de partida', 'aum'),
(71, 69, '5000.00', '2017-03-14 20:04:45', 'Apertura de partida', 'aum'),
(72, 70, '6050.00', '2017-03-14 20:05:38', 'Apertura de partida', 'aum'),
(73, 71, '5000.00', '2017-03-14 20:06:12', 'Apertura de partida', 'aum'),
(74, 72, '512.00', '2017-03-14 20:06:46', 'Apertura de partida', 'aum'),
(75, 73, '80000.00', '2017-03-14 20:07:41', 'Apertura de partida', 'aum'),
(76, 74, '2222.00', '2017-03-14 20:08:30', 'Apertura de partida', 'aum'),
(77, 75, '454545.00', '2017-03-14 20:08:55', 'Apertura de partida', 'aum'),
(78, 76, '454545.00', '2017-03-14 20:08:56', 'Apertura de partida', 'aum'),
(79, 77, '343434.00', '2017-03-14 20:09:49', 'Apertura de partida', 'aum'),
(80, 78, '454545.00', '2017-03-14 20:10:25', 'Apertura de partida', 'aum'),
(81, 79, '77777.00', '2017-03-14 20:11:22', 'Apertura de partida', 'aum'),
(82, 80, '5555.00', '2017-03-14 20:11:46', 'Apertura de partida', 'aum'),
(83, 81, '4565643.00', '2017-03-14 20:12:20', 'Apertura de partida', 'aum'),
(84, 82, '23333.00', '2017-03-14 20:12:46', 'Apertura de partida', 'aum'),
(85, 83, '33334.00', '2017-03-14 20:13:11', 'Apertura de partida', 'aum'),
(86, 84, '3333.00', '2017-03-14 20:13:45', 'Apertura de partida', 'aum'),
(87, 85, '6666.00', '2017-03-14 20:14:18', 'Apertura de partida', 'aum'),
(88, 86, '6666.00', '2017-03-14 20:14:19', 'Apertura de partida', 'aum'),
(89, 87, '344434.00', '2017-03-14 20:14:47', 'Apertura de partida', 'aum'),
(90, 88, '52222.00', '2017-03-14 20:16:10', 'Apertura de partida', 'aum'),
(91, 89, '5000.00', '2017-03-14 20:16:48', 'Apertura de partida', 'aum'),
(92, 90, '44444.00', '2017-03-14 20:17:20', 'Apertura de partida', 'aum'),
(93, 91, '70000.00', '2017-03-14 20:18:13', 'Apertura de partida', 'aum'),
(94, 92, '900000.00', '2017-03-14 20:18:59', 'Apertura de partida', 'aum'),
(95, 93, '900000.00', '2017-03-14 20:18:59', 'Apertura de partida', 'aum'),
(96, 94, '40000.00', '2017-03-14 20:19:55', 'Apertura de partida', 'aum'),
(97, 95, '6000.00', '2017-03-14 20:20:18', 'Apertura de partida', 'aum'),
(98, 96, '10000.00', '2017-03-14 20:20:45', 'Apertura de partida', 'aum'),
(99, 97, '10000.00', '2017-03-14 20:21:21', 'Apertura de partida', 'aum'),
(100, 98, '10000.00', '2017-03-14 20:21:57', 'Apertura de partida', 'aum'),
(101, 99, '9000.00', '2017-03-14 20:22:30', 'Apertura de partida', 'aum'),
(102, 100, '65230.20', '2017-03-14 20:23:38', 'Apertura de partida', 'aum'),
(103, 101, '50000.00', '2017-03-14 20:24:16', 'Apertura de partida', 'aum'),
(104, 102, '30000.00', '2017-03-14 20:24:43', 'Apertura de partida', 'aum');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagos`
--

DROP TABLE IF EXISTS `pagos`;
CREATE TABLE IF NOT EXISTS `pagos` (
  `id_pago` int(11) NOT NULL AUTO_INCREMENT,
  `nro_orden` varchar(100) COLLATE utf8_bin NOT NULL,
  `monto_orden` decimal(10,2) NOT NULL,
  `nombre_beneficiario` varchar(200) COLLATE utf8_bin NOT NULL,
  `id_beneficiario` varchar(100) COLLATE utf8_bin NOT NULL,
  `nombre_autorizado` varchar(200) COLLATE utf8_bin NOT NULL,
  `id_autorizado` varchar(100) COLLATE utf8_bin NOT NULL,
  `cantidad_letras` varchar(300) COLLATE utf8_bin NOT NULL,
  `concepto_pago` varchar(500) COLLATE utf8_bin NOT NULL,
  `entidad_bancaria` varchar(300) COLLATE utf8_bin NOT NULL,
  `nro_cheque` varchar(100) COLLATE utf8_bin NOT NULL,
  `nro_cuenta` varchar(100) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id_pago`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagos_partidas`
--

DROP TABLE IF EXISTS `pagos_partidas`;
CREATE TABLE IF NOT EXISTS `pagos_partidas` (
  `id_pago` int(11) NOT NULL,
  `id_partida` int(11) NOT NULL,
  `monto` decimal(10,2) NOT NULL,
  `retencion` int(11) NOT NULL,
  KEY `id_pago` (`id_pago`),
  KEY `id_partida` (`id_partida`),
  KEY `id_pago_2` (`id_pago`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partidas`
--

DROP TABLE IF EXISTS `partidas`;
CREATE TABLE IF NOT EXISTS `partidas` (
  `id_partida` int(11) NOT NULL AUTO_INCREMENT,
  `partida` varchar(30) NOT NULL,
  `denominacion` varchar(300) NOT NULL,
  `id_departamentos` int(11) NOT NULL,
  PRIMARY KEY (`id_partida`),
  KEY `id_departamentos` (`id_departamentos`)
) ENGINE=MyISAM AUTO_INCREMENT=103 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `partidas`
--

INSERT INTO `partidas` (`id_partida`, `partida`, `denominacion`, `id_departamentos`) VALUES
(69, '4.02.03.03.00', 'CAUCHOS Y TRIPAS PARA VEHICULOS', 5),
(49, '4.01.01.01.00 ', 'SUELDO BÁSICO PERSONAL FIJO A TIEMPO COMPLETO', 5),
(50, '4.01.01.38.00', 'DIETAS DEL PERSONAL DE ALTO NIVEL Y DE DIRECTORES', 5),
(51, '4.01.05.16.00', 'AGUINALDOS AL PERSONAL DE ALTO NIVEL Y DE DIRECCIÓN', 5),
(52, '4.01.03.08.00', 'PRIMAS DE PROFESIONALIZACION A EMPLEADOS', 5),
(53, '4.01.04.08.00', 'BONO COMPENSATORIO DE ALIMENTACIÓN A EMPLEADOS', 5),
(55, '4.01.05.01.00', 'AGUINALDOS A EMPLEADOS', 5),
(56, '4.01.05.01.00', 'AGUINALDOS A EMPLEADOS', 5),
(57, '4.01.05.03.00', 'BONO VACACIONAL A EMPLEADOS', 5),
(58, '4.01.05.18.00', 'BONO VACACIONAL AL PERSONAL DE ALTO NIVEL Y DE DIRECCIÓN', 5),
(59, '4.01.06.01.00', 'APORTE PATRONAL AL INSTITUTO VENEZOLANO DE LOS SEGUROS SOCIALES (IVSS) POR EMPLEADOS', 5),
(60, '4.01.06.04.00', 'APORTE PATRONAL AL FONDO DE SEGURO DE PARO FORZOSO POR EMPLEADOS', 5),
(61, '4.01.06.05.00', 'APORTE PATRONAL AL FONDO DE AHORRO HABITACIONAL POR EMPLEADOS', 5),
(62, '4.01.07.06.00', 'AYUDAS PARA MEDICINAS, GASTOS MÉDICOS, ODONTOLÓGICOS Y DE HOSPITALIZACIÓN A EMPLEADOS', 5),
(63, '4.01.07.10.00', 'DOTACIÓN DE UNIFORMES A EMPLEDOS', 5),
(64, '4.01.07.96.00', 'OTRAS SUBVENCIONES A EMPLEADOS', 5),
(65, '4.01.08.01.00', 'PRESTACIONES SOCIALES E INDEMNIZACIONES A EMPLEADOS', 5),
(66, '4.01.08.07.00', 'PRESTACIONES SOCIALES E INDEMNIZACIÓN AL PERSONAL DE ALTO NIVEL Y DE DIRECCIÓN', 5),
(67, '4.02.01.01.00', 'ALIMENTOS Y BEBIDAS PARA PERSONAS', 5),
(68, '4.02.03.02.00', 'PRENDAS DE VESTIR', 5),
(70, '4.02.05.01.00', 'PULPA DE MADERA, PAPEL Y CARTÓN', 5),
(71, '4.02.05.03.00', 'PRODUCTOS DE PAPEL Y CARTON PARA OFICINA', 5),
(72, '4.02.05.04.00', 'LIBROS, REVISTAS Y PERIODICOS', 5),
(73, '4.02.05.05.00', 'MATERIAL DE ENSEÑANZA', 5),
(74, '4.02.05.06.00', 'PRODUCTOS DE PAPEL Y CARTON PARA COMPUTACIÓN', 5),
(75, '4.02.05.07.00', 'PRODUCTOS DE PAPEL Y CARTON PARA LA IMPRENTA Y REPRODUCCIÓN', 5),
(77, '4.02.05.99.00', 'OTROS PRODUCTOS DE PULPA, PAPEL Y CARTON', 5),
(78, '4.02.06.03.00', 'TINTAS , PINTURAS Y COLORANTES', 5),
(79, '4.02.06.04.00', 'PRODUCTOS FARMACEUTICOS Y MEDICAMENTOS', 5),
(80, '4.02.06.05.00', 'PRODUCTOS DE TOCADOR', 5),
(81, '4.02.06.06.00', 'COMBUSTIBLES Y LUBRICANTES', 5),
(82, '4.02.06.08.00', 'PRODUCTOS PLASTICOS', 5),
(83, '4.02.08.03.00', 'HERRAMIENTAS MENORES, CUCHILLERAS Y ARTICULOS GENERALES DE FERRETERIA', 5),
(84, '4.02.08.09.00', 'REPUESTOS Y ACCESORIOS PARA EQUIPOS DE TRANSPORTE', 5),
(85, '4.02.09.00.00', 'PRODUCTOS DE MADERA', 5),
(87, '4.02.10.01.00', 'ARTICULOS DE DEPORTES , RECREACIÓN Y JUGUETES', 5),
(88, '4.02.10.02.00', 'MATERIALES Y UTILES DE LIMPIEZA Y ASEO', 5),
(89, '4.02.10.03.00', 'UTENSILIOS DE COCINA Y COMEDOR', 5),
(90, '4.02.10.05.00', 'ÚTILES DE ESCRITORIO, OFICINA Y MATERIALES DE INSTRUCCIÓN', 5),
(91, '4.02.10.07.00', 'Productos de seguridad en el trabajo', 5),
(95, '4.02.10.11.00', 'MATERIALES ELÉCTRICOS', 5),
(94, '4.02.10.08.00', 'MATERIALES PARA EQUIPOS DE COMPUTACIÓN', 5),
(96, '4.02.10.12.00', 'MATERIALES PARA INSTALACIONES SANITARIAS', 5),
(97, '4.02.99.01.00', 'OTROS MATERIALES Y SUMINISTROS', 5),
(98, '4.03.00.00.00', 'SERVICIOS NO PERSONALES', 5),
(99, '4.03.04.01.00', 'ELECTRICIDAD', 5),
(100, '4.03.04.03.00', 'AGUA', 5),
(101, '4.03.04.04.00', 'TELEFONOS', 5),
(102, '4.03.06.01.00', 'FLETES Y EMBALAJES', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos`
--

DROP TABLE IF EXISTS `permisos`;
CREATE TABLE IF NOT EXISTS `permisos` (
  `id_permisos` int(11) NOT NULL AUTO_INCREMENT,
  `id_menu` int(11) NOT NULL,
  `id_role` int(11) NOT NULL,
  `permiso` int(1) NOT NULL,
  PRIMARY KEY (`id_permisos`),
  KEY `id_menu` (`id_menu`,`id_role`),
  KEY `id_role` (`id_role`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
CREATE TABLE IF NOT EXISTS `proveedores` (
  `id_proveedor` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_proveedor` varchar(200) COLLATE utf8_bin NOT NULL,
  `direccion_proveedor` varchar(500) COLLATE utf8_bin NOT NULL,
  `telefono_proveedor` varchar(100) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id_proveedor`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`id_proveedor`, `nombre_proveedor`, `direccion_proveedor`, `telefono_proveedor`) VALUES
(1, 'MILLAN', 'carupano', '04121234567');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `requisicion`
--

DROP TABLE IF EXISTS `requisicion`;
CREATE TABLE IF NOT EXISTS `requisicion` (
  `id_requisicion` int(11) NOT NULL AUTO_INCREMENT,
  `codigo_requisicion` varchar(50) COLLATE utf8_bin NOT NULL,
  `nombre_requisicion` varchar(100) COLLATE utf8_bin NOT NULL,
  `estado_requisicion` varchar(100) COLLATE utf8_bin NOT NULL,
  `id_departamento` int(11) NOT NULL,
  PRIMARY KEY (`id_requisicion`),
  KEY `id_departamento` (`id_departamento`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `requisicion_partidas`
--

DROP TABLE IF EXISTS `requisicion_partidas`;
CREATE TABLE IF NOT EXISTS `requisicion_partidas` (
  `id_requisicion` int(11) NOT NULL,
  `id_partidas` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `descripcion` varchar(200) COLLATE utf8_bin NOT NULL,
  `precio` int(11) NOT NULL,
  PRIMARY KEY (`id_requisicion`,`id_partidas`),
  KEY `id_partidas` (`id_partidas`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role`
--

DROP TABLE IF EXISTS `role`;
CREATE TABLE IF NOT EXISTS `role` (
  `id_role` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(50) NOT NULL,
  `peso` int(11) NOT NULL,
  PRIMARY KEY (`id_role`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `role`
--

INSERT INTO `role` (`id_role`, `role`, `peso`) VALUES
(1, 'admin_sistem', 1),
(2, 'departamento', 1),
(3, 'compra', 1),
(4, 'anonimo', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `id_role` int(11) NOT NULL DEFAULT '2',
  `login` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_usuario`),
  KEY `id_role_2` (`id_role`),
  KEY `id_role_3` (`id_role`),
  KEY `id_role_4` (`id_role`),
  KEY `id_role_5` (`id_role`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `id_role`, `login`, `password`, `estado`) VALUES
(1, 1, 'admin', '53362d5ea52a28e1a960323ea19b02cb2b828026', 1),
(4, 3, 'compra', '53362d5ea52a28e1a960323ea19b02cb2b828026', 1),
(10, 2, '001', '53362d5ea52a28e1a960323ea19b02cb2b828026', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
