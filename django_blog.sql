-- MySQL dump 10.13  Distrib 5.7.16, for osx10.12 (x86_64)
--
-- Host: pythontest.cecvfgav3yog.ap-northeast-2.rds.amazonaws.com    Database: django_blogdb
-- ------------------------------------------------------
-- Server version	5.6.27-log

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
-- Current Database: `django_blogdb`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `django_blogdb` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `django_blogdb`;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_0e939a4f` (`group_id`),
  KEY `auth_group_permissions_8373b171` (`permission_id`),
  CONSTRAINT `auth_group__permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permission_group_id_689710a9a73b7457_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_417f1b1c` (`content_type_id`),
  CONSTRAINT `auth__content_type_id_508cf46651277a81_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add article',7,'add_article'),(20,'Can change article',7,'change_article'),(21,'Can delete article',7,'delete_article'),(22,'Can add tag',8,'add_tag'),(23,'Can change tag',8,'change_tag'),(24,'Can delete tag',8,'delete_tag'),(25,'Can add category',9,'add_category'),(26,'Can change category',9,'change_category'),(27,'Can delete category',9,'delete_category');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$12000$9zqSbIgofSv7$d+e803i6xloYJP4NVLuhhUvQjOE/WChC3Jq5xl2QhVI=','2017-07-18 12:52:48',1,'yuxiang','','','xiang12835@163.com',1,1,'2016-09-16 12:56:48');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_e8701ad4` (`user_id`),
  KEY `auth_user_groups_0e939a4f` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_4b5ed4ffdb8fd9b0_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_e8701ad4` (`user_id`),
  KEY `auth_user_user_permissions_8373b171` (`permission_id`),
  CONSTRAINT `auth_user_u_permission_id_384b62483d7071f0_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissi_user_id_7f0938558328534a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_417f1b1c` (`content_type_id`),
  KEY `django_admin_log_e8701ad4` (`user_id`),
  CONSTRAINT `djang_content_type_id_697914295151027a_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2016-09-16 13:16:46','1','Python快速入门',1,'',7,1),(2,'2016-09-16 13:21:58','1','Python快速入门',2,'Changed content.',7,1),(3,'2016-09-16 13:26:30','1','Python快速入门',2,'Changed content.',7,1),(4,'2016-09-16 13:32:13','1','Python快速入门',2,'Changed content.',7,1),(5,'2016-09-16 14:23:30','1','Python快速入门',2,'Changed content.',7,1),(6,'2016-09-16 14:27:47','1','Python快速入门',2,'Changed content.',7,1),(7,'2016-09-16 14:36:59','1','Python快速入门',2,'Changed content.',7,1),(8,'2016-09-16 14:51:36','1','Python快速入门',2,'Changed content.',7,1),(9,'2016-09-16 15:02:09','1','Python快速入门',2,'Changed content.',7,1),(10,'2016-09-16 15:08:53','2','Mac开发环境配置',1,'',7,1),(11,'2016-09-16 15:09:59','2','Mac开发环境配置',2,'Changed content.',7,1),(12,'2016-09-16 15:15:22','1','Python快速入门',2,'Changed content.',7,1),(13,'2016-09-16 15:21:37','1','Python快速入门',2,'Changed content.',7,1),(14,'2016-09-16 15:27:01','1','Python快速入门',2,'Changed content.',7,1),(15,'2016-09-16 15:29:46','1','Python快速入门',2,'Changed content.',7,1),(16,'2016-09-16 15:43:29','2','Mac开发环境配置',2,'Changed content.',7,1),(17,'2016-09-16 15:45:08','2','Mac开发环境配置',2,'Changed content.',7,1),(18,'2016-09-16 15:47:39','2','Mac开发环境配置',2,'Changed content.',7,1),(19,'2016-09-16 17:17:06','3','HTML5开发前准备',1,'',7,1),(20,'2016-09-16 17:17:22','3','HTML5开发前准备',2,'Changed content.',7,1),(21,'2016-09-16 17:19:12','4','JavaScript基础',1,'',7,1),(22,'2016-09-16 17:22:43','4','JavaScript基础',2,'Changed content.',7,1),(23,'2016-09-16 17:26:26','4','JavaScript基础',2,'Changed content.',7,1),(24,'2016-09-16 17:28:11','4','JavaScript基础',2,'Changed content.',7,1),(25,'2016-09-16 17:28:57','4','JavaScript基础',2,'Changed content.',7,1),(26,'2016-09-17 12:23:16','4','JavaScript基础',2,'Changed category.',7,1),(27,'2016-09-17 12:23:40','3','HTML5开发前准备',2,'Changed category.',7,1),(28,'2016-09-17 12:24:05','2','Mac开发环境配置',2,'Changed category.',7,1),(29,'2016-09-17 12:24:23','1','Python快速入门',2,'Changed category.',7,1),(30,'2016-09-17 12:50:28','4','JavaScript基础',2,'Changed tag.',7,1),(31,'2016-09-17 12:51:44','3','HTML5开发前准备',2,'Changed tag.',7,1),(32,'2016-09-17 12:52:02','2','Mac开发环境配置',2,'Changed tag.',7,1),(33,'2016-09-17 12:52:14','1','Python快速入门',2,'Changed tag.',7,1),(34,'2016-09-18 02:52:27','3','HTML5开发前准备',2,'Changed content.',7,1),(35,'2016-09-18 11:33:48','2','Mac开发环境配置',2,'Changed content.',7,1),(36,'2016-09-18 11:35:31','2','Mac开发环境配置',2,'Changed content.',7,1),(37,'2016-09-18 11:36:30','1','Python快速入门',2,'Changed content.',7,1),(38,'2016-09-18 11:44:56','1','Python快速入门',2,'Changed content.',7,1),(39,'2016-09-18 11:52:17','1','Python快速入门',2,'Changed content.',7,1),(40,'2016-09-18 11:54:18','1','Python快速入门',2,'Changed content.',7,1),(41,'2016-09-19 06:05:49','1','Python快速入门',2,'Changed content.',7,1),(42,'2016-09-19 06:10:03','1','Python快速入门',2,'Changed content.',7,1),(43,'2016-09-19 06:10:50','2','Mac开发环境配置',2,'Changed content.',7,1),(44,'2016-09-19 06:12:10','4','JavaScript基础',2,'Changed content.',7,1),(45,'2016-09-19 06:34:00','4','JavaScript基础',2,'Changed content.',7,1),(46,'2016-09-19 06:44:14','4','JavaScript基础',2,'Changed content.',7,1),(47,'2016-09-19 12:03:04','5','Django搭建简易博客',1,'',7,1),(48,'2016-09-19 12:10:17','5','Django搭建简易博客',2,'Changed content.',7,1),(49,'2016-09-19 12:35:09','6','python web 部署：django + gunicorn + supervisor + nginx',1,'',7,1),(50,'2016-09-19 12:43:37','6','python web 部署：django + gunicorn+ nginx + supervisor ',2,'Changed title and content.',7,1),(51,'2016-09-19 13:53:49','6','python web 部署：django + gunicorn+ nginx + supervisor ',2,'Changed content.',7,1),(52,'2016-09-19 13:56:40','6','python web 部署：django + gunicorn+ nginx + supervisor ',2,'Changed content.',7,1),(53,'2016-09-19 14:17:36','6','python web 部署：django + gunicorn+ nginx + supervisor ',2,'Changed content.',7,1),(54,'2016-09-19 15:41:43','6','python web 部署：django + gunicorn+ nginx + supervisor ',2,'Changed content.',7,1),(55,'2016-09-19 15:44:30','6','python web 部署：django + gunicorn+ nginx + supervisor ',2,'Changed content.',7,1),(56,'2016-09-19 16:24:16','5','Django搭建简易博客',2,'Changed content.',7,1),(57,'2016-09-19 16:30:31','6','python web 部署：django + gunicorn+ nginx + supervisor ',2,'Changed tag.',7,1),(58,'2016-09-19 16:30:55','5','Django搭建简易博客',2,'Changed tag.',7,1),(59,'2016-09-22 14:40:01','6','python web 部署：django + gunicorn+ nginx + supervisor ',2,'Changed content.',7,1),(60,'2016-09-22 23:22:50','7','插入排序',1,'',7,1),(61,'2016-09-22 23:24:02','7','插入排序',2,'Changed tag.',7,1),(62,'2016-09-22 23:28:18','7','插入排序',2,'Changed tag.',7,1),(63,'2016-09-22 23:29:24','7','插入排序',2,'Changed content.',7,1),(64,'2016-09-22 23:32:46','4','JavaScript基础',2,'Changed content.',7,1),(65,'2016-09-22 23:35:59','7','插入排序',2,'Changed content.',7,1),(66,'2016-09-22 23:48:31','6','python web 部署：django + gunicorn+ nginx + supervisor ',2,'Changed content.',7,1),(67,'2016-09-23 00:02:11','6','python web 部署：django + gunicorn+ nginx + supervisor ',2,'Changed content.',7,1),(68,'2016-09-23 00:07:41','7','插入排序',2,'Changed content.',7,1),(69,'2016-09-23 16:20:39','7','插入排序',2,'Changed tag and content.',7,1),(70,'2016-09-23 17:37:32','8','简单选择排序',1,'',7,1),(71,'2016-09-23 17:39:20','9','冒泡排序',1,'',7,1),(72,'2016-09-23 17:40:17','10','快速排序',1,'',7,1),(73,'2016-09-23 17:41:06','11','堆排序',1,'',7,1),(74,'2016-09-23 17:42:54','12','希尔排序',1,'',7,1),(75,'2016-09-23 17:43:40','13','归并排序',1,'',7,1),(76,'2016-09-23 17:44:25','14','基数排序',1,'',7,1),(77,'2016-09-24 06:38:20','15','顺序查找',1,'',7,1),(78,'2016-09-24 09:56:39','16','折半查找',1,'',7,1),(79,'2016-09-24 18:12:17','6','python web 部署：django + gunicorn+ nginx + supervisor ',2,'Changed category.',7,1),(80,'2016-09-24 18:14:27','5','Django 搭建简易博客',2,'Changed title, category and tag.',7,1),(81,'2016-09-25 03:57:55','6','python web 部署：django + gunicorn+ nginx + supervisor ',2,'Changed category.',7,1),(82,'2016-09-25 05:37:14','8','选择排序',2,'Changed title.',7,1),(83,'2016-09-25 05:37:37','4','JavaScript 基础',2,'Changed title.',7,1),(84,'2016-09-25 05:37:52','3','HTML5 开发前准备',2,'Changed title.',7,1),(85,'2016-09-25 05:38:05','2','Mac 开发环境配置',2,'Changed title.',7,1),(86,'2016-09-25 05:38:18','1','Python 快速入门',2,'Changed title.',7,1),(87,'2016-09-25 05:38:55','6','python web 部署：django + gunicorn+ nginx + supervisor ',2,'No fields changed.',7,1),(88,'2016-09-25 08:20:09','17','Django 模型中获取外键和多对多的值',1,'',7,1),(89,'2016-09-25 08:31:43','17','Django 模型中外键和多对多',2,'Changed title and content.',7,1),(90,'2016-09-25 08:43:58','5','Django 搭建简易博客',2,'Changed tag.',7,1),(91,'2016-09-25 08:45:03','6','python web 部署：django + gunicorn+ nginx + supervisor ',2,'Changed tag.',7,1),(92,'2016-09-25 09:00:13','5','Django 搭建简易博客',2,'Changed category.',7,1),(93,'2016-10-10 14:12:48','18','栈',1,'',7,1),(94,'2016-10-10 14:16:01','19','队列',1,'',7,1),(95,'2016-10-10 14:18:14','18','栈',2,'Changed content.',7,1),(96,'2016-10-10 15:15:34','20','以下的代码的输出将是什么? 说出你的答案并解释。',1,'',7,1),(97,'2016-10-10 15:16:34','20','以下的代码的输出将是什么',2,'Changed title and content.',7,1),(98,'2016-10-10 15:23:20','20','类变量的引用',2,'Changed title.',7,1),(99,'2016-10-10 15:44:45','21','python 中的（//）操作符与（/）操作符',1,'',7,1),(100,'2016-10-10 15:46:47','21','python 中的（//）操作符与（/）操作符',2,'Changed content.',7,1),(101,'2016-10-10 15:47:22','20','python 中类变量的引用',2,'Changed title.',7,1),(102,'2016-10-10 15:54:40','22','python 列表中的 IndexError',1,'',7,1),(103,'2016-10-10 15:56:02','22','python 列表中的 IndexError',2,'Changed content.',7,1),(104,'2016-10-10 16:03:42','22','Python 列表中的 IndexError',2,'Changed title.',7,1),(105,'2016-10-10 16:04:38','21','Python 中的（//）操作符与（/）操作符',2,'Changed title.',7,1),(106,'2016-10-10 16:04:58','20','Python 中类变量的引用',2,'Changed title.',7,1),(107,'2016-10-10 16:08:09','23','lambda ',1,'',7,1),(108,'2016-10-10 16:11:25','24','列表易错题',1,'',7,1),(109,'2016-10-10 16:13:10','25','Python中的APScheduler模块',1,'',7,1),(110,'2016-10-10 16:20:38','26','Python 中的 urllib 模块',1,'',7,1),(111,'2016-10-10 16:25:19','27','SQL优化',1,'',7,1),(112,'2016-10-13 16:49:05','19','队列',2,'Changed content.',7,1),(113,'2016-10-13 16:50:30','18','栈',2,'Changed content.',7,1),(114,'2016-10-16 15:29:58','6','Python web 部署：mySQL + django + gunicorn + nginx + supervisor ',2,'Changed title and content.',7,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_45f3b1d93ec8c61c_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'log entry','admin','logentry'),(2,'permission','auth','permission'),(3,'group','auth','group'),(4,'user','auth','user'),(5,'content type','contenttypes','contenttype'),(6,'session','sessions','session'),(7,'article','myApp','article'),(8,'tag','myApp','tag'),(9,'category','myApp','category');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2016-09-16 04:51:39'),(2,'auth','0001_initial','2016-09-16 04:51:42'),(3,'admin','0001_initial','2016-09-16 04:51:43'),(4,'myApp','0001_initial','2016-09-16 04:51:43'),(5,'sessions','0001_initial','2016-09-16 04:51:44'),(6,'myApp','0002_auto_20160917_1827','2016-09-17 10:28:19'),(7,'myApp','0003_auto_20160925_0043','2016-09-24 17:08:10');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('0jqjuw6n4ztz9kig73w51d43qnqtbypv','NzI1MWJhYTQ4OWI0ZDhjMTNhNzIzYjMyOTIzNzhlYTc0ZWVhNWNjODp7fQ==','2016-10-08 17:35:07'),('1eqkl0gaycornigmkutjp5wxhev3h8lc','YTAyNmY0NmNkNjVhN2I0ZTQ0ZDJhZGM0Mzk0ZGU4NGU5MTBiNTdjZTp7Il9hdXRoX3VzZXJfaGFzaCI6IjY4YWU3ZThmZjJjZDcxYjk1ODVkODEzYWEwOTcyMTIxMzNiMWMzYTAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9','2017-08-01 12:52:48'),('2h5dn95cvzqbkhciivh7k9pntkkkdvq0','YTAyNmY0NmNkNjVhN2I0ZTQ0ZDJhZGM0Mzk0ZGU4NGU5MTBiNTdjZTp7Il9hdXRoX3VzZXJfaGFzaCI6IjY4YWU3ZThmZjJjZDcxYjk1ODVkODEzYWEwOTcyMTIxMzNiMWMzYTAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9','2016-09-30 16:29:38'),('2lj72up77vv2i6tca770klx95fhx4qvf','YTAyNmY0NmNkNjVhN2I0ZTQ0ZDJhZGM0Mzk0ZGU4NGU5MTBiNTdjZTp7Il9hdXRoX3VzZXJfaGFzaCI6IjY4YWU3ZThmZjJjZDcxYjk1ODVkODEzYWEwOTcyMTIxMzNiMWMzYTAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9','2017-08-01 12:52:46'),('a7by7xhqsxbn961sz0ht53p8ie7uelo0','YTAyNmY0NmNkNjVhN2I0ZTQ0ZDJhZGM0Mzk0ZGU4NGU5MTBiNTdjZTp7Il9hdXRoX3VzZXJfaGFzaCI6IjY4YWU3ZThmZjJjZDcxYjk1ODVkODEzYWEwOTcyMTIxMzNiMWMzYTAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9','2016-10-24 13:42:20'),('ai7w1zc046b2qq6assjz7zs8cy220wt5','NzI1MWJhYTQ4OWI0ZDhjMTNhNzIzYjMyOTIzNzhlYTc0ZWVhNWNjODp7fQ==','2016-10-08 17:44:30'),('crim9p1dtq918i4l307dsukm1hm749wx','NzI1MWJhYTQ4OWI0ZDhjMTNhNzIzYjMyOTIzNzhlYTc0ZWVhNWNjODp7fQ==','2016-10-08 17:35:05'),('ef7rdbb2zsejqsi7squf9m34musb1dnw','YTAyNmY0NmNkNjVhN2I0ZTQ0ZDJhZGM0Mzk0ZGU4NGU5MTBiNTdjZTp7Il9hdXRoX3VzZXJfaGFzaCI6IjY4YWU3ZThmZjJjZDcxYjk1ODVkODEzYWEwOTcyMTIxMzNiMWMzYTAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9','2016-10-02 02:51:01'),('gw3xhxix4p9bq2uj5c752okzv6kxsqhj','YTAyNmY0NmNkNjVhN2I0ZTQ0ZDJhZGM0Mzk0ZGU4NGU5MTBiNTdjZTp7Il9hdXRoX3VzZXJfaGFzaCI6IjY4YWU3ZThmZjJjZDcxYjk1ODVkODEzYWEwOTcyMTIxMzNiMWMzYTAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9','2016-10-02 12:08:04'),('lhvt7f8is70ib5uxe3tp6fd9moje60ob','YTAyNmY0NmNkNjVhN2I0ZTQ0ZDJhZGM0Mzk0ZGU4NGU5MTBiNTdjZTp7Il9hdXRoX3VzZXJfaGFzaCI6IjY4YWU3ZThmZjJjZDcxYjk1ODVkODEzYWEwOTcyMTIxMzNiMWMzYTAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9','2017-08-01 12:52:48'),('lj5ury26ibn3u0jxp2okf631vmn0ukqx','YTAyNmY0NmNkNjVhN2I0ZTQ0ZDJhZGM0Mzk0ZGU4NGU5MTBiNTdjZTp7Il9hdXRoX3VzZXJfaGFzaCI6IjY4YWU3ZThmZjJjZDcxYjk1ODVkODEzYWEwOTcyMTIxMzNiMWMzYTAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9','2017-08-01 12:52:47'),('mqrcz0cu32iachsv15f7ja4xoecvu2eh','NzI1MWJhYTQ4OWI0ZDhjMTNhNzIzYjMyOTIzNzhlYTc0ZWVhNWNjODp7fQ==','2016-10-08 17:37:29'),('nirvfi9xxy9enfrhscqmfpay9e37decf','YTAyNmY0NmNkNjVhN2I0ZTQ0ZDJhZGM0Mzk0ZGU4NGU5MTBiNTdjZTp7Il9hdXRoX3VzZXJfaGFzaCI6IjY4YWU3ZThmZjJjZDcxYjk1ODVkODEzYWEwOTcyMTIxMzNiMWMzYTAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9','2016-10-24 12:43:59'),('oh7emcpd2a6q85cexa2x5xjnzk2ldxrs','YTAyNmY0NmNkNjVhN2I0ZTQ0ZDJhZGM0Mzk0ZGU4NGU5MTBiNTdjZTp7Il9hdXRoX3VzZXJfaGFzaCI6IjY4YWU3ZThmZjJjZDcxYjk1ODVkODEzYWEwOTcyMTIxMzNiMWMzYTAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9','2016-10-06 14:38:10'),('pzurndkplr71nhgcgc3el78cluwuo872','YTAyNmY0NmNkNjVhN2I0ZTQ0ZDJhZGM0Mzk0ZGU4NGU5MTBiNTdjZTp7Il9hdXRoX3VzZXJfaGFzaCI6IjY4YWU3ZThmZjJjZDcxYjk1ODVkODEzYWEwOTcyMTIxMzNiMWMzYTAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9','2016-10-08 18:09:53'),('vsv2ltocnkmhy91md7mth8xbggyetrxt','YTAyNmY0NmNkNjVhN2I0ZTQ0ZDJhZGM0Mzk0ZGU4NGU5MTBiNTdjZTp7Il9hdXRoX3VzZXJfaGFzaCI6IjY4YWU3ZThmZjJjZDcxYjk1ODVkODEzYWEwOTcyMTIxMzNiMWMzYTAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9','2016-09-30 14:17:26');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myApp_article`
