-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: db4free.net    Database: alopeciacollege
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `DNI` varchar(12) NOT NULL,
  `nomUsu` varchar(20) NOT NULL,
  `apellidosUsu` varchar(30) NOT NULL,
  `sexUsu` char(1) NOT NULL,
  `FecNac` varchar(10) DEFAULT NULL,
  `localidad` varchar(12) NOT NULL,
  `telefono` varchar(12) NOT NULL,
  `email` varchar(30) NOT NULL,
  `rol` varchar(10) DEFAULT NULL,
  `pass` varchar(16) DEFAULT NULL,
  `nick` varchar(12) NOT NULL,
  `puntuacion` smallint DEFAULT NULL,
  `foto` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`DNI`),
  CONSTRAINT `usuario_chk_1` CHECK ((`sexUsu` in (_utf8mb4'F',_utf8mb4'M',_utf8mb4'O')))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES ('00000000X','CollegeAdmin','Admin','O','2020-08-27','Alicante','099123123','alopecia.college@gmail.com','Admin','pepeviyuela69','CalveAdmin',NULL,NULL),('12345678X','José Carlos','Grau','M','1990-01-01','Alicante','123123123','jcgraucatral@gmail.com','Admin','123456','JCGRAU',0,NULL),('23132123A','prueba2','prueba1','M','2020-02-13','Alicante','146546456','prueba2@gmail.com','level 1','123456','prueba1',0,NULL),('23423523e','prueba5','prueba5','F','2200-06-05','Albacete','654646546','prueba5@gmail.com','level 1','123456','prueba5',0,NULL),('32324532c','prueba4','prueba4','F','2020-06-05','Albacete','565556465','prueba4@gmail.com','level 1','123456','prueba4',0,NULL),('50000000N','Néstor','Martínez','M','1995-02-04','Alicante','610345361','srmonzo@gmail.com','level 1','123456','Nes154',119,NULL),('5487985P','Lara','Bernabeu','F','1990-05-30','Alicante','601032880','lara@gmail.com','level 1','123456','lara07024',0,NULL),('74373440L','Pedro','Sempere','M','1995-07-04','Elche','626469140','pedrosvalero@gmail.com','level 1','123456','Unnameable',100,NULL),('789456123','Prueba','Pedro','F','1995-07-04','Almería','123456789','PruebaPedro@gmail.com','level 1','123456','PruPe',0,NULL);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'alopeciacollege'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-09 14:19:15
