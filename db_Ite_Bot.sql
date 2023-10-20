-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: ite_bot
-- ------------------------------------------------------
-- Server version	8.1.0

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
-- Table structure for table `categoria_preguntas`
--

DROP TABLE IF EXISTS `categoria_preguntas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria_preguntas` (
  `id_categoria` int NOT NULL,
  `nombre_categoria` varchar(255) NOT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria_preguntas`
--

LOCK TABLES `categoria_preguntas` WRITE;
/*!40000 ALTER TABLE `categoria_preguntas` DISABLE KEYS */;
/*!40000 ALTER TABLE `categoria_preguntas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departamentos`
--

DROP TABLE IF EXISTS `departamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departamentos` (
  `ID_Departamento` int NOT NULL,
  `Nombre` varchar(255) DEFAULT NULL,
  `Correo` varchar(255) DEFAULT NULL,
  `Extensión` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ID_Departamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamentos`
--

LOCK TABLES `departamentos` WRITE;
/*!40000 ALTER TABLE `departamentos` DISABLE KEYS */;
/*!40000 ALTER TABLE `departamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historial_preguntas_usuario`
--

DROP TABLE IF EXISTS `historial_preguntas_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historial_preguntas_usuario` (
  `id_historial` int NOT NULL,
  `id_pregunta_usuario` int DEFAULT NULL,
  `fecha_pregunta` date DEFAULT NULL,
  PRIMARY KEY (`id_historial`),
  KEY `id_pregunta_usuario` (`id_pregunta_usuario`),
  CONSTRAINT `historial_preguntas_usuario_ibfk_1` FOREIGN KEY (`id_pregunta_usuario`) REFERENCES `preguntas_usuarios` (`id_pregunta_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historial_preguntas_usuario`
--

LOCK TABLES `historial_preguntas_usuario` WRITE;
/*!40000 ALTER TABLE `historial_preguntas_usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `historial_preguntas_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal`
--

DROP TABLE IF EXISTS `personal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal` (
  `ID_Persona` int NOT NULL,
  `Nombre` varchar(255) DEFAULT NULL,
  `Cargo` varchar(255) DEFAULT NULL,
  `Correo` varchar(255) DEFAULT NULL,
  `ID_Departamento` int DEFAULT NULL,
  `Extensión` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ID_Persona`),
  KEY `ID_Departamento` (`ID_Departamento`),
  CONSTRAINT `personal_ibfk_1` FOREIGN KEY (`ID_Departamento`) REFERENCES `departamentos` (`ID_Departamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal`
--

LOCK TABLES `personal` WRITE;
/*!40000 ALTER TABLE `personal` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preguntas_usuarios`
--

DROP TABLE IF EXISTS `preguntas_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `preguntas_usuarios` (
  `id_pregunta_usuario` int NOT NULL,
  `pregunta` text NOT NULL,
  `id_categoria` int DEFAULT NULL,
  PRIMARY KEY (`id_pregunta_usuario`),
  KEY `id_categoria` (`id_categoria`),
  CONSTRAINT `preguntas_usuarios_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categoria_preguntas` (`id_categoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preguntas_usuarios`
--

LOCK TABLES `preguntas_usuarios` WRITE;
/*!40000 ALTER TABLE `preguntas_usuarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `preguntas_usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requisitos`
--

DROP TABLE IF EXISTS `requisitos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `requisitos` (
  `ID_Requisito` int NOT NULL,
  `TipoRequisito` varchar(255) DEFAULT NULL,
  `Descripción` text,
  `ID_ServicioEstudiantil` int DEFAULT NULL,
  PRIMARY KEY (`ID_Requisito`),
  KEY `ID_ServicioEstudiantil` (`ID_ServicioEstudiantil`),
  CONSTRAINT `requisitos_ibfk_1` FOREIGN KEY (`ID_ServicioEstudiantil`) REFERENCES `servicios_estudiantiles` (`ID_ServicioEstudiantil`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requisitos`
--

LOCK TABLES `requisitos` WRITE;
/*!40000 ALTER TABLE `requisitos` DISABLE KEYS */;
/*!40000 ALTER TABLE `requisitos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicios_estudiantiles`
--

DROP TABLE IF EXISTS `servicios_estudiantiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicios_estudiantiles` (
  `ID_ServicioEstudiantil` int NOT NULL,
  `NombreServicio` varchar(255) DEFAULT NULL,
  `Descripción` text,
  `CorreoContacto` varchar(255) DEFAULT NULL,
  `ID_Departamento` int DEFAULT NULL,
  PRIMARY KEY (`ID_ServicioEstudiantil`),
  KEY `ID_Departamento` (`ID_Departamento`),
  CONSTRAINT `servicios_estudiantiles_ibfk_1` FOREIGN KEY (`ID_Departamento`) REFERENCES `departamentos` (`ID_Departamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicios_estudiantiles`
--

LOCK TABLES `servicios_estudiantiles` WRITE;
/*!40000 ALTER TABLE `servicios_estudiantiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `servicios_estudiantiles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-19 18:12:53
