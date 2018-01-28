-- MySQL dump 10.16  Distrib 10.1.26-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: lhbureportdb
-- ------------------------------------------------------
-- Server version	10.1.26-MariaDB

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
-- Table structure for table `activitylogs`
--

DROP TABLE IF EXISTS `activitylogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activitylogs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `created_by` int(11) NOT NULL,
  `action` enum('created','updated','deleted') NOT NULL,
  `log_type` varchar(50) NOT NULL,
  `log_type_title` mediumtext NOT NULL,
  `log_type_id` int(11) NOT NULL,
  `changes` mediumtext NOT NULL,
  `log_for` varchar(50) NOT NULL,
  `log_for_id` int(11) NOT NULL,
  `log_for2` varchar(50) NOT NULL,
  `log_for_id2` int(11) NOT NULL,
  `deleted_at` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activitylogs`
--

LOCK TABLES `activitylogs` WRITE;
/*!40000 ALTER TABLE `activitylogs` DISABLE KEYS */;
INSERT INTO `activitylogs` VALUES (1,3,'deleted','Message','delete me',8,'a:12:{s:7:\"subject\";s:9:\"delete me\";s:7:\"message\";s:17:\"<p>asdasd<br></p>\";s:12:\"form_user_id\";s:1:\"1\";s:10:\"to_user_id\";s:1:\"3\";s:6:\"status\";s:6:\"unread\";s:10:\"message_id\";s:1:\"0\";s:5:\"files\";s:0:\"\";s:16:\"deleted_by_users\";N;s:10:\"created_at\";s:10:\"1517082393\";s:10:\"updated_at\";s:10:\"1517082393\";s:6:\"sender\";N;s:10:\"receipiend\";N;}','Employee',1,'Employee',3,NULL,1517082412,NULL),(2,1,'created','Message','del this',9,'a:11:{s:7:\"subject\";s:8:\"del this\";s:7:\"message\";s:16:\"<p>aha !<br></p>\";s:12:\"form_user_id\";s:1:\"1\";s:10:\"to_user_id\";s:1:\"3\";s:6:\"status\";s:6:\"unread\";s:10:\"message_id\";i:0;s:5:\"files\";s:0:\"\";s:16:\"deleted_by_users\";N;s:10:\"updated_at\";i:1517082724;s:10:\"created_at\";i:1517082724;s:2:\"id\";s:1:\"9\";}','Employee',1,'Employee',3,NULL,1517082725,NULL),(3,3,'created','Message','Hello',10,'a:11:{s:7:\"subject\";s:5:\"Hello\";s:7:\"message\";s:29:\"<p>Merci pour le lien<br></p>\";s:12:\"form_user_id\";s:1:\"3\";s:10:\"to_user_id\";s:1:\"1\";s:6:\"status\";s:6:\"unread\";s:10:\"message_id\";i:0;s:5:\"files\";s:0:\"\";s:16:\"deleted_by_users\";N;s:10:\"updated_at\";i:1517083457;s:10:\"created_at\";i:1517083457;s:2:\"id\";s:2:\"10\";}','Employee',3,'Employee',1,NULL,1517083457,NULL),(4,3,'created','Message','Hello Sir',11,'a:11:{s:7:\"subject\";s:9:\"Hello Sir\";s:7:\"message\";s:17:\"<p>asdasd<br></p>\";s:12:\"form_user_id\";s:1:\"3\";s:10:\"to_user_id\";s:1:\"1\";s:6:\"status\";s:6:\"unread\";s:10:\"message_id\";i:0;s:5:\"files\";s:0:\"\";s:16:\"deleted_by_users\";N;s:10:\"updated_at\";i:1517083593;s:10:\"created_at\";i:1517083593;s:2:\"id\";s:2:\"11\";}','Employee',3,'Employee',1,NULL,1517083593,NULL),(5,3,'created','Message','Aha Franck',12,'a:11:{s:7:\"subject\";s:10:\"Aha Franck\";s:7:\"message\";s:56:\"<p>lorem ripsum a</p><p>as</p><p>maskdasd as ds <br></p>\";s:12:\"form_user_id\";s:1:\"3\";s:10:\"to_user_id\";s:1:\"1\";s:6:\"status\";s:6:\"unread\";s:10:\"message_id\";i:0;s:5:\"files\";s:0:\"\";s:16:\"deleted_by_users\";N;s:10:\"updated_at\";i:1517083631;s:10:\"created_at\";i:1517083631;s:2:\"id\";s:2:\"12\";}','Employee',3,'Employee',1,NULL,1517083631,NULL),(6,1,'deleted','Message','Hello Sir',11,'a:12:{s:7:\"subject\";s:9:\"Hello Sir\";s:7:\"message\";s:17:\"<p>asdasd<br></p>\";s:12:\"form_user_id\";s:1:\"3\";s:10:\"to_user_id\";s:1:\"1\";s:6:\"status\";s:6:\"unread\";s:10:\"message_id\";s:1:\"0\";s:5:\"files\";s:0:\"\";s:16:\"deleted_by_users\";N;s:10:\"created_at\";s:10:\"1517083593\";s:10:\"updated_at\";s:10:\"1517083593\";s:6:\"sender\";N;s:10:\"receipiend\";N;}','Employee',3,'Employee',1,NULL,1517085104,NULL),(7,1,'created','Message','demo 912312',13,'a:11:{s:7:\"subject\";s:11:\"demo 912312\";s:7:\"message\";s:16:\"<p>12312<br></p>\";s:12:\"form_user_id\";s:1:\"1\";s:10:\"to_user_id\";s:1:\"3\";s:6:\"status\";s:6:\"unread\";s:10:\"message_id\";i:0;s:5:\"files\";s:0:\"\";s:16:\"deleted_by_users\";N;s:10:\"updated_at\";i:1517085898;s:10:\"created_at\";i:1517085898;s:2:\"id\";s:2:\"13\";}','Employee',1,'Employee',3,NULL,1517085899,NULL),(8,3,'created','Message','Hello Man ... We Are Live !!!',14,'a:11:{s:7:\"subject\";s:29:\"Hello Man ... We Are Live !!!\";s:7:\"message\";s:18:\"<p>AHhaha <br></p>\";s:12:\"form_user_id\";s:1:\"3\";s:10:\"to_user_id\";s:1:\"1\";s:6:\"status\";s:6:\"unread\";s:10:\"message_id\";i:0;s:5:\"files\";s:0:\"\";s:16:\"deleted_by_users\";N;s:10:\"updated_at\";i:1517087003;s:10:\"created_at\";i:1517087003;s:2:\"id\";s:2:\"14\";}','Employee',3,'Employee',1,NULL,1517087004,NULL),(9,3,'created','Message','Hello Man ... We Are Live Again  !!!',15,'a:11:{s:7:\"subject\";s:36:\"Hello Man ... We Are Live Again  !!!\";s:7:\"message\";s:2364:\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsum veritatis cupiditate quaerat culpa provident dicta inventore fugit animi, qui eos impedit, porro consequatur ex aliquid nemo! Assumenda suscipit natus dolor, adipisci cum <b>iure</b> repellat possimus ratione itaque eligendi ea ipsam et voluptate reiciendis accusamus at aspernatur recusandae provident sapiente quam fugiat? Ullam suscipit animi iure doloribus incidunt dignissimos porro deserunt <b>magni nam error officia ratione facilis dolore sint autem ducimus quisquam, maiores aspernatur. Recusandae in, corporis porro maiores deserunt aspernatur aperiam consectetur, soluta illum assumenda quae officiis! Fugit sapiente tempore</b> illo fugiat voluptas sit nostrum rerum eos excepturi consectetur ipsum nihil, at! Quos temporibus, soluta, inventore molestiae, voluptatibus, sapiente enim laboriosam doloribus doloremque hic itaque expedita. Tenetur rerum nobis neque quod nostrum ea inventore fuga quidem quis temporibus nulla ducimus sunt sit, </p><p>et error numquam soluta debitis officia? Reiciendis cum, laborum soluta iure itaque iste. Inventore eos distinctio necessitatibus earum ipsam, eum aliquam id voluptate deserunt. Voluptatem, aliquam assumenda. Esse harum illum minima <font style=\"background-color: rgb(255, 255, 0);\">nobis</font> inventore, incidunt aut! Est expedita deleniti officia, qui autem, illo obcaecati porro. Aspernatur nesciunt ratione, vel molestiae accusantium earum tempore, enim, voluptates nostrum eius quod odit cum! Doloribus illum reiciendis pariatur voluptatum officia sequi, autem, eveniet eligendi odio architecto nemo explicabo magnam placeat est quasi consectetur, sed. Fugiat dolorum optio ab ipsa adipisci non molestiae id pariatur obcaecati deserunt sed vero expedita quas, consequatur reiciendis itaque nihil mollitia iure saepe debitis nostrum sapiente excepturi blanditiis architecto. Saepe ullam nostrum, obcaecati eligendi facilis a? Expedita nesciunt vero tempore itaque et saepe ad molestiae suscipit rem odit ab pariatur corporis voluptatum sapiente omnis, beatae soluta dolore consequuntur esse quia magni modi consequatur! Temporibus recusandae suscipit voluptas enim dolorum, aut, optio aspernatur ullam laboriosam natus iusto autem cupiditate, doloribus nihil ipsum fugit beatae esse. </p><p>Quidem sit, quis quia quibusdam?<br></p>\";s:12:\"form_user_id\";s:1:\"3\";s:10:\"to_user_id\";s:1:\"1\";s:6:\"status\";s:6:\"unread\";s:10:\"message_id\";i:0;s:5:\"files\";s:0:\"\";s:16:\"deleted_by_users\";N;s:10:\"updated_at\";i:1517087266;s:10:\"created_at\";i:1517087266;s:2:\"id\";s:2:\"15\";}','Employee',3,'Employee',1,NULL,1517087268,NULL),(10,3,'created','Message','test pusher',16,'a:11:{s:7:\"subject\";s:11:\"test pusher\";s:7:\"message\";s:93:\"<p>123 123&nbsp; lorem </p><p><br></p><p>http://localhost/LHprodreport/public/message<br></p>\";s:12:\"form_user_id\";s:1:\"3\";s:10:\"to_user_id\";s:1:\"1\";s:6:\"status\";s:6:\"unread\";s:10:\"message_id\";i:0;s:5:\"files\";s:0:\"\";s:16:\"deleted_by_users\";N;s:10:\"updated_at\";i:1517087461;s:10:\"created_at\";i:1517087461;s:2:\"id\";s:2:\"16\";}','Employee',3,'Employee',1,NULL,1517087465,NULL);
/*!40000 ALTER TABLE `activitylogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcements`
--

DROP TABLE IF EXISTS `announcements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `announcements` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `created_by` int(11) NOT NULL,
  `read_by` mediumtext,
  `share_with` mediumtext,
  `title` text NOT NULL,
  `description` mediumtext NOT NULL,
  `file` longtext NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcements`
--

LOCK TABLES `announcements` WRITE;
/*!40000 ALTER TABLE `announcements` DISABLE KEYS */;
/*!40000 ALTER TABLE `announcements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employees` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `jobtile_id` int(11) NOT NULL,
  `tel` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address1` varchar(255) NOT NULL,
  `address2` varchar(255) NOT NULL,
  `avatar_file` varchar(255) NOT NULL,
  `notes` text NOT NULL,
  `deleted_at` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'Franck','Elombat',1,100,1,'6 999 888 77','f.elombat@gmail.com','Bonaberi','','profile_franck.png','',NULL,1515818141,NULL),(2,'Cédric','Ndoumbè',2,100,2,'6 777 666 55','cedric.ndoumbe@lafargeholcim.com','Douala','','','',NULL,1515818288,NULL),(3,'Christian','Ella',3,100,3,'6 770 909 48','christian.ella.ext@lafargeholcim.com','Douala','','','',NULL,1515818288,NULL);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobtitles`
--

DROP TABLE IF EXISTS `jobtitles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobtitles` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobtitles`
--

LOCK TABLES `jobtitles` WRITE;
/*!40000 ALTER TABLE `jobtitles` DISABLE KEYS */;
INSERT INTO `jobtitles` VALUES (1,'DBA',1516977467,1516977467),(2,'IT Support',1516977483,1516977483),(3,'IT Consultant',1516977504,1516977504);
/*!40000 ALTER TABLE `jobtitles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `subject` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `form_user_id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `status` enum('unread','read') NOT NULL,
  `message_id` int(11) DEFAULT '0',
  `files` longtext NOT NULL,
  `deleted_by_users` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,'Demo Message','Hello World !',1,2,'unread',0,'','',1517065096,1517065096),(2,'TEST Message','<p>sdfsdfwe w 37gfpb9udfbas</p><p>dfasdjfbaskdf;absd;kd fasd f;asdfasdjfhasdfasdf sdf</p><p>asdfjasdkfasdf<br></p>',1,2,'unread',0,'',NULL,1517075309,1517075309),(3,'Demo Message','<p><br></p><h3>Hello Christian! </h3><p>\r\n                            dummy text of the printing and typesetting industry. <strong>Lorem Ipsum has been the industry\'s</strong>\r\n standard dummy text ever since the 1500s,\r\n                            when an unknown printer took a galley of \r\ntype and scrambled it to make a type specimen book. It has survived not \r\nonly five centuries, but also the leap into electronic\r\n                            typesetting, remaining essentially \r\nunchanged. It was popularised in the 1960s with the release of Letraset \r\nsheets containing Lorem Ipsum passages, and more recently with\r\n                            <br></p>',1,3,'unread',0,'',NULL,1517075412,1517075412),(4,'Nouveau','<p>test 123<br></p>',1,2,'unread',0,'',NULL,1517080336,1517080336),(13,'demo 912312','<p>12312<br></p>',1,3,'unread',0,'',NULL,1517085898,1517085898),(14,'Hello Man ... We Are Live !!!','<p>AHhaha <br></p>',3,1,'unread',0,'',NULL,1517087003,1517087003),(15,'Hello Man ... We Are Live Again  !!!','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsum veritatis cupiditate quaerat culpa provident dicta inventore fugit animi, qui eos impedit, porro consequatur ex aliquid nemo! Assumenda suscipit natus dolor, adipisci cum <b>iure</b> repellat possimus ratione itaque eligendi ea ipsam et voluptate reiciendis accusamus at aspernatur recusandae provident sapiente quam fugiat? Ullam suscipit animi iure doloribus incidunt dignissimos porro deserunt <b>magni nam error officia ratione facilis dolore sint autem ducimus quisquam, maiores aspernatur. Recusandae in, corporis porro maiores deserunt aspernatur aperiam consectetur, soluta illum assumenda quae officiis! Fugit sapiente tempore</b> illo fugiat voluptas sit nostrum rerum eos excepturi consectetur ipsum nihil, at! Quos temporibus, soluta, inventore molestiae, voluptatibus, sapiente enim laboriosam doloribus doloremque hic itaque expedita. Tenetur rerum nobis neque quod nostrum ea inventore fuga quidem quis temporibus nulla ducimus sunt sit, </p><p>et error numquam soluta debitis officia? Reiciendis cum, laborum soluta iure itaque iste. Inventore eos distinctio necessitatibus earum ipsam, eum aliquam id voluptate deserunt. Voluptatem, aliquam assumenda. Esse harum illum minima <font style=\"background-color: rgb(255, 255, 0);\">nobis</font> inventore, incidunt aut! Est expedita deleniti officia, qui autem, illo obcaecati porro. Aspernatur nesciunt ratione, vel molestiae accusantium earum tempore, enim, voluptates nostrum eius quod odit cum! Doloribus illum reiciendis pariatur voluptatum officia sequi, autem, eveniet eligendi odio architecto nemo explicabo magnam placeat est quasi consectetur, sed. Fugiat dolorum optio ab ipsa adipisci non molestiae id pariatur obcaecati deserunt sed vero expedita quas, consequatur reiciendis itaque nihil mollitia iure saepe debitis nostrum sapiente excepturi blanditiis architecto. Saepe ullam nostrum, obcaecati eligendi facilis a? Expedita nesciunt vero tempore itaque et saepe ad molestiae suscipit rem odit ab pariatur corporis voluptatum sapiente omnis, beatae soluta dolore consequuntur esse quia magni modi consequatur! Temporibus recusandae suscipit voluptas enim dolorum, aut, optio aspernatur ullam laboriosam natus iusto autem cupiditate, doloribus nihil ipsum fugit beatae esse. </p><p>Quidem sit, quis quia quibusdam?<br></p>',3,1,'unread',0,'',NULL,1517087266,1517087266),(16,'test pusher','<p>123 123&nbsp; lorem </p><p><br></p><p>http://localhost/LHprodreport/public/message<br></p>',3,1,'unread',0,'',NULL,1517087461,1517087461);
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migration`
--

DROP TABLE IF EXISTS `migration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migration` (
  `type` varchar(25) NOT NULL,
  `name` varchar(50) NOT NULL,
  `migration` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migration`
--

LOCK TABLES `migration` WRITE;
/*!40000 ALTER TABLE `migration` DISABLE KEYS */;
INSERT INTO `migration` VALUES ('package','auth','001_auth_create_usertables'),('package','auth','002_auth_create_grouptables'),('package','auth','003_auth_create_roletables'),('package','auth','004_auth_create_permissiontables'),('package','auth','005_auth_create_authdefaults'),('package','auth','006_auth_add_authactions'),('package','auth','007_auth_add_permissionsfilter'),('package','auth','008_auth_create_providers'),('package','auth','009_auth_create_oauth2tables'),('package','auth','010_auth_fix_jointables'),('package','auth','011_auth_group_optional'),('app','default','001_create_employees'),('app','default','002_create_jobtitles'),('app','default','003_create_activitylogs'),('app','default','004_create_posts'),('app','default','005_create_todos'),('app','default','006_create_announcements'),('app','default','007_create_settings'),('app','default','008_create_messages');
/*!40000 ALTER TABLE `migration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `created_by` int(11) NOT NULL,
  `description` mediumtext NOT NULL,
  `post_id` int(11) NOT NULL,
  `share_with` text,
  `files` longtext,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `session_id` varchar(40) NOT NULL,
  `previous_id` varchar(40) NOT NULL,
  `user_agent` text NOT NULL,
  `ip_hash` char(32) NOT NULL,
  `created` int(10) unsigned NOT NULL,
  `updated` int(10) unsigned NOT NULL,
  `payload` longtext NOT NULL,
  PRIMARY KEY (`session_id`),
  UNIQUE KEY `previous_id` (`previous_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('155bc2f03990d6f2187cf3f751a43b39','b98b569091993e2e56050ea5d584d583','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.79 Safari/537.36 Edge/14.14393','1ba0d4508441bcdb896203d32d573632',1517087265,1517087515,'a:3:{i:0;a:7:{s:10:\"session_id\";s:32:\"155bc2f03990d6f2187cf3f751a43b39\";s:11:\"previous_id\";s:32:\"b98b569091993e2e56050ea5d584d583\";s:7:\"ip_hash\";s:32:\"1ba0d4508441bcdb896203d32d573632\";s:10:\"user_agent\";s:128:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.79 Safari/537.36 Edge/14.14393\";s:7:\"created\";i:1517087265;s:7:\"updated\";i:1517087515;s:7:\"payload\";s:0:\"\";}i:1;a:3:{s:17:\"returning_visitor\";N;s:8:\"username\";s:6:\"c.ella\";s:10:\"login_hash\";s:40:\"33a32efa8fbeaa139c8a84619342984d82ce1bf5\";}i:2;a:1:{s:29:\"flash::__session_identifier__\";a:2:{s:5:\"state\";s:6:\"expire\";s:5:\"value\";s:40:\"811bd2267704d2a782d5d22163c143aaa115600f\";}}}'),('c39ee7e52f6bff8ed4689fa955735e6a','0ce8677f673414bbdb24ee92009d35c4','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0) Gecko/20100101 Firefox/57.0','1ba0d4508441bcdb896203d32d573632',1517086804,1517086918,'a:3:{i:0;a:7:{s:10:\"session_id\";s:32:\"c39ee7e52f6bff8ed4689fa955735e6a\";s:11:\"previous_id\";s:32:\"0ce8677f673414bbdb24ee92009d35c4\";s:7:\"ip_hash\";s:32:\"1ba0d4508441bcdb896203d32d573632\";s:10:\"user_agent\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0) Gecko/20100101 Firefox/57.0\";s:7:\"created\";i:1517086804;s:7:\"updated\";i:1517086918;s:7:\"payload\";s:0:\"\";}i:1;a:3:{s:17:\"returning_visitor\";N;s:8:\"username\";s:6:\"franck\";s:10:\"login_hash\";s:40:\"51fb3eb326ae966f90dbce008a321433a6b3d5ed\";}i:2;a:1:{s:29:\"flash::__session_identifier__\";a:2:{s:5:\"state\";s:6:\"expire\";s:5:\"value\";s:40:\"a2f480b9df35b019011af5c49e9ff35011932ef5\";}}}'),('f65d84916b4d925c2d7f0c9bba9ec3fe','c25d72dd6c16e318adbc4d31e34d0640','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.79 Safari/537.36 Edge/14.14393','1ba0d4508441bcdb896203d32d573632',1517087338,1517087523,'a:3:{i:0;a:7:{s:10:\"session_id\";s:32:\"f65d84916b4d925c2d7f0c9bba9ec3fe\";s:11:\"previous_id\";s:32:\"c25d72dd6c16e318adbc4d31e34d0640\";s:7:\"ip_hash\";s:32:\"1ba0d4508441bcdb896203d32d573632\";s:10:\"user_agent\";s:128:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.79 Safari/537.36 Edge/14.14393\";s:7:\"created\";i:1517087338;s:7:\"updated\";i:1517087523;s:7:\"payload\";s:0:\"\";}i:1;a:3:{s:17:\"returning_visitor\";N;s:8:\"username\";s:6:\"franck\";s:10:\"login_hash\";s:40:\"21af4f5f5c426c81d430d1307877a8011bd25835\";}i:2;a:1:{s:29:\"flash::__session_identifier__\";a:2:{s:5:\"state\";s:6:\"expire\";s:5:\"value\";s:40:\"82c4f6280014868f29c2268df5fb827122c68854\";}}}');
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `setting_name` varchar(100) NOT NULL,
  `setting_value` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `todos`
--

DROP TABLE IF EXISTS `todos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `todos` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `created_by` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` mediumtext,
  `labels` text,
  `status` enum('to_do','done','pending') NOT NULL,
  `start_date` date NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `todos`
--

LOCK TABLES `todos` WRITE;
/*!40000 ALTER TABLE `todos` DISABLE KEYS */;
/*!40000 ALTER TABLE `todos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `group` int(11) NOT NULL DEFAULT '1',
  `email` varchar(255) NOT NULL,
  `last_login` varchar(25) NOT NULL,
  `login_hash` varchar(255) NOT NULL,
  `profile_fields` text NOT NULL,
  `created_at` int(11) NOT NULL DEFAULT '0',
  `updated_at` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`,`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'franck','x7eqOm85uffMxQamQPNwBhNKT/Wq4NQzWHvfmBYEOVk=',100,'f.elombat@gmail.com','1517087338','21af4f5f5c426c81d430d1307877a8011bd25835','a:2:{s:8:\"fullname\";s:14:\"Franck Elombat\";s:8:\"jobtitle\";s:3:\"CTO\";}',1515791086,0),(2,'cedric','9lM+og6Mbj5Kc7kA/k9ZfQCIwFMFKzQFTdpfo/B2G7E=',100,'cedric.ndoumbe@lafargeholcim.com','1517075473','dfbb37351eae7bfd9940e58906cf3a8bbf3be7e3','a:2:{s:8:\"fullname\";s:14:\"Cedric Ndoumbe\";s:8:\"jobtitle\";s:25:\"Senior IT Support Manager\";}',1515814271,0),(3,'c.ella','9lM+og6Mbj5Kc7kA/k9ZfQCIwFMFKzQFTdpfo/B2G7E=',100,'chrisella71@gmail.com','1517075546','33a32efa8fbeaa139c8a84619342984d82ce1bf5','a:2:{s:8:\"fullname\";s:20:\"Henri Christian ELLA\";s:8:\"jobtitle\";s:13:\"Consultant IT\";}',1516979503,0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_clients`
--

DROP TABLE IF EXISTS `users_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '',
  `client_id` varchar(32) NOT NULL DEFAULT '',
  `client_secret` varchar(32) NOT NULL DEFAULT '',
  `redirect_uri` varchar(255) NOT NULL DEFAULT '',
  `auto_approve` tinyint(1) NOT NULL DEFAULT '0',
  `autonomous` tinyint(1) NOT NULL DEFAULT '0',
  `status` enum('development','pending','approved','rejected') NOT NULL DEFAULT 'development',
  `suspended` tinyint(1) NOT NULL DEFAULT '0',
  `notes` tinytext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `client_id` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_clients`
--

LOCK TABLES `users_clients` WRITE;
/*!40000 ALTER TABLE `users_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_providers`
--

DROP TABLE IF EXISTS `users_providers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_providers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `provider` varchar(50) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `secret` varchar(255) DEFAULT NULL,
  `access_token` varchar(255) DEFAULT NULL,
  `expires` int(12) DEFAULT '0',
  `refresh_token` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `created_at` int(11) NOT NULL DEFAULT '0',
  `updated_at` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_providers`
--

LOCK TABLES `users_providers` WRITE;
/*!40000 ALTER TABLE `users_providers` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_providers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_scopes`
--

DROP TABLE IF EXISTS `users_scopes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_scopes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `scope` varchar(64) NOT NULL DEFAULT '',
  `name` varchar(64) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `scope` (`scope`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_scopes`
--

LOCK TABLES `users_scopes` WRITE;
/*!40000 ALTER TABLE `users_scopes` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_scopes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_sessions`
--

DROP TABLE IF EXISTS `users_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_sessions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` varchar(32) NOT NULL DEFAULT '',
  `redirect_uri` varchar(255) NOT NULL DEFAULT '',
  `type_id` varchar(64) NOT NULL,
  `type` enum('user','auto') NOT NULL DEFAULT 'user',
  `code` text NOT NULL,
  `access_token` varchar(50) NOT NULL DEFAULT '',
  `stage` enum('request','granted') NOT NULL DEFAULT 'request',
  `first_requested` int(11) NOT NULL,
  `last_updated` int(11) NOT NULL,
  `limited_access` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `oauth_sessions_ibfk_1` (`client_id`),
  CONSTRAINT `oauth_sessions_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `users_clients` (`client_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_sessions`
--

LOCK TABLES `users_sessions` WRITE;
/*!40000 ALTER TABLE `users_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_sessionscopes`
--

DROP TABLE IF EXISTS `users_sessionscopes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_sessionscopes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_id` int(11) NOT NULL,
  `access_token` varchar(50) NOT NULL DEFAULT '',
  `scope` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `session_id` (`session_id`),
  KEY `access_token` (`access_token`),
  KEY `scope` (`scope`),
  CONSTRAINT `oauth_sessionscopes_ibfk_1` FOREIGN KEY (`scope`) REFERENCES `users_scopes` (`scope`),
  CONSTRAINT `oauth_sessionscopes_ibfk_2` FOREIGN KEY (`session_id`) REFERENCES `users_sessions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_sessionscopes`
--

LOCK TABLES `users_sessionscopes` WRITE;
/*!40000 ALTER TABLE `users_sessionscopes` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_sessionscopes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-27 23:28:41
