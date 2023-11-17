-- MySQL dump 10.13  Distrib 8.0.35, for Win64 (x86_64)
--
-- Host: localhost    Database: academiaturmac
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `alunos`
--

DROP TABLE IF EXISTS `alunos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alunos` (
  `matricula` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `CPF` char(11) NOT NULL,
  `telefone` char(11) NOT NULL,
  `endereço` varchar(255) NOT NULL,
  PRIMARY KEY (`matricula`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alunos`
--

LOCK TABLES `alunos` WRITE;
/*!40000 ALTER TABLE `alunos` DISABLE KEYS */;
INSERT INTO `alunos` VALUES (1,'Alyff','54698765321','81985479632','olinda'),(2,'Alyson','44698765321','81985219632','olinda'),(3,'Paulo','44558765321','81989874632','aguazinha'),(4,'Maria','44558765421','81989898989','peixinhos'),(5,'Gabriel','14451115321','81989874111','abreu_e_lima'),(6,'lima mey','11234567891','08111111111','rua doze!');
/*!40000 ALTER TABLE `alunos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionarios`
--

DROP TABLE IF EXISTS `funcionarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionarios` (
  `id_funcionarios` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(120) NOT NULL,
  `CPF` char(11) NOT NULL,
  `departamento` int NOT NULL,
  `salario` decimal(8,2) DEFAULT NULL,
  `email` varchar(120) NOT NULL,
  PRIMARY KEY (`id_funcionarios`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionarios`
--

LOCK TABLES `funcionarios` WRITE;
/*!40000 ALTER TABLE `funcionarios` DISABLE KEYS */;
INSERT INTO `funcionarios` VALUES (1,'Mario jose','12345678966',1,3500.00,''),(2,'Maria clara','12345674586',1,3500.00,''),(3,'Joao pedro','11223344556',1,3423.00,'joaof1@gmail.com'),(4,'Vinicius morais','21226711148',1,7004.00,''),(5,'Oliveira','21225541148',1,1320.39,''),(6,'Clarissa','88775541148',1,16045.00,''),(7,'Vilma','11075541148',2,7856.00,''),(8,'josé pereira','11555541178',2,4354.00,''),(10,'MARCOS','10887541178',1,7005.00,'');
/*!40000 ALTER TABLE `funcionarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matriculado`
--

DROP TABLE IF EXISTS `matriculado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matriculado` (
  `ID_matricula` int NOT NULL AUTO_INCREMENT,
  `FK_matricula` int DEFAULT NULL,
  PRIMARY KEY (`ID_matricula`),
  KEY `FK_matricula` (`FK_matricula`),
  CONSTRAINT `matriculado_ibfk_1` FOREIGN KEY (`FK_matricula`) REFERENCES `alunos` (`matricula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matriculado`
--

LOCK TABLES `matriculado` WRITE;
/*!40000 ALTER TABLE `matriculado` DISABLE KEYS */;
/*!40000 ALTER TABLE `matriculado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modalidade`
--

DROP TABLE IF EXISTS `modalidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modalidade` (
  `Nome` varchar(255) NOT NULL,
  `Duracao` char(3) NOT NULL,
  `ID_modalidade` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ID_modalidade`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modalidade`
--

LOCK TABLES `modalidade` WRITE;
/*!40000 ALTER TABLE `modalidade` DISABLE KEYS */;
INSERT INTO `modalidade` VALUES ('Luta','120',1),('musculacao','240',2),('natacao','120',3),('polidance','120',4),('zumba','120',5);
/*!40000 ALTER TABLE `modalidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal`
--

DROP TABLE IF EXISTS `personal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal` (
  `ID_personal` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `cpf` char(11) DEFAULT NULL,
  `cref` char(10) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `telefone` char(11) DEFAULT NULL,
  PRIMARY KEY (`ID_personal`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal`
--

LOCK TABLES `personal` WRITE;
/*!40000 ALTER TABLE `personal` DISABLE KEYS */;
INSERT INTO `personal` VALUES (1,'yasmin','11111111111','1122334455','yasperson@outlook.com','olinda','81912341234'),(2,'pedro','11111221111','1332334455','pedroperson@outlook.com','olinda','82912341234'),(3,'victor','11111223311','3332334455','vituperson@outlook.com','olinda','88812341234'),(4,'breno','33111223311','3366334455','brenoperson@outlook.com','olinda','82872341234'),(5,'sthefany','33115423311','3366332815','stheperson@outlook.com','olinda','82877741234');
/*!40000 ALTER TABLE `personal` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-17 15:30:16
