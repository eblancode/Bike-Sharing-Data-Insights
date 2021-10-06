-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: bicing
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.26-MariaDB

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
-- Table structure for table `barris`
--

DROP TABLE IF EXISTS `barris`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `barris` (
  `id_barri` int(11) NOT NULL AUTO_INCREMENT,
  `districte` text,
  `barri` text,
  `barri_mapa` text,
  PRIMARY KEY (`id_barri`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `barris`
--

LOCK TABLES `barris` WRITE;
/*!40000 ALTER TABLE `barris` DISABLE KEYS */;
INSERT INTO `barris` VALUES (1,'Les Corts','Les Corts','les_corts'),(2,'Sant Martí','El Besòs i el Maresme','besos_maresme'),(3,'Ciutat Vella','El Raval','raval'),(4,'Sant Martí','El Clot','clot'),(5,'Eixample','La Sagrada Familia','sagrada_familia'),(6,'Eixample','Fort Pienc','fort_pienc'),(7,'Sant Andreu','Navas','navas'),(8,'Sants-Montjuïc','Sants','sants'),(9,'Sant Martí','La Vila Olímpica del Poblenou','vila_olimpica'),(10,'Sants-Montjuïc','La Marina de Port','marina_del_port'),(11,'Sant Martí','Diagonal Mar i el Front Marítim del Poblenou','diagonal_mar'),(12,'Ciutat Vella','Sant Pere - Santa Caterina i la Ribera','born'),(13,'Ciutat Vella','La Barceloneta','barceloneta'),(14,'Eixample','Dreta de l\'Eixample','dreta_eixample'),(15,'Ciutat Vella','Gothic Quarter','gotic'),(16,'Sant Martí','El Parc i la Llacuna del Poblenou','parc_poblenou_llacuna'),(17,'Eixample','L\'Esquerra de l\'Eixample','antiga_esquerra_eixample'),(18,'Eixample','Sant Antoni','sant_antoni'),(19,'Sants-Montjuïc','Hostafrancs','hostafrancs'),(20,'Sants-Montjuïc','Parc de Montjuïc','poble_sec'),(21,'Sarrià-Sant Gervasi','Sant Gervasi - Galvany','sant_gervasi_galvany'),(22,'Gràcia','Vila de Gràcia','gracia'),(23,'Gràcia','El Camp d\'en Grassot i Gràcia Nova','camp_den_grassot'),(24,'Sant Martí','Sant Martí de Provençals','sant_marti'),(25,'Sant Martí','La Verneda i la Pau','verneda'),(26,'Sant Martí','Provençals del Poblenou','provensals'),(27,'Sant Martí','El Poblenou','poblenou'),(28,'Sant Martí','El Camp de l\'Arpa del Clot','camp_de_larpa'),(29,'Sants-Montjuïc','La Bordeta','bordeta'),(30,'Les Corts','La Maternitat i Sant Ramon','maternitat_sant_ramon'),(31,'Les Corts','Pedralbes','pedralbes'),(32,'Sants-Montjuïc','El Poble-sec','poble_sec'),(33,'Sant Andreu','El Congrés i els Indians','congres'),(34,'Sant Andreu','La Sagrera','sagrera'),(35,'Sant Andreu','Sant Andreu','sant_andreu'),(36,'Sant Andreu','El Bon Pastor','bon_pastor'),(37,'Sant Andreu','Trinitat Vella','trinitat_vella'),(38,'Nou Barris','Porta','porta'),(39,'Horta-Guinardó','El Baix Guinardó','baix_guinardo'),(40,'Horta-Guinardó','La Font d\'en Fargues','font_den_fargues'),(41,'Horta-Guinardó','Horta','horta'),(42,'Nou Barris','Vilapicina i la Torre Llobeta','vilapicina'),(43,'Nou Barris','La Guineueta','guineueta'),(44,'Nou Barris','El Turó de la Peira','turo_de_la_peira'),(45,'Nou Barris','La Prosperitat','prosperitat'),(46,'Sarrià-Sant Gervasi','El Putxet i el Farró','putxet'),(47,'Sarrià-Sant Gervasi','Les Tres Torres','tres_torres'),(48,'Sarrià-Sant Gervasi','Sant Gervasi - la Bonanova','sant_gervasi_bonanova'),(49,'Sarrià-Sant Gervasi','Sarrià','sarria'),(50,'Sant Andreu','Baró de Viver','baro_de_viver'),(51,'Sants-Montjuïc','Sants-Badal','sants_badal'),(52,'Gràcia','La Salut','la_salut'),(53,'Horta-Guinardó','El Guinardó','guinardo'),(54,'','Nou Barris','Vallbona'),(55,'','Nou Barris','Torre Baró'),(56,'','Nou Barris','Ciutat Meridiana'),(57,'','Nou Barris','Roquetes'),(58,'','Nou Barris','Trinitat Nova'),(59,'','Nou Barris','Canyelles'),(60,'','Nou Barris','Verdún'),(61,'','Sarrià-Sant Gervasi','Vallvidrera'),(62,'','Horta, Barcelona','Vall d\'Hebron'),(63,'','Horta, Barcelona','El Carmel'),(64,'','Horta, Barcelona','Teixonera'),(65,'','Horta, Barcelona','La Clota'),(66,'','Nou Barris','Can Peguera'),(67,'','Horta, Barcelona','Can Baró'),(68,'','Gràcia','El Coll'),(69,'','Eixample','Nova Esquerra de l\'Eixample'),(70,'','Sants-Montjuïc','Font de la Guatlla'),(71,'','Sants-Montjuïc','Marina del Prat Vermell'),(72,'','Gràcia','Vallcarca'),(73,'','Horta, Barcelona','Montbau');
/*!40000 ALTER TABLE `barris` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-27 10:10:01
