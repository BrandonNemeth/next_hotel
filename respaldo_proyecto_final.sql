-- MySQL dump 10.13  Distrib 8.0.41, for Linux (aarch64)
--
-- Host: localhost    Database: proyecto_final
-- ------------------------------------------------------
-- Server version	8.0.41

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `BitacoraEstados`
--

DROP TABLE IF EXISTS `BitacoraEstados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `BitacoraEstados` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `IDHabitacion` int NOT NULL,
  `EstadoAnterior` enum('Disponible','Ocupado','Limpieza') NOT NULL,
  `EstadoNuevo` enum('Disponible','Ocupado','Limpieza') NOT NULL,
  `FechaHora` datetime NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDHabitacion` (`IDHabitacion`),
  CONSTRAINT `BitacoraEstados_ibfk_1` FOREIGN KEY (`IDHabitacion`) REFERENCES `Habitacion` (`id_habitacion`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BitacoraEstados`
--

LOCK TABLES `BitacoraEstados` WRITE;
/*!40000 ALTER TABLE `BitacoraEstados` DISABLE KEYS */;
INSERT INTO `BitacoraEstados` VALUES (1,12,'Limpieza','Limpieza','2024-10-23 00:00:00'),(2,48,'Limpieza','Disponible','2024-09-13 00:00:00'),(3,2,'Disponible','Ocupado','2024-05-09 00:00:00'),(4,10,'Ocupado','Disponible','2024-12-01 00:00:00'),(5,42,'Limpieza','Limpieza','2024-08-24 00:00:00'),(6,27,'Limpieza','Disponible','2025-04-14 00:00:00'),(7,30,'Disponible','Limpieza','2024-06-08 00:00:00'),(8,19,'Limpieza','Ocupado','2024-01-06 00:00:00'),(9,44,'Limpieza','Disponible','2024-09-17 00:00:00'),(10,11,'Limpieza','Disponible','2025-02-15 00:00:00'),(11,18,'Limpieza','Disponible','2024-09-08 00:00:00'),(12,20,'Limpieza','Limpieza','2024-04-18 00:00:00'),(13,39,'Limpieza','Limpieza','2025-03-10 00:00:00'),(14,50,'Disponible','Disponible','2025-04-06 00:00:00'),(15,26,'Disponible','Limpieza','2024-06-30 00:00:00'),(16,38,'Limpieza','Limpieza','2025-03-30 00:00:00'),(17,35,'Disponible','Limpieza','2025-01-09 00:00:00'),(18,7,'Disponible','Disponible','2024-04-09 00:00:00'),(19,22,'Disponible','Disponible','2024-08-06 00:00:00'),(20,14,'Limpieza','Disponible','2024-01-12 00:00:00'),(21,21,'Disponible','Limpieza','2024-02-22 00:00:00'),(22,15,'Disponible','Disponible','2025-01-04 00:00:00'),(23,16,'Ocupado','Disponible','2025-03-24 00:00:00'),(24,47,'Limpieza','Limpieza','2024-12-04 00:00:00'),(25,28,'Disponible','Limpieza','2024-04-28 00:00:00'),(26,46,'Limpieza','Limpieza','2024-06-11 00:00:00'),(27,9,'Ocupado','Disponible','2024-10-10 00:00:00'),(28,23,'Ocupado','Disponible','2024-02-06 00:00:00'),(29,25,'Limpieza','Limpieza','2024-04-01 00:00:00'),(30,6,'Disponible','Disponible','2024-02-13 00:00:00'),(31,8,'Disponible','Ocupado','2025-01-20 00:00:00'),(32,5,'Disponible','Limpieza','2024-01-27 00:00:00'),(33,3,'Ocupado','Disponible','2024-07-28 00:00:00'),(34,34,'Limpieza','Disponible','2024-10-13 00:00:00'),(35,41,'Disponible','Disponible','2025-04-12 00:00:00'),(36,36,'Limpieza','Disponible','2024-02-26 00:00:00'),(37,1,'Disponible','Ocupado','2024-10-01 00:00:00'),(38,4,'Limpieza','Ocupado','2024-11-02 00:00:00'),(39,13,'Disponible','Disponible','2025-03-17 00:00:00'),(40,40,'Disponible','Ocupado','2024-12-23 00:00:00'),(41,33,'Limpieza','Limpieza','2024-01-30 00:00:00'),(42,32,'Ocupado','Disponible','2025-02-10 00:00:00'),(43,24,'Disponible','Disponible','2024-03-28 00:00:00'),(44,29,'Limpieza','Ocupado','2024-07-09 00:00:00'),(45,43,'Disponible','Ocupado','2025-02-01 00:00:00'),(46,49,'Disponible','Disponible','2025-03-02 00:00:00'),(47,45,'Limpieza','Limpieza','2025-03-21 00:00:00'),(48,37,'Limpieza','Ocupado','2024-03-20 00:00:00'),(49,31,'Disponible','Disponible','2024-08-01 00:00:00'),(50,17,'Ocupado','Limpieza','2024-03-03 00:00:00'),(51,50,'Disponible','Ocupado','2025-05-26 03:18:02'),(52,50,'Ocupado','Disponible','2025-05-26 03:18:58'),(53,5,'Disponible','Ocupado','2025-05-26 03:21:33'),(54,5,'Ocupado','Disponible','2025-05-26 03:21:52'),(55,50,'Disponible','Ocupado','2025-05-26 16:39:00'),(56,1,'Disponible','Limpieza','2025-05-26 16:45:19'),(57,1,'Limpieza','Ocupado','2025-05-26 23:26:00'),(58,1,'Ocupado','Disponible','2025-05-26 23:36:24');
/*!40000 ALTER TABLE `BitacoraEstados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Bonos`
--

DROP TABLE IF EXISTS `Bonos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Bonos` (
  `id_bono` int NOT NULL AUTO_INCREMENT,
  `id_empleado` int NOT NULL,
  `fecha` date NOT NULL,
  `tipo` enum('desempeño','puntualidad','ventas','extra','productividad') NOT NULL,
  `monto` decimal(10,2) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_bono`),
  KEY `id_empleado` (`id_empleado`),
  CONSTRAINT `Bonos_ibfk_1` FOREIGN KEY (`id_empleado`) REFERENCES `Empleados` (`id_empleado`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Bonos`
--

LOCK TABLES `Bonos` WRITE;
/*!40000 ALTER TABLE `Bonos` DISABLE KEYS */;
INSERT INTO `Bonos` VALUES (1,1,'2025-05-01','desempeño',500.00,'Desempeño destacado en atención al cliente'),(2,2,'2025-05-02','puntualidad',300.00,'Sin retardos en el mes de abril'),(3,3,'2025-05-03','ventas',800.00,'Mayor número de ventas en el trimestre'),(4,4,'2025-05-04','extra',200.00,'Apoyo en eventos fuera de horario'),(5,5,'2025-05-05','productividad',450.00,'Cumplimiento de metas operativas'),(6,18,'2025-05-18','ventas',690.00,'Record de upselling a huéspedes'),(7,19,'2025-05-19','extra',180.00,'Disponibilidad inmediata en emergencias'),(8,20,'2025-05-20','productividad',470.00,'Optimización de recursos en su turno'),(9,21,'2025-05-21','desempeño',520.00,'Mejor desempeño de recepción'),(10,22,'2025-05-22','puntualidad',310.00,'Asistencia perfecta'),(11,23,'2025-05-23','ventas',820.00,'Bonificación por referidos'),(12,24,'2025-05-24','extra',220.00,'Asistencia en actividad de último minuto'),(13,25,'2025-05-25','productividad',460.00,'Mejora en tiempos de limpieza'),(14,33,'2025-05-03','ventas',800.00,'Mejor atención en restaurante'),(15,34,'2025-05-04','extra',200.00,'Apoyo nocturno adicional'),(16,35,'2025-05-05','productividad',450.00,'Estandarización de procesos'),(17,36,'2025-05-06','desempeño',400.00,'Gestión de reclamos efectiva'),(18,37,'2025-05-07','puntualidad',250.00,'Excelencia en horarios'),(19,45,'2025-05-08','ventas',600.00,'Cross-selling exitoso');
/*!40000 ALTER TABLE `Bonos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Cliente`
--

DROP TABLE IF EXISTS `Cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Cliente` (
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `tipo_cliente` enum('fisica','moral') NOT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `telefono_celular` varchar(20) DEFAULT NULL,
  `RFC` varchar(30) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `pais_procedencia` varchar(50) DEFAULT NULL,
  `num_reservaciones` int DEFAULT NULL,
  `fecha_alta` date DEFAULT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cliente`
--

LOCK TABLES `Cliente` WRITE;
/*!40000 ALTER TABLE `Cliente` DISABLE KEYS */;
INSERT INTO `Cliente` VALUES (1,'fisica','Av. Reforma 123, Col. Juárez, Ciudad de México','+15541234567','LIA123456A','liam.smith@gmail.com','USA',7,'2023-11-05'),(2,'fisica','123 Oxford Street, London, UK','+441632960123','EMM987654B','emma.johnson@outlook.com','UK',4,'2024-02-20'),(3,'fisica','789 Champs-Élysées, Paris, France','+33140567890','NOA234567C','noah.williams@yahoo.com','France',3,'2022-12-15'),(4,'fisica','5 Chome-1-1 Marunouchi, Tokyo, Japan','+81312345678','OLI345678D',NULL,'Japan',9,'2023-05-10'),(5,'fisica','350 Fifth Avenue, New York, NY, USA','+12129876543','ETH456789E','ethan.jones@gmail.com','USA',6,'2024-07-18'),(6,'fisica','Calle Gran Vía 28, Madrid, Spain','+34911223344','AVA567890F','ava.garcia@hotmail.com','Spain',2,'2023-09-22'),(7,'fisica','Blvd. Manuel Ávila Camacho 200, Col. Lomas Verdes, Naucalpan','+525512345678','MAS678901G','mason.miller@gmail.com','Mexico',5,'2022-03-30'),(8,'fisica','1 Infinite Loop, Cupertino, CA, USA','+14089995555','SOP789012H','sophia.davis@outlook.com','USA',8,'2025-01-12'),(9,'fisica','Carl-Zeiss-Straße 22, Oberkochen, Germany','+497331234567','LUC890123I','lucas.martinez@yahoo.com','Germany',1,'2022-06-07'),(10,'fisica','Av. Paulista, 1578, São Paulo, Brazil','+5511991234567','ISA901234J','isabella.hernandez@gmail.com','Brazil',10,'2024-10-03'),(11,'fisica','Piazza del Duomo, 20122 Milan, Italy','+390223456789','MEI012345K','mei.wang@hotmail.com','Italy',4,'2023-02-28'),(12,'fisica','Königsallee 30, Düsseldorf, Germany','+492114567890','HIR123456L','hiroshi.kim@protonmail.com','Germany',7,'2024-04-11'),(13,'fisica','Calle 16 de Septiembre 45, Centro, Guadalajara','+523335678910','SAN234567M','santiago.perez@gmail.com','Mexico',5,'2023-08-19'),(14,'fisica','Av. López Mateos 1500, Zapopan, Jalisco','+523331234567','AME345678N','amelia.sanchez@outlook.com','Mexico',6,'2022-11-05'),(15,'fisica','Storgatan 19, Stockholm, Sweden','+46812345678','ARI456789O','aria.lopez@yahoo.com','Sweden',3,'2024-03-01'),(16,'fisica','Calle 5 de Mayo 300, Centro, Oaxaca','+528512345678','MAT567890P','mateo.gonzalez@gmail.com','Mexico',9,'2023-06-14'),(17,'fisica','Via Roma 52, Rome, Italy','+390612345678','CHO678901Q','chloe.rodriguez@protonmail.com','Italy',2,'2024-12-02'),(18,'fisica','Wilhelmstraße 49, Berlin, Germany','+493012345678','AID789012R','aiden.rivera@yahoo.com','Germany',4,'2022-09-27'),(19,'fisica','Blvd. Kukulcán 10, Zona Hotelera, Cancún','+529998765432','MIA890123S','mia.gomez@gmail.com','Mexico',8,'2024-05-21'),(20,'fisica','1 Downing Street, London, UK','+442076123456','LEO901234T','leo.diaz@outlook.com','UK',7,'2023-07-03'),(21,'fisica','Carretera Federal 200, Km 5, Boca del Río, Veracruz','+529228765432','ZOE012345U',NULL,'Mexico',1,'2022-02-17'),(22,'fisica','Paseo de la Reforma 250, Col. Juárez, CDMX','+525555123456','LUC123456V','luca.morales@gmail.com','Mexico',5,'2023-10-29'),(23,'fisica','Avenida Brasil 500, Buenos Aires, Argentina','+541125678901','ARJ234567W','arjun.ortiz@protonmail.com','Argentina',6,'2024-08-16'),(24,'fisica','Calle Hidalgo 75, Centro, Puebla','+525222123456','LAY345678X','layla.gutierrez@yahoo.com','Mexico',4,'2022-05-08'),(25,'fisica','Wilhelmstraße 49, Berlin, Germany','+493012345679','ELI456789Y','elias.vasquez@gmail.com','Germany',3,'2025-03-14'),(26,'moral','123 Oxford Street, London, UK','+441632960000','GLO123456A','contact@globaltech.com','UK',15,'2023-01-20'),(27,'moral','350 Fifth Avenue, New York, NY, USA','+121298700000','ACM234567B','contact@acme.com','USA',12,'2024-07-30'),(28,'moral','789 Champs-Élysées, Paris, France','+331405670000','INN345678C','contact@innovatesoft.io','France',18,'2022-11-12'),(29,'moral','10 Downing Street, London, UK','+442076120000','GRE456789D','contact@greenenergy.de','UK',20,'2023-09-01'),(30,'moral','1 Infinite Loop, Cupertino, CA, USA','+140899900000','OME567890E','contact@omegasys.co.uk','USA',14,'2024-02-05'),(31,'moral','Piazza del Duomo, 20122 Milan, Italy','+390223450000','PAN678901F','contact@panaceapharma.eu','Italy',16,'2023-04-17'),(32,'moral','Av. Paulista, 1578, São Paulo, Brazil','+551199000000','TRA789012G','contact@travelworld.co','Brazil',11,'2022-12-22'),(33,'moral','Calle 16 de Septiembre 45, Guadalajara','+523335670000','OCE890123H','contact@oceanviewhotels.com','Mexico',13,'2025-05-01'),(34,'moral','Carl-Zeiss-Straße 22, Oberkochen, Germany','+497331230000','SKY901234I',NULL,'Germany',10,'2024-01-18'),(35,'moral','16 Rue de Rivoli, Paris, France','+331401100000','DAT012345J','contact@datasphere.ai','France',9,'2023-03-05'),(36,'moral','1600 Amphitheatre Parkway, Mountain View, CA, USA','+140899800000','QUA123456K','contact@quantumdynamics.com','USA',18,'2023-06-25'),(37,'moral','Königsallee 30, Düsseldorf, Germany','+492114560000','AUR234567L','contact@aurorafoods.ca','Germany',11,'2022-08-14'),(38,'moral','Piazza del Duomo, 20122 Milan, Italy','+390223460000','ECO345678M','contact@ecobuild.fr','Italy',17,'2024-10-29'),(39,'moral','5 Chome-1-1 Marunouchi, Tokyo, Japan','+813111100000','FUT456789N','contact@futuremobility.jp','Japan',15,'2022-04-07'),(40,'moral','Carl-Zeiss-Straße 22, Oberkochen, Germany','+499115500000','ZEN567890O','contact@zenithmedia.in','Germany',14,'2023-02-20'),(41,'moral','Storgatan 19, Stockholm, Sweden','+468123450000','NOV678901P','contact@novaelectronics.kr','Sweden',16,'2022-07-11'),(42,'moral','Avenida Brasil 500, Buenos Aires, Argentina','+541125670000','VIT789012Q',NULL,'Argentina',12,'2024-04-06'),(43,'moral','Carl-Zeiss-Straße 22, Oberkochen, Germany','+499115550000','SUM890123R','contact@summitfinance.ch','Germany',13,'2022-10-25'),(44,'moral','Storgatan 19, Stockholm, Sweden','+468123455000','HOR901234S','contact@horizonarch.pt','Sweden',10,'2023-12-03'),(45,'moral','Via Roma 52, Rome, Italy','+390612345000','ECO012345T','contact@electrodomesticosluna.com','Italy',19,'2022-06-19'),(46,'moral','Avenida Paulista, 1578, São Paulo, Brazil','+551199100000','AGR123456U','contact@agroexport.com','Brazil',18,'2024-09-15'),(47,'moral','Blvd. Kukulcán 10, Zona Hotelera, Cancún','+529998700000','TER234567V','contact@terraconsult.com.au','Mexico',17,'2023-05-30'),(48,'moral','123 Oxford Street, London, UK','+441632960001','ZEN345678W','contact@zenithmedia.in','UK',14,'2023-07-22'),(49,'moral','Calle Gran Vía 28, Madrid, Spain','+34911223355','QUA456789X','contact@quantumdynamics.com','Spain',12,'2024-11-17'),(50,'moral','5 Chome-1-1 Marunouchi, Tokyo, Japan','+813123450001','ACM567890Y','contact@acme.com','Japan',16,'2022-03-09'),(999,'fisica','Calle Ejemplo 123','+520000000000','RFC123456','test@example.com','Mexico',0,'2025-05-26');
/*!40000 ALTER TABLE `Cliente` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`esteban`@`%`*/ /*!50003 TRIGGER `trg_nuevo_cliente_vip` AFTER INSERT ON `Cliente` FOR EACH ROW INSERT INTO ClientesVIP (id_cliente, nivel_vip, total_reservas, fecha_ingreso)
VALUES (NEW.id_cliente, 'silver', 0, CURDATE()) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `ClienteFisico`
--

DROP TABLE IF EXISTS `ClienteFisico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ClienteFisico` (
  `id_cliente` int NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `sexo` enum('M','F','X') DEFAULT NULL,
  `edad` int DEFAULT NULL,
  `telefono_casa` varchar(20) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ClienteFisico`
--

LOCK TABLES `ClienteFisico` WRITE;
/*!40000 ALTER TABLE `ClienteFisico` DISABLE KEYS */;
INSERT INTO `ClienteFisico` VALUES (1,'Liam','Smith','M',35,'+15541234567','1990-07-01'),(2,'Emma','Johnson','F',28,'+441632960123','1997-07-01'),(3,'Noah','Williams','M',40,'+33140567890','1985-07-01'),(4,'Olivia','Brown','F',32,'+81312345678','1993-07-01'),(5,'Ethan','Jones','M',45,'+12129876543','1980-07-01'),(6,'Ava','Garcia','F',30,'+34911223344','1995-07-01'),(7,'Mason','Miller','M',38,'+525512345678','1987-07-01'),(8,'Sophia','Davis','F',29,'+14089995555','1996-07-01'),(9,'Lucas','Martinez','M',42,'+497331234567','1983-07-01'),(10,'Isabella','Hernandez','F',36,'+5511991234567','1989-07-01'),(11,'Mei','Wang','F',33,'+390223456789','1992-07-01'),(12,'Hiroshi','Kim','M',48,'+492114567890','1977-07-01'),(13,'Santiago','Perez','M',37,'+523335678910','1988-07-01'),(14,'Amelia','Sanchez','F',31,'+523331234567','1994-07-01'),(15,'Aria','Lopez','F',27,'+46812345678','1998-07-01'),(16,'Mateo','Gonzalez','M',50,'+528512345678','1975-07-01'),(17,'Chloe','Rodriguez','F',26,'+390612345678','1999-07-01'),(18,'Aiden','Rivera','M',39,'+493012345678','1986-07-01'),(19,'Mia','Gomez','F',34,'+529998765432','1991-07-01'),(20,'Leo','Diaz','M',41,'+442076123456','1984-07-01'),(21,'Zoe','Reyes','F',24,'+529228765432','2001-07-01'),(22,'Luca','Morales','M',52,'+525555123456','1973-07-01'),(23,'Arjun','Ortiz','M',29,'+541125678901','1996-07-01'),(24,'Layla','Gutierrez','F',56,'+525222123456','1969-07-01'),(25,'Elias','Vasquez','M',47,'+493012345679','1978-07-01'),(53,'Homer','Simpson','M',40,'555-123-4567','1970-05-12');
/*!40000 ALTER TABLE `ClienteFisico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ClienteMoral`
--

DROP TABLE IF EXISTS `ClienteMoral`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ClienteMoral` (
  `id_cliente` int NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `razon_social` varchar(150) DEFAULT NULL,
  `giro` varchar(100) DEFAULT NULL,
  `telefono_empresa` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ClienteMoral`
--

LOCK TABLES `ClienteMoral` WRITE;
/*!40000 ALTER TABLE `ClienteMoral` DISABLE KEYS */;
INSERT INTO `ClienteMoral` VALUES (26,'GlobalTech Inc.','GlobalTech Inc.','Tecnología','+441632960000'),(27,'Acme Corporation','Acme Corporation','Manufactura','+121298700000'),(28,'InnovateSoft LLC','InnovateSoft LLC','Software','+331405670000'),(29,'GreenEnergy AG','GreenEnergy AG','Energía','+442076120000'),(30,'Omega Systems','Omega Systems','Sistemas','+140899900000'),(31,'Panacea Pharma','Panacea Pharma','Farmacéutica','+390223450000'),(32,'TravelWorld Ltd','TravelWorld Ltd','Turismo','+551199000000'),(33,'OceanView Hotels','OceanView Hotels','Hospitalidad','+525512345678'),(34,'Skyline Aviation','Skyline Aviation','Aviación','+497331230000'),(35,'DataSphere','DataSphere','Data Analytics','+331401100000'),(36,'Quantum Dynamics','Quantum Dynamics','Consultoría','+140899800000'),(37,'Aurora Foods','Aurora Foods','Alimentación','+492114560000'),(38,'EcoBuild SA','EcoBuild SA','Construcción','+390223460000'),(39,'FutureMobility','FutureMobility','Transporte','+813111100000'),(40,'TerraConsult','TerraConsult','Consultoría','+493012345679'),(41,'Zenith Media','Zenith Media','Medios','+441632960001'),(42,'Nova Electronics','Nova Electronics','Electrónica','+34911223355'),(43,'VitalHealth','VitalHealth','Salud','+541125670000'),(44,'Summit Finance','Summit Finance','Finanzas','+499115550000'),(45,'Horizon Architecture','Horizon Architecture','Arquitectura','+468123455000'),(46,'Panacea Pharma','Panacea Pharma','Farmacéutica','+390223450001'),(47,'Acme Corporation','Acme Corporation','Manufactura','+121298700001'),(48,'DataSphere','DataSphere','Data Analytics','+331401100001'),(49,'GreenEnergy AG','GreenEnergy AG','Energía','+442076120001'),(50,'TravelWorld Ltd','TravelWorld Ltd','Turismo','+551199000001');
/*!40000 ALTER TABLE `ClienteMoral` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ClientesVIP`
--

DROP TABLE IF EXISTS `ClientesVIP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ClientesVIP` (
  `id_cliente` int NOT NULL,
  `nivel_vip` enum('silver','gold','platinum') NOT NULL,
  `total_reservas` int NOT NULL,
  `fecha_ingreso` date NOT NULL,
  `fecha_fin` date DEFAULT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ClientesVIP`
--

LOCK TABLES `ClientesVIP` WRITE;
/*!40000 ALTER TABLE `ClientesVIP` DISABLE KEYS */;
INSERT INTO `ClientesVIP` VALUES (1,'silver',12,'2025-05-18',NULL),(4,'silver',9,'2025-05-18',NULL),(5,'silver',6,'2025-05-18',NULL),(7,'silver',5,'2025-05-18',NULL),(8,'silver',8,'2025-05-18',NULL),(10,'gold',10,'2025-05-18',NULL),(12,'silver',7,'2025-05-18',NULL),(13,'silver',5,'2025-05-18',NULL),(14,'silver',6,'2025-05-18',NULL),(16,'silver',9,'2025-05-18',NULL),(19,'silver',8,'2025-05-18',NULL),(20,'silver',7,'2025-05-18',NULL),(22,'silver',5,'2025-05-18',NULL),(23,'silver',6,'2025-05-18',NULL),(26,'platinum',15,'2025-05-18',NULL),(27,'platinum',12,'2025-05-18',NULL),(28,'platinum',18,'2025-05-18',NULL),(29,'platinum',20,'2025-05-18',NULL),(30,'platinum',14,'2025-05-18',NULL),(31,'platinum',16,'2025-05-18',NULL),(32,'platinum',11,'2025-05-18',NULL),(33,'platinum',13,'2025-05-18',NULL),(34,'gold',10,'2025-05-18',NULL),(35,'silver',9,'2025-05-18',NULL),(36,'platinum',18,'2025-05-18',NULL),(37,'platinum',11,'2025-05-18',NULL),(38,'platinum',17,'2025-05-18',NULL),(39,'platinum',15,'2025-05-18',NULL),(40,'platinum',14,'2025-05-18',NULL),(41,'platinum',16,'2025-05-18',NULL),(42,'platinum',12,'2025-05-18',NULL),(43,'platinum',13,'2025-05-18',NULL),(44,'gold',10,'2025-05-18',NULL),(45,'platinum',19,'2025-05-18',NULL),(46,'platinum',18,'2025-05-18',NULL),(47,'platinum',17,'2025-05-18',NULL),(48,'platinum',14,'2025-05-18',NULL),(49,'platinum',12,'2025-05-18',NULL),(50,'platinum',16,'2025-05-18',NULL),(51,'silver',0,'2025-05-25',NULL),(52,'silver',0,'2025-05-26',NULL),(53,'silver',0,'2025-05-26',NULL),(999,'silver',1,'2025-05-26',NULL);
/*!40000 ALTER TABLE `ClientesVIP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Consumo`
--

DROP TABLE IF EXISTS `Consumo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Consumo` (
  `id_consumo` int NOT NULL,
  `id_reservacion` int NOT NULL,
  `id_referencia` int NOT NULL,
  `tipo_consumo` enum('servicio','paquete','producto','otro') NOT NULL,
  `precio_unit` decimal(10,2) NOT NULL,
  `cantidad` int NOT NULL,
  `descuentos` decimal(10,2) NOT NULL,
  `subtotal` decimal(10,2) GENERATED ALWAYS AS (((`cantidad` * `precio_unit`) - `descuentos`)) STORED,
  `fecha_hora` datetime NOT NULL,
  PRIMARY KEY (`id_consumo`),
  KEY `id_reservacion` (`id_reservacion`),
  CONSTRAINT `Consumo_ibfk_1` FOREIGN KEY (`id_reservacion`) REFERENCES `Reservacion` (`id_reservacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Consumo`
--

LOCK TABLES `Consumo` WRITE;
/*!40000 ALTER TABLE `Consumo` DISABLE KEYS */;
INSERT INTO `Consumo` (`id_consumo`, `id_reservacion`, `id_referencia`, `tipo_consumo`, `precio_unit`, `cantidad`, `descuentos`, `fecha_hora`) VALUES (1,1,1,'servicio',150.00,1,5.00,'2025-06-15 12:00:00'),(2,3,2,'servicio',160.00,1,10.00,'2025-06-15 12:10:00'),(3,11,3,'servicio',170.00,3,0.00,'2025-06-15 12:20:00'),(4,14,4,'servicio',30.00,3,0.00,'2025-06-15 12:30:00'),(5,21,5,'servicio',50.00,1,0.00,'2025-06-15 12:40:00'),(6,22,6,'servicio',70.00,3,10.00,'2025-06-15 12:50:00'),(7,29,7,'servicio',80.00,1,10.00,'2025-06-15 13:00:00'),(8,32,8,'servicio',120.00,3,0.00,'2025-06-15 13:10:00'),(9,35,9,'servicio',60.00,3,0.00,'2025-06-15 13:20:00'),(10,39,10,'servicio',500.00,1,5.00,'2025-06-15 13:30:00'),(11,41,11,'servicio',700.00,2,5.00,'2025-06-15 13:40:00'),(12,44,12,'servicio',900.00,3,10.00,'2025-06-15 13:50:00'),(13,47,13,'servicio',40.00,3,5.00,'2025-06-15 14:00:00'),(14,1,14,'servicio',60.00,3,5.00,'2025-06-15 14:10:00'),(15,3,15,'servicio',80.00,3,0.00,'2025-06-15 14:20:00'),(16,11,16,'servicio',20.00,1,5.00,'2025-06-15 14:30:00'),(17,14,17,'servicio',50.00,3,10.00,'2025-06-15 14:40:00'),(18,21,18,'servicio',100.00,2,0.00,'2025-06-15 14:50:00'),(19,22,19,'servicio',120.00,1,0.00,'2025-06-15 15:00:00'),(20,29,20,'servicio',200.00,1,5.00,'2025-06-15 15:10:00'),(21,32,1,'paquete',300.00,2,5.00,'2025-06-15 15:20:00'),(22,35,2,'paquete',320.00,3,10.00,'2025-06-15 15:30:00'),(23,39,3,'paquete',340.00,1,0.00,'2025-06-15 15:40:00'),(24,41,4,'paquete',360.00,2,5.00,'2025-06-15 15:50:00'),(25,44,5,'paquete',380.00,1,0.00,'2025-06-15 16:00:00'),(26,47,6,'paquete',400.00,3,10.00,'2025-06-15 16:10:00'),(27,1,7,'paquete',420.00,1,0.00,'2025-06-15 16:20:00'),(28,3,8,'paquete',440.00,2,5.00,'2025-06-15 16:30:00'),(29,11,9,'paquete',460.00,3,0.00,'2025-06-15 16:40:00'),(30,14,10,'paquete',480.00,1,0.00,'2025-06-15 16:50:00'),(31,21,11,'paquete',500.00,2,10.00,'2025-06-15 17:00:00'),(32,22,12,'paquete',520.00,1,0.00,'2025-06-15 17:10:00'),(33,29,13,'paquete',540.00,3,5.00,'2025-06-15 17:20:00'),(34,32,14,'paquete',560.00,2,0.00,'2025-06-15 17:30:00'),(35,35,15,'paquete',580.00,1,5.00,'2025-06-15 17:40:00'),(36,39,1,'otro',0.00,2,5.00,'2025-06-15 17:50:00'),(37,41,2,'otro',0.00,3,5.00,'2025-06-15 18:00:00'),(38,44,3,'otro',0.00,2,0.00,'2025-06-15 18:10:00'),(39,47,4,'otro',0.00,2,5.00,'2025-06-15 18:20:00'),(40,1,5,'otro',0.00,3,0.00,'2025-06-15 18:30:00'),(41,3,6,'otro',0.00,2,5.00,'2025-06-15 18:40:00'),(42,11,7,'otro',0.00,2,10.00,'2025-06-15 18:50:00'),(43,14,8,'otro',0.00,3,0.00,'2025-06-15 19:00:00'),(44,21,9,'otro',0.00,1,0.00,'2025-06-15 19:10:00'),(45,22,10,'otro',0.00,1,5.00,'2025-06-15 19:20:00'),(46,29,11,'otro',0.00,2,5.00,'2025-06-15 19:30:00'),(47,32,12,'otro',0.00,1,10.00,'2025-06-15 19:40:00'),(48,35,13,'otro',0.00,1,0.00,'2025-06-15 19:50:00'),(49,39,14,'otro',0.00,1,5.00,'2025-06-15 20:00:00'),(50,41,15,'otro',0.00,2,10.00,'2025-06-15 20:10:00');
/*!40000 ALTER TABLE `Consumo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DetalleFactura`
--

DROP TABLE IF EXISTS `DetalleFactura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DetalleFactura` (
  `id_factura` int NOT NULL,
  `id_consumo` int NOT NULL,
  PRIMARY KEY (`id_factura`,`id_consumo`),
  KEY `id_consumo` (`id_consumo`),
  CONSTRAINT `DetalleFactura_ibfk_1` FOREIGN KEY (`id_factura`) REFERENCES `Factura` (`id_factura`),
  CONSTRAINT `DetalleFactura_ibfk_2` FOREIGN KEY (`id_consumo`) REFERENCES `Consumo` (`id_consumo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DetalleFactura`
--

LOCK TABLES `DetalleFactura` WRITE;
/*!40000 ALTER TABLE `DetalleFactura` DISABLE KEYS */;
INSERT INTO `DetalleFactura` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20),(21,21),(22,22),(23,23),(24,24),(25,25),(26,26),(27,27),(28,28),(29,29),(30,30),(31,31),(32,32),(33,33),(34,34),(35,35),(36,36),(37,37),(38,38),(39,39),(40,40),(41,41),(42,42),(43,43),(44,44),(45,45),(46,46),(47,47),(48,48),(49,49),(50,50);
/*!40000 ALTER TABLE `DetalleFactura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DetallePaquete`
--

DROP TABLE IF EXISTS `DetallePaquete`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DetallePaquete` (
  `id_paquete` int NOT NULL,
  `id_servicio` int NOT NULL,
  `cantidad` int DEFAULT NULL,
  PRIMARY KEY (`id_paquete`,`id_servicio`),
  KEY `id_servicio` (`id_servicio`),
  CONSTRAINT `DetallePaquete_ibfk_1` FOREIGN KEY (`id_paquete`) REFERENCES `Paquete` (`id_paquete`),
  CONSTRAINT `DetallePaquete_ibfk_2` FOREIGN KEY (`id_servicio`) REFERENCES `Servicio` (`id_servicio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DetallePaquete`
--

LOCK TABLES `DetallePaquete` WRITE;
/*!40000 ALTER TABLE `DetallePaquete` DISABLE KEYS */;
INSERT INTO `DetallePaquete` VALUES (7,1,1),(8,2,1),(9,3,1),(10,4,1),(11,5,1),(12,6,1),(13,7,1),(14,8,1),(15,9,1),(16,10,1),(17,11,1),(18,12,1),(19,13,1),(20,14,1),(21,15,1),(22,16,1),(23,17,1),(24,18,1),(25,19,1),(26,20,1),(27,21,1),(28,22,1),(29,23,1),(30,24,1),(31,25,1),(32,26,1),(33,27,1),(34,28,1),(35,29,1),(36,30,1),(37,31,1),(38,32,1),(39,33,1),(40,34,1),(41,35,1),(42,36,1),(43,37,1),(44,38,1),(45,39,1),(46,40,1),(47,41,1),(48,42,1),(49,43,1),(50,44,1),(51,45,1),(52,46,1),(53,47,1),(54,48,1),(55,49,1),(56,50,1);
/*!40000 ALTER TABLE `DetallePaquete` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DetalleReserva`
--

DROP TABLE IF EXISTS `DetalleReserva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DetalleReserva` (
  `id_reservacion` int DEFAULT NULL,
  `id_habitacion` int DEFAULT NULL,
  `tarifa_por_noche` decimal(10,2) DEFAULT NULL,
  `descuentos` decimal(10,2) DEFAULT NULL,
  KEY `id_reservacion` (`id_reservacion`),
  KEY `id_habitacion` (`id_habitacion`),
  CONSTRAINT `DetalleReserva_ibfk_1` FOREIGN KEY (`id_reservacion`) REFERENCES `Reservacion` (`id_reservacion`),
  CONSTRAINT `DetalleReserva_ibfk_2` FOREIGN KEY (`id_habitacion`) REFERENCES `Habitacion` (`id_habitacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DetalleReserva`
--

LOCK TABLES `DetalleReserva` WRITE;
/*!40000 ALTER TABLE `DetalleReserva` DISABLE KEYS */;
INSERT INTO `DetalleReserva` VALUES (1,1,50.00,10.00),(2,2,80.00,20.00),(3,3,120.00,0.00),(4,4,200.00,10.00),(5,5,500.00,20.00),(6,6,700.00,0.00),(7,7,50.00,10.00),(8,8,80.00,20.00),(9,9,120.00,0.00),(10,10,200.00,10.00),(11,11,500.00,20.00),(12,12,700.00,0.00),(13,13,50.00,10.00),(14,14,80.00,20.00),(15,15,120.00,0.00),(16,16,200.00,10.00),(17,17,500.00,20.00),(18,18,700.00,0.00),(19,19,50.00,10.00),(20,20,80.00,20.00),(21,21,120.00,0.00),(22,22,200.00,10.00),(23,23,500.00,20.00),(24,24,700.00,0.00),(25,25,50.00,10.00),(26,26,80.00,20.00),(27,27,120.00,0.00),(28,28,200.00,10.00),(29,29,500.00,20.00),(30,30,700.00,0.00),(31,31,50.00,10.00),(32,32,80.00,20.00),(33,33,120.00,0.00),(34,34,200.00,10.00),(35,35,500.00,20.00),(36,36,700.00,0.00),(37,37,50.00,10.00),(38,38,80.00,20.00),(39,39,120.00,0.00),(40,40,200.00,10.00),(41,41,500.00,20.00),(42,42,700.00,0.00),(43,43,50.00,10.00),(44,44,80.00,20.00),(45,45,120.00,0.00),(46,46,200.00,10.00),(47,47,500.00,20.00),(48,48,700.00,0.00),(49,49,50.00,10.00),(50,50,80.00,20.00),(50,50,100.00,0.00);
/*!40000 ALTER TABLE `DetalleReserva` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`esteban`@`%`*/ /*!50003 TRIGGER `trg_checkin_ocupa` AFTER INSERT ON `DetalleReserva` FOR EACH ROW UPDATE Habitacion
SET estado = 'Ocupado'
WHERE id_habitacion = NEW.id_habitacion */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`esteban`@`%`*/ /*!50003 TRIGGER `trg_checkout_libera` AFTER DELETE ON `DetalleReserva` FOR EACH ROW UPDATE Habitacion
SET estado = 'Disponible'
WHERE id_habitacion = OLD.id_habitacion */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `Empleados`
--

