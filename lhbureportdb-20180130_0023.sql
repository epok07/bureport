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
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activitylogs`
--

LOCK TABLES `activitylogs` WRITE;
/*!40000 ALTER TABLE `activitylogs` DISABLE KEYS */;
INSERT INTO `activitylogs` VALUES (1,3,'deleted','Message','delete me',8,'a:12:{s:7:\"subject\";s:9:\"delete me\";s:7:\"message\";s:17:\"<p>asdasd<br></p>\";s:12:\"form_user_id\";s:1:\"1\";s:10:\"to_user_id\";s:1:\"3\";s:6:\"status\";s:6:\"unread\";s:10:\"message_id\";s:1:\"0\";s:5:\"files\";s:0:\"\";s:16:\"deleted_by_users\";N;s:10:\"created_at\";s:10:\"1517082393\";s:10:\"updated_at\";s:10:\"1517082393\";s:6:\"sender\";N;s:10:\"receipiend\";N;}','Employee',1,'Employee',3,NULL,1517082412,NULL),(2,1,'created','Message','del this',9,'a:11:{s:7:\"subject\";s:8:\"del this\";s:7:\"message\";s:16:\"<p>aha !<br></p>\";s:12:\"form_user_id\";s:1:\"1\";s:10:\"to_user_id\";s:1:\"3\";s:6:\"status\";s:6:\"unread\";s:10:\"message_id\";i:0;s:5:\"files\";s:0:\"\";s:16:\"deleted_by_users\";N;s:10:\"updated_at\";i:1517082724;s:10:\"created_at\";i:1517082724;s:2:\"id\";s:1:\"9\";}','Employee',1,'Employee',3,NULL,1517082725,NULL),(3,3,'created','Message','Hello',10,'a:11:{s:7:\"subject\";s:5:\"Hello\";s:7:\"message\";s:29:\"<p>Merci pour le lien<br></p>\";s:12:\"form_user_id\";s:1:\"3\";s:10:\"to_user_id\";s:1:\"1\";s:6:\"status\";s:6:\"unread\";s:10:\"message_id\";i:0;s:5:\"files\";s:0:\"\";s:16:\"deleted_by_users\";N;s:10:\"updated_at\";i:1517083457;s:10:\"created_at\";i:1517083457;s:2:\"id\";s:2:\"10\";}','Employee',3,'Employee',1,NULL,1517083457,NULL),(4,3,'created','Message','Hello Sir',11,'a:11:{s:7:\"subject\";s:9:\"Hello Sir\";s:7:\"message\";s:17:\"<p>asdasd<br></p>\";s:12:\"form_user_id\";s:1:\"3\";s:10:\"to_user_id\";s:1:\"1\";s:6:\"status\";s:6:\"unread\";s:10:\"message_id\";i:0;s:5:\"files\";s:0:\"\";s:16:\"deleted_by_users\";N;s:10:\"updated_at\";i:1517083593;s:10:\"created_at\";i:1517083593;s:2:\"id\";s:2:\"11\";}','Employee',3,'Employee',1,NULL,1517083593,NULL),(5,3,'created','Message','Aha Franck',12,'a:11:{s:7:\"subject\";s:10:\"Aha Franck\";s:7:\"message\";s:56:\"<p>lorem ripsum a</p><p>as</p><p>maskdasd as ds <br></p>\";s:12:\"form_user_id\";s:1:\"3\";s:10:\"to_user_id\";s:1:\"1\";s:6:\"status\";s:6:\"unread\";s:10:\"message_id\";i:0;s:5:\"files\";s:0:\"\";s:16:\"deleted_by_users\";N;s:10:\"updated_at\";i:1517083631;s:10:\"created_at\";i:1517083631;s:2:\"id\";s:2:\"12\";}','Employee',3,'Employee',1,NULL,1517083631,NULL),(6,1,'deleted','Message','Hello Sir',11,'a:12:{s:7:\"subject\";s:9:\"Hello Sir\";s:7:\"message\";s:17:\"<p>asdasd<br></p>\";s:12:\"form_user_id\";s:1:\"3\";s:10:\"to_user_id\";s:1:\"1\";s:6:\"status\";s:6:\"unread\";s:10:\"message_id\";s:1:\"0\";s:5:\"files\";s:0:\"\";s:16:\"deleted_by_users\";N;s:10:\"created_at\";s:10:\"1517083593\";s:10:\"updated_at\";s:10:\"1517083593\";s:6:\"sender\";N;s:10:\"receipiend\";N;}','Employee',3,'Employee',1,NULL,1517085104,NULL),(7,1,'created','Message','demo 912312',13,'a:11:{s:7:\"subject\";s:11:\"demo 912312\";s:7:\"message\";s:16:\"<p>12312<br></p>\";s:12:\"form_user_id\";s:1:\"1\";s:10:\"to_user_id\";s:1:\"3\";s:6:\"status\";s:6:\"unread\";s:10:\"message_id\";i:0;s:5:\"files\";s:0:\"\";s:16:\"deleted_by_users\";N;s:10:\"updated_at\";i:1517085898;s:10:\"created_at\";i:1517085898;s:2:\"id\";s:2:\"13\";}','Employee',1,'Employee',3,NULL,1517085899,NULL),(8,3,'created','Message','Hello Man ... We Are Live !!!',14,'a:11:{s:7:\"subject\";s:29:\"Hello Man ... We Are Live !!!\";s:7:\"message\";s:18:\"<p>AHhaha <br></p>\";s:12:\"form_user_id\";s:1:\"3\";s:10:\"to_user_id\";s:1:\"1\";s:6:\"status\";s:6:\"unread\";s:10:\"message_id\";i:0;s:5:\"files\";s:0:\"\";s:16:\"deleted_by_users\";N;s:10:\"updated_at\";i:1517087003;s:10:\"created_at\";i:1517087003;s:2:\"id\";s:2:\"14\";}','Employee',3,'Employee',1,NULL,1517087004,NULL),(9,3,'created','Message','Hello Man ... We Are Live Again  !!!',15,'a:11:{s:7:\"subject\";s:36:\"Hello Man ... We Are Live Again  !!!\";s:7:\"message\";s:2364:\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsum veritatis cupiditate quaerat culpa provident dicta inventore fugit animi, qui eos impedit, porro consequatur ex aliquid nemo! Assumenda suscipit natus dolor, adipisci cum <b>iure</b> repellat possimus ratione itaque eligendi ea ipsam et voluptate reiciendis accusamus at aspernatur recusandae provident sapiente quam fugiat? Ullam suscipit animi iure doloribus incidunt dignissimos porro deserunt <b>magni nam error officia ratione facilis dolore sint autem ducimus quisquam, maiores aspernatur. Recusandae in, corporis porro maiores deserunt aspernatur aperiam consectetur, soluta illum assumenda quae officiis! Fugit sapiente tempore</b> illo fugiat voluptas sit nostrum rerum eos excepturi consectetur ipsum nihil, at! Quos temporibus, soluta, inventore molestiae, voluptatibus, sapiente enim laboriosam doloribus doloremque hic itaque expedita. Tenetur rerum nobis neque quod nostrum ea inventore fuga quidem quis temporibus nulla ducimus sunt sit, </p><p>et error numquam soluta debitis officia? Reiciendis cum, laborum soluta iure itaque iste. Inventore eos distinctio necessitatibus earum ipsam, eum aliquam id voluptate deserunt. Voluptatem, aliquam assumenda. Esse harum illum minima <font style=\"background-color: rgb(255, 255, 0);\">nobis</font> inventore, incidunt aut! Est expedita deleniti officia, qui autem, illo obcaecati porro. Aspernatur nesciunt ratione, vel molestiae accusantium earum tempore, enim, voluptates nostrum eius quod odit cum! Doloribus illum reiciendis pariatur voluptatum officia sequi, autem, eveniet eligendi odio architecto nemo explicabo magnam placeat est quasi consectetur, sed. Fugiat dolorum optio ab ipsa adipisci non molestiae id pariatur obcaecati deserunt sed vero expedita quas, consequatur reiciendis itaque nihil mollitia iure saepe debitis nostrum sapiente excepturi blanditiis architecto. Saepe ullam nostrum, obcaecati eligendi facilis a? Expedita nesciunt vero tempore itaque et saepe ad molestiae suscipit rem odit ab pariatur corporis voluptatum sapiente omnis, beatae soluta dolore consequuntur esse quia magni modi consequatur! Temporibus recusandae suscipit voluptas enim dolorum, aut, optio aspernatur ullam laboriosam natus iusto autem cupiditate, doloribus nihil ipsum fugit beatae esse. </p><p>Quidem sit, quis quia quibusdam?<br></p>\";s:12:\"form_user_id\";s:1:\"3\";s:10:\"to_user_id\";s:1:\"1\";s:6:\"status\";s:6:\"unread\";s:10:\"message_id\";i:0;s:5:\"files\";s:0:\"\";s:16:\"deleted_by_users\";N;s:10:\"updated_at\";i:1517087266;s:10:\"created_at\";i:1517087266;s:2:\"id\";s:2:\"15\";}','Employee',3,'Employee',1,NULL,1517087268,NULL),(10,3,'created','Message','test pusher',16,'a:11:{s:7:\"subject\";s:11:\"test pusher\";s:7:\"message\";s:93:\"<p>123 123&nbsp; lorem </p><p><br></p><p>http://localhost/LHprodreport/public/message<br></p>\";s:12:\"form_user_id\";s:1:\"3\";s:10:\"to_user_id\";s:1:\"1\";s:6:\"status\";s:6:\"unread\";s:10:\"message_id\";i:0;s:5:\"files\";s:0:\"\";s:16:\"deleted_by_users\";N;s:10:\"updated_at\";i:1517087461;s:10:\"created_at\";i:1517087461;s:2:\"id\";s:2:\"16\";}','Employee',3,'Employee',1,NULL,1517087465,NULL),(11,3,'created','Message','TEST tes t push notice ',17,'a:11:{s:7:\"subject\";s:23:\"TEST tes t push notice \";s:7:\"message\";s:19:\"<p>pushing <br></p>\";s:12:\"form_user_id\";s:1:\"3\";s:10:\"to_user_id\";s:1:\"1\";s:6:\"status\";s:6:\"unread\";s:10:\"message_id\";i:0;s:5:\"files\";s:0:\"\";s:16:\"deleted_by_users\";N;s:10:\"updated_at\";i:1517092866;s:10:\"created_at\";i:1517092866;s:2:\"id\";s:2:\"17\";}','Employee',3,'Employee',1,NULL,1517092866,NULL),(12,3,'created','Message','demo push',18,'a:11:{s:7:\"subject\";s:9:\"demo push\";s:7:\"message\";s:17:\"<p>asdasd<br></p>\";s:12:\"form_user_id\";s:1:\"3\";s:10:\"to_user_id\";s:1:\"1\";s:6:\"status\";s:6:\"unread\";s:10:\"message_id\";i:0;s:5:\"files\";s:0:\"\";s:16:\"deleted_by_users\";N;s:10:\"updated_at\";i:1517093076;s:10:\"created_at\";i:1517093076;s:2:\"id\";s:2:\"18\";}','Employee',3,'Employee',1,NULL,1517093076,NULL),(13,3,'created','Message','Pusher test okay',19,'a:11:{s:7:\"subject\";s:16:\"Pusher test okay\";s:7:\"message\";s:31:\"<p>asdfpidf asdf jsadf <br></p>\";s:12:\"form_user_id\";s:1:\"3\";s:10:\"to_user_id\";s:1:\"1\";s:6:\"status\";s:6:\"unread\";s:10:\"message_id\";i:0;s:5:\"files\";s:0:\"\";s:16:\"deleted_by_users\";N;s:10:\"updated_at\";i:1517093401;s:10:\"created_at\";i:1517093401;s:2:\"id\";s:2:\"19\";}','Employee',3,'Employee',1,NULL,1517093401,NULL),(14,3,'created','Message','Working test push notice ',20,'a:11:{s:7:\"subject\";s:25:\"Working test push notice \";s:7:\"message\";s:1636:\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsum veritatis cupiditate quaerat culpa provident dicta inventore fugit animi, qui eos impedit, porro consequatur ex aliquid nemo! Assumenda suscipit natus dolor, adipisci cum <b>iure</b> repellat possimus ratione itaque eligendi ea ipsam et voluptate reiciendis accusamus at aspernatur recusandae provident sapiente quam fugiat? Ullam suscipit animi iure doloribus incidunt dignissimos porro deserunt <b>magni nam error officia ratione facilis dolore sint autem ducimus quisquam, maiores aspernatur. Recusandae in, corporis porro maiores deserunt aspernatur aperiam consectetur, soluta illum assumenda quae officiis! Fugit sapiente tempore</b> illo fugiat voluptas sit nostrum rerum eos excepturi consectetur ipsum nihil, at! Quos temporibus, soluta, inventore molestiae, voluptatibus, sapiente enim laboriosam doloribus doloremque hic itaque expedita. Tenetur rerum nobis neque quod nostrum ea inventore fuga quidem quis temporibus nulla ducimus sunt sit, </p><p>et error numquam soluta debitis officia? Reiciendis cum, laborum soluta iure itaque iste. Inventore eos distinctio necessitatibus earum ipsam, eum aliquam id voluptate deserunt. Voluptatem, aliquam assumenda. Esse harum illum minima <font style=\"background-color: rgb(255, 255, 0);\">nobis</font> inventore, incidunt aut! Est expedita deleniti officia, qui autem, illo obcaecati porro. Aspernatur nesciunt ratione, vel molestiae accusantium earum tempore, enim, voluptates nostrum eius quod odit cum! Doloribus illum reiciendis pariatur voluptatum officia sequi, autem, eveniet eligendi odio architect.<br></p>\";s:12:\"form_user_id\";s:1:\"3\";s:10:\"to_user_id\";s:1:\"1\";s:6:\"status\";s:6:\"unread\";s:10:\"message_id\";i:0;s:5:\"files\";s:0:\"\";s:16:\"deleted_by_users\";N;s:10:\"updated_at\";i:1517093699;s:10:\"created_at\";i:1517093699;s:2:\"id\";s:2:\"20\";}','Employee',3,'Employee',1,NULL,1517093699,NULL),(15,3,'created','Message','demo push 02394029342',21,'a:11:{s:7:\"subject\";s:21:\"demo push 02394029342\";s:7:\"message\";s:199:\"<p><a href=\"http://localhost/LHprodreport/public/message/view/20\"><u><font color=\"#0066cc\">Working test push notice </font></u></a><b></b><i></i><u></u><sub></sub><sup></sup><strike></strike><br></p>\";s:12:\"form_user_id\";s:1:\"3\";s:10:\"to_user_id\";s:1:\"1\";s:6:\"status\";s:6:\"unread\";s:10:\"message_id\";i:0;s:5:\"files\";s:0:\"\";s:16:\"deleted_by_users\";N;s:10:\"updated_at\";i:1517093764;s:10:\"created_at\";i:1517093764;s:2:\"id\";s:2:\"21\";}','Employee',3,'Employee',1,NULL,1517093764,NULL),(16,3,'created','Message','test asdasdas',22,'a:11:{s:7:\"subject\";s:13:\"test asdasdas\";s:7:\"message\";s:18:\"<p>dghdfgh<br></p>\";s:12:\"form_user_id\";s:1:\"3\";s:10:\"to_user_id\";s:1:\"1\";s:6:\"status\";s:6:\"unread\";s:10:\"message_id\";i:0;s:5:\"files\";s:0:\"\";s:16:\"deleted_by_users\";N;s:10:\"updated_at\";i:1517093918;s:10:\"created_at\";i:1517093918;s:2:\"id\";s:2:\"22\";}','Employee',3,'Employee',1,NULL,1517093918,NULL),(17,3,'deleted','Message','demo 912312',13,'a:12:{s:7:\"subject\";s:11:\"demo 912312\";s:7:\"message\";s:16:\"<p>12312<br></p>\";s:12:\"form_user_id\";s:1:\"1\";s:10:\"to_user_id\";s:1:\"3\";s:6:\"status\";s:6:\"unread\";s:10:\"message_id\";s:1:\"0\";s:5:\"files\";s:0:\"\";s:16:\"deleted_by_users\";N;s:10:\"created_at\";s:10:\"1517085898\";s:10:\"updated_at\";s:10:\"1517085898\";s:6:\"sender\";N;s:10:\"receipiend\";N;}','Employee',1,'Employee',3,NULL,1517094678,NULL),(18,3,'created','Message','demo push Working',23,'a:11:{s:7:\"subject\";s:17:\"demo push Working\";s:7:\"message\";s:24:\"<p>demo 123 !!!!<br></p>\";s:12:\"form_user_id\";s:1:\"3\";s:10:\"to_user_id\";s:1:\"1\";s:6:\"status\";s:6:\"unread\";s:10:\"message_id\";i:0;s:5:\"files\";s:0:\"\";s:16:\"deleted_by_users\";N;s:10:\"updated_at\";i:1517095946;s:10:\"created_at\";i:1517095946;s:2:\"id\";s:2:\"23\";}','Employee',3,'Employee',1,NULL,1517095946,NULL),(19,3,'created','Message','Aha Franck it works',24,'a:11:{s:7:\"subject\";s:19:\"Aha Franck it works\";s:7:\"message\";s:17:\"<p>sdfdsf<br></p>\";s:12:\"form_user_id\";s:1:\"3\";s:10:\"to_user_id\";s:1:\"1\";s:6:\"status\";s:6:\"unread\";s:10:\"message_id\";i:0;s:5:\"files\";s:0:\"\";s:16:\"deleted_by_users\";N;s:10:\"updated_at\";i:1517096099;s:10:\"created_at\";i:1517096099;s:2:\"id\";s:2:\"24\";}','Employee',3,'Employee',1,NULL,1517096100,NULL),(20,3,'created','Message','demo working',25,'a:11:{s:7:\"subject\";s:12:\"demo working\";s:7:\"message\";s:16:\"<p>asdas<br></p>\";s:12:\"form_user_id\";s:1:\"3\";s:10:\"to_user_id\";s:1:\"1\";s:6:\"status\";s:6:\"unread\";s:10:\"message_id\";i:0;s:5:\"files\";s:0:\"\";s:16:\"deleted_by_users\";N;s:10:\"updated_at\";i:1517096318;s:10:\"created_at\";i:1517096318;s:2:\"id\";s:2:\"25\";}','Employee',3,'Employee',1,NULL,1517096318,NULL),(21,1,'deleted','Message','TEST tes t push notice ',17,'a:12:{s:7:\"subject\";s:23:\"TEST tes t push notice \";s:7:\"message\";s:19:\"<p>pushing <br></p>\";s:12:\"form_user_id\";s:1:\"3\";s:10:\"to_user_id\";s:1:\"1\";s:6:\"status\";s:6:\"unread\";s:10:\"message_id\";s:1:\"0\";s:5:\"files\";s:0:\"\";s:16:\"deleted_by_users\";N;s:10:\"created_at\";s:10:\"1517092866\";s:10:\"updated_at\";s:10:\"1517092866\";s:6:\"sender\";N;s:10:\"receipiend\";N;}','Employee',3,'Employee',1,NULL,1517096575,NULL),(22,1,'deleted','Message','demo push',18,'a:12:{s:7:\"subject\";s:9:\"demo push\";s:7:\"message\";s:17:\"<p>asdasd<br></p>\";s:12:\"form_user_id\";s:1:\"3\";s:10:\"to_user_id\";s:1:\"1\";s:6:\"status\";s:6:\"unread\";s:10:\"message_id\";s:1:\"0\";s:5:\"files\";s:0:\"\";s:16:\"deleted_by_users\";N;s:10:\"created_at\";s:10:\"1517093076\";s:10:\"updated_at\";s:10:\"1517093076\";s:6:\"sender\";N;s:10:\"receipiend\";N;}','Employee',3,'Employee',1,NULL,1517096681,NULL),(23,1,'deleted','Message','Working test push notice ',20,'a:12:{s:7:\"subject\";s:25:\"Working test push notice \";s:7:\"message\";s:1636:\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsum veritatis cupiditate quaerat culpa provident dicta inventore fugit animi, qui eos impedit, porro consequatur ex aliquid nemo! Assumenda suscipit natus dolor, adipisci cum <b>iure</b> repellat possimus ratione itaque eligendi ea ipsam et voluptate reiciendis accusamus at aspernatur recusandae provident sapiente quam fugiat? Ullam suscipit animi iure doloribus incidunt dignissimos porro deserunt <b>magni nam error officia ratione facilis dolore sint autem ducimus quisquam, maiores aspernatur. Recusandae in, corporis porro maiores deserunt aspernatur aperiam consectetur, soluta illum assumenda quae officiis! Fugit sapiente tempore</b> illo fugiat voluptas sit nostrum rerum eos excepturi consectetur ipsum nihil, at! Quos temporibus, soluta, inventore molestiae, voluptatibus, sapiente enim laboriosam doloribus doloremque hic itaque expedita. Tenetur rerum nobis neque quod nostrum ea inventore fuga quidem quis temporibus nulla ducimus sunt sit, </p><p>et error numquam soluta debitis officia? Reiciendis cum, laborum soluta iure itaque iste. Inventore eos distinctio necessitatibus earum ipsam, eum aliquam id voluptate deserunt. Voluptatem, aliquam assumenda. Esse harum illum minima <font style=\"background-color: rgb(255, 255, 0);\">nobis</font> inventore, incidunt aut! Est expedita deleniti officia, qui autem, illo obcaecati porro. Aspernatur nesciunt ratione, vel molestiae accusantium earum tempore, enim, voluptates nostrum eius quod odit cum! Doloribus illum reiciendis pariatur voluptatum officia sequi, autem, eveniet eligendi odio architect.<br></p>\";s:12:\"form_user_id\";s:1:\"3\";s:10:\"to_user_id\";s:1:\"1\";s:6:\"status\";s:6:\"unread\";s:10:\"message_id\";s:1:\"0\";s:5:\"files\";s:0:\"\";s:16:\"deleted_by_users\";N;s:10:\"created_at\";s:10:\"1517093699\";s:10:\"updated_at\";s:10:\"1517093699\";s:6:\"sender\";N;s:10:\"receipiend\";N;}','Employee',3,'Employee',1,NULL,1517096717,NULL),(24,1,'deleted','Message','demo working',25,'a:12:{s:7:\"subject\";s:12:\"demo working\";s:7:\"message\";s:16:\"<p>asdas<br></p>\";s:12:\"form_user_id\";s:1:\"3\";s:10:\"to_user_id\";s:1:\"1\";s:6:\"status\";s:6:\"unread\";s:10:\"message_id\";s:1:\"0\";s:5:\"files\";s:0:\"\";s:16:\"deleted_by_users\";N;s:10:\"created_at\";s:10:\"1517096318\";s:10:\"updated_at\";s:10:\"1517096318\";s:6:\"sender\";N;s:10:\"receipiend\";N;}','Employee',3,'Employee',1,NULL,1517096795,NULL),(25,1,'deleted','Message','Hello Man ... We Are Live !!!',14,'a:12:{s:7:\"subject\";s:29:\"Hello Man ... We Are Live !!!\";s:7:\"message\";s:18:\"<p>AHhaha <br></p>\";s:12:\"form_user_id\";s:1:\"3\";s:10:\"to_user_id\";s:1:\"1\";s:6:\"status\";s:6:\"unread\";s:10:\"message_id\";s:1:\"0\";s:5:\"files\";s:0:\"\";s:16:\"deleted_by_users\";N;s:10:\"created_at\";s:10:\"1517087003\";s:10:\"updated_at\";s:10:\"1517087003\";s:6:\"sender\";N;s:10:\"receipiend\";N;}','Employee',3,'Employee',1,NULL,1517096892,NULL),(26,1,'deleted','Message','test asdasdas',22,'a:12:{s:7:\"subject\";s:13:\"test asdasdas\";s:7:\"message\";s:18:\"<p>dghdfgh<br></p>\";s:12:\"form_user_id\";s:1:\"3\";s:10:\"to_user_id\";s:1:\"1\";s:6:\"status\";s:6:\"unread\";s:10:\"message_id\";s:1:\"0\";s:5:\"files\";s:0:\"\";s:16:\"deleted_by_users\";N;s:10:\"created_at\";s:10:\"1517093918\";s:10:\"updated_at\";s:10:\"1517093918\";s:6:\"sender\";N;s:10:\"receipiend\";N;}','Employee',3,'Employee',1,NULL,1517096937,NULL),(27,1,'deleted','Message','demo push Working',23,'a:12:{s:7:\"subject\";s:17:\"demo push Working\";s:7:\"message\";s:24:\"<p>demo 123 !!!!<br></p>\";s:12:\"form_user_id\";s:1:\"3\";s:10:\"to_user_id\";s:1:\"1\";s:6:\"status\";s:6:\"unread\";s:10:\"message_id\";s:1:\"0\";s:5:\"files\";s:0:\"\";s:16:\"deleted_by_users\";N;s:10:\"created_at\";s:10:\"1517095946\";s:10:\"updated_at\";s:10:\"1517095946\";s:6:\"sender\";N;s:9:\"recipient\";N;}','Employee',3,'Employee',1,NULL,1517096996,NULL),(28,1,'deleted','Message','Aha Franck it works',24,'a:12:{s:7:\"subject\";s:19:\"Aha Franck it works\";s:7:\"message\";s:17:\"<p>sdfdsf<br></p>\";s:12:\"form_user_id\";s:1:\"3\";s:10:\"to_user_id\";s:1:\"1\";s:6:\"status\";s:6:\"unread\";s:10:\"message_id\";s:1:\"0\";s:5:\"files\";s:0:\"\";s:16:\"deleted_by_users\";N;s:10:\"created_at\";s:10:\"1517096099\";s:10:\"updated_at\";s:10:\"1517096099\";s:6:\"sender\";N;s:9:\"recipient\";N;}','Employee',3,'Employee',1,NULL,1517097081,NULL),(29,1,'deleted','Message','Pusher test okay',19,'a:12:{s:7:\"subject\";s:16:\"Pusher test okay\";s:7:\"message\";s:31:\"<p>asdfpidf asdf jsadf <br></p>\";s:12:\"form_user_id\";s:1:\"3\";s:10:\"to_user_id\";s:1:\"1\";s:6:\"status\";s:6:\"unread\";s:10:\"message_id\";s:1:\"0\";s:5:\"files\";s:0:\"\";s:16:\"deleted_by_users\";N;s:10:\"created_at\";s:10:\"1517093401\";s:10:\"updated_at\";s:10:\"1517093401\";s:6:\"sender\";N;s:9:\"recipient\";N;}','Employee',3,'Employee',1,NULL,1517097114,NULL),(30,1,'deleted','Message','test pusher',16,'a:12:{s:7:\"subject\";s:11:\"test pusher\";s:7:\"message\";s:93:\"<p>123 123&nbsp; lorem </p><p><br></p><p>http://localhost/LHprodreport/public/message<br></p>\";s:12:\"form_user_id\";s:1:\"3\";s:10:\"to_user_id\";s:1:\"1\";s:6:\"status\";s:6:\"unread\";s:10:\"message_id\";s:1:\"0\";s:5:\"files\";s:0:\"\";s:16:\"deleted_by_users\";N;s:10:\"created_at\";s:10:\"1517087461\";s:10:\"updated_at\";s:10:\"1517087461\";s:6:\"sender\";N;s:9:\"recipient\";N;}','Employee',3,'Employee',1,NULL,1517097131,NULL),(31,1,'deleted','Message','demo push 02394029342',21,'a:12:{s:7:\"subject\";s:21:\"demo push 02394029342\";s:7:\"message\";s:199:\"<p><a href=\"http://localhost/LHprodreport/public/message/view/20\"><u><font color=\"#0066cc\">Working test push notice </font></u></a><b></b><i></i><u></u><sub></sub><sup></sup><strike></strike><br></p>\";s:12:\"form_user_id\";s:1:\"3\";s:10:\"to_user_id\";s:1:\"1\";s:6:\"status\";s:6:\"unread\";s:10:\"message_id\";s:1:\"0\";s:5:\"files\";s:0:\"\";s:16:\"deleted_by_users\";N;s:10:\"created_at\";s:10:\"1517093764\";s:10:\"updated_at\";s:10:\"1517093764\";s:6:\"sender\";N;s:9:\"recipient\";N;}','Employee',3,'Employee',1,NULL,1517097174,NULL),(32,1,'deleted','Message','Hello Man ... We Are Live Again  !!!',15,'a:12:{s:7:\"subject\";s:36:\"Hello Man ... We Are Live Again  !!!\";s:7:\"message\";s:2364:\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsum veritatis cupiditate quaerat culpa provident dicta inventore fugit animi, qui eos impedit, porro consequatur ex aliquid nemo! Assumenda suscipit natus dolor, adipisci cum <b>iure</b> repellat possimus ratione itaque eligendi ea ipsam et voluptate reiciendis accusamus at aspernatur recusandae provident sapiente quam fugiat? Ullam suscipit animi iure doloribus incidunt dignissimos porro deserunt <b>magni nam error officia ratione facilis dolore sint autem ducimus quisquam, maiores aspernatur. Recusandae in, corporis porro maiores deserunt aspernatur aperiam consectetur, soluta illum assumenda quae officiis! Fugit sapiente tempore</b> illo fugiat voluptas sit nostrum rerum eos excepturi consectetur ipsum nihil, at! Quos temporibus, soluta, inventore molestiae, voluptatibus, sapiente enim laboriosam doloribus doloremque hic itaque expedita. Tenetur rerum nobis neque quod nostrum ea inventore fuga quidem quis temporibus nulla ducimus sunt sit, </p><p>et error numquam soluta debitis officia? Reiciendis cum, laborum soluta iure itaque iste. Inventore eos distinctio necessitatibus earum ipsam, eum aliquam id voluptate deserunt. Voluptatem, aliquam assumenda. Esse harum illum minima <font style=\"background-color: rgb(255, 255, 0);\">nobis</font> inventore, incidunt aut! Est expedita deleniti officia, qui autem, illo obcaecati porro. Aspernatur nesciunt ratione, vel molestiae accusantium earum tempore, enim, voluptates nostrum eius quod odit cum! Doloribus illum reiciendis pariatur voluptatum officia sequi, autem, eveniet eligendi odio architecto nemo explicabo magnam placeat est quasi consectetur, sed. Fugiat dolorum optio ab ipsa adipisci non molestiae id pariatur obcaecati deserunt sed vero expedita quas, consequatur reiciendis itaque nihil mollitia iure saepe debitis nostrum sapiente excepturi blanditiis architecto. Saepe ullam nostrum, obcaecati eligendi facilis a? Expedita nesciunt vero tempore itaque et saepe ad molestiae suscipit rem odit ab pariatur corporis voluptatum sapiente omnis, beatae soluta dolore consequuntur esse quia magni modi consequatur! Temporibus recusandae suscipit voluptas enim dolorum, aut, optio aspernatur ullam laboriosam natus iusto autem cupiditate, doloribus nihil ipsum fugit beatae esse. </p><p>Quidem sit, quis quia quibusdam?<br></p>\";s:12:\"form_user_id\";s:1:\"3\";s:10:\"to_user_id\";s:1:\"1\";s:6:\"status\";s:6:\"unread\";s:10:\"message_id\";s:1:\"0\";s:5:\"files\";s:0:\"\";s:16:\"deleted_by_users\";N;s:10:\"created_at\";s:10:\"1517087266\";s:10:\"updated_at\";s:10:\"1517087266\";s:6:\"sender\";N;s:9:\"recipient\";N;}','Employee',3,'Employee',1,NULL,1517097247,NULL),(33,2,'deleted','Message','TEST Message',2,'a:12:{s:7:\"subject\";s:12:\"TEST Message\";s:7:\"message\";s:114:\"<p>sdfsdfwe w 37gfpb9udfbas</p><p>dfasdjfbaskdf;absd;kd fasd f;asdfasdjfhasdfasdf sdf</p><p>asdfjasdkfasdf<br></p>\";s:12:\"form_user_id\";s:1:\"1\";s:10:\"to_user_id\";s:1:\"2\";s:6:\"status\";s:6:\"unread\";s:10:\"message_id\";s:1:\"0\";s:5:\"files\";s:0:\"\";s:16:\"deleted_by_users\";N;s:10:\"created_at\";s:10:\"1517075309\";s:10:\"updated_at\";s:10:\"1517075309\";s:6:\"sender\";N;s:9:\"recipient\";N;}','Employee',1,'Employee',2,NULL,1517097284,NULL),(34,2,'deleted','Message','Nouveau',4,'a:12:{s:7:\"subject\";s:7:\"Nouveau\";s:7:\"message\";s:19:\"<p>test 123<br></p>\";s:12:\"form_user_id\";s:1:\"1\";s:10:\"to_user_id\";s:1:\"2\";s:6:\"status\";s:6:\"unread\";s:10:\"message_id\";s:1:\"0\";s:5:\"files\";s:0:\"\";s:16:\"deleted_by_users\";N;s:10:\"created_at\";s:10:\"1517080336\";s:10:\"updated_at\";s:10:\"1517080336\";s:6:\"sender\";N;s:9:\"recipient\";N;}','Employee',1,'Employee',2,NULL,1517097355,NULL),(35,1,'created','Message','Projet Digitalisation : Outil CRM/SAV',26,'a:11:{s:7:\"subject\";s:37:\"Projet Digitalisation : Outil CRM/SAV\";s:7:\"message\";s:101:\"<p>Bonjour Cédric, </p><p><br></p><p>voici ci-joint .... </p><p><br></p><p>bien cordialement<br></p>\";s:12:\"form_user_id\";s:1:\"1\";s:10:\"to_user_id\";s:1:\"2\";s:6:\"status\";s:6:\"unread\";s:10:\"message_id\";i:0;s:5:\"files\";s:0:\"\";s:16:\"deleted_by_users\";N;s:10:\"updated_at\";i:1517097985;s:10:\"created_at\";i:1517097985;s:2:\"id\";s:2:\"26\";}','Employee',1,'Employee',2,NULL,1517097985,NULL),(36,3,'created','Message','demo Message ',27,'a:11:{s:7:\"subject\";s:13:\"demo Message \";s:7:\"message\";s:1337:\"<p>&nbsp; </p><p>Hi Cedric,<br></p><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ratione repudiandae quo incidunt aspernatur, doloribus nam consequuntur quasi provident officia <font style=\"background-color: rgb(255, 255, 0);\">nesciunt pariatur ullam sapiente porro dolorum eum</font> minus a error amet qui maxime fugit ipsa. Et, repudiandae quam libero quidem recusandae, eius, nisi numquam eligendi impedit illum optio dolor asperiores vel voluptates alias. </p><p>Aliquid, iste. <b>Debitis, cupiditate</b>, nulla. Minima veniam iure aliquam sed mollitia, distinctio ullam nisi necessitatibus inventore soluta veritatis commodi voluptatum aperiam, quo autem vero quasi dolores quia vitae numquam ab laborum molestiae explicabo accusantium. Dolore rerum labore </p><ul><li>iasbdi</li><li>sdhkjlasd</li><li>doifsdi<br></li></ul><p>ex beatae laborum! Itaque repudiandae ut pariatur, illum, suscipit dicta debitis labore hic commodi omnis dolorum recusandae distinctio, saepe veniam aliquam error molestias. Rerum adipisci, porro minus possimus amet impedit placeat molestias, eum corrupti ut distinctio, velit magni quas earum accusamus error. Corporis aut architecto, beatae, quasi dolores fuga veritatis tempora atque ducimus voluptate itaque, numquam possimus adipisci molestias pariatur tenetur.</p><p>regards,<br></p>\";s:12:\"form_user_id\";s:1:\"3\";s:10:\"to_user_id\";s:1:\"2\";s:6:\"status\";s:6:\"unread\";s:10:\"message_id\";i:0;s:5:\"files\";s:0:\"\";s:16:\"deleted_by_users\";N;s:10:\"updated_at\";i:1517098400;s:10:\"created_at\";i:1517098400;s:2:\"id\";s:2:\"27\";}','Employee',3,'Employee',2,NULL,1517098401,NULL),(37,3,'created','Chat','Chat Msg #8',8,'a:9:{s:7:\"message\";s:191:\"modi itaque vel sunt, delectus cum fugit quod fuga, ad distinctio! Magnam odio, ex quisquam rerum porro molestias explicabo quaerat eum voluptatibus sequi quo, quis at nulla doloremque sint. \";s:12:\"from_user_id\";s:1:\"3\";s:10:\"to_user_id\";i:0;s:6:\"status\";s:6:\"unread\";s:15:\"chat_message_id\";i:0;s:7:\"private\";i:0;s:10:\"updated_at\";i:1517112715;s:10:\"created_at\";i:1517112715;s:2:\"id\";s:1:\"8\";}','Employee',3,'Employee',0,NULL,1517112715,NULL),(38,3,'deleted','Chat','Chat Msg #',7,'a:9:{s:7:\"message\";s:44:\"delectus cum fugit quod fuga, ad distinctio!\";s:12:\"from_user_id\";s:1:\"3\";s:10:\"to_user_id\";s:1:\"0\";s:6:\"status\";s:6:\"unread\";s:15:\"chat_message_id\";s:1:\"0\";s:7:\"private\";s:1:\"0\";s:10:\"created_at\";s:10:\"1517112685\";s:10:\"updated_at\";s:10:\"1517112685\";s:6:\"sender\";N;}','Employee',3,'Employee',0,NULL,1517112726,NULL),(39,3,'deleted','Chat','Chat Msg #',6,'a:9:{s:7:\"message\";s:44:\"delectus cum fugit quod fuga, ad distinctio!\";s:12:\"from_user_id\";s:1:\"3\";s:10:\"to_user_id\";s:1:\"0\";s:6:\"status\";s:6:\"unread\";s:15:\"chat_message_id\";s:1:\"0\";s:7:\"private\";s:1:\"0\";s:10:\"created_at\";s:10:\"1517112679\";s:10:\"updated_at\";s:10:\"1517112679\";s:6:\"sender\";N;}','Employee',3,'Employee',0,NULL,1517112737,NULL),(40,2,'created','Chat','Chat Msg #9',9,'a:9:{s:7:\"message\";s:66:\"Quaerat eum voluptatibus sequi quo, quis at nulla doloremque sint.\";s:12:\"from_user_id\";s:1:\"2\";s:10:\"to_user_id\";i:0;s:6:\"status\";s:6:\"unread\";s:15:\"chat_message_id\";i:0;s:7:\"private\";i:0;s:10:\"updated_at\";i:1517112885;s:10:\"created_at\";i:1517112885;s:2:\"id\";s:1:\"9\";}','Employee',2,'Employee',0,NULL,1517112885,NULL),(41,2,'deleted','Chat','Chat Msg #',5,'a:9:{s:7:\"message\";s:44:\"delectus cum fugit quod fuga, ad distinctio!\";s:12:\"from_user_id\";s:1:\"3\";s:10:\"to_user_id\";s:1:\"0\";s:6:\"status\";s:6:\"unread\";s:15:\"chat_message_id\";s:1:\"0\";s:7:\"private\";s:1:\"0\";s:10:\"created_at\";s:10:\"1517112635\";s:10:\"updated_at\";s:10:\"1517112635\";s:6:\"sender\";N;}','Employee',3,'Employee',0,NULL,1517112893,NULL),(42,2,'deleted','Chat','Chat Msg #9',9,'a:9:{s:7:\"message\";s:66:\"Quaerat eum voluptatibus sequi quo, quis at nulla doloremque sint.\";s:12:\"from_user_id\";s:1:\"2\";s:10:\"to_user_id\";s:1:\"0\";s:6:\"status\";s:6:\"unread\";s:15:\"chat_message_id\";s:1:\"0\";s:7:\"private\";s:1:\"0\";s:10:\"created_at\";s:10:\"1517112885\";s:10:\"updated_at\";s:10:\"1517112885\";s:6:\"sender\";N;}','Employee',2,'Employee',0,NULL,1517112985,NULL),(43,2,'deleted','Chat','Chat Msg #2',2,'a:9:{s:7:\"message\";s:124:\" Magnam odio, ex quisquam rerum porro molestias explicabo quaerat eum voluptatibus sequi quo, quis at nulla doloremque sint.\";s:12:\"from_user_id\";s:1:\"3\";s:10:\"to_user_id\";s:1:\"0\";s:6:\"status\";s:6:\"unread\";s:15:\"chat_message_id\";s:1:\"0\";s:7:\"private\";s:1:\"0\";s:10:\"created_at\";s:10:\"1517112179\";s:10:\"updated_at\";s:10:\"1517112179\";s:6:\"sender\";N;}','Employee',3,'Employee',0,NULL,1517113189,NULL),(44,1,'created','Chat','Chat Msg #10',10,'a:9:{s:7:\"message\";s:9:\"Okay Boss\";s:12:\"from_user_id\";s:1:\"1\";s:10:\"to_user_id\";i:0;s:6:\"status\";s:6:\"unread\";s:15:\"chat_message_id\";i:0;s:7:\"private\";i:0;s:10:\"updated_at\";i:1517115945;s:10:\"created_at\";i:1517115945;s:2:\"id\";s:2:\"10\";}','Employee',1,'Employee',0,NULL,1517115945,NULL),(45,1,'created','Chat','Chat Msg #11',11,'a:9:{s:7:\"message\";s:15:\"hello There !! \";s:12:\"from_user_id\";s:1:\"1\";s:10:\"to_user_id\";i:0;s:6:\"status\";s:6:\"unread\";s:15:\"chat_message_id\";i:0;s:7:\"private\";i:0;s:10:\"updated_at\";i:1517132695;s:10:\"created_at\";i:1517132695;s:2:\"id\";s:2:\"11\";}','Employee',1,'Employee',0,NULL,1517132696,NULL),(46,3,'created','Message','okay dude',28,'a:11:{s:7:\"subject\";s:9:\"okay dude\";s:7:\"message\";s:55:\"<p>ahaaaaahah 1 </p><p><br></p><p>this is cool.<br></p>\";s:12:\"form_user_id\";s:1:\"3\";s:10:\"to_user_id\";s:1:\"1\";s:6:\"status\";s:6:\"unread\";s:10:\"message_id\";i:0;s:5:\"files\";s:0:\"\";s:16:\"deleted_by_users\";N;s:10:\"updated_at\";i:1517228422;s:10:\"created_at\";i:1517228422;s:2:\"id\";s:2:\"28\";}','Employee',3,'Employee',1,NULL,1517228422,NULL),(47,3,'created','Loading','Loading  #11',11,'a:15:{s:10:\"company_id\";s:1:\"1\";s:7:\"user_id\";s:1:\"1\";s:10:\"start_date\";s:19:\"2018-01-30 17:54:00\";s:7:\"item_id\";s:1:\"1\";s:12:\"machenery_id\";s:1:\"1\";s:7:\"silo_id\";s:1:\"1\";s:6:\"weight\";s:4:\"5500\";s:4:\"unit\";s:1:\"t\";s:9:\"vendor_id\";s:1:\"1\";s:7:\"site_id\";s:1:\"1\";s:8:\"canceled\";s:1:\"0\";s:10:\"updated_at\";i:1517244957;s:10:\"created_at\";i:1517244957;s:2:\"id\";s:2:\"11\";s:5:\"items\";a:1:{i:1;a:5:{s:2:\"id\";s:1:\"1\";s:10:\"company_id\";s:1:\"1\";s:5:\"title\";s:5:\"gypse\";s:11:\"category_id\";s:1:\"4\";s:7:\"enabled\";s:1:\"1\";}}}','Machinery',1,'Silo',1,NULL,1517244957,NULL),(48,3,'created','Loading','Loading  #12',12,'a:15:{s:10:\"company_id\";s:1:\"1\";s:7:\"user_id\";s:1:\"1\";s:10:\"start_date\";s:19:\"2018-01-30 17:54:00\";s:7:\"item_id\";s:1:\"1\";s:12:\"machenery_id\";s:1:\"1\";s:7:\"silo_id\";s:1:\"1\";s:6:\"weight\";s:4:\"5500\";s:4:\"unit\";s:1:\"t\";s:9:\"vendor_id\";s:1:\"1\";s:7:\"site_id\";s:1:\"1\";s:8:\"canceled\";s:1:\"0\";s:10:\"updated_at\";i:1517245002;s:10:\"created_at\";i:1517245002;s:2:\"id\";s:2:\"12\";s:5:\"items\";a:1:{i:1;a:5:{s:2:\"id\";s:1:\"1\";s:10:\"company_id\";s:1:\"1\";s:5:\"title\";s:5:\"gypse\";s:11:\"category_id\";s:1:\"4\";s:7:\"enabled\";s:1:\"1\";}}}','Machinery',1,'Silo',1,NULL,1517245002,NULL),(49,3,'created','Loading','Loading  #13',13,'a:15:{s:10:\"company_id\";s:1:\"1\";s:7:\"user_id\";s:1:\"2\";s:10:\"start_date\";s:19:\"2018-01-30 18:45:00\";s:7:\"item_id\";s:1:\"1\";s:12:\"machenery_id\";s:1:\"1\";s:7:\"silo_id\";s:1:\"1\";s:6:\"weight\";s:3:\"200\";s:4:\"unit\";s:1:\"t\";s:9:\"vendor_id\";s:1:\"1\";s:7:\"site_id\";s:1:\"1\";s:8:\"canceled\";s:1:\"0\";s:10:\"updated_at\";i:1517248036;s:10:\"created_at\";i:1517248036;s:2:\"id\";s:2:\"13\";s:5:\"items\";a:1:{i:1;a:5:{s:2:\"id\";s:1:\"1\";s:10:\"company_id\";s:1:\"1\";s:5:\"title\";s:5:\"gypse\";s:11:\"category_id\";s:1:\"4\";s:7:\"enabled\";s:1:\"1\";}}}','Machinery',1,'Silo',1,NULL,1517248036,NULL),(50,3,'created','Loading','Loading  #14',14,'a:15:{s:10:\"company_id\";s:1:\"1\";s:7:\"user_id\";s:1:\"2\";s:10:\"start_date\";s:19:\"2018-01-30 19:19:00\";s:7:\"item_id\";s:1:\"1\";s:12:\"machenery_id\";s:1:\"1\";s:7:\"silo_id\";s:1:\"1\";s:6:\"weight\";s:4:\"6000\";s:4:\"unit\";s:1:\"t\";s:9:\"vendor_id\";s:1:\"1\";s:7:\"site_id\";s:1:\"1\";s:8:\"canceled\";s:1:\"0\";s:10:\"updated_at\";i:1517250414;s:10:\"created_at\";i:1517250414;s:2:\"id\";s:2:\"14\";s:5:\"items\";a:1:{i:1;a:5:{s:2:\"id\";s:1:\"1\";s:10:\"company_id\";s:1:\"1\";s:5:\"title\";s:5:\"gypse\";s:11:\"category_id\";s:1:\"4\";s:7:\"enabled\";s:1:\"1\";}}}','Machinery',1,'Silo',1,NULL,1517250414,NULL),(51,3,'created','Loading','Loading  #15',15,'a:15:{s:10:\"company_id\";s:1:\"1\";s:7:\"user_id\";s:1:\"2\";s:10:\"start_date\";s:19:\"2018-01-30 19:26:00\";s:7:\"item_id\";s:1:\"1\";s:12:\"machenery_id\";s:1:\"1\";s:7:\"silo_id\";s:1:\"1\";s:6:\"weight\";s:4:\"1000\";s:4:\"unit\";s:1:\"t\";s:9:\"vendor_id\";s:1:\"1\";s:7:\"site_id\";s:1:\"1\";s:8:\"canceled\";s:1:\"0\";s:10:\"updated_at\";i:1517250477;s:10:\"created_at\";i:1517250477;s:2:\"id\";s:2:\"15\";s:5:\"items\";a:1:{i:1;a:5:{s:2:\"id\";s:1:\"1\";s:10:\"company_id\";s:1:\"1\";s:5:\"title\";s:5:\"gypse\";s:11:\"category_id\";s:1:\"4\";s:7:\"enabled\";s:1:\"1\";}}}','Machinery',1,'Silo',1,NULL,1517250477,NULL),(52,3,'created','Loading','Loading  #16',16,'a:15:{s:10:\"company_id\";s:1:\"1\";s:7:\"user_id\";s:1:\"2\";s:10:\"start_date\";s:19:\"2018-01-30 19:36:00\";s:7:\"item_id\";s:1:\"1\";s:12:\"machenery_id\";s:1:\"1\";s:7:\"silo_id\";s:1:\"1\";s:6:\"weight\";s:5:\"50000\";s:4:\"unit\";s:1:\"t\";s:9:\"vendor_id\";s:1:\"1\";s:7:\"site_id\";s:1:\"1\";s:8:\"canceled\";s:1:\"0\";s:10:\"updated_at\";i:1517250553;s:10:\"created_at\";i:1517250553;s:2:\"id\";s:2:\"16\";s:5:\"items\";a:1:{i:1;a:5:{s:2:\"id\";s:1:\"1\";s:10:\"company_id\";s:1:\"1\";s:5:\"title\";s:5:\"gypse\";s:11:\"category_id\";s:1:\"4\";s:7:\"enabled\";s:1:\"1\";}}}','Machinery',1,'Silo',1,NULL,1517250553,NULL),(53,3,'deleted','Loading',' #16',16,'a:20:{s:10:\"company_id\";s:1:\"1\";s:7:\"user_id\";s:1:\"2\";s:10:\"start_date\";s:19:\"2018-01-30 19:36:00\";s:7:\"item_id\";s:1:\"1\";s:12:\"machenery_id\";s:1:\"1\";s:7:\"silo_id\";s:1:\"1\";s:6:\"weight\";s:9:\"50000.000\";s:4:\"unit\";s:1:\"t\";s:9:\"vendor_id\";s:1:\"1\";s:7:\"site_id\";s:1:\"1\";s:8:\"canceled\";s:1:\"0\";s:10:\"created_at\";s:10:\"1517250553\";s:10:\"updated_at\";s:10:\"1517250553\";s:7:\"company\";N;s:8:\"operator\";N;s:9:\"machinery\";N;s:6:\"vendor\";N;s:4:\"site\";N;s:4:\"silo\";N;s:5:\"items\";a:0:{}}','Machinery',1,'Silo',1,NULL,1517250673,NULL),(54,3,'created','Loading','Loading  #17',17,'a:15:{s:10:\"company_id\";s:1:\"1\";s:7:\"user_id\";s:1:\"2\";s:10:\"start_date\";s:19:\"2018-01-30 19:36:00\";s:7:\"item_id\";s:1:\"1\";s:12:\"machenery_id\";s:1:\"1\";s:7:\"silo_id\";s:1:\"1\";s:6:\"weight\";s:5:\"50000\";s:4:\"unit\";s:1:\"t\";s:9:\"vendor_id\";s:1:\"1\";s:7:\"site_id\";s:1:\"1\";s:8:\"canceled\";s:1:\"0\";s:10:\"updated_at\";i:1517250708;s:10:\"created_at\";i:1517250708;s:2:\"id\";s:2:\"17\";s:5:\"items\";a:1:{i:1;a:5:{s:2:\"id\";s:1:\"1\";s:10:\"company_id\";s:1:\"1\";s:5:\"title\";s:5:\"gypse\";s:11:\"category_id\";s:1:\"4\";s:7:\"enabled\";s:1:\"1\";}}}','Machinery',1,'Silo',1,NULL,1517250708,NULL),(55,3,'created','Loading','Loading  #18',18,'a:15:{s:10:\"company_id\";s:1:\"1\";s:7:\"user_id\";s:1:\"2\";s:10:\"start_date\";s:19:\"2018-01-30 19:36:00\";s:7:\"item_id\";s:1:\"1\";s:12:\"machenery_id\";s:1:\"1\";s:7:\"silo_id\";s:1:\"1\";s:6:\"weight\";s:5:\"10000\";s:4:\"unit\";s:1:\"t\";s:9:\"vendor_id\";s:1:\"1\";s:7:\"site_id\";s:1:\"1\";s:8:\"canceled\";s:1:\"0\";s:10:\"updated_at\";i:1517250771;s:10:\"created_at\";i:1517250771;s:2:\"id\";s:2:\"18\";s:5:\"items\";a:1:{i:1;a:5:{s:2:\"id\";s:1:\"1\";s:10:\"company_id\";s:1:\"1\";s:5:\"title\";s:5:\"gypse\";s:11:\"category_id\";s:1:\"4\";s:7:\"enabled\";s:1:\"1\";}}}','Machinery',1,'Silo',1,NULL,1517250771,NULL),(56,3,'created','Loading','Loading  #19',19,'a:15:{s:10:\"company_id\";s:1:\"1\";s:7:\"user_id\";s:1:\"2\";s:10:\"start_date\";s:19:\"2018-01-30 19:36:00\";s:7:\"item_id\";s:1:\"1\";s:12:\"machenery_id\";s:1:\"1\";s:7:\"silo_id\";s:1:\"1\";s:6:\"weight\";s:5:\"10000\";s:4:\"unit\";s:1:\"t\";s:9:\"vendor_id\";s:1:\"1\";s:7:\"site_id\";s:1:\"1\";s:8:\"canceled\";s:1:\"0\";s:10:\"updated_at\";i:1517250985;s:10:\"created_at\";i:1517250985;s:2:\"id\";s:2:\"19\";s:5:\"items\";a:1:{i:1;a:5:{s:2:\"id\";s:1:\"1\";s:10:\"company_id\";s:1:\"1\";s:5:\"title\";s:5:\"gypse\";s:11:\"category_id\";s:1:\"4\";s:7:\"enabled\";s:1:\"1\";}}}','Machinery',1,'Silo',1,NULL,1517250985,NULL),(57,3,'created','Loading','Loading  #20',20,'a:15:{s:10:\"company_id\";s:1:\"1\";s:7:\"user_id\";s:1:\"2\";s:10:\"start_date\";s:19:\"2018-01-30 19:36:00\";s:7:\"item_id\";s:1:\"1\";s:12:\"machenery_id\";s:1:\"1\";s:7:\"silo_id\";s:1:\"1\";s:6:\"weight\";s:5:\"10000\";s:4:\"unit\";s:1:\"t\";s:9:\"vendor_id\";s:1:\"1\";s:7:\"site_id\";s:1:\"1\";s:8:\"canceled\";s:1:\"0\";s:10:\"updated_at\";i:1517251046;s:10:\"created_at\";i:1517251046;s:2:\"id\";s:2:\"20\";s:5:\"items\";a:1:{i:1;a:5:{s:2:\"id\";s:1:\"1\";s:10:\"company_id\";s:1:\"1\";s:5:\"title\";s:5:\"gypse\";s:11:\"category_id\";s:1:\"4\";s:7:\"enabled\";s:1:\"1\";}}}','Machinery',1,'Silo',1,NULL,1517251046,NULL),(58,3,'deleted','Loading',' #20',20,'a:20:{s:10:\"company_id\";s:1:\"1\";s:7:\"user_id\";s:1:\"2\";s:10:\"start_date\";s:19:\"2018-01-30 19:36:00\";s:7:\"item_id\";s:1:\"1\";s:12:\"machenery_id\";s:1:\"1\";s:7:\"silo_id\";s:1:\"1\";s:6:\"weight\";s:9:\"10000.000\";s:4:\"unit\";s:1:\"t\";s:9:\"vendor_id\";s:1:\"1\";s:7:\"site_id\";s:1:\"1\";s:8:\"canceled\";s:1:\"0\";s:10:\"created_at\";s:10:\"1517251046\";s:10:\"updated_at\";s:10:\"1517251046\";s:7:\"company\";N;s:8:\"operator\";N;s:9:\"machinery\";N;s:6:\"vendor\";N;s:4:\"site\";N;s:4:\"silo\";N;s:5:\"items\";a:0:{}}','Machinery',1,'Silo',1,NULL,1517251069,NULL),(59,3,'deleted','Loading',' #19',19,'a:20:{s:10:\"company_id\";s:1:\"1\";s:7:\"user_id\";s:1:\"2\";s:10:\"start_date\";s:19:\"2018-01-30 19:36:00\";s:7:\"item_id\";s:1:\"1\";s:12:\"machenery_id\";s:1:\"1\";s:7:\"silo_id\";s:1:\"1\";s:6:\"weight\";s:9:\"10000.000\";s:4:\"unit\";s:1:\"t\";s:9:\"vendor_id\";s:1:\"1\";s:7:\"site_id\";s:1:\"1\";s:8:\"canceled\";s:1:\"0\";s:10:\"created_at\";s:10:\"1517250985\";s:10:\"updated_at\";s:10:\"1517250985\";s:7:\"company\";N;s:8:\"operator\";N;s:9:\"machinery\";N;s:6:\"vendor\";N;s:4:\"site\";N;s:4:\"silo\";N;s:5:\"items\";a:0:{}}','Machinery',1,'Silo',1,NULL,1517251073,NULL),(60,3,'deleted','Loading',' #18',18,'a:20:{s:10:\"company_id\";s:1:\"1\";s:7:\"user_id\";s:1:\"2\";s:10:\"start_date\";s:19:\"2018-01-30 19:36:00\";s:7:\"item_id\";s:1:\"1\";s:12:\"machenery_id\";s:1:\"1\";s:7:\"silo_id\";s:1:\"1\";s:6:\"weight\";s:9:\"10000.000\";s:4:\"unit\";s:1:\"t\";s:9:\"vendor_id\";s:1:\"1\";s:7:\"site_id\";s:1:\"1\";s:8:\"canceled\";s:1:\"0\";s:10:\"created_at\";s:10:\"1517250771\";s:10:\"updated_at\";s:10:\"1517250771\";s:7:\"company\";N;s:8:\"operator\";N;s:9:\"machinery\";N;s:6:\"vendor\";N;s:4:\"site\";N;s:4:\"silo\";N;s:5:\"items\";a:0:{}}','Machinery',1,'Silo',1,NULL,1517251076,NULL),(61,3,'deleted','Loading',' #17',17,'a:20:{s:10:\"company_id\";s:1:\"1\";s:7:\"user_id\";s:1:\"2\";s:10:\"start_date\";s:19:\"2018-01-30 19:36:00\";s:7:\"item_id\";s:1:\"1\";s:12:\"machenery_id\";s:1:\"1\";s:7:\"silo_id\";s:1:\"1\";s:6:\"weight\";s:9:\"50000.000\";s:4:\"unit\";s:1:\"t\";s:9:\"vendor_id\";s:1:\"1\";s:7:\"site_id\";s:1:\"1\";s:8:\"canceled\";s:1:\"0\";s:10:\"created_at\";s:10:\"1517250708\";s:10:\"updated_at\";s:10:\"1517250708\";s:7:\"company\";N;s:8:\"operator\";N;s:9:\"machinery\";N;s:6:\"vendor\";N;s:4:\"site\";N;s:4:\"silo\";N;s:5:\"items\";a:0:{}}','Machinery',1,'Silo',1,NULL,1517251078,NULL),(62,3,'created','Loading','Loading  #21',21,'a:15:{s:10:\"company_id\";s:1:\"1\";s:7:\"user_id\";s:1:\"2\";s:10:\"start_date\";s:19:\"2018-01-30 19:36:00\";s:7:\"item_id\";s:1:\"1\";s:12:\"machenery_id\";s:1:\"1\";s:7:\"silo_id\";s:1:\"1\";s:6:\"weight\";s:5:\"11000\";s:4:\"unit\";s:1:\"t\";s:9:\"vendor_id\";s:1:\"1\";s:7:\"site_id\";s:1:\"1\";s:8:\"canceled\";s:1:\"0\";s:10:\"updated_at\";i:1517251091;s:10:\"created_at\";i:1517251091;s:2:\"id\";s:2:\"21\";s:5:\"items\";a:1:{i:1;a:5:{s:2:\"id\";s:1:\"1\";s:10:\"company_id\";s:1:\"1\";s:5:\"title\";s:5:\"gypse\";s:11:\"category_id\";s:1:\"4\";s:7:\"enabled\";s:1:\"1\";}}}','Machinery',1,'Silo',1,NULL,1517251091,NULL),(63,3,'created','Loading','Loading  #22',22,'a:15:{s:10:\"company_id\";s:1:\"1\";s:7:\"user_id\";s:1:\"2\";s:10:\"start_date\";s:19:\"2018-01-30 19:36:00\";s:7:\"item_id\";s:1:\"1\";s:12:\"machenery_id\";s:1:\"1\";s:7:\"silo_id\";s:1:\"1\";s:6:\"weight\";s:5:\"25000\";s:4:\"unit\";s:1:\"t\";s:9:\"vendor_id\";s:1:\"1\";s:7:\"site_id\";s:1:\"1\";s:8:\"canceled\";s:1:\"0\";s:10:\"updated_at\";i:1517251887;s:10:\"created_at\";i:1517251887;s:2:\"id\";s:2:\"22\";s:5:\"items\";a:1:{i:1;a:5:{s:2:\"id\";s:1:\"1\";s:10:\"company_id\";s:1:\"1\";s:5:\"title\";s:5:\"gypse\";s:11:\"category_id\";s:1:\"4\";s:7:\"enabled\";s:1:\"1\";}}}','Machinery',1,'Silo',1,NULL,1517251887,NULL),(64,3,'created','Loading','Loading  #23',23,'a:15:{s:10:\"company_id\";s:1:\"1\";s:7:\"user_id\";s:1:\"2\";s:10:\"start_date\";s:19:\"2018-01-30 19:36:00\";s:7:\"item_id\";s:1:\"1\";s:12:\"machenery_id\";s:1:\"1\";s:7:\"silo_id\";s:1:\"1\";s:6:\"weight\";s:5:\"20000\";s:4:\"unit\";s:1:\"t\";s:9:\"vendor_id\";s:1:\"1\";s:7:\"site_id\";s:1:\"1\";s:8:\"canceled\";s:1:\"0\";s:10:\"updated_at\";i:1517252105;s:10:\"created_at\";i:1517252105;s:2:\"id\";s:2:\"23\";s:5:\"items\";a:1:{i:1;a:5:{s:2:\"id\";s:1:\"1\";s:10:\"company_id\";s:1:\"1\";s:5:\"title\";s:5:\"gypse\";s:11:\"category_id\";s:1:\"4\";s:7:\"enabled\";s:1:\"1\";}}}','Machinery',1,'Silo',1,NULL,1517252106,NULL),(65,3,'created','Loading','Loading  #24',24,'a:15:{s:10:\"company_id\";s:1:\"1\";s:7:\"user_id\";s:1:\"2\";s:10:\"start_date\";s:19:\"2018-01-30 19:36:00\";s:7:\"item_id\";s:1:\"1\";s:12:\"machenery_id\";s:1:\"1\";s:7:\"silo_id\";s:1:\"1\";s:6:\"weight\";s:5:\"30000\";s:4:\"unit\";s:1:\"t\";s:9:\"vendor_id\";s:1:\"1\";s:7:\"site_id\";s:1:\"1\";s:8:\"canceled\";s:1:\"0\";s:10:\"updated_at\";i:1517252297;s:10:\"created_at\";i:1517252297;s:2:\"id\";s:2:\"24\";s:5:\"items\";a:1:{i:1;a:5:{s:2:\"id\";s:1:\"1\";s:10:\"company_id\";s:1:\"1\";s:5:\"title\";s:5:\"gypse\";s:11:\"category_id\";s:1:\"4\";s:7:\"enabled\";s:1:\"1\";}}}','Machinery',1,'Silo',1,NULL,1517252297,NULL),(66,3,'deleted','Loading',' #24',24,'a:20:{s:10:\"company_id\";s:1:\"1\";s:7:\"user_id\";s:1:\"2\";s:10:\"start_date\";s:19:\"2018-01-30 19:36:00\";s:7:\"item_id\";s:1:\"1\";s:12:\"machenery_id\";s:1:\"1\";s:7:\"silo_id\";s:1:\"1\";s:6:\"weight\";s:9:\"30000.000\";s:4:\"unit\";s:1:\"t\";s:9:\"vendor_id\";s:1:\"1\";s:7:\"site_id\";s:1:\"1\";s:8:\"canceled\";s:1:\"0\";s:10:\"created_at\";s:10:\"1517252297\";s:10:\"updated_at\";s:10:\"1517252297\";s:7:\"company\";N;s:8:\"operator\";N;s:9:\"machinery\";N;s:6:\"vendor\";N;s:4:\"site\";N;s:4:\"silo\";N;s:5:\"items\";a:0:{}}','Machinery',1,'Silo',1,NULL,1517252405,NULL),(67,3,'deleted','Loading',' #23',23,'a:20:{s:10:\"company_id\";s:1:\"1\";s:7:\"user_id\";s:1:\"2\";s:10:\"start_date\";s:19:\"2018-01-30 19:36:00\";s:7:\"item_id\";s:1:\"1\";s:12:\"machenery_id\";s:1:\"1\";s:7:\"silo_id\";s:1:\"1\";s:6:\"weight\";s:9:\"20000.000\";s:4:\"unit\";s:1:\"t\";s:9:\"vendor_id\";s:1:\"1\";s:7:\"site_id\";s:1:\"1\";s:8:\"canceled\";s:1:\"0\";s:10:\"created_at\";s:10:\"1517252105\";s:10:\"updated_at\";s:10:\"1517252105\";s:7:\"company\";N;s:8:\"operator\";N;s:9:\"machinery\";N;s:6:\"vendor\";N;s:4:\"site\";N;s:4:\"silo\";N;s:5:\"items\";a:0:{}}','Machinery',1,'Silo',1,NULL,1517252409,NULL),(68,3,'deleted','Loading',' #22',22,'a:20:{s:10:\"company_id\";s:1:\"1\";s:7:\"user_id\";s:1:\"2\";s:10:\"start_date\";s:19:\"2018-01-30 19:36:00\";s:7:\"item_id\";s:1:\"1\";s:12:\"machenery_id\";s:1:\"1\";s:7:\"silo_id\";s:1:\"1\";s:6:\"weight\";s:9:\"25000.000\";s:4:\"unit\";s:1:\"t\";s:9:\"vendor_id\";s:1:\"1\";s:7:\"site_id\";s:1:\"1\";s:8:\"canceled\";s:1:\"0\";s:10:\"created_at\";s:10:\"1517251887\";s:10:\"updated_at\";s:10:\"1517251887\";s:7:\"company\";N;s:8:\"operator\";N;s:9:\"machinery\";N;s:6:\"vendor\";N;s:4:\"site\";N;s:4:\"silo\";N;s:5:\"items\";a:0:{}}','Machinery',1,'Silo',1,NULL,1517252412,NULL),(69,3,'deleted','Loading',' #21',21,'a:20:{s:10:\"company_id\";s:1:\"1\";s:7:\"user_id\";s:1:\"2\";s:10:\"start_date\";s:19:\"2018-01-30 19:36:00\";s:7:\"item_id\";s:1:\"1\";s:12:\"machenery_id\";s:1:\"1\";s:7:\"silo_id\";s:1:\"1\";s:6:\"weight\";s:9:\"11000.000\";s:4:\"unit\";s:1:\"t\";s:9:\"vendor_id\";s:1:\"1\";s:7:\"site_id\";s:1:\"1\";s:8:\"canceled\";s:1:\"0\";s:10:\"created_at\";s:10:\"1517251091\";s:10:\"updated_at\";s:10:\"1517251091\";s:7:\"company\";N;s:8:\"operator\";N;s:9:\"machinery\";N;s:6:\"vendor\";N;s:4:\"site\";N;s:4:\"silo\";N;s:5:\"items\";a:0:{}}','Machinery',1,'Silo',1,NULL,1517252439,NULL),(70,3,'created','Loading','Loading  #25',25,'a:15:{s:10:\"company_id\";s:1:\"1\";s:7:\"user_id\";s:1:\"2\";s:10:\"start_date\";s:19:\"2018-01-30 19:36:00\";s:7:\"item_id\";s:1:\"1\";s:12:\"machenery_id\";s:1:\"1\";s:7:\"silo_id\";s:1:\"1\";s:6:\"weight\";s:6:\"100000\";s:4:\"unit\";s:1:\"t\";s:9:\"vendor_id\";s:1:\"1\";s:7:\"site_id\";s:1:\"1\";s:8:\"canceled\";s:1:\"0\";s:10:\"updated_at\";i:1517252724;s:10:\"created_at\";i:1517252724;s:2:\"id\";s:2:\"25\";s:5:\"items\";a:1:{i:1;a:5:{s:2:\"id\";s:1:\"1\";s:10:\"company_id\";s:1:\"1\";s:5:\"title\";s:5:\"gypse\";s:11:\"category_id\";s:1:\"4\";s:7:\"enabled\";s:1:\"1\";}}}','Machinery',1,'Silo',1,NULL,1517252724,NULL),(71,3,'created','Loading','Loading  #26',26,'a:15:{s:10:\"company_id\";s:1:\"1\";s:7:\"user_id\";s:1:\"2\";s:10:\"start_date\";s:19:\"2018-01-30 19:36:00\";s:7:\"item_id\";s:1:\"1\";s:12:\"machenery_id\";s:1:\"1\";s:7:\"silo_id\";s:1:\"1\";s:6:\"weight\";s:5:\"15000\";s:4:\"unit\";s:1:\"t\";s:9:\"vendor_id\";s:1:\"1\";s:7:\"site_id\";s:1:\"1\";s:8:\"canceled\";s:1:\"0\";s:10:\"updated_at\";i:1517252737;s:10:\"created_at\";i:1517252737;s:2:\"id\";s:2:\"26\";s:5:\"items\";a:1:{i:1;a:5:{s:2:\"id\";s:1:\"1\";s:10:\"company_id\";s:1:\"1\";s:5:\"title\";s:5:\"gypse\";s:11:\"category_id\";s:1:\"4\";s:7:\"enabled\";s:1:\"1\";}}}','Machinery',1,'Silo',1,NULL,1517252737,NULL),(72,3,'created','Loading','Loading  #27',27,'a:15:{s:10:\"company_id\";s:1:\"1\";s:7:\"user_id\";s:1:\"2\";s:10:\"start_date\";s:19:\"2018-01-30 19:36:00\";s:7:\"item_id\";s:1:\"1\";s:12:\"machenery_id\";s:1:\"1\";s:7:\"silo_id\";s:1:\"1\";s:6:\"weight\";s:4:\"1500\";s:4:\"unit\";s:1:\"t\";s:9:\"vendor_id\";s:1:\"1\";s:7:\"site_id\";s:1:\"1\";s:8:\"canceled\";s:1:\"0\";s:10:\"updated_at\";i:1517252748;s:10:\"created_at\";i:1517252748;s:2:\"id\";s:2:\"27\";s:5:\"items\";a:1:{i:1;a:5:{s:2:\"id\";s:1:\"1\";s:10:\"company_id\";s:1:\"1\";s:5:\"title\";s:5:\"gypse\";s:11:\"category_id\";s:1:\"4\";s:7:\"enabled\";s:1:\"1\";}}}','Machinery',1,'Silo',1,NULL,1517252748,NULL),(73,3,'deleted','Loading',' #25',25,'a:20:{s:10:\"company_id\";s:1:\"1\";s:7:\"user_id\";s:1:\"2\";s:10:\"start_date\";s:19:\"2018-01-30 19:36:00\";s:7:\"item_id\";s:1:\"1\";s:12:\"machenery_id\";s:1:\"1\";s:7:\"silo_id\";s:1:\"1\";s:6:\"weight\";s:10:\"100000.000\";s:4:\"unit\";s:1:\"t\";s:9:\"vendor_id\";s:1:\"1\";s:7:\"site_id\";s:1:\"1\";s:8:\"canceled\";s:1:\"0\";s:10:\"created_at\";s:10:\"1517252724\";s:10:\"updated_at\";s:10:\"1517252724\";s:7:\"company\";N;s:8:\"operator\";N;s:9:\"machinery\";N;s:6:\"vendor\";N;s:4:\"site\";N;s:4:\"silo\";N;s:5:\"items\";a:0:{}}','Machinery',1,'Silo',1,NULL,1517252760,NULL),(74,3,'deleted','Loading',' #26',26,'a:20:{s:10:\"company_id\";s:1:\"1\";s:7:\"user_id\";s:1:\"2\";s:10:\"start_date\";s:19:\"2018-01-30 19:36:00\";s:7:\"item_id\";s:1:\"1\";s:12:\"machenery_id\";s:1:\"1\";s:7:\"silo_id\";s:1:\"1\";s:6:\"weight\";s:9:\"15000.000\";s:4:\"unit\";s:1:\"t\";s:9:\"vendor_id\";s:1:\"1\";s:7:\"site_id\";s:1:\"1\";s:8:\"canceled\";s:1:\"0\";s:10:\"created_at\";s:10:\"1517252737\";s:10:\"updated_at\";s:10:\"1517252737\";s:7:\"company\";N;s:8:\"operator\";N;s:9:\"machinery\";N;s:6:\"vendor\";N;s:4:\"site\";N;s:4:\"silo\";N;s:5:\"items\";a:0:{}}','Machinery',1,'Silo',1,NULL,1517252764,NULL),(75,3,'created','Loading','Loading  #28',28,'a:15:{s:10:\"company_id\";s:1:\"1\";s:7:\"user_id\";s:1:\"2\";s:10:\"start_date\";s:19:\"2018-01-30 19:36:00\";s:7:\"item_id\";s:1:\"1\";s:12:\"machenery_id\";s:1:\"1\";s:7:\"silo_id\";s:1:\"1\";s:6:\"weight\";s:5:\"25500\";s:4:\"unit\";s:1:\"t\";s:9:\"vendor_id\";s:1:\"1\";s:7:\"site_id\";s:1:\"1\";s:8:\"canceled\";s:1:\"0\";s:10:\"updated_at\";i:1517252780;s:10:\"created_at\";i:1517252780;s:2:\"id\";s:2:\"28\";s:5:\"items\";a:1:{i:1;a:5:{s:2:\"id\";s:1:\"1\";s:10:\"company_id\";s:1:\"1\";s:5:\"title\";s:5:\"gypse\";s:11:\"category_id\";s:1:\"4\";s:7:\"enabled\";s:1:\"1\";}}}','Machinery',1,'Silo',1,NULL,1517252780,NULL),(76,3,'created','Loading','Loading  #29',29,'a:15:{s:10:\"company_id\";s:1:\"1\";s:7:\"user_id\";s:1:\"2\";s:10:\"start_date\";s:19:\"2018-01-30 19:36:00\";s:7:\"item_id\";s:1:\"1\";s:12:\"machenery_id\";s:1:\"1\";s:7:\"silo_id\";s:1:\"1\";s:6:\"weight\";s:5:\"45500\";s:4:\"unit\";s:1:\"t\";s:9:\"vendor_id\";s:1:\"1\";s:7:\"site_id\";s:1:\"1\";s:8:\"canceled\";s:1:\"0\";s:10:\"updated_at\";i:1517253150;s:10:\"created_at\";i:1517253150;s:2:\"id\";s:2:\"29\";s:5:\"items\";a:1:{i:1;a:5:{s:2:\"id\";s:1:\"1\";s:10:\"company_id\";s:1:\"1\";s:5:\"title\";s:5:\"gypse\";s:11:\"category_id\";s:1:\"4\";s:7:\"enabled\";s:1:\"1\";}}}','Machinery',1,'Silo',1,NULL,1517253150,NULL),(77,3,'created','Loading','Loading  #30',30,'a:15:{s:10:\"company_id\";s:1:\"1\";s:7:\"user_id\";s:1:\"2\";s:10:\"start_date\";s:19:\"2018-01-30 19:36:00\";s:7:\"item_id\";s:1:\"1\";s:12:\"machenery_id\";s:1:\"1\";s:7:\"silo_id\";s:1:\"1\";s:6:\"weight\";s:6:\"453500\";s:4:\"unit\";s:1:\"t\";s:9:\"vendor_id\";s:1:\"1\";s:7:\"site_id\";s:1:\"1\";s:8:\"canceled\";s:1:\"0\";s:10:\"updated_at\";i:1517253193;s:10:\"created_at\";i:1517253193;s:2:\"id\";s:2:\"30\";s:5:\"items\";a:1:{i:1;a:5:{s:2:\"id\";s:1:\"1\";s:10:\"company_id\";s:1:\"1\";s:5:\"title\";s:5:\"gypse\";s:11:\"category_id\";s:1:\"4\";s:7:\"enabled\";s:1:\"1\";}}}','Machinery',1,'Silo',1,NULL,1517253193,NULL),(78,3,'deleted','Loading',' #30',30,'a:20:{s:10:\"company_id\";s:1:\"1\";s:7:\"user_id\";s:1:\"2\";s:10:\"start_date\";s:19:\"2018-01-30 19:36:00\";s:7:\"item_id\";s:1:\"1\";s:12:\"machenery_id\";s:1:\"1\";s:7:\"silo_id\";s:1:\"1\";s:6:\"weight\";s:10:\"453500.000\";s:4:\"unit\";s:1:\"t\";s:9:\"vendor_id\";s:1:\"1\";s:7:\"site_id\";s:1:\"1\";s:8:\"canceled\";s:1:\"0\";s:10:\"created_at\";s:10:\"1517253193\";s:10:\"updated_at\";s:10:\"1517253193\";s:7:\"company\";N;s:8:\"operator\";N;s:9:\"machinery\";N;s:6:\"vendor\";N;s:4:\"site\";N;s:4:\"silo\";N;s:5:\"items\";a:0:{}}','Machinery',1,'Silo',1,NULL,1517253199,NULL),(79,3,'deleted','Loading',' #29',29,'a:20:{s:10:\"company_id\";s:1:\"1\";s:7:\"user_id\";s:1:\"2\";s:10:\"start_date\";s:19:\"2018-01-30 19:36:00\";s:7:\"item_id\";s:1:\"1\";s:12:\"machenery_id\";s:1:\"1\";s:7:\"silo_id\";s:1:\"1\";s:6:\"weight\";s:9:\"45500.000\";s:4:\"unit\";s:1:\"t\";s:9:\"vendor_id\";s:1:\"1\";s:7:\"site_id\";s:1:\"1\";s:8:\"canceled\";s:1:\"0\";s:10:\"created_at\";s:10:\"1517253150\";s:10:\"updated_at\";s:10:\"1517253150\";s:7:\"company\";N;s:8:\"operator\";N;s:9:\"machinery\";N;s:6:\"vendor\";N;s:4:\"site\";N;s:4:\"silo\";N;s:5:\"items\";a:0:{}}','Machinery',1,'Silo',1,NULL,1517253204,NULL),(80,3,'deleted','Loading',' #28',28,'a:20:{s:10:\"company_id\";s:1:\"1\";s:7:\"user_id\";s:1:\"2\";s:10:\"start_date\";s:19:\"2018-01-30 19:36:00\";s:7:\"item_id\";s:1:\"1\";s:12:\"machenery_id\";s:1:\"1\";s:7:\"silo_id\";s:1:\"1\";s:6:\"weight\";s:9:\"25500.000\";s:4:\"unit\";s:1:\"t\";s:9:\"vendor_id\";s:1:\"1\";s:7:\"site_id\";s:1:\"1\";s:8:\"canceled\";s:1:\"0\";s:10:\"created_at\";s:10:\"1517252780\";s:10:\"updated_at\";s:10:\"1517252780\";s:7:\"company\";N;s:8:\"operator\";N;s:9:\"machinery\";N;s:6:\"vendor\";N;s:4:\"site\";N;s:4:\"silo\";N;s:5:\"items\";a:0:{}}','Machinery',1,'Silo',1,NULL,1517253318,NULL),(81,3,'created','Loading','Loading  #31',31,'a:15:{s:10:\"company_id\";s:1:\"1\";s:7:\"user_id\";s:1:\"2\";s:10:\"start_date\";s:19:\"2018-01-30 19:36:00\";s:7:\"item_id\";s:1:\"1\";s:12:\"machenery_id\";s:1:\"1\";s:7:\"silo_id\";s:1:\"1\";s:6:\"weight\";s:6:\"100000\";s:4:\"unit\";s:1:\"t\";s:9:\"vendor_id\";s:1:\"1\";s:7:\"site_id\";s:1:\"1\";s:8:\"canceled\";s:1:\"0\";s:10:\"updated_at\";i:1517253353;s:10:\"created_at\";i:1517253353;s:2:\"id\";s:2:\"31\";s:5:\"items\";a:1:{i:1;a:5:{s:2:\"id\";s:1:\"1\";s:10:\"company_id\";s:1:\"1\";s:5:\"title\";s:5:\"gypse\";s:11:\"category_id\";s:1:\"4\";s:7:\"enabled\";s:1:\"1\";}}}','Machinery',1,'Silo',1,NULL,1517253353,NULL),(82,3,'deleted','Loading',' #31',31,'a:20:{s:10:\"company_id\";s:1:\"1\";s:7:\"user_id\";s:1:\"2\";s:10:\"start_date\";s:19:\"2018-01-30 19:36:00\";s:7:\"item_id\";s:1:\"1\";s:12:\"machenery_id\";s:1:\"1\";s:7:\"silo_id\";s:1:\"1\";s:6:\"weight\";s:10:\"100000.000\";s:4:\"unit\";s:1:\"t\";s:9:\"vendor_id\";s:1:\"1\";s:7:\"site_id\";s:1:\"1\";s:8:\"canceled\";s:1:\"0\";s:10:\"created_at\";s:10:\"1517253353\";s:10:\"updated_at\";s:10:\"1517253353\";s:7:\"company\";N;s:8:\"operator\";N;s:9:\"machinery\";N;s:6:\"vendor\";N;s:4:\"site\";N;s:4:\"silo\";N;s:5:\"items\";a:0:{}}','Machinery',1,'Silo',1,NULL,1517253367,NULL),(83,3,'deleted','Loading',' #27',27,'a:20:{s:10:\"company_id\";s:1:\"1\";s:7:\"user_id\";s:1:\"2\";s:10:\"start_date\";s:19:\"2018-01-30 19:36:00\";s:7:\"item_id\";s:1:\"1\";s:12:\"machenery_id\";s:1:\"1\";s:7:\"silo_id\";s:1:\"1\";s:6:\"weight\";s:8:\"1500.000\";s:4:\"unit\";s:1:\"t\";s:9:\"vendor_id\";s:1:\"1\";s:7:\"site_id\";s:1:\"1\";s:8:\"canceled\";s:1:\"0\";s:10:\"created_at\";s:10:\"1517252748\";s:10:\"updated_at\";s:10:\"1517252748\";s:7:\"company\";N;s:8:\"operator\";N;s:9:\"machinery\";N;s:6:\"vendor\";N;s:4:\"site\";N;s:4:\"silo\";N;s:5:\"items\";a:0:{}}','Machinery',1,'Silo',1,NULL,1517253372,NULL),(84,3,'deleted','Loading',' #15',15,'a:20:{s:10:\"company_id\";s:1:\"1\";s:7:\"user_id\";s:1:\"2\";s:10:\"start_date\";s:19:\"2018-01-30 19:26:00\";s:7:\"item_id\";s:1:\"1\";s:12:\"machenery_id\";s:1:\"1\";s:7:\"silo_id\";s:1:\"1\";s:6:\"weight\";s:8:\"1000.000\";s:4:\"unit\";s:1:\"t\";s:9:\"vendor_id\";s:1:\"1\";s:7:\"site_id\";s:1:\"1\";s:8:\"canceled\";s:1:\"0\";s:10:\"created_at\";s:10:\"1517250477\";s:10:\"updated_at\";s:10:\"1517250477\";s:7:\"company\";N;s:8:\"operator\";N;s:9:\"machinery\";N;s:6:\"vendor\";N;s:4:\"site\";N;s:4:\"silo\";N;s:5:\"items\";a:0:{}}','Machinery',1,'Silo',1,NULL,1517253377,NULL),(85,3,'created','Loading','Loading  #32',32,'a:15:{s:10:\"company_id\";s:1:\"1\";s:7:\"user_id\";s:1:\"1\";s:10:\"start_date\";s:19:\"2018-01-30 20:46:00\";s:7:\"item_id\";s:1:\"1\";s:12:\"machenery_id\";s:1:\"1\";s:7:\"silo_id\";s:1:\"1\";s:6:\"weight\";s:3:\"500\";s:4:\"unit\";s:1:\"t\";s:9:\"vendor_id\";s:1:\"1\";s:7:\"site_id\";s:1:\"1\";s:8:\"canceled\";s:1:\"0\";s:10:\"updated_at\";i:1517255679;s:10:\"created_at\";i:1517255679;s:2:\"id\";s:2:\"32\";s:5:\"items\";a:1:{i:1;a:5:{s:2:\"id\";s:1:\"1\";s:10:\"company_id\";s:1:\"1\";s:5:\"title\";s:5:\"gypse\";s:11:\"category_id\";s:1:\"4\";s:7:\"enabled\";s:1:\"1\";}}}','Machinery',1,'Silo',1,NULL,1517255679,NULL),(86,1,'created','Loading','Loading  #33',33,'a:15:{s:10:\"company_id\";s:1:\"1\";s:7:\"user_id\";s:1:\"2\";s:10:\"start_date\";s:19:\"2018-01-30 21:06:10\";s:7:\"item_id\";s:1:\"1\";s:12:\"machenery_id\";s:1:\"1\";s:7:\"silo_id\";s:1:\"2\";s:6:\"weight\";s:4:\"5000\";s:4:\"unit\";s:1:\"t\";s:9:\"vendor_id\";s:1:\"1\";s:7:\"site_id\";s:1:\"1\";s:8:\"canceled\";s:1:\"0\";s:10:\"updated_at\";i:1517256459;s:10:\"created_at\";i:1517256459;s:2:\"id\";s:2:\"33\";s:5:\"items\";a:1:{i:1;a:5:{s:2:\"id\";s:1:\"1\";s:10:\"company_id\";s:1:\"1\";s:5:\"title\";s:5:\"gypse\";s:11:\"category_id\";s:1:\"4\";s:7:\"enabled\";s:1:\"1\";}}}','Machinery',1,'Silo',2,NULL,1517256459,NULL),(87,1,'created','Loading','Loading  #34',34,'a:15:{s:10:\"company_id\";s:1:\"1\";s:7:\"user_id\";s:1:\"2\";s:10:\"start_date\";s:19:\"2018-01-30 21:49:10\";s:7:\"item_id\";s:1:\"1\";s:12:\"machenery_id\";s:1:\"1\";s:7:\"silo_id\";s:1:\"1\";s:6:\"weight\";s:4:\"1000\";s:4:\"unit\";s:1:\"t\";s:9:\"vendor_id\";s:1:\"1\";s:7:\"site_id\";s:1:\"1\";s:8:\"canceled\";s:1:\"0\";s:10:\"updated_at\";i:1517259068;s:10:\"created_at\";i:1517259068;s:2:\"id\";s:2:\"34\";s:5:\"items\";a:1:{i:1;a:5:{s:2:\"id\";s:1:\"1\";s:10:\"company_id\";s:1:\"1\";s:5:\"title\";s:5:\"gypse\";s:11:\"category_id\";s:1:\"4\";s:7:\"enabled\";s:1:\"1\";}}}','Machinery',1,'Silo',1,NULL,1517259068,NULL),(88,1,'deleted','Loading',' #12',12,'a:20:{s:10:\"company_id\";s:1:\"1\";s:7:\"user_id\";s:1:\"1\";s:10:\"start_date\";s:19:\"2018-01-30 17:54:00\";s:7:\"item_id\";s:1:\"1\";s:12:\"machenery_id\";s:1:\"1\";s:7:\"silo_id\";s:1:\"1\";s:6:\"weight\";s:8:\"5500.000\";s:4:\"unit\";s:1:\"t\";s:9:\"vendor_id\";s:1:\"1\";s:7:\"site_id\";s:1:\"1\";s:8:\"canceled\";s:1:\"0\";s:10:\"created_at\";s:10:\"1517245002\";s:10:\"updated_at\";s:10:\"1517245002\";s:7:\"company\";N;s:8:\"operator\";N;s:9:\"machinery\";N;s:6:\"vendor\";N;s:4:\"site\";N;s:4:\"silo\";N;s:5:\"items\";a:0:{}}','Machinery',1,'Silo',1,NULL,1517259701,NULL),(89,1,'created','Loading','Loading  #35',35,'a:15:{s:10:\"company_id\";s:1:\"1\";s:7:\"user_id\";s:1:\"1\";s:10:\"start_date\";s:19:\"2018-01-30 22:06:10\";s:7:\"item_id\";s:1:\"1\";s:12:\"machenery_id\";s:1:\"1\";s:7:\"silo_id\";s:1:\"1\";s:6:\"weight\";s:10:\"8199.99999\";s:4:\"unit\";s:1:\"t\";s:9:\"vendor_id\";s:1:\"1\";s:7:\"site_id\";s:1:\"1\";s:8:\"canceled\";s:1:\"0\";s:10:\"updated_at\";i:1517259763;s:10:\"created_at\";i:1517259763;s:2:\"id\";s:2:\"35\";s:5:\"items\";a:1:{i:1;a:5:{s:2:\"id\";s:1:\"1\";s:10:\"company_id\";s:1:\"1\";s:5:\"title\";s:5:\"gypse\";s:11:\"category_id\";s:1:\"4\";s:7:\"enabled\";s:1:\"1\";}}}','Machinery',1,'Silo',1,NULL,1517259763,NULL),(90,3,'deleted','Loading',' #35',35,'a:20:{s:10:\"company_id\";s:1:\"1\";s:7:\"user_id\";s:1:\"1\";s:10:\"start_date\";s:19:\"2018-01-30 22:06:10\";s:7:\"item_id\";s:1:\"1\";s:12:\"machenery_id\";s:1:\"1\";s:7:\"silo_id\";s:1:\"1\";s:6:\"weight\";s:8:\"8200.000\";s:4:\"unit\";s:1:\"t\";s:9:\"vendor_id\";s:1:\"1\";s:7:\"site_id\";s:1:\"1\";s:8:\"canceled\";s:1:\"0\";s:10:\"created_at\";s:10:\"1517259763\";s:10:\"updated_at\";s:10:\"1517259763\";s:7:\"company\";N;s:8:\"operator\";N;s:9:\"machinery\";N;s:6:\"vendor\";N;s:4:\"site\";N;s:4:\"silo\";N;s:5:\"items\";a:0:{}}','Machinery',1,'Silo',1,NULL,1517262011,NULL),(91,3,'deleted','Loading',' #14',14,'a:20:{s:10:\"company_id\";s:1:\"1\";s:7:\"user_id\";s:1:\"2\";s:10:\"start_date\";s:19:\"2018-01-30 19:19:00\";s:7:\"item_id\";s:1:\"1\";s:12:\"machenery_id\";s:1:\"1\";s:7:\"silo_id\";s:1:\"1\";s:6:\"weight\";s:8:\"6000.000\";s:4:\"unit\";s:1:\"t\";s:9:\"vendor_id\";s:1:\"1\";s:7:\"site_id\";s:1:\"1\";s:8:\"canceled\";s:1:\"0\";s:10:\"created_at\";s:10:\"1517250414\";s:10:\"updated_at\";s:10:\"1517250414\";s:7:\"company\";N;s:8:\"operator\";N;s:9:\"machinery\";N;s:6:\"vendor\";N;s:4:\"site\";N;s:4:\"silo\";N;s:5:\"items\";a:0:{}}','Machinery',1,'Silo',1,NULL,1517262038,NULL),(92,3,'deleted','Loading',' #33',33,'a:20:{s:10:\"company_id\";s:1:\"1\";s:7:\"user_id\";s:1:\"2\";s:10:\"start_date\";s:19:\"2018-01-30 21:06:10\";s:7:\"item_id\";s:1:\"1\";s:12:\"machenery_id\";s:1:\"1\";s:7:\"silo_id\";s:1:\"2\";s:6:\"weight\";s:8:\"5000.000\";s:4:\"unit\";s:1:\"t\";s:9:\"vendor_id\";s:1:\"1\";s:7:\"site_id\";s:1:\"1\";s:8:\"canceled\";s:1:\"0\";s:10:\"created_at\";s:10:\"1517256459\";s:10:\"updated_at\";s:10:\"1517256459\";s:7:\"company\";N;s:8:\"operator\";N;s:9:\"machinery\";N;s:6:\"vendor\";N;s:4:\"site\";N;s:4:\"silo\";N;s:5:\"items\";a:0:{}}','Machinery',1,'Silo',2,NULL,1517262081,NULL),(93,3,'created','Loading','Loading  #36',36,'a:15:{s:10:\"company_id\";s:1:\"1\";s:7:\"user_id\";s:1:\"1\";s:10:\"start_date\";s:19:\"2018-01-30 22:48:10\";s:7:\"item_id\";s:1:\"1\";s:12:\"machenery_id\";s:1:\"1\";s:7:\"silo_id\";s:1:\"1\";s:6:\"weight\";s:4:\"4500\";s:4:\"unit\";s:1:\"t\";s:9:\"vendor_id\";s:1:\"1\";s:7:\"site_id\";s:1:\"1\";s:8:\"canceled\";s:1:\"0\";s:10:\"updated_at\";i:1517262276;s:10:\"created_at\";i:1517262276;s:2:\"id\";s:2:\"36\";s:5:\"items\";a:1:{i:1;a:5:{s:2:\"id\";s:1:\"1\";s:10:\"company_id\";s:1:\"1\";s:5:\"title\";s:5:\"gypse\";s:11:\"category_id\";s:1:\"4\";s:7:\"enabled\";s:1:\"1\";}}}','Machinery',1,'Silo',1,NULL,1517262276,NULL),(94,3,'created','Loading','Loading  #37',37,'a:15:{s:10:\"company_id\";s:1:\"1\";s:7:\"user_id\";s:1:\"1\";s:10:\"start_date\";s:19:\"2018-01-30 22:58:10\";s:7:\"item_id\";s:1:\"2\";s:12:\"machenery_id\";s:1:\"1\";s:7:\"silo_id\";s:1:\"2\";s:6:\"weight\";s:5:\"15000\";s:4:\"unit\";s:1:\"t\";s:9:\"vendor_id\";s:1:\"1\";s:7:\"site_id\";s:1:\"1\";s:8:\"canceled\";s:1:\"0\";s:10:\"updated_at\";i:1517262572;s:10:\"created_at\";i:1517262572;s:2:\"id\";s:2:\"37\";s:5:\"items\";a:1:{i:2;a:5:{s:2:\"id\";s:1:\"2\";s:10:\"company_id\";s:1:\"1\";s:5:\"title\";s:7:\"clinker\";s:11:\"category_id\";s:1:\"4\";s:7:\"enabled\";s:1:\"1\";}}}','Machinery',1,'Silo',2,NULL,1517262573,NULL),(95,3,'created','Loading','Loading  #38',38,'a:15:{s:10:\"company_id\";s:1:\"1\";s:7:\"user_id\";s:1:\"1\";s:10:\"start_date\";s:19:\"2018-01-31 00:00:10\";s:7:\"item_id\";s:1:\"1\";s:12:\"machenery_id\";s:1:\"1\";s:7:\"silo_id\";s:1:\"1\";s:6:\"weight\";s:4:\"5300\";s:4:\"unit\";s:1:\"t\";s:9:\"vendor_id\";s:1:\"1\";s:7:\"site_id\";s:1:\"1\";s:8:\"canceled\";s:1:\"0\";s:10:\"updated_at\";i:1517266876;s:10:\"created_at\";i:1517266876;s:2:\"id\";s:2:\"38\";s:5:\"items\";a:1:{i:1;a:5:{s:2:\"id\";s:1:\"1\";s:10:\"company_id\";s:1:\"1\";s:5:\"title\";s:5:\"gypse\";s:11:\"category_id\";s:1:\"4\";s:7:\"enabled\";s:1:\"1\";}}}','Machinery',1,'Silo',1,NULL,1517266876,NULL),(96,1,'created','Loading','Loading  #39',39,'a:15:{s:10:\"company_id\";s:1:\"1\";s:7:\"user_id\";s:1:\"1\";s:10:\"start_date\";s:19:\"2017-11-15 00:09:23\";s:7:\"item_id\";s:1:\"2\";s:12:\"machenery_id\";s:1:\"1\";s:7:\"silo_id\";s:1:\"2\";s:6:\"weight\";s:4:\"2500\";s:4:\"unit\";s:1:\"t\";s:9:\"vendor_id\";s:1:\"1\";s:7:\"site_id\";s:1:\"1\";s:8:\"canceled\";s:1:\"0\";s:10:\"updated_at\";i:1517267407;s:10:\"created_at\";i:1517267407;s:2:\"id\";s:2:\"39\";s:5:\"items\";a:1:{i:2;a:5:{s:2:\"id\";s:1:\"2\";s:10:\"company_id\";s:1:\"1\";s:5:\"title\";s:7:\"clinker\";s:11:\"category_id\";s:1:\"4\";s:7:\"enabled\";s:1:\"1\";}}}','Machinery',1,'Silo',2,NULL,1517267407,NULL),(97,1,'deleted','Loading',' #13',13,'a:20:{s:10:\"company_id\";s:1:\"1\";s:7:\"user_id\";s:1:\"2\";s:10:\"start_date\";s:19:\"2018-01-30 18:45:00\";s:7:\"item_id\";s:1:\"1\";s:12:\"machenery_id\";s:1:\"1\";s:7:\"silo_id\";s:1:\"1\";s:6:\"weight\";s:7:\"200.000\";s:4:\"unit\";s:1:\"t\";s:9:\"vendor_id\";s:1:\"1\";s:7:\"site_id\";s:1:\"1\";s:8:\"canceled\";s:1:\"0\";s:10:\"created_at\";s:10:\"1517248036\";s:10:\"updated_at\";s:10:\"1517248036\";s:7:\"company\";N;s:8:\"operator\";N;s:9:\"machinery\";N;s:6:\"vendor\";N;s:4:\"site\";N;s:4:\"silo\";N;s:5:\"items\";a:0:{}}','Machinery',1,'Silo',1,NULL,1517267484,NULL),(98,1,'deleted','Loading',' #34',34,'a:20:{s:10:\"company_id\";s:1:\"1\";s:7:\"user_id\";s:1:\"2\";s:10:\"start_date\";s:19:\"2018-01-30 21:49:10\";s:7:\"item_id\";s:1:\"1\";s:12:\"machenery_id\";s:1:\"1\";s:7:\"silo_id\";s:1:\"1\";s:6:\"weight\";s:8:\"1000.000\";s:4:\"unit\";s:1:\"t\";s:9:\"vendor_id\";s:1:\"1\";s:7:\"site_id\";s:1:\"1\";s:8:\"canceled\";s:1:\"0\";s:10:\"created_at\";s:10:\"1517259068\";s:10:\"updated_at\";s:10:\"1517259068\";s:7:\"company\";N;s:8:\"operator\";N;s:9:\"machinery\";N;s:6:\"vendor\";N;s:4:\"site\";N;s:4:\"silo\";N;s:5:\"items\";a:0:{}}','Machinery',1,'Silo',1,NULL,1517267668,NULL),(99,1,'deleted','Loading',' #1',1,'a:20:{s:10:\"company_id\";s:1:\"1\";s:7:\"user_id\";s:1:\"3\";s:10:\"start_date\";s:19:\"2018-01-30 16:37:00\";s:7:\"item_id\";s:1:\"1\";s:12:\"machenery_id\";s:1:\"1\";s:7:\"silo_id\";s:1:\"1\";s:6:\"weight\";s:8:\"2000.000\";s:4:\"unit\";s:1:\"t\";s:9:\"vendor_id\";s:1:\"1\";s:7:\"site_id\";s:1:\"1\";s:8:\"canceled\";s:1:\"0\";s:10:\"created_at\";s:10:\"1517240405\";s:10:\"updated_at\";s:10:\"1517240405\";s:7:\"company\";N;s:8:\"operator\";N;s:9:\"machinery\";N;s:6:\"vendor\";N;s:4:\"site\";N;s:4:\"silo\";N;s:5:\"items\";a:0:{}}','Machinery',1,'Silo',1,NULL,1517267918,NULL),(100,1,'deleted','Loading',' #7',7,'a:20:{s:10:\"company_id\";s:1:\"1\";s:7:\"user_id\";s:1:\"1\";s:10:\"start_date\";s:19:\"2018-01-30 17:17:00\";s:7:\"item_id\";s:1:\"1\";s:12:\"machenery_id\";s:1:\"1\";s:7:\"silo_id\";s:1:\"1\";s:6:\"weight\";s:8:\"1500.000\";s:4:\"unit\";s:1:\"t\";s:9:\"vendor_id\";s:1:\"1\";s:7:\"site_id\";s:1:\"1\";s:8:\"canceled\";s:1:\"0\";s:10:\"created_at\";s:10:\"1517242971\";s:10:\"updated_at\";s:10:\"1517242971\";s:7:\"company\";N;s:8:\"operator\";N;s:9:\"machinery\";N;s:6:\"vendor\";N;s:4:\"site\";N;s:4:\"silo\";N;s:5:\"items\";a:0:{}}','Machinery',1,'Silo',1,NULL,1517267987,NULL);
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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `color` varchar(10) DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,1,'others','item','#605ca8',1),(2,1,'usine','business unit','#f39c12',1),(3,1,'docks - wouri','location','#00c0ef',1),(4,1,'raw substance','item','#d2d6de',1),(5,1,'outil de dechargement','machinery','#605cb5',1);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chats`
--

