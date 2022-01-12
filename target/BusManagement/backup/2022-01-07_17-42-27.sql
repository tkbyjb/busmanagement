-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: bus_management
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `t_bus`
--

DROP TABLE IF EXISTS `t_bus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_bus` (
  `busId` int NOT NULL AUTO_INCREMENT,
  `busName` varchar(60) DEFAULT NULL,
  `busCode` varchar(10) DEFAULT NULL,
  `engine` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `chassis` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `instrumentNumber` varchar(60) DEFAULT NULL,
  `principal` int DEFAULT NULL,
  `vendor` varchar(60) DEFAULT NULL,
  `pakingPlace` varchar(60) DEFAULT NULL,
  `displace` varchar(60) DEFAULT NULL,
  `model` varchar(60) DEFAULT NULL,
  `type` varchar(60) DEFAULT NULL,
  `purpose` varchar(60) DEFAULT NULL,
  `purchaseDate` datetime DEFAULT NULL,
  `photo` varchar(60) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  `creator` int DEFAULT NULL,
  `deleteFlag` int DEFAULT NULL,
  PRIMARY KEY (`busId`),
  KEY `principal` (`principal`),
  KEY `creator` (`creator`),
  CONSTRAINT `t_bus_ibfk_1` FOREIGN KEY (`principal`) REFERENCES `t_user` (`userId`),
  CONSTRAINT `t_bus_ibfk_2` FOREIGN KEY (`creator`) REFERENCES `t_user` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_bus`
--

LOCK TABLES `t_bus` WRITE;
/*!40000 ALTER TABLE `t_bus` DISABLE KEYS */;
INSERT INTO `t_bus` VALUES (1,'宇通','京CHI3P0','308461584-J','WVWPR13C6AE170920','WVWPR13C6AE170920',22,'河南宇通','北京朝阳区北辰东路,与慧忠路交岔口以北50米路西','1.22','BK6100CNG','单层16座','公共公车','2021-12-01 15:03:44','1641475311578.jpg','2021-12-31 15:04:26','2022-01-07 09:31:42',2,0),(2,'沃尔沃','京CHI3P8','308461584-J','WVWPR13C6AE170920','WVWPR13C6AE170920',6,'沃尔沃','北京朝阳区北辰东路,与慧忠路交岔口以北50米路西','1.2','BK6100CNG','单层16座','公共公车','2021-12-01 15:03:44','1.jpg','2021-12-31 15:04:26','2022-01-06 21:31:32',2,0),(3,'宇通','京CE7777','308461584-J','WVWPR13C6AE170920','WVWPR13C6AE170920',6,'河南宇通','北京朝阳区北辰东路,与慧忠路交岔口以北50米路西','1.2','BK6100CNG','单层16座','私用公车','2021-12-01 15:03:44','1641475311578.jpg','2021-12-31 15:04:26','2022-01-06 21:25:05',2,0),(4,'宇通','京AHI3P0','308461584-J','WVWPR13C6AE170920','WVWPR13C6AE170920',6,'河南宇通','1234567','1.2','BK6100CNG','单层16座','公共公车','2021-12-01 15:03:44','1641539505367.jpg','2021-12-31 15:04:26','2022-01-07 15:11:48',2,0),(5,'wert','京C66666','wertyui','3456789','wertyui',38,'阿斯顿','qwertyu','234','werth','werth','wertg','2022-01-06 08:50:37','1641291339274.jpg','2022-01-04 18:16:24','2022-01-04 18:16:24',1,1),(6,'上海申龙','京F77776','123456aaa','123456','1234567',5,'上海申龙','1234567','11','123456yu','23456yu','公共公车','2022-01-05 14:14:32','1641475298811.jpg','2022-01-05 14:06:12','2022-01-07 09:32:07',1,0),(7,'景龙','京D12342','1234567','123456','123456',5,'景龙','1234567','11','12345','1234','公共公车','2022-01-05 14:10:00','1641475298811.jpg','2022-01-05 14:10:02','2022-01-06 21:31:07',1,0),(8,'宇通','京CHI3P4','308461584-J','WVWPR13C6AE170920','WVWPR13C6AE170920',5,'河南宇通','北京朝阳区北辰东路,与慧忠路交岔口以北50米路西','1.22','BK6100CNG','单层16座','公共公车','2021-12-01 15:03:44','1641475286063.jpg','2021-12-31 15:04:26','2022-01-06 21:21:29',2,0),(9,'沃尔沃','京CHI3P6','308461584-J','WVWPR13C6AE170920','WVWPR13C6AE170920',6,'沃尔沃','北京朝阳区北辰东路,与慧忠路交岔口以北50米路西','1.2','BK6100CNG','单层16座','公共公车','2021-12-01 15:03:44','1.jpg','2021-12-31 15:04:26','2022-01-06 21:31:32',2,0),(10,'宇通','京CE8777','308461584-J','WVWPR13C6AE170920','WVWPR13C6AE170920',22,'河南宇通','北京朝阳区北辰东路,与慧忠路交岔口以北50米路西','1.2','BK6100CNG','单层16座','私用公车','2021-12-01 15:03:44','1641475311578.jpg','2021-12-31 15:04:26','2022-01-06 21:25:05',2,0),(11,'宇通','京AHI3P9','308461584-J','WVWPR13C6AE170920','WVWPR13C6AE170920',6,'河南宇通','1234567','1.2','BK6100CNG','单层16座','公共公车','2021-12-01 15:03:44','1641475326818.jpg','2021-12-31 15:04:26','2022-01-06 21:25:26',2,0),(12,'wert','京A88888','wertyui','3456789','wertyui',5,'阿斯顿','qwertyu','234','werth','werth','wertg','2022-01-06 08:50:37','1641291339274.jpg','2022-01-04 18:16:24','2022-01-04 18:16:24',1,1),(13,'上海申龙','京F77777','123456aaa','123456','1234567',33,'上海申龙','1234567','11','123456yu','23456yu','公共公车','2022-01-05 14:14:32','1641475286063.jpg','2022-01-05 14:06:12','2022-01-07 09:32:17',1,0),(14,'景龙','京D12345','1234567','123456','123456',5,'景龙','1234567','11','12345','1234','公共公车','2022-01-05 14:10:00','1641475298811.jpg','2022-01-05 14:10:02','2022-01-06 21:31:07',1,0),(15,'宇通','京CHI3P0','308461584-J','WVWPR13C6AE170920','WVWPR13C6AE170920',5,'河南宇通','北京朝阳区北辰东路,与慧忠路交岔口以北50米路西','1.22','BK6100CNG','单层16座','公共公车','2021-12-01 15:03:44','1641475286063.jpg','2021-12-31 15:04:26','2022-01-06 21:21:29',2,0),(16,'沃尔沃','京CHI3P8','308461584-J','WVWPR13C6AE170920','WVWPR13C6AE170920',6,'沃尔沃','北京朝阳区北辰东路,与慧忠路交岔口以北50米路西','1.2','BK6100CNG','单层16座','公共公车','2021-12-01 15:03:44','1.jpg','2021-12-31 15:04:26','2022-01-06 21:31:32',2,0),(17,'宇通','京CE7778','308461584-J','WVWPR13C6AE170920','WVWPR13C6AE170920',38,'河南宇通','北京朝阳区北辰东路,与慧忠路交岔口以北50米路西','1.2','BK6100CNG','单层16座','私用公车','2021-12-01 15:03:44','1641475311578.jpg','2021-12-31 15:04:26','2022-01-06 21:25:05',2,0),(18,'宇通','京AHI3P3','308461584-J','WVWPR13C6AE170920','WVWPR13C6AE170920',6,'河南宇通','1234567','1.2','BK6100CNG','单层16座','公共公车','2021-12-01 15:03:44','1641475326818.jpg','2021-12-31 15:04:26','2022-01-06 21:25:26',2,0),(19,'wert','京A99999','wertyui','3456789','wertyui',5,'阿斯顿','qwertyu','234','werth','werth','wertg','2022-01-06 08:50:37','1641291339274.jpg','2022-01-04 18:16:24','2022-01-04 18:16:24',1,1),(20,'上海申龙','京F77771','123456aaa','123456','1234567',5,'上海申龙','1234567','11','123456yu','23456yu','公共公车','2022-01-05 14:14:32','1.jpg','2022-01-05 14:06:12','2022-01-07 09:32:31',1,0),(21,'景龙','京D12347','1234567','123456','123456',33,'景龙','1234567','11','12345','1234','公共公车','2022-01-05 14:10:00','1641475298811.jpg','2022-01-05 14:10:02','2022-01-06 21:31:07',1,0),(22,'宇通','京CHI3P0','308461584-J','WVWPR13C6AE170920','WVWPR13C6AE170920',5,'河南宇通','北京朝阳区北辰东路,与慧忠路交岔口以北50米路西','1.22','BK6100CNG','单层16座','公共公车','2021-12-01 15:03:44','1641475286063.jpg','2021-12-31 15:04:26','2022-01-06 21:21:29',2,0),(23,'沃尔沃','京CHI3P8','308461584-J','WVWPR13C6AE170920','WVWPR13C6AE170920',6,'沃尔沃','北京朝阳区北辰东路,与慧忠路交岔口以北50米路西','1.2','BK6100CNG','单层16座','公共公车','2021-12-01 15:03:44','1.jpg','2021-12-31 15:04:26','2022-01-06 21:31:32',2,0),(24,'宇通','京CE7779','308461584-J','WVWPR13C6AE170920','WVWPR13C6AE170920',22,'河南宇通','北京朝阳区北辰东路,与慧忠路交岔口以北50米路西','1.2','BK6100CNG','单层16座','私用公车','2021-12-01 15:03:44','1641475311578.jpg','2021-12-31 15:04:26','2022-01-06 21:25:05',2,0),(25,'宇通','京AHI3P0','308461584-J','WVWPR13C6AE170920','WVWPR13C6AE170920',6,'河南宇通','1234567','1.2','BK6100CNG','单层16座','公共公车','2021-12-01 15:03:44','1641475326818.jpg','2021-12-31 15:04:26','2022-01-06 21:25:26',2,0),(26,'wert','京DU8888','wertyui','3456789','wertyui',38,'阿斯顿','qwertyu','234','werth','werth','wertg','2022-01-06 08:50:37','1641291339274.jpg','2022-01-04 18:16:24','2022-01-04 18:16:24',1,1),(27,'上海申龙','京F77773','123456aaa','123456','1234567',5,'上海申龙','1234567','11','123456yu','23456yu','公共公车','2022-01-05 14:14:32','1641475286063.jpg','2022-01-05 14:06:12','2022-01-07 09:40:33',1,0),(28,'景龙','京D12340','1234567','123456','123456',5,'景龙','1234567','11','12345','1234','公共公车','2022-01-05 14:10:00','1641475298811.jpg','2022-01-05 14:10:02','2022-01-06 21:31:07',1,0),(29,'宇通','京CHI3P8','308461584-J','WVWPR13C6AE170920','WVWPR13C6AE170920',33,'河南宇通','北京朝阳区北辰东路,与慧忠路交岔口以北50米路西','1.22','BK6100CNG','单层16座','公共公车','2021-12-01 15:03:44','1641475286063.jpg','2021-12-31 15:04:26','2022-01-06 21:21:29',2,0),(30,'沃尔沃','京CHI3P9','308461584-J','WVWPR13C6AE170920','WVWPR13C6AE170920',38,'沃尔沃','北京朝阳区北辰东路,与慧忠路交岔口以北50米路西','1.2','BK6100CNG','单层16座','公共公车','2021-12-01 15:03:44','1.jpg','2021-12-31 15:04:26','2022-01-06 21:31:32',2,0),(31,'宇通','京CE7772','308461584-J','WVWPR13C6AE170920','WVWPR13C6AE170920',6,'河南宇通','北京朝阳区北辰东路,与慧忠路交岔口以北50米路西','1.2','BK6100CNG','单层16座','私用公车','2021-12-01 15:03:44','1641475311578.jpg','2021-12-31 15:04:26','2022-01-06 21:25:05',2,0),(32,'宇通','京AHI3P0','308461584-J','WVWPR13C6AE170920','WVWPR13C6AE170920',6,'河南宇通','1234567','1.2','BK6100CNG','单层16座','公共公车','2021-12-01 15:03:44','1641475326818.jpg','2021-12-31 15:04:26','2022-01-06 21:25:26',2,0),(33,'wert','3456','wertyui','3456789','wertyui',5,'阿斯顿','qwertyu','234','werth','werth','wertg','2022-01-06 08:50:37','1641291339274.jpg','2022-01-04 18:16:24','2022-01-04 18:16:24',1,1),(34,'上海申龙','京F77776','123456aaa','123456','1234567',5,'上海申龙','1234567','11','123456yu','23456yu','公共公车','2022-01-05 14:14:32','1.jpg','2022-01-05 14:06:12','2022-01-07 09:32:42',1,0),(35,'景龙','京D12344','1234567','123456','123456',5,'景龙','1234567','11','12345','1234','公共公车','2022-01-05 14:10:00','1641475298811.jpg','2022-01-05 14:10:02','2022-01-06 21:31:07',1,0),(36,'宇通','京CHI3P9','308461584-J','WVWPR13C6AE170920','WVWPR13C6AE170920',5,'河南宇通','北京朝阳区北辰东路,与慧忠路交岔口以北50米路西','1.22','BK6100CNG','单层16座','公共公车','2021-12-01 15:03:44','1641475286063.jpg','2021-12-31 15:04:26','2022-01-06 21:21:29',2,0),(37,'沃尔沃','京CHI3P4','308461584-J','WVWPR13C6AE170920','WVWPR13C6AE170920',6,'沃尔沃','北京朝阳区北辰东路,与慧忠路交岔口以北50米路西','1.2','BK6100CNG','单层16座','公共公车','2021-12-01 15:03:44','1.jpg','2021-12-31 15:04:26','2022-01-06 21:31:32',2,0),(38,'宇通','京CE7774','308461584-J','WVWPR13C6AE170920','WVWPR13C6AE170920',6,'河南宇通','北京朝阳区北辰东路,与慧忠路交岔口以北50米路西','1.2','BK6100CNG','单层16座','私用公车','2021-12-01 15:03:44','1641475311578.jpg','2021-12-31 15:04:26','2022-01-06 21:25:05',2,0),(39,'宇通','京AHI3P4','308461584-J','WVWPR13C6AE170920','WVWPR13C6AE170920',6,'河南宇通','1234567','1.2','BK6100CNG','单层16座','公共公车','2021-12-01 15:03:44','1641475326818.jpg','2021-12-31 15:04:26','2022-01-06 21:25:26',2,0),(40,'wert','3456','wertyui','3456789','wertyui',5,'阿斯顿','qwertyu','234','werth','werth','wertg','2022-01-06 08:50:37','1641291339274.jpg','2022-01-04 18:16:24','2022-01-04 18:16:24',1,1),(41,'上海申龙','京F77770','123456aaa','123456','1234567',5,'上海申龙','1234567','11','123456yu','23456yu','公共公车','2022-01-05 14:14:32','1.jpg','2022-01-05 14:06:12','2022-01-07 09:40:57',1,0),(42,'景龙','京D12348','1234567','123456','123456',5,'景龙','1234567','11','12345','1234','公共公车','2022-01-05 14:10:00','1641475298811.jpg','2022-01-05 14:10:02','2022-01-06 21:31:07',1,0),(43,'qwer','京C99999','1234567','qwerty12345','12345678',5,'沃尔沃','北京朝阳区北辰东路,与慧忠路交岔口以北50米路西','1.1','123456','2345','私用公车','2022-01-05 00:00:00','1641475311578.jpg','2022-01-07 09:34:03','2022-01-07 09:34:03',1,0);
/*!40000 ALTER TABLE `t_bus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_bus_expenditure`
--

DROP TABLE IF EXISTS `t_bus_expenditure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_bus_expenditure` (
  `expId` int NOT NULL AUTO_INCREMENT,
  `busCode` varchar(10) DEFAULT NULL,
  `invoiceCode` varchar(60) DEFAULT NULL,
  `typeId` int DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `state` int DEFAULT NULL,
  `approver` int DEFAULT NULL,
  `des` varchar(100) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  `creator` int DEFAULT NULL,
  `deleteFlag` int DEFAULT NULL,
  `deleteNote` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`expId`),
  KEY `typeId` (`typeId`),
  KEY `approver` (`approver`),
  KEY `creator` (`creator`),
  CONSTRAINT `t_bus_expenditure_ibfk_1` FOREIGN KEY (`typeId`) REFERENCES `t_bus_expenditure_type` (`typeId`),
  CONSTRAINT `t_bus_expenditure_ibfk_2` FOREIGN KEY (`approver`) REFERENCES `t_user` (`userId`),
  CONSTRAINT `t_bus_expenditure_ibfk_3` FOREIGN KEY (`creator`) REFERENCES `t_user` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_bus_expenditure`
--

LOCK TABLES `t_bus_expenditure` WRITE;
/*!40000 ALTER TABLE `t_bus_expenditure` DISABLE KEYS */;
INSERT INTO `t_bus_expenditure` VALUES (1,'沪CHI3P0','109320321',1,3333,0,1,'金额超过1000,需要审核','2022-01-03 09:46:04','2022-01-06 22:04:32',1,0,NULL),(2,'京CHI3P0','109320321',2,111,2,1,'qqq厚度爱上凤凰','2022-01-02 09:46:04','2022-01-05 14:59:13',5,0,NULL),(3,'京CHI3P0','109320321',3,333,0,4,'aaaaaaa','2022-01-04 09:46:04','2022-01-04 09:46:08',1,0,NULL),(8,'京CHI3P0','12345yuwerg',7,12344,0,2,'金额超过1000,需要审核','2022-01-01 12:43:20','2022-01-05 17:04:14',1,0,NULL),(9,'京CHI3P0','12345yu',3,123,1,1,'12345一头热哇ASD','2022-01-04 12:43:59','2022-01-04 12:43:59',1,0,NULL),(10,'京CHI3P0','109320321',2,333,0,1,'aaaaaaadfghj','2021-12-23 12:59:08','2022-01-04 12:59:08',1,0,NULL),(11,'京AHI3P3','qwer23456',3,123,0,5,'微软体育和广泛的','2022-01-05 13:23:18','2022-01-05 15:19:42',1,0,NULL),(13,'京AHI3P3','1234567',7,5,2,NULL,'12345tyfds','2022-01-05 15:13:01','2022-01-05 15:13:01',1,0,NULL),(14,'京D12347','345678',1,5555,0,NULL,'12345tyfds','2022-01-05 15:14:02','2022-01-05 15:14:02',1,0,NULL),(15,'京AHI3P3','567890',3,12345,0,NULL,'金额超过1000,需要审核','2022-01-05 15:15:10','2022-01-05 15:15:10',1,0,NULL),(16,'京D12347','55555',1,33,2,NULL,'1234567890-=','2022-01-05 16:54:46','2022-01-05 16:54:46',1,0,NULL),(17,'京AHI3P3','234567io',8,1234,0,NULL,'金额超过1000,需要审核','2022-01-06 09:46:45','2022-01-06 09:46:45',1,0,NULL),(18,'京D12347','k12345678',2,12345,0,NULL,'金额超过1000,需要审核','2022-01-06 09:47:43','2022-01-06 09:47:43',1,0,NULL),(19,'京D12347','098765432',7,23,2,NULL,'qwertfdsasdcvb','2022-01-06 09:48:23','2022-01-06 09:48:23',1,0,NULL),(20,'京AHI3P3','1234567890[]',3,223,2,NULL,'12345678','2022-01-06 22:04:51','2022-01-06 22:04:51',1,0,NULL),(21,'京CHI3P0','109320321',2,111,2,1,'qqq厚度爱上凤凰','2022-01-07 09:46:04','2022-01-05 14:59:13',5,0,NULL),(22,'京CHI3P0','109320321',3,333,0,4,'aaaaaaa','2022-01-04 09:46:04','2022-01-04 09:46:08',1,0,NULL),(23,'京CHI3P0','12345yuwerg',7,12344,0,2,'金额超过1000,需要审核','2022-01-01 12:43:20','2022-01-05 17:04:14',1,0,NULL),(24,'京CHI3P0','12345yu',3,123,1,1,'12345一头热哇ASD','2022-01-04 12:43:59','2022-01-04 12:43:59',1,0,NULL),(25,'京CHI3P0','109320321',2,333,0,1,'aaaaaaadfghj','2021-12-23 12:59:08','2022-01-04 12:59:08',1,0,NULL),(26,'京AHI3P3','qwer23456',3,123,0,5,'微软体育和广泛的','2022-01-06 19:47:43','2022-01-05 15:19:42',1,0,NULL),(27,'京AHI3P3','1234567',7,5,2,3,'12345tyfds','2022-01-06 15:13:01','2022-01-05 15:13:01',1,0,NULL),(28,'京D12347','345678',1,5555,0,4,'12345tyfds','2022-01-05 15:14:02','2022-01-05 15:14:02',1,0,NULL),(29,'京AHI3P3','567890',3,12345,0,2,'金额超过1000,需要审核','2022-01-05 15:15:10','2022-01-05 15:15:10',1,0,NULL),(30,'京D12347','55555',1,33,2,1,'1234567890-=','2022-01-06 16:54:46','2022-01-05 16:54:46',1,0,NULL),(31,'京AHI3P3','234567io',8,1234,0,22,'金额超过1000,需要审核','2022-01-06 19:46:45','2022-01-06 09:46:45',1,0,NULL),(32,'京D12347','k12345678',2,12345,0,33,'金额超过1000,需要审核','2022-01-06 19:47:43','2022-01-06 09:47:43',1,0,NULL),(33,'京D12347','098765432',7,23,2,38,'qwertfdsasdcvb','2022-01-06 19:47:43','2022-01-06 09:48:23',1,0,NULL),(44,'沪CHI3P0','109320321',1,333,1,1,'aaaaaaa','2022-01-07 09:46:04','2021-12-10 21:16:36',1,0,NULL),(45,'	 京AHI3P3','12345678',6,44,2,NULL,'12345678oiuytr','2022-01-06 22:23:08','2022-01-06 22:23:08',1,1,NULL);
/*!40000 ALTER TABLE `t_bus_expenditure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_bus_expenditure_type`
--

DROP TABLE IF EXISTS `t_bus_expenditure_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_bus_expenditure_type` (
  `typeId` int NOT NULL AUTO_INCREMENT,
  `typeName` varchar(60) DEFAULT NULL,
  `typeNote` varchar(100) DEFAULT NULL,
  `deleteFlag` int DEFAULT NULL,
  PRIMARY KEY (`typeId`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_bus_expenditure_type`
--

LOCK TABLES `t_bus_expenditure_type` WRITE;
/*!40000 ALTER TABLE `t_bus_expenditure_type` DISABLE KEYS */;
INSERT INTO `t_bus_expenditure_type` VALUES (1,'燃油费(汽油)','燃油费(汽油)',0),(2,'燃油费(柴油)','燃油费(柴油)',0),(3,'保险费','保险费',0),(4,'维修保养费','维修保养费',0),(6,'过路(桥)费','过路(桥)费',0),(7,'停车费','停车费',0),(8,'车船税','车船税',0),(9,'检测费','检测费',0),(10,'其它费用','如洗车、违章罚款等,支出记录',0),(12,'23456','qwert12345',1),(13,'洗车费','洗车费用',0);
/*!40000 ALTER TABLE `t_bus_expenditure_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_bus_register_info`
--

DROP TABLE IF EXISTS `t_bus_register_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_bus_register_info` (
  `regId` int NOT NULL AUTO_INCREMENT,
  `busCode` varchar(10) DEFAULT NULL,
  `recepient` int DEFAULT NULL,
  `startPlace` varchar(60) DEFAULT NULL,
  `endPlace` varchar(60) DEFAULT NULL,
  `startOdometer` varchar(60) DEFAULT NULL,
  `endOdometer` varchar(60) DEFAULT NULL,
  `useTime` datetime DEFAULT NULL,
  `useReason` varchar(200) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  `creator` int DEFAULT NULL,
  `deleteFlag` int DEFAULT NULL,
  `deleteNote` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`regId`),
  KEY `recepient` (`recepient`),
  KEY `creator` (`creator`),
  CONSTRAINT `t_bus_register_info_ibfk_1` FOREIGN KEY (`recepient`) REFERENCES `t_user` (`userId`),
  CONSTRAINT `t_bus_register_info_ibfk_2` FOREIGN KEY (`creator`) REFERENCES `t_user` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_bus_register_info`
--

LOCK TABLES `t_bus_register_info` WRITE;
/*!40000 ALTER TABLE `t_bus_register_info` DISABLE KEYS */;
INSERT INTO `t_bus_register_info` VALUES (1,'京CHI3P0',6,'AAABB','BBBC','10','9','2022-01-03 11:16:40','awsedrftgyhujiko','2022-01-03 11:17:10','2022-01-07 10:11:58',3,0,NULL),(2,'京CHI3P0',33,'AVC','BGG','10','9','2022-01-05 11:16:40','预定','2022-01-03 11:17:10','2022-01-03 11:17:12',3,0,NULL),(3,'京CHI3P8',22,'AET','BHH','10','9','2022-01-03 11:16:40','预定','2022-01-03 11:17:10','2022-01-03 11:17:12',3,0,NULL),(5,'京A99999',6,'dsfghh','sdfgb','dsff','234','2022-01-04 14:26:50','sdfghjkiuytyrte','2022-01-04 14:30:09','2022-01-06 21:53:49',1,0,NULL),(6,'京A99999',38,'AVC','BGG','12','23','2021-12-01 00:00:00','qqqqqqqq23wertg','2021-12-01 14:45:05','2022-01-06 21:53:58',1,0,NULL),(7,'京D12347',6,'AAABB','BBBC','10','9','2022-01-03 11:16:40','预定awsedrftgyhujiko','2022-01-03 11:17:10','2022-01-04 14:18:50',3,0,NULL),(8,'京CHI3P0',6,'AAABB','BBBC','10','9','2022-01-03 11:16:40','预定awsedrftgyhujikofhf','2022-01-03 11:17:10','2022-01-06 22:00:55',3,0,NULL),(9,'京CHI3P0',33,'AVC','BGG','10','9','2022-01-05 11:16:40','预定','2022-01-03 11:17:10','2022-01-03 11:17:12',3,0,NULL),(10,'京CHI3P8',22,'AET','BHH','10','9','2022-01-03 11:16:40','预定','2022-01-03 11:17:10','2022-01-03 11:17:12',3,0,NULL),(11,'京A99999',6,'dsfghh','sdfgb','dsff','234','2022-01-06 14:26:50','sdfghjkiuytyrte','2022-01-04 14:30:09','2022-01-06 21:53:49',1,0,NULL),(12,'京A99999',38,'AVC','BGG','12','23','2021-12-01 00:00:00','qqqqqqqq23wertg','2021-12-01 14:45:05','2022-01-06 21:53:58',1,0,NULL),(13,'京D12347',6,'AAABB','BBBC','10','9','2022-01-07 11:16:40','预定awsedrftgyhujiko','2022-01-03 11:17:10','2022-01-04 14:18:50',3,0,NULL),(14,'京CHI3P0',6,'AAABB','BBBC','10','9','2022-01-06 11:16:40','预定awsedrftgyhujiko','2022-01-07 11:17:10','2022-01-04 14:18:50',3,0,NULL),(15,'京CHI3P0',33,'AVC','BGG','10','9','2022-01-05 11:16:40','预定','2022-01-07 11:17:10','2022-01-03 11:17:12',3,0,NULL),(16,'京CHI3P8',22,'AET','BHH','10','9','2022-01-07 11:16:40','预定','2022-01-03 11:17:10','2022-01-03 11:17:12',3,0,NULL),(17,'京A99999',6,'dsfghh','sdfgb','dsff','234','2022-01-04 14:26:50','sdfghjkiuytyrte','2022-01-04 14:30:09','2022-01-06 21:53:49',1,0,NULL),(18,'京A99999',38,'AVC','BGG','12','23','2022-01-06 19:47:43','qqqqqqqq23wertg','2022-01-07 14:45:05','2022-01-06 21:53:58',1,0,NULL),(19,'京D12347',6,'AAABB','BBBC','10','9','2022-01-06 11:16:40','预定awsedrftgyhujiko','2022-01-03 11:17:10','2022-01-04 14:18:50',3,0,NULL),(20,'京CHI3P0',6,'AAABB','BBBC','10','9','2022-01-06 19:47:43','预定awsedrftgyhujiko','2022-01-03 11:17:10','2022-01-04 14:18:50',3,0,NULL),(21,'京CHI3P0',33,'AVC','BGG','10','9','2022-01-06 11:16:40','预定','2022-01-06 11:17:10','2022-01-03 11:17:12',3,0,NULL),(22,'京CHI3P8',22,'AET','BHH','10','9','2022-01-03 11:16:40','预定','2022-01-03 11:17:10','2022-01-03 11:17:12',3,0,NULL),(23,'京A99999',6,'dsfghh','sdfgb','dsff','234','2022-01-04 14:26:50','sdfghjkiuytyrte','2022-01-06 14:30:09','2022-01-06 21:53:49',1,0,NULL),(24,'京A99999',38,'AVC','BGG','12','23','2022-01-06 00:04:00','qqqqqqqq23wertg','2021-12-01 14:45:05','2022-01-06 21:53:58',1,0,NULL),(25,'京D12347',6,'AAABB','BBBC','10','9','2022-01-03 11:16:40','预定awsedrftgyhujiko','2022-01-03 11:17:10','2022-01-04 14:18:50',3,0,NULL),(26,'	 京D12347',22,'AAABB','sdfgb','12','11','2022-01-18 00:00:00','11234567890-poiuytrew','2022-01-06 22:01:22','2022-01-06 22:01:22',1,0,NULL),(27,'京AHI3P3',6,'AVC','BHH','5','6','2022-01-06 22:23:56','1234567890','2022-01-06 22:23:58','2022-01-06 22:23:58',1,0,NULL),(28,'京D12347',22,'AAABB','sdfgb','5','6','2022-01-06 22:38:41','asdf','2022-01-06 22:38:46','2022-01-06 22:38:46',1,0,NULL);
/*!40000 ALTER TABLE `t_bus_register_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_cost_accraditation`
--

DROP TABLE IF EXISTS `t_cost_accraditation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_cost_accraditation` (
  `appId` int NOT NULL AUTO_INCREMENT,
  `busCode` varchar(10) DEFAULT NULL,
  `approver` int DEFAULT NULL,
  `appTime` datetime DEFAULT NULL,
  `appState` int DEFAULT NULL,
  `expId` int DEFAULT NULL COMMENT '操作的经费登记记录id',
  `deleteFlag` int DEFAULT NULL,
  PRIMARY KEY (`appId`),
  KEY `approver` (`approver`),
  CONSTRAINT `t_cost_accraditation_ibfk_1` FOREIGN KEY (`approver`) REFERENCES `t_user` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_cost_accraditation`
--

LOCK TABLES `t_cost_accraditation` WRITE;
/*!40000 ALTER TABLE `t_cost_accraditation` DISABLE KEYS */;
INSERT INTO `t_cost_accraditation` VALUES (1,'京CHI3P0',4,'2022-01-04 22:50:51',1,3,0),(2,'京CHI3P0',4,'2022-01-04 22:50:51',0,2,0),(3,'京CHI3P0',4,'2022-01-04 22:50:51',2,2,0),(4,'沪CHI3P0',1,'2022-01-04 23:28:12',0,1,0),(5,'沪CHI3P0',1,'2022-01-04 23:29:23',0,1,0),(6,'沪CHI3P0',1,'2022-01-04 23:29:29',2,1,0),(7,'沪CHI3P0',1,'2022-01-04 23:31:32',0,1,0),(8,'京CHI3P0',1,'2022-01-04 23:31:32',1,2,0),(9,'沪CHI3P0',1,'2022-01-04 23:31:37',0,1,0),(10,'京CHI3P0',1,'2022-01-04 23:31:37',0,2,0),(11,'沪CHI3P0',1,'2022-01-04 23:34:32',0,1,0),(12,'沪CHI3P0',1,'2022-01-04 23:41:53',0,1,0),(13,'京CHI3P0',1,'2022-01-04 23:42:16',0,2,0),(14,'沪CHI3P0',1,'2022-01-05 00:15:23',0,1,0),(15,'沪CHI3P0',1,'2022-01-05 00:23:17',0,1,0),(16,'沪CHI3P0',1,'2022-01-05 00:23:48',0,1,0),(17,'京CHI3P0',1,'2022-01-05 00:25:27',0,2,0),(18,'沪CHI3P0',1,'2022-01-05 00:27:32',1,1,0),(19,'京CHI3P0',1,'2022-01-05 15:20:40',1,9,0);
/*!40000 ALTER TABLE `t_cost_accraditation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_menu`
--

DROP TABLE IF EXISTS `t_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_menu` (
  `menuId` int NOT NULL AUTO_INCREMENT,
  `menuName` varchar(60) NOT NULL,
  `icon` varchar(60) DEFAULT NULL,
  `parent` int DEFAULT NULL,
  `url` varchar(60) NOT NULL,
  `target` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`menuId`),
  UNIQUE KEY `menuName` (`menuName`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_menu`
--

LOCK TABLES `t_menu` WRITE;
/*!40000 ALTER TABLE `t_menu` DISABLE KEYS */;
INSERT INTO `t_menu` VALUES (1,'系统管理','el-icon-cpu',0,'/1',NULL),(2,'权限管理','el-icon-postcard',0,'/2',NULL),(3,'公车登记管理','el-icon-s-shop',0,'/3',NULL),(4,'审批管理','el-icon-s-opportunity',0,'/4',NULL),(5,'统计管理','el-icon-s-data',0,'/5',NULL),(6,'用户信息管理','el-icon-user-solid',1,'/6',NULL),(7,'公车信息管理','el-icon-s-help',1,'/7',NULL),(8,'公车经费支出类别管理','el-icon-s-promotion',1,'/8',NULL),(9,'角色添加','el-icon-user-solid',2,'/9',NULL),(10,'角色信息管理','el-icon-s-order',2,'/10',NULL),(11,'用户角色管理','el-icon-s-check',2,'/11',NULL),(12,'公车使用登记','el-icon-s-opportunity',3,'/12',NULL),(13,'公车经费支出登记管理','el-icon-s-data',3,'/13',NULL),(14,'管理部门审批','el-icon-menu',4,'/14',NULL),(15,'审批条目管理','el-icon-s-order',4,'/15',NULL),(16,'公车使用信息统计','el-icon-s-cooperation',5,'/16',NULL),(17,'公车经费支出信息统计','el-icon-s-check',5,'/17',NULL),(18,'数据备份','el-icon-lock',0,'/18',NULL),(19,'选择备份','el-icon-s-opportunity',18,'/19',NULL);
/*!40000 ALTER TABLE `t_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_role`
--

DROP TABLE IF EXISTS `t_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_role` (
  `roleId` int NOT NULL AUTO_INCREMENT,
  `roleName` varchar(60) NOT NULL,
  `roleNote` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`roleId`),
  UNIQUE KEY `roleName` (`roleName`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_role`
--

LOCK TABLES `t_role` WRITE;
/*!40000 ALTER TABLE `t_role` DISABLE KEYS */;
INSERT INTO `t_role` VALUES (-1,'无权限','给修改无权限的用,此类角色=null'),(1,'超级管理员','内测账号'),(2,'系统管理员','系统管理,权限管理'),(3,'公车录入员','公车登记管理'),(4,'审批员','审批管理'),(5,'财务员','统计管理'),(6,'司机','公车领用人'),(14,'公车管理员','只管理公车'),(15,'用户管理员','只管理用户信息');
/*!40000 ALTER TABLE `t_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_role_menu`
--

DROP TABLE IF EXISTS `t_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_role_menu` (
  `id` int NOT NULL AUTO_INCREMENT,
  `roleId` int DEFAULT NULL,
  `menuId` int DEFAULT NULL,
  `deleteFlag` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `roleId` (`roleId`),
  KEY `menuId` (`menuId`),
  CONSTRAINT `t_role_menu_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `t_role` (`roleId`),
  CONSTRAINT `t_role_menu_ibfk_2` FOREIGN KEY (`menuId`) REFERENCES `t_menu` (`menuId`)
) ENGINE=InnoDB AUTO_INCREMENT=215 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_role_menu`
--

LOCK TABLES `t_role_menu` WRITE;
/*!40000 ALTER TABLE `t_role_menu` DISABLE KEYS */;
INSERT INTO `t_role_menu` VALUES (38,4,4,0),(39,4,14,0),(40,4,15,0),(95,2,6,0),(96,2,7,0),(97,2,8,0),(98,2,9,0),(99,2,10,0),(100,2,11,0),(102,2,1,0),(103,2,2,0),(106,3,12,0),(107,3,13,0),(127,3,3,0),(129,5,16,0),(130,5,17,0),(131,5,5,0),(187,14,7,0),(188,14,1,0),(194,15,6,0),(195,15,1,0),(196,1,1,0),(197,1,6,0),(198,1,7,0),(199,1,8,0),(200,1,2,0),(201,1,9,0),(202,1,10,0),(203,1,11,0),(204,1,3,0),(205,1,12,0),(206,1,13,0),(207,1,4,0),(208,1,14,0),(209,1,15,0),(210,1,5,0),(211,1,16,0),(212,1,17,0),(213,1,18,0),(214,1,19,0);
/*!40000 ALTER TABLE `t_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_user`
--

DROP TABLE IF EXISTS `t_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_user` (
  `userId` int NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `roleId` int DEFAULT NULL,
  `userName` varchar(60) NOT NULL,
  `userPassword` varchar(60) NOT NULL,
  `realName` varchar(60) DEFAULT NULL,
  `sex` char(4) DEFAULT NULL,
  `idCard` varchar(20) DEFAULT NULL,
  `birth` date NOT NULL,
  `age` int DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  `creator` int DEFAULT NULL,
  `deleteFlag` int NOT NULL,
  PRIMARY KEY (`userId`),
  UNIQUE KEY `userName` (`userName`),
  KEY `creator` (`creator`),
  KEY `roleId` (`roleId`),
  CONSTRAINT `t_user_ibfk_1` FOREIGN KEY (`creator`) REFERENCES `t_user` (`userId`),
  CONSTRAINT `t_user_ibfk_2` FOREIGN KEY (`roleId`) REFERENCES `t_role` (`roleId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user`
--

LOCK TABLES `t_user` WRITE;
/*!40000 ALTER TABLE `t_user` DISABLE KEYS */;
INSERT INTO `t_user` VALUES (1,1,'a','123','张三','男','11','2021-12-27',12,'11','2021-12-27 22:00:13','2021-12-27 22:00:15',1,0),(2,2,'func','123','bob','女','12','2021-12-02',20,'13666','2021-12-28 18:31:44','2022-01-02 22:53:30',1,0),(3,3,'c','123','mary','女','12','2021-12-28',23,'13','2021-12-28 18:31:44','2021-12-28 18:31:50',2,0),(4,4,'ddd','123','ttt','男','11','2021-12-27',12,'11','2021-12-17 22:00:13','2021-12-27 22:00:15',2,0),(5,5,'小明','123','明明','男','113456','2021-12-27',12,'11','2021-12-17 22:00:13','2021-12-27 22:00:15',2,0),(6,6,'driver','123','carry','女','44411','2021-12-27',12,'11','2021-12-17 22:00:13','2021-12-27 22:00:15',2,0),(15,4,'ere','trt','rtr','男','1233','2021-12-08',18,'3434','2021-12-30 15:06:22','2021-12-30 15:06:22',1,0),(16,6,'who','123','our','女','2334','2021-12-15',19,'13234567','2021-12-30 15:09:28','2021-12-30 15:09:28',1,0),(17,6,'qwerty','12345','1wef','女','123456y','2022-01-11',18,'123456','2022-01-04 19:01:58','2022-01-04 19:01:58',1,0),(18,6,'werty','12345aaaa','1wef','男','123456y','2022-01-11',20,'123456','2022-01-04 19:05:53','2022-01-04 19:15:21',1,0),(19,6,'12345rrr','12345678','qwerty','女','123456789','2022-01-12',16,'234567','2022-01-03 19:18:21','2022-01-04 19:19:50',1,0),(20,1,'yyyyyy','yyy','yyy','男','yyy','2022-01-24',18,'yyy','2022-01-04 19:21:31','2022-01-04 19:21:31',1,0),(21,6,'bbbbb','yyy','yyy','男','yyy','2022-01-24',18,'yyy','2022-01-04 19:23:40','2022-01-04 19:45:01',1,0),(22,6,'pppp','yyy','yyy','女','yyy','2022-01-24',18,'yyy','2022-01-04 19:23:57','2022-01-04 21:14:02',1,0),(23,6,'rrr','rrr','rrr','女','rrrr','2022-01-18',18,'rrr','2022-01-04 19:40:36','2022-01-04 19:40:36',1,0),(24,-1,'ttt333','1234567','里斯','女','12345678','2022-01-12',18,'1234567','2022-01-05 12:46:27','2022-01-05 13:58:45',1,0),(25,-1,'you','2345frrer','梨花','男','23456','2022-01-12',18,'12345','2022-01-05 12:58:44','2022-01-05 12:58:44',1,0),(26,-1,'youare','2345frrer','梨花','男','23456','2022-01-12',18,'12345','2022-01-05 12:59:56','2022-01-05 12:59:56',1,0),(27,1,'789','123456','qwerty','男','12345678','2022-01-11',19,'12345678','2022-01-05 13:06:25','2022-01-05 13:07:31',1,0),(29,2,'Terat','iAn1Nfw1dM','管云','男','671182749930926464','1991-03-07',44,'04718607414','2022-01-06 21:06:24','2022-01-06 21:07:35',1,0),(30,3,'Eve','MYSXT','让晶瑶','女','055997001473482458','1996-07-26',32,'31990181552','2022-01-06 21:12:37','2022-01-06 21:12:37',1,0),(31,4,'mitch','rfgiro','甘欣合','女','532810439466052254','1999-07-04',24,'04415987165','2022-01-06 21:14:25','2022-01-06 21:14:25',1,0),(32,5,'evera','58220803669','施霖','男','050871998830492814','1992-04-16',29,'31096786337','2022-01-06 21:15:48','2022-01-06 21:15:48',1,0),(33,6,'itrin','7125963','莱高兴','男','504274199136647420','1996-12-10',26,'91624203436','2022-01-06 21:16:49','2022-01-06 21:16:49',1,0),(34,2,'Terat22','iAn1Nfw1dM','管云','男','671182749930926464','1991-03-07',44,'04718607414','2022-01-04 21:06:24','2022-01-06 21:07:35',1,0),(35,3,'Eve33','MYSXT','让晶瑶','女','055997001473482458','1996-07-26',32,'31990181552','2022-01-06 21:12:37','2022-01-06 21:12:37',1,0),(36,4,'mitch44','rfgiro','甘欣合','女','532810439466052254','1999-07-04',24,'04415987165','2022-01-06 21:14:25','2022-01-06 21:14:25',1,0),(37,5,'evera5','58220803669','施霖','男','050871998830492814','1992-04-16',29,'31096786337','2022-01-21 21:15:48','2022-01-06 21:15:48',1,0),(38,6,'itrin7','7125963','莱高兴','男','504274199136647420','1996-12-10',26,'91624203436','2022-01-11 21:16:49','2022-01-06 21:16:49',1,0);
/*!40000 ALTER TABLE `t_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-07 17:42:27
