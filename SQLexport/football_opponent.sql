-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: football
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `opponent`
--

DROP TABLE IF EXISTS `opponent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `opponent` (
  `team_agnst_QB` float NOT NULL,
  `team_agnst_RB` float NOT NULL,
  `team_agnst_WR` float NOT NULL,
  `team_agnst_TE` float NOT NULL,
  `team_agnst_K` float NOT NULL,
  `team_opp` char(3) NOT NULL,
  PRIMARY KEY (`team_opp`),
  CONSTRAINT `fk_opponent` FOREIGN KEY (`team_opp`) REFERENCES `player` (`team_opp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opponent`
--

LOCK TABLES `opponent` WRITE;
/*!40000 ALTER TABLE `opponent` DISABLE KEYS */;
INSERT INTO `opponent` VALUES (11,9,30,3,10,'ARI'),(31,24,28,12,15,'ATL'),(28,8,29,30,8,'BAL'),(1,6,1,2,2,'BUF'),(10,5,6,11,22,'CAR'),(19,13,14,6,23,'CHI'),(13,21,16,27,9,'CIN'),(9,14,7,17,14,'CLE'),(7,4,15,21,16,'DAL'),(4,11,9,4,11,'DEN'),(26,29,20,23,32,'DET'),(23,10,18,22,6,'GNB'),(22,28,24,24,21,'HOU'),(21,3,21,29,4,'IND'),(25,19,25,14,28,'JAX'),(30,20,22,16,3,'KAN'),(16,26,4,31,29,'LAC'),(3,7,26,15,20,'LAR'),(17,30,5,28,24,'LVR'),(6,17,11,19,25,'MIA'),(27,22,32,9,30,'MIN'),(5,1,17,8,18,'NOR'),(8,27,12,13,27,'NYG'),(29,32,13,26,31,'NYJ'),(15,23,2,32,7,'PHI'),(12,25,8,10,26,'PIT'),(14,31,10,25,13,'SEA'),(20,12,23,7,5,'SFO'),(18,15,19,18,12,'TAM'),(24,2,31,5,17,'TEN');
/*!40000 ALTER TABLE `opponent` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-08 14:17:53
