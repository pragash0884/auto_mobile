-- MySQL dump 10.13  Distrib 5.5.35, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: istore
-- ------------------------------------------------------
-- Server version	5.5.35-0ubuntu0.12.10.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bill_details`
--

DROP TABLE IF EXISTS `bill_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bill_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `spare_item_id` int(11) DEFAULT NULL,
  `bill_id` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill_details`
--

LOCK TABLES `bill_details` WRITE;
/*!40000 ALTER TABLE `bill_details` DISABLE KEYS */;
INSERT INTO `bill_details` VALUES (1,NULL,2,'sdfdffsdfs','2014-02-06 03:54:03','2014-02-06 03:54:03'),(2,3,4,NULL,'2014-02-06 14:48:37','2014-02-06 14:48:37'),(3,3,5,NULL,'2014-02-06 14:50:58','2014-02-06 14:50:58'),(4,3,6,NULL,'2014-02-06 14:52:12','2014-02-06 14:52:12'),(5,3,7,NULL,'2014-02-06 14:52:46','2014-02-06 14:52:46'),(6,3,8,NULL,'2014-02-06 15:04:38','2014-02-06 15:04:38'),(7,2,9,NULL,'2014-02-06 15:24:45','2014-02-06 15:24:45'),(8,3,33,NULL,'2014-02-06 16:34:06','2014-02-06 16:34:06'),(9,4,33,NULL,'2014-02-06 16:34:08','2014-02-06 16:34:08'),(10,3,36,NULL,'2014-02-06 16:34:56','2014-02-06 16:34:56'),(11,4,36,NULL,'2014-02-06 16:34:57','2014-02-06 16:34:57'),(12,2,39,NULL,'2014-02-07 03:10:03','2014-02-07 03:10:03'),(13,7,39,NULL,'2014-02-07 03:10:05','2014-02-07 03:10:05'),(14,2,41,NULL,'2014-02-07 03:45:53','2014-02-07 03:45:53'),(15,2,42,NULL,'2014-02-07 03:59:14','2014-02-07 03:59:14'),(16,2,43,NULL,'2014-02-07 04:00:34','2014-02-07 04:00:34'),(17,2,44,NULL,'2014-02-07 04:01:29','2014-02-07 04:01:29'),(18,2,45,NULL,'2014-02-07 04:01:56','2014-02-07 04:01:56'),(19,2,46,NULL,'2014-02-07 04:02:47','2014-02-07 04:02:47'),(20,2,49,NULL,'2014-02-07 04:22:19','2014-02-07 04:22:19'),(21,7,49,NULL,'2014-02-07 04:22:20','2014-02-07 04:22:20'),(22,3,58,NULL,'2014-02-15 10:21:37','2014-02-15 10:21:37'),(23,3,59,NULL,'2014-02-15 10:37:10','2014-02-15 10:37:10'),(24,2,60,NULL,'2014-02-15 10:40:39','2014-02-15 10:40:39'),(25,2,61,NULL,'2014-02-15 10:40:49','2014-02-15 10:40:49'),(26,3,62,NULL,'2014-02-16 06:23:33','2014-02-16 06:23:33'),(27,3,63,NULL,'2014-02-16 06:23:34','2014-02-16 06:23:34'),(28,3,64,NULL,'2014-02-16 06:23:34','2014-02-16 06:23:34'),(29,3,66,NULL,'2014-02-16 06:24:18','2014-02-16 06:24:18'),(30,3,68,NULL,'2014-02-16 06:26:58','2014-02-16 06:26:58'),(31,3,70,NULL,'2014-02-16 06:35:01','2014-02-16 06:35:01');
/*!40000 ALTER TABLE `bill_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bills`
--

DROP TABLE IF EXISTS `bills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bills` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bill_no` int(11) DEFAULT NULL,
  `discount` decimal(10,0) DEFAULT NULL,
  `tax` int(11) DEFAULT NULL,
  `total_amount` decimal(10,0) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bills`
--

LOCK TABLES `bills` WRITE;
/*!40000 ALTER TABLE `bills` DISABLE KEYS */;
INSERT INTO `bills` VALUES (1,19,2,3,23,'2014-02-05 15:30:52','2014-02-05 15:30:52',NULL,NULL),(2,11,234,232,2344,'2014-02-06 03:52:19','2014-02-06 03:52:19',1,NULL),(3,3,NULL,NULL,NULL,'2014-02-06 14:37:12','2014-02-06 14:37:12',NULL,1),(4,4,NULL,NULL,3242,'2014-02-06 14:48:37','2014-02-06 14:48:37',NULL,2),(5,5,NULL,NULL,NULL,'2014-02-06 14:50:58','2014-02-06 14:50:58',NULL,3),(6,6,NULL,NULL,NULL,'2014-02-06 14:52:12','2014-02-06 14:52:12',NULL,4),(7,7,NULL,NULL,NULL,'2014-02-06 14:52:46','2014-02-06 14:52:46',NULL,4),(8,8,NULL,NULL,NULL,'2014-02-06 15:04:38','2014-02-06 15:04:38',NULL,5),(9,9,NULL,NULL,NULL,'2014-02-06 15:24:45','2014-02-06 15:24:45',NULL,6),(10,NULL,NULL,NULL,NULL,'2014-02-06 15:58:45','2014-02-06 15:58:45',3,NULL),(11,NULL,NULL,NULL,NULL,'2014-02-06 16:00:08','2014-02-06 16:00:08',3,NULL),(12,NULL,NULL,NULL,NULL,'2014-02-06 16:03:03','2014-02-06 16:03:03',3,NULL),(13,NULL,NULL,NULL,NULL,'2014-02-06 16:05:22','2014-02-06 16:05:22',4,NULL),(14,NULL,NULL,NULL,NULL,'2014-02-06 16:05:40','2014-02-06 16:05:40',4,NULL),(15,NULL,NULL,NULL,NULL,'2014-02-06 16:18:17','2014-02-06 16:18:17',5,NULL),(16,NULL,NULL,NULL,NULL,'2014-02-06 16:18:24','2014-02-06 16:18:24',5,NULL),(17,NULL,NULL,NULL,NULL,'2014-02-06 16:20:20','2014-02-06 16:20:20',6,NULL),(18,NULL,NULL,NULL,NULL,'2014-02-06 16:24:04','2014-02-06 16:24:04',7,NULL),(19,NULL,NULL,NULL,NULL,'2014-02-06 16:24:14','2014-02-06 16:24:14',7,NULL),(20,NULL,NULL,NULL,NULL,'2014-02-06 16:27:18','2014-02-06 16:27:18',8,NULL),(21,NULL,NULL,NULL,NULL,'2014-02-06 16:27:59','2014-02-06 16:27:59',8,NULL),(22,NULL,NULL,NULL,NULL,'2014-02-06 16:28:02','2014-02-06 16:28:02',8,NULL),(23,23,NULL,NULL,738,'2014-02-06 16:28:06','2014-02-06 16:28:06',8,NULL),(24,NULL,NULL,NULL,NULL,'2014-02-06 16:30:08','2014-02-06 16:30:08',8,NULL),(25,25,NULL,NULL,123,'2014-02-06 16:30:19','2014-02-06 16:30:19',8,NULL),(26,NULL,NULL,NULL,NULL,'2014-02-06 16:31:44','2014-02-06 16:31:44',8,NULL),(27,NULL,NULL,NULL,NULL,'2014-02-06 16:31:49','2014-02-06 16:31:49',8,NULL),(28,28,NULL,NULL,246,'2014-02-06 16:31:51','2014-02-06 16:31:51',8,NULL),(29,29,NULL,NULL,246,'2014-02-06 16:32:16','2014-02-06 16:32:16',8,NULL),(30,30,NULL,NULL,246,'2014-02-06 16:32:38','2014-02-06 16:32:38',8,NULL),(31,31,NULL,NULL,246,'2014-02-06 16:32:59','2014-02-06 16:32:59',8,NULL),(32,32,NULL,NULL,246,'2014-02-06 16:33:41','2014-02-06 16:33:41',8,NULL),(33,33,NULL,NULL,246,'2014-02-06 16:34:02','2014-02-06 16:34:02',8,NULL),(34,NULL,NULL,NULL,NULL,'2014-02-06 16:34:47','2014-02-06 16:34:47',8,NULL),(35,NULL,NULL,NULL,NULL,'2014-02-06 16:34:50','2014-02-06 16:34:50',8,NULL),(36,36,NULL,NULL,246,'2014-02-06 16:34:52','2014-02-06 16:34:52',8,NULL),(37,NULL,NULL,NULL,NULL,'2014-02-07 03:09:26','2014-02-07 03:09:26',9,NULL),(38,NULL,NULL,NULL,NULL,'2014-02-07 03:09:35','2014-02-07 03:09:35',9,NULL),(39,39,NULL,NULL,323,'2014-02-07 03:09:38','2014-02-07 03:09:38',9,NULL),(40,NULL,NULL,NULL,NULL,'2014-02-07 03:12:47','2014-02-07 03:12:47',10,NULL),(41,41,NULL,NULL,NULL,'2014-02-07 03:45:53','2014-02-07 03:45:53',NULL,1),(42,42,NULL,NULL,123,'2014-02-07 03:59:14','2014-02-07 03:59:14',NULL,1),(43,43,NULL,NULL,11,'2014-02-07 04:00:34','2014-02-07 04:00:34',NULL,1),(44,44,NULL,NULL,12,'2014-02-07 04:01:29','2014-02-07 04:01:29',NULL,1),(45,45,NULL,NULL,12,'2014-02-07 04:01:56','2014-02-07 04:01:56',NULL,1),(46,46,NULL,NULL,1111,'2014-02-07 04:02:47','2014-02-07 04:02:47',NULL,7),(47,NULL,NULL,NULL,NULL,'2014-02-07 04:20:47','2014-02-07 04:20:47',11,NULL),(48,NULL,NULL,NULL,NULL,'2014-02-07 04:21:35','2014-02-07 04:21:35',11,NULL),(49,49,NULL,NULL,1246,'2014-02-07 04:22:10','2014-02-07 04:22:10',11,NULL),(50,NULL,NULL,NULL,NULL,'2014-02-15 08:12:51','2014-02-15 08:12:51',12,NULL),(51,NULL,NULL,NULL,NULL,'2014-02-15 08:19:25','2014-02-15 08:19:25',11,NULL),(52,NULL,NULL,NULL,NULL,'2014-02-15 08:31:50','2014-02-15 08:31:50',11,NULL),(53,NULL,NULL,NULL,NULL,'2014-02-15 08:32:05','2014-02-15 08:32:05',13,NULL),(54,NULL,NULL,NULL,NULL,'2014-02-15 08:36:34','2014-02-15 08:36:34',14,NULL),(55,NULL,NULL,NULL,NULL,'2014-02-15 08:40:52','2014-02-15 08:40:52',15,NULL),(56,NULL,NULL,NULL,NULL,'2014-02-15 08:46:07','2014-02-15 08:46:07',11,NULL),(57,NULL,NULL,NULL,NULL,'2014-02-15 08:46:12','2014-02-15 08:46:12',11,NULL),(58,58,NULL,NULL,NULL,'2014-02-15 10:21:37','2014-02-15 10:21:37',NULL,1),(59,59,NULL,NULL,55,'2014-02-15 10:37:10','2014-02-15 10:37:10',NULL,1),(60,60,NULL,NULL,1111,'2014-02-15 10:40:39','2014-02-15 10:40:39',NULL,8),(61,61,NULL,NULL,1111,'2014-02-15 10:40:49','2014-02-15 10:40:49',NULL,8),(62,62,NULL,NULL,44,'2014-02-16 06:23:33','2014-02-16 06:23:33',NULL,1),(63,63,NULL,NULL,44,'2014-02-16 06:23:34','2014-02-16 06:23:34',NULL,1),(64,64,NULL,NULL,44,'2014-02-16 06:23:34','2014-02-16 06:23:34',NULL,1),(65,NULL,NULL,NULL,NULL,'2014-02-16 06:24:12','2014-02-16 06:24:12',11,NULL),(66,66,NULL,NULL,123,'2014-02-16 06:24:18','2014-02-16 06:24:18',11,NULL),(67,NULL,NULL,NULL,NULL,'2014-02-16 06:26:44','2014-02-16 06:26:44',11,NULL),(68,68,NULL,NULL,246,'2014-02-16 06:26:51','2014-02-16 06:26:51',11,NULL),(69,NULL,NULL,NULL,NULL,'2014-02-16 06:34:58','2014-02-16 06:34:58',11,NULL),(70,70,NULL,NULL,123,'2014-02-16 06:35:00','2014-02-16 06:35:00',11,NULL);
/*!40000 ALTER TABLE `bills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brand_types`
--

DROP TABLE IF EXISTS `brand_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `brand_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(255) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand_types`
--

