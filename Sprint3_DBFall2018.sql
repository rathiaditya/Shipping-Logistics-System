-- MySQL dump 10.13  Distrib 5.7.24, for Win64 (x86_64)
--
-- Host: dbprojectteam7.ci4s4nk57ha9.us-east-2.rds.amazonaws.com    Database: shipping_management_system
-- ------------------------------------------------------
-- Server version	5.7.23-log

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED='';

--
-- Table structure for table `Customer`
--

DROP TABLE IF EXISTS `Customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email_id` varchar(255) NOT NULL,
  `contact_no` int(10) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `email_id` (`email_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customer`
--

LOCK TABLES `Customer` WRITE;
/*!40000 ALTER TABLE `Customer` DISABLE KEYS */;
INSERT INTO `Customer` VALUES (1,'Shubham','Amilkanthwar','samilkan@uncc.edu',122211111,'qwerQWER'),(2,'Upasana','Pattnaik','upattnai@uncc.edu',875212454,'asdfgASDFG'),(3,'Aditya','Rathi','arathi1@uncc.edu',1234322278,'zxcvZXCV'),(4,'Vrushali','Mahuli','vmahuli@uncc.edu',1237237676,'lkjhLKJH'),(5,'Jane','Doe','jdoe@gmail.com',1472367812,'poiuy'),(6,'Bob','Hope','bobhope@yahoo.com',2147483647,'mnbv'),(7,'Michael','Scott','michael1234@dmf.com',1212121214,'isntthiscool'),(8,'Pam','Beesley','beesley@gmail.com',2147483647,'password'),(9,'Jim','Harper','jim_harper@gmail.com',2147483647,'123abc'),(10,'Dwight','Schrute','dschrute@dmf.com',2147483647,'#1cnlsy');
/*!40000 ALTER TABLE `Customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Order_details`
--

DROP TABLE IF EXISTS `Order_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Order_details` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `schedule_id` int(11) DEFAULT NULL,
  `order_capacity` int(11) DEFAULT NULL,
  `order_value` float DEFAULT NULL,
  `shipping_address_line_1` varchar(255) NOT NULL,
  `shipping_address_line_2` varchar(255) DEFAULT NULL,
  `shipping_city` varchar(255) DEFAULT NULL,
  `shipping_state` varchar(255) DEFAULT NULL,
  `shipping_country` varchar(255) DEFAULT NULL,
  `shipping_zip_code` int(10) NOT NULL,
  `consignee_address_line_1` varchar(255) NOT NULL,
  `consignee_address_line_2` varchar(255) DEFAULT NULL,
  `consignee_city` varchar(255) DEFAULT NULL,
  `consignee_state` varchar(255) DEFAULT NULL,
  `consignee_country` varchar(255) DEFAULT NULL,
  `consignee_zip_code` int(10) NOT NULL,
  `order_billing` varchar(255) DEFAULT NULL,
  `order_status` varchar(255) DEFAULT 'Placed',
  `last_modified_at` datetime DEFAULT NULL,
  `order_transaction` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `customer_id` (`customer_id`),
  KEY `schedule_id` (`schedule_id`),
  CONSTRAINT `Order_details_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `Customer` (`customer_id`),
  CONSTRAINT `Order_details_ibfk_2` FOREIGN KEY (`schedule_id`) REFERENCES `Schedule` (`schedule_id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Order_details`
--

LOCK TABLES `Order_details` WRITE;
/*!40000 ALTER TABLE `Order_details` DISABLE KEYS */;
INSERT INTO `Order_details` VALUES (1,1,63,500,200,'9515 University Terrace Drive Apt D','','Charlotte','NC','US',28262,'9509 University Terrace Drive Apt K','','Houston','TX','US',312213,'12500','Cancelled','2018-12-01 00:23:31','116350012500'),(2,1,65,5000,20000,'9515 University Terrace Drive Apt D','','Charlotte','NC','US',28262,'9509 University Terrace Drive Apt K','','Houston','TX','US',312213,'125000','Cancelled','2018-12-01 00:23:31','21655000125000'),(3,5,70,300,500,'806, Hillview Society','Riverdale','Seattle','Washington','USA',554123,'50 street','apt 20','Los Angeles','Cali','USA',456847,'7500','Cancelled','2018-12-01 00:23:31','35703007500'),(4,6,72,800,200,'50 high street','Higher avenue','Long Beach','New Jersey','USA',586012,'111, North drive','Tyron Street','London','BreExit','England',456847,'16000','Placed','2018-12-01 00:23:31','467280016000'),(10,1,66,200,200,'9509 UTD Dallas','','Houston','Texas','US',21354,'285 Lexington Drive','','New York','NYC','US',27612,'5000','Placed','2018-12-01 00:23:31','101662005000'),(14,2,63,500,1000,'9971B Green Boulevard','Spring Valley Lane','New York City','New York','USA',10006,'East Deck 2','University City Boulevard','Houston','Texas','USA',77006,'12500','Placed','2018-12-01 00:23:31','1426350012500'),(16,2,70,200,1000,'123 Matador House','10th Avenue ','New York','New York','USA',10001,'Garment Factory','12th Lane ','Houston','Texas','USA',70001,'5000','Placed','2018-12-01 00:23:31','162702005000'),(22,4,75,805,10000,'20, Graduate Lane','East Avenue','Los Angeles','California','USA',102546,'13B, Baker Street','Lexington avenue','Seattle','Washington','USA',100254,'17710','Cancelled','2018-12-02 00:18:02','2247580517710'),(26,4,69,720,3000,'20, Ashford Green ','North Tyron Street','Los Angeles','California','USA',102546,'101, Lake View Apartments','Parkgreen drive','Seattle','Washington','USA',520146,'18000','Placed','2018-12-01 00:23:31','2646972018000'),(27,1,63,600,1000,'12 Garden View ','','New York','NY','USA',100001,'9th Street','','Houston','TX','USA',98101,'12500','Cancelled','2018-12-01 00:23:31','2716360012500'),(28,1,70,500,1000,'9509 University Terrace Drive','Apt C','Seattle','Washington','US',312213,'246 Lexington Avenue','','Los Angeles','California','US',512211,'12500','Placed','2018-12-01 00:23:31','2817050012500'),(29,1,70,500,1000,'9509 University Terrace Drive','Apt C','Seattle','Washington','US',312213,'246 Lexington Avenue','','Los Angeles','California','US',512211,'12500','Cancelled','2018-12-01 00:23:31','2917050012500'),(30,1,70,100,1000,'9509 University Terrace Drive','Apt C','Seattle','Washington','US',312213,'246 Lexington Avenue','','Los Angeles','California','US',512211,'2500','Cancelled','2018-12-01 00:23:31','301701002500'),(31,2,75,100,1000,'9th Street ','','Los Angeles','CA','USA',61901,'5th Avenue ','Irish House','Seattle','Wa','USA',90001,'2200','Placed','2018-12-01 00:23:31','312751002200'),(32,2,70,50,5000,'Hoegarden Avenue 2 ','','Seattle','WA','USA',99991,'drtyvubhinjkm','xtcfyvgbhjnkl5678','Los Angeles','California ','USA',8101,'1250','Cancelled','2018-12-02 21:05:59','32270501250'),(44,1,63,100,1000,'9509 University Terrace Drive','Apt C','Seattle','Washington','US',312213,'246 Lexington Avenue','','Los Angeles','California','US',512211,'2500','Cancelled','2018-12-02 21:03:31','441631002500'),(45,1,63,10,1000,'9509 University Terrace Drive','Apt C','Seattle','Washington','US',312213,'246 Lexington Avenue','','Los Angeles','California','US',512211,'250','Cancelled','2018-12-02 21:03:02','4516310250'),(50,1,63,10,1000,'9509 University Terrace Drive','Apt C','Seattle','Washington','US',312213,'246 Lexington Avenue','','Los Angeles','California','US',512211,'250','Placed','2018-12-01 00:23:31','5016310250'),(56,1,63,10,1000,'9509 University Terrace Drive','Apt C','Seattle','Washington','US',312213,'246 Lexington Avenue','','Los Angeles','California','US',512211,'250','Placed','2018-12-01 00:36:34','016310250'),(57,1,63,10,1000,'9509 University Terrace Drive','Apt C','Seattle','Washington','US',312213,'246 Lexington Avenue','','Los Angeles','California','US',512211,'250','Placed','2018-12-01 00:41:25','016310250'),(60,1,63,10,1000,'9509 University Terrace Drive','Apt C','Seattle','Washington','US',312213,'246 Lexington Avenue','','Los Angeles','California','US',512211,'250','Placed','2018-12-01 00:45:06',NULL),(61,1,63,10,1000,'9509 University Terrace Drive','Apt C','Seattle','Washington','US',312213,'246 Lexington Avenue','','Los Angeles','California','US',512211,'250','Cancelled','2018-12-02 20:58:06',NULL),(62,1,63,10,1000,'9509 University Terrace Drive','Apt C','Seattle','Washington','US',312213,'246 Lexington Avenue','','Los Angeles','California','US',512211,'250','Placed','2018-12-01 00:47:46','016310250'),(63,1,63,10,1000,'9509 University Terrace Drive','Apt C','Seattle','Washington','US',312213,'246 Lexington Avenue','','Los Angeles','California','US',512211,'250','Placed','2018-12-01 00:56:27','6316310250'),(64,2,69,10,10,'9509 University Terrace Drive','Apt C','Seattle','Washington','US',312213,'246 Lexington Avenue','','Los Angeles','California','US',512211,'250','Placed','2018-12-01 00:58:02','6426910250'),(68,6,69,100,1000,'Rose Garden Heights','','Los Angeles','California','USA',980012,'Jasmine Drive ','Apt 4','Seattle','Washington','USA',35182,'2500','Placed','2018-12-02 21:14:06','686691002500'),(69,1,69,170,1000,'Grover Street','','Los Angeles','California','USA',987654,'Lexington Avenue','','Seattle','Washington','USA',87102,'4250','Placed','2018-12-02 21:33:26','691691704250');
/*!40000 ALTER TABLE `Order_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`DBProject2018`@`%`*/ /*!50003 TRIGGER before_order_insert
before INSERT ON Order_details
FOR EACH ROW
BEGIN
set new.last_modified_at=now();
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`DBProject2018`@`%`*/ /*!50003 TRIGGER before_order_insert_transaction
before INSERT ON Order_details
FOR EACH ROW
BEGIN
set new.order_transaction=concat((SELECT AUTO_INCREMENT
      FROM information_schema.TABLES
      WHERE TABLE_SCHEMA=DATABASE()
            AND TABLE_NAME='Order_details'),new.customer_id,new.schedule_id,new.order_capacity,new.order_billing);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`DBProject2018`@`%`*/ /*!50003 TRIGGER before_order_update
BEFORE UPDATE ON Order_details
FOR EACH ROW
BEGIN
set new.last_modified_at=now();
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary table structure for view `Order_tracker`
--

DROP TABLE IF EXISTS `Order_tracker`;
/*!50001 DROP VIEW IF EXISTS `Order_tracker`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `Order_tracker` AS SELECT 
 1 AS `order_id`,
 1 AS `customer_id`,
 1 AS `order_capacity`,
 1 AS `order_value`,
 1 AS `consignee_address_line_1`,
 1 AS `consignee_address_line_2`,
 1 AS `consignee_city`,
 1 AS `consignee_state`,
 1 AS `consignee_country`,
 1 AS `consignee_zip_code`,
 1 AS `order_status`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Port`
--

DROP TABLE IF EXISTS `Port`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Port` (
  `port_id` int(11) NOT NULL AUTO_INCREMENT,
  `port_name` varchar(255) NOT NULL,
  PRIMARY KEY (`port_id`),
  KEY `port_name` (`port_name`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Port`
--

LOCK TABLES `Port` WRITE;
/*!40000 ALTER TABLE `Port` DISABLE KEYS */;
INSERT INTO `Port` VALUES (5,'Beaumont'),(8,'Charleston'),(12,'Georgia Ports'),(9,'Honalulu'),(6,'Houston'),(7,'London'),(3,'Long beach'),(2,'Los Angeles'),(15,'Manzanillo'),(10,'Mobile'),(11,'New Jersey'),(1,'New York'),(4,'Seattle'),(13,'Vancouver'),(14,'Virginia');
/*!40000 ALTER TABLE `Port` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Schedule`
--

DROP TABLE IF EXISTS `Schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Schedule` (
  `schedule_id` int(11) NOT NULL AUTO_INCREMENT,
  `vessel_id` int(11) DEFAULT NULL,
  `departing_time` time NOT NULL,
  `departing_date` date NOT NULL,
  `arriving_time` time NOT NULL,
  `arriving_date` date NOT NULL,
  `current_port_id` int(11) DEFAULT NULL,
  `destination_port_id` int(11) DEFAULT NULL,
  `rate` int(11) DEFAULT NULL,
  PRIMARY KEY (`schedule_id`),
  KEY `vessel_id` (`vessel_id`),
  KEY `current_port_id` (`current_port_id`),
  KEY `destination_port_id` (`destination_port_id`),
  CONSTRAINT `Schedule_ibfk_1` FOREIGN KEY (`vessel_id`) REFERENCES `Vessel` (`vessel_id`),
  CONSTRAINT `Schedule_ibfk_2` FOREIGN KEY (`current_port_id`) REFERENCES `Port` (`port_id`),
  CONSTRAINT `Schedule_ibfk_3` FOREIGN KEY (`destination_port_id`) REFERENCES `Port` (`port_id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Schedule`
--

LOCK TABLES `Schedule` WRITE;
/*!40000 ALTER TABLE `Schedule` DISABLE KEYS */;
INSERT INTO `Schedule` VALUES (63,1,'23:00:00','2018-12-01','11:00:00','2018-12-02',1,6,25),(64,1,'23:00:00','2018-12-02','11:00:00','2018-12-03',6,1,25),(65,1,'23:00:00','2018-12-03','11:00:00','2018-12-04',1,6,25),(66,1,'23:00:00','2018-12-04','11:00:00','2018-12-05',6,1,25),(67,2,'22:00:00','2018-12-01','10:00:00','2018-12-02',2,4,25),(68,2,'22:00:00','2018-12-02','10:00:00','2018-12-03',4,2,25),(69,2,'22:00:00','2018-12-03','10:00:00','2018-12-04',2,4,25),(70,2,'22:00:00','2018-12-04','10:00:00','2018-12-05',4,2,25),(71,9,'13:00:00','2018-06-05','23:00:00','2018-06-06',4,5,50),(72,14,'14:00:00','2018-11-02','21:00:00','2018-11-04',3,7,20),(73,15,'15:00:00','2018-08-23','22:00:00','2018-09-15',5,2,35),(74,18,'16:00:00','2018-05-17','08:00:00','2018-05-30',3,6,10),(75,1,'13:00:00','2018-03-05','23:00:00','2018-04-06',2,4,22),(76,16,'14:00:00','2018-02-20','21:00:00','2018-03-04',2,4,11),(77,5,'15:00:00','2018-11-23','22:00:00','2018-10-15',2,4,55),(78,1,'23:00:00','2018-12-05','11:00:00','2018-12-06',1,6,25),(79,1,'23:00:00','2018-12-06','11:00:00','2018-12-07',6,1,25),(80,1,'23:00:00','2018-12-07','11:00:00','2018-12-08',1,6,25),(81,1,'23:00:00','2018-12-08','11:00:00','2018-12-09',6,1,25);
/*!40000 ALTER TABLE `Schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Vessel`
--

DROP TABLE IF EXISTS `Vessel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Vessel` (
  `vessel_id` int(11) NOT NULL AUTO_INCREMENT,
  `vessel_name` varchar(255) NOT NULL,
  `vessel_capacity` varchar(255) NOT NULL,
  PRIMARY KEY (`vessel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Vessel`
--

LOCK TABLES `Vessel` WRITE;
/*!40000 ALTER TABLE `Vessel` DISABLE KEYS */;
INSERT INTO `Vessel` VALUES (1,'Elizabeth','5000'),(2,'Queenmary','2000'),(3,'Eclipse','20000'),(4,'Titanic','150000'),(5,'Olympic','120000'),(6,'Arizona','150000'),(7,'Agni','120000'),(8,'American Dream','7500'),(9,'PSLV','7500'),(12,'Sagarika','5000'),(13,'INS','2000'),(14,'Arihant','20000'),(15,'Emma Maresk','15000'),(16,'Viraj','15000'),(17,'Majesty','10000'),(18,'Delta','10000'),(19,'Royalty','11000');
/*!40000 ALTER TABLE `Vessel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `schedule_with_capacity`
--

DROP TABLE IF EXISTS `schedule_with_capacity`;
/*!50001 DROP VIEW IF EXISTS `schedule_with_capacity`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `schedule_with_capacity` AS SELECT 
 1 AS `schedule_id`,
 1 AS `vessel_name`,
 1 AS `departing_date`,
 1 AS `departing_time`,
 1 AS `arriving_date`,
 1 AS `arriving_time`,
 1 AS `available_capacity`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'shipping_management_system'
--

--
-- Dumping routines for database 'shipping_management_system'
--
/*!50003 DROP PROCEDURE IF EXISTS `cancel_order` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`DBProject2018`@`%` PROCEDURE `cancel_order`(in cust_id int,in order_id1 int)
BEGIN
 update Order_details set order_status='Cancelled' where order_id=order_id1 and customer_id=cust_id;
 #update Order_tracker set order_status='Cancelled' where order_id=order_id1 and customer_id=cust_id;
 
 select 'ORDER CANCELLED' as order_stat;
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `create_order` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`DBProject2018`@`%` PROCEDURE `create_order`(in cust_id int,in sch_id int, in capacity int,in val int, in shipaddress1 varchar(255),
in shipaddress2 varchar(255),in shipcity varchar(255),in shipstate varchar(255),in shipcountry varchar(255),in zip1 int,
in conaddress1 varchar(255),in conaddress2 varchar(255),in concity varchar(255), in constate varchar(255),in concount varchar(255),
in zip2 int)
BEGIN
declare bill int;
case 
when ( select available_capacity from schedule_with_capacity where schedule_id=sch_id
)>capacity

then
set bill=(select (rate*capacity) from Schedule  where schedule_id=sch_id);


INSERT INTO `shipping_management_system`.`Order_details`
(`customer_id`,
`schedule_id`,
`order_capacity`,
`order_value`,
`shipping_address_line_1`,
`shipping_address_line_2`,
`shipping_city`,
`shipping_state`,
`shipping_country`,
`shipping_zip_code`,
`consignee_address_line_1`,
`consignee_address_line_2`,
`consignee_city`,
`consignee_state`,
`consignee_country`,
`consignee_zip_code`,`order_billing`
)
VALUES(cust_id,sch_id,capacity,val,shipaddress1,shipaddress2,shipcity,shipstate,shipcountry,zip1,conaddress1,
conaddress2,concity,constate,concount,zip2,bill);
 
 SELECT 'Order Placed Successfully' as 'Order_Status';
 else
 
 SELECT 'Order Cannot be placed!!Capacity Exceed more than Available capacity!!' as 'Order_Status';
  end case;
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `order_tracker` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`DBProject2018`@`%` PROCEDURE `order_tracker`(IN custid int)
BEGIN
select * from Order_tracker where customer_id=custid  order by order_id desc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `quotation` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`DBProject2018`@`%` PROCEDURE `quotation`(IN capacity int, IN schedid int)
BEGIN
select schedule_id, capacity, concat(`rate`*capacity ,' $') as Quotation 
from `Schedule` where schedule_id = schedid;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `showschedule` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`DBProject2018`@`%` PROCEDURE `showschedule`(
 IN currentport VARCHAR(25),
 in destination varchar(25),
 in a_date date,
 in d_date date)
BEGIN
 select * from 
(select s.schedule_id,v.vessel_name, s.departing_date,s.departing_time, s.arriving_date,s.arriving_time, 
v.vessel_capacity - ifnull(sum(od.order_capacity),0) as available_capacity
from `Schedule` s inner join Vessel v on s.vessel_id = v.vessel_id 
left join Order_details od on s.schedule_id = od.schedule_id 
where departing_date >=a_date 
and arriving_date <=d_date
and current_port_id = (select port_id from `Port` where port_name = currentport )
and destination_port_id = (select port_id from `Port` where port_name = destination )
and od.order_status != 'Cancelled'
group by s.schedule_id) A
where 
A.available_capacity <>0;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `Order_tracker`
--

/*!50001 DROP VIEW IF EXISTS `Order_tracker`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`DBProject2018`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `Order_tracker` AS select `od`.`order_id` AS `order_id`,`od`.`customer_id` AS `customer_id`,`od`.`order_capacity` AS `order_capacity`,`od`.`order_value` AS `order_value`,`od`.`consignee_address_line_1` AS `consignee_address_line_1`,`od`.`consignee_address_line_2` AS `consignee_address_line_2`,`od`.`consignee_city` AS `consignee_city`,`od`.`consignee_state` AS `consignee_state`,`od`.`consignee_country` AS `consignee_country`,`od`.`consignee_zip_code` AS `consignee_zip_code`,(case when ((curdate() > `s`.`departing_date`) and (curdate() >= `s`.`arriving_date`) and (`od`.`order_status` <> 'Cancelled')) then 'Order successfully reached' when ((curdate() > `s`.`departing_date`) and (curdate() < `s`.`arriving_date`) and (`od`.`order_status` <> 'Cancelled')) then 'Order in transit' when ((curdate() < `s`.`departing_date`) and (curdate() < `s`.`arriving_date`) and (`od`.`order_status` <> 'Cancelled')) then 'Placed' when (`od`.`order_status` = 'Cancelled') then 'Cancelled' end) AS `order_status` from (`Order_details` `od` join `Schedule` `s` on((`od`.`schedule_id` = `s`.`schedule_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schedule_with_capacity`
--

/*!50001 DROP VIEW IF EXISTS `schedule_with_capacity`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`DBProject2018`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `schedule_with_capacity` AS select `A`.`schedule_id` AS `schedule_id`,`A`.`vessel_name` AS `vessel_name`,`A`.`departing_date` AS `departing_date`,`A`.`departing_time` AS `departing_time`,`A`.`arriving_date` AS `arriving_date`,`A`.`arriving_time` AS `arriving_time`,`A`.`available_capacity` AS `available_capacity` from (select `s`.`schedule_id` AS `schedule_id`,`v`.`vessel_name` AS `vessel_name`,`s`.`departing_date` AS `departing_date`,`s`.`departing_time` AS `departing_time`,`s`.`arriving_date` AS `arriving_date`,`s`.`arriving_time` AS `arriving_time`,(`v`.`vessel_capacity` - ifnull(sum(`od`.`order_capacity`),0)) AS `available_capacity` from ((`shipping_management_system`.`Schedule` `s` join `shipping_management_system`.`Vessel` `v` on((`s`.`vessel_id` = `v`.`vessel_id`))) left join `shipping_management_system`.`Order_details` `od` on((`s`.`schedule_id` = `od`.`schedule_id`))) where (`od`.`order_status` <> 'Cancelled') group by `s`.`schedule_id`) `A` where (`A`.`available_capacity` > 0) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-02 16:37:45