DROP TABLE IF EXISTS `Empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Empleados` (
  `id_empleado` int NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `departamento` varchar(50) DEFAULT NULL,
  `horario` varchar(20) DEFAULT NULL,
  `sueldo` decimal(10,2) DEFAULT NULL,
  `celular` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_empleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Empleados`
--

LOCK TABLES `Empleados` WRITE;
/*!40000 ALTER TABLE `Empleados` DISABLE KEYS */;
INSERT INTO `Empleados` VALUES (1,'John','Smith','Recepcion','08:00-16:00',2500.00,'+1555000001'),(2,'Emma','Johnson','Housekeeping','16:00-00:00',3000.00,'+4477000002'),(3,'Hugo','Dupont','AlimentosBebidas','00:00-08:00',3500.00,'+3360000003'),(4,'Anna','Müller','Spa','08:00-16:00',4000.00,'+4915100004'),(5,'Yuki','Sato','Gimnasio','16:00-00:00',4500.00,'+8180000005'),(6,'Carlos','Silva','Banquetes','00:00-08:00',5000.00,'+3460000006'),(7,'Li','Wei','Mantenimiento','08:00-16:00',5500.00,'+5255000007'),(8,'Priya','Patel','Seguridad','16:00-00:00',2500.00,'+7900000008'),(9,'Ahmed','Khan','Eventos','00:00-08:00',3000.00,'+6141200009'),(10,'Maria','Rossi','Contabilidad','08:00-16:00',3500.00,'+5511900010'),(11,'Olivia','García','Ventas','16:00-00:00',4000.00,'+9199000011'),(12,'Liam','O\'Connor','Recepcion','00:00-08:00',4500.00,'+1555000012'),(13,'Sophie','Dubois','Housekeeping','08:00-16:00',5000.00,'+4477000013'),(14,'Noah','Schmidt','AlimentosBebidas','16:00-00:00',5500.00,'+3360000014'),(15,'Isabella','Costa','Spa','00:00-08:00',2500.00,'+4915100015'),(16,'Chen','Wang','Gimnasio','08:00-16:00',3000.00,'+8180000016'),(17,'Sara','Ahmed','Banquetes','16:00-00:00',3500.00,'+3460000017'),(18,'Diego','Hernández','Mantenimiento','00:00-08:00',4000.00,'+5255000018'),(19,'Fatima','Al-Sayed','Seguridad','08:00-16:00',4500.00,'+7900000019'),(20,'Sven','Johansson','Eventos','16:00-00:00',5000.00,'+6141200020'),(21,'Natalia','Ivanova','Contabilidad','00:00-08:00',5500.00,'+5511900021'),(22,'Tom','Wilson','Ventas','08:00-16:00',2500.00,'+9199000022'),(23,'Zoe','Brown','Recepcion','16:00-00:00',3000.00,'+1555000023'),(24,'Arjun','Singh','Housekeeping','00:00-08:00',3500.00,'+4477000024'),(25,'Emily','Nguyen','AlimentosBebidas','08:00-16:00',4000.00,'+3360000025'),(26,'Miguel','López','Spa','16:00-00:00',4500.00,'+4915100026'),(27,'Chloe','Martin','Gimnasio','00:00-08:00',5000.00,'+8180000027'),(28,'Lucas','Murphy','Banquetes','08:00-16:00',5500.00,'+3460000028'),(29,'Andrea','Romano','Mantenimiento','16:00-00:00',2500.00,'+5255000029'),(30,'Hannah','Fischer','Seguridad','00:00-08:00',3000.00,'+7900000030'),(31,'Haruto','Tanaka','Eventos','08:00-16:00',3500.00,'+6141200031'),(32,'Isabella','Martinez','Contabilidad','16:00-00:00',4000.00,'+5511900032'),(33,'Ethan','Davis','Ventas','00:00-08:00',4500.00,'+9199000033'),(34,'Elena','Petrova','Recepcion','08:00-16:00',5000.00,'+1555000034'),(35,'Oscar','Nunez','Housekeeping','16:00-00:00',5500.00,'+4477000035'),(36,'Aisha','Mohammed','AlimentosBebidas','00:00-08:00',2500.00,'+3360000036'),(37,'Bruno','Costa','Spa','08:00-16:00',3000.00,'+4915100037'),(38,'Carla','Gomez','Gimnasio','16:00-00:00',3500.00,'+8180000038'),(39,'Oliver','Taylor','Banquetes','00:00-08:00',4000.00,'+3460000039'),(40,'Maya','Roy','Mantenimiento','08:00-16:00',4500.00,'+5255000040'),(41,'Javier','Torres','Seguridad','16:00-00:00',5000.00,'+7900000041'),(42,'Ingrid','Berg','Eventos','00:00-08:00',5500.00,'+6141200042'),(43,'Yousef','Abdullah','Contabilidad','08:00-16:00',2500.00,'+5511900043'),(44,'Marta','Kowalski','Ventas','16:00-00:00',3000.00,'+9199000044'),(45,'Noah','Kim','Recepcion','00:00-08:00',3500.00,'+1555000045'),(46,'Gabriela','Santos','Housekeeping','08:00-16:00',4000.00,'+4477000046'),(47,'William','Clark','AlimentosBebidas','16:00-00:00',4500.00,'+3360000047'),(48,'Lucia','Ferrari','Spa','00:00-08:00',5000.00,'+4915100048'),(49,'Viktor','Novak','Gimnasio','08:00-16:00',5500.00,'+8180000049'),(50,'Emma','Thompson','Banquetes','16:00-00:00',2500.00,'+3460000050');
/*!40000 ALTER TABLE `Empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Factura`
--

DROP TABLE IF EXISTS `Factura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Factura` (
  `id_factura` int NOT NULL,
  `id_reservacion` int NOT NULL,
  `id_cliente` int NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `estado` enum('vigente','pagada','cancelada') NOT NULL,
  `fecha_emision` date NOT NULL,
  PRIMARY KEY (`id_factura`),
  KEY `id_reservacion` (`id_reservacion`),
  KEY `id_cliente` (`id_cliente`),
  CONSTRAINT `Factura_ibfk_1` FOREIGN KEY (`id_reservacion`) REFERENCES `Reservacion` (`id_reservacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Factura`
--

LOCK TABLES `Factura` WRITE;
/*!40000 ALTER TABLE `Factura` DISABLE KEYS */;
INSERT INTO `Factura` VALUES (1,1,41,145.00,'vigente','2025-06-28'),(2,2,9,150.00,'pagada','2025-06-29'),(3,3,3,510.00,'cancelada','2025-06-30'),(4,4,46,90.00,'vigente','2025-07-01'),(5,5,38,50.00,'pagada','2025-07-02'),(6,6,10,200.00,'cancelada','2025-07-03'),(7,7,23,70.00,'vigente','2025-07-04'),(8,8,35,360.00,'pagada','2025-07-05'),(9,9,46,180.00,'cancelada','2025-07-06'),(10,10,15,495.00,'vigente','2025-07-07'),(11,11,24,1395.00,'pagada','2025-07-08'),(12,12,35,2690.00,'cancelada','2025-07-09'),(13,13,44,115.00,'vigente','2025-07-10'),(14,14,18,175.00,'pagada','2025-07-11'),(15,15,42,240.00,'cancelada','2025-07-12'),(16,16,16,15.00,'vigente','2025-07-13'),(17,17,24,140.00,'pagada','2025-07-14'),(18,18,8,200.00,'cancelada','2025-07-15'),(19,19,25,120.00,'vigente','2025-07-16'),(20,20,44,195.00,'pagada','2025-07-17'),(21,21,19,595.00,'cancelada','2025-07-18'),(22,22,33,950.00,'vigente','2025-07-19'),(23,23,24,340.00,'pagada','2025-07-20'),(24,24,2,715.00,'cancelada','2025-07-21'),(25,25,16,380.00,'vigente','2025-07-22'),(26,26,49,1190.00,'pagada','2025-07-23'),(27,27,14,420.00,'cancelada','2025-07-24'),(28,28,43,875.00,'vigente','2025-07-25'),(29,29,16,1380.00,'pagada','2025-07-26'),(30,30,1,480.00,'cancelada','2025-07-27'),(31,31,3,990.00,'vigente','2025-07-28'),(32,32,14,520.00,'pagada','2025-07-29'),(33,33,31,1615.00,'cancelada','2025-07-30'),(34,34,23,1120.00,'vigente','2025-07-31'),(35,35,26,575.00,'pagada','2025-08-01'),(36,36,13,-5.00,'cancelada','2025-08-02'),(37,37,16,-5.00,'vigente','2025-08-03'),(38,38,42,0.00,'pagada','2025-08-04'),(39,39,32,-5.00,'cancelada','2025-08-05'),(40,40,25,0.00,'vigente','2025-08-06'),(41,41,45,-5.00,'pagada','2025-08-07'),(42,42,13,-10.00,'cancelada','2025-08-08'),(43,43,4,0.00,'vigente','2025-08-09'),(44,44,33,0.00,'pagada','2025-08-10'),(45,45,26,-5.00,'cancelada','2025-08-11'),(46,46,27,-5.00,'vigente','2025-08-12'),(47,47,43,-10.00,'pagada','2025-08-13'),(48,48,43,0.00,'cancelada','2025-08-14'),(49,49,30,-5.00,'vigente','2025-08-15'),(50,50,23,-10.00,'pagada','2025-08-16'),(1007,1006,1,1000.00,'vigente','2025-05-26'),(1008,1008,1,550.00,'vigente','2025-05-26');
/*!40000 ALTER TABLE `Factura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Feedback`
--

DROP TABLE IF EXISTS `Feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Feedback` (
  `id_feedback` int NOT NULL,
  `id_reservacion` int NOT NULL,
  `id_cliente` int NOT NULL,
  `tipo` enum('queja','sugerencia') NOT NULL,
  `departamento` varchar(50) NOT NULL,
  `descripcion` text NOT NULL,
  `rating` int NOT NULL,
  `estado` enum('abierto','en_revision','resuelto') NOT NULL,
  `fecha_hora` datetime NOT NULL,
  PRIMARY KEY (`id_feedback`),
  KEY `id_reservacion` (`id_reservacion`),
  KEY `id_cliente` (`id_cliente`),
  CONSTRAINT `Feedback_ibfk_1` FOREIGN KEY (`id_reservacion`) REFERENCES `Reservacion` (`id_reservacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Feedback`
--

LOCK TABLES `Feedback` WRITE;
/*!40000 ALTER TABLE `Feedback` DISABLE KEYS */;
INSERT INTO `Feedback` VALUES (1,1,41,'queja','discoteca','La pista de baile estaba muy resbaladiza y hubo varios tropiezos.',2,'resuelto','2025-07-01 11:00:00'),(2,2,9,'sugerencia','recepcion','Sería útil ofrecer un servicio de check-out exprés para quienes salen temprano.',4,'en_revision','2025-07-01 12:00:00'),(3,3,3,'queja','gimnasio','Las máquinas de cardio tenían ruidos extraños y una no funcionaba.',1,'abierto','2025-07-01 13:00:00'),(4,4,46,'sugerencia','spa','Incluir toallas perfumadas y música relajante en la sala de espera mejoraría la experiencia.',5,'resuelto','2025-07-01 14:00:00'),(5,5,38,'queja','eventos','El sistema de sonido en el salón falló durante la presentación.',2,'en_revision','2025-07-01 15:00:00'),(6,6,10,'sugerencia','mantenimiento','Sería bueno tener dispensadores de gel antibacterial en cada piso.',5,'resuelto','2025-07-01 16:00:00'),(7,7,23,'queja','alimentos_bebidas','El café del desayuno estaba frío y el zumo de naranja sabía aguado.',1,'abierto','2025-07-01 17:00:00'),(8,8,35,'sugerencia','bar','Agregar opciones de cócteles sin alcohol ampliaría la oferta para no bebedores.',4,'en_revision','2025-07-01 18:00:00'),(9,9,46,'queja','golf','El green fee incluía agua estancada en uno de los hoyos, difícil jugar allí.',2,'resuelto','2025-07-01 19:00:00'),(10,10,15,'sugerencia','room_service','Ofrecer menú vegetariano y vegano en servicio a la habitación.',5,'resuelto','2025-07-01 20:00:00'),(11,11,24,'queja','casino','Las máquinas tragamonedas tenían luz intermitente que molestaba la vista.',3,'en_revision','2025-07-01 21:00:00'),(12,12,35,'sugerencia','traslados','Poner Wi-Fi gratuito en los vehículos de traslado mejoraría la comodidad.',4,'resuelto','2025-07-01 22:00:00'),(13,13,44,'queja','recepcion','El personal tardó 30 minutos en responder al llamado de la habitación.',1,'abierto','2025-07-01 23:00:00'),(14,14,18,'sugerencia','spa','Incluir servicio de infusiones y agua de coco en la zona de relajación.',5,'resuelto','2025-07-02 00:00:00'),(15,15,42,'queja','gimnasio','No había suficiente iluminación, me sentí inseguro usando las pesas por la noche.',2,'en_revision','2025-07-02 01:00:00'),(16,16,16,'sugerencia','eventos','Ofrecer paquetes todo incluido para reuniones de día reduciría la logística.',4,'resuelto','2025-07-02 02:00:00'),(17,17,24,'queja','mantenimiento','El ascensor se detuvo entre pisos durante varios minutos, fue angustiante.',1,'abierto','2025-07-02 03:00:00'),(18,18,8,'sugerencia','alimentos_bebidas','Incluir información de alérgenos en cada platillo del menú.',5,'resuelto','2025-07-02 04:00:00'),(19,19,25,'queja','bar','El cóctel llegó con el popote sucio, pedí cambio y tardaron mucho.',2,'en_revision','2025-07-02 05:00:00'),(20,20,44,'sugerencia','golf','Añadir un carrito con bebidas y snacks para los jugadores durante la ronda.',4,'resuelto','2025-07-02 06:00:00'),(21,21,19,'queja','room_service','La comida tardó más de una hora en llegar y llegó fría.',1,'abierto','2025-07-02 07:00:00'),(22,22,33,'sugerencia','casino','Ofrecer torneos semanales de póker con entrada gratuita para huéspedes.',5,'resuelto','2025-07-02 08:00:00'),(23,23,24,'queja','traslados','El chofer llegó 15 minutos tarde y no se disculpó.',2,'en_revision','2025-07-02 09:00:00'),(24,24,2,'sugerencia','recepcion','Habilitar un chat 24/7 en la app del hotel para consultas rápidas.',5,'resuelto','2025-07-02 10:00:00'),(25,25,16,'queja','spa','La sauna estaba apagada y no avisaron hasta que entré.',1,'abierto','2025-07-02 11:00:00'),(26,26,49,'sugerencia','gimnasio','Instalar espejos adicionales para revisar la postura al entrenar.',4,'resuelto','2025-07-02 12:00:00'),(27,27,14,'queja','eventos','Faltó agua embotellada en el salón durante el congreso de la mañana.',2,'en_revision','2025-07-02 13:00:00'),(28,28,43,'sugerencia','mantenimiento','Programar inspecciones semanales del sistema de iluminación en pasillos.',5,'resuelto','2025-07-02 14:00:00'),(29,29,16,'queja','alimentos_bebidas','El postre estaba demasiado dulce y con textura arenosa.',1,'abierto','2025-07-02 15:00:00'),(30,30,1,'sugerencia','bar','Incluir cócteles regionales en la carta para promover la zona.',5,'resuelto','2025-07-02 16:00:00'),(31,31,3,'queja','golf','Los carros de golf tenían pinchaduras y retrasaron el juego.',2,'en_revision','2025-07-02 17:00:00'),(32,32,14,'sugerencia','room_service','Agregar opción de desayuno tarde para huéspedes con salida tardía.',4,'resuelto','2025-07-02 18:00:00'),(33,33,31,'queja','casino','La música en el salón de máquinas era demasiado alta, resultó molesta.',3,'abierto','2025-07-02 19:00:00'),(34,34,23,'sugerencia','traslados','Ofrecer carga USB y Wi-Fi en los vehículos de traslado.',5,'resuelto','2025-07-02 20:00:00'),(35,35,26,'queja','recepcion','No pudieron cambiar la reserva a una vista al mar, a pesar de haber solicitado con anticipación.',1,'en_revision','2025-07-02 21:00:00'),(36,36,13,'sugerencia','spa','Incluir masajes exprés de 30 min para huéspedes con poco tiempo.',4,'resuelto','2025-07-02 22:00:00'),(37,37,16,'queja','gimnasio','Las pesas libres no estaban bien organizadas y fue difícil encontrarlas.',2,'abierto','2025-07-02 23:00:00'),(38,38,42,'sugerencia','eventos','Ofrecer descuentos en catering para eventos corporativos recurrentes.',5,'resuelto','2025-07-03 00:00:00'),(39,39,32,'queja','mantenimiento','Había fugas de agua en el baño de la habitación que nunca arreglaron.',1,'en_revision','2025-07-03 01:00:00'),(40,40,25,'sugerencia','alimentos_bebidas','Crear un menú de tapas para compartir en el restaurante por la noche.',5,'resuelto','2025-07-03 02:00:00'),(41,41,45,'queja','bar','El camarero olvidó una de las bebidas que pedimos y no lo compensaron.',2,'abierto','2025-07-03 03:00:00'),(42,42,13,'sugerencia','golf','Implementar un sistema de reservas de tee time en línea para evitar esperas.',5,'resuelto','2025-07-03 04:00:00'),(43,43,4,'queja','room_service','La orden llegó equivocada y tuvieron que volver a enviarla.',1,'en_revision','2025-07-03 05:00:00'),(44,44,33,'sugerencia','casino','Introducir mesas de blackjack con límite bajo para principiantes.',4,'resuelto','2025-07-03 06:00:00'),(45,45,26,'queja','traslados','El conductor del traslado fue muy brusco al conducir y me sentí inseguro.',2,'abierto','2025-07-03 07:00:00'),(46,46,27,'sugerencia','recepcion','Añadir señalización clara en el lobby para encontrar rápidamente la salida de emergencia.',5,'resuelto','2025-07-03 08:00:00');
/*!40000 ALTER TABLE `Feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Habitacion`
--

DROP TABLE IF EXISTS `Habitacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Habitacion` (
  `id_habitacion` int NOT NULL,
  `id_tipo` int DEFAULT NULL,
  `numero` varchar(10) DEFAULT NULL,
  `piso` int DEFAULT NULL,
  `estado` varchar(50) DEFAULT 'disponible',
  PRIMARY KEY (`id_habitacion`),
  KEY `id_tipo` (`id_tipo`),
  CONSTRAINT `Habitacion_ibfk_1` FOREIGN KEY (`id_tipo`) REFERENCES `TipoHabitacion` (`id_tipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Habitacion`
--

LOCK TABLES `Habitacion` WRITE;
/*!40000 ALTER TABLE `Habitacion` DISABLE KEYS */;
INSERT INTO `Habitacion` VALUES (1,1,'101',1,'disponible'),(2,2,'102',1,'disponible'),(3,3,'103',1,'disponible'),(4,4,'104',1,'disponible'),(5,5,'105',1,'disponible'),(6,6,'106',1,'disponible'),(7,1,'107',1,'disponible'),(8,2,'108',1,'disponible'),(9,3,'109',1,'disponible'),(10,4,'110',1,'disponible'),(11,5,'111',2,'disponible'),(12,6,'112',2,'disponible'),(13,1,'113',2,'disponible'),(14,2,'114',2,'disponible'),(15,3,'115',2,'disponible'),(16,4,'116',2,'disponible'),(17,5,'117',2,'disponible'),(18,6,'118',2,'disponible'),(19,1,'119',2,'disponible'),(20,2,'120',2,'disponible'),(21,3,'121',3,'disponible'),(22,4,'122',3,'disponible'),(23,5,'123',3,'disponible'),(24,6,'124',3,'disponible'),(25,1,'125',3,'disponible'),(26,2,'126',3,'disponible'),(27,3,'127',3,'disponible'),(28,4,'128',3,'disponible'),(29,5,'129',3,'disponible'),(30,6,'130',3,'disponible'),(31,1,'131',4,'disponible'),(32,2,'132',4,'disponible'),(33,3,'133',4,'disponible'),(34,4,'134',4,'disponible'),(35,5,'135',4,'disponible'),(36,6,'136',4,'disponible'),(37,1,'137',4,'disponible'),(38,2,'138',4,'disponible'),(39,3,'139',4,'disponible'),(40,4,'140',4,'disponible'),(41,5,'141',5,'disponible'),(42,6,'142',5,'disponible'),(43,1,'143',5,'disponible'),(44,2,'144',5,'disponible'),(45,3,'145',5,'disponible'),(46,4,'146',5,'disponible'),(47,5,'147',5,'disponible'),(48,6,'148',5,'disponible'),(49,1,'149',5,'disponible'),(50,2,'150',5,'Ocupado');
/*!40000 ALTER TABLE `Habitacion` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`esteban`@`%`*/ /*!50003 TRIGGER `trg_log_estado_habitacion` BEFORE UPDATE ON `Habitacion` FOR EACH ROW BEGIN
  INSERT INTO BitacoraEstados (IDHabitacion, EstadoAnterior, EstadoNuevo, FechaHora)
  VALUES (OLD.id_habitacion, OLD.estado, NEW.estado, NOW());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `Huesped`
--

DROP TABLE IF EXISTS `Huesped`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Huesped` (
  `id_cliente` int NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `sexo` enum('M','F','X') DEFAULT NULL,
  `edad` int DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `num_reservaciones` int DEFAULT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Huesped`
--

LOCK TABLES `Huesped` WRITE;
/*!40000 ALTER TABLE `Huesped` DISABLE KEYS */;
INSERT INTO `Huesped` VALUES (1,'Liam','Smith','M',35,'1990-07-01','+15541234567','liam.smith@gmail.com',7),(2,'Emma','Johnson','F',28,'1997-07-01','+441632960123','emma.johnson@outlook.com',4),(3,'Noah','Williams','M',40,'1985-07-01','+33140567890','noah.williams@yahoo.com',3),(4,'Olivia','Brown','F',32,'1993-07-01','+81312345678','olivia.brown@protonmail.com',9),(5,'Ethan','Jones','M',45,'1980-07-01','+12129876543','ethan.jones@gmail.com',6),(6,'Ava','Garcia','F',30,'1995-07-01','+34911223344','ava.garcia@hotmail.com',2),(7,'Mason','Miller','M',38,'1987-07-01','+525512345678','mason.miller@gmail.com',5),(8,'Sophia','Davis','F',29,'1996-07-01','+14089995555','sophia.davis@outlook.com',8),(9,'Lucas','Martinez','M',42,'1983-07-01','+497331234567','lucas.martinez@yahoo.com',1),(10,'Isabella','Hernandez','F',36,'1989-07-01','+5511991234567','isabella.hernandez@gmail.com',10),(11,'Mei','Wang','F',33,'1992-07-01','+390223456789','mei.wang@hotmail.com',4),(12,'Hiroshi','Kim','M',48,'1977-07-01','+492114567890','hiroshi.kim@protonmail.com',7),(13,'Santiago','Perez','M',37,'1988-07-01','+523335678910','santiago.perez@gmail.com',5),(14,'Amelia','Sanchez','F',31,'1994-07-01','+523331234567','amelia.sanchez@outlook.com',6),(15,'Aria','Lopez','F',27,'1998-07-01','+46812345678','aria.lopez@yahoo.com',3),(16,'Mateo','Gonzalez','M',50,'1975-07-01','+528512345678','mateo.gonzalez@gmail.com',9),(17,'Chloe','Rodriguez','F',26,'1999-07-01','+390612345678','chloe.rodriguez@protonmail.com',2),(18,'Aiden','Rivera','M',39,'1986-07-01','+493012345678','aiden.rivera@yahoo.com',4),(19,'Mia','Gomez','F',34,'1991-07-01','+529998765432','mia.gomez@gmail.com',8),(20,'Leo','Diaz','M',41,'1984-07-01','+442076123456','leo.diaz@outlook.com',7),(21,'Zoe','Reyes','F',24,'2001-07-01','+529228765432','zoe.reyes@hotmail.com',1),(22,'Luca','Morales','M',52,'1973-07-01','+525555123456','luca.morales@gmail.com',5),(23,'Arjun','Ortiz','M',29,'1996-07-01','+541125678901','arjun.ortiz@protonmail.com',6),(24,'Layla','Gutierrez','F',56,'1969-07-01','+525222123456','layla.gutierrez@yahoo.com',4),(25,'Elias','Vasquez','M',47,'1978-07-01','+493012345679','elias.vasquez@gmail.com',3),(26,'GlobalTech Inc.','GlobalTech Inc.','X',NULL,NULL,'+441632960000','contact@globaltech.com',15),(27,'Acme Corporation','Acme Corporation','X',NULL,NULL,'+121298700000','contact@acme.com',12),(28,'InnovateSoft LLC','InnovateSoft LLC','X',NULL,NULL,'+331405670000','contact@innovatesoft.io',18),(29,'GreenEnergy AG','GreenEnergy AG','X',NULL,NULL,'+442076120000','contact@greenenergy.de',20),(30,'Omega Systems','Omega Systems','X',NULL,NULL,'+140899900000','contact@omegasys.co.uk',14),(31,'Panacea Pharma','Panacea Pharma','X',NULL,NULL,'+390223450000','contact@panaceapharma.eu',16),(32,'TravelWorld Ltd','TravelWorld Ltd','X',NULL,NULL,'+551199000000','contact@travelworld.co',11),(33,'OceanView Hotels','OceanView Hotels','X',NULL,NULL,'+525512345678','contact@oceanviewhotels.com',13),(34,'Skyline Aviation','Skyline Aviation','X',NULL,NULL,'+497331230000','contact@skyline-aviation.com',10),(35,'DataSphere','DataSphere','X',NULL,NULL,'+331401100000','contact@datasphere.ai',9),(36,'Quantum Dynamics','Quantum Dynamics','X',NULL,NULL,'+140899800000','contact@quantumdynamics.com',18),(37,'Aurora Foods','Aurora Foods','X',NULL,NULL,'+492114560000','contact@aurorafoods.ca',11),(38,'EcoBuild SA','EcoBuild SA','X',NULL,NULL,'+390223460000','contact@ecobuild.fr',17),(39,'FutureMobility','FutureMobility','X',NULL,NULL,'+813111100000','contact@futuremobility.jp',15),(40,'TerraConsult','TerraConsult','X',NULL,NULL,'+493012345679','contact@zenithmedia.in',14),(41,'Zenith Media','Zenith Media','X',NULL,NULL,'+441632960001','contact@novaelectronics.kr',16),(42,'Nova Electronics','Nova Electronics','X',NULL,NULL,'+34911223355','contact@vitalhealth.org',12),(43,'VitalHealth','VitalHealth','X',NULL,NULL,'+541125670000','contact@summitfinance.ch',13),(44,'Summit Finance','Summit Finance','X',NULL,NULL,'+499115550000','contact@horizonarch.pt',10),(45,'Horizon Architecture','Horizon Architecture','X',NULL,NULL,'+468123455000','contact@electrodomesticosluna.com',19),(46,'Panacea Pharma','Panacea Pharma','X',NULL,NULL,'+390223450001','contact@agroexport.com',18),(47,'Acme Corporation','Acme Corporation','X',NULL,NULL,'+121298700001','contact@terraconsult.com.au',17),(48,'DataSphere','DataSphere','X',NULL,NULL,'+331401100001','contact@zenithmedia.in',14),(49,'GreenEnergy AG','GreenEnergy AG','X',NULL,NULL,'+442076120001','contact@quantumdynamics.com',12),(50,'TravelWorld Ltd','TravelWorld Ltd','X',NULL,NULL,'+551199000001','contact@acme.com',16);
/*!40000 ALTER TABLE `Huesped` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Inventario`
--

DROP TABLE IF EXISTS `Inventario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Inventario` (
  `id_inventario` int NOT NULL,
  `tipo` enum('habitacion','servicio') DEFAULT NULL,
  `id_recurso` int DEFAULT NULL,
  `estado` enum('disponible','reservado','bloqueado') DEFAULT NULL,
  PRIMARY KEY (`id_inventario`),
  KEY `id_recurso` (`id_recurso`),
  CONSTRAINT `Inventario_ibfk_1` FOREIGN KEY (`id_recurso`) REFERENCES `Recursos` (`id_recurso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Inventario`
--

LOCK TABLES `Inventario` WRITE;
/*!40000 ALTER TABLE `Inventario` DISABLE KEYS */;
INSERT INTO `Inventario` VALUES (1,'habitacion',1,'disponible'),(2,'habitacion',2,'reservado'),(3,'habitacion',3,'bloqueado'),(4,'habitacion',4,'disponible'),(5,'habitacion',5,'reservado'),(6,'habitacion',6,'bloqueado'),(7,'habitacion',7,'disponible'),(8,'habitacion',8,'reservado'),(9,'habitacion',9,'bloqueado'),(10,'habitacion',10,'disponible'),(11,'habitacion',11,'reservado'),(12,'habitacion',12,'bloqueado'),(13,'habitacion',13,'disponible'),(14,'habitacion',14,'reservado'),(15,'habitacion',15,'bloqueado'),(16,'habitacion',16,'disponible'),(17,'habitacion',17,'reservado'),(18,'habitacion',18,'bloqueado'),(19,'habitacion',19,'disponible'),(20,'habitacion',20,'reservado'),(21,'habitacion',21,'bloqueado'),(22,'habitacion',22,'disponible'),(23,'habitacion',23,'reservado'),(24,'habitacion',24,'bloqueado'),(25,'servicio',25,'disponible'),(26,'servicio',26,'reservado'),(27,'servicio',27,'bloqueado'),(28,'servicio',28,'disponible'),(29,'servicio',29,'reservado'),(30,'servicio',30,'bloqueado'),(31,'servicio',31,'disponible'),(32,'servicio',32,'reservado'),(33,'servicio',33,'bloqueado'),(34,'servicio',34,'disponible'),(35,'servicio',35,'reservado'),(36,'servicio',36,'bloqueado'),(37,'servicio',37,'disponible'),(38,'servicio',38,'reservado'),(39,'servicio',39,'bloqueado'),(40,'servicio',40,'disponible'),(41,'servicio',41,'reservado'),(42,'servicio',42,'bloqueado'),(43,'servicio',43,'disponible'),(44,'servicio',44,'reservado'),(45,'servicio',45,'bloqueado'),(46,'servicio',46,'disponible'),(47,'servicio',47,'reservado'),(48,'servicio',48,'bloqueado'),(49,'servicio',49,'disponible'),(50,'servicio',50,'reservado');
/*!40000 ALTER TABLE `Inventario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pago`
--

DROP TABLE IF EXISTS `Pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Pago` (
  `id_pago` int NOT NULL,
  `id_reservacion` int NOT NULL,
  `id_factura` int NOT NULL,
  `monto` decimal(10,2) NOT NULL,
  `metodo` enum('tarjeta','efectivo','transferencia','cheque','paypal','otro') NOT NULL,
  `estado` enum('registrado','aplicado','reembolso','cancelado') NOT NULL,
  `fecha_hora` datetime NOT NULL,
  PRIMARY KEY (`id_pago`),
  KEY `id_reservacion` (`id_reservacion`),
  KEY `id_factura` (`id_factura`),
  CONSTRAINT `Pago_ibfk_1` FOREIGN KEY (`id_reservacion`) REFERENCES `Reservacion` (`id_reservacion`),
  CONSTRAINT `Pago_ibfk_2` FOREIGN KEY (`id_factura`) REFERENCES `Factura` (`id_factura`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pago`
--

LOCK TABLES `Pago` WRITE;
/*!40000 ALTER TABLE `Pago` DISABLE KEYS */;
INSERT INTO `Pago` VALUES (1,1,1,145.00,'tarjeta','registrado','2025-08-01 09:00:00'),(2,2,2,150.00,'efectivo','aplicado','2025-08-01 10:00:00'),(3,3,3,510.00,'transferencia','reembolso','2025-08-01 11:00:00'),(4,4,4,90.00,'cheque','cancelado','2025-08-01 12:00:00'),(5,5,5,50.00,'paypal','registrado','2025-08-01 13:00:00'),(6,6,6,200.00,'otro','aplicado','2025-08-01 14:00:00'),(7,7,7,70.00,'tarjeta','reembolso','2025-08-01 15:00:00'),(8,8,8,360.00,'efectivo','cancelado','2025-08-01 16:00:00'),(9,9,9,180.00,'transferencia','registrado','2025-08-01 17:00:00'),(10,10,10,495.00,'cheque','aplicado','2025-08-01 18:00:00'),(11,11,11,1395.00,'paypal','reembolso','2025-08-01 19:00:00'),(12,12,12,2690.00,'otro','cancelado','2025-08-01 20:00:00'),(13,13,13,115.00,'tarjeta','registrado','2025-08-01 21:00:00'),(14,14,14,175.00,'efectivo','aplicado','2025-08-01 22:00:00'),(15,15,15,240.00,'transferencia','reembolso','2025-08-01 23:00:00'),(16,16,16,15.00,'cheque','cancelado','2025-08-02 00:00:00'),(17,17,17,140.00,'paypal','registrado','2025-08-02 01:00:00'),(18,18,18,200.00,'otro','aplicado','2025-08-02 02:00:00'),(19,19,19,120.00,'tarjeta','reembolso','2025-08-02 03:00:00'),(20,20,20,195.00,'efectivo','cancelado','2025-08-02 04:00:00'),(21,21,21,595.00,'transferencia','registrado','2025-08-02 05:00:00'),(22,22,22,950.00,'cheque','aplicado','2025-08-02 06:00:00'),(23,23,23,340.00,'paypal','reembolso','2025-08-02 07:00:00'),(24,24,24,715.00,'otro','cancelado','2025-08-02 08:00:00'),(25,25,25,380.00,'tarjeta','registrado','2025-08-02 09:00:00'),(26,26,26,1190.00,'efectivo','aplicado','2025-08-02 10:00:00'),(27,27,27,420.00,'transferencia','reembolso','2025-08-02 11:00:00'),(28,28,28,875.00,'cheque','cancelado','2025-08-02 12:00:00'),(29,29,29,1380.00,'paypal','registrado','2025-08-02 13:00:00'),(30,30,30,480.00,'otro','aplicado','2025-08-02 14:00:00'),(31,31,31,990.00,'tarjeta','reembolso','2025-08-02 15:00:00'),(32,32,32,520.00,'efectivo','cancelado','2025-08-02 16:00:00'),(33,33,33,1615.00,'transferencia','registrado','2025-08-02 17:00:00'),(34,34,34,1120.00,'cheque','aplicado','2025-08-02 18:00:00'),(35,35,35,575.00,'paypal','reembolso','2025-08-02 19:00:00'),(36,36,36,-5.00,'otro','cancelado','2025-08-02 20:00:00'),(37,37,37,-5.00,'tarjeta','registrado','2025-08-02 21:00:00'),(38,38,38,0.00,'efectivo','aplicado','2025-08-02 22:00:00'),(39,39,39,-5.00,'transferencia','reembolso','2025-08-02 23:00:00'),(40,40,40,0.00,'cheque','cancelado','2025-08-03 00:00:00'),(41,41,41,-5.00,'paypal','registrado','2025-08-03 01:00:00'),(42,42,42,-10.00,'otro','aplicado','2025-08-03 02:00:00'),(43,43,43,0.00,'tarjeta','reembolso','2025-08-03 03:00:00'),(44,44,44,0.00,'efectivo','cancelado','2025-08-03 04:00:00'),(45,45,45,-5.00,'transferencia','registrado','2025-08-03 05:00:00'),(46,46,46,-5.00,'cheque','aplicado','2025-08-03 06:00:00'),(47,47,47,-10.00,'paypal','reembolso','2025-08-03 07:00:00'),(48,48,48,0.00,'otro','cancelado','2025-08-03 08:00:00'),(49,49,49,-5.00,'tarjeta','registrado','2025-08-03 09:00:00'),(50,50,50,-10.00,'efectivo','aplicado','2025-08-03 10:00:00');
/*!40000 ALTER TABLE `Pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Paquete`
--

DROP TABLE IF EXISTS `Paquete`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Paquete` (
  `id_paquete` int NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `categoria` enum('interno','externo','mixto') NOT NULL,
  `precio_fijo` decimal(10,2) DEFAULT NULL,
  `es_promo` tinyint(1) DEFAULT '0',
  `vigente_desde` date DEFAULT NULL,
  `vigente_hasta` date DEFAULT NULL,
  PRIMARY KEY (`id_paquete`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Paquete`
--

LOCK TABLES `Paquete` WRITE;
/*!40000 ALTER TABLE `Paquete` DISABLE KEYS */;
INSERT INTO `Paquete` VALUES (7,'spa_relax','interno',600.00,0,'2025-01-01','2025-12-31'),(8,'spa_detox','interno',650.00,1,'2025-01-01','2025-03-31'),(9,'spa_couple','interno',1200.00,1,'2025-04-01','2025-06-30'),(10,'spa_day','interno',400.00,0,'2025-01-01','2025-12-31'),(11,'gimnasio_clasico','interno',300.00,0,'2025-01-01','2025-12-31'),(12,'gimnasio_personal_trainer','interno',500.00,1,'2025-01-15','2025-02-28'),(13,'gimnasio_24h','interno',350.00,0,'2025-01-01','2025-12-31'),(14,'restaurant_gourmet','interno',800.00,0,'2025-01-01','2025-12-31'),(15,'restaurant_internacional','interno',700.00,0,'2025-01-01','2025-12-31'),(16,'restaurant_buffet_desayuno','interno',300.00,1,'2025-07-01','2025-09-30'),(17,'restaurant_cena_romantica','interno',900.00,1,'2025-02-01','2025-02-14'),(18,'salon_bodas','interno',5000.00,0,'2025-01-01','2025-12-31'),(19,'salon_conferencias','interno',3000.00,1,'2025-04-01','2025-06-30'),(20,'salon_corporativo','interno',3500.00,0,'2025-01-01','2025-12-31'),(21,'bar_lounge','interno',400.00,0,'2025-01-01','2025-12-31'),(22,'bar_rooftop','interno',600.00,1,'2025-06-15','2025-08-31'),(23,'bar_vinoteca','interno',450.00,0,'2025-01-01','2025-12-31'),(24,'discoteca_nocturna','interno',300.00,0,'2025-01-01','2025-12-31'),(25,'discoteca_vip','interno',800.00,1,'2025-10-01','2025-12-31'),(26,'golf_green_fee','interno',200.00,0,'2025-01-01','2025-12-31'),(27,'golf_clinic','interno',250.00,1,'2025-07-01','2025-09-30'),(28,'roomservice_desayuno','interno',150.00,0,'2025-01-01','2025-12-31'),(29,'roomservice_cena','interno',200.00,1,'2025-12-01','2025-12-31'),(30,'roomservice_aperitivo','interno',100.00,0,'2025-01-01','2025-12-31'),(31,'casino_acceso','interno',100.00,0,'2025-01-01','2025-12-31'),(32,'tour_parque_diversion','externo',1000.00,1,'2025-06-01','2025-08-31'),(33,'tour_zoologico','externo',500.00,0,'2025-01-01','2025-12-31'),(34,'tour_acuatico','externo',800.00,1,'2025-07-01','2025-09-30'),(35,'tour_museo_arte','externo',300.00,0,'2025-01-01','2025-12-31'),(36,'tour_museo_historia','externo',250.00,0,'2025-01-01','2025-12-31'),(37,'tour_festival_musica','externo',1500.00,1,'2025-07-10','2025-07-20'),(38,'tour_festival_cultura','externo',1200.00,1,'2025-10-10','2025-10-20'),(39,'tour_zona_historica_ciudad','externo',400.00,1,'2025-04-01','2025-06-30'),(40,'tour_zona_historica_arqueologica','externo',600.00,0,'2025-01-01','2025-12-31'),(41,'tour_vitivinicola','externo',700.00,1,'2025-09-01','2025-11-30'),(42,'tour_gastronomico_ciudad','externo',900.00,0,'2025-01-01','2025-12-31'),(43,'tour_ciclismo','externo',200.00,0,'2025-01-01','2025-12-31'),(44,'tour_naturalista','externo',350.00,0,'2025-01-01','2025-12-31'),(45,'tour_observacion_aves','externo',300.00,1,'2025-04-15','2025-05-15'),(46,'tour_arquitectura','externo',450.00,0,'2025-01-01','2025-12-31'),(47,'traslado_aeropuerto','externo',150.00,0,'2025-01-01','2025-12-31'),(48,'traslado_estacion_tren','externo',100.00,0,'2025-01-01','2025-12-31'),(49,'traslado_harbor','externo',120.00,0,'2025-01-01','2025-12-31'),(50,'traslado_city_tour','externo',200.00,1,'2025-12-01','2025-12-31'),(51,'traslado_pueblo_magico','externo',350.00,0,'2025-01-01','2025-12-31'),(52,'paseo_barco','externo',250.00,1,'2025-06-01','2025-08-31'),(53,'excursion_buceo','externo',1000.00,1,'2025-08-01','2025-09-15'),(54,'excursion_senderismo','externo',200.00,1,'2025-03-01','2025-05-31'),(55,'tour_fotografia','externo',300.00,1,'2025-10-01','2025-11-30'),(56,'servicio_autos_privado','externo',500.00,0,'2025-01-01','2025-12-31');
/*!40000 ALTER TABLE `Paquete` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Recursos`
--

DROP TABLE IF EXISTS `Recursos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Recursos` (
  `id_recurso` int NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  PRIMARY KEY (`id_recurso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Recursos`
--

LOCK TABLES `Recursos` WRITE;
/*!40000 ALTER TABLE `Recursos` DISABLE KEYS */;
INSERT INTO `Recursos` VALUES (1,'Habitación 101',1),(2,'Habitación 102',1),(3,'Habitación 103',1),(4,'Habitación 104',1),(5,'Habitación 105',1),(6,'Habitación 106',1),(7,'Habitación 107',1),(8,'Habitación 108',1),(9,'Habitación 109',1),(10,'Habitación 110',1),(11,'Habitación 111',1),(12,'Habitación 112',1),(13,'Habitación 113',1),(14,'Habitación 114',1),(15,'Habitación 115',1),(16,'Habitación 116',1),(17,'Habitación 117',1),(18,'Habitación 118',1),(19,'Habitación 119',1),(20,'Habitación 120',1),(21,'Habitación 121',1),(22,'Habitación 122',1),(23,'Habitación 123',1),(24,'Habitación 124',1),(25,'Spa Sala 1',1),(26,'Spa Sala 2',1),(27,'Spa Sala 3',1),(28,'Spa Sala 4',1),(29,'Spa Sala 5',1),(30,'Gimnasio Equipo 1',1),(31,'Gimnasio Equipo 2',1),(32,'Gimnasio Equipo 3',1),(33,'Gimnasio Equipo 4',1),(34,'Gimnasio Equipo 5',1),(35,'Restaurante Mesa 1',1),(36,'Restaurante Mesa 2',1),(37,'Restaurante Mesa 3',1),(38,'Restaurante Mesa 4',1),(39,'Restaurante Mesa 5',1),(40,'Restaurante Mesa 6',1),(41,'Restaurante Mesa 7',1),(42,'Restaurante Mesa 8',1),(43,'Restaurante Mesa 9',1),(44,'Restaurante Mesa 10',1),(45,'Salón de Eventos A',1),(46,'Salón de Eventos B',1),(47,'Salón de Eventos C',1),(48,'Discoteca Principal',1),(49,'Bar Principal',1),(50,'Campo de Golf 18 hoyos',1);
/*!40000 ALTER TABLE `Recursos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ReservaHuesped`
--

DROP TABLE IF EXISTS `ReservaHuesped`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ReservaHuesped` (
  `id_cliente` int NOT NULL,
  `id_reservacion` int NOT NULL,
  `es_titular` tinyint(1) DEFAULT NULL,
  `estado` enum('previsto','en_casa','no_aparecio') DEFAULT NULL,
  PRIMARY KEY (`id_cliente`,`id_reservacion`),
  KEY `id_reservacion` (`id_reservacion`),
  CONSTRAINT `ReservaHuesped_ibfk_2` FOREIGN KEY (`id_reservacion`) REFERENCES `Reservacion` (`id_reservacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ReservaHuesped`
--

LOCK TABLES `ReservaHuesped` WRITE;
/*!40000 ALTER TABLE `ReservaHuesped` DISABLE KEYS */;
INSERT INTO `ReservaHuesped` VALUES (1,30,1,'previsto'),(2,24,1,'previsto'),(3,3,1,'en_casa'),(3,31,1,'no_aparecio'),(4,43,1,'previsto'),(8,18,1,'en_casa'),(9,2,1,'en_casa'),(10,6,1,'previsto'),(13,36,1,'no_aparecio'),(13,42,1,'no_aparecio'),(14,27,1,'en_casa'),(14,32,1,'en_casa'),(15,10,1,'no_aparecio'),(16,16,1,'en_casa'),(16,25,1,'previsto'),(16,29,1,'en_casa'),(16,37,1,'previsto'),(18,14,1,'en_casa'),(19,21,1,'en_casa'),(23,7,1,'en_casa'),(23,34,1,'previsto'),(23,50,1,'no_aparecio'),(24,11,1,'en_casa'),(24,17,1,'previsto'),(24,23,1,'no_aparecio'),(25,19,1,'previsto'),(25,40,1,'en_casa'),(26,35,1,'en_casa'),(26,45,1,'previsto'),(27,46,1,'no_aparecio'),(30,49,1,'no_aparecio'),(31,33,1,'en_casa'),(32,39,1,'en_casa'),(33,22,1,'en_casa'),(33,44,1,'en_casa'),(35,8,1,'no_aparecio'),(35,12,1,'no_aparecio'),(38,5,1,'no_aparecio'),(41,1,1,'en_casa'),(42,15,1,'no_aparecio'),(42,38,1,'en_casa'),(43,28,1,'previsto'),(43,47,1,'en_casa'),(43,48,1,'previsto'),(44,13,1,'en_casa'),(44,20,1,'previsto'),(45,41,1,'en_casa'),(46,4,1,'en_casa'),(46,9,1,'previsto'),(49,26,1,'no_aparecio');
/*!40000 ALTER TABLE `ReservaHuesped` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Reservacion`
--

DROP TABLE IF EXISTS `Reservacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Reservacion` (
  `id_reservacion` int NOT NULL,
  `id_cliente` int DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  `metodo` enum('internet','telefono','visita_personal') DEFAULT NULL,
  `check_in` date DEFAULT NULL,
  `check_out` date DEFAULT NULL,
  `num_personas` int DEFAULT NULL,
  `estado` enum('confirmada','activa','cancelada','finalizada') DEFAULT NULL,
  `motivo_cancelacion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_reservacion`),
  KEY `id_cliente` (`id_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Reservacion`
--

LOCK TABLES `Reservacion` WRITE;
/*!40000 ALTER TABLE `Reservacion` DISABLE KEYS */;
INSERT INTO `Reservacion` VALUES (1,41,'2024-02-27','internet','2025-06-24','2025-06-27',2,'activa',NULL),(2,9,'2025-01-12','internet','2025-06-22','2025-06-27',1,'finalizada',NULL),(3,3,'2024-01-16','internet','2025-06-07','2025-06-09',1,'activa',NULL),(4,46,'2024-11-28','visita_personal','2025-06-18','2025-06-22',2,'finalizada',NULL),(5,38,'2024-05-22','internet','2025-05-26','2025-05-30',4,'cancelada','Tarifas'),(6,10,'2024-04-20','telefono','2025-06-04','2025-06-05',4,'confirmada',NULL),(7,23,'2025-03-09','telefono','2025-06-20','2025-06-23',1,'finalizada',NULL),(8,35,'2024-03-04','telefono','2025-06-03','2025-06-08',3,'cancelada','Emergencia'),(9,46,'2024-02-05','internet','2025-06-22','2025-06-24',3,'confirmada',NULL),(10,15,'2025-03-19','internet','2025-05-21','2025-05-30',4,'cancelada','Emergencia'),(11,24,'2024-06-30','internet','2025-06-22','2025-06-25',1,'activa',NULL),(12,35,'2025-01-08','internet','2025-05-10','2025-05-25',4,'cancelada','Emergencia'),(13,44,'2024-06-15','internet','2025-06-08','2025-06-09',3,'finalizada',NULL),(14,18,'2024-02-03','internet','2025-05-22','2025-05-29',3,'activa',NULL),(15,42,'2024-09-12','telefono','2025-06-29','2025-07-03',2,'cancelada','Emergencia'),(16,16,'2025-01-16','visita_personal','2025-06-18','2025-06-21',4,'finalizada',NULL),(17,24,'2024-04-22','internet','2025-06-17','2025-06-21',1,'confirmada',NULL),(18,8,'2024-03-19','visita_personal','2025-06-06','2025-06-10',1,'finalizada',NULL),(19,25,'2024-11-01','telefono','2025-06-17','2025-06-20',1,'confirmada',NULL),(20,44,'2025-03-29','visita_personal','2025-06-25','2025-06-28',3,'confirmada',NULL),(21,19,'2024-08-10','internet','2025-06-15','2025-06-16',3,'activa',NULL),(22,33,'2025-04-12','internet','2025-06-28','2025-07-01',2,'activa',NULL),(23,24,'2025-01-25','internet','2025-06-18','2025-06-23',1,'cancelada','Otro'),(24,2,'2024-02-27','telefono','2025-06-29','2025-07-02',2,'confirmada',NULL),(25,16,'2025-03-25','visita_personal','2025-06-03','2025-06-04',4,'confirmada',NULL),(26,49,'2024-09-29','internet','2025-06-05','2025-06-09',2,'cancelada','Otro'),(27,14,'2025-04-20','visita_personal','2025-06-25','2025-06-27',3,'finalizada',NULL),(28,43,'2024-11-28','telefono','2025-06-15','2025-06-20',4,'confirmada',NULL),(29,16,'2024-04-25','internet','2025-06-11','2025-06-12',2,'activa',NULL),(30,1,'2024-02-06','visita_personal','2025-06-21','2025-06-22',2,'confirmada',NULL),(31,3,'2025-03-16','telefono','2025-06-03','2025-06-08',2,'cancelada','Otro'),(32,14,'2024-10-03','internet','2025-06-24','2025-06-29',4,'activa',NULL),(33,31,'2025-02-17','telefono','2025-06-07','2025-06-08',1,'finalizada',NULL),(34,23,'2024-08-04','telefono','2025-06-15','2025-06-16',1,'confirmada',NULL),(35,26,'2025-01-07','telefono','2025-06-26','2025-06-27',2,'activa',NULL),(36,13,'2024-10-01','telefono','2025-06-05','2025-06-09',2,'cancelada','Otro'),(37,16,'2025-03-23','internet','2025-06-15','2025-06-20',1,'confirmada',NULL),(38,42,'2024-10-03','internet','2025-06-03','2025-06-05',2,'finalizada',NULL),(39,32,'2024-09-03','internet','2025-06-28','2025-07-02',1,'activa',NULL),(40,25,'2024-01-02','telefono','2025-06-09','2025-06-13',3,'finalizada',NULL),(41,45,'2025-05-05','visita_personal','2025-06-26','2025-07-01',4,'activa',NULL),(42,13,'2024-05-31','internet','2025-06-02','2025-06-07',1,'cancelada','Cambio de planes'),(43,4,'2024-10-26','telefono','2025-06-17','2025-06-22',2,'confirmada',NULL),(44,33,'2024-02-11','internet','2025-06-03','2025-06-08',1,'activa',NULL),(45,26,'2024-03-02','visita_personal','2025-06-08','2025-06-13',1,'confirmada',NULL),(46,27,'2024-12-02','visita_personal','2025-06-19','2025-06-24',3,'cancelada','Emergencia'),(47,43,'2025-01-01','telefono','2025-06-08','2025-06-11',4,'activa',NULL),(48,43,'2024-11-26','telefono','2025-06-15','2025-06-18',1,'confirmada',NULL),(49,30,'2024-11-14','visita_personal','2025-06-04','2025-06-05',2,'cancelada','Emergencia'),(50,23,'2025-03-27','internet','2025-06-29','2025-07-01',3,'cancelada','Emergencia'),(1002,999,NULL,NULL,'2025-07-10','2025-07-15',NULL,'confirmada',NULL),(1004,1,NULL,NULL,'2025-07-20','2025-07-25',NULL,'confirmada',NULL),(1005,1,NULL,NULL,'2025-05-25','2025-05-30',NULL,'confirmada',NULL),(1006,1,NULL,NULL,'2025-05-25','2025-05-30',NULL,'confirmada',NULL),(1007,1,NULL,NULL,'2025-05-27','2025-05-31',NULL,'confirmada',NULL),(1008,1,NULL,NULL,'2025-05-27','2025-05-31',NULL,'cancelada',NULL);
/*!40000 ALTER TABLE `Reservacion` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`esteban`@`%`*/ /*!50003 TRIGGER `trg_validar_fechas_reserva` BEFORE INSERT ON `Reservacion` FOR EACH ROW BEGIN
IF NEW.check_out <= NEW.check_in THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'La fecha de salida debe ser posterior a la de entrada';
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`esteban`@`%`*/ /*!50003 TRIGGER `trg_inventario_habitaciones` BEFORE INSERT ON `Reservacion` FOR EACH ROW BEGIN
  DECLARE disponibles INT;
  SELECT COUNT(*) INTO disponibles FROM Habitacion WHERE estado = 'Disponible';
  IF disponibles = 0 THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'No hay habitaciones disponibles en este momento.';
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`esteban`@`%`*/ /*!50003 TRIGGER `trg_reserva_cliente_vip` AFTER INSERT ON `Reservacion` FOR EACH ROW UPDATE ClientesVIP
SET total_reservas = total_reservas + 1
WHERE id_cliente = NEW.id_cliente */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`esteban`@`%`*/ /*!50003 TRIGGER `trg_cancelacion_con_penalizacion` BEFORE UPDATE ON `Reservacion` FOR EACH ROW BEGIN
  IF NEW.estado = 'Cancelada' AND OLD.estado <> 'Cancelada' THEN
    IF DATEDIFF(OLD.check_in, CURDATE()) < 2 THEN
      UPDATE Factura
      SET total = total * 0.55
      WHERE id_reservacion = OLD.id_reservacion;
    END IF;
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`esteban`@`%`*/ /*!50003 TRIGGER `trg_cancelar_sin_checkin` AFTER UPDATE ON `Reservacion` FOR EACH ROW BEGIN
  IF NEW.estado = 'Confirmada' AND NEW.check_in < CURDATE() THEN
    IF NOT EXISTS (
      SELECT 1 FROM DetalleReserva
      WHERE id_reservacion = NEW.id_reservacion
    ) THEN
      UPDATE Reservacion
      SET estado = 'Cancelada'
      WHERE id_reservacion = NEW.id_reservacion;
    END IF;
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `Servicio`
--

DROP TABLE IF EXISTS `Servicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Servicio` (
  `id_servicio` int NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `categoria` enum('interno','externo') NOT NULL,
  `precio_unit` decimal(10,2) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `id_inventario` int DEFAULT NULL,
  PRIMARY KEY (`id_servicio`),
  KEY `id_inventario` (`id_inventario`),
  CONSTRAINT `Servicio_ibfk_1` FOREIGN KEY (`id_inventario`) REFERENCES `Inventario` (`id_inventario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Servicio`
--

LOCK TABLES `Servicio` WRITE;
/*!40000 ALTER TABLE `Servicio` DISABLE KEYS */;
INSERT INTO `Servicio` VALUES (1,'masaje_relajante','interno',100.00,'Masaje corporal relajante de 60 minutos',1),(2,'masaje_terapeutico','interno',120.00,'Masaje terapéutico especializado, 60 minutos',2),(3,'facial_hidratante','interno',80.00,'Tratamiento facial con mascarilla hidratante',3),(4,'exfoliacion_corporal','interno',90.00,'Exfoliación de todo el cuerpo con sales minerales',4),(5,'envoltura_aceites','interno',110.00,'Envoltura corporal con aceites esenciales',5),(6,'yoga_matutino','interno',50.00,'Clase de yoga guiada de 45 minutos',6),(7,'clase_pilates','interno',60.00,'Sesión de pilates en sala equipada, 45 minutos',7),(8,'personal_trainer','interno',80.00,'Entrenamiento personal de 60 minutos en gimnasio',8),(9,'sesion_spa_diaria','interno',200.00,'Acceso completo al spa por día',9),(10,'sesion_spa_nocturna','interno',250.00,'Acceso al spa en horario nocturno, incluye amenities',10),(11,'buffet_desayuno','interno',300.00,'Buffet libre de desayuno continental',11),(12,'buffet_brunch','interno',400.00,'Buffet de brunch con estaciones en vivo',12),(13,'cena_gourmet','interno',700.00,'Cena de 3 tiempos con menú gourmet',13),(14,'cena_romantica','interno',900.00,'Cena para dos con decoración especial',14),(15,'coffee_break','interno',150.00,'Coffee break para reuniones (30 personas)',15),(16,'salon_boda_alquiler','interno',5000.00,'Alquiler de salón para bodas (8 horas)',16),(17,'sala_conferencias_alquiler','interno',3000.00,'Alquiler de sala de conferencias con equipo audiovisual',17),(18,'equipo_audio_alquiler','interno',500.00,'Alquiler de micrófonos y parlantes',18),(19,'servicio_decoracion','interno',800.00,'Decoración floral y ambientación de espacio',19),(20,'dj_interno','interno',600.00,'Servicio de DJ profesional para eventos en salón',20),(21,'fotografo_interno','interno',1000.00,'Cobertura fotográfica en eventos de hasta 4 horas',21),(22,'servicio_bar','interno',400.00,'Bar móvil para cócteles en eventos',22),(23,'coctel_gala','interno',50.00,'Coctel de gala por persona (24 unidades)',23),(24,'room_service_24h','interno',50.00,'Servicio a la habitación 24 horas',24),(25,'mini_bar_restock','interno',30.00,'Reposición de mini bar con bebidas y snacks',25),(26,'guia_tour_parque','externo',50.00,'Guía local para tour en parque de diversiones',26),(27,'ticket_parque','externo',200.00,'Entrada general a parque de entretenimiento',27),(28,'entrada_zoologico','externo',80.00,'Boleto de ingreso al zoológico',28),(29,'renta_snorkel','externo',100.00,'Equipo de snorkel por día',29),(30,'tour_museo_arte','externo',30.00,'Visita guiada al museo de arte local',30),(31,'tour_museo_historia','externo',25.00,'Recorrido guiado por museo de historia regional',31),(32,'ticket_festival_musica','externo',150.00,'Entrada general a festival de música',32),(33,'ticket_festival_cultura','externo',120.00,'Acceso a festival cultural y artesanal',33),(34,'tour_zona_historica','externo',40.00,'Recorrido peatonal por zona histórica de la ciudad',34),(35,'tour_vitivinicola','externo',70.00,'Visita y cata en viñedo cercano',35),(36,'tour_gastronomico','externo',90.00,'Ruta de degustación de platillos típicos',36),(37,'renta_bicicleta','externo',20.00,'Bicicleta por hora para recorridos urbanos',37),(38,'ciclismo_guiado','externo',50.00,'Tour guiado en bicicleta de ciudad (2 horas)',38),(39,'avistamiento_aves','externo',60.00,'Excursión de observación de aves con binoculares',39),(40,'senderismo_guiado','externo',30.00,'Ruta de senderismo en área natural protegida',40),(41,'tour_arquitectura','externo',45.00,'Recorrido arquitectónico por edificios emblemáticos',41),(42,'traslado_aeropuerto','externo',30.00,'Shuttle aeropuerto–hotel por trayecto',42),(43,'traslado_estacion_tren','externo',20.00,'Transporte hotel–estación de tren',43),(44,'traslado_city_tour','externo',25.00,'Van para city tour panorámico (3 horas)',44),(45,'paseo_barco','externo',60.00,'Paseo en barco por la costa (1 hora)',45),(46,'excursion_buceo','externo',120.00,'Buceo recreativo con instructor y equipo',46),(47,'servicio_autos_privado','externo',100.00,'Auto privado con chofer por hora',47),(48,'renta_auto','externo',80.00,'Renta de automóvil compacto por día',48),(49,'fotografia_externa','externo',200.00,'Sesión de fotos profesional fuera del hotel',49),(50,'servicio_traductor','externo',40.00,'Servicio de traducción simultánea por hora',50);
/*!40000 ALTER TABLE `Servicio` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`esteban`@`%`*/ /*!50003 TRIGGER `trg_validar_precio_servicio` BEFORE INSERT ON `Servicio` FOR EACH ROW BEGIN
  IF NEW.precio_unit <= 0 THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'El precio del servicio debe ser mayor a cero.';
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `TipoHabitacion`
--

DROP TABLE IF EXISTS `TipoHabitacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TipoHabitacion` (
  `id_tipo` int NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `capacidad` int DEFAULT NULL,
  `tarifa_base` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id_tipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TipoHabitacion`
--

LOCK TABLES `TipoHabitacion` WRITE;
/*!40000 ALTER TABLE `TipoHabitacion` DISABLE KEYS */;
INSERT INTO `TipoHabitacion` VALUES (1,'Individual','Cama individual, baño privado',1,50.00),(2,'Matrimonial','Cama matrimonial, vista al jardín',2,80.00),(3,'Deluxe','Cama king, balcón con vista',2,120.00),(4,'Suite','Sala de estar, minibar incluido',4,200.00),(5,'Presidencial','Vista al mar, jacuzzi privado',4,500.00),(6,'Suite Presidencial','Terraza privada, vista panorámica y jacuzzi',4,700.00);
/*!40000 ALTER TABLE `TipoHabitacion` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-26 23:48:35