DROP TABLE IF EXISTS `chats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chats` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `message` mediumtext NOT NULL,
  `from_user_id` int(11) NOT NULL,
  `to_user_id` int(11) DEFAULT NULL,
  `status` enum('unread','read') NOT NULL DEFAULT 'unread',
  `chat_message_id` int(11) DEFAULT NULL,
  `private` tinyint(1) DEFAULT '0',
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chats`
--

LOCK TABLES `chats` WRITE;
/*!40000 ALTER TABLE `chats` DISABLE KEYS */;
INSERT INTO `chats` VALUES (1,'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Recusandae voluptate corporis facere adipisci, sint architecto voluptatibus, modi itaque vel sunt, delectus cum fugit quod fuga, ad distinctio! Magnam odio, ex quisquam rerum porro molestias explicabo quaerat eum voluptatibus sequi quo, quis at nulla doloremque sint.',2,0,'unread',0,0,1517111836,1517111836),(3,'modi itaque vel sunt, delectus cum fugit quod fuga, ad distinctio! Magnam odio, ex quisquam rerum porro molestias explicabo quaerat eum voluptatibus sequi quo, quis at nulla doloremque sint. ',2,0,'unread',0,0,1517112213,1517112213),(4,'Recusandae voluptate corporis facere adipisci, sint architecto voluptatibus,',3,0,'unread',0,0,1517112237,1517112237),(8,'modi itaque vel sunt, delectus cum fugit quod fuga, ad distinctio! Magnam odio, ex quisquam rerum porro molestias explicabo quaerat eum voluptatibus sequi quo, quis at nulla doloremque sint. ',3,0,'unread',0,0,1517112715,1517112715),(10,'Okay Boss',1,0,'unread',0,0,1517115945,1517115945),(11,'hello There !! ',1,0,'unread',0,0,1517132695,1517132695);
/*!40000 ALTER TABLE `chats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `companies`
--

