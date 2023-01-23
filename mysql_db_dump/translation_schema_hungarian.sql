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
-- Table structure for table `hungarian`
--

DROP TABLE IF EXISTS `hungarian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hungarian` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `expression` varchar(400) DEFAULT NULL,
  `lang_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `hungarian_lang_id_idx` (`lang_id`),
  CONSTRAINT `hungarian_lang_id` FOREIGN KEY (`lang_id`) REFERENCES `languages` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=277 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hungarian`
--

LOCK TABLES `hungarian` WRITE;
/*!40000 ALTER TABLE `hungarian` DISABLE KEYS */;
INSERT INTO `hungarian` VALUES (1,'Számlatulajdonos neve',2),(2,'Pénzügy',2),(3,'Aktív',2),(4,'Új díj létrehozása',2),(5,'Új megjegyés létrehozása',2),(6,'Új bejegyzés',2),(7,'Új szolgáltató létrehozása',2),(8,'Min?ségellen?rzési megjegyzések',2),(9,'Adminisztráció',2),(10,'Hirdetési kifizetések kezelése',2),(11,'Ügynökség',2),(12,'Alipay fiók',2),(13,'Analízis',2),(14,'Közlemények',2),(15,'Éves zárás, adóbevallás és ellen?rzés',2),(16,'Teljesítményértékelés',2),(17,'Apollo Manager Id - Data Quality',2),(18,'Apollo Manager Id - Resource',2),(19,'Bejöv? fizetések könyvelése',2),(20,'Kintlév?ségkezelés',2),(21,'Automatizált riport',2),(22,'Bamboo',2),(23,'Számlaszám',2),(24,'Bank cím',2),(25,'Bank név',2),(26,'BI - más osztályok támogatása',2),(27,'BI - más irodák támogatása',2),(28,'BI - Design, Illustrations, Graphic layout, CSS',2),(29,'BI - Development solutions files',2),(30,'BI - Különleges elemzések (Tier, Route, Cost, etc.)',2),(31,'Számlázás',2),(32,'BR támogatás',2),(33,'Fióknév / Id',2),(34,'Bravo jogok',2),(35,'Bravo felhasználó',2),(36,'Költségvetés készítés',2),(37,'Üzletmenet',2),(38,'Új próbavásárkól hívása',2),(39,'Hívás - Próbavásárló',2),(40,'Hívás / megbeszélés - Ügyfél, SM',2),(41,'Hívás / megbeszélés - bels?',2),(42,'Hirrdetési szolgáltatók hívása',2),(43,'Calls Emails',2),(44,'Visszavon',2),(45,'Pénzügyi el?rejelzés',2),(46,'Caspian',2),(47,'Caspian (Lead kezelés, léteehozás)',2),(48,'Caspian Felhasználók',2),(49,'Els?dleges Caspian felhasználó',2),(50,'Caspian jogok',2),(51,'Változási kérelem',2),(52,'Válassz…',2),(53,'CL támogatás',2),(54,'Ügyfél',2),(55,'Ügyfélszerz?dés létrehozása és nyomon követése',2),(56,'Ügyfél kommunikáció',2),(57,'Ügyfél Excel Riportálás',2),(58,'Ügyfélel kapcsolatás kommunikáció',2),(59,'Ügyfél Riportálás',2),(60,'Ügyfél/Kapcsolat utánkövetés',2),(61,'Ügyfél/Kapcsolat megbesy;l;s',2),(62,'CN támogatás',2),(63,'Cold Calls',2),(64,'Megjegyzés',2),(65,'Megjegyzés:',2),(66,'Megjegyzések',2),(67,'Cégnév',2),(68,'Szerz?dés lejárat',2),(69,'Szerz?dés lejárati ideje',2),(70,'Másol',2),(71,'Ajánlatkészítés',2),(72,'Országkódok…',2),(73,'Új szolgáltató létrehozása',2),(74,'Létrehozva',2),(75,'Ügyfélajánlat létrehozása',2),(76,'Folyamat létrehozása',2),(77,'Jóváíró számla létrehozás/kezelés',2),(78,'Osztályközi támogatás - BI',2),(79,'Osztályközi támogatás - DQ',2),(80,'Osztályközi támogatás - Pénzügy',2),(81,'Osztályközi támogatás - HR',2),(82,'Osztályközi támogatás - IT',2),(83,'Osztályközi támogatás - KAM',2),(84,'Osztályközi támogatás - MKTG',2),(85,'Osztályközi támogatás - RM',2),(86,'Osztályközi támogatás - Sales',2),(87,'Pénznem',2),(88,'Adatellen?tzés Excelben',2),(89,'Datatisztázás, ellen?rzés és összekötés',2),(90,'Dátum',2),(91,'Törlés',2),(92,'Osztály',2),(93,'DQ Csoportvezet?',2),(94,'Módosít',2),(95,'Jelenléti ív módosítása',2),(96,'Min?ségellen?rzés (1. szint?)',2),(97,'Editor megbízások',2),(98,'Editor számlázás',2),(99,'E-mail',2),(100,'E-mail',2),(101,'Munkavállalói részvétel ellen?rzése',2),(102,'Munkavállalói juttatások kifizetése',2),(103,'Munkavállalói visszajelzések',2),(104,'Vége',2),(105,'Vég dátum:',2),(106,'Vég id?:',2),(107,'Adatok bevitele a Számviteli rendszerbe',2),(108,'A bejegyzés átfedésben van egy meglév? bejegyzéssel:',2),(109,'EU támogatás',2),(110,'Export',2),(111,'Díj',2),(112,'Díj típus',2),(113,'Díjak',2),(114,'Fieldwork Partner',2),(115,'Keresztnév',2),(116,'Keresztnév',2),(117,'Utánkövetés',2),(118,'Péntek',2),(119,'Full Tier',2),(120,'Csalásellenes Vizsgálat',2),(121,'Global támogatás',2),(122,'Egészségügyi segítségnyújtás',2),(123,'Új megjegyzés elrejtése',2),(124,'Felvétel / interjú',2),(125,'Felvétel / Beléptetési folyamat',2),(126,'Hold-A Kezelés',2),(127,'Hold-B Kezelés',2),(128,'F?oldal',2),(129,'IBAN Kód / Számlaszám',2),(130,'Azonosító',2),(131,'IN támogatás',2),(132,'Önáló felhasználó',2),(133,'Bels? kommunikáció',2),(134,'Bels? megkeresések',2),(135,'Bels? riportálás',2),(136,'Irodákközti kommunikáció',2),(137,'Számlázás',2),(138,'Irodákközti kommunikáció',2),(139,'Fieldwork Partner?',2),(140,'Ügynökség?',2),(141,'IT_admin feladatok',2),(142,'KAM csoportvezet?',2),(143,'KPI számítás',2),(144,'Utolsó+B119:B145 belépés',2),(145,'Vezetéknév',2),(146,'Vezetéknév',2),(147,'Lead keresés',2),(148,'Jelenlétí ív tételeinek listázása',2),(149,'Listanézet',2),(150,'Kijelentkezés',2),(151,'Szolgáltatók kezelése',2),(152,'Szakmai anyagok létrehozása',2),(153,'Módosítva',2),(154,'Hétf?',2),(155,'Több',2),(156,'Név',2),(157,'Kapcsolatépítési események',2),(158,'Újbelépó tréning',2),(159,'Új jelenléti ív tétel létrehozása',2),(160,'Következ?',2),(161,'Nem',2),(162,'Iroda',2),(163,'Iroda kezelés',2),(164,'Hivatalos Munkakör',2),(165,'OH és attribótum számítás',2),(166,'Az opciós díjat csak akkor alkalmazzák, ha a kiindulási státusz Reviewed.',2),(167,'Opt. díj',2),(168,'Adatok rendezése, sablon készítése',2),(169,'Más projekt / Egyéb',2),(170,'P&L készítés',2),(171,'Partner kommunikáció',2),(172,'Kifizetési kérdések ',2),(173,'Fizatési mód',2),(174,'munkavállaló fejlesztés',2),(175,'Munkavállaló kezelése',2),(176,'Teljesítménymérés',2),(177,'PH támogatás',2),(178,'Telefonszám',2),(179,'Telefonszám',2),(180,'A telefonszém nem megfelel?.',2),(181,'El?adás (Pitch)',2),(182,'Munkaszervezés',2),(183,'Kérem válasszon',2),(184,'Hirdetésfeladás',2),(185,'Nyelvválasztás',2),(186,'Megbeszélésre való felkészülés',2),(187,'Havi riportok elkészítése',2),(188,'Heti riportok elkészítése',2),(189,'El?z?',2),(190,'Árazás',2),(191,'Folyamatirányítás, felülvizsgálat',2),(192,'Folyamatfejlesztés',2),(193,'Profil',2),(194,'Projekt dizájn',2),(195,'Projekt felülvizsgálata ops/PM',2),(196,'Projekt felállítása / Útmutató  / tájékoztató el?készítése',2),(197,'Képzés tartása',2),(198,'PTO',2),(199,'Min?ségellen?rzés (2. szint?)',2),(200,'Tréningen való részvétel',2),(201,'Toborzás',2),(202,'Jelentés automatizálás',2),(203,'Jelentés / állapotkövetés / nyomon követés',2),(204,'Caspian Jelszó Visszaállítása',2),(205,'Bevétel meger?sítése',2),(206,'Kérd?ív ellen?rzés / Vásárlói útmutató',2),(207,'Újrafeldolgozás - Elemz?',2),(208,'Újrafeldolgozás - Ügyfél',2),(209,'Újrafeldolgozás - KAM',2),(210,'RM Csoportvezet?',2),(211,'Jogok',2),(212,'Rulez',2),(213,'Sales to Ops Transition',2),(214,'Szombat',2),(215,'Mentés',2),(216,'Megjegyzés mentése',2),(217,'Díj mentése',2),(218,'Ütemezés',2),(219,'Keresés',2),(220,'Válasz',2),(221,'Ügynökség kiválasztása',2),(222,'Feladat kiválasztása',2),(223,'Self Assigned',2),(224,'SG támogatás',2),(225,'Social Media',2),(226,'Óraszám',2),(227,'Kezdés',2),(228,'Kezdés - Vég',2),(229,'Ked? dátum:',2),(230,'Kezd? id?:',2),(231,'Vasárnap',2),(232,'Csoportvezet? neve',2),(233,'Támogatás',2),(234,'Surfmerchants',2),(235,'kérd?ív',2),(236,'Válts erre',2),(237,'Feladat',2),(238,'Feladat:',2),(239,'A megfelel? formátum: \"óó: mm\"\"\"',2),(240,'Ez a mez? nem lehet üres!',2),(241,'Csütörtök',2),(242,'Tier',2),(243,'Tier 1',2),(244,'Tier 2',2),(245,'Jelenléti ív',2),(246,'Jelenléti ív felhasználó felhazsnálóneve',2),(247,'Ma',2),(248,'Tracker kezelés',2),(249,'Tréning - saját',2),(250,'Tréning - saját / csapat társ / küls?s',2),(251,'Tréning / Próbavásárló képzés',2),(252,'Tréning - saját / csapat társ / küls?s',2),(253,'Fordítás',2),(254,'Iránymutatások, egyéb dokumentumok fordítása',2),(255,'Kedd',2),(256,'Megjegyzés…',2),(257,'Keresés megadás…',2),(258,'US támogatás',2),(259,'A kiválasztás módosításához használja a billenty?zet nyílgombjait (Fel, Le). Az oszlopok átméretezhet?k a fejléc ferde vonalaival, a sorok pedig az els? cellában lév? ferde vonalakkal.',2),(260,'Felhasználó azonosító',2),(261,'Felhasználónév',2),(262,'Felhasználó típus',2),(263,'Ügynökség felhasználója',2),(264,'ÁFA / GST adó el?készítése és benyújtása',2),(265,'Szolgáltató',2),(266,'Szolgáltatói díjak',2),(267,'Szolgáltatói azonosító',2),(268,'Szolgáltatói számlázás',2),(269,'Szolgáltatói neve',2),(270,'Szolgáltatói kifizetések',2),(271,'Wave',2),(272,'Szerda',2),(273,'Hétköznapok',2),(274,'Western Union cím',2),(275,'Teljes hét',2),(276,'Igen',2);
/*!40000 ALTER TABLE `hungarian` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-23 11:43:31
