-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: db_ite_bot
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.25-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `multimedios`
--

DROP TABLE IF EXISTS `multimedios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `multimedios` (
  `ID` int(11) NOT NULL,
  `TipoMedio` varchar(255) DEFAULT NULL,
  `EnlaceRuta` varchar(255) DEFAULT NULL,
  `Descripcion` text DEFAULT NULL,
  `FechaCreacion` date DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `multimedios`
--

LOCK TABLES `multimedios` WRITE;
/*!40000 ALTER TABLE `multimedios` DISABLE KEYS */;
/*!40000 ALTER TABLE `multimedios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preguntasgenerales`
--

DROP TABLE IF EXISTS `preguntasgenerales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `preguntasgenerales` (
  `ID` int(11) NOT NULL,
  `Pregunta` text DEFAULT NULL,
  `Categoria` varchar(255) DEFAULT NULL,
  `FechaCreacion` date DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preguntasgenerales`
--

LOCK TABLES `preguntasgenerales` WRITE;
/*!40000 ALTER TABLE `preguntasgenerales` DISABLE KEYS */;
/*!40000 ALTER TABLE `preguntasgenerales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preguntasusuario`
--

DROP TABLE IF EXISTS `preguntasusuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `preguntasusuario` (
  `ID` int(11) NOT NULL,
  `Pregunta` text DEFAULT NULL,
  `UsuarioID` int(11) DEFAULT NULL,
  `FechaPregunta` date DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `UsuarioID` (`UsuarioID`),
  CONSTRAINT `preguntasusuario_ibfk_1` FOREIGN KEY (`UsuarioID`) REFERENCES `usuarios` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preguntasusuario`
--

LOCK TABLES `preguntasusuario` WRITE;
/*!40000 ALTER TABLE `preguntasusuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `preguntasusuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `respuestasusuario`
--

DROP TABLE IF EXISTS `respuestasusuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `respuestasusuario` (
  `ID` int(11) NOT NULL,
  `Respuesta` text DEFAULT NULL,
  `UsuarioID` int(11) DEFAULT NULL,
  `PreguntaID` int(11) DEFAULT NULL,
  `MedioID` int(11) DEFAULT NULL,
  `FechaRespuesta` date DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `UsuarioID` (`UsuarioID`),
  KEY `PreguntaID` (`PreguntaID`),
  KEY `MedioID` (`MedioID`),
  CONSTRAINT `respuestasusuario_ibfk_1` FOREIGN KEY (`UsuarioID`) REFERENCES `usuarios` (`ID`),
  CONSTRAINT `respuestasusuario_ibfk_2` FOREIGN KEY (`PreguntaID`) REFERENCES `preguntasgenerales` (`ID`),
  CONSTRAINT `respuestasusuario_ibfk_3` FOREIGN KEY (`MedioID`) REFERENCES `multimedios` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `respuestasusuario`
--

LOCK TABLES `respuestasusuario` WRITE;
/*!40000 ALTER TABLE `respuestasusuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `respuestasusuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-25 18:19:48
