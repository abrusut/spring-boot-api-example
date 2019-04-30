-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-08-2018 a las 06:23:14
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
-- Estructura de tabla para la tabla `empleado_actividad`
--

CREATE TABLE `empleado_actividad` (
  `empleado_id` bigint(20) NOT NULL,
  `actividad_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `empleado_actividad`
--

INSERT INTO `empleado_actividad` (`empleado_id`, `actividad_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(3, 2),
(4, 1),
(4, 2),
(5, 1),
(6, 2),
(7, 2),
(8, 3),
(9, 3),
(10, 3),
(11, 3),
(12, 4),
(13, 4),
(14, 5);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `empleado_actividad`
--
ALTER TABLE `empleado_actividad`
  ADD KEY `FKqc3kgv3m77d5xi73sa39gsblt` (`actividad_id`),
  ADD KEY `FKjoj591sgtnbnuf1thlh92pw4s` (`empleado_id`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `empleado_actividad`
--
ALTER TABLE `empleado_actividad`
  ADD CONSTRAINT `FKjoj591sgtnbnuf1thlh92pw4s` FOREIGN KEY (`empleado_id`) REFERENCES `empleado` (`id`),
  ADD CONSTRAINT `FKqc3kgv3m77d5xi73sa39gsblt` FOREIGN KEY (`actividad_id`) REFERENCES `actividad` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
