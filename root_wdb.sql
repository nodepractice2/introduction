-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: root
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `wdb`
--

DROP TABLE IF EXISTS `wdb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wdb` (
  `id` int NOT NULL AUTO_INCREMENT,
  `list` varchar(1000) COLLATE utf8mb4_general_ci NOT NULL,
  `content` varchar(1000) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wdb`
--

LOCK TABLES `wdb` WRITE;
/*!40000 ALTER TABLE `wdb` DISABLE KEYS */;
INSERT INTO `wdb` VALUES (1,'인력 양성 목표','웹2.0 기반의 실무형 웹 솔루션 개발자 양성'),(2,'인력 양성 목표','기업과 조직의 다양하고 방대한 데이터를 통합 관리하는 데이터베이스 관리자, 데이터베이스 응용프로그램 개발자 양성'),(3,'인력 양성 목표','IoT기반 모바일 앱 개발자 양성'),(4,'교육과정','데이터베이스 관리자와 개발자, 웹 솔루션 개발자, 모바일 앱 개발자 양성을 목표로 IT직무의 기초에서부터 심화과정까지 실무능력을 배양할 수 있는 교육과정으로 편성'),(5,'교육과정','데이터베이스 관리자 / 응용프로그램 개발능력'),(6,'교육과정','웹 솔루션 개발 능력'),(7,'교육과정','모바일 및 IoT 개발 능력'),(8,'교육내용','DBMS(Oracle, MS SQL, DB2, MySQL, Altibase, Tibero 등) 운용 관리 능력'),(9,'교육내용','SQL 작성 및 DB 모델링 능력'),(10,'교육내용','JSP, ASP, PHP, Ajax, JavaScript, jQuery, jQuery Mobile 기반 웹 솔루션 개발 능력 배양'),(11,'교육내용','MVC 기반, 프레임워크(Struts, Spring, iBatis) 기반 솔루션 개발 능력 배양'),(12,'교육내용','안드로이드 기반, iOS 기반의 스마트 폰과 태블릿 PC용 애플리케이션 개발 능력'),(13,'주요취업처','웹솔루션 개발업체'),(14,'주요취업처','대기업 및 산업체 전산실'),(15,'주요취업처','모바일 및 IoT 개발업체'),(16,'주요취업처','데이터베이스 관련 업체');
/*!40000 ALTER TABLE `wdb` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-24 20:39:20
