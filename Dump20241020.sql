CREATE DATABASE  IF NOT EXISTS `evento_asistentes` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `evento_asistentes`;
-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: evento_asistentes
-- ------------------------------------------------------
-- Server version	9.1.0

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
-- Table structure for table `asistentes`
--

DROP TABLE IF EXISTS `asistentes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asistentes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `evento_id` int DEFAULT NULL,
  `presente` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `fk_evento` (`evento_id`),
  CONSTRAINT `fk_evento` FOREIGN KEY (`evento_id`) REFERENCES `eventos` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asistentes`
--

LOCK TABLES `asistentes` WRITE;
/*!40000 ALTER TABLE `asistentes` DISABLE KEYS */;
INSERT INTO `asistentes` VALUES (1,'Juan Pérez','juan.perez@example.com',1,1),(2,'Ana Gómez','ana.gomez@example.com',1,0),(3,'josue','josue30759@gmail.com',1,0),(4,'josue','email@gmail.com',1,0),(5,'asda','asdads@gasd.com',1,0),(6,'dennis','dennis@gmail.com',1,0),(7,'asda','asdasd',1,0),(9,'claudia','claudia@gmail.com',1,0),(10,'veronica','veronica@gmail.com',1,1),(11,'ortega','ortega@gmail.com',1,1),(12,'hernandez','hernandez@gmail.com',1,0),(14,'hernandez1','hernandez1@gmail.com',1,1),(15,'hernandez12','hernandez12@gmail.com',1,1),(16,'hernandez123','hernandez123@gmail.com',1,1),(17,'amilcar','amilcar@gmail.com',1,1),(18,'amilcar1','amilcar1@gmail.com',1,0),(19,'amilcar13','amilcar13@gmail.com',1,0),(20,'amilcar133','amilcar133@gmail.com',1,1),(21,'amilcar1334','amilcar1334@gmail.com',1,0),(22,'amilcar13345','amilcar13354@gmail.com',1,0),(23,'amilcar133456','amilcar133546@gmail.com',1,0),(24,'amilcar1334567','amilcar1335467@gmail.com',1,1),(25,'Amilcar23','amilcar1333145@gmail.com',1,1),(26,'ricardo','hjosue2704@yahoo.com',1,0),(28,'ricardo','hjosue2704aas@yahoo.com',1,0),(29,'ricardo','hjosue211704@yahoo.com',1,0),(30,'ricardo','hjosue2112704@yahoo.com',1,0),(31,'ricardo','20230019@ricaldone.edu.sv',1,0),(32,'ricardo','hernandezortegajosueemanuel32@gmail.com',1,0),(33,'ricardo','hjosue2701114@yahoo.com',1,0),(34,'ricardo','hjosue2234704@yahoo.com',1,0);
/*!40000 ALTER TABLE `asistentes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eventos`
--

DROP TABLE IF EXISTS `eventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eventos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `ubicacion` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eventos`
--

LOCK TABLES `eventos` WRITE;
/*!40000 ALTER TABLE `eventos` DISABLE KEYS */;
INSERT INTO `eventos` VALUES (1,'Conferencia de Tecnología','2024-11-15','10:00:00','Centro de Convenciones');
/*!40000 ALTER TABLE `eventos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-20 22:12:07