--

DROP TABLE IF EXISTS `myApp_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `myApp_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `date_time` datetime NOT NULL,
  `content` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myApp_article`
--

LOCK TABLES `myApp_article` WRITE;
/*!40000 ALTER TABLE `myApp_article` DISABLE KEYS */;
INSERT INTO `myApp_article` VALUES (1,'Python 快速入门',1,'2016-09-16 13:16:46','## Python语言集成开发环境搭建\r\n- python语言的运行环境：python 2.7.* ，运行速度快，库多\r\n- 集成开发环境：PyCharm\r\n## Python语言基本语法\r\n- python语言默认不识别utf-8的中文字符串，需要在文件头部加入# coding=utf-8\r\n- 用format函数给字符串中占位符传值\r\n``` python\r\nfor i in range(0, 100, 2) :\r\n    print(\"Item {0}, {1}\".format(i, \"Hello\"))\r\n```\r\n- 引入python文件的两种方法\r\n``` python\r\nimport loadlib  # 导入文件，此时文件名作为命名空间\r\nh = loadlib.Hello()\r\nh.sayHello()\r\n```\r\n``` python\r\nfrom loadlib import Hello # 从文件中引入类\r\nh = Hello()\r\nh.sayHello()\r\n```\r\n## Python语言Web开发框架web2py\r\n### 创建web2py项目\r\n\r\n### 处理静态文件\r\n\r\n- applications文件夹 – 所有的应用都放在这个文件夹里\r\n- static文件夹 – 存放所有静态文件 – 通过URL地址是可以访问的\r\n\r\n### 编写控制器\r\n\r\n- controllers文件夹 – 存放控制器 – 来定位资源，定位到特定的代码，与服务器进行交互\r\n``` python\r\n# coding=utf-8\r\ndef index(): # 默认访问的是index()方法，localhost:8000/main/mycontroller\r\n    return \"Hello python\"\r\ndef hello(): # 可以自定义方法，通过URL地址访问, localhost:8000/main/mycontroller/hello\r\n    return \"yx\"\r\n```'),(2,'Mac 开发环境配置',2,'2016-09-16 15:08:53','## [Mac 开发配置手册](https://aaaaaashu.gitbooks.io/mac-dev-setup/content/)\r\n## Mac OS自带工具(Terminal＋screen＋vim)\r\n## Mac OS替换工具组合(iTerm2+zsh+Macvim+tmux+git+sublime+PyCharm)\r\n- iTerm2代替Terminal\r\n- tmux代替screen\r\n- Macvim代替vim\r\n## .zshrc\r\n## .vimrc (vundle)\r\n## .tmux.conf\r\n## .gitignore'),(3,'HTML5 开发前准备',1,'2016-09-16 17:17:06','## 新特征\r\n - 用于绘图的canvas标签\r\n - 用于媒介回放的video和audio元素\r\n## 开发工具\r\n -  Intellij IDEA'),(4,'JavaScript 基础',1,'2016-09-16 17:19:12','## Hello JavaScript\r\n``` JavaScript\r\ndocument.write(“Hello JavaScript”);\r\n```\r\n## == 与 ===\r\n- \"===\"会检测类型\r\n\r\n## switch\r\n``` JavaScript\r\nswitch (i) {\r\n	case 1:\r\n		document.write(“i=1”);\r\n		break;\r\n	case 2:\r\n		document.write(“i=2”);\r\n		break;\r\n	default:\r\n		document.write(“条件不满足case”);\r\n		break;\r\n}\r\n```\r\n## for/in\r\n``` JavaScript\r\nvar i = [1,2,3,4,5];\r\nvar j;\r\nfor (j in i) {\r\n	document.write(i[j]+”<br/>”);\r\n}\r\n```\r\n## While 与 do – which的区别\r\n\r\n## break 与 continue\r\n- break：跳出当前循环\r\n- continue：跳出本次循环，进行下一次循环\r\n\r\n## alert()函数\r\n\r\n## 函数调用\r\n- 在script标签內调用\r\n- 在HTML文件中调用\r\n``` html\r\n  <button onclick=”demo()”>按钮</button>\r\n```\r\n## 局部变量和全局变量\r\n``` JavaScript\r\nvar n = 10;  m = 20; // 全局变量 任何地方都可以使用\r\nfunction demo() {\r\n  var i= 10; 局部变量 只能在当前函数中使用\r\n  x = 10;  // 全局变量 任何地方都可以使用\r\n  alert(i);\r\n}\r\ndemo();\r\n```\r\n## 异常捕获\r\n``` JavaScript\r\ntry {\r\n	发生异常的代码块；\r\n} catch(err) {\r\n	错误信息处理；\r\n}\r\n```\r\n## Throw语句\r\n- 通过throw语句创建一个自定义错误\r\n- 一般和try-catch一起使用，用来区分不用地方的同一个错误\r\n``` JavaScript\r\nthrow “第一个用户输入为空”;\r\n```\r\n\r\n## 事件\r\n- onclick\r\n- onmouseout – 鼠标移出\r\n``` html\r\n  <button onmouseout =“onOut(this)”>按钮</button>  <!-- 当函数有参数时 -->\r\n```\r\n- onmouseover – 鼠标经过\r\n- onchange – 文本内容改变\r\n- onselect – 文本框内容选中\r\n- onfocus – 光标聚集\r\n- onload – 网页加载完毕后\r\n\r\n## 改变HTML输出流\r\n注意：绝对不要在文档加载完成之后使用docment.write()，这会覆盖该文档\r\n\r\n## 寻找元素\r\n- 通过id找到HTML元素\r\n- 通过标签名找到HTML元素\r\n\r\n## 改变HTML内容\r\n使用属性：innerHTML\r\n``` JavaScript\r\ndocument.getElementById(“id”).innerHTML=“Hello world”;\r\n```\r\n\r\n## 改变HTML属性\r\n使用属性：attribute\r\n\r\n## 待更新……'),(5,'Django 搭建简易博客',7,'2016-09-19 12:03:04','## 项目源码\r\n[Django搭建简易博客](https://github.com/xiang12835/django_blog)\r\n\r\n## 参考资料\r\n[Django 搭建简易博客教程](https://github.com/Andrew-liu/my_blog_tutorial)'),(6,'Python web 部署：mySQL + django + gunicorn + nginx + supervisor ',6,'2016-09-19 12:35:09','## AWS\r\n- EC2服务器\r\n- RDS (MySQL)\r\n\r\n## GoDaddy\r\n购买域名\r\n\r\n## 创建项目\r\n\r\nssh 到服务器，使用 git clone 拷贝项目\r\n\r\n## Django 自带服务器部署\r\n\r\npython为服务器script，采用Django 框架\r\n\r\n``` shell\r\n$ python manage.py runserver 0.0.0.0:80 &\r\n```\r\n## 使用 gunicorn 做中间 webservice\r\n\r\n考虑性能要求，使用 gunicorn 做 wsgi 容器。\r\n\r\n**安装 gunicorn**\r\n``` shell\r\n$ sudo pip install gunicorn\r\n```\r\n**启动 gunicorn**\r\n``` shell\r\n$ sudo gunicorn -w4 -b0.0.0.0:80 myProject.wsgi:application\r\n```\r\n其中 gunicorn 的部署中，-w 表示开启多少个 worker，-b 表示 gunicorn 开发的访问地址。\r\n\r\n## nginx 做前端代理\r\n\r\n考虑高性能\r\n\r\n更新中……\r\n\r\n## supervisor 管理服务器进程\r\n\r\n由于进程启动与杀死交繁琐，使用 supervisor，用来管理系统进程\r\n\r\n**安装 supervisor**\r\n\r\n``` shell\r\n$ pip install supervisor\r\n```\r\n\r\n**修改配置文件**\r\n``` shell\r\n$ echo_supervisord_conf > supervisor.conf  # 生成 supervisor 默认配置文件\r\n$ vim supervisor.conf   # 修改 supervisor 配置文件，添加 gunicorn 进程管理\r\n```\r\n\r\n``` shell\r\n[program:django_blog]\r\ncommand=gunicorn -w4 -b0.0.0.0:80 myProject.wsgi:application              ; supervisor启动命令\r\ndirectory=/home/ec2-user/web/python/django_blog                           ; 项目的文件夹路径\r\nstartsecs=0                                                               ; 启动时间\r\nstopwaitsecs=0                                                            ; 终止等待时间\r\nautostart=false                                                           ; 是否自动启动\r\nautorestart=false                                                         ; 是否自动重启\r\nstdout_logfile=/home/ec2-user/web/python/django_blog/log/gunicorn.log     ; log 日志\r\nstderr_logfile=/home/ec2-user/web/python/django_blog/log/gunicorn.err\r\n```\r\n\r\n``` shell\r\n[program:nginx]\r\ncommand=/usr/sbin/nginx\r\nstartsecs=0\r\nstopwaitsecs=0\r\nautostart=false\r\nautorestart=false\r\nstdout_logfile=/home/ec2-user/web/python/django_blog/log/nginx.log\r\nstderr_logfile=/home/ec2-user/web/python/django_blog/log/nginx.err\r\n```\r\n\r\n**supervisor 使用命令**\r\n\r\n``` shell\r\n$ supervisord -c supervisor.conf       # 通过配置文件启动supervisor\r\n$ supervisorctl -c supervisor.conf reload            # 重新载入 配置文件\r\n$ supervisorctl -c supervisor.conf reload                   #  重新载入 配置文件\r\n$ supervisorctl -c supervisor.conf start [all]|[appname]     # 启动指定/所有 supervisor管理的程序进程\r\n$ supervisorctl -c supervisor.conf stop [all]|[appname]      # 关闭指定/所有 supervisor管理的程序进程\r\n```\r\n\r\n## 参考资料\r\n- [python web 部署：nginx + gunicorn + supervisor + flask 部署笔记](http://www.jianshu.com/p/be9dd421fb8d)\r\n- [Django 部署(Nginx)](http://www.ziqiangxuetang.com/django/django-nginx-deploy.html)\r\n'),(7,'插入排序',3,'2016-09-22 23:22:50','时间复杂度：O(n^2)\r\n\r\n[C]\r\n``` C\r\n更新中……\r\n```\r\n[Python]\r\n``` Python\r\ndef insert_sort(lst):\r\n    count = len(lst)\r\n    for i in range(1, count):\r\n        val = lst[i]\r\n        j = i - 1\r\n        while j >= 0:\r\n            if lst[j] > val:\r\n                lst[j+1] = lst[j]\r\n                lst[j] = val\r\n            j -= 1\r\n    return lst\r\n```\r\n'),(8,'选择排序',3,'2016-09-23 17:37:31','[C]\r\n``` C\r\n```\r\n\r\n[Python]\r\n``` Python\r\n```\r\n\r\n'),(9,'冒泡排序',3,'2016-09-23 17:39:20','[C]\r\n``` C\r\n```\r\n\r\n[Python]\r\n``` Python\r\n```'),(10,'快速排序',3,'2016-09-23 17:40:16','[C]\r\n``` C\r\n```\r\n\r\n[Python]\r\n``` Python\r\n```'),(11,'堆排序',3,'2016-09-23 17:41:05','[C]\r\n``` C\r\n```\r\n\r\n[Python]\r\n``` Python\r\n```'),(12,'希尔排序',3,'2016-09-23 17:42:54','[C]\r\n``` C\r\n```\r\n\r\n[Python]\r\n``` Python\r\n```'),(13,'归并排序',3,'2016-09-23 17:43:39','[C]\r\n``` C\r\n```\r\n\r\n[Python]\r\n``` Python\r\n```'),(14,'基数排序',3,'2016-09-23 17:44:25','[C]\r\n``` C\r\n```\r\n\r\n[Python]\r\n``` Python\r\n```'),(15,'顺序查找',3,'2016-09-24 06:38:20','``` C\r\n```'),(16,'折半查找',3,'2016-09-24 09:56:38','``` C\r\n```'),(17,'Django 模型中外键和多对多',7,'2016-09-25 08:20:08','## 模型\r\nArticle, Category, Tag\r\n\r\n## 关系\r\nCategory是Article的外键\r\n\r\nTag是Article的many-to-many\r\n\r\n## 获取模型对象的外键和多对多值\r\n\r\n``` Python\r\n>>> from myApp.models import *\r\n>>> a = Article.objects.get(id=1)\r\n>>> a\r\n<Article: title1>\r\n>>> a.title\r\nu\'title1\'\r\n>>> a.tag\r\n<django.db.models.fields.related.ManyRelatedManager object at 0x02E46670>\r\n>>> a.tag.all()\r\n[<Tag: Python>]\r\n>>> a.category\r\n<Category: Programming>\r\n>>> a.category.name\r\nu\'Programming\'\r\n>>>\r\n```\r\n\r\n## 通过外键或多对多来获取关联模型的值\r\n``` Python\r\n>>> from myApp.models import *\r\n>>> t = Tag.objects.get(tag_name=\"Python\")\r\n>>> t\r\n<Tag: Python>\r\n>>> t.article_set.all()\r\n[<Article: title1>, <Article: title2>, <Article: title3>]\r\n>>> c = Category.objects.get(name=\"algorithm\")\r\n>>> c\r\n<Category: algorithm>\r\n>>> c.article_set.all()\r\n[<Article: title1>, <Article: title2>]\r\n>>>\r\n```\r\n\r\n'),(18,'栈',4,'2016-10-10 14:12:48','[Python]\r\n``` python \r\nclass Stack():\r\n    def __init__(st,size):\r\n        st.stack=[]\r\n        st.size=size\r\n        st.top=-1\r\n\r\n    def empty(st):\r\n        if st.top==-1:\r\n            return True\r\n        else:\r\n            return False\r\n\r\n    def full(st):\r\n        if st.top==st.size:\r\n            return True\r\n        else:\r\n            return False\r\n\r\n    def push(st,data):\r\n        if st.full():\r\n            print \"Stack is full\"\r\n        else:\r\n            st.stack.append(data)\r\n            st.top=st.top+1\r\n\r\n    def pop(st):\r\n        if st.empty():\r\n            print \"Stack is empty\"\r\n        else:\r\n            st.top=st.top-1\r\n```'),(19,'队列',4,'2016-10-10 14:16:01','[Python]\r\n\r\n``` python\r\nclass Queue():\r\n    def __init__(qu, size):\r\n        qu.queue = []\r\n        qu.size = size\r\n        qu.front = -1\r\n        qu.rear = -1\r\n\r\n    def empty(qu):\r\n        if qu.front == qu.rear:\r\n            return True\r\n        else:\r\n            return False\r\n\r\n    def full(qu):\r\n        if qu.rear - qu.front + 1 == qu.size:\r\n            return True\r\n        else:\r\n            return False\r\n\r\n    def enQueue(qu, data):\r\n        if qu.full():\r\n            print \"Queue is full\"\r\n        else:\r\n            qu.queue.append(data)\r\n            qu.rear += 1\r\n\r\n    def outQueue(qu):\r\n        if qu.empty():\r\n            print(\"Queue is empty\")\r\n        else:\r\n            qu.front -= 1\r\n```'),(20,'Python 中类变量的引用',9,'2016-10-10 15:15:33','## 问题\r\n``` python \r\nclass Parent(object):\r\n    x = 1\r\n \r\nclass Child1(Parent):\r\n    pass\r\n \r\nclass Child2(Parent):\r\n    pass\r\n \r\nprint Parent.x, Child1.x, Child2.x\r\nChild1.x = 2\r\nprint Parent.x, Child1.x, Child2.x\r\nParent.x = 3\r\nprint Parent.x, Child1.x, Child2.x\r\n```\r\n\r\n## 答案\r\n1 1 1\r\n\r\n1 2 1\r\n\r\n3 2 3\r\n\r\n##解析\r\n\r\n在 Python 中，类变量在内部是作为字典处理的。如果一个变量的名字没有在当前类的字典中发现，将搜索祖先类（比如父类）直到被引用的变量名被找到（如果这个被引用的变量名既没有在自己所在的类又没有在祖先类中找到，会引发一个 AttributeError 异常 ）。\r\n'),(21,'Python 中的（//）操作符与（/）操作符',9,'2016-10-10 15:44:44','## 问题\r\n\r\n``` python\r\ndef div1(x,y):\r\n    print(\"%s/%s = %s\" % (x, y, x/y))\r\n \r\ndef div2(x,y):\r\n    print(\"%s//%s = %s\" % (x, y, x//y))\r\n \r\ndiv1(5,2)\r\ndiv1(5.0,2)\r\ndiv2(5,2)\r\ndiv2(5.0,2.0)\r\n```\r\n## 在 Python 3 中，输出是\r\n\r\n5/2 = 2.5\r\n\r\n5.0/2 = 2.5\r\n\r\n5//2 = 2\r\n\r\n5.0//2.0 = 2.0\r\n\r\n## 在 Python 2 中，输出是\r\n\r\n5/2 = 2\r\n\r\n5.0/2 = 2.5\r\n\r\n5//2 = 2\r\n\r\n5.0//2.0 = 2.0\r\n\r\n## 解析\r\n\r\n在 Python 3 中，/ 操作符是做浮点除法，而 // 是做整除\r\n\r\n在 Python 2 中，/ 就是整除\r\n\r\n可以在 Python 2 中重载这一行为（比如达到你想在 Python 3 中的同样结果），通过添加以下导入：from __future__ import division'),(22,'Python 列表中的 IndexError',9,'2016-10-10 15:54:39','## 问题\r\n``` python \r\n>>> lst = [\'a\', \'b\', \'c\', \'d\', \'e\']\r\n>>> lst[10:]\r\n[]\r\n>>> lst[10]\r\n\r\nTraceback (most recent call last):\r\n  File \"<pyshell#9>\", line 1, in <module>\r\n    lst[10]\r\nIndexError: list index out of range\r\n>>>\r\n```\r\n\r\n## 解析\r\n\r\n试图访问一个超过列表索引值的成员将导致 IndexError（比如访问以上列表的 list[10]）\r\n\r\n试图访问一个列表的以超出列表成员数作为开始索引的切片将不会导致 IndexError，并且将仅仅返回一个空列表。一个讨厌的小问题是它会导致出现 bug ，并且这个问题是难以追踪的，因为它在运行时不会引发错误。'),(23,'lambda ',9,'2016-10-10 16:08:09','``` python\r\ndef multipliers():\r\n    return [lambda x : i * x for i in range(4)]\r\n \r\nprint [m(2) for m in multipliers()]\r\n```'),(24,'列表易错题',9,'2016-10-10 16:11:24','``` python\r\ndef extendList(val, list=[]):\r\n    list.append(val)\r\n    return list\r\n \r\nlist1 = extendList(10)\r\nlist2 = extendList(123,[])\r\nlist3 = extendList(\'a\')\r\n \r\nprint \"list1 = %s\" % list1\r\nprint \"list2 = %s\" % list2\r\nprint \"list3 = %s\" % list3\r\n```'),(25,'Python中的 APScheduler 模块',10,'2016-10-10 16:13:09',''),(26,'Python 中的 urllib 模块',10,'2016-10-10 16:20:38',''),(27,'SQL优化',8,'2016-10-10 16:25:19','');
/*!40000 ALTER TABLE `myApp_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myApp_article_tag`
--

DROP TABLE IF EXISTS `myApp_article_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `myApp_article_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `article_id` (`article_id`,`tag_id`),
  KEY `myApp_article_tag_a00c1b00` (`article_id`),
  KEY `myApp_article_tag_76f094bc` (`tag_id`),
  CONSTRAINT `myApp_article_tag_article_id_55b66b0f_fk_myApp_article_id` FOREIGN KEY (`article_id`) REFERENCES `myApp_article` (`id`),
  CONSTRAINT `myApp_article_tag_tag_id_4d7fd519_fk_myApp_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `myApp_tag` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myApp_article_tag`
--

LOCK TABLES `myApp_article_tag` WRITE;
/*!40000 ALTER TABLE `myApp_article_tag` DISABLE KEYS */;
INSERT INTO `myApp_article_tag` VALUES (79,1,1),(78,2,4),(77,3,2),(76,4,3),(88,5,8),(110,6,8),(111,6,10),(48,7,1),(49,7,6),(74,8,1),(75,8,6),(52,9,1),(53,9,6),(54,10,1),(55,10,6),(56,11,1),(57,11,6),(58,12,1),(59,12,6),(60,13,1),(61,13,6),(62,14,1),(63,14,6),(64,15,6),(65,16,6),(84,17,8),(109,18,1),(108,19,1),(102,20,1),(101,21,1),(100,22,1),(103,23,1),(104,24,1),(105,25,1),(106,26,1),(107,27,15);
/*!40000 ALTER TABLE `myApp_article_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myApp_category`
--

DROP TABLE IF EXISTS `myApp_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `myApp_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myApp_category`
--

LOCK TABLES `myApp_category` WRITE;
/*!40000 ALTER TABLE `myApp_category` DISABLE KEYS */;
INSERT INTO `myApp_category` VALUES (1,'编程语言'),(2,'操作系统'),(3,'算法'),(4,'数据结构'),(5,'工具'),(6,'运维'),(7,'框架'),(8,'数据库'),(9,'面试'),(10,'模块');
/*!40000 ALTER TABLE `myApp_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myApp_tag`
--

DROP TABLE IF EXISTS `myApp_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `myApp_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myApp_tag`
--

LOCK TABLES `myApp_tag` WRITE;
/*!40000 ALTER TABLE `myApp_tag` DISABLE KEYS */;
INSERT INTO `myApp_tag` VALUES (1,'Python'),(2,'HTML'),(3,'JavaScript'),(4,'Mac'),(5,'CSS'),(6,'C_CPP'),(7,'Flask'),(8,'Django'),(9,'Tornado'),(10,'Nginx'),(11,'Linux'),(12,'Windows'),(13,'jQuery'),(14,'AJAX'),(15,'MySQL'),(16,'Redis'),(17,'Shell'),(18,'Vim');
/*!40000 ALTER TABLE `myApp_tag` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-27 23:39:59
