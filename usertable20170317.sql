-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: watershed
-- ------------------------------------------------------
-- Server version	5.7.11-log

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
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `useremail` varchar(90) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `datecreated` datetime DEFAULT NULL,
  `username` varchar(90) DEFAULT NULL,
  `admin` varchar(2) DEFAULT 'n',
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='			';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (3,'w2','UOch5JwBPwDGLPWfIWNUKp2N8CRk7+thXTEFGw/dwyY=','2017-02-18 00:00:00','w','n'),(15,'g','zQqphWFHtsW0/yt9/uXaIKo4JTCZ7xtKZKztIzya/ik=','2017-02-20 00:00:00','g','n'),(18,'d','GKw+c0PwFokMUQ6T+TUmEWnZ4/VlQ2Qpgw+vCTT0+OQ=','2017-03-12 00:00:00','d','y'),(20,'a','ypeBEsobvcr6wjGzmiPcTaeG7/gUfE5yuYB3ha/uSLs=','2017-03-17 00:00:00','a','y'),(21,'z','WU5RmuSZMSspQzt92Kl/8Gje/LqXVbbV0A6ExSTWewY=','2017-03-17 00:00:00','z','y'),(22,'q','jjXCzTv2ZBvbDiBQt2kyy7LmA0oN2swdm+qCprpX988=','2017-03-17 00:00:00','q','y');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'watershed'
--

--
-- Dumping routines for database 'watershed'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-17 18:21:00
