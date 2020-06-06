-- MySQL dump 10.13  Distrib 8.0.20, for macos10.15 (x86_64)
--
-- Host: localhost    Database: wepay
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `good`
--

DROP TABLE IF EXISTS `good`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `good` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` double(10,2) NOT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `info` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `amount` int DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `soldAmount` int DEFAULT '0',
  `sellerId` int DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `sellerId` (`sellerId`),
  CONSTRAINT `sellerId` FOREIGN KEY (`sellerId`) REFERENCES `seller` (`sellerId`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `good`
--

LOCK TABLES `good` WRITE;
/*!40000 ALTER TABLE `good` DISABLE KEYS */;
INSERT INTO `good` VALUES (9,'1',0.00,'http://localhost:9111/v2-1f2f6cca66fede470ee1594e8ff72ac0_1440w.jpg','2',231,NULL,0,NULL),(39,'dasdsadsad',213.00,'http://localhost:9111/v2-1a68a489a3ca33910f9427b1d201349f_1440w.jpg','asdsadsadsa',312,NULL,0,NULL),(41,'g032',0.00,'http://localhost:9111/v2-4b821c8f099c7f03e5e51cb0c7a2ae55_b.jpg','zzzzzzzzzz',22,NULL,0,NULL),(42,'g04',0.00,'http://localhost:9111/v2-4acd4fd41cb9f71c3bc829964f1d5a40_1440w.jpg','zzzzz',0,NULL,0,NULL),(43,'g05',0.00,'http://localhost:9111/v2-1f2f6cca66fede470ee1594e8ff72ac0_1440w.jpg','zzzzz',0,NULL,0,NULL),(44,'g06',0.00,'http://localhost:9111/v2-4b821c8f099c7f03e5e51cb0c7a2ae55_b.jpg','zzzzzz',0,NULL,0,NULL),(46,'g08',0.00,'http://localhost:9111/v2-57dade700d3849b5e7a867792da727d4_b.jpg','zzzzzz',0,NULL,0,NULL),(47,'g09',0.00,'http://localhost:9111/v2-79e119716e82d906afc81aa943e40169_1440w.jpg','zzzzzz',0,NULL,0,NULL),(49,'g11',0.00,'http://localhost:9111/v2-85ec79d941f5ab81366d66898e46aa8d_b.jpg','zzzzzz',0,NULL,0,NULL),(51,'g12',0.00,'http://localhost:9111/v2-395e53c9f02576d67fe020432bff452c_1440w.jpg','This is a description',0,NULL,0,NULL);
/*!40000 ALTER TABLE `good` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (10);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seller`
--

DROP TABLE IF EXISTS `seller`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seller` (
  `sellerId` int NOT NULL,
  `sellerName` varchar(255) DEFAULT NULL,
  `sellerPassword` varchar(255) DEFAULT NULL,
  `balance` int DEFAULT NULL,
  `bankCard` varchar(255) DEFAULT NULL,
  `realName` varchar(255) DEFAULT NULL,
  `phoneNumber` varchar(0) DEFAULT NULL,
  `sellerImgUrl` varchar(255) DEFAULT NULL,
  `bankName` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sellerId`),
  KEY `sellerId` (`sellerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seller`
--

LOCK TABLES `seller` WRITE;
/*!40000 ALTER TABLE `seller` DISABLE KEYS */;
INSERT INTO `seller` VALUES (1,NULL,'123',1,NULL,NULL,NULL,NULL,NULL,'admin@qq.com');
/*!40000 ALTER TABLE `seller` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-06 20:50:22
