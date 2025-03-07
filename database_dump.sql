mysqldump: [Warning] Using a password on the command line interface can be insecure.
-- MySQL dump 10.13  Distrib 8.0.41, for Linux (x86_64)
--
-- Host: localhost    Database: laravel
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
-- Table structure for table `attribute_values`
--

DROP TABLE IF EXISTS `attribute_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attribute_values` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` bigint unsigned NOT NULL,
  `entity_id` bigint unsigned NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `attribute_values_attribute_id_foreign` (`attribute_id`),
  KEY `attribute_values_entity_id_foreign` (`entity_id`),
  CONSTRAINT `attribute_values_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`),
  CONSTRAINT `attribute_values_entity_id_foreign` FOREIGN KEY (`entity_id`) REFERENCES `projects` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attribute_values`
--

LOCK TABLES `attribute_values` WRITE;
/*!40000 ALTER TABLE `attribute_values` DISABLE KEYS */;
INSERT INTO `attribute_values` VALUES (1,1,1,'Est','2025-03-02 02:17:52','2025-03-02 02:17:52'),(2,5,1,'low','2025-03-02 02:17:52','2025-03-02 02:17:52'),(3,6,1,'Voluptatem','2025-03-02 02:17:52','2025-03-02 02:17:52'),(4,1,2,'Quis','2025-03-02 02:17:52','2025-03-02 02:17:52'),(5,2,2,'2024-05-12 17:45:35','2025-03-02 02:17:52','2025-03-02 02:17:52'),(6,3,2,'2025-10-21 22:07:17','2025-03-02 02:17:52','2025-03-02 02:17:52'),(7,4,2,'99672','2025-03-02 02:17:52','2025-03-02 02:17:52'),(8,2,3,'2024-12-23 05:52:34','2025-03-02 02:17:52','2025-03-02 02:17:52'),(9,3,3,'2025-09-04 02:06:02','2025-03-02 02:17:52','2025-03-02 02:17:52'),(10,4,3,'34394','2025-03-02 02:17:52','2025-03-02 02:17:52'),(11,5,3,'medium','2025-03-02 02:17:52','2025-03-02 02:17:52'),(12,6,3,'Porro','2025-03-02 02:17:52','2025-03-02 02:17:52'),(13,1,4,'Similique','2025-03-02 02:17:52','2025-03-02 02:17:52'),(14,2,4,'2026-03-01 09:59:43','2025-03-02 02:17:52','2025-03-02 02:17:52'),(15,3,4,'2025-08-09 12:03:51','2025-03-02 02:17:52','2025-03-02 02:17:52'),(16,4,4,'32022','2025-03-02 02:17:52','2025-03-02 02:17:52'),(17,5,4,'low','2025-03-02 02:17:52','2025-03-02 02:17:52'),(18,2,5,'2025-12-16 05:24:18','2025-03-02 02:17:52','2025-03-02 02:17:52'),(19,3,5,'2025-02-07 02:43:56','2025-03-02 02:17:52','2025-03-02 02:17:52'),(20,4,5,'42520','2025-03-02 02:17:52','2025-03-02 02:17:52'),(21,6,5,'Aut','2025-03-02 02:17:52','2025-03-02 02:17:52'),(22,3,6,'2025-01-02 11:30:57','2025-03-02 02:17:52','2025-03-02 02:17:52'),(23,4,6,'83561','2025-03-02 02:17:52','2025-03-02 02:17:52'),(24,5,6,'medium','2025-03-02 02:17:52','2025-03-02 02:17:52'),(25,1,7,'Repudiandae','2025-03-02 02:17:52','2025-03-02 02:17:52'),(26,3,7,'2024-08-28 02:51:35','2025-03-02 02:17:52','2025-03-02 02:17:52'),(27,4,7,'71986','2025-03-02 02:17:52','2025-03-02 02:17:52'),(28,5,7,'high','2025-03-02 02:17:52','2025-03-02 02:17:52'),(29,2,8,'2024-09-04 06:19:51','2025-03-02 02:17:53','2025-03-02 02:17:53'),(30,3,8,'2025-10-22 21:07:19','2025-03-02 02:17:53','2025-03-02 02:17:53'),(31,4,8,'67165','2025-03-02 02:17:53','2025-03-02 02:17:53'),(32,5,8,'medium','2025-03-02 02:17:53','2025-03-02 02:17:53'),(33,6,8,'Adipisci','2025-03-02 02:17:53','2025-03-02 02:17:53'),(34,1,9,'Sit','2025-03-02 02:17:53','2025-03-02 02:17:53'),(35,3,9,'2025-11-04 23:26:55','2025-03-02 02:17:53','2025-03-02 02:17:53'),(36,4,9,'76308','2025-03-02 02:17:53','2025-03-02 02:17:53'),(37,5,9,'medium','2025-03-02 02:17:53','2025-03-02 02:17:53'),(38,6,9,'Voluptate','2025-03-02 02:17:53','2025-03-02 02:17:53'),(39,1,10,'Tenetur','2025-03-02 02:17:53','2025-03-02 02:17:53'),(40,3,10,'2024-11-19 00:52:46','2025-03-02 02:17:53','2025-03-02 02:17:53'),(41,4,10,'25887','2025-03-02 02:17:53','2025-03-02 02:17:53'),(42,6,10,'Ad','2025-03-02 02:17:53','2025-03-02 02:17:53'),(43,2,11,'2024-12-06 16:59:50','2025-03-02 02:17:53','2025-03-02 02:17:53'),(44,3,11,'2024-07-27 06:09:39','2025-03-02 02:17:53','2025-03-02 02:17:53'),(45,4,11,'25038','2025-03-02 02:17:53','2025-03-02 02:17:53'),(46,5,11,'high','2025-03-02 02:17:53','2025-03-02 02:17:53'),(47,3,12,'2024-10-27 10:38:36','2025-03-02 02:17:53','2025-03-02 02:17:53'),(48,4,12,'57061','2025-03-02 02:17:53','2025-03-02 02:17:53'),(49,5,12,'low','2025-03-02 02:17:53','2025-03-02 02:17:53'),(50,1,13,'Et','2025-03-02 02:17:53','2025-03-02 02:17:53'),(51,3,13,'2025-09-22 23:58:51','2025-03-02 02:17:53','2025-03-02 02:17:53'),(52,6,13,'Sit','2025-03-02 02:17:53','2025-03-02 02:17:53'),(53,1,14,'Vel','2025-03-02 02:17:53','2025-03-02 02:17:53'),(54,4,14,'42593','2025-03-02 02:17:53','2025-03-02 02:17:53'),(55,5,14,'high','2025-03-02 02:17:53','2025-03-02 02:17:53'),(56,6,14,'Unde','2025-03-02 02:17:53','2025-03-02 02:17:53'),(57,1,15,'Recusandae','2025-03-02 02:17:53','2025-03-02 02:17:53'),(58,3,15,'2024-10-06 12:58:11','2025-03-02 02:17:53','2025-03-02 02:17:53'),(59,4,15,'81142','2025-03-02 02:17:53','2025-03-02 02:17:53'),(60,5,15,'high','2025-03-02 02:17:53','2025-03-02 02:17:53'),(61,6,15,'Omnis','2025-03-02 02:17:53','2025-03-02 02:17:53'),(62,2,16,'2026-01-13 08:27:08','2025-03-02 02:17:53','2025-03-02 02:17:53'),(63,3,16,'2025-08-25 00:38:28','2025-03-02 02:17:53','2025-03-02 02:17:53'),(64,4,16,'6079','2025-03-02 02:17:53','2025-03-02 02:17:53'),(65,5,16,'low','2025-03-02 02:17:53','2025-03-02 02:17:53'),(66,2,17,'2026-01-05 08:39:43','2025-03-02 02:17:53','2025-03-02 02:17:53'),(67,4,17,'2423','2025-03-02 02:17:53','2025-03-02 02:17:53'),(68,5,17,'medium','2025-03-02 02:17:53','2025-03-02 02:17:53'),(69,6,17,'Quo','2025-03-02 02:17:53','2025-03-02 02:17:53'),(70,1,18,'Ipsa','2025-03-02 02:17:53','2025-03-02 02:17:53'),(71,2,18,'2024-03-09 02:40:56','2025-03-02 02:17:53','2025-03-02 02:17:53'),(72,3,18,'2024-05-11 09:55:29','2025-03-02 02:17:53','2025-03-02 02:17:53'),(73,4,18,'26065','2025-03-02 02:17:53','2025-03-02 02:17:53'),(74,5,18,'low','2025-03-02 02:17:53','2025-03-02 02:17:53'),(75,1,19,'Ex','2025-03-02 02:17:53','2025-03-02 02:17:53'),(76,3,19,'2025-03-27 03:18:49','2025-03-02 02:17:53','2025-03-02 02:17:53'),(77,4,19,'57983','2025-03-02 02:17:53','2025-03-02 02:17:53'),(78,5,19,'low','2025-03-02 02:17:53','2025-03-02 02:17:53'),(79,1,20,'Dolore','2025-03-02 02:17:53','2025-03-02 02:17:53'),(80,2,20,'2026-01-05 15:54:18','2025-03-02 02:17:53','2025-03-02 02:17:53'),(81,5,20,'medium','2025-03-02 02:17:53','2025-03-02 02:17:53');
/*!40000 ALTER TABLE `attribute_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attributes`
--

DROP TABLE IF EXISTS `attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attributes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('text','date','number','select') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `attributes_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attributes`
--

LOCK TABLES `attributes` WRITE;
/*!40000 ALTER TABLE `attributes` DISABLE KEYS */;
INSERT INTO `attributes` VALUES (1,'department','text','2025-03-02 02:17:52','2025-03-02 02:17:52'),(2,'start_date','date','2025-03-02 02:17:52','2025-03-02 02:17:52'),(3,'end_date','date','2025-03-02 02:17:52','2025-03-02 02:17:52'),(4,'budget','number','2025-03-02 02:17:52','2025-03-02 02:17:52'),(5,'priority','select','2025-03-02 02:17:52','2025-03-02 02:17:52'),(6,'client','text','2025-03-02 02:17:52','2025-03-02 02:17:52');
/*!40000 ALTER TABLE `attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000000_create_users_table',1),(2,'0001_01_01_000001_create_cache_table',1),(3,'0001_01_01_000002_create_jobs_table',1),(4,'2025_02_28_122155_create_projects_table',1),(5,'2025_02_28_122245_create_project_user_table',1),(6,'2025_02_28_122304_create_timesheets_table',1),(7,'2025_02_28_122328_create_attributes_table',1),(8,'2025_02_28_122342_create_attribute_values_table',1),(9,'2025_03_02_021701_create_oauth_auth_codes_table',1),(10,'2025_03_02_021702_create_oauth_access_tokens_table',1),(11,'2025_03_02_021703_create_oauth_refresh_tokens_table',1),(12,'2025_03_02_021704_create_oauth_clients_table',1),(13,'2025_03_02_021705_create_oauth_personal_access_clients_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_auth_codes`
--

LOCK TABLES `oauth_auth_codes` WRITE;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_clients` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` VALUES ('9e551042-d5e8-423c-be8c-4481380ef7c6',NULL,'Laravel Personal Access Client','RhJrKarrhOHLndqudLFknWzPyXuQP8CtD7B1rdVB',NULL,'http://localhost',1,0,0,'2025-03-02 02:17:02','2025-03-02 02:17:02'),('9e551042-ddb6-4621-ad4e-55cc81ac2926',NULL,'Laravel Password Grant Client','jBXtLeOPy5T2pbWCkFLt5zgOlbyIt5hNur9W860a','users','http://localhost',0,1,0,'2025-03-02 02:17:02','2025-03-02 02:17:02');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_personal_access_clients`
--

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
INSERT INTO `oauth_personal_access_clients` VALUES (1,'9e551042-d5e8-423c-be8c-4481380ef7c6','2025-03-02 02:17:02','2025-03-02 02:17:02');
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_tokens`
--

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_user`
--

DROP TABLE IF EXISTS `project_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_user` (
  `project_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`project_id`,`user_id`),
  KEY `project_user_user_id_foreign` (`user_id`),
  CONSTRAINT `project_user_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`),
  CONSTRAINT `project_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_user`
--

LOCK TABLES `project_user` WRITE;
/*!40000 ALTER TABLE `project_user` DISABLE KEYS */;
INSERT INTO `project_user` VALUES (4,2),(6,2),(9,2),(12,2),(20,2),(1,3),(6,3),(9,3),(10,3),(11,3),(17,3),(19,3),(2,4),(4,4),(7,4),(14,4),(15,4),(17,4),(18,4),(19,4),(1,5),(4,5),(5,5),(15,5),(1,6),(2,6),(3,6),(5,6),(6,6),(8,6),(10,6),(16,6),(19,6),(20,6),(12,7),(13,7),(14,7),(16,7),(18,7),(6,8),(8,8),(11,8),(14,8),(15,8),(20,8),(1,9),(7,9),(14,9),(19,9),(5,10),(7,10),(10,10),(11,10),(13,10),(20,10),(3,11),(9,11),(13,11),(17,11);
/*!40000 ALTER TABLE `project_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (1,'Porro dicta dolorum eos ut.','planned','2025-03-02 02:17:52','2025-03-02 02:17:52'),(2,'Amet facere neque.','ongoing','2025-03-02 02:17:52','2025-03-02 02:17:52'),(3,'Amet deserunt qui et.','ongoing','2025-03-02 02:17:52','2025-03-02 02:17:52'),(4,'Aut et.','ongoing','2025-03-02 02:17:52','2025-03-02 02:17:52'),(5,'Voluptas modi voluptas.','planned','2025-03-02 02:17:52','2025-03-02 02:17:52'),(6,'Quis quisquam dolorem.','planned','2025-03-02 02:17:52','2025-03-02 02:17:52'),(7,'Dicta qui aut.','completed','2025-03-02 02:17:52','2025-03-02 02:17:52'),(8,'Architecto molestiae tempora reiciendis.','ongoing','2025-03-02 02:17:52','2025-03-02 02:17:52'),(9,'Et soluta nostrum fugiat sed.','completed','2025-03-02 02:17:52','2025-03-02 02:17:52'),(10,'Et qui quo consequatur.','ongoing','2025-03-02 02:17:52','2025-03-02 02:17:52'),(11,'Laborum animi similique.','ongoing','2025-03-02 02:17:52','2025-03-02 02:17:52'),(12,'Labore aut non et.','planned','2025-03-02 02:17:52','2025-03-02 02:17:52'),(13,'Ut sint dolorum et.','ongoing','2025-03-02 02:17:52','2025-03-02 02:17:52'),(14,'Reiciendis autem excepturi similique.','ongoing','2025-03-02 02:17:52','2025-03-02 02:17:52'),(15,'Perferendis labore et.','planned','2025-03-02 02:17:52','2025-03-02 02:17:52'),(16,'Architecto ut ea odit.','planned','2025-03-02 02:17:52','2025-03-02 02:17:52'),(17,'Autem deleniti saepe.','planned','2025-03-02 02:17:52','2025-03-02 02:17:52'),(18,'Labore ullam laboriosam.','planned','2025-03-02 02:17:52','2025-03-02 02:17:52'),(19,'Id in reprehenderit.','planned','2025-03-02 02:17:52','2025-03-02 02:17:52'),(20,'Ratione voluptas ut.','ongoing','2025-03-02 02:17:52','2025-03-02 02:17:52');
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timesheets`
--

DROP TABLE IF EXISTS `timesheets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `timesheets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `task_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `hours` decimal(8,2) NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `project_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `timesheets_user_id_foreign` (`user_id`),
  KEY `timesheets_project_id_foreign` (`project_id`),
  CONSTRAINT `timesheets_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`),
  CONSTRAINT `timesheets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timesheets`
--

LOCK TABLES `timesheets` WRITE;
/*!40000 ALTER TABLE `timesheets` DISABLE KEYS */;
INSERT INTO `timesheets` VALUES (1,'ut Task','2024-05-05',6.23,3,1,'2025-03-02 02:17:52','2025-03-02 02:17:52'),(2,'sapiente Task','2025-01-31',1.62,3,1,'2025-03-02 02:17:52','2025-03-02 02:17:52'),(3,'omnis Task','2024-04-03',2.82,3,1,'2025-03-02 02:17:52','2025-03-02 02:17:52'),(4,'quia Task','2024-03-03',6.42,3,1,'2025-03-02 02:17:52','2025-03-02 02:17:52'),(5,'ut Task','2024-09-28',5.97,3,1,'2025-03-02 02:17:52','2025-03-02 02:17:52'),(6,'praesentium Task','2024-10-29',2.00,3,1,'2025-03-02 02:17:52','2025-03-02 02:17:52'),(7,'eum Task','2024-05-02',2.94,3,1,'2025-03-02 02:17:52','2025-03-02 02:17:52'),(8,'numquam Task','2024-12-13',3.40,3,1,'2025-03-02 02:17:52','2025-03-02 02:17:52'),(9,'et Task','2024-06-11',1.55,6,2,'2025-03-02 02:17:52','2025-03-02 02:17:52'),(10,'placeat Task','2024-11-22',4.43,6,2,'2025-03-02 02:17:52','2025-03-02 02:17:52'),(11,'recusandae Task','2025-02-10',2.02,6,2,'2025-03-02 02:17:52','2025-03-02 02:17:52'),(12,'quasi Task','2025-01-05',6.44,6,2,'2025-03-02 02:17:52','2025-03-02 02:17:52'),(13,'repudiandae Task','2024-07-18',2.48,6,2,'2025-03-02 02:17:52','2025-03-02 02:17:52'),(14,'quis Task','2025-01-04',7.22,6,2,'2025-03-02 02:17:52','2025-03-02 02:17:52'),(15,'id Task','2024-04-01',6.78,6,2,'2025-03-02 02:17:52','2025-03-02 02:17:52'),(16,'quo Task','2024-09-18',5.76,6,2,'2025-03-02 02:17:52','2025-03-02 02:17:52'),(17,'perferendis Task','2024-05-06',0.56,6,2,'2025-03-02 02:17:52','2025-03-02 02:17:52'),(18,'illo Task','2024-05-21',5.34,11,3,'2025-03-02 02:17:52','2025-03-02 02:17:52'),(19,'recusandae Task','2025-02-27',2.29,11,3,'2025-03-02 02:17:52','2025-03-02 02:17:52'),(20,'pariatur Task','2024-06-03',7.82,11,3,'2025-03-02 02:17:52','2025-03-02 02:17:52'),(21,'voluptatem Task','2025-01-23',4.02,11,3,'2025-03-02 02:17:52','2025-03-02 02:17:52'),(22,'at Task','2024-07-08',7.53,11,3,'2025-03-02 02:17:52','2025-03-02 02:17:52'),(23,'hic Task','2024-10-06',2.15,11,3,'2025-03-02 02:17:52','2025-03-02 02:17:52'),(24,'asperiores Task','2025-02-18',2.99,5,4,'2025-03-02 02:17:52','2025-03-02 02:17:52'),(25,'quia Task','2024-05-08',2.00,5,4,'2025-03-02 02:17:52','2025-03-02 02:17:52'),(26,'ut Task','2024-05-08',1.87,5,4,'2025-03-02 02:17:52','2025-03-02 02:17:52'),(27,'officia Task','2024-06-14',3.89,5,4,'2025-03-02 02:17:52','2025-03-02 02:17:52'),(28,'ullam Task','2024-07-18',5.40,5,4,'2025-03-02 02:17:52','2025-03-02 02:17:52'),(29,'ratione Task','2024-12-10',2.29,10,5,'2025-03-02 02:17:52','2025-03-02 02:17:52'),(30,'voluptas Task','2025-01-15',2.69,10,5,'2025-03-02 02:17:52','2025-03-02 02:17:52'),(31,'ullam Task','2024-05-23',1.88,10,5,'2025-03-02 02:17:52','2025-03-02 02:17:52'),(32,'sit Task','2024-03-14',1.62,10,5,'2025-03-02 02:17:52','2025-03-02 02:17:52'),(33,'praesentium Task','2024-10-18',6.73,10,5,'2025-03-02 02:17:52','2025-03-02 02:17:52'),(34,'voluptatibus Task','2024-04-02',5.09,10,5,'2025-03-02 02:17:52','2025-03-02 02:17:52'),(35,'quia Task','2024-03-22',5.00,10,5,'2025-03-02 02:17:52','2025-03-02 02:17:52'),(36,'iste Task','2024-10-20',4.69,10,5,'2025-03-02 02:17:52','2025-03-02 02:17:52'),(37,'doloremque Task','2025-02-17',2.82,10,5,'2025-03-02 02:17:52','2025-03-02 02:17:52'),(38,'vel Task','2024-03-26',2.37,10,5,'2025-03-02 02:17:52','2025-03-02 02:17:52'),(39,'et Task','2024-07-16',4.35,6,6,'2025-03-02 02:17:52','2025-03-02 02:17:52'),(40,'dolor Task','2024-12-07',4.09,6,6,'2025-03-02 02:17:52','2025-03-02 02:17:52'),(41,'sed Task','2024-03-08',2.10,6,6,'2025-03-02 02:17:52','2025-03-02 02:17:52'),(42,'enim Task','2024-08-28',7.25,6,6,'2025-03-02 02:17:52','2025-03-02 02:17:52'),(43,'voluptate Task','2024-05-03',3.32,6,6,'2025-03-02 02:17:52','2025-03-02 02:17:52'),(44,'quia Task','2024-04-22',0.96,6,6,'2025-03-02 02:17:52','2025-03-02 02:17:52'),(45,'molestiae Task','2024-11-05',2.74,6,6,'2025-03-02 02:17:52','2025-03-02 02:17:52'),(46,'molestiae Task','2024-10-08',2.38,4,7,'2025-03-02 02:17:52','2025-03-02 02:17:52'),(47,'enim Task','2025-02-22',6.61,4,7,'2025-03-02 02:17:52','2025-03-02 02:17:52'),(48,'adipisci Task','2025-02-24',4.95,4,7,'2025-03-02 02:17:52','2025-03-02 02:17:52'),(49,'exercitationem Task','2024-03-21',7.95,4,7,'2025-03-02 02:17:52','2025-03-02 02:17:52'),(50,'beatae Task','2024-03-31',1.82,4,7,'2025-03-02 02:17:52','2025-03-02 02:17:52'),(51,'qui Task','2024-09-16',5.14,4,7,'2025-03-02 02:17:52','2025-03-02 02:17:52'),(52,'fugit Task','2024-08-07',4.23,4,7,'2025-03-02 02:17:52','2025-03-02 02:17:52'),(53,'qui Task','2024-04-11',6.91,4,7,'2025-03-02 02:17:52','2025-03-02 02:17:52'),(54,'accusamus Task','2024-12-09',2.54,6,8,'2025-03-02 02:17:52','2025-03-02 02:17:52'),(55,'dolores Task','2024-08-16',3.41,6,8,'2025-03-02 02:17:52','2025-03-02 02:17:52'),(56,'animi Task','2024-12-05',4.96,6,8,'2025-03-02 02:17:52','2025-03-02 02:17:52'),(57,'omnis Task','2024-05-12',1.33,6,8,'2025-03-02 02:17:52','2025-03-02 02:17:52'),(58,'velit Task','2024-07-14',7.17,6,8,'2025-03-02 02:17:52','2025-03-02 02:17:52'),(59,'quia Task','2024-11-23',2.92,6,8,'2025-03-02 02:17:52','2025-03-02 02:17:52'),(60,'ipsum Task','2024-06-28',4.59,6,8,'2025-03-02 02:17:52','2025-03-02 02:17:52'),(61,'omnis Task','2024-08-12',3.58,6,8,'2025-03-02 02:17:52','2025-03-02 02:17:52'),(62,'praesentium Task','2024-11-26',7.01,6,8,'2025-03-02 02:17:52','2025-03-02 02:17:52'),(63,'voluptates Task','2024-06-04',7.89,11,9,'2025-03-02 02:17:53','2025-03-02 02:17:53'),(64,'et Task','2025-01-15',7.76,11,9,'2025-03-02 02:17:53','2025-03-02 02:17:53'),(65,'totam Task','2024-10-04',5.99,11,9,'2025-03-02 02:17:53','2025-03-02 02:17:53'),(66,'dignissimos Task','2024-10-22',6.61,11,9,'2025-03-02 02:17:53','2025-03-02 02:17:53'),(67,'enim Task','2024-08-11',7.36,11,9,'2025-03-02 02:17:53','2025-03-02 02:17:53'),(68,'molestiae Task','2024-06-12',3.13,11,9,'2025-03-02 02:17:53','2025-03-02 02:17:53'),(69,'ipsum Task','2024-08-04',6.27,11,9,'2025-03-02 02:17:53','2025-03-02 02:17:53'),(70,'iure Task','2024-12-31',1.51,11,9,'2025-03-02 02:17:53','2025-03-02 02:17:53'),(71,'optio Task','2024-06-01',7.77,11,9,'2025-03-02 02:17:53','2025-03-02 02:17:53'),(72,'maiores Task','2024-08-30',6.90,11,9,'2025-03-02 02:17:53','2025-03-02 02:17:53'),(73,'vel Task','2024-06-09',6.40,10,10,'2025-03-02 02:17:53','2025-03-02 02:17:53'),(74,'a Task','2024-08-12',5.80,10,10,'2025-03-02 02:17:53','2025-03-02 02:17:53'),(75,'itaque Task','2024-12-19',4.96,10,10,'2025-03-02 02:17:53','2025-03-02 02:17:53'),(76,'ratione Task','2024-08-12',7.46,10,10,'2025-03-02 02:17:53','2025-03-02 02:17:53'),(77,'consectetur Task','2024-08-06',0.52,10,10,'2025-03-02 02:17:53','2025-03-02 02:17:53'),(78,'eius Task','2024-12-17',1.26,10,10,'2025-03-02 02:17:53','2025-03-02 02:17:53'),(79,'et Task','2024-04-22',3.97,3,11,'2025-03-02 02:17:53','2025-03-02 02:17:53'),(80,'a Task','2025-01-18',7.96,3,11,'2025-03-02 02:17:53','2025-03-02 02:17:53'),(81,'vel Task','2024-09-24',6.62,3,11,'2025-03-02 02:17:53','2025-03-02 02:17:53'),(82,'earum Task','2025-02-27',7.38,3,11,'2025-03-02 02:17:53','2025-03-02 02:17:53'),(83,'aut Task','2024-07-02',5.44,3,11,'2025-03-02 02:17:53','2025-03-02 02:17:53'),(84,'molestiae Task','2024-10-05',4.69,3,11,'2025-03-02 02:17:53','2025-03-02 02:17:53'),(85,'voluptates Task','2024-11-13',4.49,3,11,'2025-03-02 02:17:53','2025-03-02 02:17:53'),(86,'ab Task','2024-08-18',2.60,7,12,'2025-03-02 02:17:53','2025-03-02 02:17:53'),(87,'et Task','2024-10-30',3.27,7,12,'2025-03-02 02:17:53','2025-03-02 02:17:53'),(88,'dicta Task','2024-11-08',6.79,7,12,'2025-03-02 02:17:53','2025-03-02 02:17:53'),(89,'dolore Task','2024-04-10',5.05,7,12,'2025-03-02 02:17:53','2025-03-02 02:17:53'),(90,'sed Task','2024-09-24',7.76,7,12,'2025-03-02 02:17:53','2025-03-02 02:17:53'),(91,'enim Task','2024-12-20',1.04,7,12,'2025-03-02 02:17:53','2025-03-02 02:17:53'),(92,'perspiciatis Task','2024-10-19',7.22,7,12,'2025-03-02 02:17:53','2025-03-02 02:17:53'),(93,'qui Task','2024-07-06',3.71,7,12,'2025-03-02 02:17:53','2025-03-02 02:17:53'),(94,'nemo Task','2024-04-18',5.32,7,12,'2025-03-02 02:17:53','2025-03-02 02:17:53'),(95,'magnam Task','2024-07-05',7.50,7,12,'2025-03-02 02:17:53','2025-03-02 02:17:53'),(96,'eligendi Task','2024-11-05',2.83,10,13,'2025-03-02 02:17:53','2025-03-02 02:17:53'),(97,'doloremque Task','2024-11-03',2.35,10,13,'2025-03-02 02:17:53','2025-03-02 02:17:53'),(98,'aut Task','2024-10-23',7.71,10,13,'2025-03-02 02:17:53','2025-03-02 02:17:53'),(99,'laborum Task','2024-11-28',7.58,10,13,'2025-03-02 02:17:53','2025-03-02 02:17:53'),(100,'a Task','2024-10-11',3.05,10,13,'2025-03-02 02:17:53','2025-03-02 02:17:53'),(101,'sed Task','2025-02-20',6.18,8,14,'2025-03-02 02:17:53','2025-03-02 02:17:53'),(102,'rerum Task','2024-11-14',6.85,8,14,'2025-03-02 02:17:53','2025-03-02 02:17:53'),(103,'nobis Task','2024-04-23',1.94,8,14,'2025-03-02 02:17:53','2025-03-02 02:17:53'),(104,'sapiente Task','2024-12-10',5.51,8,14,'2025-03-02 02:17:53','2025-03-02 02:17:53'),(105,'culpa Task','2024-11-09',6.18,8,14,'2025-03-02 02:17:53','2025-03-02 02:17:53'),(106,'ipsum Task','2024-06-30',0.91,8,14,'2025-03-02 02:17:53','2025-03-02 02:17:53'),(107,'perspiciatis Task','2024-10-15',1.64,8,14,'2025-03-02 02:17:53','2025-03-02 02:17:53'),(108,'culpa Task','2024-11-22',6.41,4,15,'2025-03-02 02:17:53','2025-03-02 02:17:53'),(109,'earum Task','2024-05-03',3.25,4,15,'2025-03-02 02:17:53','2025-03-02 02:17:53'),(110,'laborum Task','2025-01-11',1.17,4,15,'2025-03-02 02:17:53','2025-03-02 02:17:53'),(111,'quia Task','2024-03-02',6.10,4,15,'2025-03-02 02:17:53','2025-03-02 02:17:53'),(112,'assumenda Task','2024-10-05',6.70,4,15,'2025-03-02 02:17:53','2025-03-02 02:17:53'),(113,'non Task','2025-01-01',3.36,6,16,'2025-03-02 02:17:53','2025-03-02 02:17:53'),(114,'magnam Task','2024-10-31',4.14,6,16,'2025-03-02 02:17:53','2025-03-02 02:17:53'),(115,'hic Task','2024-05-11',3.80,6,16,'2025-03-02 02:17:53','2025-03-02 02:17:53'),(116,'suscipit Task','2024-10-12',4.88,6,16,'2025-03-02 02:17:53','2025-03-02 02:17:53'),(117,'autem Task','2025-01-12',4.73,6,16,'2025-03-02 02:17:53','2025-03-02 02:17:53'),(118,'qui Task','2024-12-15',7.73,6,16,'2025-03-02 02:17:53','2025-03-02 02:17:53'),(119,'tempore Task','2025-01-16',4.72,4,17,'2025-03-02 02:17:53','2025-03-02 02:17:53'),(120,'culpa Task','2024-11-05',6.41,4,17,'2025-03-02 02:17:53','2025-03-02 02:17:53'),(121,'est Task','2024-11-18',2.39,4,17,'2025-03-02 02:17:53','2025-03-02 02:17:53'),(122,'ipsa Task','2024-07-17',7.20,4,17,'2025-03-02 02:17:53','2025-03-02 02:17:53'),(123,'qui Task','2025-01-27',0.68,4,17,'2025-03-02 02:17:53','2025-03-02 02:17:53'),(124,'et Task','2024-09-28',4.87,4,17,'2025-03-02 02:17:53','2025-03-02 02:17:53'),(125,'fugit Task','2025-01-23',5.90,4,17,'2025-03-02 02:17:53','2025-03-02 02:17:53'),(126,'cumque Task','2024-03-21',5.33,4,17,'2025-03-02 02:17:53','2025-03-02 02:17:53'),(127,'neque Task','2024-12-12',2.28,4,18,'2025-03-02 02:17:53','2025-03-02 02:17:53'),(128,'dicta Task','2024-05-26',6.88,4,18,'2025-03-02 02:17:53','2025-03-02 02:17:53'),(129,'minus Task','2024-10-17',5.73,4,18,'2025-03-02 02:17:53','2025-03-02 02:17:53'),(130,'omnis Task','2024-03-19',7.83,4,18,'2025-03-02 02:17:53','2025-03-02 02:17:53'),(131,'quia Task','2024-07-16',4.87,4,18,'2025-03-02 02:17:53','2025-03-02 02:17:53'),(132,'in Task','2025-02-25',6.12,4,18,'2025-03-02 02:17:53','2025-03-02 02:17:53'),(133,'voluptatem Task','2024-09-05',5.75,4,18,'2025-03-02 02:17:53','2025-03-02 02:17:53'),(134,'rerum Task','2024-07-04',5.42,3,19,'2025-03-02 02:17:53','2025-03-02 02:17:53'),(135,'magnam Task','2024-10-25',2.38,3,19,'2025-03-02 02:17:53','2025-03-02 02:17:53'),(136,'et Task','2024-08-05',7.62,3,19,'2025-03-02 02:17:53','2025-03-02 02:17:53'),(137,'itaque Task','2024-05-18',5.78,3,19,'2025-03-02 02:17:53','2025-03-02 02:17:53'),(138,'sunt Task','2024-07-06',4.74,3,19,'2025-03-02 02:17:53','2025-03-02 02:17:53'),(139,'quisquam Task','2024-12-11',3.27,10,20,'2025-03-02 02:17:53','2025-03-02 02:17:53'),(140,'rerum Task','2024-10-06',1.08,10,20,'2025-03-02 02:17:53','2025-03-02 02:17:53'),(141,'voluptate Task','2024-03-05',1.11,10,20,'2025-03-02 02:17:53','2025-03-02 02:17:53'),(142,'qui Task','2024-07-18',4.87,10,20,'2025-03-02 02:17:53','2025-03-02 02:17:53'),(143,'eius Task','2025-01-02',1.70,10,20,'2025-03-02 02:17:53','2025-03-02 02:17:53'),(144,'eveniet Task','2025-01-05',4.46,10,20,'2025-03-02 02:17:53','2025-03-02 02:17:53'),(145,'sint Task','2025-01-18',1.15,10,20,'2025-03-02 02:17:53','2025-03-02 02:17:53'),(146,'tempore Task','2024-09-24',7.56,10,20,'2025-03-02 02:17:53','2025-03-02 02:17:53');
/*!40000 ALTER TABLE `timesheets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'John','Doe','john.doe@example.com','2025-03-02 02:17:51','$2y$12$ke9BD3IAZWS46ljSgFaHpuKRjuOWe31a.a.Zda5iFRW/VCeTNI5ZO','GmStc5CDAD','2025-03-02 02:17:52','2025-03-02 02:17:52'),(2,'Isabell Funk','Prof. Kyle Rempel DVM','margaretta.willms@example.net','2025-03-02 02:17:52','$2y$12$TEuBlHn.9J41BJqbUiFqs.aIdYjNaQMmdVPfbsFnVbnT6Wcu6lTBq','G7uTp32IZ3','2025-03-02 02:17:52','2025-03-02 02:17:52'),(3,'Randall Cronin','Zane Dare','auer.bernie@example.com','2025-03-02 02:17:52','$2y$12$TEuBlHn.9J41BJqbUiFqs.aIdYjNaQMmdVPfbsFnVbnT6Wcu6lTBq','BIUHrY5WEX','2025-03-02 02:17:52','2025-03-02 02:17:52'),(4,'Thea Borer','Mrs. Mya Sauer Sr.','stracke.paxton@example.net','2025-03-02 02:17:52','$2y$12$TEuBlHn.9J41BJqbUiFqs.aIdYjNaQMmdVPfbsFnVbnT6Wcu6lTBq','rCg4yaZjMO','2025-03-02 02:17:52','2025-03-02 02:17:52'),(5,'Cordelia Schimmel','Kelton Hauck','nwalker@example.net','2025-03-02 02:17:52','$2y$12$TEuBlHn.9J41BJqbUiFqs.aIdYjNaQMmdVPfbsFnVbnT6Wcu6lTBq','zjty1oML0w','2025-03-02 02:17:52','2025-03-02 02:17:52'),(6,'Dr. Braeden Konopelski','Henry Ratke','bode.cordie@example.net','2025-03-02 02:17:52','$2y$12$TEuBlHn.9J41BJqbUiFqs.aIdYjNaQMmdVPfbsFnVbnT6Wcu6lTBq','Bdwhr2Zm2t','2025-03-02 02:17:52','2025-03-02 02:17:52'),(7,'Vita Gleason','Margaret Gleason','soledad13@example.org','2025-03-02 02:17:52','$2y$12$TEuBlHn.9J41BJqbUiFqs.aIdYjNaQMmdVPfbsFnVbnT6Wcu6lTBq','rSI2bV7jB6','2025-03-02 02:17:52','2025-03-02 02:17:52'),(8,'Myron Stark','Helena Keebler','schroeder.janis@example.org','2025-03-02 02:17:52','$2y$12$TEuBlHn.9J41BJqbUiFqs.aIdYjNaQMmdVPfbsFnVbnT6Wcu6lTBq','BxSUyrYswg','2025-03-02 02:17:52','2025-03-02 02:17:52'),(9,'Minnie Abernathy','Ila Romaguera','aufderhar.triston@example.com','2025-03-02 02:17:52','$2y$12$TEuBlHn.9J41BJqbUiFqs.aIdYjNaQMmdVPfbsFnVbnT6Wcu6lTBq','WlI88JdSxM','2025-03-02 02:17:52','2025-03-02 02:17:52'),(10,'Eulah Pagac III','Darrick Mills','morissette.mina@example.net','2025-03-02 02:17:52','$2y$12$TEuBlHn.9J41BJqbUiFqs.aIdYjNaQMmdVPfbsFnVbnT6Wcu6lTBq','rrQweKZ6eP','2025-03-02 02:17:52','2025-03-02 02:17:52'),(11,'Alaina Ziemann','Maia Auer','fahey.elnora@example.org','2025-03-02 02:17:52','$2y$12$TEuBlHn.9J41BJqbUiFqs.aIdYjNaQMmdVPfbsFnVbnT6Wcu6lTBq','lR7KZaZgil','2025-03-02 02:17:52','2025-03-02 02:17:52');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-02  2:18:46
