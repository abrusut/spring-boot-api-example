-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-09-2018 a las 01:58:58
-- Versión del servidor: 10.1.28-MariaDB
-- Versión de PHP: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `neurodb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `obra_social`
--

CREATE TABLE `obra_social` (
  `id` bigint(20) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `habilitado` bit(1) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `obra_social`
--

INSERT INTO `obra_social` (`id`, `descripcion`, `habilitado`, `nombre`) VALUES
(1, 'IAPOS', NULL, 'IAPOS'),
(2, 'PAMI', NULL, 'PAMI'),
(3, 'JERAQUICOS', NULL, 'JERAQUICOS'),
(4, 'OSDE', NULL, 'OSDE'),
(5, 'CS ECONOM', NULL, 'CS ECONOM'),
(6, 'SANCOR', NULL, 'SANCOR'),
(7, 'OSECAC', NULL, 'OSECAC'),
(8, 'FEDERADA SALUD', NULL, 'FEDERADA SALUD'),
(9, 'PODER JUDICIAL DE LA NACION', NULL, 'PODER JUDICIAL DE LA NACION'),
(10, 'AMUR', NULL, 'AMUR'),
(11, 'OSPIL', NULL, 'OSPIL'),
(12, 'OSMATA', NULL, 'OSMATA'),
(13, 'OSPAC', NULL, 'OSPAC'),
(14, 'OSPAT', NULL, 'OSPAT'),
(15, 'OSPRERA', NULL, 'OSPRERA'),
(16, 'LUZ Y FUERZA', NULL, 'LUZ Y FUERZA'),
(17, 'DASUTEN', NULL, 'DASUTEN'),
(18, 'CAJA FORENSE', NULL, 'CAJA FORENSE'),
(19, 'CAJA DE INGENIEROS', NULL, 'CAJA DE INGENIEROS'),
(20, 'SWIS MEDICAL', NULL, 'SWIS MEDICAL');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `obra_social`
--
ALTER TABLE `obra_social`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `obra_social`
--
ALTER TABLE `obra_social`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
