-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 15-03-2017 a las 02:05:13
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
CREATE TABLE `departamento` (
  `id_departamento` int(11) NOT NULL,
  `codigo` varchar(100) COLLATE utf8_bin NOT NULL,
  `nombre` varchar(100) COLLATE utf8_bin NOT NULL,
  `descripcion` varchar(500) COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Truncar tablas antes de insertar `departamento`
--

TRUNCATE TABLE `departamento`;
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
CREATE TABLE `log` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `ip` varchar(12) NOT NULL,
  `controlador` varchar(30) NOT NULL,
  `metodo` varchar(30) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Truncar tablas antes de insertar `log`
--

TRUNCATE TABLE `log`;
--
-- Volcado de datos para la tabla `log`
--

INSERT INTO `log` (`id`, `id_usuario`, `ip`, `controlador`, `metodo`, `fecha`, `hora`) VALUES
(1, 1, '190.78.127.7', 'login', 'index', '2017-03-14', '19:37:57'),
(2, 1, '190.78.127.7', 'principal', 'index', '2017-03-14', '19:37:57'),
(3, 1, '190.78.127.7', 'partida', 'agregar', '2017-03-14', '19:38:02'),
(4, 1, '190.78.127.7', 'login', 'index', '2017-03-14', '19:38:06'),
(5, 1, '190.78.127.7', 'principal', 'index', '2017-03-14', '19:38:07'),
(6, 1, '190.78.127.7', 'partida', 'agregar', '2017-03-14', '19:38:54'),
(7, 1, '190.78.127.7', 'partida', 'agregar', '2017-03-14', '19:40:13'),
(8, 1, '190.78.127.7', 'partida', 'agregar', '2017-03-14', '19:40:33'),
(9, 1, '190.78.127.7', 'partida', 'agregar', '2017-03-14', '19:41:59'),
(10, 1, '190.78.127.7', 'login', 'index', '2017-03-14', '19:45:28'),
(11, 1, '190.78.127.7', 'principal', 'index', '2017-03-14', '19:45:29'),
(12, 1, '190.78.127.7', 'partida', 'agregar', '2017-03-14', '19:46:11'),
(13, 1, '190.78.127.7', 'login', 'index', '2017-03-14', '19:46:23'),
(14, 1, '190.78.127.7', 'principal', 'index', '2017-03-14', '19:46:29'),
(15, 1, '190.78.127.7', 'partida', 'agregar', '2017-03-14', '19:46:33'),
(16, 1, '190.78.127.7', 'partida', 'get_departamentos', '2017-03-14', '19:46:37'),
(17, 1, '190.78.127.7', 'partida', 'get_partida_for_partida', '2017-03-14', '19:47:57'),
(18, 1, '190.78.127.7', 'partida', 'get_partida_for_partida', '2017-03-14', '19:47:57'),
(19, 1, '190.78.127.7', 'partida', 'get_partida_for_partida', '2017-03-14', '19:48:28'),
(20, 1, '190.78.127.7', 'partida', 'get_partida_for_partida', '2017-03-14', '19:48:28'),
(21, 1, '190.78.127.7', 'partida', 'get_partida_for_partida', '2017-03-14', '19:48:42'),
(22, 1, '190.78.127.7', 'partida', 'get_partida_for_partida', '2017-03-14', '19:48:42'),
(23, 1, '190.78.127.7', 'partida', 'guardar', '2017-03-14', '19:48:57'),
(24, 1, '190.78.127.7', 'partida', 'agregar', '2017-03-14', '19:48:58'),
(25, 1, '190.78.127.7', 'partida', 'get_departamentos', '2017-03-14', '19:49:14'),
(26, 1, '190.78.127.7', 'partida', 'guardar', '2017-03-14', '19:49:30'),
(27, 1, '190.78.127.7', 'partida', 'guardar', '2017-03-14', '19:49:31'),
(28, 1, '190.78.127.7', 'partida', 'agregar', '2017-03-14', '19:49:31'),
(29, 1, '190.78.127.7', 'partida', 'get_departamentos', '2017-03-14', '19:50:01'),
(30, 1, '190.78.127.7', 'partida', 'agregar', '2017-03-14', '19:50:03'),
(31, 1, '190.78.127.7', 'partida', 'get_departamentos', '2017-03-14', '19:50:07'),
(32, 1, '190.78.127.7', 'partida', 'guardar', '2017-03-14', '19:50:27'),
(33, 1, '190.78.127.7', 'partida', 'guardar', '2017-03-14', '19:50:27'),
(34, 1, '190.78.127.7', 'partida', 'agregar', '2017-03-14', '19:50:28'),
(35, NULL, '190.78.127.7', 'principal', 'index', '2017-03-14', '19:51:56'),
(36, NULL, '190.78.127.7', 'principal', 'index', '2017-03-14', '19:51:56'),
(37, 1, '190.78.127.7', 'partida', 'agregar', '2017-03-14', '19:51:56'),
(38, 1, '190.78.127.7', 'partida', 'agregar', '2017-03-14', '19:51:56'),
(39, NULL, '190.78.127.7', 'error', 'access', '2017-03-14', '19:51:57'),
(40, 1, '190.78.127.7', 'partida', 'get_departamentos', '2017-03-14', '19:52:14'),
(41, 1, '190.78.127.7', 'partida', 'get_partida_for_partida', '2017-03-14', '19:53:43'),
(42, 1, '190.78.127.7', 'partida', 'get_partida_for_partida', '2017-03-14', '19:53:44'),
(43, 1, '190.78.127.7', 'partida', 'guardar', '2017-03-14', '19:53:58'),
(44, 1, '190.78.127.7', 'partida', 'agregar', '2017-03-14', '19:53:59'),
(45, 1, '190.78.127.7', 'partida', 'get_departamentos', '2017-03-14', '19:54:11'),
(46, 1, '190.78.127.7', 'partida', 'get_partida_for_partida', '2017-03-14', '19:54:14'),
(47, 1, '190.78.127.7', 'partida', 'get_partida_for_partida', '2017-03-14', '19:54:14'),
(48, 1, '190.78.127.7', 'partida', 'get_partida_for_partida', '2017-03-14', '19:54:36'),
(49, 1, '190.78.127.7', 'partida', 'get_partida_for_partida', '2017-03-14', '19:54:37'),
(50, 1, '190.78.127.7', 'partida', 'guardar', '2017-03-14', '19:54:49'),
(51, 1, '190.78.127.7', 'partida', 'agregar', '2017-03-14', '19:54:50'),
(52, 1, '190.78.127.7', 'partida', 'get_departamentos', '2017-03-14', '19:55:03'),
(53, 1, '190.78.127.7', 'partida', 'get_partida_for_partida', '2017-03-14', '19:55:12'),
(54, 1, '190.78.127.7', 'partida', 'get_partida_for_partida', '2017-03-14', '19:55:12'),
(55, 1, '190.78.127.7', 'partida', 'guardar', '2017-03-14', '19:55:24'),
(56, 1, '190.78.127.7', 'partida', 'agregar', '2017-03-14', '19:55:24'),
(57, 1, '190.78.127.7', 'partida', 'get_departamentos', '2017-03-14', '19:55:35'),
(58, 1, '190.78.127.7', 'partida', 'get_partida_for_partida', '2017-03-14', '19:55:45'),
(59, 1, '190.78.127.7', 'partida', 'get_partida_for_partida', '2017-03-14', '19:55:46'),
(60, 1, '190.78.127.7', 'partida', 'guardar', '2017-03-14', '19:55:56'),
(61, 1, '190.78.127.7', 'partida', 'agregar', '2017-03-14', '19:55:56'),
(62, 1, '190.78.127.7', 'partida', 'get_departamentos', '2017-03-14', '19:56:07'),
(63, 1, '190.78.127.7', 'partida', 'get_partida_for_partida', '2017-03-14', '19:56:19'),
(64, 1, '190.78.127.7', 'partida', 'get_partida_for_partida', '2017-03-14', '19:56:19'),
(65, 1, '190.78.127.7', 'partida', 'guardar', '2017-03-14', '19:56:36'),
(66, 1, '190.78.127.7', 'partida', 'agregar', '2017-03-14', '19:56:36'),
(67, 1, '190.78.127.7', 'partida', 'get_departamentos', '2017-03-14', '19:56:48'),
(68, 1, '190.78.127.7', 'partida', 'get_partida_for_partida', '2017-03-14', '19:57:00'),
(69, 1, '190.78.127.7', 'partida', 'get_partida_for_partida', '2017-03-14', '19:57:01'),
(70, 1, '190.78.127.7', 'partida', 'guardar', '2017-03-14', '19:57:15'),
(71, 1, '190.78.127.7', 'partida', 'agregar', '2017-03-14', '19:57:17'),
(72, 1, '190.78.127.7', 'partida', 'get_departamentos', '2017-03-14', '19:57:30'),
(73, 1, '190.78.127.7', 'partida', 'get_partida_for_partida', '2017-03-14', '19:57:38'),
(74, 1, '190.78.127.7', 'partida', 'get_partida_for_partida', '2017-03-14', '19:57:38'),
(75, 1, '190.78.127.7', 'partida', 'get_partida_for_partida', '2017-03-14', '19:57:50'),
(76, 1, '190.78.127.7', 'partida', 'get_partida_for_partida', '2017-03-14', '19:57:51'),
(77, 1, '190.78.127.7', 'partida', 'guardar', '2017-03-14', '19:57:59'),
(78, 1, '190.78.127.7', 'partida', 'agregar', '2017-03-14', '19:58:00'),
(79, 1, '190.78.127.7', 'partida', 'get_departamentos', '2017-03-14', '19:58:15'),
(80, 1, '190.78.127.7', 'partida', 'get_partida_for_partida', '2017-03-14', '19:58:29'),
(81, 1, '190.78.127.7', 'partida', 'get_partida_for_partida', '2017-03-14', '19:58:30'),
(82, 1, '190.78.127.7', 'partida', 'get_partida_for_partida', '2017-03-14', '19:58:37'),
(83, 1, '190.78.127.7', 'partida', 'get_partida_for_partida', '2017-03-14', '19:58:37'),
(84, 1, '190.78.127.7', 'partida', 'guardar', '2017-03-14', '19:59:29'),
(85, 1, '190.78.127.7', 'partida', 'agregar', '2017-03-14', '19:59:29'),
(86, 1, '190.78.127.7', 'partida', 'get_departamentos', '2017-03-14', '19:59:37'),
(87, 1, '190.78.127.7', 'partida', 'get_partida_for_partida', '2017-03-14', '20:00:29'),
(88, 1, '190.78.127.7', 'partida', 'guardar', '2017-03-14', '20:00:39'),
(89, 1, '190.78.127.7', 'partida', 'agregar', '2017-03-14', '20:00:40'),
(90, 1, '190.78.127.7', 'partida', 'get_departamentos', '2017-03-14', '20:00:52'),
(91, 1, '190.78.127.7', 'partida', 'get_partida_for_partida', '2017-03-14', '20:01:00'),
(92, 1, '190.78.127.7', 'partida', 'get_partida_for_partida', '2017-03-14', '20:01:00'),
(93, 1, '190.78.127.7', 'partida', 'guardar', '2017-03-14', '20:01:27'),
(94, 1, '190.78.127.7', 'partida', 'agregar', '2017-03-14', '20:01:27'),
(95, 1, '190.78.127.7', 'partida', 'get_departamentos', '2017-03-14', '20:01:40'),
(96, 1, '190.78.127.7', 'partida', 'get_partida_for_partida', '2017-03-14', '20:01:43'),
(97, 1, '190.78.127.7', 'partida', 'get_partida_for_partida', '2017-03-14', '20:01:43'),
(98, 1, '190.78.127.7', 'partida', 'get_partida_for_partida', '2017-03-14', '20:01:51'),
(99, 1, '190.78.127.7', 'partida', 'get_partida_for_partida', '2017-03-14', '20:01:52'),
(100, 1, '190.78.127.7', 'partida', 'guardar', '2017-03-14', '20:02:09'),
(101, 1, '190.78.127.7', 'partida', 'agregar', '2017-03-14', '20:02:10'),
(102, 1, '190.78.127.7', 'partida', 'get_departamentos', '2017-03-14', '20:02:23'),
(103, 1, '190.78.127.7', 'partida', 'get_partida_for_partida', '2017-03-14', '20:02:37'),
(104, 1, '190.78.127.7', 'partida', 'get_partida_for_partida', '2017-03-14', '20:02:38'),
(105, 1, '190.78.127.7', 'partida', 'guardar', '2017-03-14', '20:02:54'),
(106, 1, '190.78.127.7', 'partida', 'agregar', '2017-03-14', '20:02:55'),
(107, 1, '190.78.127.7', 'partida', 'agregar', '2017-03-14', '20:03:57'),
(108, 1, '190.78.127.7', 'partida', 'get_departamentos', '2017-03-14', '20:04:05'),
(109, 1, '190.78.127.7', 'partida', 'guardar', '2017-03-14', '20:04:45'),
(110, 1, '190.78.127.7', 'partida', 'agregar', '2017-03-14', '20:04:45'),
(111, 1, '190.78.127.7', 'partida', 'agregar', '2017-03-14', '20:05:03'),
(112, 1, '190.78.127.7', 'partida', 'get_departamentos', '2017-03-14', '20:05:04'),
(113, 1, '190.78.127.7', 'partida', 'get_departamentos', '2017-03-14', '20:05:04'),
(114, 1, '190.78.127.7', 'partida', 'guardar', '2017-03-14', '20:05:38'),
(115, 1, '190.78.127.7', 'partida', 'agregar', '2017-03-14', '20:05:38'),
(116, 1, '190.78.127.7', 'partida', 'get_departamentos', '2017-03-14', '20:05:49'),
(117, 1, '190.78.127.7', 'partida', 'get_partida_for_partida', '2017-03-14', '20:05:59'),
(118, 1, '190.78.127.7', 'partida', 'get_partida_for_partida', '2017-03-14', '20:06:00'),
(119, 1, '190.78.127.7', 'partida', 'guardar', '2017-03-14', '20:06:12'),
(120, 1, '190.78.127.7', 'partida', 'agregar', '2017-03-14', '20:06:12'),
(121, 1, '190.78.127.7', 'partida', 'get_departamentos', '2017-03-14', '20:06:21'),
(122, 1, '190.78.127.7', 'partida', 'get_partida_for_partida', '2017-03-14', '20:06:23'),
(123, 1, '190.78.127.7', 'partida', 'get_partida_for_partida', '2017-03-14', '20:06:23'),
(124, 1, '190.78.127.7', 'partida', 'guardar', '2017-03-14', '20:06:46'),
(125, 1, '190.78.127.7', 'partida', 'agregar', '2017-03-14', '20:06:46'),
(126, 1, '190.78.127.7', 'partida', 'get_departamentos', '2017-03-14', '20:06:59'),
(127, 1, '190.78.127.7', 'partida', 'get_partida_for_partida', '2017-03-14', '20:07:18'),
(128, 1, '190.78.127.7', 'partida', 'get_partida_for_partida', '2017-03-14', '20:07:19'),
(129, 1, '190.78.127.7', 'partida', 'get_partida_for_partida', '2017-03-14', '20:07:25'),
(130, 1, '190.78.127.7', 'partida', 'get_partida_for_partida', '2017-03-14', '20:07:25'),
(131, 1, '190.78.127.7', 'partida', 'guardar', '2017-03-14', '20:07:41'),
(132, 1, '190.78.127.7', 'partida', 'agregar', '2017-03-14', '20:07:42'),
(133, 1, '190.78.127.7', 'partida', 'get_departamentos', '2017-03-14', '20:07:51'),
(134, 1, '190.78.127.7', 'partida', 'get_partida_for_partida', '2017-03-14', '20:07:56'),
(135, 1, '190.78.127.7', 'partida', 'get_partida_for_partida', '2017-03-14', '20:07:57'),
(136, 1, '190.78.127.7', 'partida', 'guardar', '2017-03-14', '20:08:30'),
(137, 1, '190.78.127.7', 'partida', 'agregar', '2017-03-14', '20:08:30'),
(138, 1, '190.78.127.7', 'partida', 'get_departamentos', '2017-03-14', '20:08:42'),
(139, 1, '190.78.127.7', 'partida', 'get_partida_for_partida', '2017-03-14', '20:08:42'),
(140, 1, '190.78.127.7', 'partida', 'get_partida_for_partida', '2017-03-14', '20:08:43'),
(141, 1, '190.78.127.7', 'partida', 'guardar', '2017-03-14', '20:08:55'),
(142, 1, '190.78.127.7', 'partida', 'agregar', '2017-03-14', '20:08:56'),
(143, 1, '190.78.127.7', 'partida', 'guardar', '2017-03-14', '20:08:56'),
(144, 1, '190.78.127.7', 'partida', 'get_departamentos', '2017-03-14', '20:09:13'),
(145, 1, '190.78.127.7', 'partida', 'get_partida_for_partida', '2017-03-14', '20:09:39'),
(146, 1, '190.78.127.7', 'partida', 'get_partida_for_partida', '2017-03-14', '20:09:40'),
(147, 1, '190.78.127.7', 'partida', 'get_partida_for_partida', '2017-03-14', '20:09:41'),
(148, 1, '190.78.127.7', 'partida', 'guardar', '2017-03-14', '20:09:49'),
(149, 1, '190.78.127.7', 'partida', 'agregar', '2017-03-14', '20:09:49'),
(150, 1, '190.78.127.7', 'partida', 'get_departamentos', '2017-03-14', '20:10:05'),
(151, 1, '190.78.127.7', 'partida', 'agregar', '2017-03-14', '20:10:06'),
(152, 1, '190.78.127.7', 'partida', 'get_departamentos', '2017-03-14', '20:10:07'),
(153, 1, '190.78.127.7', 'partida', 'get_partida_for_partida', '2017-03-14', '20:10:12'),
(154, 1, '190.78.127.7', 'partida', 'get_partida_for_partida', '2017-03-14', '20:10:12'),
(155, 1, '190.78.127.7', 'partida', 'guardar', '2017-03-14', '20:10:25'),
(156, 1, '190.78.127.7', 'partida', 'agregar', '2017-03-14', '20:10:26'),
(157, 1, '190.78.127.7', 'partida', 'get_departamentos', '2017-03-14', '20:10:38'),
(158, 1, '190.78.127.7', 'partida', 'get_partida_for_partida', '2017-03-14', '20:11:13'),
(159, 1, '190.78.127.7', 'partida', 'get_partida_for_partida', '2017-03-14', '20:11:13'),
(160, 1, '190.78.127.7', 'partida', 'guardar', '2017-03-14', '20:11:22'),
(161, 1, '190.78.127.7', 'partida', 'agregar', '2017-03-14', '20:11:22'),
(162, 1, '190.78.127.7', 'partida', 'get_departamentos', '2017-03-14', '20:11:35'),
(163, 1, '190.78.127.7', 'partida', 'get_partida_for_partida', '2017-03-14', '20:11:36'),
(164, 1, '190.78.127.7', 'partida', 'get_partida_for_partida', '2017-03-14', '20:11:36'),
(165, 1, '190.78.127.7', 'partida', 'guardar', '2017-03-14', '20:11:46'),
(166, 1, '190.78.127.7', 'partida', 'agregar', '2017-03-14', '20:11:46'),
(167, 1, '190.78.127.7', 'partida', 'get_departamentos', '2017-03-14', '20:11:58'),
(168, 1, '190.78.127.7', 'partida', 'get_partida_for_partida', '2017-03-14', '20:12:04'),
(169, 1, '190.78.127.7', 'partida', 'get_partida_for_partida', '2017-03-14', '20:12:04'),
(170, 1, '190.78.127.7', 'partida', 'guardar', '2017-03-14', '20:12:20'),
(171, 1, '190.78.127.7', 'partida', 'agregar', '2017-03-14', '20:12:20'),
(172, 1, '190.78.127.7', 'partida', 'get_departamentos', '2017-03-14', '20:12:29'),
(173, 1, '190.78.127.7', 'partida', 'get_partida_for_partida', '2017-03-14', '20:12:37'),
(174, 1, '190.78.127.7', 'partida', 'get_partida_for_partida', '2017-03-14', '20:12:38'),
(175, 1, '190.78.127.7', 'partida', 'guardar', '2017-03-14', '20:12:46'),
(176, 1, '190.78.127.7', 'partida', 'agregar', '2017-03-14', '20:12:47'),
(177, 1, '190.78.127.7', 'partida', 'get_departamentos', '2017-03-14', '20:12:57'),
(178, 1, '190.78.127.7', 'partida', 'get_partida_for_partida', '2017-03-14', '20:12:58'),
(179, 1, '190.78.127.7', 'partida', 'get_partida_for_partida', '2017-03-14', '20:12:58'),
(180, 1, '190.78.127.7', 'partida', 'guardar', '2017-03-14', '20:13:11'),
(181, 1, '190.78.127.7', 'partida', 'agregar', '2017-03-14', '20:13:12'),
(182, 1, '190.78.127.7', 'partida', 'get_departamentos', '2017-03-14', '20:13:23'),
(183, 1, '190.78.127.7', 'partida', 'get_partida_for_partida', '2017-03-14', '20:13:34'),
(184, 1, '190.78.127.7', 'partida', 'get_partida_for_partida', '2017-03-14', '20:13:34'),
(185, 1, '190.78.127.7', 'partida', 'guardar', '2017-03-14', '20:13:45'),
(186, 1, '190.78.127.7', 'partida', 'agregar', '2017-03-14', '20:13:46'),
(187, 1, '190.78.127.7', 'partida', 'get_departamentos', '2017-03-14', '20:13:58'),
(188, 1, '190.78.127.7', 'partida', 'get_partida_for_partida', '2017-03-14', '20:14:01'),
(189, 1, '190.78.127.7', 'partida', 'get_partida_for_partida', '2017-03-14', '20:14:02'),
(190, 1, '190.78.127.7', 'partida', 'guardar', '2017-03-14', '20:14:18'),
(191, 1, '190.78.127.7', 'partida', 'agregar', '2017-03-14', '20:14:19'),
(192, 1, '190.78.127.7', 'partida', 'guardar', '2017-03-14', '20:14:19'),
(193, 1, '190.78.127.7', 'partida', 'get_departamentos', '2017-03-14', '20:14:30'),
(194, 1, '190.78.127.7', 'partida', 'guardar', '2017-03-14', '20:14:47'),
(195, 1, '190.78.127.7', 'partida', 'agregar', '2017-03-14', '20:14:47'),
(196, 1, '190.78.127.7', 'partida', 'agregar', '2017-03-14', '20:15:36'),
(197, 1, '190.78.127.7', 'partida', 'get_departamentos', '2017-03-14', '20:15:39'),
(198, 1, '190.78.127.7', 'partida', 'get_partida_for_partida', '2017-03-14', '20:15:52'),
(199, 1, '190.78.127.7', 'partida', 'get_partida_for_partida', '2017-03-14', '20:15:53'),
(200, 1, '190.78.127.7', 'partida', 'guardar', '2017-03-14', '20:16:10'),
(201, 1, '190.78.127.7', 'partida', 'agregar', '2017-03-14', '20:16:10'),
(202, 1, '190.78.127.7', 'partida', 'get_departamentos', '2017-03-14', '20:16:26'),
(203, 1, '190.78.127.7', 'partida', 'get_partida_for_partida', '2017-03-14', '20:16:34'),
(204, 1, '190.78.127.7', 'partida', 'get_partida_for_partida', '2017-03-14', '20:16:34'),
(205, 1, '190.78.127.7', 'partida', 'guardar', '2017-03-14', '20:16:48'),
(206, 1, '190.78.127.7', 'partida', 'agregar', '2017-03-14', '20:16:48'),
(207, 1, '190.78.127.7', 'partida', 'get_departamentos', '2017-03-14', '20:17:04'),
(208, 1, '190.78.127.7', 'partida', 'guardar', '2017-03-14', '20:17:20'),
(209, 1, '190.78.127.7', 'partida', 'agregar', '2017-03-14', '20:17:20'),
(210, 1, '190.78.127.7', 'partida', 'get_departamentos', '2017-03-14', '20:17:33'),
(211, 1, '190.78.127.7', 'partida', 'get_partida_for_partida', '2017-03-14', '20:17:57'),
(212, 1, '190.78.127.7', 'partida', 'get_partida_for_partida', '2017-03-14', '20:17:57'),
(213, 1, '190.78.127.7', 'partida', 'guardar', '2017-03-14', '20:18:13'),
(214, 1, '190.78.127.7', 'partida', 'agregar', '2017-03-14', '20:18:13'),
(215, 1, '190.78.127.7', 'partida', 'get_departamentos', '2017-03-14', '20:18:36'),
(216, 1, '190.78.127.7', 'partida', 'guardar', '2017-03-14', '20:18:59'),
(217, 1, '190.78.127.7', 'partida', 'guardar', '2017-03-14', '20:18:59'),
(218, 1, '190.78.127.7', 'partida', 'agregar', '2017-03-14', '20:19:11'),
(219, 1, '190.78.127.7', 'partida', 'get_departamentos', '2017-03-14', '20:19:26'),
(220, 1, '190.78.127.7', 'partida', 'get_partida_for_partida', '2017-03-14', '20:19:44'),
(221, 1, '190.78.127.7', 'partida', 'get_partida_for_partida', '2017-03-14', '20:19:44'),
(222, 1, '190.78.127.7', 'partida', 'guardar', '2017-03-14', '20:19:55'),
(223, 1, '190.78.127.7', 'partida', 'agregar', '2017-03-14', '20:19:55'),
(224, 1, '190.78.127.7', 'partida', 'get_departamentos', '2017-03-14', '20:20:04'),
(225, 1, '190.78.127.7', 'partida', 'guardar', '2017-03-14', '20:20:18'),
(226, 1, '190.78.127.7', 'partida', 'agregar', '2017-03-14', '20:20:18'),
(227, 1, '190.78.127.7', 'partida', 'get_departamentos', '2017-03-14', '20:20:30'),
(228, 1, '190.78.127.7', 'partida', 'get_partida_for_partida', '2017-03-14', '20:20:32'),
(229, 1, '190.78.127.7', 'partida', 'get_partida_for_partida', '2017-03-14', '20:20:32'),
(230, 1, '190.78.127.7', 'partida', 'guardar', '2017-03-14', '20:20:45'),
(231, 1, '190.78.127.7', 'partida', 'agregar', '2017-03-14', '20:20:45'),
(232, 1, '190.78.127.7', 'partida', 'get_departamentos', '2017-03-14', '20:21:00'),
(233, 1, '190.78.127.7', 'partida', 'guardar', '2017-03-14', '20:21:21'),
(234, 1, '190.78.127.7', 'partida', 'agregar', '2017-03-14', '20:21:22'),
(235, 1, '190.78.127.7', 'partida', 'get_departamentos', '2017-03-14', '20:21:35'),
(236, 1, '190.78.127.7', 'partida', 'get_partida_for_partida', '2017-03-14', '20:21:39'),
(237, 1, '190.78.127.7', 'partida', 'get_partida_for_partida', '2017-03-14', '20:21:39'),
(238, 1, '190.78.127.7', 'partida', 'guardar', '2017-03-14', '20:21:57'),
(239, 1, '190.78.127.7', 'partida', 'agregar', '2017-03-14', '20:21:58'),
(240, 1, '190.78.127.7', 'partida', 'get_departamentos', '2017-03-14', '20:22:13'),
(241, 1, '190.78.127.7', 'partida', 'guardar', '2017-03-14', '20:22:30'),
(242, 1, '190.78.127.7', 'partida', 'agregar', '2017-03-14', '20:22:30'),
(243, 1, '190.78.127.7', 'partida', 'get_departamentos', '2017-03-14', '20:22:48'),
(244, 1, '190.78.127.7', 'partida', 'get_partida_for_partida', '2017-03-14', '20:23:21'),
(245, 1, '190.78.127.7', 'partida', 'get_partida_for_partida', '2017-03-14', '20:23:22'),
(246, 1, '190.78.127.7', 'partida', 'guardar', '2017-03-14', '20:23:38'),
(247, 1, '190.78.127.7', 'partida', 'agregar', '2017-03-14', '20:23:39'),
(248, 1, '190.78.127.7', 'partida', 'get_departamentos', '2017-03-14', '20:23:59'),
(249, 1, '190.78.127.7', 'partida', 'guardar', '2017-03-14', '20:24:16'),
(250, 1, '190.78.127.7', 'partida', 'agregar', '2017-03-14', '20:24:16'),
(251, 1, '190.78.127.7', 'partida', 'get_departamentos', '2017-03-14', '20:24:26'),
(252, 1, '190.78.127.7', 'partida', 'get_partida_for_partida', '2017-03-14', '20:24:31'),
(253, 1, '190.78.127.7', 'partida', 'get_partida_for_partida', '2017-03-14', '20:24:32'),
(254, 1, '190.78.127.7', 'partida', 'guardar', '2017-03-14', '20:24:43'),
(255, 1, '190.78.127.7', 'partida', 'agregar', '2017-03-14', '20:24:43'),
(256, 1, '190.78.127.7', 'login', 'index', '2017-03-14', '20:26:32'),
(257, 1, '190.78.127.7', 'login', 'index', '2017-03-14', '20:26:35'),
(258, 1, '190.78.127.7', 'principal', 'index', '2017-03-14', '20:26:35'),
(259, 1, '190.78.127.7', 'pagos', 'index', '2017-03-14', '20:26:49'),
(260, 1, '190.78.127.7', 'partida', 'get_all', '2017-03-14', '20:26:51'),
(261, 1, '190.78.127.7', 'pagos', 'guardar_pagos', '2017-03-14', '20:28:42'),
(262, 1, '190.78.127.7', 'pdf', 'generar_orden', '2017-03-14', '20:28:42'),
(263, 1, '190.78.127.7', 'pdf', 'generar_orden', '2017-03-14', '20:28:52'),
(264, 1, '190.78.127.7', 'pagos', 'index', '2017-03-14', '20:35:13'),
(265, 1, '190.78.127.7', 'partida', 'get_all', '2017-03-14', '20:35:14'),
(266, 1, '190.78.127.7', 'pagos', 'guardar_pagos', '2017-03-14', '20:39:15'),
(267, 1, '190.78.127.7', 'pagos', 'guardar_pagos', '2017-03-14', '20:39:17'),
(268, 1, '190.78.127.7', 'pdf', 'generar_orden', '2017-03-14', '20:39:17'),
(269, NULL, '190.78.127.7', 'principal', 'index', '2017-03-14', '20:40:14'),
(270, NULL, '190.78.127.7', 'error', 'access', '2017-03-14', '20:40:15'),
(271, 1, '190.78.127.7', 'pdf', 'generar_orden', '2017-03-14', '20:43:34'),
(272, 1, '190.78.127.7', 'pdf', 'generar_orden', '2017-03-14', '20:48:58'),
(273, 1, '190.78.127.7', 'pdf', 'generar_orden', '2017-03-14', '20:53:11'),
(274, 1, '190.78.127.7', 'pdf', 'generar_orden', '2017-03-14', '20:54:59'),
(275, 1, '190.78.127.7', 'pdf', 'generar_orden', '2017-03-14', '20:55:11'),
(276, 1, '190.78.127.7', 'pdf', 'generar_orden', '2017-03-14', '20:55:14'),
(277, 1, '190.78.127.7', 'pdf', 'generar_orden', '2017-03-14', '21:07:46'),
(278, 1, '190.78.127.7', 'pdf', 'generar_orden', '2017-03-14', '21:07:46'),
(279, NULL, '173.252.123.', 'login', 'index', '2017-03-14', '21:09:04'),
(280, NULL, '173.252.123.', 'login', 'index', '2017-03-14', '21:09:05'),
(281, NULL, '66.220.145.2', 'login', 'index', '2017-03-14', '21:09:06'),
(282, NULL, '186.185.65.1', 'login', 'index', '2017-03-14', '21:09:09'),
(283, NULL, '186.185.65.1', 'login', 'index', '2017-03-14', '21:09:44'),
(284, 1, '186.185.65.1', 'login', 'index', '2017-03-14', '21:09:45'),
(285, 1, '186.185.65.1', 'principal', 'index', '2017-03-14', '21:09:47'),
(286, 1, '186.185.65.1', 'pdf', 'generar_orden', '2017-03-14', '21:10:07'),
(287, 1, '186.185.65.1', 'pdf', 'generar_orden', '2017-03-14', '21:11:09'),
(288, 1, '186.185.65.1', 'pdf', 'generar_orden', '2017-03-14', '21:11:30'),
(289, NULL, '190.76.250.2', 'login', 'index', '2017-03-14', '21:12:27'),
(290, 1, '190.76.250.2', 'login', 'index', '2017-03-14', '21:12:39'),
(291, 1, '190.76.250.2', 'login', 'index', '2017-03-14', '21:12:39'),
(292, 1, '190.76.250.2', 'principal', 'index', '2017-03-14', '21:12:40'),
(293, 1, '190.76.250.2', 'principal', 'index', '2017-03-14', '21:12:41'),
(294, 1, '190.76.250.2', 'pagos', 'listado', '2017-03-14', '21:12:55'),
(295, 1, '190.76.250.2', 'partida', 'get_all', '2017-03-14', '21:12:57'),
(296, 1, '190.76.250.2', 'login', 'index', '2017-03-14', '21:13:01'),
(297, 1, '190.76.250.2', 'principal', 'index', '2017-03-14', '21:13:01'),
(298, 1, '190.76.250.2', 'pagos', 'listado', '2017-03-14', '21:13:09'),
(299, 1, '190.76.250.2', 'partida', 'get_all', '2017-03-14', '21:13:14'),
(300, 1, '190.76.250.2', 'pagos', 'buscar_pagos', '2017-03-14', '21:13:15'),
(301, 1, '190.76.250.2', 'pdf', 'generar_orden', '2017-03-14', '21:13:43'),
(302, NULL, '190.76.250.2', 'login', 'index', '2017-03-14', '21:18:37'),
(303, NULL, '190.76.250.2', 'login', 'index', '2017-03-14', '21:19:04'),
(304, NULL, '190.76.250.2', 'login', 'index', '2017-03-14', '21:22:25'),
(305, NULL, '190.76.250.2', 'login', 'index', '2017-03-14', '21:23:19'),
(306, 1, '190.76.250.2', 'login', 'index', '2017-03-14', '21:23:19'),
(307, 1, '190.76.250.2', 'principal', 'index', '2017-03-14', '21:23:20'),
(308, 1, '190.76.250.2', 'partida', 'consultar', '2017-03-14', '21:23:29'),
(309, 1, '190.76.250.2', 'login', 'index', '2017-03-14', '21:24:30'),
(310, 1, '190.76.250.2', 'principal', 'index', '2017-03-14', '21:24:30'),
(311, 1, '190.76.250.2', 'pagos', 'listado', '2017-03-14', '21:24:50'),
(312, 1, '190.76.250.2', 'partida', 'get_all', '2017-03-14', '21:24:51'),
(313, 1, '190.76.250.2', 'pagos', 'buscar_pagos', '2017-03-14', '21:24:54'),
(314, 1, '190.76.250.2', 'pagos', 'eliminar_pago', '2017-03-14', '21:25:02'),
(315, 1, '190.76.250.2', 'pagos', 'buscar_pagos', '2017-03-14', '21:25:05'),
(316, 1, '190.76.250.2', 'login', 'index', '2017-03-14', '21:25:10'),
(317, 1, '190.76.250.2', 'principal', 'index', '2017-03-14', '21:25:10'),
(318, 1, '190.76.250.2', 'pagos', 'index', '2017-03-14', '21:25:45'),
(319, 1, '190.76.250.2', 'partida', 'get_all', '2017-03-14', '21:25:46'),
(320, NULL, '190.76.250.2', 'login', 'index', '2017-03-14', '21:34:24'),
(321, NULL, '190.201.169.', 'pdf', 'generar_orden', '2017-03-14', '22:20:40'),
(322, NULL, '190.201.169.', 'pdf', 'generar_orden', '2017-03-14', '22:21:18'),
(323, NULL, '190.201.169.', 'pdf', 'generar_orden', '2017-03-14', '22:46:35'),
(324, NULL, '190.201.169.', 'login', 'index', '2017-03-14', '22:47:03'),
(325, NULL, '190.201.169.', 'login', 'index', '2017-03-14', '22:47:10'),
(326, 4, '190.201.169.', 'login', 'index', '2017-03-14', '22:47:11'),
(327, 4, '190.201.169.', 'principal', 'index', '2017-03-14', '22:47:11'),
(328, 4, '190.201.169.', 'pagos', 'index', '2017-03-14', '22:47:17'),
(329, 4, '190.201.169.', 'partida', 'get_all', '2017-03-14', '22:47:19'),
(330, 4, '190.201.169.', 'pagos', 'guardar_pagos', '2017-03-14', '22:48:13'),
(331, 4, '190.201.169.', 'pdf', 'generar_orden', '2017-03-14', '22:48:13'),
(332, 4, '190.201.169.', 'login', 'index', '2017-03-15', '00:02:38'),
(333, 4, '190.201.169.', 'principal', 'index', '2017-03-15', '00:02:38'),
(334, 4, '190.201.169.', 'principal', 'index', '2017-03-15', '00:04:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu`
--

DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id_menu` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `enlace` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Truncar tablas antes de insertar `menu`
--

TRUNCATE TABLE `menu`;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `operacion`
--

DROP TABLE IF EXISTS `operacion`;
CREATE TABLE `operacion` (
  `id_aumento` int(11) NOT NULL,
  `id_partida` int(11) NOT NULL,
  `cantidad` decimal(10,2) NOT NULL,
  `fecha` datetime NOT NULL,
  `comentario` varchar(1000) NOT NULL,
  `tipo` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Truncar tablas antes de insertar `operacion`
--

TRUNCATE TABLE `operacion`;
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
CREATE TABLE `pagos` (
  `id_pago` int(11) NOT NULL,
  `nro_orden` varchar(100) COLLATE utf8_bin NOT NULL,
  `monto_orden` varchar(100) COLLATE utf8_bin NOT NULL,
  `nombre_beneficiario` varchar(200) COLLATE utf8_bin NOT NULL,
  `id_beneficiario` varchar(100) COLLATE utf8_bin NOT NULL,
  `nombre_autorizado` varchar(200) COLLATE utf8_bin NOT NULL,
  `id_autorizado` varchar(100) COLLATE utf8_bin NOT NULL,
  `cantidad_letras` varchar(300) COLLATE utf8_bin NOT NULL,
  `concepto_pago` varchar(500) COLLATE utf8_bin NOT NULL,
  `entidad_bancaria` varchar(300) COLLATE utf8_bin NOT NULL,
  `nro_cheque` varchar(100) COLLATE utf8_bin NOT NULL,
  `nro_cuenta` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Truncar tablas antes de insertar `pagos`
--

TRUNCATE TABLE `pagos`;
--
-- Volcado de datos para la tabla `pagos`
--

INSERT INTO `pagos` (`id_pago`, `nro_orden`, `monto_orden`, `nombre_beneficiario`, `id_beneficiario`, `nombre_autorizado`, `id_autorizado`, `cantidad_letras`, `concepto_pago`, `entidad_bancaria`, `nro_cheque`, `nro_cuenta`) VALUES
(16, '0041', '50000', 'ANGEL CHARLOT', '20574205', 'ANGEL CHARLOT ', '20574205', 'CINCUENTA MIL BOLIVARES EXACTOS', 'PAGO DE NOMINA', 'VENEZUELA', '05789', '012678'),
(15, '0102', '100', 'ANGEL CHARLOT', '20574205', '', '', 'MIL BOLIBARES EXACTOS', 'PASAJE', 'BANCO DE VENEZUELA', '1001', '5899-4198-0660-1112'),
(13, '0505', '6000', 'ADEL LEMUZ', '19685654', '', '', 'SEIS MIL BOLIVARES EXACTOS', 'LABORES VARIAS', 'BANCO DE VENEZUELA', '03265', '0102-0660-0000236');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagos_partidas`
--

DROP TABLE IF EXISTS `pagos_partidas`;
CREATE TABLE `pagos_partidas` (
  `id_pago` int(11) NOT NULL,
  `id_partida` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Truncar tablas antes de insertar `pagos_partidas`
--

TRUNCATE TABLE `pagos_partidas`;
--
-- Volcado de datos para la tabla `pagos_partidas`
--

INSERT INTO `pagos_partidas` (`id_pago`, `id_partida`) VALUES
(15, 63),
(15, 61),
(15, 57),
(14, 66),
(14, 63),
(14, 61),
(14, 57),
(13, 99),
(13, 101),
(13, 100),
(13, 87),
(15, 66),
(16, 49);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partidas`
--

DROP TABLE IF EXISTS `partidas`;
CREATE TABLE `partidas` (
  `id_partida` int(11) NOT NULL,
  `partida` varchar(30) NOT NULL,
  `denominacion` varchar(300) NOT NULL,
  `id_departamentos` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Truncar tablas antes de insertar `partidas`
--

TRUNCATE TABLE `partidas`;
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
CREATE TABLE `permisos` (
  `id_permisos` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `id_role` int(11) NOT NULL,
  `permiso` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Truncar tablas antes de insertar `permisos`
--

TRUNCATE TABLE `permisos`;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
CREATE TABLE `proveedores` (
  `id_proveedor` int(11) NOT NULL,
  `nombre_proveedor` varchar(200) COLLATE utf8_bin NOT NULL,
  `direccion_proveedor` varchar(500) COLLATE utf8_bin NOT NULL,
  `telefono_proveedor` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Truncar tablas antes de insertar `proveedores`
--

TRUNCATE TABLE `proveedores`;
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
CREATE TABLE `requisicion` (
  `id_requisicion` int(11) NOT NULL,
  `codigo_requisicion` varchar(50) COLLATE utf8_bin NOT NULL,
  `nombre_requisicion` varchar(100) COLLATE utf8_bin NOT NULL,
  `estado_requisicion` varchar(100) COLLATE utf8_bin NOT NULL,
  `id_departamento` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Truncar tablas antes de insertar `requisicion`
--

TRUNCATE TABLE `requisicion`;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `requisicion_partidas`
--

DROP TABLE IF EXISTS `requisicion_partidas`;
CREATE TABLE `requisicion_partidas` (
  `id_requisicion` int(11) NOT NULL,
  `id_partidas` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `descripcion` varchar(200) COLLATE utf8_bin NOT NULL,
  `precio` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Truncar tablas antes de insertar `requisicion_partidas`
--

TRUNCATE TABLE `requisicion_partidas`;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role`
--

DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id_role` int(11) NOT NULL,
  `role` varchar(50) NOT NULL,
  `peso` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Truncar tablas antes de insertar `role`
--

TRUNCATE TABLE `role`;
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
CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `id_role` int(11) NOT NULL DEFAULT '2',
  `login` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Truncar tablas antes de insertar `usuario`
--

TRUNCATE TABLE `usuario`;
--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `id_role`, `login`, `password`, `estado`) VALUES
(1, 1, 'admin', '53362d5ea52a28e1a960323ea19b02cb2b828026', 1),
(4, 3, 'compra', '53362d5ea52a28e1a960323ea19b02cb2b828026', 1),
(10, 2, '001', '53362d5ea52a28e1a960323ea19b02cb2b828026', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`id_departamento`);

--
-- Indices de la tabla `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indices de la tabla `operacion`
--
ALTER TABLE `operacion`
  ADD PRIMARY KEY (`id_aumento`),
  ADD KEY `id_partidas` (`id_partida`);

--
-- Indices de la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD PRIMARY KEY (`id_pago`);

--
-- Indices de la tabla `pagos_partidas`
--
ALTER TABLE `pagos_partidas`
  ADD KEY `id_pago` (`id_pago`),
  ADD KEY `id_partida` (`id_partida`),
  ADD KEY `id_pago_2` (`id_pago`);

--
-- Indices de la tabla `partidas`
--
ALTER TABLE `partidas`
  ADD PRIMARY KEY (`id_partida`),
  ADD KEY `id_departamentos` (`id_departamentos`);

--
-- Indices de la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD PRIMARY KEY (`id_permisos`),
  ADD KEY `id_menu` (`id_menu`,`id_role`),
  ADD KEY `id_role` (`id_role`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`id_proveedor`);

--
-- Indices de la tabla `requisicion`
--
ALTER TABLE `requisicion`
  ADD PRIMARY KEY (`id_requisicion`),
  ADD KEY `id_departamento` (`id_departamento`);

--
-- Indices de la tabla `requisicion_partidas`
--
ALTER TABLE `requisicion_partidas`
  ADD PRIMARY KEY (`id_requisicion`,`id_partidas`),
  ADD KEY `id_partidas` (`id_partidas`);

--
-- Indices de la tabla `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id_role`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `id_role_2` (`id_role`),
  ADD KEY `id_role_3` (`id_role`),
  ADD KEY `id_role_4` (`id_role`),
  ADD KEY `id_role_5` (`id_role`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `departamento`
--
ALTER TABLE `departamento`
  MODIFY `id_departamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `log`
--
ALTER TABLE `log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=335;
--
-- AUTO_INCREMENT de la tabla `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `operacion`
--
ALTER TABLE `operacion`
  MODIFY `id_aumento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;
--
-- AUTO_INCREMENT de la tabla `pagos`
--
ALTER TABLE `pagos`
  MODIFY `id_pago` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT de la tabla `partidas`
--
ALTER TABLE `partidas`
  MODIFY `id_partida` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;
--
-- AUTO_INCREMENT de la tabla `permisos`
--
ALTER TABLE `permisos`
  MODIFY `id_permisos` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `id_proveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `requisicion`
--
ALTER TABLE `requisicion`
  MODIFY `id_requisicion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `role`
--
ALTER TABLE `role`
  MODIFY `id_role` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
