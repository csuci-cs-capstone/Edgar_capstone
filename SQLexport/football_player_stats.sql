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
-- Table structure for table `player_stats`
--

DROP TABLE IF EXISTS `player_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `player_stats` (
  `games` int DEFAULT NULL,
  `team_playing` char(3) NOT NULL,
  `player_rank` int DEFAULT '0',
  `identNum` int NOT NULL,
  PRIMARY KEY (`identNum`),
  UNIQUE KEY `identNum_UNIQUE` (`identNum`),
  CONSTRAINT `fk_player_stats` FOREIGN KEY (`identNum`) REFERENCES `player` (`identNum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player_stats`
--

LOCK TABLES `player_stats` WRITE;
/*!40000 ALTER TABLE `player_stats` DISABLE KEYS */;
INSERT INTO `player_stats` VALUES (17,'JAX',1,1),(17,'SFO',1,2),(16,'LAR',2,3),(17,'NYJ',1,4),(16,'LVR',2,5),(17,'LVR',2,6),(17,'CAR',3,7),(17,'PIT',1,8),(17,'CLE',3,9),(17,'CHI',4,10),(16,'CLE',3,11),(16,'DET',5,12),(17,'DEN',4,13),(17,'BAL',4,14),(16,'DEN',2,15),(15,'SEA',5,16),(16,'CAR',6,17),(16,'DET',5,18),(17,'DEN',7,19),(17,'SFO',6,20),(17,'NYJ',8,21),(17,'PHI',6,22),(16,'PHI',7,23),(14,'CIN',7,24),(16,'LVR',9,25),(17,'ARI',10,26),(16,'ARI',11,27),(15,'MIA',8,28),(16,'CLE',8,29),(16,'BAL',12,30),(15,'DAL',9,31),(13,'ATL',9,32),(16,'NYG',10,33),(14,'CAR',11,34),(17,'PHI',3,35),(16,'NOR',12,36),(14,'LAR',4,37),(17,'LAC',13,38),(16,'PHI',14,39),(14,'SEA',10,40),(16,'CHI',11,41),(15,'DET',13,42),(16,'LVR',15,43),(8,'HOU',14,44),(17,'JAX',16,45),(13,'CHI',15,46),(15,'LAC',16,47),(12,'CAR',5,48),(14,'CLE',17,49),(15,'NYJ',6,50),(17,'TAM',18,51),(14,'CAR',19,52),(17,'MIA',7,53),(16,'KAN',17,54),(16,'NWE',21,55),(16,'TEN',20,56),(15,'DAL',8,57),(17,'MIN',22,58),(17,'NOR',9,59),(17,'KAN',18,60),(17,'GNB',23,61),(17,'',10,62),(17,'NYG',24,63),(16,'PIT',25,64),(15,'PHI',26,65),(17,'NYJ',19,66),(13,'CHI',27,67),(17,'SEA',28,68),(13,'MIN',20,69),(17,'DET',21,70),(17,'MIA',29,71),(17,'DEN',22,72),(13,'GNB',23,73),(17,'NWE',11,74),(4,'PHI',2,75),(11,'LAR',24,76),(8,'HOU',1,77),(17,'HOU',12,78),(17,'JAX',13,79),(17,'LAC',14,80),(14,'ARI',15,81),(12,'PIT',16,82),(15,'LAR',17,83),(17,'MIA',18,84),(17,'NOR',19,85),(16,'NYG',20,86),(16,'BAL',21,87),(14,'KAN',22,88),(17,'IND',23,89),(14,'GNB',24,90),(14,'CIN',26,91),(13,'NWE',25,92),(11,'WAS',27,93),(12,'TAM',28,94),(13,'TEN',29,95),(13,'BUF',30,96),(14,'IND',25,97),(12,'SFO',26,98),(12,'MIN',31,99),(17,'NWE',28,100),(17,'SFO',27,101),(15,'PHI',29,102),(17,'DAL',30,103),(13,'HOU',32,104),(14,'BUF',30,105),(12,'ATL',32,106),(17,'SFO',31,107),(16,'CLE',33,108),(7,'ATL',33,109),(10,'ARI',31,110),(17,'LAR',34,111),(16,'PIT',32,112),(17,'TAM',33,113),(17,'CHI',35,114),(13,'WAS',34,115),(15,'BAL',36,116),(17,'IND',37,117),(17,'ATL',38,118),(10,'SEA',39,119),(16,'WAS',35,120),(16,'SEA',43,121),(15,'DET',44,122),(17,'MIA',41,123),(16,'KAN',40,124),(16,'PHI',42,125),(12,'MIA',36,126),(12,'SEA',37,127),(10,'DEN',38,128),(14,'NOR',45,129),(11,'BUF',46,130),(17,'NOR',39,131),(16,'CHI',40,132),(14,'PIT',42,133),(13,'GNB',41,134),(16,'BAL',12,135),(17,'KAN',47,136),(9,'SFO',48,137),(16,'NYJ',49,138),(16,'KAN',13,139),(7,'TAM',44,140),(12,'DAL',43,141),(16,'DAL',45,142),(14,'NYJ',50,143),(6,'ATL',34,144),(8,'CIN',46,145),(17,'TAM',51,146),(15,'SFO',14,147),(8,'TAM',35,148),(16,'DAL',47,149),(14,'Jr.',52,150),(9,'HOU',49,151),(17,'CIN',48,152),(11,'NYG',50,153),(17,'DEN',53,154),(16,'LVR',15,155),(8,'MIN',36,156),(12,'GNB',16,157),(16,'GNB',54,158),(17,'MIA',51,159),(7,'PIT',37,160),(16,'BUF',52,161),(17,'DEN',55,162),(14,'',54,163),(13,'NYJ',53,164),(6,'TEN',38,165),(12,'CIN',56,166),(7,'CAR',57,167),(16,'TEN',55,168),(16,'CLE',17,169),(11,'LAC',18,170),(16,'NYJ',58,171),(17,'CHI',19,172),(13,'ATL',59,173),(14,'CIN',60,174),(16,'BUF',61,175),(16,'LAC',62,176),(12,'LAC',57,177),(17,'JAX',56,178),(17,'DAL',63,179),(11,'NWE',39,180),(16,'CIN',20,181),(9,'BUF',64,182),(15,'ARI',21,183),(16,'HOU',65,184),(16,'CAR',58,185),(15,'MIA',66,186),(12,'DET',68,187),(16,'LVR',67,188),(17,'MIN',59,189),(6,'LAR',40,190),(14,'LVR',60,191),(10,'NWE',70,192),(16,'IND',69,193),(17,'NYG',71,194),(17,'ARI',72,195),(7,'DAL',61,196),(17,'MIN',22,197),(7,'LAC',74,198),(11,'DET',73,199),(11,'ARI',62,200),(17,'LVR',75,201),(12,'BUF',78,202),(17,'LAC',76,203),(17,'NOR',77,204),(12,'PIT',80,205),(16,'LAR',79,206),(15,'WAS',23,207),(9,'PHI',81,208),(16,'JAX',82,209),(17,'JAX',24,210),(16,'',83,211),(16,'CLE',63,212),(11,'ATL',84,213),(16,'CIN',26,214),(5,'NWE',64,215),(14,'SEA',85,216),(17,'LAC',25,217),(8,'HOU',65,218),(4,'ARI',41,219),(17,'',66,220),(10,'IND',87,221),(14,'WAS',86,222),(12,'',88,223),(15,'BUF',90,224),(14,'TEN',91,225),(10,'JAX',89,226),(6,'KAN',42,227),(17,'JAX',27,228),(16,'PIT',92,229),(17,'CAR',28,230),(13,'TEN',67,231),(10,'HOU',93,232),(12,'MIN',95,233),(12,'IND',94,234),(11,'DEN',68,235),(10,'KAN',96,236),(17,'NWE',97,237),(14,'ARI',70,238),(4,'',43,239),(14,'HOU',71,240),(17,'NYG',69,241),(8,'TEN',99,242),(15,'HOU',29,243),(17,'DAL',98,244),(12,'MIN',72,245),(9,'LAR',73,246),(17,'LAR',74,247),(17,'DEN',100,248),(4,'BUF',44,249),(16,'TEN',103,250),(14,'KAN',30,251),(13,'WAS',104,252),(10,'WAS',102,253),(13,'PIT',101,254),(4,'ARI',75,255),(7,'WAS',106,256),(15,'BAL',105,257),(11,'',32,258),(16,'CIN',31,259),(11,'BUF',77,260),(14,'',76,261),(8,'SEA',45,262),(10,'LAC',78,263),(14,'ATL',33,264),(5,'NOR',107,265),(17,'MIN',108,266),(17,'ARI',79,267),(17,'JAX',110,268),(14,'LVR',36,269),(13,'NYG',35,270),(16,'MIA',34,271),(16,'HOU',37,272),(15,'SEA',109,273),(14,'BUF',38,274),(17,'NYG',111,275),(13,'NOR',39,276),(16,'DET',41,277),(14,'MIN',112,278),(15,'MIN',40,279),(10,'ATL',113,280),(17,'IND',80,281),(12,'CAR',81,282),(9,'NYJ',82,283),(17,'CAR',114,284),(9,'TEN',44,285),(17,'NWE',43,286),(6,'NYG',45,287),(13,'ATL',42,288),(14,'CLE',83,289),(5,'CAR',117,290),(12,'TEN',116,291),(16,'HOU',46,292),(16,'HOU',115,293),(5,'GNB',118,294),(15,'CIN',120,295),(12,'IND',84,296),(4,'DAL',46,297),(16,'WAS',47,298),(14,'NYG',119,299),(8,'',85,300),(16,'CIN',88,301),(15,'NYJ',122,302),(16,'TAM',48,303),(14,'PHI',121,304),(12,'CAR',87,305),(13,'PIT',86,306),(8,'DET',49,307),(17,'NYG',50,308),(6,'WAS',47,309),(13,'TAM',123,310),(10,'WAS',124,311),(15,'ARI',51,312),(15,'',125,313),(7,'CIN',48,314),(13,'NWE',126,315),(5,'GNB',89,316),(17,'DAL',127,317),(12,'NWE',91,318),(13,'IND',128,319),(4,'IND',129,320),(11,'LAR',92,321),(16,'BAL',130,322),(17,'WAS',90,323),(7,'IND',52,324),(15,'',94,325),(9,'LAR',93,326),(5,'SEA',53,327),(5,'GNB',49,328),(2,'BUF',51,329),(16,'KAN',132,330),(5,'PHI',50,331),(8,'CHI',131,332),(10,'GNB',54,333),(17,'LVR',56,334),(17,'PHI',95,335),(9,'BUF',55,336),(13,'DEN',96,337),(4,'',97,338),(14,'CIN',133,339),(15,'NOR',134,340),(14,'NWE',135,341),(9,'SEA',98,342),(6,'JAX',137,343),(8,'PHI',57,344),(7,'GNB',99,345),(6,'CAR',136,346),(8,'BAL',59,347),(17,'DET',58,348),(6,'DET',52,349),(7,'NWE',101,350),(17,'CAR',60,351),(17,'GNB',100,352),(14,'PIT',138,353),(5,'BAL',139,354),(11,'CHI',103,355),(17,'TAM',62,356),(7,'ATL',61,357),(3,'MIA',102,358),(13,'TEN',63,359),(13,'PHI',140,360),(10,'ARI',141,361),(16,'GNB',142,362),(2,'BAL',53,363),(8,'LAR',143,364),(1,'MIN',54,365),(6,'DEN',64,366),(17,'BAL',65,367),(11,'ATL',104,368),(4,'BUF',105,369),(5,'NYG',106,370),(15,'NYG',146,371),(17,'CHI',107,372),(12,'MIA',144,373),(7,'HOU',147,374),(13,'TAM',148,375),(8,'NOR',108,376),(3,'MIA',145,377),(15,'TEN',66,378),(9,'LAC',110,379),(10,'LAC',55,380),(3,'WAS',149,381),(12,'LVR',111,382),(17,'LAR',150,383),(5,'MIA',112,384),(9,'DET',109,385),(6,'CLE',56,386),(7,'MIN',67,387),(9,'CAR',151,388),(14,'ATL',152,389),(5,'TAM',57,390),(8,'',114,391),(17,'IND',68,392),(1,'CHI',58,393),(11,'BUF',153,394),(13,'PIT',113,395),(14,'SFO',154,396),(16,'NOR',69,397),(13,'ATL',155,398),(16,'DEN',116,399),(7,'IND',71,400),(5,'MIA',59,401),(14,'MIN',70,402),(10,'LVR',115,403),(12,'GNB',156,404),(16,'TEN',74,405),(6,'',159,406),(17,'LAR',72,407),(4,'HOU',160,408),(3,'WAS',60,409),(17,'JAX',76,410),(12,'WAS',161,411),(6,'JAX',119,412),(10,'LAC',117,413),(17,'KAN',75,414),(12,'NWE',73,415),(12,'BUF',157,416),(17,'BAL',118,417),(13,'DET',158,418),(2,'IND',121,419),(16,'DEN',79,420),(8,'GNB',162,421),(14,'GNB',120,422),(16,'DEN',80,423),(16,'CHI',78,424),(5,'ATL',163,425),(1,'CIN',61,426),(6,'TAM',164,427),(13,'NYJ',77,428),(7,'CLE',165,429),(4,'HOU',167,430),(12,'DEN',166,431),(3,'PHI',123,432),(9,'JAX',122,433),(13,'CIN',124,434),(9,'PHI',81,435),(3,'',168,436),(17,'NOR',125,437),(2,'NYG',63,438),(11,'',126,439),(1,'NYG',64,440),(9,'DAL',82,441),(8,'WAS',84,442),(8,'JAX',169,443),(17,'CLE',83,444),(6,'NYJ',62,445),(8,'NWE',170,446),(3,'KAN',171,447),(14,'PIT',85,448),(16,'',172,449),(4,'CIN',127,450),(13,'SEA',128,451),(15,'CHI',173,452),(6,'WAS',178,453),(8,'KAN',130,454),(5,'CIN',174,455),(17,'TAM',181,456),(15,'IND',86,457),(17,'ARI',177,458),(13,'NYG',175,459),(2,'LVR',179,460),(6,'SFO',176,461),(16,'DET',180,462),(1,'PHI',129,463),(5,'CLE',131,464),(9,'CAR',182,465),(2,'NWE',184,466),(1,'DAL',132,467),(11,'LVR',88,468),(3,'NYG',134,469),(2,'TAM',133,470),(12,'CLE',183,471),(17,'LAR',87,472),(16,'DAL',192,473),(17,'BAL',135,474),(11,'SFO',92,475),(8,'WAS',193,476),(14,'DET',94,477),(5,'SEA',187,478),(9,'',89,479),(13,'ATL',91,480),(8,'NOR',90,481),(17,'MIA',136,482),(3,'BUF',194,483),(16,'MIA',186,484),(5,'NYG',188,485),(9,'',189,486),(4,'CLE',185,487),(12,'BUF',95,488),(6,'ATL',190,489),(7,'DET',191,490),(9,'BUF',93,491),(16,'NOR',203,492),(12,'BUF',200,493),(10,'DET',96,494),(16,'NYJ',140,495),(4,'DEN',65,496),(6,'LVR',199,497),(8,'DET',138,498),(3,'HOU',197,499),(5,'HOU',100,500),(7,'CLE',195,501),(15,'NYJ',201,502),(10,'LVR',141,503),(14,'ARI',98,504),(4,'BUF',137,505),(9,'WAS',99,506),(17,'PHI',101,507),(6,'JAX',202,508),(14,'ATL',139,509),(15,'BAL',198,510),(2,'KAN',196,511),(4,'GNB',97,512),(9,'BUF',146,513),(2,'IND',69,514),(4,'TAM',149,515),(1,'ATL',67,516),(16,'NWE',103,517),(2,'TEN',207,518),(1,'HOU',148,519),(6,'CAR',68,520),(10,'',210,521),(16,'DEN',204,522),(3,'TAM',208,523),(6,'NWE',144,524),(1,'LAR',147,525),(3,'MIN',205,526),(3,'TEN',143,527),(7,'ATL',145,528),(1,'LAC',151,529),(3,'TEN',142,530),(4,'WAS',209,531),(16,'DAL',102,532),(2,'SEA',66,533),(17,'PIT',206,534),(17,'BAL',150,535),(15,'CLE',104,536),(1,'SFO',153,537),(1,'BUF',217,538),(1,'GNB',72,539),(8,'PIT',221,540),(13,'WAS',158,541),(5,'LAC',105,542),(2,'JAX',222,543),(12,'KAN',160,544),(10,'NOR',211,545),(3,'JAX',70,546),(1,'NYG',71,547),(10,'SFO',161,548),(2,'NOR',218,549),(14,'SEA',108,550),(5,'SFO',109,551),(10,'SFO',156,552),(8,'SEA',214,553),(4,'CIN',154,554),(2,'NWE',220,555),(7,'NWE',111,556),(2,'BAL',152,557),(2,'NWE',215,558),(11,'',219,559),(17,'CLE',212,560),(6,'SFO',110,561),(9,'MIN',159,562),(2,'LAR',155,563),(6,'BAL',112,564),(3,'DAL',107,565),(7,'',157,566),(2,'TAM',216,567),(12,'CHI',106,568),(17,'PIT',114,569),(1,'GNB',213,570),(3,'ATL',223,571),(2,'ATL',113,572),(1,'BUF',165,573),(1,'MIN',225,574),(3,'GNB',226,575),(1,'MIA',116,576),(1,'LAC',227,577),(8,'SFO',228,578),(3,'WAS',257,579),(1,'CHI',166,580),(3,'CAR',167,581),(12,'KAN',117,582),(17,'ARI',162,583),(1,'DET',78,584),(5,'GNB',118,585),(5,'PIT',115,586),(2,'LVR',168,587),(4,'',229,588),(0,'CAR',229,589),(1,'PHI',230,590),(1,'CIN',231,591),(2,'CIN',119,592),(11,'CHI',232,593),(7,'KAN',233,594),(1,'TAM',234,595),(4,'IND',164,596),(3,'MIN',235,597),(6,'LAR',236,598),(1,'LVR',79,599),(15,'SEA',120,600),(1,'CIN',121,601),(1,'CHI',122,602),(1,'TEN',75,603),(2,'BAL',169,604),(5,'CHI',123,605),(5,'PHI',237,606),(3,'LVR',224,607),(2,'DEN',238,608),(1,'KAN',239,609),(4,'NYG',240,610),(15,'WAS',170,611),(16,'BUF',241,612),(17,'CLE',124,613),(3,'JAX',242,614),(9,'SFO',125,615),(9,'LAC',144,616),(2,'NYG',126,617),(1,'DAL',244,618),(3,'LAR',171,619),(1,'HOU',76,620),(13,'MIN',127,621),(2,'LAR',128,622),(1,'HOU',129,623),(1,'LAR',172,624),(0,'DAL',262,625),(17,'NYJ',173,626),(1,'MIA',130,627),(6,'ARI',131,628),(1,'LAR',245,629),(1,'PIT',177,630),(2,'CAR',246,631),(1,'CHI',73,632),(3,'',247,633),(3,'CIN',248,634),(17,'SFO',132,635),(3,'',163,636),(1,'LAC',74,637),(1,'MIN',174,638),(16,'TAM',133,639),(1,'KAN',77,640),(1,'NWE',175,641),(1,'CLE',134,642),(1,'BAL',249,643),(17,'MIA',250,644),(4,'IND',251,645),(2,'BUF',252,646),(16,'WAS',135,647),(3,'TAM',136,648),(1,'NYG',137,649),(11,'TAM',138,650),(5,'ARI',253,651),(1,'DAL',139,652),(4,'',140,653),(2,'TEN',254,654),(2,'',141,655),(1,'CAR',255,656),(1,'NYJ',80,657),(6,'MIN',256,658),(3,'SEA',142,659),(5,'',176,660),(5,'CAR',143,661),(11,'HOU',178,662),(1,'JAX',82,663),(9,'NOR',83,664),(9,'HOU',259,665),(10,'DET',258,666),(5,'HOU',81,667),(10,'LAR',260,668),(12,'',179,669),(3,'SFO',84,670),(4,'NOR',85,671),(15,'KAN',261,672);
/*!40000 ALTER TABLE `player_stats` ENABLE KEYS */;
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