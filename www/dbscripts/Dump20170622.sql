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
  `summary` varchar(255) DEFAULT NULL COMMENT '简称.',
  `content` text COMMENT '内容.',
  `status` varchar(15) DEFAULT NULL COMMENT '状态.\r\n\r\n 启用 = A\r\n 禁用 = I',
  `category_id` int(11) DEFAULT NULL COMMENT '产品分类.',
  `thumbnail` varchar(1000) DEFAULT NULL COMMENT '缩略图.',
  `is_categoryindex` char(1) DEFAULT NULL COMMENT '分类顶部推荐.',
  `itswebsite` varchar(255) DEFAULT NULL COMMENT '官方.',
  `pic` varchar(1000) DEFAULT NULL COMMENT '大图.',
  `description` varchar(4000) DEFAULT NULL COMMENT '项目简介.',
  `service` varchar(4000) DEFAULT NULL COMMENT '项目服务.',
  `contentpic` varchar(1000) DEFAULT NULL COMMENT '内容长图.',
  `qrcode` varchar(1000) DEFAULT NULL COMMENT '二维码.',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='默认基础数据模型，用于快速新增';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_product`
--

LOCK TABLES `tb_product` WRITE;
/*!40000 ALTER TABLE `tb_product` DISABLE KEYS */;
INSERT INTO `tb_product` VALUES (1,'2017-06-13 22:25:14',1,'2017-06-22 19:57:20',1,'2','立马电动车','Y','立马电动车','','A',2,'17061322004.jpg','Y','','17062219025.jpg','香蕉先生是一个大家族，虽然我有很多孪生兄弟，但我们的出生过程可是经过各个环节的精细考究哦~首先由洁净的“造型师”浸没在恒温的天然乳胶中并缓慢拉起，多次重复的在洁净空气中缓慢旋转并均匀地覆盖在“造型师”身上。待成形，在水中浸泡后用较高压的水流冲下来。当然“造型师”还会给家族的兄弟增加不同的“造型”加以区分，有螺纹型、平滑型、浮点型等，尤其是国内首创虎牙G点。','香蕉先生是一个大家族，虽然我有很多孪生兄弟，但我们的出生过程可是经过各个环节的精细考究哦~首先由洁净的“造型师”浸没在恒温的天然乳胶中并缓慢拉起，多次重复的在洁净空气中缓慢旋转并均匀地覆盖在“造型师”身上。待成形，在水中浸泡后用较高压的水流冲下来。当然“造型师”还会给家族的兄弟增加不同的“造型”加以区分，有螺纹型、平滑型、浮点型等，尤其是国内首创虎牙G点。','17062219041.jpg','17062219019.jpg'),(2,'2017-06-13 22:25:48',1,'2017-06-22 19:14:15',1,'3','金伯利钻石','Y','金伯利钻石','','A',3,'17061322046.jpg','Y','','17062219015.jpg',NULL,NULL,NULL,NULL),(3,'2017-06-13 22:27:58',1,'2017-06-22 19:06:57',1,'0','香蕉先生','Y','香蕉先生','','A',1,'17061322050.jpg','Y','','17062219009.jpg',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tb_product` ENABLE KEYS */;
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
INSERT INTO `tb_productcategory` VALUES (1,'2017-06-13 22:20:47',1,'2017-06-13 22:23:18',1,0,'网站建设','网站建设','','A','website',NULL),(2,'2017-06-13 22:21:13',1,'2017-06-13 22:21:13',1,1,'平台开发','','','A','platform',NULL),(3,'2017-06-13 22:21:26',1,'2017-06-13 22:21:26',1,0,'APP开发','','','A','app',NULL);
/*!40000 ALTER TABLE `tb_productcategory` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-22 20:04:02