LOCK TABLES `brand_types` WRITE;
/*!40000 ALTER TABLE `brand_types` DISABLE KEYS */;
INSERT INTO `brand_types` VALUES (1,'Apache RTR',1,'2014-01-14 00:00:00','2014-01-14 00:00:00'),(2,'Start City',1,'2014-01-14 00:00:00','2014-01-14 00:00:00'),(3,'Unicorn',2,'2014-01-14 00:00:00','2014-01-14 00:00:00'),(4,'Shine',2,'2014-01-14 00:00:00','2014-01-14 00:00:00'),(5,'Splender',3,'2014-01-14 00:00:00','2014-01-14 00:00:00'),(6,'Passion',3,'2014-01-14 00:00:00','2014-01-14 00:00:00'),(7,'Pulsur',4,'2014-01-14 00:00:00','2014-01-14 00:00:00'),(8,'Platina',4,'2014-01-14 00:00:00','2014-01-14 00:00:00'),(9,'Auto',5,'2014-01-14 00:00:00','2014-01-14 00:00:00'),(10,'Auto',6,'2014-01-14 00:00:00','2014-01-14 00:00:00'),(14,'Accent CRDI',7,'2014-01-14 00:00:00','2014-01-14 00:00:00'),(15,'i10',7,'2014-01-14 00:00:00','2014-01-14 00:00:00'),(16,'SuperB',8,'2014-01-14 00:00:00','2014-01-14 00:00:00'),(17,'Activa',8,'2014-01-14 00:00:00','2014-01-14 00:00:00'),(18,'Baj120',1,'2014-02-07 02:45:44','2014-02-07 02:45:44'),(19,'Baj121',1,'2014-02-07 02:47:33','2014-02-07 02:47:33'),(20,'qqq',2,'2014-02-07 02:55:26','2014-02-07 02:55:26'),(21,'12',2,'2014-02-07 03:00:22','2014-02-07 03:00:22');
/*!40000 ALTER TABLE `brand_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `brands` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `product_type_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brands`
--

LOCK TABLES `brands` WRITE;
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
INSERT INTO `brands` VALUES (1,'TVS',1,'2014-01-14 00:00:00','2014-01-14 00:00:00'),(2,'Honda Bike',1,'2014-01-14 00:00:00','2014-01-14 00:00:00'),(3,'Hero',1,'2014-01-14 00:00:00','2014-01-14 00:00:00'),(4,'Bajaj',1,'2014-01-14 00:00:00','2014-01-14 00:00:00'),(5,'TVS Auto',2,'2014-01-14 00:00:00','2014-01-14 00:00:00'),(6,'Bajaj Auto',2,'2014-01-14 00:00:00','2014-01-14 00:00:00'),(7,'Honda Car',3,'2014-01-14 00:00:00','2014-01-14 00:00:00'),(8,'Skoda',3,'2014-01-14 00:00:00','2014-01-14 00:00:00'),(9,'jjj',8,'2014-02-07 04:25:14','2014-02-07 04:25:14');
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'kingston','email@gmail.com','23444','2014-02-06 03:51:32','2014-02-06 03:51:32'),(2,'test','emaila@gmail.com','24323','2014-02-06 04:12:19','2014-02-06 04:12:19'),(3,'dfasdfas','dasf@gmail.com','324234','2014-02-06 15:58:40','2014-02-06 15:58:40'),(4,'sfvsv','svsvsv','56464','2014-02-06 16:05:20','2014-02-06 16:05:20'),(5,'dsfvdsg','sdfvsv@gmail.com','43535','2014-02-06 16:18:17','2014-02-06 16:18:17'),(6,'sfdsfsdfsss','sdff@mailvsvs.com','3242344r5353','2014-02-06 16:20:20','2014-02-06 16:20:20'),(7,'wefwfwef','wefwef@sdfvs','3453534','2014-02-06 16:24:04','2014-02-06 16:24:04'),(8,'sdfwsfs','waefwef','354535','2014-02-06 16:27:18','2014-02-06 16:27:18'),(9,'wdsfsfv','sdvsdvsdv','sdvsvsdv','2014-02-07 03:09:26','2014-02-07 03:09:26'),(10,'fvdsfv','sdvsv','534534','2014-02-07 03:12:47','2014-02-07 03:12:47'),(11,'kingston','gfdydy@gmail.com','67t567','2014-02-07 04:20:47','2014-02-07 04:20:47'),(12,'jenorish','ki@gmail.com','23424324243','2014-02-15 08:12:51','2014-02-15 08:12:51'),(13,'sdvcsvsvs','453535','sdvsvsvd','2014-02-15 08:32:04','2014-02-15 08:32:04'),(14,'sdvcsvsvs','werwrew','345345','2014-02-15 08:36:34','2014-02-15 08:36:34'),(15,'dasfdfasf','dasfafadf','asdfadsas','2014-02-15 08:40:52','2014-02-15 08:40:52');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `daily_inventory_levels`
--

DROP TABLE IF EXISTS `daily_inventory_levels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `daily_inventory_levels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daily_inventory_levels`
--

LOCK TABLES `daily_inventory_levels` WRITE;
/*!40000 ALTER TABLE `daily_inventory_levels` DISABLE KEYS */;
/*!40000 ALTER TABLE `daily_inventory_levels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_types`
--

DROP TABLE IF EXISTS `product_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `p_type` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_types`
--

LOCK TABLES `product_types` WRITE;
/*!40000 ALTER TABLE `product_types` DISABLE KEYS */;
INSERT INTO `product_types` VALUES (1,'Two wheeler','2014-01-14 00:00:00','2014-01-14 00:00:00'),(2,'Three Wheeler','2014-01-14 00:00:00','2014-01-14 00:00:00'),(3,'Four wheelers','2014-01-14 00:00:00','2014-01-14 00:00:00'),(4,'Five Wheelers','2014-01-15 19:53:01','2014-01-15 19:53:01'),(5,'Six Wheelers','2014-01-15 19:54:01','2014-01-15 19:54:01'),(6,'Seven Wheelers','2014-01-15 19:54:12','2014-01-15 19:54:12'),(7,'test','2014-02-04 15:09:09','2014-02-04 15:09:09'),(8,'eeeee','2014-02-07 04:24:59','2014-02-07 04:24:59');
/*!40000 ALTER TABLE `product_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Two wheeler','2014-01-14 00:00:00','2014-01-14 00:00:00'),(2,'Three Wheeler','2014-01-14 00:00:00','2014-01-14 00:00:00'),(3,'Four Wheelers','2014-01-14 00:00:00','2014-01-14 00:00:00');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20131217191658'),('20131217191727'),('20131217191735'),('20131217191801'),('20131217191848'),('20131217192029'),('20131217192037'),('20131217193003'),('20131217193013'),('20140114104929'),('20140114110453'),('20140114145317'),('20140206124632'),('20140206131441'),('20140207040734');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spare_items`
--

DROP TABLE IF EXISTS `spare_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spare_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `brand_type_id` int(11) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `discount` decimal(10,0) DEFAULT NULL,
  `serial_number` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `mfg_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spare_items`
--

LOCK TABLES `spare_items` WRITE;
/*!40000 ALTER TABLE `spare_items` DISABLE KEYS */;
INSERT INTO `spare_items` VALUES (1,'test',NULL,NULL,123,NULL,NULL,'2014-02-03 15:11:54','2014-02-06 16:00:01',NULL,NULL),(2,'screw','sfwsf',2,123,222,'222','2014-02-06 04:02:29','2014-02-15 10:40:49',2232,NULL),(3,'sdfvsvsv','sdvdv',1,123,NULL,NULL,'2014-02-06 14:15:17','2014-02-16 06:35:01',5583,NULL),(4,'sdfvsdvsdvsvsv','sdvdv',1,123,NULL,NULL,'2014-02-06 14:15:20','2014-02-06 16:00:01',NULL,NULL),(5,NULL,NULL,3,123,NULL,NULL,'2014-02-07 02:40:05','2014-02-07 02:40:05',12,NULL),(6,NULL,NULL,1,313,NULL,NULL,'2014-02-07 02:44:32','2014-02-07 02:44:32',21,NULL),(7,'Helmet',NULL,2,200,NULL,NULL,'2014-02-07 02:56:52','2014-02-07 04:22:20',7,NULL),(8,'yutu',NULL,2,667,NULL,NULL,'2014-02-07 04:25:40','2014-02-07 04:25:40',555,NULL),(9,'5646',NULL,1,363,NULL,NULL,'2014-02-15 11:05:11','2014-02-15 11:05:11',34636,NULL),(10,'ytest',NULL,1,34,NULL,NULL,'2014-02-15 11:13:51','2014-02-15 11:13:51',NULL,NULL),(11,'qeqe',NULL,1,3123,NULL,NULL,'2014-02-15 11:22:11','2014-02-15 11:22:11',NULL,NULL),(12,'qeqe',NULL,1,3123,NULL,NULL,'2014-02-15 11:24:56','2014-02-15 11:24:56',NULL,NULL),(13,'656',NULL,1,56,NULL,NULL,'2014-02-16 06:25:04','2014-02-16 06:25:04',56,NULL),(14,'04/02/2014',NULL,1,0,NULL,NULL,'2014-02-16 08:05:53','2014-02-16 08:05:53',NULL,NULL);
/*!40000 ALTER TABLE `spare_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `suppliers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` text,
  `mobile` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers`
--

LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
INSERT INTO `suppliers` VALUES (1,'kingston','j@g.com',NULL,23424,'2014-02-06 14:36:23','2014-02-06 14:36:23',NULL),(2,'kingston','wdeqd@gmail.com',NULL,43535,'2014-02-06 14:46:36','2014-02-06 14:46:36',NULL),(3,'','ferfe@j.com',NULL,435325,'2014-02-06 14:50:58','2014-02-06 14:50:58',NULL),(4,'','ferfewerwr@j.com',NULL,435325342,'2014-02-06 14:52:12','2014-02-06 14:52:12',NULL),(5,'','dfgd@gmail.com',NULL,2342452,'2014-02-06 15:04:38','2014-02-06 15:04:38',NULL),(6,'','dsfdes@hh.com',NULL,132123,'2014-02-06 15:24:45','2014-02-06 15:24:45',NULL),(7,'111111','wdsfwf@gmail.com',NULL,32123,'2014-02-07 04:02:47','2014-02-07 04:02:47',NULL),(8,'jenorish','gfdydy@gmail.com',NULL,12313131,'2014-02-15 10:40:39','2014-02-15 10:40:39',NULL);
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'jenorishstar@gmail.com','$2a$10$FO/3hzdKBN1Jgj7IaxdoDOrS0wLjU7/Mx66sZTPsvVHLA6uMXKmrq',NULL,NULL,NULL,5,'2014-02-16 06:21:59','2014-02-15 09:20:15','127.0.0.1','127.0.0.1');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-02-16 13:46:51
