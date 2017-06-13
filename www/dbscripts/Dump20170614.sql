CREATE DATABASE  IF NOT EXISTS `alucard263096_helpfooter` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `alucard263096_helpfooter`;
-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: console.helpfooter.com    Database: alucard263096_helpfooter
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
-- Table structure for table `tb_aboutconfig`
--

DROP TABLE IF EXISTS `tb_aboutconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_aboutconfig` (
  `id` int(11) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `updated_user` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL COMMENT '名称.',
  `title` varchar(255) DEFAULT NULL COMMENT '标题.',
  `summary` varchar(4000) DEFAULT NULL COMMENT '简介.',
  `content` text COMMENT '内容.',
  `index_pic` varchar(1000) DEFAULT NULL COMMENT '首页图片.',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_aboutconfig`
--

LOCK TABLES `tb_aboutconfig` WRITE;
/*!40000 ALTER TABLE `tb_aboutconfig` DISABLE KEYS */;
INSERT INTO `tb_aboutconfig` VALUES (0,'2017-06-13 22:41:05',1,'2017-06-13 22:41:05',1,'关于我们','Boc Network','2004年创立以来，博采网络则致力提供数字化综合服务。帮助企业利用大数据，制定更精准的营销策略。','','');
/*!40000 ALTER TABLE `tb_aboutconfig` ENABLE KEYS */;
UNLOCK TABLES;

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
  `ad1_name` varchar(255) DEFAULT NULL COMMENT '广告1名称.',
  `ad1_title` varchar(255) DEFAULT NULL COMMENT '广告1标题.',
  `ad1_summary` varchar(500) DEFAULT NULL COMMENT '广告1简介.',
  `ad1_pic` varchar(1000) DEFAULT NULL COMMENT '广告1图片.',
  `ad1_link` varchar(255) DEFAULT NULL COMMENT '广告1链接.',
  `ad2_name` varchar(255) DEFAULT NULL COMMENT '广告2名称.',
  `ad2_title` varchar(255) DEFAULT NULL COMMENT '广告2标题.',
  `ad2_pic` varchar(1000) DEFAULT NULL COMMENT '广告2图片.',
  `ad2_link` varchar(255) DEFAULT NULL COMMENT '广告2链接.',
  `ad2_summary` varchar(500) DEFAULT NULL COMMENT '广告2简介.',
  `ad3_name` varchar(255) DEFAULT NULL COMMENT '广告3名称.',
  `ad3_title` varchar(255) DEFAULT NULL COMMENT '广告3标题.',
  `ad3_summary` varchar(500) DEFAULT NULL COMMENT '广告3简介.',
  `ad3_pic` varchar(1000) DEFAULT NULL COMMENT '广告3图片.',
  `ad3_link` varchar(255) DEFAULT NULL COMMENT '广告3链接.',
  `ad4_name` varchar(255) DEFAULT NULL COMMENT '广告4名称.',
  `ad4_title` varchar(255) DEFAULT NULL COMMENT '广告4标题.',
  `ad4_summary` varchar(500) DEFAULT NULL COMMENT '广告4简介.',
  `ad4_pic` varchar(1000) DEFAULT NULL COMMENT '广告4图片.',
  `ad4_link` varchar(255) DEFAULT NULL COMMENT '广告4链接.',
  `ad5_name` varchar(255) DEFAULT NULL COMMENT '广告5名称.',
  `ad5_title` varchar(255) DEFAULT NULL COMMENT '广告5标题.',
  `ad5_summary` varchar(500) DEFAULT NULL COMMENT '广告5简介.',
  `ad5_pic` varchar(1000) DEFAULT NULL COMMENT '广告5图片.',
  `ad5_link` varchar(255) DEFAULT NULL COMMENT '广告5链接.',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_indexpage`
--

LOCK TABLES `tb_indexpage` WRITE;
/*!40000 ALTER TABLE `tb_indexpage` DISABLE KEYS */;
INSERT INTO `tb_indexpage` VALUES (0,'2017-06-13 17:14:12',1,'2017-06-14 00:03:07',1,'ADsuper','智慧场景营销专家 让广告因需求而生','博采网络旗下ADSuper大数据平台，致力于让企业拥有自己的营销大数据，依托6亿+人群特征数据库。','17061322056.jpg','javascript:;','数字全案','“轻营销”助力线上转型 迅速达成效果转化','17061323010.jpg','javascript:;','博采网络全案数字营销服务，独创“轻营销”理念，利用自身全网资源、大数据精准营销、创意策略等...','数据开发','卓越的交互体验 为更广阔的移动营销而生','有商   云客','17061323016.jpg','javascript:;','H5','通过精准的内容传达 促成与消费者的有效沟通','地产 家电 金融','17061323053.jpg','javascript:;','社会化营销','缔造人人参与的营销态势','博采网络社会化营销服务，利用创意事件。数字信息、网络媒体，帮助企业实现，具有影响力的线上、线下社会化营销战略。','17061323044.jpg','javascript:;');
/*!40000 ALTER TABLE `tb_indexpage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_news`
--

DROP TABLE IF EXISTS `tb_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_news` (
  `id` int(11) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `updated_user` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL COMMENT '新闻分类.',
  `seq` varchar(255) DEFAULT NULL COMMENT '排序.',
  `name` varchar(255) DEFAULT NULL COMMENT '名称.',
  `is_index` char(1) DEFAULT NULL COMMENT '首页显示.',
  `summary` varchar(4000) DEFAULT NULL COMMENT '摘要.',
  `content` text COMMENT '内容.',
  `thumbnail` varchar(1000) DEFAULT NULL COMMENT '缩略图.',
  `status` varchar(15) DEFAULT NULL COMMENT '状态.\r\n\r\n 启用 = A\r\n 禁用 = I',
  `published_date` datetime DEFAULT NULL COMMENT '发布日期.',
  `title` varchar(255) DEFAULT NULL COMMENT '标题.',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='默认基础数据模型，用于快速新增';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_news`
--

LOCK TABLES `tb_news` WRITE;
/*!40000 ALTER TABLE `tb_news` DISABLE KEYS */;
INSERT INTO `tb_news` VALUES (1,'2017-06-14 01:11:06',1,'2017-06-14 01:11:06',1,1,NULL,NULL,'Y','CSSDA-SPECIAL-KUDOS！博采新版官网荣获国际知名设计平台CSS De...','','17061401004.jpg','A','2017-06-14 00:00:00','博采荣获国际 CSS Design Awards 最佳S.Kudos奖'),(2,'2017-06-14 01:11:46',1,'2017-06-14 01:11:51',1,1,NULL,NULL,'Y','四川省宜宾五粮液集团有限公司，坐落于万里长江第一城——中国白酒之都宜宾。前身是…','','17061401043.jpg','A','2017-06-13 00:00:00','签约五粮醇酒业全年数字营销运营服务'),(3,'2017-06-14 01:12:35',1,'2017-06-14 01:12:35',1,0,NULL,NULL,'Y','财通证券股份有限公司（以下简称“公司”）前身是成立于1993年5月的浙江财政证券公…','','17061401033.jpg','A','2017-06-12 00:00:00','签约财通证券网络全案营销策划');
/*!40000 ALTER TABLE `tb_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_newscategory`
--

DROP TABLE IF EXISTS `tb_newscategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_newscategory` (
  `id` int(11) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `updated_user` int(11) DEFAULT NULL,
  `seq` int(11) DEFAULT NULL COMMENT '排序.',
  `markcode` varchar(255) DEFAULT NULL COMMENT '标识.',
  `name` varchar(255) DEFAULT NULL COMMENT '名称.',
  `summary` varchar(4000) DEFAULT NULL COMMENT '简介.',
  `content` text COMMENT '内容.',
  `status` varchar(15) DEFAULT NULL COMMENT '状态.\r\n\r\n 启用 = A\r\n 禁用 = I',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='默认基础数据模型，用于快速新增';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_newscategory`
--

LOCK TABLES `tb_newscategory` WRITE;
/*!40000 ALTER TABLE `tb_newscategory` DISABLE KEYS */;
INSERT INTO `tb_newscategory` VALUES (1,'2017-06-14 01:10:08',1,'2017-06-14 01:10:08',1,1,'no','1','','','A');
/*!40000 ALTER TABLE `tb_newscategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_newsconfig`
--

DROP TABLE IF EXISTS `tb_newsconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_newsconfig` (
  `id` int(11) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `updated_user` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL COMMENT '名称.',
  `title` varchar(255) DEFAULT NULL COMMENT '标题.',
  `summary` varchar(4000) DEFAULT NULL COMMENT '简介.',
  `content` text COMMENT '内容.',
  `is_active` char(1) DEFAULT NULL COMMENT '启用.',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_newsconfig`
--

LOCK TABLES `tb_newsconfig` WRITE;
/*!40000 ALTER TABLE `tb_newsconfig` DISABLE KEYS */;
INSERT INTO `tb_newsconfig` VALUES (0,'2017-06-14 00:36:38',1,'2017-06-14 00:36:38',1,'新闻动态','新闻动态','让价值共享 记录企业发展脚步','','Y');
/*!40000 ALTER TABLE `tb_newsconfig` ENABLE KEYS */;
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
INSERT INTO `tb_product` VALUES (1,'2017-06-13 22:25:14',1,'2017-06-13 22:25:14',1,'2','立马电动车','Y','立马电动车','','A',2,'17061322004.jpg'),(2,'2017-06-13 22:25:48',1,'2017-06-13 22:25:48',1,'3','金伯利钻石','Y','金伯利钻石','','A',3,'17061322046.jpg'),(3,'2017-06-13 22:27:58',1,'2017-06-13 22:27:58',1,'0','香蕉先生','Y','香蕉先生','','A',1,'17061322050.jpg');
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
INSERT INTO `tb_product_config` VALUES (0,'2017-06-13 22:06:49',1,'2017-06-13 22:06:49',1,'互动开发','专注企业个性化定制开发','','Y','');
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
INSERT INTO `tb_productcategory` VALUES (1,'2017-06-13 22:20:47',1,'2017-06-13 22:23:18',1,0,'网站建设','网站建设','','A','website',NULL),(2,'2017-06-13 22:21:13',1,'2017-06-13 22:21:13',1,1,'平台开发','','','A','platform',NULL),(3,'2017-06-13 22:21:26',1,'2017-06-13 22:21:26',1,0,'APP开发','','','A','app',NULL);
/*!40000 ALTER TABLE `tb_productcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_serviceconfig`
--

DROP TABLE IF EXISTS `tb_serviceconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_serviceconfig` (
  `id` int(11) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `updated_user` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL COMMENT '名称.',
  `title` varchar(255) DEFAULT NULL COMMENT '标题.',
  `summary` varchar(4000) DEFAULT NULL COMMENT '简介.',
  `content` text COMMENT '内容.',
  `image` varchar(1000) DEFAULT NULL COMMENT '图片.',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_serviceconfig`
--

LOCK TABLES `tb_serviceconfig` WRITE;
/*!40000 ALTER TABLE `tb_serviceconfig` DISABLE KEYS */;
INSERT INTO `tb_serviceconfig` VALUES (0,'2017-06-13 22:44:15',1,'2017-06-13 22:44:15',1,'智慧服务','洞悉市场趋势演变 让传播回归社会','微网站开发、公众号开发及托管、并有朋友圈广告、本地推等全新服务内容让企业微信不止有关注度，更有内容精度','','17061322025.jpg');
/*!40000 ALTER TABLE `tb_serviceconfig` ENABLE KEYS */;
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

-- Dump completed on 2017-06-14  1:21:49
