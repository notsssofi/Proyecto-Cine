-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: cinemark
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

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
-- Table structure for table `cine`
--

DROP TABLE IF EXISTS `cine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cine` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `direccion` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cine`
--

LOCK TABLES `cine` WRITE;
/*!40000 ALTER TABLE `cine` DISABLE KEYS */;
INSERT INTO `cine` VALUES (1,'Av. San Martín 123','Cinemark');
/*!40000 ALTER TABLE `cine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cine_aud`
--

DROP TABLE IF EXISTS `cine_aud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cine_aud` (
  `id` bigint(20) NOT NULL,
  `rev` int(11) NOT NULL,
  `revtype` tinyint(4) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rev`,`id`),
  CONSTRAINT `FKi5av0tcq64ii9n2uk9nnquk2c` FOREIGN KEY (`rev`) REFERENCES `revision_info` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cine_aud`
--

LOCK TABLES `cine_aud` WRITE;
/*!40000 ALTER TABLE `cine_aud` DISABLE KEYS */;
INSERT INTO `cine_aud` VALUES (1,1,1,NULL,NULL),(1,3,1,NULL,NULL),(1,52,1,NULL,NULL),(1,54,1,NULL,NULL),(1,102,1,NULL,NULL),(1,104,1,NULL,NULL);
/*!40000 ALTER TABLE `cine_aud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `dtype` varchar(31) NOT NULL,
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `descuento` float DEFAULT NULL,
  `cine_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK7tj3x0cwkn3yfrn7l7p2bumdq` (`cine_id`),
  CONSTRAINT `FK7tj3x0cwkn3yfrn7l7p2bumdq` FOREIGN KEY (`cine_id`) REFERENCES `cine` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES ('Cliente',1,'sofia@gmail.com','Sofia',NULL,1),('Cliente',2,'jorge@gmail.com','Jorge',NULL,1),('Cliente',3,'harrystyles@gmail.com','Harry',NULL,1);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente_aud`
--

DROP TABLE IF EXISTS `cliente_aud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente_aud` (
  `id` bigint(20) NOT NULL,
  `rev` int(11) NOT NULL,
  `dtype` varchar(31) NOT NULL,
  `revtype` tinyint(4) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `cine_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`rev`,`id`),
  CONSTRAINT `FK2cwy5m86dqvvt3yfrou3cuak0` FOREIGN KEY (`rev`) REFERENCES `revision_info` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente_aud`
--

LOCK TABLES `cliente_aud` WRITE;
/*!40000 ALTER TABLE `cliente_aud` DISABLE KEYS */;
INSERT INTO `cliente_aud` VALUES (1,1,'Cliente',0,'sofia@gmail.com','Sofia',1),(1,3,'Cliente',1,NULL,NULL,NULL),(2,52,'Cliente',0,'jorge@gmail.com','Jorge',1),(2,54,'Cliente',1,NULL,NULL,NULL),(3,102,'Cliente',0,'harrystyles@gmail.com','Harry',1),(3,104,'Cliente',1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `cliente_aud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compra`
--

DROP TABLE IF EXISTS `compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compra` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compra`
--

