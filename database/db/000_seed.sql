-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: 127.0.0.1    Database: ziegel24
-- ------------------------------------------------------
-- Server version	5.7.20

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
-- Table structure for table `bestellungen`
--

DROP TABLE IF EXISTS `bestellungen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bestellungen` (
  `bestnr` int(11) NOT NULL AUTO_INCREMENT,
  `datum` date DEFAULT NULL,
  `kunde` int(11) NOT NULL,
  PRIMARY KEY (`bestnr`,`kunde`),
  KEY `fk_Bestellung_Kunden_idx` (`kunde`),
  CONSTRAINT `fk_Bestellung_Kunden` FOREIGN KEY (`kunde`) REFERENCES `Kunden` (`kdnr`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bestellungen`
--

LOCK TABLES `bestellungen` WRITE;
/*!40000 ALTER TABLE `bestellungen` DISABLE KEYS */;
INSERT INTO `bestellungen` VALUES (1,'2017-07-07',4),(2,'2017-07-09',16);
/*!40000 ALTER TABLE `bestellungen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kunden`
--

DROP TABLE IF EXISTS `kunden`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kunden` (
  `kdnr` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) DEFAULT NULL,
  `adresse` text,
  PRIMARY KEY (`kdnr`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kunden`
--

LOCK TABLES `kunden` WRITE;
/*!40000 ALTER TABLE `kunden` DISABLE KEYS */;
INSERT INTO `kunden` VALUES (1,'Volkswagen','Kleine Dammstr. 181, 37188 Groitzsch'),(2,'SAP','Brehmstr. 51, 68748 Bad Bentheim'),(3,'Merck','Friedrich-Hund-Str. 110, 17296 Goldberg'),(4,'Merck','Stoystr. 57, 21269 Marktheidenfeld'),(5,'BASF','Carl-Stamitz-Weg 15, 70173 Öhringen'),(6,'HeidelbergCement','Meisenweg 107, 60002 Prettin'),(7,'K+S	','Bürgelsche Str. 231, 66527 Trochtelfingen'),(8,'Fresenius Medical Care','Friedenstr. 236, 12448 Bernburg'),(9,'RWE','Friedensweg 187, 43784 Ehrenfriedersdorf'),(10,'Infineon','Am Gönnabach 70, 01965 Horn-Bad Meinberg'),(11,'ThyssenKrupp','Paradiesstr. 31, 71699 Walsrode'),(12,'Beiersdorf','Theobald-Renner-Str. 201, 65768 Melle'),(13,'Deutsche Bank','Lichtenhainer Brücke 100, 39000 Cloppenburg'),(14,'HeidelbergCement','Sachseneckweg 107, 91590 Rietberg'),(15,'Deutsche Post','Hinterm Gut 87, 61336 Ochtrup'),(16,'ThyssenKrupp','Lützerodaer Weg 108, 23517 Nordenham'),(17,'Deutsche Bank','Burgweg 154, 23002 Flöha'),(18,'Munich Re','Altenburger Str. 143, 85652 Bad Salzungen'),(19,'Volkswagen','Schneckengasse 92, 73977 Falkenstein/Harz'),(20,'ThyssenKrupp','Am Herrenberge 5, 17296 Beeskow'),(21,'Beiersdorf','Akazienweg 212, 09831 Diez'),(22,'K+S	','Am Berg 139, 05183 Blomberg'),(23,'Deutsche Post','Vor der Gembdenmühle 235, 64783 Burscheid'),(24,'Munich Re','Eugen-Diederichs-Str. 52, 37139 Munster'),(25,'Fresenius Medical Care','Jenaplan 5, 48024 Eisenberg'),(26,'Deutsche Börse','Feldstr. 213, 87125 Geseke'),(27,'MAN','Straße des 17. Juni 180, 49883 Spremberg'),(28,'Deutsche Bank','Am Loh 99, 74185 Wittlich'),(29,'Henkel','Zu den acht Äckern 153, 37968 Neuötting'),(30,'Deutsche Post','Am Dorfplatz 65, 17164 Nienburg'),(31,'Allianz','Riedstr. 133, 53674 Fürth'),(32,'K+S	','Konrad-Zuse-Str. 212, 33409 Lauchheim'),(33,'Fresenius SE','Am Steinbach 30, 06707 Grafenwöhr'),(34,'K+S	','Kritzegraben 237, 02715 Baumholder'),(35,'Deutsche Bank','Stumpfenburgweg 158, 49319 Hayingen'),(36,'Deutsche Bank','Scheidlerstr. 146, 37880 Herbolzheim'),(37,'Commerzbank','Am Stadion 186, 92937 Altenberg'),(38,'MAN','Dammstr. 97, 70078 Neustadt an der Waldnaab'),(39,'Infineon','Maurerstr. 150, 07674 Nürtingen '),(40,'E.ON','Malvenweg 221, 71044 Neubukow'),(41,'Lufthansa','Am Friedhof 237, 19927 Hatzfeld'),(42,'Henkel','Frauengasse 141, 94721 Chemnitz'),(43,'Munich Re','Am Freiberg 199, 94873 Bernburg'),(44,'Daimler','Karl-Liebknecht-Str. 211, 28509 Weilheim in Oberbayern'),(45,'Munich Re','Unterer Sachseneckweg 52, 59079 Braunsbedra'),(46,'Bayer','Laasan 168, 98684 Mainbernheim'),(47,'BASF','Unstrutweg 179, 83821 Groß-Gerau'),(48,'Siemens','Erfurter Str. 98, 75810 Leisnig'),(49,'Deutsche Post','Am Burggarten 237, 11900 Lollar'),(50,'Deutsche Bank','Richard-Zimmermann-Str. 56, 74087 Walsrode');
/*!40000 ALTER TABLE `kunden` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `positionen`
--

DROP TABLE IF EXISTS `positionen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `positionen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `produkt` int(11) NOT NULL,
  `bestellung` int(11) NOT NULL,
  `anzahl` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `bestellung_idx` (`bestellung`),
  KEY `produkt_idx` (`produkt`),
  CONSTRAINT `bestellung` FOREIGN KEY (`bestellung`) REFERENCES `bestellungen` (`bestnr`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `produkt` FOREIGN KEY (`produkt`) REFERENCES `produkte` (`produktnr`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `positionen`
--

LOCK TABLES `positionen` WRITE;
/*!40000 ALTER TABLE `positionen` DISABLE KEYS */;
INSERT INTO `positionen` VALUES (1,1,2,612),(2,2,2,86),(3,3,1,60),(4,4,1,120);
/*!40000 ALTER TABLE `positionen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produkte`
--

DROP TABLE IF EXISTS `produkte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produkte` (
  `produktnr` int(11) NOT NULL AUTO_INCREMENT,
  `bezeichnung` varchar(400) DEFAULT NULL,
  `beschreibung` text,
  `preis` decimal(6,2) DEFAULT NULL,
  `bestand` int(11) DEFAULT NULL,
  PRIMARY KEY (`produktnr`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produkte`
--

LOCK TABLES `produkte` WRITE;
/*!40000 ALTER TABLE `produkte` DISABLE KEYS */;
INSERT INTO `produkte` VALUES (1,'Mauerziegel 3DF 24 x 17,5 x 11,3 cm\nMauerziegel 3DF 24 x 17,5 x 11,3 cm\n','Mauerziegel bieten ideale Voraussetzungen für gesundes Wohnen. Der Mauerstein ist ein Produkt aus den natürlichen Rohstoffen Lehm, Ton und Wasser.',0.99,16878),(2,'Mauerziegel 8DF 49,6 x 11,5 x 23,8 cm\n','Mauerziegel bieten ideale Voraussetzungen für gesundes Wohnen. Der Mauerstein ist ein Produkt aus den natürlichen Rohstoffen Lehm, Ton und Wasser.\n',1.99,36487),(3,'Unipor Mauerziegel Kleinformat NF 24 cm x 11,5 cm x 7,1 cm\n','Mauerziegel bieten ideale Voraussetzungen für gesundes Wohnen. Der Mauerstein ist ein Produkt aus den natürlichen Rohstoffen Lehm, Ton und Wasser.\n\nDruckfestigkeit N/mm² = 12\nRohdichteklasse 0,9 kg/dm3',0.69,6000),(4,'Silka Kalksandstein 2DF-L 240 mm x 115 mm x 113 mm\n','Der Kalksandlochstein 2DF eignet sich ideal für alle Wände mit Brand- und Schallschutzanforderungen. Er hat eine Rohdichteklasse von 12 bis 1,4.',0.49,8000);
/*!40000 ALTER TABLE `produkte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rechnungen`
--

DROP TABLE IF EXISTS `rechnungen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rechnungen` (
  `rechnungsnr` int(11) NOT NULL,
  `rechnungsdatum` date DEFAULT NULL,
  `bezahldatum` date DEFAULT NULL,
  `betrag` decimal(6,2) DEFAULT NULL,
  `bestellung` int(11) NOT NULL,
  PRIMARY KEY (`rechnungsnr`,`bestellung`),
  KEY `fk_Rechnungen_Bestellung1_idx` (`bestellung`),
  CONSTRAINT `fk_Rechnungen_Bestellung1` FOREIGN KEY (`bestellung`) REFERENCES `Bestellung` (`bestnr`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rechnungen`
--

LOCK TABLES `rechnungen` WRITE;
/*!40000 ALTER TABLE `rechnungen` DISABLE KEYS */;
INSERT INTO `rechnungen` VALUES (0,'2017-07-07',NULL,100.00,1),(0,'2017-07-10',NULL,80.00,2);
/*!40000 ALTER TABLE `rechnungen` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-29 15:09:23
