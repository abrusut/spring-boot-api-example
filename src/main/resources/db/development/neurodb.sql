-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-10-2018 a las 23:12:30
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
-- Estructura de tabla para la tabla `actividad`
--

CREATE TABLE `actividad` (
  `id` bigint(20) NOT NULL,
  `color` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `fecha_alta` datetime DEFAULT NULL,
  `habilitado` bit(1) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `actividad`
--

INSERT INTO `actividad` (`id`, `color`, `descripcion`, `fecha_alta`, `habilitado`, `nombre`) VALUES
(1, '#b524b5', 'Kinesiologia', '2018-10-03 16:38:06', b'1', 'Kinesiologia'),
(2, '#30ad45', 'Hidroterapia', '2018-10-03 16:38:23', b'1', 'Hidroterapia'),
(3, '#d6c82f', 'Terapia Ocupacional', '2018-10-03 16:38:43', b'1', 'Terapia Ocupacional'),
(4, '#4985ad', 'Psicologia', '2018-10-03 16:39:01', b'1', 'Psicologia'),
(5, '#d96c41', 'Fonoaudiologia', '2018-10-03 16:39:22', b'1', 'Fonoaudiologia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `id` bigint(20) NOT NULL,
  `apellido` varchar(255) DEFAULT NULL,
  `barrio` varchar(255) DEFAULT NULL,
  `celular` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `latitud` varchar(255) DEFAULT NULL,
  `localidad` varchar(255) DEFAULT NULL,
  `longitud` varchar(255) DEFAULT NULL,
  `provincia` varchar(255) DEFAULT NULL,
  `telefono_fijo` varchar(255) DEFAULT NULL,
  `whatsapp` varchar(255) DEFAULT NULL,
  `dni` int(11) DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `sexo` varchar(255) DEFAULT NULL,
  `usuario_userid` bigint(20) DEFAULT NULL,
  `is_profesional` bit(1) DEFAULT NULL,
  `observacion` varchar(255) DEFAULT NULL,
  `profesion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`id`, `apellido`, `barrio`, `celular`, `direccion`, `email`, `facebook`, `latitud`, `localidad`, `longitud`, `provincia`, `telefono_fijo`, `whatsapp`, `dni`, `edad`, `fecha_nacimiento`, `nombre`, `sexo`, `usuario_userid`, `is_profesional`, `observacion`, `profesion`) VALUES
(1, 'Malviccino ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 29409222, NULL, '1974-10-16', 'Adriana', 'F', NULL, b'1', NULL, 'Kinesiologa'),
(2, 'Nasso', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21555444, NULL, '1980-10-02', 'Leandro', 'M', NULL, b'1', NULL, 'Kinesiologo'),
(3, 'Puebla ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 25666222, NULL, '1963-10-15', 'Agustin', 'M', NULL, b'1', NULL, 'Kinesiologo/ Hidroterapia'),
(4, 'Garcia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14888666, NULL, '1982-10-06', 'Martin', 'M', NULL, b'1', NULL, 'Kinesiologo/ Hidroterapia'),
(5, 'Versali', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14555222, NULL, '1952-10-15', 'Dora', 'F', NULL, b'1', NULL, 'Kinesiologa'),
(6, 'Tantera', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 29520111, NULL, '1974-10-09', 'Sofia', 'F', NULL, b'1', NULL, 'Hidroterapia'),
(7, 'Rausch', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 29409557, NULL, '1990-10-10', 'Gerogina', 'M', NULL, b'1', NULL, 'Hidroterapia'),
(8, 'Lucero', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 25666333, NULL, '1982-10-07', 'Luciana', 'M', NULL, b'1', NULL, 'Terapia ocupacional'),
(9, 'Bosisio ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12555666, NULL, '1972-10-17', 'Marcia', 'M', NULL, b'1', NULL, 'Terapia ocupacional'),
(10, 'Lopez', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4555888, NULL, '1971-10-13', 'David', 'M', NULL, b'1', NULL, 'Terapia ocupacional'),
(11, 'Alasia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 44555111, NULL, '1982-10-12', 'Carolina', 'M', NULL, b'1', NULL, 'Terapia ocupacional'),
(32768, 'Alaluf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 29520119, NULL, '1972-10-04', 'Maia', 'F', NULL, b'1', NULL, 'Psicologia'),
(32769, 'Fonseca', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 32666555, NULL, '1974-10-02', 'Maria del Carmen', 'F', NULL, b'1', NULL, ' Psicologia'),
(32770, 'Bonesso', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 22222333, NULL, '1931-10-01', 'Laura', 'F', NULL, b'1', NULL, 'Fonoaudiologa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado_actividades`
--

CREATE TABLE `empleado_actividades` (
  `empleado_id` bigint(20) NOT NULL,
  `actividades_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `empleado_actividades`
--

INSERT INTO `empleado_actividades` (`empleado_id`, `actividades_id`) VALUES
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
(32768, 4),
(32769, 4),
(32770, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hibernate_sequences`
--

CREATE TABLE `hibernate_sequences` (
  `sequence_name` varchar(255) NOT NULL,
  `sequence_next_hi_value` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `hibernate_sequences`
--

INSERT INTO `hibernate_sequences` (`sequence_name`, `sequence_next_hi_value`) VALUES
('persona', 2);

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
(3, 'JERAQUICOS', NULL, 'JERAQUICOS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `observacion`
--

CREATE TABLE `observacion` (
  `id` bigint(20) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `paciente_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `observacion`
--

INSERT INTO `observacion` (`id`, `descripcion`, `fecha`, `paciente_id`) VALUES
(1, 'Necesita Medicacion', '2018-10-03', 32771);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paciente`
--

CREATE TABLE `paciente` (
  `id` bigint(20) NOT NULL,
  `apellido` varchar(255) DEFAULT NULL,
  `barrio` varchar(255) DEFAULT NULL,
  `celular` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `latitud` varchar(255) DEFAULT NULL,
  `localidad` varchar(255) DEFAULT NULL,
  `longitud` varchar(255) DEFAULT NULL,
  `provincia` varchar(255) DEFAULT NULL,
  `telefono_fijo` varchar(255) DEFAULT NULL,
  `whatsapp` varchar(255) DEFAULT NULL,
  `dni` int(11) DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `sexo` varchar(255) DEFAULT NULL,
  `usuario_userid` bigint(20) DEFAULT NULL,
  `consentimiento` bit(1) DEFAULT NULL,
  `domicilio` varchar(255) DEFAULT NULL,
  `electrocardiograma` bit(1) DEFAULT NULL,
  `familiar` varchar(255) DEFAULT NULL,
  `fecha_ingreso` date DEFAULT NULL,
  `medico_deriva` varchar(255) DEFAULT NULL,
  `numero_afiliado` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `telefono_familiar` varchar(255) DEFAULT NULL,
  `obra_social_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `paciente`
--

INSERT INTO `paciente` (`id`, `apellido`, `barrio`, `celular`, `direccion`, `email`, `facebook`, `latitud`, `localidad`, `longitud`, `provincia`, `telefono_fijo`, `whatsapp`, `dni`, `edad`, `fecha_nacimiento`, `nombre`, `sexo`, `usuario_userid`, `consentimiento`, `domicilio`, `electrocardiograma`, `familiar`, `fecha_ingreso`, `medico_deriva`, `numero_afiliado`, `telefono`, `telefono_familiar`, `obra_social_id`) VALUES
(32771, 'Fertonani', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12333666, NULL, '1982-10-01', 'Oscar', 'M', NULL, b'1', 'San Jeronimo 1515', b'1', 'Rodenas Alejandra', '2018-10-03', 'Perez Gildo', '1', '0342 4505663', '0342 4505632', 3),
(32772, 'Gomez', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12656989, NULL, '1977-10-01', 'Alberto', 'M', NULL, b'1', 'quintana 4525', b'1', 'Mimi Villanueva', '2018-10-03', 'Waler Perez', '2', '4505200', '342 4521125', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `schedule`
--

CREATE TABLE `schedule` (
  `id` bigint(20) NOT NULL,
  `alta` date DEFAULT NULL,
  `fin` date DEFAULT NULL,
  `habilitado` bit(1) DEFAULT NULL,
  `inicia` date DEFAULT NULL,
  `actividad_id` bigint(20) DEFAULT NULL,
  `paciente_fk` bigint(20) DEFAULT NULL,
  `profesional_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `schedule`
--

INSERT INTO `schedule` (`id`, `alta`, `fin`, `habilitado`, `inicia`, `actividad_id`, `paciente_fk`, `profesional_id`) VALUES
(1, '2018-10-03', NULL, b'1', '2018-10-03', 2, 32771, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `schedule_day`
--

CREATE TABLE `schedule_day` (
  `id` bigint(20) NOT NULL,
  `dia` varchar(255) DEFAULT NULL,
  `habilitado` bit(1) DEFAULT NULL,
  `hora_desde` time DEFAULT NULL,
  `hora_hasta` time DEFAULT NULL,
  `schedule_fk` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `schedule_day`
--

INSERT INTO `schedule_day` (`id`, `dia`, `habilitado`, `hora_desde`, `hora_hasta`, `schedule_fk`) VALUES
(1, 'MONDAY', b'1', '08:00:00', '09:00:00', 1),
(2, 'TUESDAY', b'0', '08:00:00', NULL, 1),
(3, 'WEDNESDAY', b'1', '08:00:00', '09:00:00', 1),
(4, 'THURSDAY', b'0', '08:00:00', NULL, 1),
(5, 'FRIDAY', b'0', '08:00:00', NULL, 1),
(6, 'SATURDAY', b'0', '08:00:00', NULL, 1),
(7, 'SUNDAY', b'0', '08:00:00', NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `turno`
--

CREATE TABLE `turno` (
  `id` bigint(20) NOT NULL,
  `color_hex` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `observacion` varchar(255) DEFAULT NULL,
  `actividad_id` bigint(20) DEFAULT NULL,
  `paciente_id` bigint(20) DEFAULT NULL,
  `profecional_id` bigint(20) DEFAULT NULL,
  `schedule_day_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `userid` bigint(20) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `enabled` int(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`userid`, `email`, `enabled`, `password`, `username`) VALUES
(1, 'age.espinosa@gmail.com', NULL, '$2a$10$zrhS.HIRpo1zX.Rk7LQDSeHzSRwK7Te0FKkcl8cyoXiAOO5ICAzG6', 'oscar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_roles`
--

CREATE TABLE `user_roles` (
  `user_role_id` bigint(20) NOT NULL,
  `role` varchar(255) DEFAULT NULL,
  `userid` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actividad`
--
ALTER TABLE `actividad`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_qk9ln1dgcuaf6urxc290yccbo` (`usuario_userid`);

--
-- Indices de la tabla `empleado_actividades`
--
ALTER TABLE `empleado_actividades`
  ADD PRIMARY KEY (`empleado_id`,`actividades_id`),
  ADD KEY `FKlsfnawx2491isflftv7j8oan` (`actividades_id`);

--
-- Indices de la tabla `hibernate_sequences`
--
ALTER TABLE `hibernate_sequences`
  ADD PRIMARY KEY (`sequence_name`);

--
-- Indices de la tabla `obra_social`
--
ALTER TABLE `obra_social`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `observacion`
--
ALTER TABLE `observacion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `PACIENTE_ID_FK` (`paciente_id`);

--
-- Indices de la tabla `paciente`
--
ALTER TABLE `paciente`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK4sj0tagoyv4aju0m521ind5xy` (`obra_social_id`),
  ADD KEY `FK_8n4inaxws6lv1nx35sw8ooec2` (`usuario_userid`);

--
-- Indices de la tabla `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKotx4tfhd4j986480hcwg8te3l` (`actividad_id`),
  ADD KEY `FKajrqqui2kew562fix8ta6vl0g` (`paciente_fk`),
  ADD KEY `FKcw07wjtn2bj943n35b74dicnb` (`profesional_id`);

--
-- Indices de la tabla `schedule_day`
--
ALTER TABLE `schedule_day`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKicwmiaqiaevu0omk11306snjp` (`schedule_fk`);

--
-- Indices de la tabla `turno`
--
ALTER TABLE `turno`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK4o1pdejjk5qluhqudsm2vl7o4` (`actividad_id`),
  ADD KEY `FKqhwvsf9bqsfmlhd0nurynvwsd` (`paciente_id`),
  ADD KEY `FKsd28wc461hkrkhq9qwrawmwx6` (`profecional_id`),
  ADD KEY `FKck8lqj4x07c85ds4716px2acu` (`schedule_day_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`);

--
-- Indices de la tabla `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_role_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actividad`
--
ALTER TABLE `actividad`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `obra_social`
--
ALTER TABLE `obra_social`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `observacion`
--
ALTER TABLE `observacion`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `schedule`
--
ALTER TABLE `schedule`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `schedule_day`
--
ALTER TABLE `schedule_day`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `turno`
--
ALTER TABLE `turno`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `userid` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `user_role_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD CONSTRAINT `FK_qk9ln1dgcuaf6urxc290yccbo` FOREIGN KEY (`usuario_userid`) REFERENCES `users` (`userid`);

--
-- Filtros para la tabla `empleado_actividades`
--
ALTER TABLE `empleado_actividades`
  ADD CONSTRAINT `FK91luw13y560w29f4p996wtxi7` FOREIGN KEY (`empleado_id`) REFERENCES `empleado` (`id`),
  ADD CONSTRAINT `FKlsfnawx2491isflftv7j8oan` FOREIGN KEY (`actividades_id`) REFERENCES `actividad` (`id`);

--
-- Filtros para la tabla `observacion`
--
ALTER TABLE `observacion`
  ADD CONSTRAINT `PACIENTE_ID_FK` FOREIGN KEY (`paciente_id`) REFERENCES `paciente` (`id`);

--
-- Filtros para la tabla `paciente`
--
ALTER TABLE `paciente`
  ADD CONSTRAINT `FK4sj0tagoyv4aju0m521ind5xy` FOREIGN KEY (`obra_social_id`) REFERENCES `obra_social` (`id`),
  ADD CONSTRAINT `FK_8n4inaxws6lv1nx35sw8ooec2` FOREIGN KEY (`usuario_userid`) REFERENCES `users` (`userid`);

--
-- Filtros para la tabla `schedule`
--
ALTER TABLE `schedule`
  ADD CONSTRAINT `FKajrqqui2kew562fix8ta6vl0g` FOREIGN KEY (`paciente_fk`) REFERENCES `paciente` (`id`),
  ADD CONSTRAINT `FKcw07wjtn2bj943n35b74dicnb` FOREIGN KEY (`profesional_id`) REFERENCES `empleado` (`id`),
  ADD CONSTRAINT `FKotx4tfhd4j986480hcwg8te3l` FOREIGN KEY (`actividad_id`) REFERENCES `actividad` (`id`);

--
-- Filtros para la tabla `schedule_day`
--
ALTER TABLE `schedule_day`
  ADD CONSTRAINT `FKicwmiaqiaevu0omk11306snjp` FOREIGN KEY (`schedule_fk`) REFERENCES `schedule` (`id`);

--
-- Filtros para la tabla `turno`
--
ALTER TABLE `turno`
  ADD CONSTRAINT `FK4o1pdejjk5qluhqudsm2vl7o4` FOREIGN KEY (`actividad_id`) REFERENCES `actividad` (`id`),
  ADD CONSTRAINT `FKck8lqj4x07c85ds4716px2acu` FOREIGN KEY (`schedule_day_id`) REFERENCES `schedule_day` (`id`),
  ADD CONSTRAINT `FKqhwvsf9bqsfmlhd0nurynvwsd` FOREIGN KEY (`paciente_id`) REFERENCES `paciente` (`id`),
  ADD CONSTRAINT `FKsd28wc461hkrkhq9qwrawmwx6` FOREIGN KEY (`profecional_id`) REFERENCES `empleado` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
