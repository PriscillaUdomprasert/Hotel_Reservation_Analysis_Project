CREATE DATABASE  IF NOT EXISTS `hotel_cost` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `hotel_cost`;
-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: hotel_cost
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
-- Table structure for table `hotel_data`
--

DROP TABLE IF EXISTS `hotel_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotel_data` (
  `HotelID` int NOT NULL,
  `City` varchar(60) DEFAULT NULL,
  `Total Price (USD)` decimal(5,2) DEFAULT NULL,
  `Hotel Name` text,
  `Region` text,
  `Distance` varchar(120) DEFAULT NULL,
  `Rating` double DEFAULT NULL,
  `Rating (Text)` varchar(60) DEFAULT NULL,
  `Price` decimal(5,2) DEFAULT NULL,
  `Tax` varchar(10) DEFAULT NULL,
  `Location` varchar(120) DEFAULT NULL,
  `Breakfast` text,
  `Availability` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`HotelID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel_data`
--

LOCK TABLES `hotel_data` WRITE;
/*!40000 ALTER TABLE `hotel_data` DISABLE KEYS */;
INSERT INTO `hotel_data` VALUES (1,'Bratislava',67.00,'CHORS like a hotel - 1st World NFT Block & Art Capsule Hostel MetaCHORS','Stare Mesto, Bratislava','0.6 km from downtown',8.5,'Very Good',53.00,'14','Location 9.4','FALSE',''),(2,'Kotor',70.00,'MAISON W','Kotor','1.4 km from downtown',9.3,'Wonderful',57.00,'','','FALSE','Only 1 left at this price on our site'),(3,'Dubrovnik',73.00,'Luxury Sea View Apartments','Babin Kuk, Dubrovnik','3.6 km from downtown',9.4,'Wonderful',73.00,'','','FALSE',''),(4,'Kotor',75.00,'Iberostar Waves Slavija','Budva','16.5 km from Kotor',9.1,'Wonderful',75.00,'','','TRUE','Only 2 rooms left at this price on our site'),(5,'Kotor',76.00,'Casa del Sol Rozalija Luxury Rooms','Kotor','7.2 km from downtown',9.2,'Wonderful',74.00,'','','FALSE','Only 2 rooms left at this price on our site'),(6,'Kotor',76.00,'Moderna Luxury Apartments with HEATED pool','Tivat','6.9 km from Kotor',9.1,'Wonderful',74.00,'','','FALSE','Only 1 left at this price on our site'),(7,'Kotor',84.00,'C Group apartments','Kotor','1.7 km from downtown',9.5,'Exceptional',82.00,'','','TRUE','Only 1 left at this price on our site'),(8,'Prague',87.00,'Urban Creme','Prague 1, Prague','1.2 km from downtown',8.5,'Very Good',74.00,'13','','FALSE',''),(9,'Warsaw',87.00,'Regent Warsaw Hotel','SrÃ³dmiescie, Warsaw','2.8 km from downtown',8.3,'Very Good',87.00,'0','','FALSE',''),(10,'Vienna',88.00,'Apartment Dahlia Vienna','09. Alsergrund, Vienna','2.3 km from downtown',8.4,'Very Good',45.00,'','','FALSE','Only 1 left at this price on our site'),(11,'Prague',90.00,'Mamaison Hotel Riverside Prague','Prague 5, Prague','1.7 km from downtown',8.5,'Very Good',77.00,'13','','FALSE',''),(12,'Ljubljana',99.00,'Victoria Apartment','Ljubljana','4 km from downtown',8.5,'Very Good',77.00,'','','FALSE',''),(13,'Prague',101.00,'Occidental Praha Wilson','Prague 1, Prague','1.1 km from downtown',8.6,'Excellent',97.00,'4','Location 9.6','FALSE','Only 3 rooms left at this price on our site'),(14,'Prague',105.00,'Ambassador Zlata Husa','Prague 1, Prague','450 m from downtown',7.9,'Good',94.00,'11','Location 9.6','TRUE',''),(15,'Prague',106.00,'Grand Hotel Prague Towers - Czech Leading Hotels','Prague 4, Prague','2.8 km from downtown',8.8,'Excellent',106.00,'0','','FALSE',''),(16,'Dubrovnik',106.00,'Royal Ariston Hotel','Babin Kuk, Dubrovnik','4.6 km from downtown',8.9,'Excellent',80.00,'','','TRUE',''),(17,'Warsaw',108.00,'The Westin Warsaw','Wola, Warsaw','1 km from downtown',9,'Wonderful',100.00,'8','Location 9.4','FALSE',''),(18,'Riga',108.00,'Pullman Riga Old Town','City Center, Riga','300 m from downtown',8.6,'Excellent',106.00,'2','Location 9.5','FALSE',''),(19,'Kotor',109.00,'Montenegro Lodge','Tivat','2.8 km from Kotor',8.6,'Excellent',109.00,'','','TRUE',''),(20,'Bratislava',110.00,'Flora Cozy Apartment','Nove Mesto, Bratislava','3.2 km from downtown',8,'Very Good',73.00,'37','','FALSE','Only 1 left at this price on our site'),(21,'Prague',114.00,'Eurostars Thalia','Prague 1, Prague','0.7 km from downtown',8.8,'Excellent',110.00,'4','Location 9.6','FALSE',''),(22,'Kotor',115.00,'Hotel Gradska Cetinje','Cetinje','13.3 km from Kotor',9.2,'Wonderful',113.00,'','','TRUE','Only 2 rooms left at this price on our site'),(23,'Lisbon',117.00,'Eurostars Universal Lisboa','Parque das Nacoes, Lisbon','6.5 km from downtown',8.7,'Excellent',110.00,'','','FALSE',''),(24,'London',117.00,'Eurostars Universal Lisboa','Parque das Nacoes, Lisbon','6.5 km from downtown',8.7,'Excellent',110.00,'','','FALSE',''),(25,'Bratislava',118.00,'Vesna Convenient Apartment','Ruzinov, Bratislava','4.3 km from downtown',8,'Very Good',81.00,'37','','FALSE',''),(26,'Warsaw',118.00,'Sofitel Warsaw Victoria','SrÃ³dmiescie, Warsaw','1.2 km from downtown',8.9,'Excellent',118.00,'0','Location 9.6','FALSE',''),(27,'Kotor',120.00,'Sea Star Budva','Budva','18.1 km from Kotor',8.9,'Excellent',116.00,'','','TRUE',''),(28,'Bratislava',120.00,'Jarila Boutique Apartment','Stare Mesto, Bratislava','1.8 km from downtown',8.3,'Very Good',82.00,'38','','FALSE','Only 1 left at this price on our site'),(29,'Bratislava',122.00,'Marrol\'s Boutique Hotel','Stare Mesto, Bratislava','450 m from downtown',9.2,'Wonderful',99.00,'23','Location 9.5','FALSE',''),(30,'Prague',122.00,'Le Palais Art Hotel Prague','Prague 2, Prague','2.2 km from downtown',8.7,'Excellent',118.00,'4','','TRUE','Only 3 rooms left at this price on our site'),(31,'Warsaw',123.00,'Renaissance Warsaw Airport Hotel','Wlochy, Warsaw','6.8 km from downtown',9.1,'Wonderful',114.00,'9','Location 9.7','FALSE',''),(32,'Kotor',124.00,'Hotel Imperial Conference & Spa','Budva','16.8 km from Kotor',9.2,'Wonderful',122.00,'','','TRUE','Only 6 rooms left at this price on our site'),(33,'Bratislava',129.00,'Zora Exclusive Apartment','Stare Mesto, Bratislava','1.3 km from downtown',8.6,'Excellent',91.00,'38','Location 9.5','FALSE',''),(34,'Lisbon',130.00,'VIP Grand Lisboa Hotel & Spa','Avenidas Novas, Lisbon','3.3 km from downtown',7.8,'Good',122.00,'','','FALSE',''),(35,'Warsaw',130.00,'Sheraton Grand Warsaw','SrÃ³dmiescie, Warsaw','1.1 km from downtown',9,'Wonderful',120.00,'10','Location 9.4','FALSE','Only 5 rooms left at this price on our site'),(36,'London',130.00,'VIP Grand Lisboa Hotel & Spa','Avenidas Novas, Lisbon','3.3 km from downtown',7.8,'Good',122.00,'','','FALSE',''),(37,'Riga',130.00,'Grand Poet Hotel and SPA by Semarah','City Center, Riga','0.5 km from downtown',9.3,'Wonderful',124.00,'6','Location 9.7','TRUE',''),(38,'Prague',130.00,'Grandior Hotel Prague','Prague 1, Prague','1.1 km from downtown',8.7,'Excellent',116.00,'14','','FALSE',''),(39,'Kotor',131.00,'Boutique Hotel La Roche','Tivat','6 km from Kotor',9.4,'Wonderful',128.00,'','','TRUE','Only 2 rooms left at this price on our site'),(40,'Vienna',132.00,'Nadland Apartments B61','21. Floridsdorf, Vienna','7 km from downtown',8.8,'Excellent',132.00,'','','FALSE',''),(41,'Warsaw',133.00,'Mamaison Le Regina Boutique Hotel','SrÃ³dmiescie, Warsaw','2.7 km from downtown',9,'Wonderful',133.00,'0','Location 9.5','FALSE',''),(42,'Prague',133.00,'Hilton Prague Hotel','Prague 8, Prague','1.5 km from downtown',8.1,'Very Good',133.00,'0','','FALSE',''),(43,'Kotor',134.00,'Galathea House','Kotor','3.9 km from downtown',10,'Exceptional',134.00,'','','TRUE','Only 1 left at this price on our site'),(44,'Budapest',134.00,'Kozmo Residences Budapest','08. JÃ³zsefvÃ¡ros, Budapest','1.6 km from downtown',9.2,'Wonderful',134.00,'','','FALSE','Only 4 left at this price on our site'),(45,'Warsaw',136.00,'Nobu Hotel Warsaw','SrÃ³dmiescie, Warsaw','0.7 km from downtown',9,'Wonderful',136.00,'0','Location 9.3','FALSE',''),(46,'Budapest',136.00,'Pullman Budapest','06. TerÃ©zvÃ¡ros, Budapest','0.8 km from downtown',8.8,'Excellent',136.00,'','','FALSE',''),(47,'Dubrovnik',137.00,'Royal Princess Hotel','Babin Kuk, Dubrovnik','4.4 km from downtown',9.1,'Wonderful',104.00,'','','TRUE',''),(48,'Prague',137.00,'Hotel BOOKQUET','Prague 1, Prague','0.6 km from downtown',8.6,'Excellent',133.00,'4','Location 9.6','TRUE','Only 1 room left at this price on our site'),(49,'Vienna',138.00,'Nadland Apartment Wehlistrasse','20. Brigittenau, Vienna','3.6 km from downtown',8.7,'Excellent',138.00,'','','FALSE','Only 2 left at this price on our site'),(50,'Prague',139.00,'Esplanade Hotel Prague','Prague 1, Prague','1 km from downtown',8.3,'Very Good',120.00,'19','Location 9.4','FALSE',''),(51,'Riga',139.00,'Grand Palace Hotel - The Leading Hotels of the World','City Center, Riga','200 m from downtown',9,'Wonderful',124.00,'15','Location 9.7','FALSE',''),(52,'Prague',140.00,'Hilton Prague Old Town','Prague 1, Prague','0.8 km from downtown',8.3,'Very Good',140.00,'0','Location 9.4','FALSE',''),(53,'Warsaw',141.00,'Radisson Collection Hotel, Warsaw','SrÃ³dmiescie, Warsaw','1 km from downtown',9.1,'Wonderful',141.00,'0','Location 9.3','FALSE',''),(54,'Bratislava',142.00,'Slavic Spacious Apartment','Nove Mesto, Bratislava','3.2 km from downtown',8.5,'Very Good',84.00,'58','','FALSE',''),(55,'Vienna',144.00,'Viva La Vienna Apartments','10. Favoriten, Vienna','4.2 km from downtown',9,'Wonderful',83.00,'','','FALSE','Only 1 left at this price on our site'),(56,'Prague',144.00,'Airport Luxury Apartment & Spa Prague','Prague 6, Prague','7.6 km from downtown',9.8,'Exceptional',144.00,'0','','FALSE','Only 1 left at this price on our site'),(57,'Vilnius',144.00,'Radisson Collection Astorija Hotel, Vilnius','Vilnius Old Town, Vilnius','1.1 km from downtown',9.1,'Wonderful',140.00,'','Location 9.8','FALSE',''),(58,'Rome',145.00,'La Griffe Hotel Roma','Central Station, Rome','1.1 km from downtown',7.7,'Good',132.00,'13','','FALSE',''),(59,'Prague',146.00,'Jalta Boutique Hotel','Prague 1, Prague','0.9 km from downtown',8.3,'Very Good',142.00,'4','Location 9.5','FALSE',''),(60,'Bratislava',146.00,'Sheraton Bratislava Hotel','Bratislava','1.1 km from downtown',8.6,'Excellent',140.00,'6','Location 9.3','FALSE',''),(61,'Lisbon',148.00,'TURIM Boulevard Hotel','Santo Antonio, Lisbon','0.9 km from downtown',8.6,'Excellent',148.00,'','Location 9.6','FALSE',''),(62,'London',148.00,'TURIM Boulevard Hotel','Santo Antonio, Lisbon','0.9 km from downtown',8.6,'Excellent',148.00,'','Location 9.6','FALSE',''),(63,'Prague',148.00,'Luxury Family Hotel Royal Palace','Prague 1, Prague','1 km from downtown',7.6,'Good',148.00,'0','Location 9.3','FALSE',''),(64,'Kotor',150.00,'La Fleur Boutique Hotel','Tivat','6.1 km from Kotor',9.4,'Wonderful',147.00,'','','TRUE','');
/*!40000 ALTER TABLE `hotel_data` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-15 17:54:21
