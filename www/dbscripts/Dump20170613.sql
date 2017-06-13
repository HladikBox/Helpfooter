CREATE DATABASE  IF NOT EXISTS `alucard263096_helpfooter` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `alucard263096_helpfooter`;
-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: alucard263096_helpfooter
-- ------------------------------------------------------
-- Server version	5.7.10-enterprise-commercial-advanced-log

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
-- Table structure for table `tb_address`
--

DROP TABLE IF EXISTS `tb_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_address` (
  `id` int(11) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `updated_user` int(11) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL COMMENT '城市名.',
  `address` varchar(4000) DEFAULT NULL COMMENT '详细地址.',
  `tel` varchar(255) DEFAULT NULL COMMENT '电话.',
  `map_link` varchar(255) DEFAULT NULL COMMENT '百度地图链接.',
  `status` varchar(15) DEFAULT NULL COMMENT '状态.\r\n\r\n 启用 = A\r\n 禁用 = I',
  `seq` int(11) DEFAULT NULL COMMENT '顺序.',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='默认基础数据模型，用于快速新增';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_address`
--

LOCK TABLES `tb_address` WRITE;
/*!40000 ALTER TABLE `tb_address` DISABLE KEYS */;
INSERT INTO `tb_address` VALUES (1,'2017-06-12 00:11:51',1,'2017-06-12 00:11:51',1,'深圳','杭州市西湖区紫荆花路2号联合大厦B座6楼','123123','http://j.map.baidu.com/','A',1),(2,'2017-06-12 00:13:02',1,'2017-06-12 00:13:02',1,'杭州','杭州市西湖区紫荆花路2号联合大厦B座6楼','123123123','http://j.map.baidu.com/','A',2);
/*!40000 ALTER TABLE `tb_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_indexbanner`
--

DROP TABLE IF EXISTS `tb_indexbanner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_indexbanner` (
  `id` int(11) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `updated_user` int(11) DEFAULT NULL,
  `seq` int(11) DEFAULT NULL COMMENT '序号.',
  `link` varchar(4000) DEFAULT NULL COMMENT '超链接.',
  `pic` varchar(1000) DEFAULT NULL COMMENT '图片.',
  `content` varchar(4000) DEFAULT NULL COMMENT '文字内容.',
  `mp4` varchar(1000) DEFAULT NULL COMMENT '动画.',
  `status` varchar(15) DEFAULT NULL COMMENT '状态.\r\n\r\n 启用 = A\r\n 禁用 = I',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统相关的广告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_indexbanner`
--

LOCK TABLES `tb_indexbanner` WRITE;
/*!40000 ALTER TABLE `tb_indexbanner` DISABLE KEYS */;
INSERT INTO `tb_indexbanner` VALUES (1,'2017-06-12 01:13:42',1,'2017-06-12 01:13:42',1,1,NULL,'17061200028.jpg','营销、内容、创意、技术、研发\nBoc Network保有对未知的敬畏\n并一路探索','17061201053.mp4','A'),(2,'2017-06-12 01:14:39',1,'2017-06-12 01:14:39',1,2,NULL,'17061201018.jpg','认知、习得、创见、预想、实现\nBoc Network保有对未知的敬畏\n并一路探索','','A'),(3,'2017-06-12 01:15:14',1,'2017-06-12 01:15:14',1,3,NULL,'17061201054.jpg','博采网络致力提供数字化综合服务\n帮助企业利用大数据\n制定更精准的营销策略','','A');
/*!40000 ALTER TABLE `tb_indexbanner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_indexpage`
--

DROP TABLE IF EXISTS `tb_indexpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_indexpage` (
  `id` int(11) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `updated_user` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL COMMENT '关于我们的名称.',
  `summary` varchar(255) DEFAULT NULL COMMENT '关于我们的介绍.',
  `email` varchar(255) DEFAULT NULL COMMENT '联系邮箱.',
  `aboutus_pic` varchar(1000) DEFAULT NULL COMMENT '关于我们图片.',
  `about_name` varchar(255) DEFAULT NULL COMMENT '关于我们的名称.',
  `about_summary` varchar(4000) DEFAULT NULL COMMENT '关于我们的介绍.',
  `about_email` varchar(255) DEFAULT NULL COMMENT '联系邮箱.',
  `about_pic` varchar(1000) DEFAULT NULL COMMENT '关于我们图片.',
  `service_name` varchar(255) DEFAULT NULL COMMENT '服务名称.',
  `service_title` varchar(255) DEFAULT NULL COMMENT '服务标题.',
  `service_summary` varchar(4000) DEFAULT NULL COMMENT '服务简介.',
  `ad1_name` varchar(255) DEFAULT NULL COMMENT '广告1名称.',
  `ad1_title` varchar(255) DEFAULT NULL COMMENT '广告1标题.',
  `ad1_summary` varchar(4000) DEFAULT NULL COMMENT '广告1简介.',
  `ad1_pic` varchar(1000) DEFAULT NULL COMMENT '广告1图片.',
  `ad1_link` varchar(255) DEFAULT NULL COMMENT '广告1链接.',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_indexpage`
--

LOCK TABLES `tb_indexpage` WRITE;
/*!40000 ALTER TABLE `tb_indexpage` DISABLE KEYS */;
INSERT INTO `tb_indexpage` VALUES (0,'2017-06-13 17:14:12',1,'2017-06-13 17:32:52',1,NULL,NULL,NULL,NULL,'Boc Network','2004年创立以来，博采网络则致力提供数字化综合服务。帮助企业利用大数据，制定更精准的营销策略。','service@bocweb.cn','17061317011.jpg','智慧服务','洞悉市场趋势演变 让传播回归社会','微网站开发、公众号开发及托管、并有朋友圈广告、本地推等全新服务内容让企业微信不止有关注度，更有内容精度','','','','','');
/*!40000 ALTER TABLE `tb_indexpage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_product`
--

DROP TABLE IF EXISTS `tb_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_product` (
  `id` int(11) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `updated_user` int(11) DEFAULT NULL,
  `seq` varchar(255) DEFAULT NULL COMMENT '排序.',
  `name` varchar(255) DEFAULT NULL COMMENT '名称.',
  `is_index` char(1) DEFAULT NULL COMMENT '首页显示.',
  `summary` varchar(4000) DEFAULT NULL COMMENT '简称.',
  `content` text COMMENT '内容.',
  `status` varchar(15) DEFAULT NULL COMMENT '状态.\r\n\r\n 启用 = A\r\n 禁用 = I',
  `category_id` int(11) DEFAULT NULL COMMENT '产品分类.',
  `thumbnail` varchar(1000) DEFAULT NULL COMMENT '缩略图.',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='默认基础数据模型，用于快速新增';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_product`
--

LOCK TABLES `tb_product` WRITE;
/*!40000 ALTER TABLE `tb_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_product_config`
--

DROP TABLE IF EXISTS `tb_product_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_product_config` (
  `id` int(11) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `updated_user` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL COMMENT '名称.',
  `title` varchar(255) DEFAULT NULL COMMENT '标题.',
  `summary` varchar(4000) DEFAULT NULL COMMENT '简介.',
  `is_active` char(1) DEFAULT NULL COMMENT '启用.',
  `content` text COMMENT '内容.',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_product_config`
--

LOCK TABLES `tb_product_config` WRITE;
/*!40000 ALTER TABLE `tb_product_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_product_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_productcategory`
--

DROP TABLE IF EXISTS `tb_productcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_productcategory` (
  `id` int(11) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `updated_user` int(11) DEFAULT NULL,
  `seq` int(11) DEFAULT NULL COMMENT '排序.',
  `name` varchar(255) DEFAULT NULL COMMENT '名称.',
  `summary` varchar(4000) DEFAULT NULL COMMENT '简称.',
  `content` text COMMENT '内容.',
  `status` varchar(15) DEFAULT NULL COMMENT '状态.\r\n\r\n 启用 = A\r\n 禁用 = I',
  `markcode` varchar(255) DEFAULT NULL COMMENT '标识.',
  `icon` varchar(1000) DEFAULT NULL COMMENT '小图标.',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='默认基础数据模型，用于快速新增';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_productcategory`
--

LOCK TABLES `tb_productcategory` WRITE;
/*!40000 ALTER TABLE `tb_productcategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_productcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_setting`
--

DROP TABLE IF EXISTS `tb_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_setting` (
  `id` int(11) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `updated_user` int(11) DEFAULT NULL,
  `fav` varchar(1000) DEFAULT NULL COMMENT '网站图标.',
  `name` varchar(255) DEFAULT NULL COMMENT '网站名称.',
  `description` varchar(255) DEFAULT NULL COMMENT '描述.',
  `keywords` varchar(255) DEFAULT NULL COMMENT '关键字.',
  `author` varchar(255) DEFAULT NULL COMMENT '作者.',
  `logo` varchar(1000) DEFAULT NULL COMMENT '左上角LOGO.',
  `slogan` varchar(255) DEFAULT NULL COMMENT '口号.',
  `wechat` varchar(1000) DEFAULT NULL COMMENT '微信二维码.',
  `businessqq` varchar(255) DEFAULT NULL COMMENT '业务咨询QQ.',
  `serivceqq` varchar(255) DEFAULT NULL COMMENT '售后服务QQ.',
  `copyright` varchar(255) DEFAULT NULL COMMENT '版权信息.',
  `miitbeian` varchar(255) DEFAULT NULL COMMENT '备案号.',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_setting`
--

LOCK TABLES `tb_setting` WRITE;
/*!40000 ALTER TABLE `tb_setting` DISABLE KEYS */;
INSERT INTO `tb_setting` VALUES (0,'2017-06-12 00:06:43',1,'2017-06-12 00:06:43',1,'17061200041.ico','博采网络','博采网络，总部位于杭州，秉承实现全网价值营销的理念，以数据为核心，结合营销、内容、创意、技术、研发等多维度，为客户提供综合性数字化创新服务，帮助传统企业实现“互联网+”转','网站建设,APP开发,微信代运营,平台开发,数字营销,杭州网站建设,电子商务平台开发','杭州博采网络科技股份有限公司-高端网站建设-http://www.bocweb.cn','17061200022.png','全网价值营销服务商','17061200007.jpg','359304951','359304951','©2017 博采网络 All rights reserved.','浙ICP备07001687号');
/*!40000 ALTER TABLE `tb_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_user`
--

DROP TABLE IF EXISTS `tb_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `login_id` varchar(255) DEFAULT NULL COMMENT '用户名.\r\n数据中心登录用户名，数据中心用户登录数据中心使用',
  `password` varchar(255) DEFAULT NULL COMMENT '密码.\r\n登录密码',
  `user_name` varchar(255) DEFAULT NULL COMMENT '用户姓名.\r\n用户的真实姓名',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱地址.\r\n用户的邮箱地址',
  `is_admin` char(1) DEFAULT NULL COMMENT '是否管理员.\r\n是否管理员, 权限相对于非管理员多一点',
  `remarks` varchar(4000) DEFAULT NULL COMMENT '备注.\r\n备注',
  `status` varchar(15) DEFAULT NULL COMMENT '状态.\r\n登录状态\r\n 启用 = A\r\n 禁用 = I',
  `created_date` datetime NOT NULL,
  `created_user` int(11) NOT NULL,
  `updated_date` datetime NOT NULL,
  `updated_user` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='这是系统默认自带的数据对象，主要是管理数据中心的管理员或者其他角色登录使用。';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_user`
--

LOCK TABLES `tb_user` WRITE;
/*!40000 ALTER TABLE `tb_user` DISABLE KEYS */;
INSERT INTO `tb_user` VALUES (1,'admin','21232f297a57a5a743894a0e4a801fc3','系统管理员','邮箱','Y','遇到问题，请联系QQ359304951','A','2017-03-23 23:26:10',1,'2017-03-23 23:26:10',1),(2,'editor','21232f297a57a5a743894a0e4a801fc3','数据编辑员','邮箱','N','遇到问题，请联系QQ359304951','A','2017-03-23 23:26:10',1,'2017-03-23 23:26:10',1);
/*!40000 ALTER TABLE `tb_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'alucard263096_helpfooter'
--

--
-- Dumping routines for database 'alucard263096_helpfooter'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-13 18:57:20