DROP TABLE IF EXISTS `companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `companies` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `domain` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies`
--

LOCK TABLES `companies` WRITE;
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
INSERT INTO `companies` VALUES (1,'CIMEMCAM','CIMEMCAM',1);
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;
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
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `items` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (1,1,'gypse',4,1),(2,1,'clinker',4,1);
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items_loadings`
--

DROP TABLE IF EXISTS `items_loadings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `items_loadings` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `loading_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items_loadings`
--

LOCK TABLES `items_loadings` WRITE;
/*!40000 ALTER TABLE `items_loadings` DISABLE KEYS */;
INSERT INTO `items_loadings` VALUES (2,1,8),(3,1,9),(24,1,32),(28,1,36),(29,2,37),(30,1,38),(31,2,39);
/*!40000 ALTER TABLE `items_loadings` ENABLE KEYS */;
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
-- Table structure for table `loadings`
--

DROP TABLE IF EXISTS `loadings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loadings` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `start_date` datetime NOT NULL,
  `item_id` int(11) NOT NULL,
  `machenery_id` int(11) NOT NULL,
  `silo_id` int(11) NOT NULL,
  `weight` decimal(10,3) NOT NULL,
  `unit` enum('kt','t','kg','m3') NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  `canceled` tinyint(1) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loadings`
--

LOCK TABLES `loadings` WRITE;
/*!40000 ALTER TABLE `loadings` DISABLE KEYS */;
INSERT INTO `loadings` VALUES (8,1,1,'2018-01-30 17:23:00',1,1,1,1100.000,'t',1,1,0,1517243080,1517243080),(9,1,1,'2018-01-30 17:51:00',1,1,1,4500.000,'t',1,1,0,1517244718,1517244718),(32,1,1,'2018-01-30 20:46:00',1,1,1,500.000,'t',1,1,0,1517255679,1517255679),(36,1,1,'2018-01-30 22:48:10',1,1,1,4500.000,'t',1,1,0,1517262276,1517262276),(37,1,1,'2018-01-30 22:58:10',2,1,2,15000.000,'t',1,1,0,1517262572,1517262572),(38,1,1,'2018-01-31 00:00:10',1,1,1,5300.000,'t',1,1,0,1517266876,1517266876),(39,1,1,'2017-11-15 00:09:23',2,1,2,2500.000,'t',1,1,0,1517267407,1517267407);
/*!40000 ALTER TABLE `loadings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `machineries`
--

