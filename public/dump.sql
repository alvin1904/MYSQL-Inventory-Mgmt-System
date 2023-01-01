-- MySQL dump 10.13  Distrib 8.0.31, for Linux (x86_64)
--
-- Host: localhost    Database: InventoryMgmtRIT
-- ------------------------------------------------------
-- Server version	8.0.31-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `resourceUtilisationLog`
--

DROP TABLE IF EXISTS `resourceUtilisationLog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resourceUtilisationLog` (
  `requestId` int NOT NULL,
  `teacherId` int DEFAULT NULL,
  `itemId` int DEFAULT NULL,
  `dateOfIssue` date DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  KEY `teacherId` (`teacherId`),
  KEY `itemId` (`itemId`),
  CONSTRAINT `resourceUtilisationLog_ibfk_1` FOREIGN KEY (`teacherId`) REFERENCES `teacher` (`teacherId`),
  CONSTRAINT `resourceUtilisationLog_ibfk_2` FOREIGN KEY (`itemId`) REFERENCES `stockDetails` (`itemId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resourceUtilisationLog`
--

LOCK TABLES `resourceUtilisationLog` WRITE;
/*!40000 ALTER TABLE `resourceUtilisationLog` DISABLE KEYS */;
/*!40000 ALTER TABLE `resourceUtilisationLog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stockDetails`
--

DROP TABLE IF EXISTS `stockDetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stockDetails` (
  `itemId` int NOT NULL,
  `itemName` varchar(100) DEFAULT NULL,
  `presentCount` int DEFAULT NULL,
  PRIMARY KEY (`itemId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stockDetails`
--

LOCK TABLES `stockDetails` WRITE;
/*!40000 ALTER TABLE `stockDetails` DISABLE KEYS */;
INSERT INTO `stockDetails` VALUES (27028,'Stapler Pins',15),(29099,'Pen Black',85),(37664,'Office Files',30),(39425,'Sreerag',300),(64081,'Chalk',30),(65141,'Marker Red',9),(65468,'Marker Blue',36),(72489,'A4 paper set',5),(84460,'Printer Ink Set',6),(87742,'Stapler',6),(90758,'Football',120),(93142,'Stick files',50),(99585,'Marker Black',10);
/*!40000 ALTER TABLE `stockDetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sudoUsers`
--

DROP TABLE IF EXISTS `sudoUsers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sudoUsers` (
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sudoUsers`
--

LOCK TABLES `sudoUsers` WRITE;
/*!40000 ALTER TABLE `sudoUsers` DISABLE KEYS */;
INSERT INTO `sudoUsers` VALUES ('admin','1234');
/*!40000 ALTER TABLE `sudoUsers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teacher` (
  `teacherId` int NOT NULL,
  `teacherName` varchar(100) DEFAULT NULL,
  `currentStatus` varchar(100) DEFAULT 'working',
  PRIMARY KEY (`teacherId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` VALUES (1802,'Natasha Romanoff','working'),(2423,'James Rhodes','working'),(2505,'Pepper Pots','working'),(3781,'Hank Pym','working'),(3808,'Clint Barton','working'),(5893,'Stephen Strange','working'),(9273,'Tony Stark','working');
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-01  8:24:25