LOCK TABLES `compra` WRITE;
/*!40000 ALTER TABLE `compra` DISABLE KEYS */;
/*!40000 ALTER TABLE `compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compra_aud`
--

DROP TABLE IF EXISTS `compra_aud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compra_aud` (
  `id` bigint(20) NOT NULL,
  `rev` int(11) NOT NULL,
  `revtype` tinyint(4) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`rev`,`id`),
  CONSTRAINT `FKj7xaiw1pnly7gnv4cmpg8x2oh` FOREIGN KEY (`rev`) REFERENCES `revision_info` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compra_aud`
--

LOCK TABLES `compra_aud` WRITE;
/*!40000 ALTER TABLE `compra_aud` DISABLE KEYS */;
/*!40000 ALTER TABLE `compra_aud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compra_insumos`
--

DROP TABLE IF EXISTS `compra_insumos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compra_insumos` (
  `compra_id` bigint(20) NOT NULL,
  `insumos_id` bigint(20) NOT NULL,
  UNIQUE KEY `UKkexu1r7vym21n214etymio2hf` (`insumos_id`),
  UNIQUE KEY `UK_kexu1r7vym21n214etymio2hf` (`insumos_id`),
  KEY `FKrcwq7mle7dv8uyfde4ssx93x5` (`compra_id`),
  CONSTRAINT `FKbumbq26k65ltpow2tkww7kqn7` FOREIGN KEY (`insumos_id`) REFERENCES `insumo` (`id`),
  CONSTRAINT `FKrcwq7mle7dv8uyfde4ssx93x5` FOREIGN KEY (`compra_id`) REFERENCES `compra` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compra_insumos`
--

LOCK TABLES `compra_insumos` WRITE;
/*!40000 ALTER TABLE `compra_insumos` DISABLE KEYS */;
/*!40000 ALTER TABLE `compra_insumos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compra_insumos_aud`
--

DROP TABLE IF EXISTS `compra_insumos_aud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compra_insumos_aud` (
  `rev` int(11) NOT NULL,
  `compra_id` bigint(20) NOT NULL,
  `insumos_id` bigint(20) NOT NULL,
  `revtype` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`compra_id`,`rev`,`insumos_id`),
  KEY `FKjg5eps718puvjebkqb2u01687` (`rev`),
  CONSTRAINT `FKjg5eps718puvjebkqb2u01687` FOREIGN KEY (`rev`) REFERENCES `revision_info` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compra_insumos_aud`
--

LOCK TABLES `compra_insumos_aud` WRITE;
/*!40000 ALTER TABLE `compra_insumos_aud` DISABLE KEYS */;
/*!40000 ALTER TABLE `compra_insumos_aud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compra_proveedores`
--

DROP TABLE IF EXISTS `compra_proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compra_proveedores` (
  `compra_id` bigint(20) NOT NULL,
  `proveedores_id` bigint(20) NOT NULL,
  UNIQUE KEY `UKniamnntal15lme8k5biponb5i` (`proveedores_id`),
  UNIQUE KEY `UK_niamnntal15lme8k5biponb5i` (`proveedores_id`),
  KEY `FKh9e2rilil1v87dt41n5c2ui8w` (`compra_id`),
  CONSTRAINT `FKh6t5vk84yxjcftutb3ykswrdp` FOREIGN KEY (`proveedores_id`) REFERENCES `proveedor` (`id`),
  CONSTRAINT `FKh9e2rilil1v87dt41n5c2ui8w` FOREIGN KEY (`compra_id`) REFERENCES `compra` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compra_proveedores`
--

LOCK TABLES `compra_proveedores` WRITE;
/*!40000 ALTER TABLE `compra_proveedores` DISABLE KEYS */;
/*!40000 ALTER TABLE `compra_proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compra_proveedores_aud`
--

DROP TABLE IF EXISTS `compra_proveedores_aud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compra_proveedores_aud` (
  `rev` int(11) NOT NULL,
  `compra_id` bigint(20) NOT NULL,
  `proveedores_id` bigint(20) NOT NULL,
  `revtype` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`compra_id`,`rev`,`proveedores_id`),
  KEY `FK1snj076bdmtg3dsp1fvvjfhga` (`rev`),
  CONSTRAINT `FK1snj076bdmtg3dsp1fvvjfhga` FOREIGN KEY (`rev`) REFERENCES `revision_info` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compra_proveedores_aud`
--

LOCK TABLES `compra_proveedores_aud` WRITE;
/*!40000 ALTER TABLE `compra_proveedores_aud` DISABLE KEYS */;
/*!40000 ALTER TABLE `compra_proveedores_aud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleado`
--

DROP TABLE IF EXISTS `empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleado` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dni` int(11) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `cine_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK9gd4ofy0wco8cl2eu3d1o4741` (`cine_id`),
  CONSTRAINT `FK9gd4ofy0wco8cl2eu3d1o4741` FOREIGN KEY (`cine_id`) REFERENCES `cine` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado`
--

LOCK TABLES `empleado` WRITE;
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleado_aud`
--

DROP TABLE IF EXISTS `empleado_aud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleado_aud` (
  `id` bigint(20) NOT NULL,
  `rev` int(11) NOT NULL,
  `revtype` tinyint(4) DEFAULT NULL,
  `dni` int(11) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `cine_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`rev`,`id`),
  CONSTRAINT `FK893blypqf2lsylb1ajo2af047` FOREIGN KEY (`rev`) REFERENCES `revision_info` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado_aud`
--

LOCK TABLES `empleado_aud` WRITE;
/*!40000 ALTER TABLE `empleado_aud` DISABLE KEYS */;
/*!40000 ALTER TABLE `empleado_aud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entrada`
--

DROP TABLE IF EXISTS `entrada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entrada` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `asiento` varchar(255) DEFAULT NULL,
  `precio` double DEFAULT NULL,
  `funcion_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKovxf0dko2rwo35kbh9xv61mok` (`funcion_id`),
  CONSTRAINT `FKovxf0dko2rwo35kbh9xv61mok` FOREIGN KEY (`funcion_id`) REFERENCES `funcion` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entrada`
--

LOCK TABLES `entrada` WRITE;
/*!40000 ALTER TABLE `entrada` DISABLE KEYS */;
INSERT INTO `entrada` VALUES (1,'D7',6000,1),(2,'E3',8500,1),(3,'A5',8500,1);
/*!40000 ALTER TABLE `entrada` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entrada_aud`
--

DROP TABLE IF EXISTS `entrada_aud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entrada_aud` (
  `id` bigint(20) NOT NULL,
  `rev` int(11) NOT NULL,
  `revtype` tinyint(4) DEFAULT NULL,
  `asiento` varchar(255) DEFAULT NULL,
  `precio` double DEFAULT NULL,
  `funcion_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`rev`,`id`),
  CONSTRAINT `FKrnhq2cf6lusat1uknwiyna6ws` FOREIGN KEY (`rev`) REFERENCES `revision_info` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entrada_aud`
--

LOCK TABLES `entrada_aud` WRITE;
/*!40000 ALTER TABLE `entrada_aud` DISABLE KEYS */;
INSERT INTO `entrada_aud` VALUES (1,2,0,'D7',6000,1),(2,53,0,'E3',8500,1),(3,103,0,'A5',8500,1);
/*!40000 ALTER TABLE `entrada_aud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcion`
--

DROP TABLE IF EXISTS `funcion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `horario` varchar(255) DEFAULT NULL,
  `pelicula_id` bigint(20) DEFAULT NULL,
  `sala_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKrg3moehotogvep1rxqgtb6swh` (`pelicula_id`),
  KEY `FKtduw4tg8j1ptlfh96j40mq988` (`sala_id`),
  CONSTRAINT `FKrg3moehotogvep1rxqgtb6swh` FOREIGN KEY (`pelicula_id`) REFERENCES `pelicula` (`id`),
  CONSTRAINT `FKtduw4tg8j1ptlfh96j40mq988` FOREIGN KEY (`sala_id`) REFERENCES `sala` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcion`
--

LOCK TABLES `funcion` WRITE;
/*!40000 ALTER TABLE `funcion` DISABLE KEYS */;
INSERT INTO `funcion` VALUES (1,'22:00',1,1);
/*!40000 ALTER TABLE `funcion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcion_aud`
--

DROP TABLE IF EXISTS `funcion_aud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcion_aud` (
  `id` bigint(20) NOT NULL,
  `rev` int(11) NOT NULL,
  `revtype` tinyint(4) DEFAULT NULL,
  `horario` varchar(255) DEFAULT NULL,
  `pelicula_id` bigint(20) DEFAULT NULL,
  `sala_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`rev`,`id`),
  CONSTRAINT `FK7gihydaxmyidh1r6yvssfs91a` FOREIGN KEY (`rev`) REFERENCES `revision_info` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcion_aud`
--

LOCK TABLES `funcion_aud` WRITE;
/*!40000 ALTER TABLE `funcion_aud` DISABLE KEYS */;
INSERT INTO `funcion_aud` VALUES (1,3,1,NULL,NULL,NULL),(1,54,1,NULL,NULL,NULL),(1,104,1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `funcion_aud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insumo`
--

DROP TABLE IF EXISTS `insumo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `insumo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `precio` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insumo`
--

LOCK TABLES `insumo` WRITE;
/*!40000 ALTER TABLE `insumo` DISABLE KEYS */;
/*!40000 ALTER TABLE `insumo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insumo_aud`
--

DROP TABLE IF EXISTS `insumo_aud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `insumo_aud` (
  `id` bigint(20) NOT NULL,
  `rev` int(11) NOT NULL,
  `revtype` tinyint(4) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `precio` double DEFAULT NULL,
  PRIMARY KEY (`rev`,`id`),
  CONSTRAINT `FKcagf3twh1val5r54c48l8eo8g` FOREIGN KEY (`rev`) REFERENCES `revision_info` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insumo_aud`
--

LOCK TABLES `insumo_aud` WRITE;
/*!40000 ALTER TABLE `insumo_aud` DISABLE KEYS */;
/*!40000 ALTER TABLE `insumo_aud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pago`
--

DROP TABLE IF EXISTS `pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pago` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `monto` double DEFAULT NULL,
  `tipo_pago` enum('EFECTIVO','TARJETA') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pago`
--

LOCK TABLES `pago` WRITE;
/*!40000 ALTER TABLE `pago` DISABLE KEYS */;
/*!40000 ALTER TABLE `pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pago_aud`
--

DROP TABLE IF EXISTS `pago_aud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pago_aud` (
  `id` bigint(20) NOT NULL,
  `rev` int(11) NOT NULL,
  `revtype` tinyint(4) DEFAULT NULL,
  `monto` double DEFAULT NULL,
  `tipo_pago` enum('EFECTIVO','TARJETA') DEFAULT NULL,
  PRIMARY KEY (`rev`,`id`),
  CONSTRAINT `FKhca0wg2rdhteyhgx5mjuse4b2` FOREIGN KEY (`rev`) REFERENCES `revision_info` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pago_aud`
--

LOCK TABLES `pago_aud` WRITE;
/*!40000 ALTER TABLE `pago_aud` DISABLE KEYS */;
/*!40000 ALTER TABLE `pago_aud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pelicula`
--

DROP TABLE IF EXISTS `pelicula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pelicula` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `genero` enum('ACCION','COMEDIA','DRAMA','SUSPENSO') DEFAULT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `cine_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKfpcdtth7jra2hf77cfuk91tip` (`cine_id`),
  CONSTRAINT `FKfpcdtth7jra2hf77cfuk91tip` FOREIGN KEY (`cine_id`) REFERENCES `cine` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pelicula`
--

LOCK TABLES `pelicula` WRITE;
/*!40000 ALTER TABLE `pelicula` DISABLE KEYS */;
INSERT INTO `pelicula` VALUES (1,'ACCION','Avengers',1),(2,'COMEDIA','Coco',1);
/*!40000 ALTER TABLE `pelicula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pelicula_aud`
--

DROP TABLE IF EXISTS `pelicula_aud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pelicula_aud` (
  `id` bigint(20) NOT NULL,
  `rev` int(11) NOT NULL,
  `revtype` tinyint(4) DEFAULT NULL,
  `genero` enum('ACCION','COMEDIA','DRAMA','SUSPENSO') DEFAULT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `cine_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`rev`,`id`),
  CONSTRAINT `FK9spd9vmc3donu7w6k7rs38ew9` FOREIGN KEY (`rev`) REFERENCES `revision_info` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pelicula_aud`
--

LOCK TABLES `pelicula_aud` WRITE;
/*!40000 ALTER TABLE `pelicula_aud` DISABLE KEYS */;
/*!40000 ALTER TABLE `pelicula_aud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedor` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `direccion` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedor_aud`
--

DROP TABLE IF EXISTS `proveedor_aud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedor_aud` (
  `id` bigint(20) NOT NULL,
  `rev` int(11) NOT NULL,
  `revtype` tinyint(4) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rev`,`id`),
  CONSTRAINT `FKb5wwp245h9jtc51ap2cif28p4` FOREIGN KEY (`rev`) REFERENCES `revision_info` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor_aud`
--

LOCK TABLES `proveedor_aud` WRITE;
/*!40000 ALTER TABLE `proveedor_aud` DISABLE KEYS */;
/*!40000 ALTER TABLE `proveedor_aud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revision_info`
--

DROP TABLE IF EXISTS `revision_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revision_info` (
  `id` int(11) NOT NULL,
  `revision_date` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revision_info`
--

LOCK TABLES `revision_info` WRITE;
/*!40000 ALTER TABLE `revision_info` DISABLE KEYS */;
INSERT INTO `revision_info` VALUES (1,'2025-06-12 00:45:32.000000'),(2,'2025-06-12 00:45:50.000000'),(3,'2025-06-12 00:45:50.000000'),(52,'2025-06-12 00:54:04.000000'),(53,'2025-06-12 00:54:06.000000'),(54,'2025-06-12 00:54:06.000000'),(102,'2025-06-12 01:07:04.000000'),(103,'2025-06-12 01:07:11.000000'),(104,'2025-06-12 01:07:11.000000');
/*!40000 ALTER TABLE `revision_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sala`
--

DROP TABLE IF EXISTS `sala`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sala` (
  `dtype` varchar(31) NOT NULL,
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `capacidad` int(11) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `beneficios` varchar(255) DEFAULT NULL,
  `cine_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK2w7p2o70hcronsfgl99sbna5f` (`cine_id`),
  CONSTRAINT `FK2w7p2o70hcronsfgl99sbna5f` FOREIGN KEY (`cine_id`) REFERENCES `cine` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sala`
--

LOCK TABLES `sala` WRITE;
/*!40000 ALTER TABLE `sala` DISABLE KEYS */;
INSERT INTO `sala` VALUES ('1',1,80,1,'3d',1);
/*!40000 ALTER TABLE `sala` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sala_aud`
--

DROP TABLE IF EXISTS `sala_aud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sala_aud` (
  `id` bigint(20) NOT NULL,
  `rev` int(11) NOT NULL,
  `dtype` varchar(31) NOT NULL,
  `revtype` tinyint(4) DEFAULT NULL,
  `capacidad` int(11) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `cine_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`rev`,`id`),
  CONSTRAINT `FKoo03jmpcnirgs7cwa9lbqmmss` FOREIGN KEY (`rev`) REFERENCES `revision_info` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sala_aud`
--

LOCK TABLES `sala_aud` WRITE;
/*!40000 ALTER TABLE `sala_aud` DISABLE KEYS */;
/*!40000 ALTER TABLE `sala_aud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seq_revision_id`
--

DROP TABLE IF EXISTS `seq_revision_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seq_revision_id` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seq_revision_id`
--

LOCK TABLES `seq_revision_id` WRITE;
/*!40000 ALTER TABLE `seq_revision_id` DISABLE KEYS */;
INSERT INTO `seq_revision_id` VALUES (201);
/*!40000 ALTER TABLE `seq_revision_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venta`
--

DROP TABLE IF EXISTS `venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venta` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `cine_id` bigint(20) NOT NULL,
  `cliente_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKr1r4db0ejqd3v8adoybqcdv5l` (`cine_id`),
  KEY `FKa7yaj59nfh3gft0h38o5bv472` (`cliente_id`),
  CONSTRAINT `FKa7yaj59nfh3gft0h38o5bv472` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`id`),
  CONSTRAINT `FKr1r4db0ejqd3v8adoybqcdv5l` FOREIGN KEY (`cine_id`) REFERENCES `cine` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venta`
--

LOCK TABLES `venta` WRITE;
/*!40000 ALTER TABLE `venta` DISABLE KEYS */;
INSERT INTO `venta` VALUES (1,'2025-06-11',1,1),(2,'2025-06-11',1,2),(3,'2025-06-11',1,3);
/*!40000 ALTER TABLE `venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venta_aud`
--

DROP TABLE IF EXISTS `venta_aud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venta_aud` (
  `id` bigint(20) NOT NULL,
  `rev` int(11) NOT NULL,
  `revtype` tinyint(4) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `cine_id` bigint(20) DEFAULT NULL,
  `cliente_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`rev`,`id`),
  CONSTRAINT `FKi6g8lvsjdv4xnmam50g46y187` FOREIGN KEY (`rev`) REFERENCES `revision_info` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venta_aud`
--

LOCK TABLES `venta_aud` WRITE;
/*!40000 ALTER TABLE `venta_aud` DISABLE KEYS */;
INSERT INTO `venta_aud` VALUES (1,3,0,'2025-06-11',1,1),(2,54,0,'2025-06-11',1,2),(3,104,0,'2025-06-11',1,3);
/*!40000 ALTER TABLE `venta_aud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venta_funcion`
--

DROP TABLE IF EXISTS `venta_funcion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venta_funcion` (
  `venta_id` bigint(20) NOT NULL,
  `funcion_id` bigint(20) NOT NULL,
  KEY `FKike4ktajsd6h5mbveyg9oysa7` (`funcion_id`),
  KEY `FK9y4m6ejsr5xnppj8kv87s185v` (`venta_id`),
  CONSTRAINT `FK9y4m6ejsr5xnppj8kv87s185v` FOREIGN KEY (`venta_id`) REFERENCES `venta` (`id`),
  CONSTRAINT `FKike4ktajsd6h5mbveyg9oysa7` FOREIGN KEY (`funcion_id`) REFERENCES `funcion` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venta_funcion`
--

LOCK TABLES `venta_funcion` WRITE;
/*!40000 ALTER TABLE `venta_funcion` DISABLE KEYS */;
INSERT INTO `venta_funcion` VALUES (1,1),(2,1),(3,1);
/*!40000 ALTER TABLE `venta_funcion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venta_funcion_aud`
--

DROP TABLE IF EXISTS `venta_funcion_aud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venta_funcion_aud` (
  `rev` int(11) NOT NULL,
  `venta_id` bigint(20) NOT NULL,
  `funcion_id` bigint(20) NOT NULL,
  `revtype` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`rev`,`venta_id`,`funcion_id`),
  CONSTRAINT `FKddjnaaso6mwrydsueeg7geq5v` FOREIGN KEY (`rev`) REFERENCES `revision_info` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venta_funcion_aud`
--

LOCK TABLES `venta_funcion_aud` WRITE;
/*!40000 ALTER TABLE `venta_funcion_aud` DISABLE KEYS */;
INSERT INTO `venta_funcion_aud` VALUES (3,1,1,0),(54,2,1,0),(104,3,1,0);
/*!40000 ALTER TABLE `venta_funcion_aud` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-11 22:34:34
