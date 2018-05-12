-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: localhost    Database: it
-- ------------------------------------------------------
-- Server version	5.7.21-0ubuntu0.16.04.1

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
-- Table structure for table `2015CSE024`
--

DROP TABLE IF EXISTS `2015CSE024`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `2015CSE024` (
  `pref_num` int(3) NOT NULL AUTO_INCREMENT,
  `comp_id` varchar(10) NOT NULL,
  PRIMARY KEY (`pref_num`),
  UNIQUE KEY `2015CSE160_uk_1` (`comp_id`),
  CONSTRAINT `company_details_2015CSE024` FOREIGN KEY (`comp_id`) REFERENCES `company_details` (`comp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `2015CSE024`
--

LOCK TABLES `2015CSE024` WRITE;
/*!40000 ALTER TABLE `2015CSE024` DISABLE KEYS */;
INSERT INTO `2015CSE024` VALUES (2,'ASHK1'),(3,'EDLD'),(1,'TIME');
/*!40000 ALTER TABLE `2015CSE024` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `2015CSE104`
--

DROP TABLE IF EXISTS `2015CSE104`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `2015CSE104` (
  `pref_num` int(3) NOT NULL AUTO_INCREMENT,
  `comp_id` varchar(10) NOT NULL,
  PRIMARY KEY (`pref_num`),
  UNIQUE KEY `2015CSE160_uk_1` (`comp_id`),
  CONSTRAINT `company_details_2015CSE104` FOREIGN KEY (`comp_id`) REFERENCES `company_details` (`comp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `2015CSE104`
--

LOCK TABLES `2015CSE104` WRITE;
/*!40000 ALTER TABLE `2015CSE104` DISABLE KEYS */;
INSERT INTO `2015CSE104` VALUES (2,'ASHK1'),(3,'EDLD'),(1,'TIME');
/*!40000 ALTER TABLE `2015CSE104` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `2015CSE120`
--

DROP TABLE IF EXISTS `2015CSE120`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `2015CSE120` (
  `pref_num` int(3) NOT NULL AUTO_INCREMENT,
  `comp_id` varchar(10) NOT NULL,
  PRIMARY KEY (`pref_num`),
  UNIQUE KEY `2015CSE160_uk_1` (`comp_id`),
  CONSTRAINT `company_details_2015CSE120` FOREIGN KEY (`comp_id`) REFERENCES `company_details` (`comp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `2015CSE120`
--

LOCK TABLES `2015CSE120` WRITE;
/*!40000 ALTER TABLE `2015CSE120` DISABLE KEYS */;
INSERT INTO `2015CSE120` VALUES (1,'ASHK1'),(2,'EDLD'),(3,'TIME');
/*!40000 ALTER TABLE `2015CSE120` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `2015CSE160`
--

DROP TABLE IF EXISTS `2015CSE160`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `2015CSE160` (
  `pref_num` int(3) NOT NULL AUTO_INCREMENT,
  `comp_id` varchar(10) NOT NULL,
  PRIMARY KEY (`pref_num`),
  UNIQUE KEY `2015CSE160_uk_1` (`comp_id`),
  CONSTRAINT `company_details_2015CSE160` FOREIGN KEY (`comp_id`) REFERENCES `company_details` (`comp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `2015CSE160`
--

LOCK TABLES `2015CSE160` WRITE;
/*!40000 ALTER TABLE `2015CSE160` DISABLE KEYS */;
INSERT INTO `2015CSE160` VALUES (2,'ASHK1'),(3,'EDLD'),(1,'TIME');
/*!40000 ALTER TABLE `2015CSE160` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AI`
--

DROP TABLE IF EXISTS `AI`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AI` (
  `sno` int(10) NOT NULL AUTO_INCREMENT,
  `email` varchar(20) DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `date` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`sno`),
  KEY `email` (`email`),
  CONSTRAINT `AI_ibfk_1` FOREIGN KEY (`email`) REFERENCES `signin` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AI`
--

LOCK TABLES `AI` WRITE;
/*!40000 ALTER TABLE `AI` DISABLE KEYS */;
INSERT INTO `AI` VALUES (1,'sam@mail.com','Testing post','22/03/18'),(2,'sam@mail.com','Test 2 is next Thursday','22/03/18'),(3,'sam@mail.com','Self study topics!!','22/03/18'),(4,'sam@mail.com','6uth','22/03/18');
/*!40000 ALTER TABLE `AI` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CD`
--

DROP TABLE IF EXISTS `CD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CD` (
  `sno` int(10) NOT NULL AUTO_INCREMENT,
  `email` varchar(20) DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `date` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`sno`),
  KEY `email` (`email`),
  CONSTRAINT `CD_ibfk_1` FOREIGN KEY (`email`) REFERENCES `signin` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CD`
--

LOCK TABLES `CD` WRITE;
/*!40000 ALTER TABLE `CD` DISABLE KEYS */;
INSERT INTO `CD` VALUES (1,'sam@mail.com','lijdfglijdjoifg','12/05/18');
/*!40000 ALTER TABLE `CD` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CNS`
--

DROP TABLE IF EXISTS `CNS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CNS` (
  `sno` int(10) NOT NULL AUTO_INCREMENT,
  `email` varchar(20) DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `date` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`sno`),
  KEY `email` (`email`),
  CONSTRAINT `CNS_ibfk_1` FOREIGN KEY (`email`) REFERENCES `signin` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CNS`
--

LOCK TABLES `CNS` WRITE;
/*!40000 ALTER TABLE `CNS` DISABLE KEYS */;
INSERT INTO `CNS` VALUES (1,'sam@mail.com','Cryptography','12/05/18');
/*!40000 ALTER TABLE `CNS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IT`
--

DROP TABLE IF EXISTS `IT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IT` (
  `sno` int(10) NOT NULL AUTO_INCREMENT,
  `email` varchar(20) DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `date` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`sno`),
  KEY `email` (`email`),
  CONSTRAINT `IT_ibfk_1` FOREIGN KEY (`email`) REFERENCES `signin` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IT`
--

LOCK TABLES `IT` WRITE;
/*!40000 ALTER TABLE `IT` DISABLE KEYS */;
INSERT INTO `IT` VALUES (1,'sam@mail.com','Mid Term is today','22/03/18'),(2,'zain@main.com','Wow. This is nice.','22/03/18'),(3,'vin@mail.com','Bhavesh Sir is the Best !!','22/03/18'),(4,'vin@mail.com','Vinitha Maam is also the Best !!','22/03/18');
/*!40000 ALTER TABLE `IT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SE`
--

DROP TABLE IF EXISTS `SE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SE` (
  `sno` int(10) NOT NULL AUTO_INCREMENT,
  `email` varchar(20) DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `date` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`sno`),
  KEY `email` (`email`),
  CONSTRAINT `SE_ibfk_1` FOREIGN KEY (`email`) REFERENCES `signin` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SE`
--

LOCK TABLES `SE` WRITE;
/*!40000 ALTER TABLE `SE` DISABLE KEYS */;
/*!40000 ALTER TABLE `SE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `allotment`
--

DROP TABLE IF EXISTS `allotment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `allotment` (
  `allot_num` int(11) NOT NULL AUTO_INCREMENT,
  `stud_id` varchar(12) NOT NULL,
  `comp_id` varchar(10) NOT NULL,
  PRIMARY KEY (`allot_num`),
  KEY `company_details_allotment` (`comp_id`),
  KEY `student_details_allotment` (`stud_id`),
  CONSTRAINT `company_details_allotment` FOREIGN KEY (`comp_id`) REFERENCES `company_details` (`comp_id`),
  CONSTRAINT `student_details_allotment` FOREIGN KEY (`stud_id`) REFERENCES `student_details` (`stud_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `allotment`
--

LOCK TABLES `allotment` WRITE;
/*!40000 ALTER TABLE `allotment` DISABLE KEYS */;
INSERT INTO `allotment` VALUES (1,'2015CSE104','TIME'),(2,'2015CSE160','TIME'),(3,'2015CSE024','TIME'),(4,'2015CSE104','TIME'),(5,'2015CSE160','TIME');
/*!40000 ALTER TABLE `allotment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `c_require`
--

DROP TABLE IF EXISTS `c_require`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `c_require` (
  `comp_id` varchar(10) NOT NULL,
  `no_of_students` int(11) NOT NULL,
  `branch` varchar(50) DEFAULT NULL,
  `gender` varchar(7) DEFAULT NULL,
  `cgpa` float DEFAULT NULL,
  PRIMARY KEY (`comp_id`),
  CONSTRAINT `company_details_c_require` FOREIGN KEY (`comp_id`) REFERENCES `company_details` (`comp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `c_require`
--

LOCK TABLES `c_require` WRITE;
/*!40000 ALTER TABLE `c_require` DISABLE KEYS */;
INSERT INTO `c_require` VALUES ('ASHK1',3,'mechanical','male',7),('EDLD',8,NULL,NULL,NULL),('TIME',5,'computer science','female',9);
/*!40000 ALTER TABLE `c_require` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_details`
--

DROP TABLE IF EXISTS `company_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company_details` (
  `comp_id` varchar(10) NOT NULL,
  `comp_name` varchar(50) NOT NULL,
  `comp_info` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`comp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_details`
--

LOCK TABLES `company_details` WRITE;
/*!40000 ALTER TABLE `company_details` DISABLE KEYS */;
INSERT INTO `company_details` VALUES ('ASHK1','Ashok Leyland',NULL),('EDLD','Eduladder',NULL),('TIME','Times Business Solutions',NULL);
/*!40000 ALTER TABLE `company_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eligibility_list`
--

DROP TABLE IF EXISTS `eligibility_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eligibility_list` (
  `stud_id` varchar(12) NOT NULL,
  `cgpa` float NOT NULL,
  `allot_num` int(11) DEFAULT NULL,
  PRIMARY KEY (`stud_id`),
  KEY `allotment_eligibility_list` (`allot_num`),
  CONSTRAINT `allotment_eligibility_list` FOREIGN KEY (`allot_num`) REFERENCES `allotment` (`allot_num`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='consists of the eligible list of students';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eligibility_list`
--

LOCK TABLES `eligibility_list` WRITE;
/*!40000 ALTER TABLE `eligibility_list` DISABLE KEYS */;
INSERT INTO `eligibility_list` VALUES ('2015CSE024',9.08,NULL),('2015CSE104',9.09,NULL),('2015CSE120',8.12,NULL),('2015CSE160',9.09,NULL);
/*!40000 ALTER TABLE `eligibility_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forums`
--

DROP TABLE IF EXISTS `forums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forums` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forums`
--

LOCK TABLES `forums` WRITE;
/*!40000 ALTER TABLE `forums` DISABLE KEYS */;
INSERT INTO `forums` VALUES (2,'AI'),(3,'CD'),(4,'CNS'),(1,'IT'),(5,'SE');
/*!40000 ALTER TABLE `forums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `info`
--

DROP TABLE IF EXISTS `info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `info` (
  `email` varchar(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `position` varchar(50) DEFAULT NULL,
  `branch` varchar(10) DEFAULT NULL,
  `forums` varchar(300) DEFAULT NULL,
  KEY `email` (`email`),
  CONSTRAINT `info_ibfk_1` FOREIGN KEY (`email`) REFERENCES `signin` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `info`
--

LOCK TABLES `info` WRITE;
/*!40000 ALTER TABLE `info` DISABLE KEYS */;
INSERT INTO `info` VALUES ('sam@mail.com','samanyu','Under Grad','',NULL),('sam@mail.com','samanyu','Under Grad','',NULL),('zain@main.com','Rasheed','Under Grad','',NULL),('vin@mail.com','Vinay','Under Grad','',NULL),('sa@gmail.com','saurabh','Under Grad','',NULL);
/*!40000 ALTER TABLE `info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `signin`
--

DROP TABLE IF EXISTS `signin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `signin` (
  `email` varchar(20) NOT NULL,
  `password` varchar(32) DEFAULT NULL,
  `report` int(3) DEFAULT '0',
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `signin`
--

LOCK TABLES `signin` WRITE;
/*!40000 ALTER TABLE `signin` DISABLE KEYS */;
INSERT INTO `signin` VALUES ('sa@gmail.com','123',0),('sam@mail.com','1',0),('vin@mail.com','2',5),('zain@main.com','1234',0);
/*!40000 ALTER TABLE `signin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_details`
--

DROP TABLE IF EXISTS `student_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_details` (
  `stud_id` varchar(12) NOT NULL,
  `stud_address` varchar(100) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `mobile_num` bigint(11) NOT NULL,
  `blood_group` varchar(3) NOT NULL,
  `emergency_num` bigint(11) NOT NULL,
  `emergency_person` varchar(50) NOT NULL,
  `relation` varchar(20) NOT NULL,
  `skills` varchar(300) NOT NULL,
  `languages` varchar(300) NOT NULL,
  `extra_details` varchar(50) NOT NULL,
  `branch` varchar(75) NOT NULL,
  `gender` char(10) NOT NULL,
  PRIMARY KEY (`stud_id`),
  CONSTRAINT `student_details_eligibility_list` FOREIGN KEY (`stud_id`) REFERENCES `eligibility_list` (`stud_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_details`
--

LOCK TABLES `student_details` WRITE;
/*!40000 ALTER TABLE `student_details` DISABLE KEYS */;
INSERT INTO `student_details` VALUES ('2015CSE024','temporary address3','ashika@gmail.com',9087654392,'A+',9123456768,'person3','father','coding','C++, Java','none','computer science','female'),('2015CSE104','temporary address4','ragi@gmail.com',9087654333,'A+',9123456755,'person4','father','coding','C++, Java','none','computer science','female'),('2015CSE120','temporary address2','samanyu@gmail.com',9087654322,'A+',9123456788,'person2','father','coding','C++, Java','none','computer science','male'),('2015CSE160','temporary address','aparna@gmail.com',9087654321,'B+',9123456780,'person1','mother','coding','C++, Java','none','computer science','female');
/*!40000 ALTER TABLE `student_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uni_require`
--

DROP TABLE IF EXISTS `uni_require`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uni_require` (
  `comp_id` varchar(10) NOT NULL,
  `no_of_students` int(11) NOT NULL,
  `branch` varchar(50) DEFAULT NULL,
  `gender` varchar(7) DEFAULT NULL,
  `cgpa` float DEFAULT NULL,
  PRIMARY KEY (`comp_id`),
  CONSTRAINT `uni_require_company_details` FOREIGN KEY (`comp_id`) REFERENCES `company_details` (`comp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uni_require`
--

LOCK TABLES `uni_require` WRITE;
/*!40000 ALTER TABLE `uni_require` DISABLE KEYS */;
INSERT INTO `uni_require` VALUES ('ASHK1',3,'mechanical','male',7),('EDLD',8,NULL,NULL,NULL),('TIME',0,'computer science','female',9);
/*!40000 ALTER TABLE `uni_require` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-12 21:07:52
