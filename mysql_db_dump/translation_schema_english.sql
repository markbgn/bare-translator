-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: translation_schema
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `english`
--

DROP TABLE IF EXISTS `english`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `english` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `expression` varchar(400) DEFAULT NULL,
  `lang_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `english_lang_id_idx` (`lang_id`),
  CONSTRAINT `english_lang_id` FOREIGN KEY (`lang_id`) REFERENCES `languages` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=277 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `english`
--

LOCK TABLES `english` WRITE;
/*!40000 ALTER TABLE `english` DISABLE KEYS */;
INSERT INTO `english` VALUES (1,'Account Holder Name',1),(2,'Accounting and Finance',1),(3,'Active',1),(4,'Add New Fee',1),(5,'Add new Comment',1),(6,'Add new entry',1),(7,'Add New Vendor',1),(8,'Additional Editor Assignments / Management',1),(9,'Administration',1),(10,'Advertisement payment handling',1),(11,'Agency',1),(12,'Alipay Account',1),(13,'Analysis',1),(14,'Announcements',1),(15,'Annual closing, tax return and audit',1),(16,'Annual Review Feedback',1),(17,'Apollo Manager Id - Data Quality',1),(18,'Apollo Manager Id - Resource',1),(19,'Applying payments in Caspian',1),(20,'AR follow up',1),(21,'Automated report',1),(22,'Bamboo',1),(23,'Bank Account Number',1),(24,'Bank Address',1),(25,'Bank Name',1),(26,'BI - Assist other department',1),(27,'BI - Assistance other offices',1),(28,'BI - Design, Illustrations, Graphic layout, CSS',1),(29,'BI - Development solutions files',1),(30,'BI - Specific analysis (Tier, Route, Cost, etc.)',1),(31,'Billing',1),(32,'BR support',1),(33,'Branch Name / Id',1),(34,'Bravo Roles',1),(35,'Bravo User',1),(36,'Budget preparation',1),(37,'Business management',1),(38,'Calling new Shoppers',1),(39,'Calls - Shoppers',1),(40,'Calls / meetings - Client, SM',1),(41,'Calls / meetings - Internal',1),(42,'Calls Advertisement Providers',1),(43,'Calls Emails',1),(44,'Cancel',1),(45,'Cash Forecast',1),(46,'Caspian',1),(47,'Caspian (entering, managing leads)',1),(48,'Caspian Office Users',1),(49,'Caspian Primary User',1),(50,'Caspian Roles',1),(51,'Change Requests',1),(52,'Choose one…',1),(53,'CL support',1),(54,'Client',1),(55,'Client Agreement Creation & Follow-up',1),(56,'Client communication',1),(57,'Client Excel reporting',1),(58,'Client related communication',1),(59,'Client Reporting',1),(60,'Client/Prospect – follow up',1),(61,'Client/Prospect  meeting',1),(62,'CN support',1),(63,'Cold Calls',1),(64,'Comment',1),(65,'Comment:',1),(66,'Comments',1),(67,'Company Name',1),(68,'Contract Expires',1),(69,'Contract Expiry Date',1),(70,'Copy',1),(71,'Cost-out, RFP',1),(72,'Country Codes…',1),(73,'Create New Vendor',1),(74,'Created',1),(75,'Creating client proposal',1),(76,'Creating Process/Procedures',1),(77,'Credit memos entering/approving',1),(78,'Cross Departmental Support - BI',1),(79,'Cross Departmental Support - DQ',1),(80,'Cross Departmental Support - Finance',1),(81,'Cross Departmental Support - HR',1),(82,'Cross Departmental Support - IT',1),(83,'Cross Departmental Support - KAM',1),(84,'Cross Departmental Support - MKTG',1),(85,'Cross Departmental Support - RM',1),(86,'Cross Departmental Support - Sales',1),(87,'Currency',1),(88,'Data Checking in Excel',1),(89,'Data cleaning, checking and matching',1),(90,'Date',1),(91,'Delete',1),(92,'Department',1),(93,'DQ Supervisor',1),(94,'Edit',1),(95,'Edit Timesheet Entry',1),(96,'Editing reports (First Line Editing)',1),(97,'Editor Assignments',1),(98,'Editor Invoicing',1),(99,'Email',1),(100,'E-mail',1),(101,'Employee Attendance Control',1),(102,'Employee Benefits payment',1),(103,'Employee Feedback',1),(104,'End',1),(105,'End date:',1),(106,'End time:',1),(107,'Entering Data in Accounting software',1),(108,'Entry overlaps with an existing entry:',1),(109,'EU support',1),(110,'Export',1),(111,'Fee',1),(112,'Fee Type',1),(113,'Fees',1),(114,'Fieldwork Partner',1),(115,'First Name',1),(116,'First Name',1),(117,'Follow up',1),(118,'Friday',1),(119,'Full Tier',1),(120,'Global Anti-Fraud Group Work',1),(121,'Global support',1),(122,'Health Care Assistance',1),(123,'Hide New Comment',1),(124,'Hiring / Interview',1),(125,'Hiring / Onboarding Process',1),(126,'Hold-A Management',1),(127,'Hold-B Management',1),(128,'Home',1),(129,'IBAN Code / Bank Account Number',1),(130,'Id',1),(131,'IN support',1),(132,'Independent User',1),(133,'Internal communication',1),(134,'Internal queries',1),(135,'Internal reporting',1),(136,'Interoffice communication',1),(137,'Invoicing',1),(138,'IO communication',1),(139,'Is Fieldwork Partner',1),(140,'IsAgency?',1),(141,'IT_Admin Tasks',1),(142,'KAM Supervisor',1),(143,'KPI Calculation',1),(144,'Last login',1),(145,'Last Name',1),(146,'Last Name',1),(147,'Lead Research',1),(148,'List timesheet entries',1),(149,'List View',1),(150,'Logout',1),(151,'Managing Contractors, Vendors',1),(152,'Material creation',1),(153,'Modified',1),(154,'Monday',1),(155,'More',1),(156,'Name',1),(157,'Networking Events',1),(158,'New Hire - Training',1),(159,'New Timesheet Entry',1),(160,'Next',1),(161,'No',1),(162,'Office',1),(163,'Office Management',1),(164,'Official Jobtitle',1),(165,'OH and attributes calculation',1),(166,'Opt Fee is only applied if the starting status is Reviewed.',1),(167,'Opt. Fee',1),(168,'Organizing data, Making template',1),(169,'Other Projects / Miscellaneous',1),(170,'P&L preparation',1),(171,'Partner communication',1),(172,'Payment Issues',1),(173,'Payment Method',1),(174,'People Development',1),(175,'People management',1),(176,'Performance tracking',1),(177,'PH Support',1),(178,'Phone Number',1),(179,'Phone number',1),(180,'Phone number isn\'t correct.',1),(181,'Pitching',1),(182,'Planning workload',1),(183,'Please select',1),(184,'Post advertisement',1),(185,'Preferred Language',1),(186,'Preparation for meetings',1),(187,'Prepare monthly Reports',1),(188,'Prepare Weekly Reports',1),(189,'Previous',1),(190,'Pricing Requests',1),(191,'Process control, review',1),(192,'Process improvement',1),(193,'Profile',1),(194,'Project design',1),(195,'Project review with ops/PM',1),(196,'Project Setup / Prepare Guideline / Briefing',1),(197,'Providing training',1),(198,'PTO',1),(199,'Quality check (Second Line Editing)',1),(200,'Receiving training',1),(201,'Recruitment',1),(202,'Report automation',1),(203,'Reporting / Status Tracking /  Follow up',1),(204,'Reset Caspian Password',1),(205,'Revenue Confirmation',1),(206,'Review questionnaire / Shopper guideline',1),(207,'Rework - Analyst',1),(208,'Rework - Client',1),(209,'Rework - KAM',1),(210,'RM Supervisor',1),(211,'Roles',1),(212,'Rulez',1),(213,'Sales to Ops Transition',1),(214,'Saturday',1),(215,'Save',1),(216,'Save Comment',1),(217,'Save Fee',1),(218,'Scheduling',1),(219,'Search',1),(220,'Select',1),(221,'Select Agency',1),(222,'Select task',1),(223,'Self Assigned',1),(224,'SG support',1),(225,'Social Media',1),(226,'Spent hours',1),(227,'Start',1),(228,'Start - End',1),(229,'Start date:',1),(230,'Start time:',1),(231,'Sunday',1),(232,'Supervisor Name',1),(233,'Support',1),(234,'Surfmerchants',1),(235,'Survey',1),(236,'Switch to',1),(237,'Task',1),(238,'Task:',1),(239,'The right format is \'hh:mm\'',1),(240,'This field can\'t be empty!',1),(241,'Thursday',1),(242,'Tier',1),(243,'Tier 1',1),(244,'Tier 2',1),(245,'Timesheet',1),(246,'Timesheetuser Username',1),(247,'Today',1),(248,'Tracker handling',1),(249,'Training - Self',1),(250,'Training - Self / coaching team member / external',1),(251,'Training / Briefing Shopper',1),(252,'Training / coaching team member / external',1),(253,'Translation',1),(254,'Translation of Guidelines, other documents, etc.',1),(255,'Tuesday',1),(256,'Type your comment here…',1),(257,'Type to search…',1),(258,'US support',1),(259,'Use the arrow keys on the keyboard (Up, Down) to change the selection. Columns can be resized by the oblique lines in the header, rows can be resized by the oblique lines in the first cell.',1),(260,'User Id',1),(261,'User Name',1),(262,'User Type',1),(263,'User With Agency',1),(264,'VAT/GST tax preparation and filing',1),(265,'Vendor',1),(266,'Vendor Fees',1),(267,'Vendor Id',1),(268,'Vendor Invoicing',1),(269,'Vendor Name',1),(270,'Vendor payments',1),(271,'Wave',1),(272,'Wednesday',1),(273,'Weekdays',1),(274,'Western Union Address',1),(275,'Whole Week',1),(276,'Yes',1);
/*!40000 ALTER TABLE `english` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-23 11:43:30
