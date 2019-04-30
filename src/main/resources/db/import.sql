use neurodb;
--
-- Base de datos: `neurodb`
--

-- --------------------------------------------------------


--
-- Volcado de datos para la tabla `actividad`
--

INSERT INTO `actividad` (`id`, `color`, `descripcion`, `fecha_alta`, `habilitado`, `nombre`) VALUES (1, '#b524b5', 'Kinesiologia', '2018-10-03 16:38:06', 1, 'Kinesiologia');
INSERT INTO `actividad` (`id`, `color`, `descripcion`, `fecha_alta`, `habilitado`, `nombre`) VALUES (2, '#30ad45', 'Hidroterapia', '2018-10-03 16:38:23', 1, 'Hidroterapia');
INSERT INTO `actividad` (`id`, `color`, `descripcion`, `fecha_alta`, `habilitado`, `nombre`) VALUES (3, '#d6c82f', 'Terapia Ocupacional', '2018-10-03 16:38:43', 1, 'Terapia Ocupacional');
INSERT INTO `actividad` (`id`, `color`, `descripcion`, `fecha_alta`, `habilitado`, `nombre`) VALUES (4, '#4985ad', 'Psicologia', '2018-10-03 16:39:01', 1, 'Psicologia');
INSERT INTO `actividad` (`id`, `color`, `descripcion`, `fecha_alta`, `habilitado`, `nombre`) VALUES (5, '#d96c41', 'Fonoaudiologia', '2018-10-03 16:39:22', 1, 'Fonoaudiologia');

