-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: dragon
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_items` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `dish_id` int NOT NULL,
  `quantity` int NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_items`
--

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
INSERT INTO `order_items` VALUES (85,39,1,1,12.99,'2025-03-23 13:55:00'),(86,40,1,1,12.99,'2025-03-23 13:55:08'),(87,41,1,1,12.99,'2025-03-23 14:02:44'),(88,42,1,1,12.99,'2025-03-23 14:02:53'),(89,42,2,1,5.99,'2025-03-23 14:02:53'),(90,43,5,1,7.99,'2025-03-23 14:03:14'),(91,44,1,1,12.99,'2025-03-23 14:03:33'),(92,44,2,1,5.99,'2025-03-23 14:03:33'),(93,44,8,1,3.99,'2025-03-23 14:03:33'),(94,44,7,1,2.99,'2025-03-23 14:03:33'),(95,44,5,1,7.99,'2025-03-23 14:03:33'),(96,44,6,1,5.99,'2025-03-23 14:03:33'),(97,45,1,1,12.99,'2025-03-23 14:10:00'),(98,46,1,1,12.99,'2025-03-23 14:10:11'),(99,47,1,1,12.99,'2025-03-23 14:14:41'),(100,48,1,1,12.99,'2025-03-23 14:15:00'),(101,49,8,1,3.99,'2025-03-23 14:15:03'),(102,50,1,1,12.99,'2025-03-23 14:17:44'),(103,51,1,1,12.99,'2025-03-23 14:21:09'),(104,52,1,1,12.99,'2025-03-23 14:24:59'),(105,52,2,1,5.99,'2025-03-23 14:24:59'),(106,52,8,1,3.99,'2025-03-23 14:24:59'),(107,52,7,1,2.99,'2025-03-23 14:24:59'),(108,52,5,1,7.99,'2025-03-23 14:24:59'),(109,53,1,1,12.99,'2025-03-23 14:28:18'),(110,54,1,1,12.99,'2025-03-23 14:31:38'),(111,55,2,1,5.99,'2025-03-23 14:31:50'),(112,56,2,1,5.99,'2025-03-23 14:32:08'),(113,57,1,1,12.99,'2025-03-23 14:34:35'),(114,57,2,1,5.99,'2025-03-23 14:34:35'),(115,57,8,1,3.99,'2025-03-23 14:34:35'),(116,57,7,1,2.99,'2025-03-23 14:34:35'),(117,58,1,1,12.99,'2025-03-23 14:36:10'),(118,58,2,1,5.99,'2025-03-23 14:36:10'),(119,58,8,1,3.99,'2025-03-23 14:36:10'),(120,59,8,1,3.99,'2025-03-23 14:36:31'),(121,60,1,1,12.99,'2025-03-23 14:38:28'),(122,60,2,1,5.99,'2025-03-23 14:38:28'),(123,60,8,1,3.99,'2025-03-23 14:38:28'),(124,61,8,1,3.99,'2025-03-23 14:38:56'),(125,62,1,1,12.99,'2025-03-23 14:41:57'),(126,62,2,1,5.99,'2025-03-23 14:41:57'),(127,63,1,1,12.99,'2025-03-23 14:51:14'),(128,64,1,2,12.99,'2025-03-23 14:54:51'),(129,64,2,2,5.99,'2025-03-23 14:54:51'),(130,64,8,1,3.99,'2025-03-23 14:54:51'),(131,64,6,1,5.99,'2025-03-23 14:54:51'),(132,64,5,1,7.99,'2025-03-23 14:54:51'),(133,64,7,1,2.99,'2025-03-23 14:54:51'),(134,64,4,1,29.99,'2025-03-23 14:54:51'),(135,64,3,1,24.99,'2025-03-23 14:54:51'),(136,65,1,1,12.99,'2025-03-23 15:21:28');
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-23 21:19:11
