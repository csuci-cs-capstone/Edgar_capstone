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
-- Table structure for table `k_stats`
--

DROP TABLE IF EXISTS `k_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `k_stats` (
  `fg_attmpt` int DEFAULT NULL,
  `fg_made` int DEFAULT NULL,
  `ten_attmpt` int DEFAULT NULL,
  `ten_made` int DEFAULT NULL,
  `twenty_attmpt` int DEFAULT NULL,
  `twenty_made` int DEFAULT NULL,
  `thirty_attmpt` int DEFAULT NULL,
  `thirty_made` int DEFAULT NULL,
  `fourty_attmpt` int DEFAULT NULL,
  `fourty_made` int DEFAULT NULL,
  `fifty_attmpt` int DEFAULT NULL,
  `fifty_made` int DEFAULT NULL,
  `identNum` int NOT NULL,
  `ep_made` int DEFAULT NULL,
  `ep_attmpt` int DEFAULT NULL,
  `player_rank` int NOT NULL,
  PRIMARY KEY (`identNum`),
  KEY `fk_player_stats_idx` (`identNum`),
  KEY `fk_player_stats_idx2` (`identNum`),
  CONSTRAINT `fk_player_stats2` FOREIGN KEY (`identNum`) REFERENCES `player_stats` (`identNum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `k_stats`
--

LOCK TABLES `k_stats` WRITE;
/*!40000 ALTER TABLE `k_stats` DISABLE KEYS */;
INSERT INTO `k_stats` VALUES (43,40,0,0,11,10,12,12,13,12,7,6,500,30,33,1),(39,36,0,0,9,9,11,11,11,11,8,5,501,42,47,2),(40,36,0,0,9,9,9,8,13,11,9,8,502,27,29,3),(37,35,0,0,7,7,9,9,15,13,6,6,503,32,32,3),(34,32,0,0,6,6,15,15,8,7,5,4,504,48,49,4),(38,33,0,0,8,8,12,11,9,7,9,7,505,36,40,5),(33,28,0,0,5,5,8,8,9,6,11,9,506,46,48,6),(37,30,0,0,11,11,11,9,5,3,10,7,507,47,49,6),(33,30,0,0,7,7,10,10,13,10,3,3,508,44,44,7),(34,30,1,1,8,8,6,6,14,13,5,2,509,40,44,8),(32,28,0,0,15,15,8,7,5,4,4,2,510,51,51,9),(35,29,0,0,5,5,16,15,9,7,5,2,511,42,48,10),(28,25,0,0,3,3,11,11,5,4,9,7,512,47,49,10),(30,25,0,0,11,11,8,7,10,7,1,0,513,56,59,11),(34,25,0,0,9,9,13,9,8,4,4,3,514,49,51,12),(31,26,0,0,5,5,12,12,13,8,1,1,515,42,45,13),(31,26,0,0,8,7,6,6,8,8,9,5,516,33,34,14),(29,27,0,0,8,8,9,9,7,6,5,4,517,30,30,15),(33,29,0,0,5,5,13,12,5,5,10,7,518,17,17,16),(30,26,0,0,10,10,5,5,13,11,2,0,519,27,28,17),(31,23,0,0,6,6,9,7,10,8,6,2,520,34,35,20),(23,20,0,0,6,6,4,4,9,7,4,3,521,39,40,19),(23,17,0,0,2,2,11,9,5,3,5,3,522,44,47,20),(22,18,0,0,4,4,7,6,10,8,1,0,523,40,41,21),(25,23,0,0,9,9,5,5,7,5,4,4,524,18,22,22),(22,20,0,0,6,6,1,1,10,10,5,3,525,22,23,23),(21,15,0,0,3,3,4,4,10,4,4,4,526,36,37,24),(24,21,0,0,7,7,7,7,4,3,6,4,527,13,15,25),(19,15,0,0,4,4,5,5,4,2,6,4,528,13,16,26),(18,16,0,0,4,4,9,8,4,4,1,0,529,10,12,27),(14,13,0,0,3,3,6,6,4,4,1,0,530,16,16,28),(19,13,0,0,5,5,6,6,5,2,3,0,531,14,15,29),(14,11,0,0,3,3,4,3,6,5,1,0,532,7,8,30),(12,10,0,0,0,0,4,4,6,5,2,1,533,5,5,31),(10,10,0,0,5,5,3,3,1,1,1,1,534,9,13,31),(8,8,0,0,2,2,2,2,3,3,1,1,535,9,10,32),(7,6,0,0,3,3,2,2,2,1,0,0,536,10,15,33),(5,2,0,0,0,0,1,0,2,2,2,0,537,14,14,34),(5,4,0,0,2,2,2,2,1,0,0,0,538,8,8,35),(5,4,0,0,3,3,1,1,1,0,0,0,539,6,8,36),(5,4,0,0,0,0,4,3,1,1,0,0,540,4,5,37),(3,2,0,0,1,1,0,0,0,0,2,1,541,5,5,38),(5,2,0,0,0,0,0,0,4,1,1,1,542,2,2,39),(3,0,0,0,0,0,0,0,1,0,2,0,543,5,7,40),(1,1,0,0,0,0,1,1,0,0,0,0,544,1,2,41),(0,0,0,0,0,0,0,0,0,0,0,0,545,3,5,42),(1,0,0,0,0,0,0,0,1,0,0,0,546,1,2,43),(0,0,0,0,0,0,0,0,0,0,0,0,547,0,2,44),(1,0,0,0,0,0,0,0,0,0,1,0,548,0,0,45);
/*!40000 ALTER TABLE `k_stats` ENABLE KEYS */;
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