DROP TABLE IF EXISTS `machineries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `machineries` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `site_id` int(11) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `machineries`
--

LOCK TABLES `machineries` WRITE;
/*!40000 ALTER TABLE `machineries` DISABLE KEYS */;
INSERT INTO `machineries` VALUES (1,1,'grue nr.3',1,1);
/*!40000 ALTER TABLE `machineries` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,'Demo Message','Hello World !',1,2,'unread',0,'','',1517065096,1517065096),(3,'Demo Message','<p><br></p><h3>Hello Christian! </h3><p>\r\n                            dummy text of the printing and typesetting industry. <strong>Lorem Ipsum has been the industry\'s</strong>\r\n standard dummy text ever since the 1500s,\r\n                            when an unknown printer took a galley of \r\ntype and scrambled it to make a type specimen book. It has survived not \r\nonly five centuries, but also the leap into electronic\r\n                            typesetting, remaining essentially \r\nunchanged. It was popularised in the 1960s with the release of Letraset \r\nsheets containing Lorem Ipsum passages, and more recently with\r\n                            <br></p>',1,3,'unread',0,'',NULL,1517075412,1517075412),(26,'Projet Digitalisation : Outil CRM/SAV','<p>Bonjour Cédric, </p><p><br></p><p>voici ci-joint .... </p><p><br></p><p>bien cordialement<br></p>',1,2,'unread',0,'',NULL,1517097985,1517097985),(27,'demo Message ','<p>&nbsp; </p><p>Hi Cedric,<br></p><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ratione repudiandae quo incidunt aspernatur, doloribus nam consequuntur quasi provident officia <font style=\"background-color: rgb(255, 255, 0);\">nesciunt pariatur ullam sapiente porro dolorum eum</font> minus a error amet qui maxime fugit ipsa. Et, repudiandae quam libero quidem recusandae, eius, nisi numquam eligendi impedit illum optio dolor asperiores vel voluptates alias. </p><p>Aliquid, iste. <b>Debitis, cupiditate</b>, nulla. Minima veniam iure aliquam sed mollitia, distinctio ullam nisi necessitatibus inventore soluta veritatis commodi voluptatum aperiam, quo autem vero quasi dolores quia vitae numquam ab laborum molestiae explicabo accusantium. Dolore rerum labore </p><ul><li>iasbdi</li><li>sdhkjlasd</li><li>doifsdi<br></li></ul><p>ex beatae laborum! Itaque repudiandae ut pariatur, illum, suscipit dicta debitis labore hic commodi omnis dolorum recusandae distinctio, saepe veniam aliquam error molestias. Rerum adipisci, porro minus possimus amet impedit placeat molestias, eum corrupti ut distinctio, velit magni quas earum accusamus error. Corporis aut architecto, beatae, quasi dolores fuga veritatis tempora atque ducimus voluptate itaque, numquam possimus adipisci molestias pariatur tenetur.</p><p>regards,<br></p>',3,2,'unread',0,'',NULL,1517098400,1517098400),(28,'okay dude','<p>ahaaaaahah 1 </p><p><br></p><p>this is cool.<br></p>',3,1,'unread',0,'',NULL,1517228422,1517228422);
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
INSERT INTO `migration` VALUES ('package','auth','001_auth_create_usertables'),('package','auth','002_auth_create_grouptables'),('package','auth','003_auth_create_roletables'),('package','auth','004_auth_create_permissiontables'),('package','auth','005_auth_create_authdefaults'),('package','auth','006_auth_add_authactions'),('package','auth','007_auth_add_permissionsfilter'),('package','auth','008_auth_create_providers'),('package','auth','009_auth_create_oauth2tables'),('package','auth','010_auth_fix_jointables'),('package','auth','011_auth_group_optional'),('app','default','001_create_employees'),('app','default','002_create_jobtitles'),('app','default','003_create_activitylogs'),('app','default','004_create_posts'),('app','default','005_create_todos'),('app','default','006_create_announcements'),('app','default','007_create_settings'),('app','default','008_create_messages'),('app','default','009_create_chats'),('app','default','010_create_categories'),('app','default','011_create_items'),('app','default','012_create_vendors'),('app','default','013_create_loadings'),('app','default','014_create_sites'),('app','default','015_create_machineries'),('app','default','016_create_silos'),('app','default','017_create_companies'),('app','default','018_create_operations'),('app','default','019_create_items_loadings'),('app','default','020_add_silo_id_to_operations');
/*!40000 ALTER TABLE `migration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operations`
--

DROP TABLE IF EXISTS `operations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operations` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `loading_id` int(11) NOT NULL,
  `type` tinyint(1) DEFAULT '1',
  `silo_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operations`
--

LOCK TABLES `operations` WRITE;
/*!40000 ALTER TABLE `operations` DISABLE KEYS */;
INSERT INTO `operations` VALUES (1,1,8,1,1),(2,1,7,1,1),(3,1,1,1,1),(4,1,12,1,1),(5,1,13,1,1),(6,1,14,1,1),(7,1,15,1,1),(8,1,16,1,1),(9,1,17,1,1),(10,1,18,1,1),(11,1,19,1,1),(12,1,20,1,1),(13,1,21,1,1),(14,1,22,1,1),(15,1,23,1,1),(16,1,24,1,1),(17,1,25,1,1),(18,1,26,1,1),(19,1,27,1,1),(20,1,28,1,1),(21,1,29,1,1),(22,1,30,1,1),(23,1,31,1,1),(24,1,32,1,1),(25,1,33,1,2),(26,1,34,1,1),(27,1,35,1,1),(28,1,36,1,1),(29,2,37,1,2),(30,1,38,1,1),(31,2,39,1,2);
/*!40000 ALTER TABLE `operations` ENABLE KEYS */;
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
INSERT INTO `sessions` VALUES ('0f2ffbec4dd0425e5f617e505fa082a6','d26fb5ad77eec1e8bd64af9f87726455','Mozilla/5.0 (Windows NT 10.0; WOW64; rv:54.0) Gecko/20100101 Firefox/54.0','cdb8014cb37a311713a252eb70289352',1517266813,1517266876,'a:3:{i:0;a:7:{s:10:\"session_id\";s:32:\"0f2ffbec4dd0425e5f617e505fa082a6\";s:11:\"previous_id\";s:32:\"d26fb5ad77eec1e8bd64af9f87726455\";s:7:\"ip_hash\";s:32:\"cdb8014cb37a311713a252eb70289352\";s:10:\"user_agent\";s:73:\"Mozilla/5.0 (Windows NT 10.0; WOW64; rv:54.0) Gecko/20100101 Firefox/54.0\";s:7:\"created\";i:1517266813;s:7:\"updated\";i:1517266876;s:7:\"payload\";s:0:\"\";}i:1;a:3:{s:17:\"returning_visitor\";N;s:8:\"username\";s:6:\"c.ella\";s:10:\"login_hash\";s:40:\"73ee295e1e8db689450b10f320bc07ec2c189b5d\";}i:2;a:1:{s:29:\"flash::__session_identifier__\";a:2:{s:5:\"state\";s:6:\"expire\";s:5:\"value\";s:40:\"08278710d9e1d7b7fb2a7817edac002520a87a00\";}}}'),('1aabda23ea32e8fb5d7f81db2dabfbc8','5226983f46dfeb463449f8063b81e0c1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0) Gecko/20100101 Firefox/57.0','1ba0d4508441bcdb896203d32d573632',1517267216,1517267279,'a:3:{i:0;a:7:{s:10:\"session_id\";s:32:\"1aabda23ea32e8fb5d7f81db2dabfbc8\";s:11:\"previous_id\";s:32:\"5226983f46dfeb463449f8063b81e0c1\";s:7:\"ip_hash\";s:32:\"1ba0d4508441bcdb896203d32d573632\";s:10:\"user_agent\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0) Gecko/20100101 Firefox/57.0\";s:7:\"created\";i:1517267216;s:7:\"updated\";i:1517267279;s:7:\"payload\";s:0:\"\";}i:1;a:3:{s:17:\"returning_visitor\";N;s:8:\"username\";s:6:\"cedric\";s:10:\"login_hash\";s:40:\"fa6c28a4d5bba96f59e2427f72bf40b547eb4bac\";}i:2;a:1:{s:29:\"flash::__session_identifier__\";a:2:{s:5:\"state\";s:6:\"expire\";s:5:\"value\";s:40:\"ce398f4440c1474921e074cefcdc9fe433bbc38e\";}}}'),('1ead1873b679e3dd670f0f7df476d8c5','9a5b82ada393aab6506731d74554c05c','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.79 Safari/537.36 Edge/14.14393','1ba0d4508441bcdb896203d32d573632',1517267130,1517267292,'a:3:{i:0;a:7:{s:10:\"session_id\";s:32:\"1ead1873b679e3dd670f0f7df476d8c5\";s:11:\"previous_id\";s:32:\"9a5b82ada393aab6506731d74554c05c\";s:7:\"ip_hash\";s:32:\"1ba0d4508441bcdb896203d32d573632\";s:10:\"user_agent\";s:128:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.79 Safari/537.36 Edge/14.14393\";s:7:\"created\";i:1517267130;s:7:\"updated\";i:1517267292;s:7:\"payload\";s:0:\"\";}i:1;a:3:{s:17:\"returning_visitor\";N;s:8:\"username\";s:6:\"c.ella\";s:10:\"login_hash\";s:40:\"f48df0f4b718f5c629bb73870df66860fae2df91\";}i:2;a:1:{s:29:\"flash::__session_identifier__\";a:2:{s:5:\"state\";s:6:\"expire\";s:5:\"value\";s:40:\"6c851ff8215fe3d3527de3375ba44980294870d1\";}}}'),('d2054cdca24da4b1862df12d228ee1a2','d98cb68627b612d721092be5bb38851e','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36 OPR/50.0.2762.67','a496b0db7a5e5349b3ab6ded1eaa491f',1517265898,1517265924,'a:3:{i:0;a:7:{s:10:\"session_id\";s:32:\"d2054cdca24da4b1862df12d228ee1a2\";s:11:\"previous_id\";s:32:\"d98cb68627b612d721092be5bb38851e\";s:7:\"ip_hash\";s:32:\"a496b0db7a5e5349b3ab6ded1eaa491f\";s:10:\"user_agent\";s:132:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36 OPR/50.0.2762.67\";s:7:\"created\";i:1517265898;s:7:\"updated\";i:1517265924;s:7:\"payload\";s:0:\"\";}i:1;a:3:{s:17:\"returning_visitor\";N;s:8:\"username\";s:6:\"franck\";s:10:\"login_hash\";s:40:\"f2d28826ac343c158727ee759ac197bbe35e3b3a\";}i:2;a:1:{s:29:\"flash::__session_identifier__\";a:2:{s:5:\"state\";s:6:\"expire\";s:5:\"value\";s:40:\"0afadde9b7277fd02d75f126059d06b0050b1665\";}}}'),('f27788a0b0ca49da0bdd9939fe61b52e','5e16acff8f3205f62526fe3d39d109b1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36 OPR/50.0.2762.67','1ba0d4508441bcdb896203d32d573632',1517267918,1517267994,'a:3:{i:0;a:7:{s:10:\"session_id\";s:32:\"f27788a0b0ca49da0bdd9939fe61b52e\";s:11:\"previous_id\";s:32:\"5e16acff8f3205f62526fe3d39d109b1\";s:7:\"ip_hash\";s:32:\"1ba0d4508441bcdb896203d32d573632\";s:10:\"user_agent\";s:132:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36 OPR/50.0.2762.67\";s:7:\"created\";i:1517267918;s:7:\"updated\";i:1517267994;s:7:\"payload\";s:0:\"\";}i:1;a:3:{s:17:\"returning_visitor\";N;s:8:\"username\";s:6:\"franck\";s:10:\"login_hash\";s:40:\"a632a8012ba3c4c2f12402d4ce3781c31a273fec\";}i:2;a:1:{s:29:\"flash::__session_identifier__\";a:2:{s:5:\"state\";s:6:\"expire\";s:5:\"value\";s:40:\"11730faa2904088bef4fbd3942956145a3269896\";}}}');
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
-- Table structure for table `silos`
--

DROP TABLE IF EXISTS `silos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `silos` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `capacity` decimal(10,3) NOT NULL,
  `unit` enum('kt','t','kg','m3') NOT NULL,
  `item_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `silos`
--

LOCK TABLES `silos` WRITE;
/*!40000 ALTER TABLE `silos` DISABLE KEYS */;
INSERT INTO `silos` VALUES (1,1,'silo nr.1',25000.000,'t',1,1,1),(2,1,'silo nr.2',45000.000,'t',2,1,1);
/*!40000 ALTER TABLE `silos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sites`
--

DROP TABLE IF EXISTS `sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sites` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sites`
--

