---
--- ticketer database creation script
---

SET NAMES utf8mb4 COLLATE utf8mb4_unicode_ci;

DROP DATABASE IF EXISTS `ticketer`;
CREATE DATABASE `ticketer`;
USE ticketer;

---
DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

---
DROP TABLE IF EXISTS `ticket_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticket_types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

---
DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

---
DROP TABLE IF EXISTS `severities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `severities` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

---
DROP TABLE IF EXISTS `resolutions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resolutions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

---
DROP TABLE IF EXISTS `tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tickets` (
  `id` int NOT NULL AUTO_INCREMENT,
  `summary` varchar(128) NOT NULL,
  `description` text NOT NULL,
  `owner` int NOT NULL,
  `type` int NOT NULL,
  `severity` int NOT NULL,
  `created_at` timestamp NOT NULL,
  `created_by` int NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `resolved_by` int DEFAULT NULL,
  `resolved_at` timestamp NULL DEFAULT NULL,
  `status` int NOT NULL,
  `resolution` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tickets_severity1_idx` (`severity`),
  KEY `fk_tickets_users1_idx` (`owner`),
  KEY `fk_tickets_created_by_idx` (`created_by`),
  KEY `fk_tickets_updated_by_idx` (`updated_by`),
  KEY `fk_tickets_resolved_by_idx` (`resolved_by`),
  KEY `fk_tickets_ticket_types_idx` (`type`),
  KEY `status` (`status`),
  KEY `resolution` (`resolution`),
  CONSTRAINT `fk_tickets_created_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `fk_tickets_owner` FOREIGN KEY (`owner`) REFERENCES `users` (`id`),
  CONSTRAINT `fk_tickets_resolved_by` FOREIGN KEY (`resolved_by`) REFERENCES `users` (`id`),
  CONSTRAINT `fk_tickets_severity1` FOREIGN KEY (`severity`) REFERENCES `severities` (`id`),
  CONSTRAINT `fk_tickets_ticket_types` FOREIGN KEY (`type`) REFERENCES `ticket_types` (`id`),
  CONSTRAINT `fk_tickets_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`),
  CONSTRAINT `tickets_ibfk_1` FOREIGN KEY (`status`) REFERENCES `status` (`id`),
  CONSTRAINT `tickets_ibfk_2` FOREIGN KEY (`resolution`) REFERENCES `resolutions` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

---
DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `comment` text NOT NULL,
  `ticket` int NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_comments_id_ticket` (`ticket`),
  KEY `fk_comments_id_user` (`created_by`),
  CONSTRAINT `fk_comments_id_ticket` FOREIGN KEY (`ticket`) REFERENCES `tickets` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_comments_id_user` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `comments`;
CREATE TABLE `passwords` (
  `user_id` int NOT NULL,
  `password` text NOT NULL,
  PRIMARY KEY (`user_id`),
  KEY `fk_user_id_idx` (`user_id`),
  CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--- Severities
INSERT INTO `severities` VALUES(null, 'Low');
INSERT INTO `severities` VALUES(null, 'Medium');
INSERT INTO `severities` VALUES(null, 'High');
--- Ticket Types
INSERT INTO `ticket_types` VALUES(null, "Bug");
INSERT INTO `ticket_types` VALUES(null, "Development Item");
INSERT INTO `ticket_types` VALUES(null, "Enhancement");
--- Resolutions
INSERT INTO `resolutions` VALUES(null, "Fixed");
INSERT INTO `resolutions` VALUES(null, "Working as Designed");
INSERT INTO `resolutions` VALUES(null, "Won't Fix");
--- Status
INSERT INTO `status` VALUES(null, 'New');
INSERT INTO `status` VALUES(null ,'In Progress');
INSERT INTO `status` VALUES(null, 'Under Review');
INSERT INTO `status` VALUES(null, 'Closed');
--- Users
INSERT INTO `users` VALUES(null, "Paco", "Perez", "pakeperez@gmail.com");
INSERT INTO `users` VALUES(null, "Edgar", "Magana", "edgarmaganaglez@hotmail.com");
INSERT INTO `users` VALUES(null, "Marcelo", "Ramos", "march.reymus@gmail.com");