-- --------------------------------------------------------

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`id`, `apellido`, `barrio`, `celular`, `direccion`, `email`, `facebook`, `latitud`, `localidad`, `longitud`, `provincia`, `telefono_fijo`, `whatsapp`, `dni`, `edad`, `fecha_nacimiento`, `nombre`, `sexo`, `usuario_userid`, `is_profesional`, `observacion`, `profesion`) VALUES (1, 'Malviccino ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 29409222, NULL, '1974-10-16', 'Adriana', 'F', NULL, 1, NULL, 'Kinesiologa');
INSERT INTO `empleado` (`id`, `apellido`, `barrio`, `celular`, `direccion`, `email`, `facebook`, `latitud`, `localidad`, `longitud`, `provincia`, `telefono_fijo`, `whatsapp`, `dni`, `edad`, `fecha_nacimiento`, `nombre`, `sexo`, `usuario_userid`, `is_profesional`, `observacion`, `profesion`) VALUES(2, 'Nasso', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21555444, NULL, '1980-10-02', 'Leandro', 'M', NULL, 1, NULL, 'Kinesiologo');
INSERT INTO `empleado` (`id`, `apellido`, `barrio`, `celular`, `direccion`, `email`, `facebook`, `latitud`, `localidad`, `longitud`, `provincia`, `telefono_fijo`, `whatsapp`, `dni`, `edad`, `fecha_nacimiento`, `nombre`, `sexo`, `usuario_userid`, `is_profesional`, `observacion`, `profesion`) VALUES(3, 'Puebla ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 25666222, NULL, '1963-10-15', 'Agustin', 'M', NULL, 1, NULL, 'Kinesiologo/ Hidroterapia');
INSERT INTO `empleado` (`id`, `apellido`, `barrio`, `celular`, `direccion`, `email`, `facebook`, `latitud`, `localidad`, `longitud`, `provincia`, `telefono_fijo`, `whatsapp`, `dni`, `edad`, `fecha_nacimiento`, `nombre`, `sexo`, `usuario_userid`, `is_profesional`, `observacion`, `profesion`) VALUES(4, 'Garcia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14888666, NULL, '1982-10-06', 'Martin', 'M', NULL, 1, NULL, 'Kinesiologo/ Hidroterapia');
INSERT INTO `empleado` (`id`, `apellido`, `barrio`, `celular`, `direccion`, `email`, `facebook`, `latitud`, `localidad`, `longitud`, `provincia`, `telefono_fijo`, `whatsapp`, `dni`, `edad`, `fecha_nacimiento`, `nombre`, `sexo`, `usuario_userid`, `is_profesional`, `observacion`, `profesion`) VALUES(5, 'Versali', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14555222, NULL, '1952-10-15', 'Dora', 'F', NULL, 1, NULL, 'Kinesiologa');
INSERT INTO `empleado` (`id`, `apellido`, `barrio`, `celular`, `direccion`, `email`, `facebook`, `latitud`, `localidad`, `longitud`, `provincia`, `telefono_fijo`, `whatsapp`, `dni`, `edad`, `fecha_nacimiento`, `nombre`, `sexo`, `usuario_userid`, `is_profesional`, `observacion`, `profesion`) VALUES(6, 'Tantera', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 29520111, NULL, '1974-10-09', 'Sofia', 'F', NULL, 1, NULL, 'Hidroterapia');
INSERT INTO `empleado` (`id`, `apellido`, `barrio`, `celular`, `direccion`, `email`, `facebook`, `latitud`, `localidad`, `longitud`, `provincia`, `telefono_fijo`, `whatsapp`, `dni`, `edad`, `fecha_nacimiento`, `nombre`, `sexo`, `usuario_userid`, `is_profesional`, `observacion`, `profesion`) VALUES(7, 'Rausch', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 29409557, NULL, '1990-10-10', 'Gerogina', 'M', NULL, 1, NULL, 'Hidroterapia');
INSERT INTO `empleado` (`id`, `apellido`, `barrio`, `celular`, `direccion`, `email`, `facebook`, `latitud`, `localidad`, `longitud`, `provincia`, `telefono_fijo`, `whatsapp`, `dni`, `edad`, `fecha_nacimiento`, `nombre`, `sexo`, `usuario_userid`, `is_profesional`, `observacion`, `profesion`) VALUES(8, 'Lucero', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 25666333, NULL, '1982-10-07', 'Luciana', 'M', NULL, 1, NULL, 'Terapia ocupacional');
INSERT INTO `empleado` (`id`, `apellido`, `barrio`, `celular`, `direccion`, `email`, `facebook`, `latitud`, `localidad`, `longitud`, `provincia`, `telefono_fijo`, `whatsapp`, `dni`, `edad`, `fecha_nacimiento`, `nombre`, `sexo`, `usuario_userid`, `is_profesional`, `observacion`, `profesion`) VALUES(9, 'Bosisio ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12555666, NULL, '1972-10-17', 'Marcia', 'M', NULL, 1, NULL, 'Terapia ocupacional');
INSERT INTO `empleado` (`id`, `apellido`, `barrio`, `celular`, `direccion`, `email`, `facebook`, `latitud`, `localidad`, `longitud`, `provincia`, `telefono_fijo`, `whatsapp`, `dni`, `edad`, `fecha_nacimiento`, `nombre`, `sexo`, `usuario_userid`, `is_profesional`, `observacion`, `profesion`) VALUES(10, 'Lopez', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4555888, NULL, '1971-10-13', 'David', 'M', NULL, 1, NULL, 'Terapia ocupacional');
INSERT INTO `empleado` (`id`, `apellido`, `barrio`, `celular`, `direccion`, `email`, `facebook`, `latitud`, `localidad`, `longitud`, `provincia`, `telefono_fijo`, `whatsapp`, `dni`, `edad`, `fecha_nacimiento`, `nombre`, `sexo`, `usuario_userid`, `is_profesional`, `observacion`, `profesion`) VALUES(11, 'Alasia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 44555111, NULL, '1982-10-12', 'Carolina', 'M', NULL, 1, NULL, 'Terapia ocupacional');
INSERT INTO `empleado` (`id`, `apellido`, `barrio`, `celular`, `direccion`, `email`, `facebook`, `latitud`, `localidad`, `longitud`, `provincia`, `telefono_fijo`, `whatsapp`, `dni`, `edad`, `fecha_nacimiento`, `nombre`, `sexo`, `usuario_userid`, `is_profesional`, `observacion`, `profesion`) VALUES(32768, 'Alaluf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 29520119, NULL, '1972-10-04', 'Maia', 'F', NULL, 1, NULL, 'Psicologia');
INSERT INTO `empleado` (`id`, `apellido`, `barrio`, `celular`, `direccion`, `email`, `facebook`, `latitud`, `localidad`, `longitud`, `provincia`, `telefono_fijo`, `whatsapp`, `dni`, `edad`, `fecha_nacimiento`, `nombre`, `sexo`, `usuario_userid`, `is_profesional`, `observacion`, `profesion`) VALUES(32769, 'Fonseca', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 32666555, NULL, '1974-10-02', 'Maria del Carmen', 'F', NULL, 1, NULL, ' Psicologia');
INSERT INTO `empleado` (`id`, `apellido`, `barrio`, `celular`, `direccion`, `email`, `facebook`, `latitud`, `localidad`, `longitud`, `provincia`, `telefono_fijo`, `whatsapp`, `dni`, `edad`, `fecha_nacimiento`, `nombre`, `sexo`, `usuario_userid`, `is_profesional`, `observacion`, `profesion`) VALUES (32770, 'Bonesso', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 22222333, NULL, '1931-10-01', 'Laura', 'F', NULL, 1, NULL, 'Fonoaudiologa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado_actividades`
--

--
-- Volcado de datos para la tabla `empleado_actividades`
--

INSERT INTO `empleado_actividades` (`empleado_id`, `actividades_id`) VALUES(1, 1);
INSERT INTO `empleado_actividades` (`empleado_id`, `actividades_id`) VALUES(2, 1);
INSERT INTO `empleado_actividades` (`empleado_id`, `actividades_id`) VALUES(3, 1);
INSERT INTO `empleado_actividades` (`empleado_id`, `actividades_id`) VALUES(3, 2);
INSERT INTO `empleado_actividades` (`empleado_id`, `actividades_id`) VALUES(4, 1);
INSERT INTO `empleado_actividades` (`empleado_id`, `actividades_id`) VALUES(4, 2);
INSERT INTO `empleado_actividades` (`empleado_id`, `actividades_id`) VALUES(5, 1);
INSERT INTO `empleado_actividades` (`empleado_id`, `actividades_id`) VALUES(6, 2);
INSERT INTO `empleado_actividades` (`empleado_id`, `actividades_id`) VALUES(7, 2);
INSERT INTO `empleado_actividades` (`empleado_id`, `actividades_id`) VALUES(8, 3);
INSERT INTO `empleado_actividades` (`empleado_id`, `actividades_id`) VALUES(9, 3);
INSERT INTO `empleado_actividades` (`empleado_id`, `actividades_id`) VALUES(10, 3);
INSERT INTO `empleado_actividades` (`empleado_id`, `actividades_id`) VALUES(11, 3);
INSERT INTO `empleado_actividades` (`empleado_id`, `actividades_id`) VALUES(32768, 4);
INSERT INTO `empleado_actividades` (`empleado_id`, `actividades_id`) VALUES(32769, 4);
INSERT INTO `empleado_actividades` (`empleado_id`, `actividades_id`) VALUES(32770, 5);

-- --------------------------------------------------------

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `obra_social`
--



--
-- Volcado de datos para la tabla `obra_social`
--


INSERT INTO `obra_social` (`id`, `descripcion`, `habilitado`, `nombre`) VALUES (1, 'IAPOS', NULL, 'IAPOS');
INSERT INTO `obra_social` (`id`, `descripcion`, `habilitado`, `nombre`) VALUES (2, 'PAMI', NULL, 'PAMI');
INSERT INTO `obra_social` (`id`, `descripcion`, `habilitado`, `nombre`) VALUES (3, 'JERAQUICOS', NULL, 'JERAQUICOS');
INSERT INTO `obra_social` (`id`, `descripcion`, `habilitado`, `nombre`) VALUES (4, 'OSDE', NULL, 'OSDE');
INSERT INTO `obra_social` (`id`, `descripcion`, `habilitado`, `nombre`) VALUES (5, 'CS ECONOM', NULL, 'CS ECONOM');
INSERT INTO `obra_social` (`id`, `descripcion`, `habilitado`, `nombre`) VALUES (6, 'SANCOR', NULL, 'SANCOR');
INSERT INTO `obra_social` (`id`, `descripcion`, `habilitado`, `nombre`) VALUES (7, 'OSECAC', NULL, 'OSECAC');
INSERT INTO `obra_social` (`id`, `descripcion`, `habilitado`, `nombre`) VALUES (8, 'FEDERADA SALUD', NULL, 'FEDERADA SALUD');
INSERT INTO `obra_social` (`id`, `descripcion`, `habilitado`, `nombre`) VALUES (9, 'PODER JUDICIAL DE LA NACION', NULL, 'PODER JUDICIAL DE LA NACION');
INSERT INTO `obra_social` (`id`, `descripcion`, `habilitado`, `nombre`) VALUES (10, 'AMUR', NULL, 'AMUR');
INSERT INTO `obra_social` (`id`, `descripcion`, `habilitado`, `nombre`) VALUES (11, 'OSPIL', NULL, 'OSPIL');
INSERT INTO `obra_social` (`id`, `descripcion`, `habilitado`, `nombre`) VALUES (12, 'OSMATA', NULL, 'OSMATA');
INSERT INTO `obra_social` (`id`, `descripcion`, `habilitado`, `nombre`) VALUES (13, 'OSPAC', NULL, 'OSPAC');
INSERT INTO `obra_social` (`id`, `descripcion`, `habilitado`, `nombre`) VALUES (14, 'OSPAT', NULL, 'OSPAT');
INSERT INTO `obra_social` (`id`, `descripcion`, `habilitado`, `nombre`) VALUES (15, 'OSPRERA', NULL, 'OSPRERA');
INSERT INTO `obra_social` (`id`, `descripcion`, `habilitado`, `nombre`) VALUES (16, 'LUZ Y FUERZA', NULL, 'LUZ Y FUERZA');
INSERT INTO `obra_social` (`id`, `descripcion`, `habilitado`, `nombre`) VALUES (17, 'DASUTEN', NULL, 'DASUTEN');
INSERT INTO `obra_social` (`id`, `descripcion`, `habilitado`, `nombre`) VALUES (18, 'CAJA FORENSE', NULL, 'CAJA FORENSE');
INSERT INTO `obra_social` (`id`, `descripcion`, `habilitado`, `nombre`) VALUES (19, 'CAJA DE INGENIEROS', NULL, 'CAJA DE INGENIEROS');
INSERT INTO `obra_social` (`id`, `descripcion`, `habilitado`, `nombre`) VALUES (20, 'SWIS MEDICAL', NULL, 'SWIS MEDICAL');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `observacion`
--


--
-- Volcado de datos para la tabla `observacion`
--

-- INSERT INTO `observacion` (`id`, `descripcion`, `fecha`, `paciente_id`) VALUES (1, 'Necesita Medicacion', '2018-10-03', 32771);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paciente`
--



--
-- Volcado de datos para la tabla `paciente`
--


INSERT INTO `paciente` (`id`, `apellido`, `barrio`, `celular`, `direccion`, `email`, `facebook`, `latitud`, `localidad`, `longitud`, `provincia`, `telefono_fijo`, `whatsapp`, `dni`, `edad`, `fecha_nacimiento`, `nombre`, `sexo`, `usuario_userid`, `consentimiento`, `domicilio`, `electrocardiograma`, `familiar`, `fecha_ingreso`, `medico_deriva`, `numero_afiliado`, `telefono`, `telefono_familiar`, `obra_social_id`) VALUES(32771, 'Fertonani', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12333666, NULL, '1982-10-01', 'Oscar', 'M', NULL, 1, 'San Jeronimo 1515', 1, 'Rodenas Alejandra', '2018-10-03', 'Perez Gildo', 1, '0342 4505663', '0342 4505632', 3);
INSERT INTO `paciente` (`id`, `apellido`, `barrio`, `celular`, `direccion`, `email`, `facebook`, `latitud`, `localidad`, `longitud`, `provincia`, `telefono_fijo`, `whatsapp`, `dni`, `edad`, `fecha_nacimiento`, `nombre`, `sexo`, `usuario_userid`, `consentimiento`, `domicilio`, `electrocardiograma`, `familiar`, `fecha_ingreso`, `medico_deriva`, `numero_afiliado`, `telefono`, `telefono_familiar`, `obra_social_id`) VALUES(32772, 'Gomez', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12656989, NULL, '1977-10-01', 'Alberto', 'M', NULL, 1, 'quintana 4525', 1, 'Mimi Villanueva', '2018-10-03', 'Waler Perez', '2', '4505200', '342 4521125', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `schedule`
--

--
-- Volcado de datos para la tabla `schedule`
--

INSERT INTO `schedule` (`id`, `alta`, `fin`, `habilitado`, `inicia`, `actividad_id`, `paciente_fk`, `profesional_id`) VALUES (1, '2018-10-03', NULL, 1, '2018-10-03', 2, 32771, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `schedule_day`
--


--
-- Volcado de datos para la tabla `schedule_day`
--

INSERT INTO `schedule_day` (`id`, `dia`, `habilitado`, `hora_desde`, `hora_hasta`, `schedule_fk`) VALUES(1, 'MONDAY', 1, '08:00:00', '09:00:00', 1);
INSERT INTO `schedule_day` (`id`, `dia`, `habilitado`, `hora_desde`, `hora_hasta`, `schedule_fk`) VALUES(2, 'TUESDAY', 0, '08:00:00', NULL, 1);
INSERT INTO `schedule_day` (`id`, `dia`, `habilitado`, `hora_desde`, `hora_hasta`, `schedule_fk`) VALUES(3, 'WEDNESDAY', 1, '08:00:00', '09:00:00', 1);
INSERT INTO `schedule_day` (`id`, `dia`, `habilitado`, `hora_desde`, `hora_hasta`, `schedule_fk`) VALUES(4, 'THURSDAY', 0, '08:00:00', NULL, 1);
INSERT INTO `schedule_day` (`id`, `dia`, `habilitado`, `hora_desde`, `hora_hasta`, `schedule_fk`) VALUES(5, 'FRIDAY', 0, '08:00:00', NULL, 1);
INSERT INTO `schedule_day` (`id`, `dia`, `habilitado`, `hora_desde`, `hora_hasta`, `schedule_fk`) VALUES(6, 'SATURDAY', 0, '08:00:00', NULL, 1);
INSERT INTO `schedule_day` (`id`, `dia`, `habilitado`, `hora_desde`, `hora_hasta`, `schedule_fk`) VALUES(7, 'SUNDAY', 0, '08:00:00', NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `turno`
--



-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--


--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`userid`, `email`, `enabled`, `password`, `username`) VALUES(1, 'age.espinosa@gmail.com', NULL, '$2a$10$zrhS.HIRpo1zX.Rk7LQDSeHzSRwK7Te0FKkcl8cyoXiAOO5ICAzG6', 'oscar');

-- --------------------------------------------------------

