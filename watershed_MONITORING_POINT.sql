-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: watershed
-- ------------------------------------------------------
-- Server version	5.7.16

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
-- Table structure for table `MONITORING_POINT`
--

DROP TABLE IF EXISTS `MONITORING_POINT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MONITORING_POINT` (
  `SITE_NAME` varchar(45) NOT NULL,
  `SITE_POINT` varchar(45) NOT NULL,
  `LOCATION_LATITUDE` varchar(45) DEFAULT NULL,
  `LOCATION_LONGITUDE` varchar(45) DEFAULT NULL,
  `DESCRIPTION` varchar(400) DEFAULT NULL,
  `SITE_USE` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`SITE_NAME`,`SITE_POINT`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MONITORING_POINT`
--

LOCK TABLES `MONITORING_POINT` WRITE;
/*!40000 ALTER TABLE `MONITORING_POINT` DISABLE KEYS */;
INSERT INTO `MONITORING_POINT` VALUES ('Cloverhurst Branch','MP-3','33.947479','-83.379982','south side of Baxter Street behind Oglethorpe House',NULL),('Lilly Branch','MP-10','33.939327','83.371496','just downstream of East Campus Drive where the stream daylights for a short distance of approximately 20-feet',''),('Lilly Branch','MP-8','33.940573','83.381238','just upstream of the University?s Foley Baseball Field; represents the watershed upstream of the University?s campus',''),('Lilly Branch','MP-9','33.940635','83.377450','between the Coverdell Center and the Dan Magill Tennis Complex?s indoor courts building',''),('Lilly Branch','MS4-2','33.94484','83.36960','Old Physical Plant (Steam Plant) Creek.Outlet from Steam Plant and surrounding areas east of River Road approximately 250 feet prior to confluence with North Oconee River','Public/Institutional'),('Lilly Branch','MS4-3','33.940306','83.365284','downstream end of Lilly Branch, approximately 500-feet prior to confluence with North Oconee River','Public/Institutional'),('Lilly Branch','MS4-4b','33.83182','83.38880','Lake Herrick Outflow. Just downstream of Lake Herrick dam','Parks/Recreation/Conservation'),('Lilly Branch','MS4-4c','33.92618','83.37556','Lake Herrick Inflow. Headwaters to Lake Herrick along walking path','Parks/Recreation/Conservation'),('Lilly Branch','MS4-8','33.92618','83.36990','Rhizotron Building. East of shed below Rhizotron Building off Riverbend Road. Drains from corrugated metal pipe into wooded area','Agriculture (Public/Institutional)'),('Tanyard Creek','MP-1','33.954510','-83.380411','North side of Baxter Street; represents Tanyard Creek prior to confluence with Cloverhurst Branch',NULL),('Tanyard Creek','MP-6','33.948690','-83.371657','downstream of stadium; prior to confluence with North Oconee River',NULL);
/*!40000 ALTER TABLE `MONITORING_POINT` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-01-26 22:46:15