LOCK TABLES `sites` WRITE;
/*!40000 ALTER TABLE `sites` DISABLE KEYS */;
INSERT INTO `sites` VALUES (1,1,2,'usine bonaberi',1),(2,1,2,'usine figuil',1);
/*!40000 ALTER TABLE `sites` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `todos`
--

LOCK TABLES `todos` WRITE;
/*!40000 ALTER TABLE `todos` DISABLE KEYS */;
INSERT INTO `todos` VALUES (1,1,'Todo #1 Go get the milk','bla bla','','done','2018-01-29',1517137514,1517137915),(2,1,'ToDo ','bla bla bla','','','2018-01-28',1517138426,1517138426),(3,2,'',NULL,NULL,'','0000-00-00',1517157360,1517157360),(4,2,'',NULL,NULL,'','0000-00-00',1517157437,1517157437),(5,2,'asdasd',NULL,NULL,'','0000-00-00',1517157440,1517157440),(6,2,'My todo #20932',NULL,NULL,'','0000-00-00',1517157552,1517157552),(7,2,'My todo #67532',NULL,NULL,'','0000-00-00',1517157616,1517157616),(8,2,'asasda',NULL,NULL,'','0000-00-00',1517158271,1517158271),(9,2,'new todo',NULL,NULL,'','0000-00-00',1517158307,1517158307),(10,2,'sasdasd',NULL,NULL,'','0000-00-00',1517158365,1517158365),(11,2,'asdasdasq',NULL,NULL,'','0000-00-00',1517158372,1517158372),(12,2,'asdasd',NULL,NULL,'','0000-00-00',1517158454,1517158454),(13,2,'asdasdasdasdasdwwe',NULL,NULL,'','0000-00-00',1517158483,1517158483),(14,2,'asdsasd',NULL,NULL,'','0000-00-00',1517158521,1517158521),(15,2,'asdsasd',NULL,NULL,'','0000-00-00',1517158528,1517158528),(16,2,'1111',NULL,NULL,'','0000-00-00',1517158559,1517158559),(17,2,'ademo','test','','done','2017-11-15',1517158677,1517158677),(18,3,'test todo #342',NULL,NULL,'','0000-00-00',1517159664,1517159664),(19,1,'demo #32',NULL,NULL,'','0000-00-00',1517160817,1517160817),(20,3,'asda',NULL,NULL,'','0000-00-00',1517228334,1517228334),(21,3,'asda',NULL,NULL,'','0000-00-00',1517228336,1517228336),(22,3,'asda',NULL,NULL,'','0000-00-00',1517228338,1517228338);
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
INSERT INTO `users` VALUES (1,'franck','x7eqOm85uffMxQamQPNwBhNKT/Wq4NQzWHvfmBYEOVk=',100,'f.elombat@gmail.com','1517267110','a632a8012ba3c4c2f12402d4ce3781c31a273fec','a:2:{s:8:\"fullname\";s:14:\"Franck Elombat\";s:8:\"jobtitle\";s:3:\"CTO\";}',1515791086,0),(2,'cedric','9lM+og6Mbj5Kc7kA/k9ZfQCIwFMFKzQFTdpfo/B2G7E=',100,'cedric.ndoumbe@lafargeholcim.com','1517267216','fa6c28a4d5bba96f59e2427f72bf40b547eb4bac','a:2:{s:8:\"fullname\";s:14:\"Cedric Ndoumbe\";s:8:\"jobtitle\";s:25:\"Senior IT Support Manager\";}',1515814271,0),(3,'c.ella','9lM+og6Mbj5Kc7kA/k9ZfQCIwFMFKzQFTdpfo/B2G7E=',100,'chrisella71@gmail.com','1517267130','f48df0f4b718f5c629bb73870df66860fae2df91','a:2:{s:8:\"fullname\";s:20:\"Henri Christian ELLA\";s:8:\"jobtitle\";s:13:\"Consultant IT\";}',1516979503,0);
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

--
-- Table structure for table `vendors`
--

DROP TABLE IF EXISTS `vendors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vendors` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendors`
--

LOCK TABLES `vendors` WRITE;
/*!40000 ALTER TABLE `vendors` DISABLE KEYS */;
INSERT INTO `vendors` VALUES (1,1,1,'34298734','contact@maersk.com','http;//maersk.com','MAERSK',1);
/*!40000 ALTER TABLE `vendors` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-30  0:24:16
