-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-10-2023 a las 19:04:16
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
-- Base de datos: `ite_info`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comiteacademico`
--

CREATE TABLE `comiteacademico` (
  `id` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `temasdiscutidos` text COLLATE utf8_spanish2_ci DEFAULT NULL,
  `decisionestomadas` text COLLATE utf8_spanish2_ci DEFAULT NULL,
  `presidente` int(11) DEFAULT NULL,
  `secretariotecnico` int(11) DEFAULT NULL,
  `miembro1` int(11) DEFAULT NULL,
  `miembro2` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

CREATE TABLE `contacto` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `correoelectronico` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `asunto` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `mensaje` text COLLATE utf8_spanish2_ci DEFAULT NULL,
  `fechaenvio` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `convocatorias`
--

CREATE TABLE `convocatorias` (
  `id` int(11) NOT NULL,
  `tipo` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `fechapublicacion` date DEFAULT NULL,
  `requisitos` text COLLATE utf8_spanish2_ci DEFAULT NULL,
  `instrucciones` text COLLATE utf8_spanish2_ci DEFAULT NULL,
  `responsableconvocatoria` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ofertaeducativa`
--

CREATE TABLE `ofertaeducativa` (
  `id` int(11) NOT NULL,
  `nombrecarrera` text COLLATE utf8_spanish2_ci DEFAULT NULL,
  `descripcion` text COLLATE utf8_spanish2_ci DEFAULT NULL,
  `perfilingreso` text COLLATE utf8_spanish2_ci DEFAULT NULL,
  `perfilegreso` text COLLATE utf8_spanish2_ci DEFAULT NULL,
  `reticula` text COLLATE utf8_spanish2_ci DEFAULT NULL,
  `videoURL` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `jefeDesarrolloacademico` int(11) DEFAULT NULL,
  `jefecarrera` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal`
--

CREATE TABLE `personal` (
  `id` int(11) NOT NULL,
  `Puesto` text COLLATE utf8_spanish2_ci DEFAULT NULL,
  `Nombre` text COLLATE utf8_spanish2_ci DEFAULT NULL,
  `correoelectronico` varchar(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `departamento` text COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `serviciosestudiantiles`
--

CREATE TABLE `serviciosestudiantiles` (
  `id` int(11) NOT NULL,
  `nombreServicio` text COLLATE utf8_spanish2_ci DEFAULT NULL,
  `descripcion` text COLLATE utf8_spanish2_ci DEFAULT NULL,
  `requisitos` text COLLATE utf8_spanish2_ci DEFAULT NULL,
  `responsableservicio` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comiteacademico`
--
ALTER TABLE `comiteacademico`
  ADD PRIMARY KEY (`id`),
  ADD KEY `presidente` (`presidente`),
  ADD KEY `secretariotecnico` (`secretariotecnico`),
  ADD KEY `miembro1` (`miembro1`),
  ADD KEY `miembro2` (`miembro2`);

--
-- Indices de la tabla `contacto`
--
ALTER TABLE `contacto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `convocatorias`
--
ALTER TABLE `convocatorias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `responsableconvocatoria` (`responsableconvocatoria`);

--
-- Indices de la tabla `ofertaeducativa`
--
ALTER TABLE `ofertaeducativa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jefeDesarrolloacademico` (`jefeDesarrolloacademico`),
  ADD KEY `jefecarrera` (`jefecarrera`);

--
-- Indices de la tabla `personal`
--
ALTER TABLE `personal`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `serviciosestudiantiles`
--
ALTER TABLE `serviciosestudiantiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `responsableservicio` (`responsableservicio`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comiteacademico`
--
ALTER TABLE `comiteacademico`
  ADD CONSTRAINT `comiteacademico_ibfk_1` FOREIGN KEY (`presidente`) REFERENCES `personal` (`id`),
  ADD CONSTRAINT `comiteacademico_ibfk_2` FOREIGN KEY (`secretariotecnico`) REFERENCES `personal` (`id`),
  ADD CONSTRAINT `comiteacademico_ibfk_3` FOREIGN KEY (`miembro1`) REFERENCES `personal` (`id`),
  ADD CONSTRAINT `comiteacademico_ibfk_4` FOREIGN KEY (`miembro2`) REFERENCES `personal` (`id`);

--
-- Filtros para la tabla `convocatorias`
--
ALTER TABLE `convocatorias`
  ADD CONSTRAINT `convocatorias_ibfk_1` FOREIGN KEY (`responsableconvocatoria`) REFERENCES `personal` (`id`);

--
-- Filtros para la tabla `ofertaeducativa`
--
ALTER TABLE `ofertaeducativa`
  ADD CONSTRAINT `ofertaeducativa_ibfk_1` FOREIGN KEY (`jefeDesarrolloacademico`) REFERENCES `personal` (`id`),
  ADD CONSTRAINT `ofertaeducativa_ibfk_2` FOREIGN KEY (`jefecarrera`) REFERENCES `personal` (`id`);

--
-- Filtros para la tabla `serviciosestudiantiles`
--
ALTER TABLE `serviciosestudiantiles`
  ADD CONSTRAINT `serviciosestudiantiles_ibfk_1` FOREIGN KEY (`responsableservicio`) REFERENCES `personal` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
