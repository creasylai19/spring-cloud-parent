CREATE DATABASE  IF NOT EXISTS `blog_system` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `blog_system`;
-- MySQL dump 10.13  Distrib 8.0.18, for macos10.14 (x86_64)
--
-- Host: localhost    Database: blog_system
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `t_article`
--

DROP TABLE IF EXISTS `t_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL COMMENT '文章标题',
  `content` longtext COMMENT '文章具体内容',
  `created` date NOT NULL COMMENT '发表时间',
  `modified` date DEFAULT NULL COMMENT '修改时间',
  `categories` varchar(200) DEFAULT '默认分类' COMMENT '文章分类',
  `tags` varchar(200) DEFAULT NULL COMMENT '文章标签',
  `allow_comment` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否允许评论',
  `thumbnail` varchar(200) DEFAULT NULL COMMENT '文章缩略图',
  `test_column` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_article_title_categories_comment` (`title`,`categories`,`allow_comment`),
  KEY `idx_article_test_column` (`test_column`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_article`
--

LOCK TABLES `t_article` WRITE;
/*!40000 ALTER TABLE `t_article` DISABLE KEYS */;
INSERT INTO `t_article` VALUES (1,'blog_system','Java学习路线图具体内容具体内容具体内容具体内容具体内容具体内容具体内容','2019-10-10',NULL,'haha','‘2019,Java,学习路线图',1,NULL,'1'),(2,'mbf','据悉，Python已经入驻小学生教材，未来不学Python不仅知识会脱节，可能与小朋友都没有了共同话题~~所以，从今天起不要再找借口，不要再说想学Python却没有资源，赶快行动起来，Python等你来探索','2019-10-10',NULL,'默认分类','‘2019,Java,学习路线图',1,NULL,'1'),(3,'JDK 8——Lambda表达式介绍',' Lambda表达式是JDK 8中一个重要的新特性，它使用一个清晰简洁的表达式来表达一个接口，同时Lambda表达式也简化了对集合以及数组数据的遍历、过滤和提取等操作。下面，本篇文章就对Lambda表达式进行简要介绍，并进行演示说明','2019-10-10',NULL,'默认分类','‘2019,Java,学习路线图',1,NULL,'1'),(4,'函数式接口','虽然Lambda表达式可以实现匿名内部类的功能，但在使用时却有一个局限，即接口中有且只有一个抽象方法时才能使用Lamdba表达式代替匿名内部类。这是因为Lamdba表达式是基于函数式接口实现的，所谓函数式接口是指有且仅有一个抽象方法的接口，Lambda表达式就是Java中函数式编程的体现，只有确保接口中有且仅有一个抽象方法，Lambda表达式才能顺利地推导出所实现的这个接口中的方法','2019-10-10',NULL,'默认分类','‘2019,Java,学习路线图',1,NULL,'1'),(5,'虚拟化容器技术——Docker运行机制介绍','Docker是一个开源的应用容器引擎，它基于go语言开发，并遵从Apache2.0开源协议。使用Docker可以让开发者封装他们的应用以及依赖包到一个可移植的容器中，然后发布到任意的Linux机器上，也可以实现虚拟化。Docker容器完全使用沙箱机制，相互之间不会有任何接口，这保证了容器之间的安全性','2019-10-10',NULL,'默认分类','‘2019,Java,学习路线图',1,NULL,'1'),(6,'2019新版Java学习路线图','Java学习路线图具体内容具体内容具体内容具体内容具体内容具体内容具体内容','2019-10-10',NULL,'默认分类','‘2019,Java,学习路线图',1,NULL,'1'),(7,'2019新版Python学习线路图','据悉，Python已经入驻小学生教材，未来不学Python不仅知识会脱节，可能与小朋友都没有了共同话题~~所以，从今天起不要再找借口，不要再说想学Python却没有资源，赶快行动起来，Python等你来探索','2019-10-10',NULL,'默认分类','‘2019,Java,学习路线图',1,NULL,'1'),(8,'JDK 8——Lambda表达式介绍',' Lambda表达式是JDK 8中一个重要的新特性，它使用一个清晰简洁的表达式来表达一个接口，同时Lambda表达式也简化了对集合以及数组数据的遍历、过滤和提取等操作。下面，本篇文章就对Lambda表达式进行简要介绍，并进行演示说明','2019-10-10',NULL,'默认分类','‘2019,Java,学习路线图',1,NULL,'1'),(9,'函数式接口','虽然Lambda表达式可以实现匿名内部类的功能，但在使用时却有一个局限，即接口中有且只有一个抽象方法时才能使用Lamdba表达式代替匿名内部类。这是因为Lamdba表达式是基于函数式接口实现的，所谓函数式接口是指有且仅有一个抽象方法的接口，Lambda表达式就是Java中函数式编程的体现，只有确保接口中有且仅有一个抽象方法，Lambda表达式才能顺利地推导出所实现的这个接口中的方法','2019-10-10',NULL,'默认分类','‘2019,Java,学习路线图',1,NULL,'1'),(10,'虚拟化容器技术——Docker运行机制介绍','Docker是一个开源的应用容器引擎，它基于go语言开发，并遵从Apache2.0开源协议。使用Docker可以让开发者封装他们的应用以及依赖包到一个可移植的容器中，然后发布到任意的Linux机器上，也可以实现虚拟化。Docker容器完全使用沙箱机制，相互之间不会有任何接口，这保证了容器之间的安全性','2019-10-10',NULL,'默认分类','‘2019,Java,学习路线图',1,NULL,'1'),(11,'2019新版Java学习路线图','Java学习路线图具体内容具体内容具体内容具体内容具体内容具体内容具体内容','2019-10-10',NULL,'默认分类','‘2019,Java,学习路线图',1,NULL,'1'),(12,'2019新版Python学习线路图','据悉，Python已经入驻小学生教材，未来不学Python不仅知识会脱节，可能与小朋友都没有了共同话题~~所以，从今天起不要再找借口，不要再说想学Python却没有资源，赶快行动起来，Python等你来探索','2019-10-10',NULL,'默认分类','‘2019,Java,学习路线图',1,NULL,'1'),(13,'JDK 8——Lambda表达式介绍',' Lambda表达式是JDK 8中一个重要的新特性，它使用一个清晰简洁的表达式来表达一个接口，同时Lambda表达式也简化了对集合以及数组数据的遍历、过滤和提取等操作。下面，本篇文章就对Lambda表达式进行简要介绍，并进行演示说明','2019-10-10',NULL,'默认分类','‘2019,Java,学习路线图',1,NULL,'1'),(14,'函数式接口','虽然Lambda表达式可以实现匿名内部类的功能，但在使用时却有一个局限，即接口中有且只有一个抽象方法时才能使用Lamdba表达式代替匿名内部类。这是因为Lamdba表达式是基于函数式接口实现的，所谓函数式接口是指有且仅有一个抽象方法的接口，Lambda表达式就是Java中函数式编程的体现，只有确保接口中有且仅有一个抽象方法，Lambda表达式才能顺利地推导出所实现的这个接口中的方法','2019-10-10',NULL,'默认分类','‘2019,Java,学习路线图',1,NULL,'1'),(15,'虚拟化容器技术——Docker运行机制介绍','Docker是一个开源的应用容器引擎，它基于go语言开发，并遵从Apache2.0开源协议。使用Docker可以让开发者封装他们的应用以及依赖包到一个可移植的容器中，然后发布到任意的Linux机器上，也可以实现虚拟化。Docker容器完全使用沙箱机制，相互之间不会有任何接口，这保证了容器之间的安全性','2019-10-10',NULL,'默认分类','‘2019,Java,学习路线图',1,NULL,'1'),(16,'2019新版Java学习路线图','Java学习路线图具体内容具体内容具体内容具体内容具体内容具体内容具体内容','2019-10-10',NULL,'默认分类','‘2019,Java,学习路线图',1,NULL,'1'),(17,'2019新版Python学习线路图','据悉，Python已经入驻小学生教材，未来不学Python不仅知识会脱节，可能与小朋友都没有了共同话题~~所以，从今天起不要再找借口，不要再说想学Python却没有资源，赶快行动起来，Python等你来探索','2019-10-10',NULL,'默认分类','‘2019,Java,学习路线图',1,NULL,'1'),(18,'JDK 8——Lambda表达式介绍',' Lambda表达式是JDK 8中一个重要的新特性，它使用一个清晰简洁的表达式来表达一个接口，同时Lambda表达式也简化了对集合以及数组数据的遍历、过滤和提取等操作。下面，本篇文章就对Lambda表达式进行简要介绍，并进行演示说明','2019-10-10',NULL,'默认分类','‘2019,Java,学习路线图',1,NULL,'1'),(19,'函数式接口','虽然Lambda表达式可以实现匿名内部类的功能，但在使用时却有一个局限，即接口中有且只有一个抽象方法时才能使用Lamdba表达式代替匿名内部类。这是因为Lamdba表达式是基于函数式接口实现的，所谓函数式接口是指有且仅有一个抽象方法的接口，Lambda表达式就是Java中函数式编程的体现，只有确保接口中有且仅有一个抽象方法，Lambda表达式才能顺利地推导出所实现的这个接口中的方法','2019-10-10',NULL,'默认分类','‘2019,Java,学习路线图',1,NULL,'1'),(20,'虚拟化容器技术——Docker运行机制介绍','Docker是一个开源的应用容器引擎，它基于go语言开发，并遵从Apache2.0开源协议。使用Docker可以让开发者封装他们的应用以及依赖包到一个可移植的容器中，然后发布到任意的Linux机器上，也可以实现虚拟化。Docker容器完全使用沙箱机制，相互之间不会有任何接口，这保证了容器之间的安全性','2019-10-10',NULL,'默认分类','‘2019,Java,学习路线图',1,NULL,'1'),(21,'2019新版Java学习路线图','Java学习路线图具体内容具体内容具体内容具体内容具体内容具体内容具体内容','2019-10-10',NULL,'默认分类','‘2019,Java,学习路线图',1,NULL,'2'),(22,'2019新版Java学习路线图','Java学习路线图具体内容具体内容具体内容具体内容具体内容具体内容具体内容','2019-10-10',NULL,'默认分类','‘2019,Java,学习路线图',1,NULL,'1');
/*!40000 ALTER TABLE `t_article` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-09 12:27:59
