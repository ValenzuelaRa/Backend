-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-10-2023 a las 19:03:26
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `informacion_confidencial`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE `alumno` (
  `Alumno_id` int(11) NOT NULL,
  `Nombre` text CHARACTER SET utf8mb4 NOT NULL,
  `Apellido` text CHARACTER SET utf8mb4 NOT NULL,
  `CURP` int(11) NOT NULL,
  `Matricula` int(11) NOT NULL,
  `Modalidad` text CHARACTER SET utf8mb4 NOT NULL,
  `Carrera` text CHARACTER SET utf8mb4 NOT NULL,
  `Promedio` float NOT NULL,
  `PorcentajeAvanceKardex` int(11) NOT NULL,
  `Creditos` int(11) NOT NULL,
  `Especialidad` int(11) NOT NULL,
  `Semestre` int(11) NOT NULL,
  `Horario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docente`
--

CREATE TABLE `docente` (
  `Docente_id` int(11) NOT NULL,
  `Nombre` text CHARACTER SET utf8mb4 NOT NULL,
  `Apellido` text CHARACTER SET utf8mb4 NOT NULL,
  `Matricula` int(11) NOT NULL,
  `CURP` varchar(18) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horario`
--

CREATE TABLE `horario` (
  `Horario_id` int(11) NOT NULL,
  `Alumno_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horario-materias`
--

CREATE TABLE `horario-materias` (
  `Horario_id` int(11) NOT NULL,
  `Materia_id` int(11) NOT NULL,
  `Horario-Materia_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE `materia` (
  `Materia_id` int(11) NOT NULL,
  `Carrera_id` int(11) NOT NULL,
  `Nombre` varchar(24) CHARACTER SET utf8mb4 NOT NULL,
  `Hora_Inicio` int(11) NOT NULL,
  `Hora_Fin` int(11) NOT NULL,
  `Dia_Semana` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `Admin_id` int(11) NOT NULL,
  `Alumno_id` int(11) NOT NULL,
  `Docente_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD PRIMARY KEY (`Alumno_id`),
  ADD KEY `Especialidad` (`Especialidad`),
  ADD KEY `Carrera` (`Carrera`(768)),
  ADD KEY `Horario_id` (`Horario_id`);

--
-- Indices de la tabla `docente`
--
ALTER TABLE `docente`
  ADD PRIMARY KEY (`Docente_id`),
  ADD UNIQUE KEY `CURP` (`CURP`);

--
-- Indices de la tabla `horario`
--
ALTER TABLE `horario`
  ADD PRIMARY KEY (`Horario_id`),
  ADD KEY `Alumno_id` (`Alumno_id`);

--
-- Indices de la tabla `horario-materias`
--
ALTER TABLE `horario-materias`
  ADD PRIMARY KEY (`Horario-Materia_ID`),
  ADD KEY `Horario_id` (`Horario_id`),
  ADD KEY `Materia_id` (`Materia_id`);

--
-- Indices de la tabla `materia`
--
ALTER TABLE `materia`
  ADD PRIMARY KEY (`Materia_id`),
  ADD KEY `Carrera_id` (`Carrera_id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD KEY `Admin_id` (`Admin_id`,`Alumno_id`,`Docente_id`),
  ADD KEY `Alumno_id` (`Alumno_id`),
  ADD KEY `Docente_id` (`Docente_id`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD CONSTRAINT `alumno_ibfk_1` FOREIGN KEY (`Horario_id`) REFERENCES `horario` (`Horario_id`);

--
-- Filtros para la tabla `horario`
--
ALTER TABLE `horario`
  ADD CONSTRAINT `horario_ibfk_1` FOREIGN KEY (`Alumno_id`) REFERENCES `alumno` (`Alumno_id`);

--
-- Filtros para la tabla `horario-materias`
--
ALTER TABLE `horario-materias`
  ADD CONSTRAINT `horario-materias_ibfk_1` FOREIGN KEY (`Materia_id`) REFERENCES `materia` (`Materia_id`),
  ADD CONSTRAINT `horario-materias_ibfk_2` FOREIGN KEY (`Horario_id`) REFERENCES `horario` (`Horario_id`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`Alumno_id`) REFERENCES `alumno` (`Alumno_id`),
  ADD CONSTRAINT `usuario_ibfk_2` FOREIGN KEY (`Docente_id`) REFERENCES `docente` (`Docente_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
