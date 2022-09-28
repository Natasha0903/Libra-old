-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: ::1    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2022-05-16 08:18:23','2022-05-16 08:18:23','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_icl_content_status`
--

DROP TABLE IF EXISTS `wp_icl_content_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_icl_content_status` (
  `rid` bigint(20) NOT NULL,
  `nid` bigint(20) NOT NULL,
  `timestamp` datetime NOT NULL,
  `md5` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`rid`),
  KEY `nid` (`nid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_icl_content_status`
--

LOCK TABLES `wp_icl_content_status` WRITE;
/*!40000 ALTER TABLE `wp_icl_content_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_icl_content_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_icl_core_status`
--

DROP TABLE IF EXISTS `wp_icl_core_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_icl_core_status` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `rid` bigint(20) NOT NULL,
  `module` varchar(16) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `origin` varchar(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `target` varchar(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` smallint(6) NOT NULL,
  `tp_revision` int(11) NOT NULL DEFAULT '1',
  `ts_status` text COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_icl_core_status`
--

LOCK TABLES `wp_icl_core_status` WRITE;
/*!40000 ALTER TABLE `wp_icl_core_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_icl_core_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_icl_flags`
--

DROP TABLE IF EXISTS `wp_icl_flags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_icl_flags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lang_code` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `flag` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `from_template` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `lang_code` (`lang_code`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_icl_flags`
--

LOCK TABLES `wp_icl_flags` WRITE;
/*!40000 ALTER TABLE `wp_icl_flags` DISABLE KEYS */;
INSERT INTO `wp_icl_flags` VALUES (1,'ar','ar.png',0);
INSERT INTO `wp_icl_flags` VALUES (2,'az','az.png',0);
INSERT INTO `wp_icl_flags` VALUES (3,'bg','bg.png',0);
INSERT INTO `wp_icl_flags` VALUES (4,'bn','bn.png',0);
INSERT INTO `wp_icl_flags` VALUES (5,'bs','bs.png',0);
INSERT INTO `wp_icl_flags` VALUES (6,'ca','ca.png',0);
INSERT INTO `wp_icl_flags` VALUES (7,'cs','cs.png',0);
INSERT INTO `wp_icl_flags` VALUES (8,'cy','cy.png',0);
INSERT INTO `wp_icl_flags` VALUES (9,'da','da.png',0);
INSERT INTO `wp_icl_flags` VALUES (10,'de','de.png',0);
INSERT INTO `wp_icl_flags` VALUES (11,'el','el.png',0);
INSERT INTO `wp_icl_flags` VALUES (12,'en','en.png',0);
INSERT INTO `wp_icl_flags` VALUES (13,'eo','eo.png',0);
INSERT INTO `wp_icl_flags` VALUES (14,'es','es.png',0);
INSERT INTO `wp_icl_flags` VALUES (15,'et','et.png',0);
INSERT INTO `wp_icl_flags` VALUES (16,'eu','eu.png',0);
INSERT INTO `wp_icl_flags` VALUES (17,'fa','fa.png',0);
INSERT INTO `wp_icl_flags` VALUES (18,'fi','fi.png',0);
INSERT INTO `wp_icl_flags` VALUES (19,'fr','fr.png',0);
INSERT INTO `wp_icl_flags` VALUES (20,'ga','ga.png',0);
INSERT INTO `wp_icl_flags` VALUES (21,'gl','gl.png',0);
INSERT INTO `wp_icl_flags` VALUES (22,'he','he.png',0);
INSERT INTO `wp_icl_flags` VALUES (23,'hi','hi.png',0);
INSERT INTO `wp_icl_flags` VALUES (24,'hr','hr.png',0);
INSERT INTO `wp_icl_flags` VALUES (25,'hu','hu.png',0);
INSERT INTO `wp_icl_flags` VALUES (26,'hy','hy.png',0);
INSERT INTO `wp_icl_flags` VALUES (27,'id','id.png',0);
INSERT INTO `wp_icl_flags` VALUES (28,'is','is.png',0);
INSERT INTO `wp_icl_flags` VALUES (29,'it','it.png',0);
INSERT INTO `wp_icl_flags` VALUES (30,'ja','ja.png',0);
INSERT INTO `wp_icl_flags` VALUES (31,'ko','ko.png',0);
INSERT INTO `wp_icl_flags` VALUES (32,'ku','ku.png',0);
INSERT INTO `wp_icl_flags` VALUES (33,'lt','lt.png',0);
INSERT INTO `wp_icl_flags` VALUES (34,'lv','lv.png',0);
INSERT INTO `wp_icl_flags` VALUES (35,'mk','mk.png',0);
INSERT INTO `wp_icl_flags` VALUES (36,'mn','mn.png',0);
INSERT INTO `wp_icl_flags` VALUES (37,'ms','ms.png',0);
INSERT INTO `wp_icl_flags` VALUES (38,'mt','mt.png',0);
INSERT INTO `wp_icl_flags` VALUES (39,'ne','ne.png',0);
INSERT INTO `wp_icl_flags` VALUES (40,'nl','nl.png',0);
INSERT INTO `wp_icl_flags` VALUES (41,'no','no.png',0);
INSERT INTO `wp_icl_flags` VALUES (42,'pa','pa.png',0);
INSERT INTO `wp_icl_flags` VALUES (43,'pl','pl.png',0);
INSERT INTO `wp_icl_flags` VALUES (44,'pt-br','pt-br.png',0);
INSERT INTO `wp_icl_flags` VALUES (45,'pt-pt','pt-pt.png',0);
INSERT INTO `wp_icl_flags` VALUES (46,'qu','qu.png',0);
INSERT INTO `wp_icl_flags` VALUES (47,'ro','ro.png',0);
INSERT INTO `wp_icl_flags` VALUES (48,'ru','ru.png',0);
INSERT INTO `wp_icl_flags` VALUES (49,'sk','sk.png',0);
INSERT INTO `wp_icl_flags` VALUES (50,'sl','sl.png',0);
INSERT INTO `wp_icl_flags` VALUES (51,'so','so.png',0);
INSERT INTO `wp_icl_flags` VALUES (52,'sq','sq.png',0);
INSERT INTO `wp_icl_flags` VALUES (53,'sr','sr.png',0);
INSERT INTO `wp_icl_flags` VALUES (54,'sv','sv.png',0);
INSERT INTO `wp_icl_flags` VALUES (55,'ta','ta.png',0);
INSERT INTO `wp_icl_flags` VALUES (56,'th','th.png',0);
INSERT INTO `wp_icl_flags` VALUES (57,'tr','tr.png',0);
INSERT INTO `wp_icl_flags` VALUES (58,'uk','uk.png',0);
INSERT INTO `wp_icl_flags` VALUES (59,'ur','ur.png',0);
INSERT INTO `wp_icl_flags` VALUES (60,'uz','uz.png',0);
INSERT INTO `wp_icl_flags` VALUES (61,'vi','vi.png',0);
INSERT INTO `wp_icl_flags` VALUES (62,'yi','yi.png',0);
INSERT INTO `wp_icl_flags` VALUES (63,'zh-hans','zh.png',0);
INSERT INTO `wp_icl_flags` VALUES (64,'zh-hant','zh.png',0);
INSERT INTO `wp_icl_flags` VALUES (65,'zu','zu.png',0);
/*!40000 ALTER TABLE `wp_icl_flags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_icl_languages`
--

DROP TABLE IF EXISTS `wp_icl_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_icl_languages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `english_name` varchar(128) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `major` tinyint(4) NOT NULL DEFAULT '0',
  `active` tinyint(4) NOT NULL,
  `default_locale` varchar(35) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `tag` varchar(35) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `encode_url` tinyint(1) NOT NULL DEFAULT '0',
  `country` varchar(10) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  UNIQUE KEY `english_name` (`english_name`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_icl_languages`
--

LOCK TABLES `wp_icl_languages` WRITE;
/*!40000 ALTER TABLE `wp_icl_languages` DISABLE KEYS */;
INSERT INTO `wp_icl_languages` VALUES (1,'en','English',1,0,'en_US','en',0,NULL);
INSERT INTO `wp_icl_languages` VALUES (2,'es','Spanish',1,0,'es_ES','es',0,NULL);
INSERT INTO `wp_icl_languages` VALUES (3,'de','German',1,0,'de_DE','de',0,NULL);
INSERT INTO `wp_icl_languages` VALUES (4,'fr','French',1,0,'fr_FR','fr',0,NULL);
INSERT INTO `wp_icl_languages` VALUES (5,'ar','Arabic',0,0,'ar','ar',0,NULL);
INSERT INTO `wp_icl_languages` VALUES (6,'bs','Bosnian',0,0,'bs_BA','bs',0,NULL);
INSERT INTO `wp_icl_languages` VALUES (7,'bg','Bulgarian',0,0,'bg_BG','bg',0,NULL);
INSERT INTO `wp_icl_languages` VALUES (8,'ca','Catalan',0,0,'ca','ca',0,NULL);
INSERT INTO `wp_icl_languages` VALUES (9,'cs','Czech',0,0,'cs_CZ','cs',0,NULL);
INSERT INTO `wp_icl_languages` VALUES (10,'sk','Slovak',0,0,'sk_SK','sk',0,NULL);
INSERT INTO `wp_icl_languages` VALUES (11,'cy','Welsh',0,0,'cy_GB','cy',0,NULL);
INSERT INTO `wp_icl_languages` VALUES (12,'da','Danish',1,0,'da_DK','da',0,NULL);
INSERT INTO `wp_icl_languages` VALUES (13,'el','Greek',0,0,'el','el',0,NULL);
INSERT INTO `wp_icl_languages` VALUES (14,'eo','Esperanto',0,0,'eo_UY','eo',0,NULL);
INSERT INTO `wp_icl_languages` VALUES (15,'et','Estonian',0,0,'et','et',0,NULL);
INSERT INTO `wp_icl_languages` VALUES (16,'eu','Basque',0,0,'eu_ES','eu',0,NULL);
INSERT INTO `wp_icl_languages` VALUES (17,'fa','Persian',0,0,'fa_IR','fa',0,NULL);
INSERT INTO `wp_icl_languages` VALUES (18,'fi','Finnish',0,0,'fi','fi',0,NULL);
INSERT INTO `wp_icl_languages` VALUES (19,'ga','Irish',0,0,'ga_IE','ga',0,NULL);
INSERT INTO `wp_icl_languages` VALUES (20,'he','Hebrew',0,0,'he_IL','he',0,NULL);
INSERT INTO `wp_icl_languages` VALUES (21,'hi','Hindi',0,0,'hi_IN','hi',0,NULL);
INSERT INTO `wp_icl_languages` VALUES (22,'hr','Croatian',0,0,'hr','hr',0,NULL);
INSERT INTO `wp_icl_languages` VALUES (23,'hu','Hungarian',0,0,'hu_HU','hu',0,NULL);
INSERT INTO `wp_icl_languages` VALUES (24,'hy','Armenian',0,0,'hy_AM','hy',0,NULL);
INSERT INTO `wp_icl_languages` VALUES (25,'id','Indonesian',0,0,'id_ID','id',0,NULL);
INSERT INTO `wp_icl_languages` VALUES (26,'is','Icelandic',0,0,'is_IS','is',0,NULL);
INSERT INTO `wp_icl_languages` VALUES (27,'it','Italian',1,0,'it_IT','it',0,NULL);
INSERT INTO `wp_icl_languages` VALUES (28,'ja','Japanese',1,0,'ja','ja',0,NULL);
INSERT INTO `wp_icl_languages` VALUES (29,'ko','Korean',0,0,'ko_KR','ko',0,NULL);
INSERT INTO `wp_icl_languages` VALUES (30,'ku','Kurdish',0,0,'ckb','ku',0,NULL);
INSERT INTO `wp_icl_languages` VALUES (31,'lv','Latvian',0,0,'lv_LV','lv',0,NULL);
INSERT INTO `wp_icl_languages` VALUES (32,'lt','Lithuanian',0,0,'lt_LT','lt',0,NULL);
INSERT INTO `wp_icl_languages` VALUES (33,'mk','Macedonian',0,0,'mk_MK','mk',0,NULL);
INSERT INTO `wp_icl_languages` VALUES (34,'mt','Maltese',0,0,'mt_MT','mt',0,NULL);
INSERT INTO `wp_icl_languages` VALUES (35,'mn','Mongolian',0,0,'mn_MN','mn',0,NULL);
INSERT INTO `wp_icl_languages` VALUES (36,'ne','Nepali',0,0,'ne','ne',0,NULL);
INSERT INTO `wp_icl_languages` VALUES (37,'nl','Dutch',1,0,'nl_NL','nl',0,NULL);
INSERT INTO `wp_icl_languages` VALUES (38,'no','Norwegian Bokmål',0,0,'nb_NO','no',0,NULL);
INSERT INTO `wp_icl_languages` VALUES (39,'pa','Punjabi',0,0,'pa_IN','pa',0,NULL);
INSERT INTO `wp_icl_languages` VALUES (40,'pl','Polish',0,0,'pl_PL','pl',0,NULL);
INSERT INTO `wp_icl_languages` VALUES (41,'pt-pt','Portuguese, Portugal',0,0,'pt_PT','pt-pt',0,NULL);
INSERT INTO `wp_icl_languages` VALUES (42,'pt-br','Portuguese, Brazil',0,0,'pt_BR','pt-br',0,NULL);
INSERT INTO `wp_icl_languages` VALUES (43,'qu','Quechua',0,0,'quz_PE','qu',0,NULL);
INSERT INTO `wp_icl_languages` VALUES (44,'ro','Romanian',0,0,'ro_RO','ro',0,NULL);
INSERT INTO `wp_icl_languages` VALUES (45,'ru','Russian',1,1,'ru_RU','ru',0,NULL);
INSERT INTO `wp_icl_languages` VALUES (46,'sl','Slovenian',0,0,'sl_SI','sl',0,NULL);
INSERT INTO `wp_icl_languages` VALUES (47,'so','Somali',0,0,'so_SO','so',0,NULL);
INSERT INTO `wp_icl_languages` VALUES (48,'sq','Albanian',0,0,'sq_AL','sq',0,NULL);
INSERT INTO `wp_icl_languages` VALUES (49,'sr','Serbian',0,0,'sr_RS','sr',0,NULL);
INSERT INTO `wp_icl_languages` VALUES (50,'sv','Swedish',0,0,'sv_SE','sv',0,NULL);
INSERT INTO `wp_icl_languages` VALUES (51,'ta','Tamil',0,0,'ta_IN','ta',0,NULL);
INSERT INTO `wp_icl_languages` VALUES (52,'th','Thai',0,0,'th','th',0,NULL);
INSERT INTO `wp_icl_languages` VALUES (53,'tr','Turkish',0,0,'tr_TR','tr',0,NULL);
INSERT INTO `wp_icl_languages` VALUES (54,'uk','Ukrainian',0,1,'uk','uk',0,NULL);
INSERT INTO `wp_icl_languages` VALUES (55,'ur','Urdu',0,0,'ur','ur',0,NULL);
INSERT INTO `wp_icl_languages` VALUES (56,'uz','Uzbek',0,0,'uz_UZ','uz',0,NULL);
INSERT INTO `wp_icl_languages` VALUES (57,'vi','Vietnamese',0,0,'vi_VN','vi',0,NULL);
INSERT INTO `wp_icl_languages` VALUES (58,'yi','Yiddish',0,0,'','yi',0,NULL);
INSERT INTO `wp_icl_languages` VALUES (59,'zh-hans','Chinese (Simplified)',1,0,'zh_CN','zh-hans',0,NULL);
INSERT INTO `wp_icl_languages` VALUES (60,'zu','Zulu',0,0,'','zu',0,NULL);
INSERT INTO `wp_icl_languages` VALUES (61,'zh-hant','Chinese (Traditional)',1,0,'zh_TW','zh-hant',0,NULL);
INSERT INTO `wp_icl_languages` VALUES (62,'ms','Malay',0,0,'ms_MY','ms',0,NULL);
INSERT INTO `wp_icl_languages` VALUES (63,'gl','Galician',0,0,'gl_ES','gl',0,NULL);
INSERT INTO `wp_icl_languages` VALUES (64,'bn','Bengali',0,0,'bn_BD','bn',0,NULL);
INSERT INTO `wp_icl_languages` VALUES (65,'az','Azerbaijani',0,0,'az','az',0,NULL);
/*!40000 ALTER TABLE `wp_icl_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_icl_languages_translations`
--

DROP TABLE IF EXISTS `wp_icl_languages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_icl_languages_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language_code` varchar(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `display_language_code` varchar(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `language_code` (`language_code`,`display_language_code`)
) ENGINE=InnoDB AUTO_INCREMENT=4226 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_icl_languages_translations`
--

LOCK TABLES `wp_icl_languages_translations` WRITE;
/*!40000 ALTER TABLE `wp_icl_languages_translations` DISABLE KEYS */;
INSERT INTO `wp_icl_languages_translations` VALUES (1,'en','en','English');
INSERT INTO `wp_icl_languages_translations` VALUES (2,'en','es','Inglés');
INSERT INTO `wp_icl_languages_translations` VALUES (3,'en','de','Englisch');
INSERT INTO `wp_icl_languages_translations` VALUES (4,'en','fr','Anglais');
INSERT INTO `wp_icl_languages_translations` VALUES (5,'en','ar','الإنجليزية');
INSERT INTO `wp_icl_languages_translations` VALUES (6,'en','bs','English');
INSERT INTO `wp_icl_languages_translations` VALUES (7,'en','bg','Английски');
INSERT INTO `wp_icl_languages_translations` VALUES (8,'en','ca','English');
INSERT INTO `wp_icl_languages_translations` VALUES (9,'en','cs','Angličtina');
INSERT INTO `wp_icl_languages_translations` VALUES (10,'en','sk','Angličtina');
INSERT INTO `wp_icl_languages_translations` VALUES (11,'en','cy','English');
INSERT INTO `wp_icl_languages_translations` VALUES (12,'en','da','English');
INSERT INTO `wp_icl_languages_translations` VALUES (13,'en','el','Αγγλικά');
INSERT INTO `wp_icl_languages_translations` VALUES (14,'en','eo','English');
INSERT INTO `wp_icl_languages_translations` VALUES (15,'en','et','English');
INSERT INTO `wp_icl_languages_translations` VALUES (16,'en','eu','English');
INSERT INTO `wp_icl_languages_translations` VALUES (17,'en','fa','English');
INSERT INTO `wp_icl_languages_translations` VALUES (18,'en','fi','Englanti');
INSERT INTO `wp_icl_languages_translations` VALUES (19,'en','ga','English');
INSERT INTO `wp_icl_languages_translations` VALUES (20,'en','he','אנגלית');
INSERT INTO `wp_icl_languages_translations` VALUES (21,'en','hi','English');
INSERT INTO `wp_icl_languages_translations` VALUES (22,'en','hr','Engleski');
INSERT INTO `wp_icl_languages_translations` VALUES (23,'en','hu','Angol');
INSERT INTO `wp_icl_languages_translations` VALUES (24,'en','hy','English');
INSERT INTO `wp_icl_languages_translations` VALUES (25,'en','id','English');
INSERT INTO `wp_icl_languages_translations` VALUES (26,'en','is','English');
INSERT INTO `wp_icl_languages_translations` VALUES (27,'en','it','Inglese');
INSERT INTO `wp_icl_languages_translations` VALUES (28,'en','ja','英語');
INSERT INTO `wp_icl_languages_translations` VALUES (29,'en','ko','영어');
INSERT INTO `wp_icl_languages_translations` VALUES (30,'en','ku','English');
INSERT INTO `wp_icl_languages_translations` VALUES (31,'en','lv','English');
INSERT INTO `wp_icl_languages_translations` VALUES (32,'en','lt','English');
INSERT INTO `wp_icl_languages_translations` VALUES (33,'en','mk','English');
INSERT INTO `wp_icl_languages_translations` VALUES (34,'en','mt','English');
INSERT INTO `wp_icl_languages_translations` VALUES (35,'en','mn','English');
INSERT INTO `wp_icl_languages_translations` VALUES (36,'en','ne','English');
INSERT INTO `wp_icl_languages_translations` VALUES (37,'en','nl','Engels');
INSERT INTO `wp_icl_languages_translations` VALUES (38,'en','no','Engelsk');
INSERT INTO `wp_icl_languages_translations` VALUES (39,'en','pa','English');
INSERT INTO `wp_icl_languages_translations` VALUES (40,'en','pl','Angielski');
INSERT INTO `wp_icl_languages_translations` VALUES (41,'en','pt-pt','Inglês');
INSERT INTO `wp_icl_languages_translations` VALUES (42,'en','pt-br','Inglês');
INSERT INTO `wp_icl_languages_translations` VALUES (43,'en','qu','English');
INSERT INTO `wp_icl_languages_translations` VALUES (44,'en','ro','Engleză');
INSERT INTO `wp_icl_languages_translations` VALUES (45,'en','ru','Английский');
INSERT INTO `wp_icl_languages_translations` VALUES (46,'en','sl','Angleščina');
INSERT INTO `wp_icl_languages_translations` VALUES (47,'en','so','English');
INSERT INTO `wp_icl_languages_translations` VALUES (48,'en','sq','English');
INSERT INTO `wp_icl_languages_translations` VALUES (49,'en','sr','енглески');
INSERT INTO `wp_icl_languages_translations` VALUES (50,'en','sv','Engelska');
INSERT INTO `wp_icl_languages_translations` VALUES (51,'en','ta','English');
INSERT INTO `wp_icl_languages_translations` VALUES (52,'en','th','อังกฤษ');
INSERT INTO `wp_icl_languages_translations` VALUES (53,'en','tr','İngilizce');
INSERT INTO `wp_icl_languages_translations` VALUES (54,'en','uk','English');
INSERT INTO `wp_icl_languages_translations` VALUES (55,'en','ur','English');
INSERT INTO `wp_icl_languages_translations` VALUES (56,'en','uz','English');
INSERT INTO `wp_icl_languages_translations` VALUES (57,'en','vi','English');
INSERT INTO `wp_icl_languages_translations` VALUES (58,'en','yi','English');
INSERT INTO `wp_icl_languages_translations` VALUES (59,'en','zh-hans','英语');
INSERT INTO `wp_icl_languages_translations` VALUES (60,'en','zu','English');
INSERT INTO `wp_icl_languages_translations` VALUES (61,'en','zh-hant','英語');
INSERT INTO `wp_icl_languages_translations` VALUES (62,'en','ms','English');
INSERT INTO `wp_icl_languages_translations` VALUES (63,'en','gl','English');
INSERT INTO `wp_icl_languages_translations` VALUES (64,'en','bn','English');
INSERT INTO `wp_icl_languages_translations` VALUES (65,'en','az','Ingilis');
INSERT INTO `wp_icl_languages_translations` VALUES (66,'es','en','Spanish');
INSERT INTO `wp_icl_languages_translations` VALUES (67,'es','es','Español');
INSERT INTO `wp_icl_languages_translations` VALUES (68,'es','de','Spanisch');
INSERT INTO `wp_icl_languages_translations` VALUES (69,'es','fr','Espagnol');
INSERT INTO `wp_icl_languages_translations` VALUES (70,'es','ar','الأسبانية');
INSERT INTO `wp_icl_languages_translations` VALUES (71,'es','bs','Spanish');
INSERT INTO `wp_icl_languages_translations` VALUES (72,'es','bg','Испански');
INSERT INTO `wp_icl_languages_translations` VALUES (73,'es','ca','Spanish');
INSERT INTO `wp_icl_languages_translations` VALUES (74,'es','cs','Španělský');
INSERT INTO `wp_icl_languages_translations` VALUES (75,'es','sk','Španielčina');
INSERT INTO `wp_icl_languages_translations` VALUES (76,'es','cy','Spanish');
INSERT INTO `wp_icl_languages_translations` VALUES (77,'es','da','Spanish');
INSERT INTO `wp_icl_languages_translations` VALUES (78,'es','el','Ισπανικά');
INSERT INTO `wp_icl_languages_translations` VALUES (79,'es','eo','Spanish');
INSERT INTO `wp_icl_languages_translations` VALUES (80,'es','et','Spanish');
INSERT INTO `wp_icl_languages_translations` VALUES (81,'es','eu','Spanish');
INSERT INTO `wp_icl_languages_translations` VALUES (82,'es','fa','Spanish');
INSERT INTO `wp_icl_languages_translations` VALUES (83,'es','fi','Espanja');
INSERT INTO `wp_icl_languages_translations` VALUES (84,'es','ga','Spanish');
INSERT INTO `wp_icl_languages_translations` VALUES (85,'es','he','ספרדית');
INSERT INTO `wp_icl_languages_translations` VALUES (86,'es','hi','Spanish');
INSERT INTO `wp_icl_languages_translations` VALUES (87,'es','hr','španjolski');
INSERT INTO `wp_icl_languages_translations` VALUES (88,'es','hu','Spanyol');
INSERT INTO `wp_icl_languages_translations` VALUES (89,'es','hy','Spanish');
INSERT INTO `wp_icl_languages_translations` VALUES (90,'es','id','Spanish');
INSERT INTO `wp_icl_languages_translations` VALUES (91,'es','is','Spanish');
INSERT INTO `wp_icl_languages_translations` VALUES (92,'es','it','Spagnolo');
INSERT INTO `wp_icl_languages_translations` VALUES (93,'es','ja','スペイン語');
INSERT INTO `wp_icl_languages_translations` VALUES (94,'es','ko','스페인어');
INSERT INTO `wp_icl_languages_translations` VALUES (95,'es','ku','Spanish');
INSERT INTO `wp_icl_languages_translations` VALUES (96,'es','lv','Spanish');
INSERT INTO `wp_icl_languages_translations` VALUES (97,'es','lt','Spanish');
INSERT INTO `wp_icl_languages_translations` VALUES (98,'es','mk','Spanish');
INSERT INTO `wp_icl_languages_translations` VALUES (99,'es','mt','Spanish');
INSERT INTO `wp_icl_languages_translations` VALUES (100,'es','mn','Spanish');
INSERT INTO `wp_icl_languages_translations` VALUES (101,'es','ne','Spanish');
INSERT INTO `wp_icl_languages_translations` VALUES (102,'es','nl','Spaans');
INSERT INTO `wp_icl_languages_translations` VALUES (103,'es','no','Spansk');
INSERT INTO `wp_icl_languages_translations` VALUES (104,'es','pa','Spanish');
INSERT INTO `wp_icl_languages_translations` VALUES (105,'es','pl','Hiszpański');
INSERT INTO `wp_icl_languages_translations` VALUES (106,'es','pt-pt','Espanhol');
INSERT INTO `wp_icl_languages_translations` VALUES (107,'es','pt-br','Espanhol');
INSERT INTO `wp_icl_languages_translations` VALUES (108,'es','qu','Spanish');
INSERT INTO `wp_icl_languages_translations` VALUES (109,'es','ro','Spaniolă');
INSERT INTO `wp_icl_languages_translations` VALUES (110,'es','ru','Испанский');
INSERT INTO `wp_icl_languages_translations` VALUES (111,'es','sl','Španščina');
INSERT INTO `wp_icl_languages_translations` VALUES (112,'es','so','Spanish');
INSERT INTO `wp_icl_languages_translations` VALUES (113,'es','sq','Spanish');
INSERT INTO `wp_icl_languages_translations` VALUES (114,'es','sr','шпански');
INSERT INTO `wp_icl_languages_translations` VALUES (115,'es','sv','Spanska');
INSERT INTO `wp_icl_languages_translations` VALUES (116,'es','ta','Spanish');
INSERT INTO `wp_icl_languages_translations` VALUES (117,'es','th','สเปน');
INSERT INTO `wp_icl_languages_translations` VALUES (118,'es','tr','İspanyolca');
INSERT INTO `wp_icl_languages_translations` VALUES (119,'es','uk','Spanish');
INSERT INTO `wp_icl_languages_translations` VALUES (120,'es','ur','Spanish');
INSERT INTO `wp_icl_languages_translations` VALUES (121,'es','uz','Spanish');
INSERT INTO `wp_icl_languages_translations` VALUES (122,'es','vi','Spanish');
INSERT INTO `wp_icl_languages_translations` VALUES (123,'es','yi','Spanish');
INSERT INTO `wp_icl_languages_translations` VALUES (124,'es','zh-hans','西班牙语');
INSERT INTO `wp_icl_languages_translations` VALUES (125,'es','zu','Spanish');
INSERT INTO `wp_icl_languages_translations` VALUES (126,'es','zh-hant','西班牙語');
INSERT INTO `wp_icl_languages_translations` VALUES (127,'es','ms','Spanish');
INSERT INTO `wp_icl_languages_translations` VALUES (128,'es','gl','Spanish');
INSERT INTO `wp_icl_languages_translations` VALUES (129,'es','bn','Spanish');
INSERT INTO `wp_icl_languages_translations` VALUES (130,'es','az','Spanish');
INSERT INTO `wp_icl_languages_translations` VALUES (131,'de','en','German');
INSERT INTO `wp_icl_languages_translations` VALUES (132,'de','es','Alemán');
INSERT INTO `wp_icl_languages_translations` VALUES (133,'de','de','Deutsch');
INSERT INTO `wp_icl_languages_translations` VALUES (134,'de','fr','Allemand');
INSERT INTO `wp_icl_languages_translations` VALUES (135,'de','ar','الألمانية');
INSERT INTO `wp_icl_languages_translations` VALUES (136,'de','bs','German');
INSERT INTO `wp_icl_languages_translations` VALUES (137,'de','bg','Немски');
INSERT INTO `wp_icl_languages_translations` VALUES (138,'de','ca','German');
INSERT INTO `wp_icl_languages_translations` VALUES (139,'de','cs','Němec');
INSERT INTO `wp_icl_languages_translations` VALUES (140,'de','sk','Nemčina');
INSERT INTO `wp_icl_languages_translations` VALUES (141,'de','cy','German');
INSERT INTO `wp_icl_languages_translations` VALUES (142,'de','da','German');
INSERT INTO `wp_icl_languages_translations` VALUES (143,'de','el','Γερμανικά');
INSERT INTO `wp_icl_languages_translations` VALUES (144,'de','eo','German');
INSERT INTO `wp_icl_languages_translations` VALUES (145,'de','et','German');
INSERT INTO `wp_icl_languages_translations` VALUES (146,'de','eu','German');
INSERT INTO `wp_icl_languages_translations` VALUES (147,'de','fa','German');
INSERT INTO `wp_icl_languages_translations` VALUES (148,'de','fi','Saksa');
INSERT INTO `wp_icl_languages_translations` VALUES (149,'de','ga','German');
INSERT INTO `wp_icl_languages_translations` VALUES (150,'de','he','גרמנית');
INSERT INTO `wp_icl_languages_translations` VALUES (151,'de','hi','German');
INSERT INTO `wp_icl_languages_translations` VALUES (152,'de','hr','Njemački');
INSERT INTO `wp_icl_languages_translations` VALUES (153,'de','hu','Német');
INSERT INTO `wp_icl_languages_translations` VALUES (154,'de','hy','German');
INSERT INTO `wp_icl_languages_translations` VALUES (155,'de','id','German');
INSERT INTO `wp_icl_languages_translations` VALUES (156,'de','is','German');
INSERT INTO `wp_icl_languages_translations` VALUES (157,'de','it','Tedesco');
INSERT INTO `wp_icl_languages_translations` VALUES (158,'de','ja','ドイツ語');
INSERT INTO `wp_icl_languages_translations` VALUES (159,'de','ko','독어');
INSERT INTO `wp_icl_languages_translations` VALUES (160,'de','ku','German');
INSERT INTO `wp_icl_languages_translations` VALUES (161,'de','lv','German');
INSERT INTO `wp_icl_languages_translations` VALUES (162,'de','lt','German');
INSERT INTO `wp_icl_languages_translations` VALUES (163,'de','mk','German');
INSERT INTO `wp_icl_languages_translations` VALUES (164,'de','mt','German');
INSERT INTO `wp_icl_languages_translations` VALUES (165,'de','mn','German');
INSERT INTO `wp_icl_languages_translations` VALUES (166,'de','ne','German');
INSERT INTO `wp_icl_languages_translations` VALUES (167,'de','nl','Duits');
INSERT INTO `wp_icl_languages_translations` VALUES (168,'de','no','Tysk');
INSERT INTO `wp_icl_languages_translations` VALUES (169,'de','pa','German');
INSERT INTO `wp_icl_languages_translations` VALUES (170,'de','pl','Niemiecki');
INSERT INTO `wp_icl_languages_translations` VALUES (171,'de','pt-pt','Alemão');
INSERT INTO `wp_icl_languages_translations` VALUES (172,'de','pt-br','Alemão');
INSERT INTO `wp_icl_languages_translations` VALUES (173,'de','qu','German');
INSERT INTO `wp_icl_languages_translations` VALUES (174,'de','ro','Germană');
INSERT INTO `wp_icl_languages_translations` VALUES (175,'de','ru','Немецкий');
INSERT INTO `wp_icl_languages_translations` VALUES (176,'de','sl','Nemščina');
INSERT INTO `wp_icl_languages_translations` VALUES (177,'de','so','German');
INSERT INTO `wp_icl_languages_translations` VALUES (178,'de','sq','German');
INSERT INTO `wp_icl_languages_translations` VALUES (179,'de','sr','немачки');
INSERT INTO `wp_icl_languages_translations` VALUES (180,'de','sv','Tyska');
INSERT INTO `wp_icl_languages_translations` VALUES (181,'de','ta','German');
INSERT INTO `wp_icl_languages_translations` VALUES (182,'de','th','เยอรมัน');
INSERT INTO `wp_icl_languages_translations` VALUES (183,'de','tr','Almanca');
INSERT INTO `wp_icl_languages_translations` VALUES (184,'de','uk','German');
INSERT INTO `wp_icl_languages_translations` VALUES (185,'de','ur','German');
INSERT INTO `wp_icl_languages_translations` VALUES (186,'de','uz','German');
INSERT INTO `wp_icl_languages_translations` VALUES (187,'de','vi','German');
INSERT INTO `wp_icl_languages_translations` VALUES (188,'de','yi','German');
INSERT INTO `wp_icl_languages_translations` VALUES (189,'de','zh-hans','德语');
INSERT INTO `wp_icl_languages_translations` VALUES (190,'de','zu','German');
INSERT INTO `wp_icl_languages_translations` VALUES (191,'de','zh-hant','德語');
INSERT INTO `wp_icl_languages_translations` VALUES (192,'de','ms','German');
INSERT INTO `wp_icl_languages_translations` VALUES (193,'de','gl','German');
INSERT INTO `wp_icl_languages_translations` VALUES (194,'de','bn','German');
INSERT INTO `wp_icl_languages_translations` VALUES (195,'de','az','German');
INSERT INTO `wp_icl_languages_translations` VALUES (196,'fr','en','French');
INSERT INTO `wp_icl_languages_translations` VALUES (197,'fr','es','Francés');
INSERT INTO `wp_icl_languages_translations` VALUES (198,'fr','de','Französisch');
INSERT INTO `wp_icl_languages_translations` VALUES (199,'fr','fr','Français');
INSERT INTO `wp_icl_languages_translations` VALUES (200,'fr','ar','الفرنسية');
INSERT INTO `wp_icl_languages_translations` VALUES (201,'fr','bs','French');
INSERT INTO `wp_icl_languages_translations` VALUES (202,'fr','bg','Френски');
INSERT INTO `wp_icl_languages_translations` VALUES (203,'fr','ca','French');
INSERT INTO `wp_icl_languages_translations` VALUES (204,'fr','cs','Francouzština');
INSERT INTO `wp_icl_languages_translations` VALUES (205,'fr','sk','Francúzština');
INSERT INTO `wp_icl_languages_translations` VALUES (206,'fr','cy','French');
INSERT INTO `wp_icl_languages_translations` VALUES (207,'fr','da','French');
INSERT INTO `wp_icl_languages_translations` VALUES (208,'fr','el','Γαλλικά');
INSERT INTO `wp_icl_languages_translations` VALUES (209,'fr','eo','French');
INSERT INTO `wp_icl_languages_translations` VALUES (210,'fr','et','French');
INSERT INTO `wp_icl_languages_translations` VALUES (211,'fr','eu','French');
INSERT INTO `wp_icl_languages_translations` VALUES (212,'fr','fa','French');
INSERT INTO `wp_icl_languages_translations` VALUES (213,'fr','fi','Ranska');
INSERT INTO `wp_icl_languages_translations` VALUES (214,'fr','ga','French');
INSERT INTO `wp_icl_languages_translations` VALUES (215,'fr','he','צרפתית');
INSERT INTO `wp_icl_languages_translations` VALUES (216,'fr','hi','French');
INSERT INTO `wp_icl_languages_translations` VALUES (217,'fr','hr','Francuski');
INSERT INTO `wp_icl_languages_translations` VALUES (218,'fr','hu','Francia');
INSERT INTO `wp_icl_languages_translations` VALUES (219,'fr','hy','French');
INSERT INTO `wp_icl_languages_translations` VALUES (220,'fr','id','French');
INSERT INTO `wp_icl_languages_translations` VALUES (221,'fr','is','French');
INSERT INTO `wp_icl_languages_translations` VALUES (222,'fr','it','Francese');
INSERT INTO `wp_icl_languages_translations` VALUES (223,'fr','ja','フランス語');
INSERT INTO `wp_icl_languages_translations` VALUES (224,'fr','ko','불어');
INSERT INTO `wp_icl_languages_translations` VALUES (225,'fr','ku','French');
INSERT INTO `wp_icl_languages_translations` VALUES (226,'fr','lv','French');
INSERT INTO `wp_icl_languages_translations` VALUES (227,'fr','lt','French');
INSERT INTO `wp_icl_languages_translations` VALUES (228,'fr','mk','French');
INSERT INTO `wp_icl_languages_translations` VALUES (229,'fr','mt','French');
INSERT INTO `wp_icl_languages_translations` VALUES (230,'fr','mn','French');
INSERT INTO `wp_icl_languages_translations` VALUES (231,'fr','ne','French');
INSERT INTO `wp_icl_languages_translations` VALUES (232,'fr','nl','Frans');
INSERT INTO `wp_icl_languages_translations` VALUES (233,'fr','no','Fransk');
INSERT INTO `wp_icl_languages_translations` VALUES (234,'fr','pa','French');
INSERT INTO `wp_icl_languages_translations` VALUES (235,'fr','pl','Francuski');
INSERT INTO `wp_icl_languages_translations` VALUES (236,'fr','pt-pt','Francês');
INSERT INTO `wp_icl_languages_translations` VALUES (237,'fr','pt-br','Francês');
INSERT INTO `wp_icl_languages_translations` VALUES (238,'fr','qu','French');
INSERT INTO `wp_icl_languages_translations` VALUES (239,'fr','ro','Franceză');
INSERT INTO `wp_icl_languages_translations` VALUES (240,'fr','ru','Французский');
INSERT INTO `wp_icl_languages_translations` VALUES (241,'fr','sl','Francoščina');
INSERT INTO `wp_icl_languages_translations` VALUES (242,'fr','so','French');
INSERT INTO `wp_icl_languages_translations` VALUES (243,'fr','sq','French');
INSERT INTO `wp_icl_languages_translations` VALUES (244,'fr','sr','француски');
INSERT INTO `wp_icl_languages_translations` VALUES (245,'fr','sv','Franska');
INSERT INTO `wp_icl_languages_translations` VALUES (246,'fr','ta','French');
INSERT INTO `wp_icl_languages_translations` VALUES (247,'fr','th','ฝรั่งเศส');
INSERT INTO `wp_icl_languages_translations` VALUES (248,'fr','tr','Fransızca');
INSERT INTO `wp_icl_languages_translations` VALUES (249,'fr','uk','French');
INSERT INTO `wp_icl_languages_translations` VALUES (250,'fr','ur','French');
INSERT INTO `wp_icl_languages_translations` VALUES (251,'fr','uz','French');
INSERT INTO `wp_icl_languages_translations` VALUES (252,'fr','vi','French');
INSERT INTO `wp_icl_languages_translations` VALUES (253,'fr','yi','French');
INSERT INTO `wp_icl_languages_translations` VALUES (254,'fr','zh-hans','法语');
INSERT INTO `wp_icl_languages_translations` VALUES (255,'fr','zu','French');
INSERT INTO `wp_icl_languages_translations` VALUES (256,'fr','zh-hant','法語');
INSERT INTO `wp_icl_languages_translations` VALUES (257,'fr','ms','French');
INSERT INTO `wp_icl_languages_translations` VALUES (258,'fr','gl','French');
INSERT INTO `wp_icl_languages_translations` VALUES (259,'fr','bn','French');
INSERT INTO `wp_icl_languages_translations` VALUES (260,'fr','az','French');
INSERT INTO `wp_icl_languages_translations` VALUES (261,'ar','en','Arabic');
INSERT INTO `wp_icl_languages_translations` VALUES (262,'ar','es','Árabe');
INSERT INTO `wp_icl_languages_translations` VALUES (263,'ar','de','Arabisch');
INSERT INTO `wp_icl_languages_translations` VALUES (264,'ar','fr','Arabe');
INSERT INTO `wp_icl_languages_translations` VALUES (265,'ar','ar','العربية');
INSERT INTO `wp_icl_languages_translations` VALUES (266,'ar','bs','Arabic');
INSERT INTO `wp_icl_languages_translations` VALUES (267,'ar','bg','Арабски');
INSERT INTO `wp_icl_languages_translations` VALUES (268,'ar','ca','Arabic');
INSERT INTO `wp_icl_languages_translations` VALUES (269,'ar','cs','Arabština');
INSERT INTO `wp_icl_languages_translations` VALUES (270,'ar','sk','Arabčina');
INSERT INTO `wp_icl_languages_translations` VALUES (271,'ar','cy','Arabic');
INSERT INTO `wp_icl_languages_translations` VALUES (272,'ar','da','Arabic');
INSERT INTO `wp_icl_languages_translations` VALUES (273,'ar','el','Αραβικά');
INSERT INTO `wp_icl_languages_translations` VALUES (274,'ar','eo','Arabic');
INSERT INTO `wp_icl_languages_translations` VALUES (275,'ar','et','Arabic');
INSERT INTO `wp_icl_languages_translations` VALUES (276,'ar','eu','Arabic');
INSERT INTO `wp_icl_languages_translations` VALUES (277,'ar','fa','Arabic');
INSERT INTO `wp_icl_languages_translations` VALUES (278,'ar','fi','Arabia');
INSERT INTO `wp_icl_languages_translations` VALUES (279,'ar','ga','Arabic');
INSERT INTO `wp_icl_languages_translations` VALUES (280,'ar','he','ערבית');
INSERT INTO `wp_icl_languages_translations` VALUES (281,'ar','hi','Arabic');
INSERT INTO `wp_icl_languages_translations` VALUES (282,'ar','hr','Arapski');
INSERT INTO `wp_icl_languages_translations` VALUES (283,'ar','hu','Arab');
INSERT INTO `wp_icl_languages_translations` VALUES (284,'ar','hy','Arabic');
INSERT INTO `wp_icl_languages_translations` VALUES (285,'ar','id','Arabic');
INSERT INTO `wp_icl_languages_translations` VALUES (286,'ar','is','Arabic');
INSERT INTO `wp_icl_languages_translations` VALUES (287,'ar','it','Arabo');
INSERT INTO `wp_icl_languages_translations` VALUES (288,'ar','ja','アラビア語');
INSERT INTO `wp_icl_languages_translations` VALUES (289,'ar','ko','아랍어');
INSERT INTO `wp_icl_languages_translations` VALUES (290,'ar','ku','Arabic');
INSERT INTO `wp_icl_languages_translations` VALUES (291,'ar','lv','Arabic');
INSERT INTO `wp_icl_languages_translations` VALUES (292,'ar','lt','Arabic');
INSERT INTO `wp_icl_languages_translations` VALUES (293,'ar','mk','Arabic');
INSERT INTO `wp_icl_languages_translations` VALUES (294,'ar','mt','Arabic');
INSERT INTO `wp_icl_languages_translations` VALUES (295,'ar','mn','Arabic');
INSERT INTO `wp_icl_languages_translations` VALUES (296,'ar','ne','Arabic');
INSERT INTO `wp_icl_languages_translations` VALUES (297,'ar','nl','Arabisch');
INSERT INTO `wp_icl_languages_translations` VALUES (298,'ar','no','Arabisk');
INSERT INTO `wp_icl_languages_translations` VALUES (299,'ar','pa','Arabic');
INSERT INTO `wp_icl_languages_translations` VALUES (300,'ar','pl','Arabski');
INSERT INTO `wp_icl_languages_translations` VALUES (301,'ar','pt-pt','Árabe');
INSERT INTO `wp_icl_languages_translations` VALUES (302,'ar','pt-br','Árabe');
INSERT INTO `wp_icl_languages_translations` VALUES (303,'ar','qu','Arabic');
INSERT INTO `wp_icl_languages_translations` VALUES (304,'ar','ro','Arabică');
INSERT INTO `wp_icl_languages_translations` VALUES (305,'ar','ru','Арабский');
INSERT INTO `wp_icl_languages_translations` VALUES (306,'ar','sl','Arabščina');
INSERT INTO `wp_icl_languages_translations` VALUES (307,'ar','so','Arabic');
INSERT INTO `wp_icl_languages_translations` VALUES (308,'ar','sq','Arabic');
INSERT INTO `wp_icl_languages_translations` VALUES (309,'ar','sr','арапски');
INSERT INTO `wp_icl_languages_translations` VALUES (310,'ar','sv','Arabiska');
INSERT INTO `wp_icl_languages_translations` VALUES (311,'ar','ta','Arabic');
INSERT INTO `wp_icl_languages_translations` VALUES (312,'ar','th','อารบิก');
INSERT INTO `wp_icl_languages_translations` VALUES (313,'ar','tr','Arapça');
INSERT INTO `wp_icl_languages_translations` VALUES (314,'ar','uk','Arabic');
INSERT INTO `wp_icl_languages_translations` VALUES (315,'ar','ur','Arabic');
INSERT INTO `wp_icl_languages_translations` VALUES (316,'ar','uz','Arabic');
INSERT INTO `wp_icl_languages_translations` VALUES (317,'ar','vi','Arabic');
INSERT INTO `wp_icl_languages_translations` VALUES (318,'ar','yi','Arabic');
INSERT INTO `wp_icl_languages_translations` VALUES (319,'ar','zh-hans','阿拉伯语');
INSERT INTO `wp_icl_languages_translations` VALUES (320,'ar','zu','Arabic');
INSERT INTO `wp_icl_languages_translations` VALUES (321,'ar','zh-hant','阿拉伯語');
INSERT INTO `wp_icl_languages_translations` VALUES (322,'ar','ms','Arabic');
INSERT INTO `wp_icl_languages_translations` VALUES (323,'ar','gl','Arabic');
INSERT INTO `wp_icl_languages_translations` VALUES (324,'ar','bn','Arabic');
INSERT INTO `wp_icl_languages_translations` VALUES (325,'ar','az','Arabic');
INSERT INTO `wp_icl_languages_translations` VALUES (326,'bs','en','Bosnian');
INSERT INTO `wp_icl_languages_translations` VALUES (327,'bs','es','Bosnio');
INSERT INTO `wp_icl_languages_translations` VALUES (328,'bs','de','Bosnisch');
INSERT INTO `wp_icl_languages_translations` VALUES (329,'bs','fr','Bosnien');
INSERT INTO `wp_icl_languages_translations` VALUES (330,'bs','ar','البوسنية');
INSERT INTO `wp_icl_languages_translations` VALUES (331,'bs','bs','Bosnian');
INSERT INTO `wp_icl_languages_translations` VALUES (332,'bs','bg','Босненски');
INSERT INTO `wp_icl_languages_translations` VALUES (333,'bs','ca','Bosnian');
INSERT INTO `wp_icl_languages_translations` VALUES (334,'bs','cs','Bosenština');
INSERT INTO `wp_icl_languages_translations` VALUES (335,'bs','sk','Bosniačtina');
INSERT INTO `wp_icl_languages_translations` VALUES (336,'bs','cy','Bosnian');
INSERT INTO `wp_icl_languages_translations` VALUES (337,'bs','da','Bosnian');
INSERT INTO `wp_icl_languages_translations` VALUES (338,'bs','el','Βοσνιακά');
INSERT INTO `wp_icl_languages_translations` VALUES (339,'bs','eo','Bosnian');
INSERT INTO `wp_icl_languages_translations` VALUES (340,'bs','et','Bosnian');
INSERT INTO `wp_icl_languages_translations` VALUES (341,'bs','eu','Bosnian');
INSERT INTO `wp_icl_languages_translations` VALUES (342,'bs','fa','Bosnian');
INSERT INTO `wp_icl_languages_translations` VALUES (343,'bs','fi','Bosnia');
INSERT INTO `wp_icl_languages_translations` VALUES (344,'bs','ga','Bosnian');
INSERT INTO `wp_icl_languages_translations` VALUES (345,'bs','he','בוסנית');
INSERT INTO `wp_icl_languages_translations` VALUES (346,'bs','hi','Bosnian');
INSERT INTO `wp_icl_languages_translations` VALUES (347,'bs','hr','Bosanski');
INSERT INTO `wp_icl_languages_translations` VALUES (348,'bs','hu','Bosnyák');
INSERT INTO `wp_icl_languages_translations` VALUES (349,'bs','hy','Bosnian');
INSERT INTO `wp_icl_languages_translations` VALUES (350,'bs','id','Bosnian');
INSERT INTO `wp_icl_languages_translations` VALUES (351,'bs','is','Bosnian');
INSERT INTO `wp_icl_languages_translations` VALUES (352,'bs','it','Bosniaco');
INSERT INTO `wp_icl_languages_translations` VALUES (353,'bs','ja','ボスニア語');
INSERT INTO `wp_icl_languages_translations` VALUES (354,'bs','ko','보즈니아어');
INSERT INTO `wp_icl_languages_translations` VALUES (355,'bs','ku','Bosnian');
INSERT INTO `wp_icl_languages_translations` VALUES (356,'bs','lv','Bosnian');
INSERT INTO `wp_icl_languages_translations` VALUES (357,'bs','lt','Bosnian');
INSERT INTO `wp_icl_languages_translations` VALUES (358,'bs','mk','Bosnian');
INSERT INTO `wp_icl_languages_translations` VALUES (359,'bs','mt','Bosnian');
INSERT INTO `wp_icl_languages_translations` VALUES (360,'bs','mn','Bosnian');
INSERT INTO `wp_icl_languages_translations` VALUES (361,'bs','ne','Bosnian');
INSERT INTO `wp_icl_languages_translations` VALUES (362,'bs','nl','Bosnisch');
INSERT INTO `wp_icl_languages_translations` VALUES (363,'bs','no','Bosnisk');
INSERT INTO `wp_icl_languages_translations` VALUES (364,'bs','pa','Bosnian');
INSERT INTO `wp_icl_languages_translations` VALUES (365,'bs','pl','Bośniacki');
INSERT INTO `wp_icl_languages_translations` VALUES (366,'bs','pt-pt','Bósnio');
INSERT INTO `wp_icl_languages_translations` VALUES (367,'bs','pt-br','Bósnio');
INSERT INTO `wp_icl_languages_translations` VALUES (368,'bs','qu','Bosnian');
INSERT INTO `wp_icl_languages_translations` VALUES (369,'bs','ro','Bosniacă');
INSERT INTO `wp_icl_languages_translations` VALUES (370,'bs','ru','Боснийский');
INSERT INTO `wp_icl_languages_translations` VALUES (371,'bs','sl','Bosanski');
INSERT INTO `wp_icl_languages_translations` VALUES (372,'bs','so','Bosnian');
INSERT INTO `wp_icl_languages_translations` VALUES (373,'bs','sq','Bosnian');
INSERT INTO `wp_icl_languages_translations` VALUES (374,'bs','sr','босански');
INSERT INTO `wp_icl_languages_translations` VALUES (375,'bs','sv','Bosniska');
INSERT INTO `wp_icl_languages_translations` VALUES (376,'bs','ta','Bosnian');
INSERT INTO `wp_icl_languages_translations` VALUES (377,'bs','th','บอสเนียน');
INSERT INTO `wp_icl_languages_translations` VALUES (378,'bs','tr','Boşnakça');
INSERT INTO `wp_icl_languages_translations` VALUES (379,'bs','uk','Bosnian');
INSERT INTO `wp_icl_languages_translations` VALUES (380,'bs','ur','Bosnian');
INSERT INTO `wp_icl_languages_translations` VALUES (381,'bs','uz','Bosnian');
INSERT INTO `wp_icl_languages_translations` VALUES (382,'bs','vi','Bosnian');
INSERT INTO `wp_icl_languages_translations` VALUES (383,'bs','yi','Bosnian');
INSERT INTO `wp_icl_languages_translations` VALUES (384,'bs','zh-hans','波斯尼亚语');
INSERT INTO `wp_icl_languages_translations` VALUES (385,'bs','zu','Bosnian');
INSERT INTO `wp_icl_languages_translations` VALUES (386,'bs','zh-hant','波士尼亞語');
INSERT INTO `wp_icl_languages_translations` VALUES (387,'bs','ms','Bosnian');
INSERT INTO `wp_icl_languages_translations` VALUES (388,'bs','gl','Bosnian');
INSERT INTO `wp_icl_languages_translations` VALUES (389,'bs','bn','Bosnian');
INSERT INTO `wp_icl_languages_translations` VALUES (390,'bs','az','Bosnian');
INSERT INTO `wp_icl_languages_translations` VALUES (391,'bg','en','Bulgarian');
INSERT INTO `wp_icl_languages_translations` VALUES (392,'bg','es','Búlgaro');
INSERT INTO `wp_icl_languages_translations` VALUES (393,'bg','de','Bulgarisch');
INSERT INTO `wp_icl_languages_translations` VALUES (394,'bg','fr','Bulgare');
INSERT INTO `wp_icl_languages_translations` VALUES (395,'bg','ar','البلغارية');
INSERT INTO `wp_icl_languages_translations` VALUES (396,'bg','bs','Bulgarian');
INSERT INTO `wp_icl_languages_translations` VALUES (397,'bg','bg','Български');
INSERT INTO `wp_icl_languages_translations` VALUES (398,'bg','ca','Bulgarian');
INSERT INTO `wp_icl_languages_translations` VALUES (399,'bg','cs','Bulharština');
INSERT INTO `wp_icl_languages_translations` VALUES (400,'bg','sk','Bulharčina');
INSERT INTO `wp_icl_languages_translations` VALUES (401,'bg','cy','Bulgarian');
INSERT INTO `wp_icl_languages_translations` VALUES (402,'bg','da','Bulgarian');
INSERT INTO `wp_icl_languages_translations` VALUES (403,'bg','el','Βουλγαρικά');
INSERT INTO `wp_icl_languages_translations` VALUES (404,'bg','eo','Bulgarian');
INSERT INTO `wp_icl_languages_translations` VALUES (405,'bg','et','Bulgarian');
INSERT INTO `wp_icl_languages_translations` VALUES (406,'bg','eu','Bulgarian');
INSERT INTO `wp_icl_languages_translations` VALUES (407,'bg','fa','Bulgarian');
INSERT INTO `wp_icl_languages_translations` VALUES (408,'bg','fi','Bulgaria');
INSERT INTO `wp_icl_languages_translations` VALUES (409,'bg','ga','Bulgarian');
INSERT INTO `wp_icl_languages_translations` VALUES (410,'bg','he','בולגרית');
INSERT INTO `wp_icl_languages_translations` VALUES (411,'bg','hi','Bulgarian');
INSERT INTO `wp_icl_languages_translations` VALUES (412,'bg','hr','Bugarski');
INSERT INTO `wp_icl_languages_translations` VALUES (413,'bg','hu','Bolgár');
INSERT INTO `wp_icl_languages_translations` VALUES (414,'bg','hy','Bulgarian');
INSERT INTO `wp_icl_languages_translations` VALUES (415,'bg','id','Bulgarian');
INSERT INTO `wp_icl_languages_translations` VALUES (416,'bg','is','Bulgarian');
INSERT INTO `wp_icl_languages_translations` VALUES (417,'bg','it','Bulgaro');
INSERT INTO `wp_icl_languages_translations` VALUES (418,'bg','ja','ブルガリア語');
INSERT INTO `wp_icl_languages_translations` VALUES (419,'bg','ko','불가리아어');
INSERT INTO `wp_icl_languages_translations` VALUES (420,'bg','ku','Bulgarian');
INSERT INTO `wp_icl_languages_translations` VALUES (421,'bg','lv','Bulgarian');
INSERT INTO `wp_icl_languages_translations` VALUES (422,'bg','lt','Bulgarian');
INSERT INTO `wp_icl_languages_translations` VALUES (423,'bg','mk','Bulgarian');
INSERT INTO `wp_icl_languages_translations` VALUES (424,'bg','mt','Bulgarian');
INSERT INTO `wp_icl_languages_translations` VALUES (425,'bg','mn','Bulgarian');
INSERT INTO `wp_icl_languages_translations` VALUES (426,'bg','ne','Bulgarian');
INSERT INTO `wp_icl_languages_translations` VALUES (427,'bg','nl','Bulgaars');
INSERT INTO `wp_icl_languages_translations` VALUES (428,'bg','no','Bulgarian');
INSERT INTO `wp_icl_languages_translations` VALUES (429,'bg','pa','Bulgarian');
INSERT INTO `wp_icl_languages_translations` VALUES (430,'bg','pl','Bułgarski');
INSERT INTO `wp_icl_languages_translations` VALUES (431,'bg','pt-pt','Búlgaro');
INSERT INTO `wp_icl_languages_translations` VALUES (432,'bg','pt-br','Búlgaro');
INSERT INTO `wp_icl_languages_translations` VALUES (433,'bg','qu','Bulgarian');
INSERT INTO `wp_icl_languages_translations` VALUES (434,'bg','ro','Bulgară');
INSERT INTO `wp_icl_languages_translations` VALUES (435,'bg','ru','Болгарский');
INSERT INTO `wp_icl_languages_translations` VALUES (436,'bg','sl','Bolgarščina');
INSERT INTO `wp_icl_languages_translations` VALUES (437,'bg','so','Bulgarian');
INSERT INTO `wp_icl_languages_translations` VALUES (438,'bg','sq','Bulgarian');
INSERT INTO `wp_icl_languages_translations` VALUES (439,'bg','sr','бугарски');
INSERT INTO `wp_icl_languages_translations` VALUES (440,'bg','sv','Bulgariska');
INSERT INTO `wp_icl_languages_translations` VALUES (441,'bg','ta','Bulgarian');
INSERT INTO `wp_icl_languages_translations` VALUES (442,'bg','th','บัลแกเรียน');
INSERT INTO `wp_icl_languages_translations` VALUES (443,'bg','tr','Bulgarca');
INSERT INTO `wp_icl_languages_translations` VALUES (444,'bg','uk','Bulgarian');
INSERT INTO `wp_icl_languages_translations` VALUES (445,'bg','ur','Bulgarian');
INSERT INTO `wp_icl_languages_translations` VALUES (446,'bg','uz','Bulgarian');
INSERT INTO `wp_icl_languages_translations` VALUES (447,'bg','vi','Bulgarian');
INSERT INTO `wp_icl_languages_translations` VALUES (448,'bg','yi','Bulgarian');
INSERT INTO `wp_icl_languages_translations` VALUES (449,'bg','zh-hans','保加利亚语');
INSERT INTO `wp_icl_languages_translations` VALUES (450,'bg','zu','Bulgarian');
INSERT INTO `wp_icl_languages_translations` VALUES (451,'bg','zh-hant','保加利亞語');
INSERT INTO `wp_icl_languages_translations` VALUES (452,'bg','ms','Bulgarian');
INSERT INTO `wp_icl_languages_translations` VALUES (453,'bg','gl','Bulgarian');
INSERT INTO `wp_icl_languages_translations` VALUES (454,'bg','bn','Bulgarian');
INSERT INTO `wp_icl_languages_translations` VALUES (455,'bg','az','Bulgarian');
INSERT INTO `wp_icl_languages_translations` VALUES (456,'ca','en','Catalan');
INSERT INTO `wp_icl_languages_translations` VALUES (457,'ca','es','Catalán');
INSERT INTO `wp_icl_languages_translations` VALUES (458,'ca','de','Katalanisch');
INSERT INTO `wp_icl_languages_translations` VALUES (459,'ca','fr','Catalan');
INSERT INTO `wp_icl_languages_translations` VALUES (460,'ca','ar','الكاتالوينية');
INSERT INTO `wp_icl_languages_translations` VALUES (461,'ca','bs','Catalan');
INSERT INTO `wp_icl_languages_translations` VALUES (462,'ca','bg','Каталонски');
INSERT INTO `wp_icl_languages_translations` VALUES (463,'ca','ca','Català');
INSERT INTO `wp_icl_languages_translations` VALUES (464,'ca','cs','Katalánština');
INSERT INTO `wp_icl_languages_translations` VALUES (465,'ca','sk','Katalánčina');
INSERT INTO `wp_icl_languages_translations` VALUES (466,'ca','cy','Catalan');
INSERT INTO `wp_icl_languages_translations` VALUES (467,'ca','da','Catalan');
INSERT INTO `wp_icl_languages_translations` VALUES (468,'ca','el','Καταλανικά');
INSERT INTO `wp_icl_languages_translations` VALUES (469,'ca','eo','Catalan');
INSERT INTO `wp_icl_languages_translations` VALUES (470,'ca','et','Catalan');
INSERT INTO `wp_icl_languages_translations` VALUES (471,'ca','eu','Catalan');
INSERT INTO `wp_icl_languages_translations` VALUES (472,'ca','fa','Catalan');
INSERT INTO `wp_icl_languages_translations` VALUES (473,'ca','fi','Katalaani');
INSERT INTO `wp_icl_languages_translations` VALUES (474,'ca','ga','Catalan');
INSERT INTO `wp_icl_languages_translations` VALUES (475,'ca','he','קטלאנית');
INSERT INTO `wp_icl_languages_translations` VALUES (476,'ca','hi','Catalan');
INSERT INTO `wp_icl_languages_translations` VALUES (477,'ca','hr','Katalonski');
INSERT INTO `wp_icl_languages_translations` VALUES (478,'ca','hu','Katalán');
INSERT INTO `wp_icl_languages_translations` VALUES (479,'ca','hy','Catalan');
INSERT INTO `wp_icl_languages_translations` VALUES (480,'ca','id','Catalan');
INSERT INTO `wp_icl_languages_translations` VALUES (481,'ca','is','Catalan');
INSERT INTO `wp_icl_languages_translations` VALUES (482,'ca','it','Catalano');
INSERT INTO `wp_icl_languages_translations` VALUES (483,'ca','ja','カタルーニャ語');
INSERT INTO `wp_icl_languages_translations` VALUES (484,'ca','ko','카탈로니아어');
INSERT INTO `wp_icl_languages_translations` VALUES (485,'ca','ku','Catalan');
INSERT INTO `wp_icl_languages_translations` VALUES (486,'ca','lv','Catalan');
INSERT INTO `wp_icl_languages_translations` VALUES (487,'ca','lt','Catalan');
INSERT INTO `wp_icl_languages_translations` VALUES (488,'ca','mk','Catalan');
INSERT INTO `wp_icl_languages_translations` VALUES (489,'ca','mt','Catalan');
INSERT INTO `wp_icl_languages_translations` VALUES (490,'ca','mn','Catalan');
INSERT INTO `wp_icl_languages_translations` VALUES (491,'ca','ne','Catalan');
INSERT INTO `wp_icl_languages_translations` VALUES (492,'ca','nl','Catalaans');
INSERT INTO `wp_icl_languages_translations` VALUES (493,'ca','no','catalan');
INSERT INTO `wp_icl_languages_translations` VALUES (494,'ca','pa','Catalan');
INSERT INTO `wp_icl_languages_translations` VALUES (495,'ca','pl','Kataloński');
INSERT INTO `wp_icl_languages_translations` VALUES (496,'ca','pt-pt','Catalão');
INSERT INTO `wp_icl_languages_translations` VALUES (497,'ca','pt-br','Catalão');
INSERT INTO `wp_icl_languages_translations` VALUES (498,'ca','qu','Catalan');
INSERT INTO `wp_icl_languages_translations` VALUES (499,'ca','ro','Catalană');
INSERT INTO `wp_icl_languages_translations` VALUES (500,'ca','ru','Каталанский');
INSERT INTO `wp_icl_languages_translations` VALUES (501,'ca','sl','Katalonščina');
INSERT INTO `wp_icl_languages_translations` VALUES (502,'ca','so','Catalan');
INSERT INTO `wp_icl_languages_translations` VALUES (503,'ca','sq','Catalan');
INSERT INTO `wp_icl_languages_translations` VALUES (504,'ca','sr','каталонски');
INSERT INTO `wp_icl_languages_translations` VALUES (505,'ca','sv','Katalanska');
INSERT INTO `wp_icl_languages_translations` VALUES (506,'ca','ta','Catalan');
INSERT INTO `wp_icl_languages_translations` VALUES (507,'ca','th','คะตะลาน');
INSERT INTO `wp_icl_languages_translations` VALUES (508,'ca','tr','Katalan dili');
INSERT INTO `wp_icl_languages_translations` VALUES (509,'ca','uk','Catalan');
INSERT INTO `wp_icl_languages_translations` VALUES (510,'ca','ur','Catalan');
INSERT INTO `wp_icl_languages_translations` VALUES (511,'ca','uz','Catalan');
INSERT INTO `wp_icl_languages_translations` VALUES (512,'ca','vi','Catalan');
INSERT INTO `wp_icl_languages_translations` VALUES (513,'ca','yi','Catalan');
INSERT INTO `wp_icl_languages_translations` VALUES (514,'ca','zh-hans','加泰罗尼亚语');
INSERT INTO `wp_icl_languages_translations` VALUES (515,'ca','zu','Catalan');
INSERT INTO `wp_icl_languages_translations` VALUES (516,'ca','zh-hant','加泰羅尼亞語');
INSERT INTO `wp_icl_languages_translations` VALUES (517,'ca','ms','Catalan');
INSERT INTO `wp_icl_languages_translations` VALUES (518,'ca','gl','Catalan');
INSERT INTO `wp_icl_languages_translations` VALUES (519,'ca','bn','Catalan');
INSERT INTO `wp_icl_languages_translations` VALUES (520,'ca','az','Catalan');
INSERT INTO `wp_icl_languages_translations` VALUES (521,'cs','en','Czech');
INSERT INTO `wp_icl_languages_translations` VALUES (522,'cs','es','Checo');
INSERT INTO `wp_icl_languages_translations` VALUES (523,'cs','de','Tschechisch');
INSERT INTO `wp_icl_languages_translations` VALUES (524,'cs','fr','Tchèque');
INSERT INTO `wp_icl_languages_translations` VALUES (525,'cs','ar','التشيكية');
INSERT INTO `wp_icl_languages_translations` VALUES (526,'cs','bs','Czech');
INSERT INTO `wp_icl_languages_translations` VALUES (527,'cs','bg','Чешки');
INSERT INTO `wp_icl_languages_translations` VALUES (528,'cs','ca','Czech');
INSERT INTO `wp_icl_languages_translations` VALUES (529,'cs','cs','Čeština');
INSERT INTO `wp_icl_languages_translations` VALUES (530,'cs','sk','Čeština');
INSERT INTO `wp_icl_languages_translations` VALUES (531,'cs','cy','Czech');
INSERT INTO `wp_icl_languages_translations` VALUES (532,'cs','da','Czech');
INSERT INTO `wp_icl_languages_translations` VALUES (533,'cs','el','Τσεχικά');
INSERT INTO `wp_icl_languages_translations` VALUES (534,'cs','eo','Czech');
INSERT INTO `wp_icl_languages_translations` VALUES (535,'cs','et','Czech');
INSERT INTO `wp_icl_languages_translations` VALUES (536,'cs','eu','Czech');
INSERT INTO `wp_icl_languages_translations` VALUES (537,'cs','fa','Czech');
INSERT INTO `wp_icl_languages_translations` VALUES (538,'cs','fi','Tsekki');
INSERT INTO `wp_icl_languages_translations` VALUES (539,'cs','ga','Czech');
INSERT INTO `wp_icl_languages_translations` VALUES (540,'cs','he','צ\'כית');
INSERT INTO `wp_icl_languages_translations` VALUES (541,'cs','hi','Czech');
INSERT INTO `wp_icl_languages_translations` VALUES (542,'cs','hr','češki');
INSERT INTO `wp_icl_languages_translations` VALUES (543,'cs','hu','Cseh');
INSERT INTO `wp_icl_languages_translations` VALUES (544,'cs','hy','Czech');
INSERT INTO `wp_icl_languages_translations` VALUES (545,'cs','id','Czech');
INSERT INTO `wp_icl_languages_translations` VALUES (546,'cs','is','Czech');
INSERT INTO `wp_icl_languages_translations` VALUES (547,'cs','it','Ceco');
INSERT INTO `wp_icl_languages_translations` VALUES (548,'cs','ja','チェコ語');
INSERT INTO `wp_icl_languages_translations` VALUES (549,'cs','ko','체코슬로바키아어');
INSERT INTO `wp_icl_languages_translations` VALUES (550,'cs','ku','Czech');
INSERT INTO `wp_icl_languages_translations` VALUES (551,'cs','lv','Czech');
INSERT INTO `wp_icl_languages_translations` VALUES (552,'cs','lt','Czech');
INSERT INTO `wp_icl_languages_translations` VALUES (553,'cs','mk','Czech');
INSERT INTO `wp_icl_languages_translations` VALUES (554,'cs','mt','Czech');
INSERT INTO `wp_icl_languages_translations` VALUES (555,'cs','mn','Czech');
INSERT INTO `wp_icl_languages_translations` VALUES (556,'cs','ne','Czech');
INSERT INTO `wp_icl_languages_translations` VALUES (557,'cs','nl','Tsjechisch');
INSERT INTO `wp_icl_languages_translations` VALUES (558,'cs','no','Czech');
INSERT INTO `wp_icl_languages_translations` VALUES (559,'cs','pa','Czech');
INSERT INTO `wp_icl_languages_translations` VALUES (560,'cs','pl','Czeski');
INSERT INTO `wp_icl_languages_translations` VALUES (561,'cs','pt-pt','Tcheco');
INSERT INTO `wp_icl_languages_translations` VALUES (562,'cs','pt-br','Tcheco');
INSERT INTO `wp_icl_languages_translations` VALUES (563,'cs','qu','Czech');
INSERT INTO `wp_icl_languages_translations` VALUES (564,'cs','ro','Cehă');
INSERT INTO `wp_icl_languages_translations` VALUES (565,'cs','ru','Чешский');
INSERT INTO `wp_icl_languages_translations` VALUES (566,'cs','sl','Češčina');
INSERT INTO `wp_icl_languages_translations` VALUES (567,'cs','so','Czech');
INSERT INTO `wp_icl_languages_translations` VALUES (568,'cs','sq','Czech');
INSERT INTO `wp_icl_languages_translations` VALUES (569,'cs','sr','чешки');
INSERT INTO `wp_icl_languages_translations` VALUES (570,'cs','sv','Tjeckiska');
INSERT INTO `wp_icl_languages_translations` VALUES (571,'cs','ta','Czech');
INSERT INTO `wp_icl_languages_translations` VALUES (572,'cs','th','เช็ก');
INSERT INTO `wp_icl_languages_translations` VALUES (573,'cs','tr','Çekçe');
INSERT INTO `wp_icl_languages_translations` VALUES (574,'cs','uk','Czech');
INSERT INTO `wp_icl_languages_translations` VALUES (575,'cs','ur','Czech');
INSERT INTO `wp_icl_languages_translations` VALUES (576,'cs','uz','Czech');
INSERT INTO `wp_icl_languages_translations` VALUES (577,'cs','vi','Czech');
INSERT INTO `wp_icl_languages_translations` VALUES (578,'cs','yi','Czech');
INSERT INTO `wp_icl_languages_translations` VALUES (579,'cs','zh-hans','捷克语');
INSERT INTO `wp_icl_languages_translations` VALUES (580,'cs','zu','Czech');
INSERT INTO `wp_icl_languages_translations` VALUES (581,'cs','zh-hant','捷克語');
INSERT INTO `wp_icl_languages_translations` VALUES (582,'cs','ms','Czech');
INSERT INTO `wp_icl_languages_translations` VALUES (583,'cs','gl','Czech');
INSERT INTO `wp_icl_languages_translations` VALUES (584,'cs','bn','Czech');
INSERT INTO `wp_icl_languages_translations` VALUES (585,'cs','az','Czech');
INSERT INTO `wp_icl_languages_translations` VALUES (586,'sk','en','Slovak');
INSERT INTO `wp_icl_languages_translations` VALUES (587,'sk','es','Eslavo');
INSERT INTO `wp_icl_languages_translations` VALUES (588,'sk','de','Slowakisch');
INSERT INTO `wp_icl_languages_translations` VALUES (589,'sk','fr','Slave');
INSERT INTO `wp_icl_languages_translations` VALUES (590,'sk','ar','السلافية');
INSERT INTO `wp_icl_languages_translations` VALUES (591,'sk','bs','Slovak');
INSERT INTO `wp_icl_languages_translations` VALUES (592,'sk','bg','Словашки');
INSERT INTO `wp_icl_languages_translations` VALUES (593,'sk','ca','Slovak');
INSERT INTO `wp_icl_languages_translations` VALUES (594,'sk','cs','Slovenština');
INSERT INTO `wp_icl_languages_translations` VALUES (595,'sk','sk','Slovenčina');
INSERT INTO `wp_icl_languages_translations` VALUES (596,'sk','cy','Slovak');
INSERT INTO `wp_icl_languages_translations` VALUES (597,'sk','da','Slovak');
INSERT INTO `wp_icl_languages_translations` VALUES (598,'sk','el','Σλαβική');
INSERT INTO `wp_icl_languages_translations` VALUES (599,'sk','eo','Slovak');
INSERT INTO `wp_icl_languages_translations` VALUES (600,'sk','et','Slovak');
INSERT INTO `wp_icl_languages_translations` VALUES (601,'sk','eu','Slovak');
INSERT INTO `wp_icl_languages_translations` VALUES (602,'sk','fa','Slovak');
INSERT INTO `wp_icl_languages_translations` VALUES (603,'sk','fi','Slaavi');
INSERT INTO `wp_icl_languages_translations` VALUES (604,'sk','ga','Slovak');
INSERT INTO `wp_icl_languages_translations` VALUES (605,'sk','he','סלאבית');
INSERT INTO `wp_icl_languages_translations` VALUES (606,'sk','hi','Slovak');
INSERT INTO `wp_icl_languages_translations` VALUES (607,'sk','hr','Slovački');
INSERT INTO `wp_icl_languages_translations` VALUES (608,'sk','hu','Szlovák');
INSERT INTO `wp_icl_languages_translations` VALUES (609,'sk','hy','Slovak');
INSERT INTO `wp_icl_languages_translations` VALUES (610,'sk','id','Slovak');
INSERT INTO `wp_icl_languages_translations` VALUES (611,'sk','is','Slovak');
INSERT INTO `wp_icl_languages_translations` VALUES (612,'sk','it','Slavo');
INSERT INTO `wp_icl_languages_translations` VALUES (613,'sk','ja','スラヴ語派');
INSERT INTO `wp_icl_languages_translations` VALUES (614,'sk','ko','슬라브어');
INSERT INTO `wp_icl_languages_translations` VALUES (615,'sk','ku','Slovak');
INSERT INTO `wp_icl_languages_translations` VALUES (616,'sk','lv','Slovak');
INSERT INTO `wp_icl_languages_translations` VALUES (617,'sk','lt','Slovak');
INSERT INTO `wp_icl_languages_translations` VALUES (618,'sk','mk','Slovak');
INSERT INTO `wp_icl_languages_translations` VALUES (619,'sk','mt','Slovak');
INSERT INTO `wp_icl_languages_translations` VALUES (620,'sk','mn','Slovak');
INSERT INTO `wp_icl_languages_translations` VALUES (621,'sk','ne','Slovak');
INSERT INTO `wp_icl_languages_translations` VALUES (622,'sk','nl','Slavisch');
INSERT INTO `wp_icl_languages_translations` VALUES (623,'sk','no','Slovak');
INSERT INTO `wp_icl_languages_translations` VALUES (624,'sk','pa','Slovak');
INSERT INTO `wp_icl_languages_translations` VALUES (625,'sk','pl','Słowacki');
INSERT INTO `wp_icl_languages_translations` VALUES (626,'sk','pt-pt','Eslavo');
INSERT INTO `wp_icl_languages_translations` VALUES (627,'sk','pt-br','Eslavo');
INSERT INTO `wp_icl_languages_translations` VALUES (628,'sk','qu','Slovak');
INSERT INTO `wp_icl_languages_translations` VALUES (629,'sk','ro','Slavă');
INSERT INTO `wp_icl_languages_translations` VALUES (630,'sk','ru','Славянский');
INSERT INTO `wp_icl_languages_translations` VALUES (631,'sk','sl','Slovaščina');
INSERT INTO `wp_icl_languages_translations` VALUES (632,'sk','so','Slovak');
INSERT INTO `wp_icl_languages_translations` VALUES (633,'sk','sq','Slovak');
INSERT INTO `wp_icl_languages_translations` VALUES (634,'sk','sr','словачки');
INSERT INTO `wp_icl_languages_translations` VALUES (635,'sk','sv','Slavisk');
INSERT INTO `wp_icl_languages_translations` VALUES (636,'sk','ta','Slovak');
INSERT INTO `wp_icl_languages_translations` VALUES (637,'sk','th','สลาวิก');
INSERT INTO `wp_icl_languages_translations` VALUES (638,'sk','tr','Slav dili');
INSERT INTO `wp_icl_languages_translations` VALUES (639,'sk','uk','Slovak');
INSERT INTO `wp_icl_languages_translations` VALUES (640,'sk','ur','Slovak');
INSERT INTO `wp_icl_languages_translations` VALUES (641,'sk','uz','Slovak');
INSERT INTO `wp_icl_languages_translations` VALUES (642,'sk','vi','Slovak');
INSERT INTO `wp_icl_languages_translations` VALUES (643,'sk','yi','Slovak');
INSERT INTO `wp_icl_languages_translations` VALUES (644,'sk','zh-hans','斯拉夫语');
INSERT INTO `wp_icl_languages_translations` VALUES (645,'sk','zu','Slovak');
INSERT INTO `wp_icl_languages_translations` VALUES (646,'sk','zh-hant','斯拉夫語');
INSERT INTO `wp_icl_languages_translations` VALUES (647,'sk','ms','Slovak');
INSERT INTO `wp_icl_languages_translations` VALUES (648,'sk','gl','Slovak');
INSERT INTO `wp_icl_languages_translations` VALUES (649,'sk','bn','Slovak');
INSERT INTO `wp_icl_languages_translations` VALUES (650,'sk','az','Slovak');
INSERT INTO `wp_icl_languages_translations` VALUES (651,'cy','en','Welsh');
INSERT INTO `wp_icl_languages_translations` VALUES (652,'cy','es','Galés');
INSERT INTO `wp_icl_languages_translations` VALUES (653,'cy','de','Walisisch');
INSERT INTO `wp_icl_languages_translations` VALUES (654,'cy','fr','Gallois');
INSERT INTO `wp_icl_languages_translations` VALUES (655,'cy','ar','الولزية');
INSERT INTO `wp_icl_languages_translations` VALUES (656,'cy','bs','Welsh');
INSERT INTO `wp_icl_languages_translations` VALUES (657,'cy','bg','Уелски');
INSERT INTO `wp_icl_languages_translations` VALUES (658,'cy','ca','Welsh');
INSERT INTO `wp_icl_languages_translations` VALUES (659,'cy','cs','Velšský');
INSERT INTO `wp_icl_languages_translations` VALUES (660,'cy','sk','Welština');
INSERT INTO `wp_icl_languages_translations` VALUES (661,'cy','cy','Cymraeg');
INSERT INTO `wp_icl_languages_translations` VALUES (662,'cy','da','Welsh');
INSERT INTO `wp_icl_languages_translations` VALUES (663,'cy','el','Oυαλικά');
INSERT INTO `wp_icl_languages_translations` VALUES (664,'cy','eo','Welsh');
INSERT INTO `wp_icl_languages_translations` VALUES (665,'cy','et','Welsh');
INSERT INTO `wp_icl_languages_translations` VALUES (666,'cy','eu','Welsh');
INSERT INTO `wp_icl_languages_translations` VALUES (667,'cy','fa','Welsh');
INSERT INTO `wp_icl_languages_translations` VALUES (668,'cy','fi','Kymri');
INSERT INTO `wp_icl_languages_translations` VALUES (669,'cy','ga','Welsh');
INSERT INTO `wp_icl_languages_translations` VALUES (670,'cy','he','וולשית');
INSERT INTO `wp_icl_languages_translations` VALUES (671,'cy','hi','Welsh');
INSERT INTO `wp_icl_languages_translations` VALUES (672,'cy','hr','Velški');
INSERT INTO `wp_icl_languages_translations` VALUES (673,'cy','hu','Vels');
INSERT INTO `wp_icl_languages_translations` VALUES (674,'cy','hy','Welsh');
INSERT INTO `wp_icl_languages_translations` VALUES (675,'cy','id','Welsh');
INSERT INTO `wp_icl_languages_translations` VALUES (676,'cy','is','Welsh');
INSERT INTO `wp_icl_languages_translations` VALUES (677,'cy','it','Gallese');
INSERT INTO `wp_icl_languages_translations` VALUES (678,'cy','ja','ウェールズ語');
INSERT INTO `wp_icl_languages_translations` VALUES (679,'cy','ko','웨일즈어');
INSERT INTO `wp_icl_languages_translations` VALUES (680,'cy','ku','Welsh');
INSERT INTO `wp_icl_languages_translations` VALUES (681,'cy','lv','Welsh');
INSERT INTO `wp_icl_languages_translations` VALUES (682,'cy','lt','Welsh');
INSERT INTO `wp_icl_languages_translations` VALUES (683,'cy','mk','Welsh');
INSERT INTO `wp_icl_languages_translations` VALUES (684,'cy','mt','Welsh');
INSERT INTO `wp_icl_languages_translations` VALUES (685,'cy','mn','Welsh');
INSERT INTO `wp_icl_languages_translations` VALUES (686,'cy','ne','Welsh');
INSERT INTO `wp_icl_languages_translations` VALUES (687,'cy','nl','Welsh');
INSERT INTO `wp_icl_languages_translations` VALUES (688,'cy','no','Welsh');
INSERT INTO `wp_icl_languages_translations` VALUES (689,'cy','pa','Welsh');
INSERT INTO `wp_icl_languages_translations` VALUES (690,'cy','pl','Walijski');
INSERT INTO `wp_icl_languages_translations` VALUES (691,'cy','pt-pt','Galês');
INSERT INTO `wp_icl_languages_translations` VALUES (692,'cy','pt-br','Galês');
INSERT INTO `wp_icl_languages_translations` VALUES (693,'cy','qu','Welsh');
INSERT INTO `wp_icl_languages_translations` VALUES (694,'cy','ro','Galeză');
INSERT INTO `wp_icl_languages_translations` VALUES (695,'cy','ru','Валлийский');
INSERT INTO `wp_icl_languages_translations` VALUES (696,'cy','sl','Welsh');
INSERT INTO `wp_icl_languages_translations` VALUES (697,'cy','so','Welsh');
INSERT INTO `wp_icl_languages_translations` VALUES (698,'cy','sq','Welsh');
INSERT INTO `wp_icl_languages_translations` VALUES (699,'cy','sr','велшки');
INSERT INTO `wp_icl_languages_translations` VALUES (700,'cy','sv','Walesiska');
INSERT INTO `wp_icl_languages_translations` VALUES (701,'cy','ta','Welsh');
INSERT INTO `wp_icl_languages_translations` VALUES (702,'cy','th','เวลช์');
INSERT INTO `wp_icl_languages_translations` VALUES (703,'cy','tr','Galce');
INSERT INTO `wp_icl_languages_translations` VALUES (704,'cy','uk','Welsh');
INSERT INTO `wp_icl_languages_translations` VALUES (705,'cy','ur','Welsh');
INSERT INTO `wp_icl_languages_translations` VALUES (706,'cy','uz','Welsh');
INSERT INTO `wp_icl_languages_translations` VALUES (707,'cy','vi','Welsh');
INSERT INTO `wp_icl_languages_translations` VALUES (708,'cy','yi','Welsh');
INSERT INTO `wp_icl_languages_translations` VALUES (709,'cy','zh-hans','威尔士语');
INSERT INTO `wp_icl_languages_translations` VALUES (710,'cy','zu','Welsh');
INSERT INTO `wp_icl_languages_translations` VALUES (711,'cy','zh-hant','威爾士語');
INSERT INTO `wp_icl_languages_translations` VALUES (712,'cy','ms','Welsh');
INSERT INTO `wp_icl_languages_translations` VALUES (713,'cy','gl','Welsh');
INSERT INTO `wp_icl_languages_translations` VALUES (714,'cy','bn','Welsh');
INSERT INTO `wp_icl_languages_translations` VALUES (715,'cy','az','Welsh');
INSERT INTO `wp_icl_languages_translations` VALUES (716,'da','en','Danish');
INSERT INTO `wp_icl_languages_translations` VALUES (717,'da','es','Danés');
INSERT INTO `wp_icl_languages_translations` VALUES (718,'da','de','Dänisch');
INSERT INTO `wp_icl_languages_translations` VALUES (719,'da','fr','Danois');
INSERT INTO `wp_icl_languages_translations` VALUES (720,'da','ar','الدانماركية');
INSERT INTO `wp_icl_languages_translations` VALUES (721,'da','bs','Danish');
INSERT INTO `wp_icl_languages_translations` VALUES (722,'da','bg','Датски');
INSERT INTO `wp_icl_languages_translations` VALUES (723,'da','ca','Danish');
INSERT INTO `wp_icl_languages_translations` VALUES (724,'da','cs','Dánský');
INSERT INTO `wp_icl_languages_translations` VALUES (725,'da','sk','Dánčina');
INSERT INTO `wp_icl_languages_translations` VALUES (726,'da','cy','Danish');
INSERT INTO `wp_icl_languages_translations` VALUES (727,'da','da','Dansk');
INSERT INTO `wp_icl_languages_translations` VALUES (728,'da','el','Δανέζικα');
INSERT INTO `wp_icl_languages_translations` VALUES (729,'da','eo','Danish');
INSERT INTO `wp_icl_languages_translations` VALUES (730,'da','et','Danish');
INSERT INTO `wp_icl_languages_translations` VALUES (731,'da','eu','Danish');
INSERT INTO `wp_icl_languages_translations` VALUES (732,'da','fa','Danish');
INSERT INTO `wp_icl_languages_translations` VALUES (733,'da','fi','Tanska');
INSERT INTO `wp_icl_languages_translations` VALUES (734,'da','ga','Danish');
INSERT INTO `wp_icl_languages_translations` VALUES (735,'da','he','דנית');
INSERT INTO `wp_icl_languages_translations` VALUES (736,'da','hi','Danish');
INSERT INTO `wp_icl_languages_translations` VALUES (737,'da','hr','Danski');
INSERT INTO `wp_icl_languages_translations` VALUES (738,'da','hu','Dán');
INSERT INTO `wp_icl_languages_translations` VALUES (739,'da','hy','Danish');
INSERT INTO `wp_icl_languages_translations` VALUES (740,'da','id','Danish');
INSERT INTO `wp_icl_languages_translations` VALUES (741,'da','is','Danish');
INSERT INTO `wp_icl_languages_translations` VALUES (742,'da','it','Danese');
INSERT INTO `wp_icl_languages_translations` VALUES (743,'da','ja','デンマーク語');
INSERT INTO `wp_icl_languages_translations` VALUES (744,'da','ko','덴마크어');
INSERT INTO `wp_icl_languages_translations` VALUES (745,'da','ku','Danish');
INSERT INTO `wp_icl_languages_translations` VALUES (746,'da','lv','Danish');
INSERT INTO `wp_icl_languages_translations` VALUES (747,'da','lt','Danish');
INSERT INTO `wp_icl_languages_translations` VALUES (748,'da','mk','Danish');
INSERT INTO `wp_icl_languages_translations` VALUES (749,'da','mt','Danish');
INSERT INTO `wp_icl_languages_translations` VALUES (750,'da','mn','Danish');
INSERT INTO `wp_icl_languages_translations` VALUES (751,'da','ne','Danish');
INSERT INTO `wp_icl_languages_translations` VALUES (752,'da','nl','Deens');
INSERT INTO `wp_icl_languages_translations` VALUES (753,'da','no','Danish');
INSERT INTO `wp_icl_languages_translations` VALUES (754,'da','pa','Danish');
INSERT INTO `wp_icl_languages_translations` VALUES (755,'da','pl','Duński');
INSERT INTO `wp_icl_languages_translations` VALUES (756,'da','pt-pt','Dinamarquês');
INSERT INTO `wp_icl_languages_translations` VALUES (757,'da','pt-br','Dinamarquês');
INSERT INTO `wp_icl_languages_translations` VALUES (758,'da','qu','Danish');
INSERT INTO `wp_icl_languages_translations` VALUES (759,'da','ro','Daneză');
INSERT INTO `wp_icl_languages_translations` VALUES (760,'da','ru','Датский');
INSERT INTO `wp_icl_languages_translations` VALUES (761,'da','sl','Danščina');
INSERT INTO `wp_icl_languages_translations` VALUES (762,'da','so','Danish');
INSERT INTO `wp_icl_languages_translations` VALUES (763,'da','sq','Danish');
INSERT INTO `wp_icl_languages_translations` VALUES (764,'da','sr','дански');
INSERT INTO `wp_icl_languages_translations` VALUES (765,'da','sv','Danska');
INSERT INTO `wp_icl_languages_translations` VALUES (766,'da','ta','Danish');
INSERT INTO `wp_icl_languages_translations` VALUES (767,'da','th','เดนมาร์ก');
INSERT INTO `wp_icl_languages_translations` VALUES (768,'da','tr','Danca');
INSERT INTO `wp_icl_languages_translations` VALUES (769,'da','uk','Danish');
INSERT INTO `wp_icl_languages_translations` VALUES (770,'da','ur','Danish');
INSERT INTO `wp_icl_languages_translations` VALUES (771,'da','uz','Danish');
INSERT INTO `wp_icl_languages_translations` VALUES (772,'da','vi','Danish');
INSERT INTO `wp_icl_languages_translations` VALUES (773,'da','yi','Danish');
INSERT INTO `wp_icl_languages_translations` VALUES (774,'da','zh-hans','丹麦语');
INSERT INTO `wp_icl_languages_translations` VALUES (775,'da','zu','Danish');
INSERT INTO `wp_icl_languages_translations` VALUES (776,'da','zh-hant','丹麥語');
INSERT INTO `wp_icl_languages_translations` VALUES (777,'da','ms','Danish');
INSERT INTO `wp_icl_languages_translations` VALUES (778,'da','gl','Danish');
INSERT INTO `wp_icl_languages_translations` VALUES (779,'da','bn','Danish');
INSERT INTO `wp_icl_languages_translations` VALUES (780,'da','az','Danish');
INSERT INTO `wp_icl_languages_translations` VALUES (781,'el','en','Greek');
INSERT INTO `wp_icl_languages_translations` VALUES (782,'el','es','Griego');
INSERT INTO `wp_icl_languages_translations` VALUES (783,'el','de','Griechisch');
INSERT INTO `wp_icl_languages_translations` VALUES (784,'el','fr','Grec moderne');
INSERT INTO `wp_icl_languages_translations` VALUES (785,'el','ar','اليونانية');
INSERT INTO `wp_icl_languages_translations` VALUES (786,'el','bs','Greek');
INSERT INTO `wp_icl_languages_translations` VALUES (787,'el','bg','Гръцки');
INSERT INTO `wp_icl_languages_translations` VALUES (788,'el','ca','Greek');
INSERT INTO `wp_icl_languages_translations` VALUES (789,'el','cs','Řečtina');
INSERT INTO `wp_icl_languages_translations` VALUES (790,'el','sk','Gréčtina');
INSERT INTO `wp_icl_languages_translations` VALUES (791,'el','cy','Greek');
INSERT INTO `wp_icl_languages_translations` VALUES (792,'el','da','Greek');
INSERT INTO `wp_icl_languages_translations` VALUES (793,'el','el','Ελληνικά');
INSERT INTO `wp_icl_languages_translations` VALUES (794,'el','eo','Greek');
INSERT INTO `wp_icl_languages_translations` VALUES (795,'el','et','Greek');
INSERT INTO `wp_icl_languages_translations` VALUES (796,'el','eu','Greek');
INSERT INTO `wp_icl_languages_translations` VALUES (797,'el','fa','Greek');
INSERT INTO `wp_icl_languages_translations` VALUES (798,'el','fi','Kreikka');
INSERT INTO `wp_icl_languages_translations` VALUES (799,'el','ga','Greek');
INSERT INTO `wp_icl_languages_translations` VALUES (800,'el','he','יוונית');
INSERT INTO `wp_icl_languages_translations` VALUES (801,'el','hi','Greek');
INSERT INTO `wp_icl_languages_translations` VALUES (802,'el','hr','Grčki');
INSERT INTO `wp_icl_languages_translations` VALUES (803,'el','hu','Görög');
INSERT INTO `wp_icl_languages_translations` VALUES (804,'el','hy','Greek');
INSERT INTO `wp_icl_languages_translations` VALUES (805,'el','id','Greek');
INSERT INTO `wp_icl_languages_translations` VALUES (806,'el','is','Greek');
INSERT INTO `wp_icl_languages_translations` VALUES (807,'el','it','Greco');
INSERT INTO `wp_icl_languages_translations` VALUES (808,'el','ja','ギリシア語');
INSERT INTO `wp_icl_languages_translations` VALUES (809,'el','ko','그리스어');
INSERT INTO `wp_icl_languages_translations` VALUES (810,'el','ku','Greek');
INSERT INTO `wp_icl_languages_translations` VALUES (811,'el','lv','Greek');
INSERT INTO `wp_icl_languages_translations` VALUES (812,'el','lt','Greek');
INSERT INTO `wp_icl_languages_translations` VALUES (813,'el','mk','Greek');
INSERT INTO `wp_icl_languages_translations` VALUES (814,'el','mt','Greek');
INSERT INTO `wp_icl_languages_translations` VALUES (815,'el','mn','Greek');
INSERT INTO `wp_icl_languages_translations` VALUES (816,'el','ne','Greek');
INSERT INTO `wp_icl_languages_translations` VALUES (817,'el','nl','Grieks');
INSERT INTO `wp_icl_languages_translations` VALUES (818,'el','no','Gresk');
INSERT INTO `wp_icl_languages_translations` VALUES (819,'el','pa','Greek');
INSERT INTO `wp_icl_languages_translations` VALUES (820,'el','pl','Grecki');
INSERT INTO `wp_icl_languages_translations` VALUES (821,'el','pt-pt','Grego');
INSERT INTO `wp_icl_languages_translations` VALUES (822,'el','pt-br','Grego');
INSERT INTO `wp_icl_languages_translations` VALUES (823,'el','qu','Greek');
INSERT INTO `wp_icl_languages_translations` VALUES (824,'el','ro','Greacă');
INSERT INTO `wp_icl_languages_translations` VALUES (825,'el','ru','Греческий');
INSERT INTO `wp_icl_languages_translations` VALUES (826,'el','sl','Greek');
INSERT INTO `wp_icl_languages_translations` VALUES (827,'el','so','Greek');
INSERT INTO `wp_icl_languages_translations` VALUES (828,'el','sq','Greek');
INSERT INTO `wp_icl_languages_translations` VALUES (829,'el','sr','грчки');
INSERT INTO `wp_icl_languages_translations` VALUES (830,'el','sv','Grekiska');
INSERT INTO `wp_icl_languages_translations` VALUES (831,'el','ta','Greek');
INSERT INTO `wp_icl_languages_translations` VALUES (832,'el','th','กรีก');
INSERT INTO `wp_icl_languages_translations` VALUES (833,'el','tr','Yunanca');
INSERT INTO `wp_icl_languages_translations` VALUES (834,'el','uk','Greek');
INSERT INTO `wp_icl_languages_translations` VALUES (835,'el','ur','Greek');
INSERT INTO `wp_icl_languages_translations` VALUES (836,'el','uz','Greek');
INSERT INTO `wp_icl_languages_translations` VALUES (837,'el','vi','Greek');
INSERT INTO `wp_icl_languages_translations` VALUES (838,'el','yi','Greek');
INSERT INTO `wp_icl_languages_translations` VALUES (839,'el','zh-hans','希腊语');
INSERT INTO `wp_icl_languages_translations` VALUES (840,'el','zu','Greek');
INSERT INTO `wp_icl_languages_translations` VALUES (841,'el','zh-hant','希臘語');
INSERT INTO `wp_icl_languages_translations` VALUES (842,'el','ms','Greek');
INSERT INTO `wp_icl_languages_translations` VALUES (843,'el','gl','Greek');
INSERT INTO `wp_icl_languages_translations` VALUES (844,'el','bn','Greek');
INSERT INTO `wp_icl_languages_translations` VALUES (845,'el','az','Greek');
INSERT INTO `wp_icl_languages_translations` VALUES (846,'eo','en','Esperanto');
INSERT INTO `wp_icl_languages_translations` VALUES (847,'eo','es','Esperanto');
INSERT INTO `wp_icl_languages_translations` VALUES (848,'eo','de','Esperanto');
INSERT INTO `wp_icl_languages_translations` VALUES (849,'eo','fr','Espéranto');
INSERT INTO `wp_icl_languages_translations` VALUES (850,'eo','ar','الاسبرانتو');
INSERT INTO `wp_icl_languages_translations` VALUES (851,'eo','bs','Esperanto');
INSERT INTO `wp_icl_languages_translations` VALUES (852,'eo','bg','Есперанто');
INSERT INTO `wp_icl_languages_translations` VALUES (853,'eo','ca','Esperanto');
INSERT INTO `wp_icl_languages_translations` VALUES (854,'eo','cs','Esperanto');
INSERT INTO `wp_icl_languages_translations` VALUES (855,'eo','sk','Esperanto');
INSERT INTO `wp_icl_languages_translations` VALUES (856,'eo','cy','Esperanto');
INSERT INTO `wp_icl_languages_translations` VALUES (857,'eo','da','Esperanto');
INSERT INTO `wp_icl_languages_translations` VALUES (858,'eo','el','Εσπεράντο');
INSERT INTO `wp_icl_languages_translations` VALUES (859,'eo','eo','Esperanta');
INSERT INTO `wp_icl_languages_translations` VALUES (860,'eo','et','Esperanto');
INSERT INTO `wp_icl_languages_translations` VALUES (861,'eo','eu','Esperanto');
INSERT INTO `wp_icl_languages_translations` VALUES (862,'eo','fa','Esperanto');
INSERT INTO `wp_icl_languages_translations` VALUES (863,'eo','fi','Esperanto');
INSERT INTO `wp_icl_languages_translations` VALUES (864,'eo','ga','Esperanto');
INSERT INTO `wp_icl_languages_translations` VALUES (865,'eo','he','אספרנטו');
INSERT INTO `wp_icl_languages_translations` VALUES (866,'eo','hi','Esperanto');
INSERT INTO `wp_icl_languages_translations` VALUES (867,'eo','hr','Esperanto');
INSERT INTO `wp_icl_languages_translations` VALUES (868,'eo','hu','Eszperantó');
INSERT INTO `wp_icl_languages_translations` VALUES (869,'eo','hy','Esperanto');
INSERT INTO `wp_icl_languages_translations` VALUES (870,'eo','id','Esperanto');
INSERT INTO `wp_icl_languages_translations` VALUES (871,'eo','is','Esperanto');
INSERT INTO `wp_icl_languages_translations` VALUES (872,'eo','it','Esperanto');
INSERT INTO `wp_icl_languages_translations` VALUES (873,'eo','ja','エスペラント語');
INSERT INTO `wp_icl_languages_translations` VALUES (874,'eo','ko','에스페란토어');
INSERT INTO `wp_icl_languages_translations` VALUES (875,'eo','ku','Esperanto');
INSERT INTO `wp_icl_languages_translations` VALUES (876,'eo','lv','Esperanto');
INSERT INTO `wp_icl_languages_translations` VALUES (877,'eo','lt','Esperanto');
INSERT INTO `wp_icl_languages_translations` VALUES (878,'eo','mk','Esperanto');
INSERT INTO `wp_icl_languages_translations` VALUES (879,'eo','mt','Esperanto');
INSERT INTO `wp_icl_languages_translations` VALUES (880,'eo','mn','Esperanto');
INSERT INTO `wp_icl_languages_translations` VALUES (881,'eo','ne','Esperanto');
INSERT INTO `wp_icl_languages_translations` VALUES (882,'eo','nl','Esperanto');
INSERT INTO `wp_icl_languages_translations` VALUES (883,'eo','no','Esperanto');
INSERT INTO `wp_icl_languages_translations` VALUES (884,'eo','pa','Esperanto');
INSERT INTO `wp_icl_languages_translations` VALUES (885,'eo','pl','Esperanto');
INSERT INTO `wp_icl_languages_translations` VALUES (886,'eo','pt-pt','Esperanto');
INSERT INTO `wp_icl_languages_translations` VALUES (887,'eo','pt-br','Esperanto');
INSERT INTO `wp_icl_languages_translations` VALUES (888,'eo','qu','Esperanto');
INSERT INTO `wp_icl_languages_translations` VALUES (889,'eo','ro','Esperanto');
INSERT INTO `wp_icl_languages_translations` VALUES (890,'eo','ru','Эсперанто');
INSERT INTO `wp_icl_languages_translations` VALUES (891,'eo','sl','Esperanto');
INSERT INTO `wp_icl_languages_translations` VALUES (892,'eo','so','Esperanto');
INSERT INTO `wp_icl_languages_translations` VALUES (893,'eo','sq','Esperanto');
INSERT INTO `wp_icl_languages_translations` VALUES (894,'eo','sr','есперанто');
INSERT INTO `wp_icl_languages_translations` VALUES (895,'eo','sv','Esperanto');
INSERT INTO `wp_icl_languages_translations` VALUES (896,'eo','ta','Esperanto');
INSERT INTO `wp_icl_languages_translations` VALUES (897,'eo','th','เอสเปอรันโต');
INSERT INTO `wp_icl_languages_translations` VALUES (898,'eo','tr','Esperanto');
INSERT INTO `wp_icl_languages_translations` VALUES (899,'eo','uk','Esperanto');
INSERT INTO `wp_icl_languages_translations` VALUES (900,'eo','ur','Esperanto');
INSERT INTO `wp_icl_languages_translations` VALUES (901,'eo','uz','Esperanto');
INSERT INTO `wp_icl_languages_translations` VALUES (902,'eo','vi','Esperanto');
INSERT INTO `wp_icl_languages_translations` VALUES (903,'eo','yi','Esperanto');
INSERT INTO `wp_icl_languages_translations` VALUES (904,'eo','zh-hans','世界语');
INSERT INTO `wp_icl_languages_translations` VALUES (905,'eo','zu','Esperanto');
INSERT INTO `wp_icl_languages_translations` VALUES (906,'eo','zh-hant','世界語');
INSERT INTO `wp_icl_languages_translations` VALUES (907,'eo','ms','Esperanto');
INSERT INTO `wp_icl_languages_translations` VALUES (908,'eo','gl','Esperanto');
INSERT INTO `wp_icl_languages_translations` VALUES (909,'eo','bn','Esperanto');
INSERT INTO `wp_icl_languages_translations` VALUES (910,'eo','az','Esperanto');
INSERT INTO `wp_icl_languages_translations` VALUES (911,'et','en','Estonian');
INSERT INTO `wp_icl_languages_translations` VALUES (912,'et','es','Estonio');
INSERT INTO `wp_icl_languages_translations` VALUES (913,'et','de','Estnisch');
INSERT INTO `wp_icl_languages_translations` VALUES (914,'et','fr','Estonien');
INSERT INTO `wp_icl_languages_translations` VALUES (915,'et','ar','الأستونية');
INSERT INTO `wp_icl_languages_translations` VALUES (916,'et','bs','Estonian');
INSERT INTO `wp_icl_languages_translations` VALUES (917,'et','bg','Естонски');
INSERT INTO `wp_icl_languages_translations` VALUES (918,'et','ca','Estonian');
INSERT INTO `wp_icl_languages_translations` VALUES (919,'et','cs','Estonština');
INSERT INTO `wp_icl_languages_translations` VALUES (920,'et','sk','Estónčina');
INSERT INTO `wp_icl_languages_translations` VALUES (921,'et','cy','Estonian');
INSERT INTO `wp_icl_languages_translations` VALUES (922,'et','da','Estonian');
INSERT INTO `wp_icl_languages_translations` VALUES (923,'et','el','Εσθονικά');
INSERT INTO `wp_icl_languages_translations` VALUES (924,'et','eo','Estonian');
INSERT INTO `wp_icl_languages_translations` VALUES (925,'et','et','Eesti');
INSERT INTO `wp_icl_languages_translations` VALUES (926,'et','eu','Estonian');
INSERT INTO `wp_icl_languages_translations` VALUES (927,'et','fa','Estonian');
INSERT INTO `wp_icl_languages_translations` VALUES (928,'et','fi','Eesti');
INSERT INTO `wp_icl_languages_translations` VALUES (929,'et','ga','Estonian');
INSERT INTO `wp_icl_languages_translations` VALUES (930,'et','he','אסטונית');
INSERT INTO `wp_icl_languages_translations` VALUES (931,'et','hi','Estonian');
INSERT INTO `wp_icl_languages_translations` VALUES (932,'et','hr','Estonski');
INSERT INTO `wp_icl_languages_translations` VALUES (933,'et','hu','észt');
INSERT INTO `wp_icl_languages_translations` VALUES (934,'et','hy','Estonian');
INSERT INTO `wp_icl_languages_translations` VALUES (935,'et','id','Estonian');
INSERT INTO `wp_icl_languages_translations` VALUES (936,'et','is','Estonian');
INSERT INTO `wp_icl_languages_translations` VALUES (937,'et','it','Estone');
INSERT INTO `wp_icl_languages_translations` VALUES (938,'et','ja','エストニア語');
INSERT INTO `wp_icl_languages_translations` VALUES (939,'et','ko','에스토니아어');
INSERT INTO `wp_icl_languages_translations` VALUES (940,'et','ku','Estonian');
INSERT INTO `wp_icl_languages_translations` VALUES (941,'et','lv','Estonian');
INSERT INTO `wp_icl_languages_translations` VALUES (942,'et','lt','Estonian');
INSERT INTO `wp_icl_languages_translations` VALUES (943,'et','mk','Estonian');
INSERT INTO `wp_icl_languages_translations` VALUES (944,'et','mt','Estonian');
INSERT INTO `wp_icl_languages_translations` VALUES (945,'et','mn','Estonian');
INSERT INTO `wp_icl_languages_translations` VALUES (946,'et','ne','Estonian');
INSERT INTO `wp_icl_languages_translations` VALUES (947,'et','nl','Ests');
INSERT INTO `wp_icl_languages_translations` VALUES (948,'et','no','Estonian');
INSERT INTO `wp_icl_languages_translations` VALUES (949,'et','pa','Estonian');
INSERT INTO `wp_icl_languages_translations` VALUES (950,'et','pl','Estoński');
INSERT INTO `wp_icl_languages_translations` VALUES (951,'et','pt-pt','Estoniano');
INSERT INTO `wp_icl_languages_translations` VALUES (952,'et','pt-br','Estoniano');
INSERT INTO `wp_icl_languages_translations` VALUES (953,'et','qu','Estonian');
INSERT INTO `wp_icl_languages_translations` VALUES (954,'et','ro','Estoniană');
INSERT INTO `wp_icl_languages_translations` VALUES (955,'et','ru','Эстонский');
INSERT INTO `wp_icl_languages_translations` VALUES (956,'et','sl','Estonščina');
INSERT INTO `wp_icl_languages_translations` VALUES (957,'et','so','Estonian');
INSERT INTO `wp_icl_languages_translations` VALUES (958,'et','sq','Estonian');
INSERT INTO `wp_icl_languages_translations` VALUES (959,'et','sr','естонски');
INSERT INTO `wp_icl_languages_translations` VALUES (960,'et','sv','Estniska');
INSERT INTO `wp_icl_languages_translations` VALUES (961,'et','ta','Estonian');
INSERT INTO `wp_icl_languages_translations` VALUES (962,'et','th','เอสโตเนียน');
INSERT INTO `wp_icl_languages_translations` VALUES (963,'et','tr','Estonya dili');
INSERT INTO `wp_icl_languages_translations` VALUES (964,'et','uk','Estonian');
INSERT INTO `wp_icl_languages_translations` VALUES (965,'et','ur','Estonian');
INSERT INTO `wp_icl_languages_translations` VALUES (966,'et','uz','Estonian');
INSERT INTO `wp_icl_languages_translations` VALUES (967,'et','vi','Estonian');
INSERT INTO `wp_icl_languages_translations` VALUES (968,'et','yi','Estonian');
INSERT INTO `wp_icl_languages_translations` VALUES (969,'et','zh-hans','爱沙尼亚语');
INSERT INTO `wp_icl_languages_translations` VALUES (970,'et','zu','Estonian');
INSERT INTO `wp_icl_languages_translations` VALUES (971,'et','zh-hant','愛沙尼亞語');
INSERT INTO `wp_icl_languages_translations` VALUES (972,'et','ms','Estonian');
INSERT INTO `wp_icl_languages_translations` VALUES (973,'et','gl','Estonian');
INSERT INTO `wp_icl_languages_translations` VALUES (974,'et','bn','Estonian');
INSERT INTO `wp_icl_languages_translations` VALUES (975,'et','az','Estonian');
INSERT INTO `wp_icl_languages_translations` VALUES (976,'eu','en','Basque');
INSERT INTO `wp_icl_languages_translations` VALUES (977,'eu','es','Euskera');
INSERT INTO `wp_icl_languages_translations` VALUES (978,'eu','de','Baskisch');
INSERT INTO `wp_icl_languages_translations` VALUES (979,'eu','fr','Basque');
INSERT INTO `wp_icl_languages_translations` VALUES (980,'eu','ar','لغة الباسك');
INSERT INTO `wp_icl_languages_translations` VALUES (981,'eu','bs','Basque');
INSERT INTO `wp_icl_languages_translations` VALUES (982,'eu','bg','Баски');
INSERT INTO `wp_icl_languages_translations` VALUES (983,'eu','ca','Basque');
INSERT INTO `wp_icl_languages_translations` VALUES (984,'eu','cs','Basque');
INSERT INTO `wp_icl_languages_translations` VALUES (985,'eu','sk','Baskičtina');
INSERT INTO `wp_icl_languages_translations` VALUES (986,'eu','cy','Basque');
INSERT INTO `wp_icl_languages_translations` VALUES (987,'eu','da','Basque');
INSERT INTO `wp_icl_languages_translations` VALUES (988,'eu','el','Βασκικά');
INSERT INTO `wp_icl_languages_translations` VALUES (989,'eu','eo','Basque');
INSERT INTO `wp_icl_languages_translations` VALUES (990,'eu','et','Basque');
INSERT INTO `wp_icl_languages_translations` VALUES (991,'eu','eu','Euskara');
INSERT INTO `wp_icl_languages_translations` VALUES (992,'eu','fa','Basque');
INSERT INTO `wp_icl_languages_translations` VALUES (993,'eu','fi','Baski');
INSERT INTO `wp_icl_languages_translations` VALUES (994,'eu','ga','Basque');
INSERT INTO `wp_icl_languages_translations` VALUES (995,'eu','he','בסקית');
INSERT INTO `wp_icl_languages_translations` VALUES (996,'eu','hi','Basque');
INSERT INTO `wp_icl_languages_translations` VALUES (997,'eu','hr','Baskijski');
INSERT INTO `wp_icl_languages_translations` VALUES (998,'eu','hu','Baszk');
INSERT INTO `wp_icl_languages_translations` VALUES (999,'eu','hy','Basque');
INSERT INTO `wp_icl_languages_translations` VALUES (1000,'eu','id','Basque');
INSERT INTO `wp_icl_languages_translations` VALUES (1001,'eu','is','Basque');
INSERT INTO `wp_icl_languages_translations` VALUES (1002,'eu','it','Basco');
INSERT INTO `wp_icl_languages_translations` VALUES (1003,'eu','ja','バスク語');
INSERT INTO `wp_icl_languages_translations` VALUES (1004,'eu','ko','바스크어');
INSERT INTO `wp_icl_languages_translations` VALUES (1005,'eu','ku','Basque');
INSERT INTO `wp_icl_languages_translations` VALUES (1006,'eu','lv','Basque');
INSERT INTO `wp_icl_languages_translations` VALUES (1007,'eu','lt','Basque');
INSERT INTO `wp_icl_languages_translations` VALUES (1008,'eu','mk','Basque');
INSERT INTO `wp_icl_languages_translations` VALUES (1009,'eu','mt','Basque');
INSERT INTO `wp_icl_languages_translations` VALUES (1010,'eu','mn','Basque');
INSERT INTO `wp_icl_languages_translations` VALUES (1011,'eu','ne','Basque');
INSERT INTO `wp_icl_languages_translations` VALUES (1012,'eu','nl','Baskisch');
INSERT INTO `wp_icl_languages_translations` VALUES (1013,'eu','no','Basque');
INSERT INTO `wp_icl_languages_translations` VALUES (1014,'eu','pa','Basque');
INSERT INTO `wp_icl_languages_translations` VALUES (1015,'eu','pl','Baskijski');
INSERT INTO `wp_icl_languages_translations` VALUES (1016,'eu','pt-pt','Basco');
INSERT INTO `wp_icl_languages_translations` VALUES (1017,'eu','pt-br','Basco');
INSERT INTO `wp_icl_languages_translations` VALUES (1018,'eu','qu','Basque');
INSERT INTO `wp_icl_languages_translations` VALUES (1019,'eu','ro','Bască');
INSERT INTO `wp_icl_languages_translations` VALUES (1020,'eu','ru','Баскский');
INSERT INTO `wp_icl_languages_translations` VALUES (1021,'eu','sl','Baskovščina');
INSERT INTO `wp_icl_languages_translations` VALUES (1022,'eu','so','Basque');
INSERT INTO `wp_icl_languages_translations` VALUES (1023,'eu','sq','Basque');
INSERT INTO `wp_icl_languages_translations` VALUES (1024,'eu','sr','баскијски');
INSERT INTO `wp_icl_languages_translations` VALUES (1025,'eu','sv','Baskiska');
INSERT INTO `wp_icl_languages_translations` VALUES (1026,'eu','ta','Basque');
INSERT INTO `wp_icl_languages_translations` VALUES (1027,'eu','th','บาสค์');
INSERT INTO `wp_icl_languages_translations` VALUES (1028,'eu','tr','Bask dili');
INSERT INTO `wp_icl_languages_translations` VALUES (1029,'eu','uk','Basque');
INSERT INTO `wp_icl_languages_translations` VALUES (1030,'eu','ur','Basque');
INSERT INTO `wp_icl_languages_translations` VALUES (1031,'eu','uz','Basque');
INSERT INTO `wp_icl_languages_translations` VALUES (1032,'eu','vi','Basque');
INSERT INTO `wp_icl_languages_translations` VALUES (1033,'eu','yi','Basque');
INSERT INTO `wp_icl_languages_translations` VALUES (1034,'eu','zh-hans','巴斯克语');
INSERT INTO `wp_icl_languages_translations` VALUES (1035,'eu','zu','Basque');
INSERT INTO `wp_icl_languages_translations` VALUES (1036,'eu','zh-hant','巴斯克語');
INSERT INTO `wp_icl_languages_translations` VALUES (1037,'eu','ms','Basque');
INSERT INTO `wp_icl_languages_translations` VALUES (1038,'eu','gl','Basque');
INSERT INTO `wp_icl_languages_translations` VALUES (1039,'eu','bn','Basque');
INSERT INTO `wp_icl_languages_translations` VALUES (1040,'eu','az','Basque');
INSERT INTO `wp_icl_languages_translations` VALUES (1041,'fa','en','Persian');
INSERT INTO `wp_icl_languages_translations` VALUES (1042,'fa','es','Persa');
INSERT INTO `wp_icl_languages_translations` VALUES (1043,'fa','de','Persisch');
INSERT INTO `wp_icl_languages_translations` VALUES (1044,'fa','fr','Perse');
INSERT INTO `wp_icl_languages_translations` VALUES (1045,'fa','ar','الفارسية');
INSERT INTO `wp_icl_languages_translations` VALUES (1046,'fa','bs','Persian');
INSERT INTO `wp_icl_languages_translations` VALUES (1047,'fa','bg','Персийски');
INSERT INTO `wp_icl_languages_translations` VALUES (1048,'fa','ca','Persian');
INSERT INTO `wp_icl_languages_translations` VALUES (1049,'fa','cs','Perský');
INSERT INTO `wp_icl_languages_translations` VALUES (1050,'fa','sk','Perzština');
INSERT INTO `wp_icl_languages_translations` VALUES (1051,'fa','cy','Persian');
INSERT INTO `wp_icl_languages_translations` VALUES (1052,'fa','da','Persian');
INSERT INTO `wp_icl_languages_translations` VALUES (1053,'fa','el','Περσικά');
INSERT INTO `wp_icl_languages_translations` VALUES (1054,'fa','eo','Persian');
INSERT INTO `wp_icl_languages_translations` VALUES (1055,'fa','et','Persian');
INSERT INTO `wp_icl_languages_translations` VALUES (1056,'fa','eu','Persian');
INSERT INTO `wp_icl_languages_translations` VALUES (1057,'fa','fa','فارسی');
INSERT INTO `wp_icl_languages_translations` VALUES (1058,'fa','fi','Persia');
INSERT INTO `wp_icl_languages_translations` VALUES (1059,'fa','ga','Persian');
INSERT INTO `wp_icl_languages_translations` VALUES (1060,'fa','he','פרסית');
INSERT INTO `wp_icl_languages_translations` VALUES (1061,'fa','hi','Persian');
INSERT INTO `wp_icl_languages_translations` VALUES (1062,'fa','hr','Perzijski');
INSERT INTO `wp_icl_languages_translations` VALUES (1063,'fa','hu','Perzsa');
INSERT INTO `wp_icl_languages_translations` VALUES (1064,'fa','hy','Persian');
INSERT INTO `wp_icl_languages_translations` VALUES (1065,'fa','id','Persian');
INSERT INTO `wp_icl_languages_translations` VALUES (1066,'fa','is','Persian');
INSERT INTO `wp_icl_languages_translations` VALUES (1067,'fa','it','Persiano');
INSERT INTO `wp_icl_languages_translations` VALUES (1068,'fa','ja','ペルシア語');
INSERT INTO `wp_icl_languages_translations` VALUES (1069,'fa','ko','페르시아어');
INSERT INTO `wp_icl_languages_translations` VALUES (1070,'fa','ku','Persian');
INSERT INTO `wp_icl_languages_translations` VALUES (1071,'fa','lv','Persian');
INSERT INTO `wp_icl_languages_translations` VALUES (1072,'fa','lt','Persian');
INSERT INTO `wp_icl_languages_translations` VALUES (1073,'fa','mk','Persian');
INSERT INTO `wp_icl_languages_translations` VALUES (1074,'fa','mt','Persian');
INSERT INTO `wp_icl_languages_translations` VALUES (1075,'fa','mn','Persian');
INSERT INTO `wp_icl_languages_translations` VALUES (1076,'fa','ne','Persian');
INSERT INTO `wp_icl_languages_translations` VALUES (1077,'fa','nl','Perzisch');
INSERT INTO `wp_icl_languages_translations` VALUES (1078,'fa','no','Persisk');
INSERT INTO `wp_icl_languages_translations` VALUES (1079,'fa','pa','Persian');
INSERT INTO `wp_icl_languages_translations` VALUES (1080,'fa','pl','Perski');
INSERT INTO `wp_icl_languages_translations` VALUES (1081,'fa','pt-pt','Persa');
INSERT INTO `wp_icl_languages_translations` VALUES (1082,'fa','pt-br','Persa');
INSERT INTO `wp_icl_languages_translations` VALUES (1083,'fa','qu','Persian');
INSERT INTO `wp_icl_languages_translations` VALUES (1084,'fa','ro','Persană');
INSERT INTO `wp_icl_languages_translations` VALUES (1085,'fa','ru','Персидский');
INSERT INTO `wp_icl_languages_translations` VALUES (1086,'fa','sl','Perzijski');
INSERT INTO `wp_icl_languages_translations` VALUES (1087,'fa','so','Persian');
INSERT INTO `wp_icl_languages_translations` VALUES (1088,'fa','sq','Persian');
INSERT INTO `wp_icl_languages_translations` VALUES (1089,'fa','sr','персијски');
INSERT INTO `wp_icl_languages_translations` VALUES (1090,'fa','sv','Persiska');
INSERT INTO `wp_icl_languages_translations` VALUES (1091,'fa','ta','Persian');
INSERT INTO `wp_icl_languages_translations` VALUES (1092,'fa','th','เปอร์เซียน');
INSERT INTO `wp_icl_languages_translations` VALUES (1093,'fa','tr','Farsça');
INSERT INTO `wp_icl_languages_translations` VALUES (1094,'fa','uk','Persian');
INSERT INTO `wp_icl_languages_translations` VALUES (1095,'fa','ur','Persian');
INSERT INTO `wp_icl_languages_translations` VALUES (1096,'fa','uz','Persian');
INSERT INTO `wp_icl_languages_translations` VALUES (1097,'fa','vi','Persian');
INSERT INTO `wp_icl_languages_translations` VALUES (1098,'fa','yi','Persian');
INSERT INTO `wp_icl_languages_translations` VALUES (1099,'fa','zh-hans','波斯语');
INSERT INTO `wp_icl_languages_translations` VALUES (1100,'fa','zu','Persian');
INSERT INTO `wp_icl_languages_translations` VALUES (1101,'fa','zh-hant','波斯語');
INSERT INTO `wp_icl_languages_translations` VALUES (1102,'fa','ms','Persian');
INSERT INTO `wp_icl_languages_translations` VALUES (1103,'fa','gl','Persian');
INSERT INTO `wp_icl_languages_translations` VALUES (1104,'fa','bn','Persian');
INSERT INTO `wp_icl_languages_translations` VALUES (1105,'fa','az','Persian');
INSERT INTO `wp_icl_languages_translations` VALUES (1106,'fi','en','Finnish');
INSERT INTO `wp_icl_languages_translations` VALUES (1107,'fi','es','Finlandés');
INSERT INTO `wp_icl_languages_translations` VALUES (1108,'fi','de','Finnisch');
INSERT INTO `wp_icl_languages_translations` VALUES (1109,'fi','fr','Finnois');
INSERT INTO `wp_icl_languages_translations` VALUES (1110,'fi','ar','الفنلندية');
INSERT INTO `wp_icl_languages_translations` VALUES (1111,'fi','bs','Finnish');
INSERT INTO `wp_icl_languages_translations` VALUES (1112,'fi','bg','Фински');
INSERT INTO `wp_icl_languages_translations` VALUES (1113,'fi','ca','Finnish');
INSERT INTO `wp_icl_languages_translations` VALUES (1114,'fi','cs','Finský');
INSERT INTO `wp_icl_languages_translations` VALUES (1115,'fi','sk','Fínština');
INSERT INTO `wp_icl_languages_translations` VALUES (1116,'fi','cy','Finnish');
INSERT INTO `wp_icl_languages_translations` VALUES (1117,'fi','da','Finnish');
INSERT INTO `wp_icl_languages_translations` VALUES (1118,'fi','el','Φινλανδικά');
INSERT INTO `wp_icl_languages_translations` VALUES (1119,'fi','eo','Finnish');
INSERT INTO `wp_icl_languages_translations` VALUES (1120,'fi','et','Finnish');
INSERT INTO `wp_icl_languages_translations` VALUES (1121,'fi','eu','Finnish');
INSERT INTO `wp_icl_languages_translations` VALUES (1122,'fi','fa','Finnish');
INSERT INTO `wp_icl_languages_translations` VALUES (1123,'fi','fi','Suomi');
INSERT INTO `wp_icl_languages_translations` VALUES (1124,'fi','ga','Finnish');
INSERT INTO `wp_icl_languages_translations` VALUES (1125,'fi','he','פינית');
INSERT INTO `wp_icl_languages_translations` VALUES (1126,'fi','hi','Finnish');
INSERT INTO `wp_icl_languages_translations` VALUES (1127,'fi','hr','Finski');
INSERT INTO `wp_icl_languages_translations` VALUES (1128,'fi','hu','Finn');
INSERT INTO `wp_icl_languages_translations` VALUES (1129,'fi','hy','Finnish');
INSERT INTO `wp_icl_languages_translations` VALUES (1130,'fi','id','Finnish');
INSERT INTO `wp_icl_languages_translations` VALUES (1131,'fi','is','Finnish');
INSERT INTO `wp_icl_languages_translations` VALUES (1132,'fi','it','Finlandese');
INSERT INTO `wp_icl_languages_translations` VALUES (1133,'fi','ja','フィンランド語');
INSERT INTO `wp_icl_languages_translations` VALUES (1134,'fi','ko','핀란드어');
INSERT INTO `wp_icl_languages_translations` VALUES (1135,'fi','ku','Finnish');
INSERT INTO `wp_icl_languages_translations` VALUES (1136,'fi','lv','Finnish');
INSERT INTO `wp_icl_languages_translations` VALUES (1137,'fi','lt','Finnish');
INSERT INTO `wp_icl_languages_translations` VALUES (1138,'fi','mk','Finnish');
INSERT INTO `wp_icl_languages_translations` VALUES (1139,'fi','mt','Finnish');
INSERT INTO `wp_icl_languages_translations` VALUES (1140,'fi','mn','Finnish');
INSERT INTO `wp_icl_languages_translations` VALUES (1141,'fi','ne','Finnish');
INSERT INTO `wp_icl_languages_translations` VALUES (1142,'fi','nl','Fins');
INSERT INTO `wp_icl_languages_translations` VALUES (1143,'fi','no','Finsk');
INSERT INTO `wp_icl_languages_translations` VALUES (1144,'fi','pa','Finnish');
INSERT INTO `wp_icl_languages_translations` VALUES (1145,'fi','pl','Fiński');
INSERT INTO `wp_icl_languages_translations` VALUES (1146,'fi','pt-pt','Finlandês');
INSERT INTO `wp_icl_languages_translations` VALUES (1147,'fi','pt-br','Finlandês');
INSERT INTO `wp_icl_languages_translations` VALUES (1148,'fi','qu','Finnish');
INSERT INTO `wp_icl_languages_translations` VALUES (1149,'fi','ro','Finlandeză');
INSERT INTO `wp_icl_languages_translations` VALUES (1150,'fi','ru','Финский');
INSERT INTO `wp_icl_languages_translations` VALUES (1151,'fi','sl','Finski');
INSERT INTO `wp_icl_languages_translations` VALUES (1152,'fi','so','Finnish');
INSERT INTO `wp_icl_languages_translations` VALUES (1153,'fi','sq','Finnish');
INSERT INTO `wp_icl_languages_translations` VALUES (1154,'fi','sr','фински');
INSERT INTO `wp_icl_languages_translations` VALUES (1155,'fi','sv','Finska');
INSERT INTO `wp_icl_languages_translations` VALUES (1156,'fi','ta','Finnish');
INSERT INTO `wp_icl_languages_translations` VALUES (1157,'fi','th','ฟินนิช');
INSERT INTO `wp_icl_languages_translations` VALUES (1158,'fi','tr','Fince');
INSERT INTO `wp_icl_languages_translations` VALUES (1159,'fi','uk','Finnish');
INSERT INTO `wp_icl_languages_translations` VALUES (1160,'fi','ur','Finnish');
INSERT INTO `wp_icl_languages_translations` VALUES (1161,'fi','uz','Finnish');
INSERT INTO `wp_icl_languages_translations` VALUES (1162,'fi','vi','Finnish');
INSERT INTO `wp_icl_languages_translations` VALUES (1163,'fi','yi','Finnish');
INSERT INTO `wp_icl_languages_translations` VALUES (1164,'fi','zh-hans','芬兰语');
INSERT INTO `wp_icl_languages_translations` VALUES (1165,'fi','zu','Finnish');
INSERT INTO `wp_icl_languages_translations` VALUES (1166,'fi','zh-hant','芬蘭語');
INSERT INTO `wp_icl_languages_translations` VALUES (1167,'fi','ms','Finnish');
INSERT INTO `wp_icl_languages_translations` VALUES (1168,'fi','gl','Finnish');
INSERT INTO `wp_icl_languages_translations` VALUES (1169,'fi','bn','Finnish');
INSERT INTO `wp_icl_languages_translations` VALUES (1170,'fi','az','Finnish');
INSERT INTO `wp_icl_languages_translations` VALUES (1171,'ga','en','Irish');
INSERT INTO `wp_icl_languages_translations` VALUES (1172,'ga','es','Irlandés');
INSERT INTO `wp_icl_languages_translations` VALUES (1173,'ga','de','Irisch');
INSERT INTO `wp_icl_languages_translations` VALUES (1174,'ga','fr','Irlandais');
INSERT INTO `wp_icl_languages_translations` VALUES (1175,'ga','ar','الأيرلندية');
INSERT INTO `wp_icl_languages_translations` VALUES (1176,'ga','bs','Irish');
INSERT INTO `wp_icl_languages_translations` VALUES (1177,'ga','bg','Ирландски');
INSERT INTO `wp_icl_languages_translations` VALUES (1178,'ga','ca','Irish');
INSERT INTO `wp_icl_languages_translations` VALUES (1179,'ga','cs','Irský');
INSERT INTO `wp_icl_languages_translations` VALUES (1180,'ga','sk','Írština');
INSERT INTO `wp_icl_languages_translations` VALUES (1181,'ga','cy','Irish');
INSERT INTO `wp_icl_languages_translations` VALUES (1182,'ga','da','Irish');
INSERT INTO `wp_icl_languages_translations` VALUES (1183,'ga','el','Ιρλανδικά');
INSERT INTO `wp_icl_languages_translations` VALUES (1184,'ga','eo','Irish');
INSERT INTO `wp_icl_languages_translations` VALUES (1185,'ga','et','Irish');
INSERT INTO `wp_icl_languages_translations` VALUES (1186,'ga','eu','Irish');
INSERT INTO `wp_icl_languages_translations` VALUES (1187,'ga','fa','Irish');
INSERT INTO `wp_icl_languages_translations` VALUES (1188,'ga','fi','Iiri');
INSERT INTO `wp_icl_languages_translations` VALUES (1189,'ga','ga','Gaeilge');
INSERT INTO `wp_icl_languages_translations` VALUES (1190,'ga','he','אירית');
INSERT INTO `wp_icl_languages_translations` VALUES (1191,'ga','hi','Irish');
INSERT INTO `wp_icl_languages_translations` VALUES (1192,'ga','hr','Irski');
INSERT INTO `wp_icl_languages_translations` VALUES (1193,'ga','hu','ír');
INSERT INTO `wp_icl_languages_translations` VALUES (1194,'ga','hy','Irish');
INSERT INTO `wp_icl_languages_translations` VALUES (1195,'ga','id','Irish');
INSERT INTO `wp_icl_languages_translations` VALUES (1196,'ga','is','Irish');
INSERT INTO `wp_icl_languages_translations` VALUES (1197,'ga','it','Irlandese');
INSERT INTO `wp_icl_languages_translations` VALUES (1198,'ga','ja','アイルランド語');
INSERT INTO `wp_icl_languages_translations` VALUES (1199,'ga','ko','아일랜드어');
INSERT INTO `wp_icl_languages_translations` VALUES (1200,'ga','ku','Irish');
INSERT INTO `wp_icl_languages_translations` VALUES (1201,'ga','lv','Irish');
INSERT INTO `wp_icl_languages_translations` VALUES (1202,'ga','lt','Irish');
INSERT INTO `wp_icl_languages_translations` VALUES (1203,'ga','mk','Irish');
INSERT INTO `wp_icl_languages_translations` VALUES (1204,'ga','mt','Irish');
INSERT INTO `wp_icl_languages_translations` VALUES (1205,'ga','mn','Irish');
INSERT INTO `wp_icl_languages_translations` VALUES (1206,'ga','ne','Irish');
INSERT INTO `wp_icl_languages_translations` VALUES (1207,'ga','nl','Iers');
INSERT INTO `wp_icl_languages_translations` VALUES (1208,'ga','no','Irish');
INSERT INTO `wp_icl_languages_translations` VALUES (1209,'ga','pa','Irish');
INSERT INTO `wp_icl_languages_translations` VALUES (1210,'ga','pl','Irlandzki');
INSERT INTO `wp_icl_languages_translations` VALUES (1211,'ga','pt-pt','Irlandês');
INSERT INTO `wp_icl_languages_translations` VALUES (1212,'ga','pt-br','Irlandês');
INSERT INTO `wp_icl_languages_translations` VALUES (1213,'ga','qu','Irish');
INSERT INTO `wp_icl_languages_translations` VALUES (1214,'ga','ro','Irlandeză');
INSERT INTO `wp_icl_languages_translations` VALUES (1215,'ga','ru','Ирландский');
INSERT INTO `wp_icl_languages_translations` VALUES (1216,'ga','sl','Irski');
INSERT INTO `wp_icl_languages_translations` VALUES (1217,'ga','so','Irish');
INSERT INTO `wp_icl_languages_translations` VALUES (1218,'ga','sq','Irish');
INSERT INTO `wp_icl_languages_translations` VALUES (1219,'ga','sr','ирски');
INSERT INTO `wp_icl_languages_translations` VALUES (1220,'ga','sv','Irländska');
INSERT INTO `wp_icl_languages_translations` VALUES (1221,'ga','ta','Irish');
INSERT INTO `wp_icl_languages_translations` VALUES (1222,'ga','th','ไอริช');
INSERT INTO `wp_icl_languages_translations` VALUES (1223,'ga','tr','İrlanda dili');
INSERT INTO `wp_icl_languages_translations` VALUES (1224,'ga','uk','Irish');
INSERT INTO `wp_icl_languages_translations` VALUES (1225,'ga','ur','Irish');
INSERT INTO `wp_icl_languages_translations` VALUES (1226,'ga','uz','Irish');
INSERT INTO `wp_icl_languages_translations` VALUES (1227,'ga','vi','Irish');
INSERT INTO `wp_icl_languages_translations` VALUES (1228,'ga','yi','Irish');
INSERT INTO `wp_icl_languages_translations` VALUES (1229,'ga','zh-hans','爱尔兰语');
INSERT INTO `wp_icl_languages_translations` VALUES (1230,'ga','zu','Irish');
INSERT INTO `wp_icl_languages_translations` VALUES (1231,'ga','zh-hant','愛爾蘭語');
INSERT INTO `wp_icl_languages_translations` VALUES (1232,'ga','ms','Irish');
INSERT INTO `wp_icl_languages_translations` VALUES (1233,'ga','gl','Irish');
INSERT INTO `wp_icl_languages_translations` VALUES (1234,'ga','bn','Irish');
INSERT INTO `wp_icl_languages_translations` VALUES (1235,'ga','az','Irish');
INSERT INTO `wp_icl_languages_translations` VALUES (1236,'he','en','Hebrew');
INSERT INTO `wp_icl_languages_translations` VALUES (1237,'he','es','Hebreo');
INSERT INTO `wp_icl_languages_translations` VALUES (1238,'he','de','Hebräisch');
INSERT INTO `wp_icl_languages_translations` VALUES (1239,'he','fr','Hébreu');
INSERT INTO `wp_icl_languages_translations` VALUES (1240,'he','ar','العبرية');
INSERT INTO `wp_icl_languages_translations` VALUES (1241,'he','bs','Hebrew');
INSERT INTO `wp_icl_languages_translations` VALUES (1242,'he','bg','Иврит');
INSERT INTO `wp_icl_languages_translations` VALUES (1243,'he','ca','Hebrew');
INSERT INTO `wp_icl_languages_translations` VALUES (1244,'he','cs','Hebrejština');
INSERT INTO `wp_icl_languages_translations` VALUES (1245,'he','sk','Hebrejčina');
INSERT INTO `wp_icl_languages_translations` VALUES (1246,'he','cy','Hebrew');
INSERT INTO `wp_icl_languages_translations` VALUES (1247,'he','da','Hebrew');
INSERT INTO `wp_icl_languages_translations` VALUES (1248,'he','el','Εβραϊκά');
INSERT INTO `wp_icl_languages_translations` VALUES (1249,'he','eo','Hebrew');
INSERT INTO `wp_icl_languages_translations` VALUES (1250,'he','et','Hebrew');
INSERT INTO `wp_icl_languages_translations` VALUES (1251,'he','eu','Hebrew');
INSERT INTO `wp_icl_languages_translations` VALUES (1252,'he','fa','Hebrew');
INSERT INTO `wp_icl_languages_translations` VALUES (1253,'he','fi','Heprea');
INSERT INTO `wp_icl_languages_translations` VALUES (1254,'he','ga','Hebrew');
INSERT INTO `wp_icl_languages_translations` VALUES (1255,'he','he','עברית');
INSERT INTO `wp_icl_languages_translations` VALUES (1256,'he','hi','Hebrew');
INSERT INTO `wp_icl_languages_translations` VALUES (1257,'he','hr','Hebrejski');
INSERT INTO `wp_icl_languages_translations` VALUES (1258,'he','hu','Héber');
INSERT INTO `wp_icl_languages_translations` VALUES (1259,'he','hy','Hebrew');
INSERT INTO `wp_icl_languages_translations` VALUES (1260,'he','id','Hebrew');
INSERT INTO `wp_icl_languages_translations` VALUES (1261,'he','is','Hebrew');
INSERT INTO `wp_icl_languages_translations` VALUES (1262,'he','it','Ebraico');
INSERT INTO `wp_icl_languages_translations` VALUES (1263,'he','ja','ヘブライ語');
INSERT INTO `wp_icl_languages_translations` VALUES (1264,'he','ko','히브리어');
INSERT INTO `wp_icl_languages_translations` VALUES (1265,'he','ku','Hebrew');
INSERT INTO `wp_icl_languages_translations` VALUES (1266,'he','lv','Hebrew');
INSERT INTO `wp_icl_languages_translations` VALUES (1267,'he','lt','Hebrew');
INSERT INTO `wp_icl_languages_translations` VALUES (1268,'he','mk','Hebrew');
INSERT INTO `wp_icl_languages_translations` VALUES (1269,'he','mt','Hebrew');
INSERT INTO `wp_icl_languages_translations` VALUES (1270,'he','mn','Hebrew');
INSERT INTO `wp_icl_languages_translations` VALUES (1271,'he','ne','Hebrew');
INSERT INTO `wp_icl_languages_translations` VALUES (1272,'he','nl','Hebreeuws');
INSERT INTO `wp_icl_languages_translations` VALUES (1273,'he','no','Hebraisk');
INSERT INTO `wp_icl_languages_translations` VALUES (1274,'he','pa','Hebrew');
INSERT INTO `wp_icl_languages_translations` VALUES (1275,'he','pl','Hebrajski');
INSERT INTO `wp_icl_languages_translations` VALUES (1276,'he','pt-pt','Hebraico');
INSERT INTO `wp_icl_languages_translations` VALUES (1277,'he','pt-br','Hebraico');
INSERT INTO `wp_icl_languages_translations` VALUES (1278,'he','qu','Hebrew');
INSERT INTO `wp_icl_languages_translations` VALUES (1279,'he','ro','Ebraică');
INSERT INTO `wp_icl_languages_translations` VALUES (1280,'he','ru','Иврит');
INSERT INTO `wp_icl_languages_translations` VALUES (1281,'he','sl','Hebrejščina');
INSERT INTO `wp_icl_languages_translations` VALUES (1282,'he','so','Hebrew');
INSERT INTO `wp_icl_languages_translations` VALUES (1283,'he','sq','Hebrew');
INSERT INTO `wp_icl_languages_translations` VALUES (1284,'he','sr','Хебрејски');
INSERT INTO `wp_icl_languages_translations` VALUES (1285,'he','sv','Hebreiska');
INSERT INTO `wp_icl_languages_translations` VALUES (1286,'he','ta','Hebrew');
INSERT INTO `wp_icl_languages_translations` VALUES (1287,'he','th','ฮิบรู');
INSERT INTO `wp_icl_languages_translations` VALUES (1288,'he','tr','İbranice');
INSERT INTO `wp_icl_languages_translations` VALUES (1289,'he','uk','Hebrew');
INSERT INTO `wp_icl_languages_translations` VALUES (1290,'he','ur','Hebrew');
INSERT INTO `wp_icl_languages_translations` VALUES (1291,'he','uz','Hebrew');
INSERT INTO `wp_icl_languages_translations` VALUES (1292,'he','vi','Hebrew');
INSERT INTO `wp_icl_languages_translations` VALUES (1293,'he','yi','Hebrew');
INSERT INTO `wp_icl_languages_translations` VALUES (1294,'he','zh-hans','希伯来语');
INSERT INTO `wp_icl_languages_translations` VALUES (1295,'he','zu','Hebrew');
INSERT INTO `wp_icl_languages_translations` VALUES (1296,'he','zh-hant','希伯來語');
INSERT INTO `wp_icl_languages_translations` VALUES (1297,'he','ms','Hebrew');
INSERT INTO `wp_icl_languages_translations` VALUES (1298,'he','gl','Hebrew');
INSERT INTO `wp_icl_languages_translations` VALUES (1299,'he','bn','Hebrew');
INSERT INTO `wp_icl_languages_translations` VALUES (1300,'he','az','Hebrew');
INSERT INTO `wp_icl_languages_translations` VALUES (1301,'hi','en','Hindi');
INSERT INTO `wp_icl_languages_translations` VALUES (1302,'hi','es','Hindi');
INSERT INTO `wp_icl_languages_translations` VALUES (1303,'hi','de','Hindi');
INSERT INTO `wp_icl_languages_translations` VALUES (1304,'hi','fr','Hindi');
INSERT INTO `wp_icl_languages_translations` VALUES (1305,'hi','ar','الهندية');
INSERT INTO `wp_icl_languages_translations` VALUES (1306,'hi','bs','Hindi');
INSERT INTO `wp_icl_languages_translations` VALUES (1307,'hi','bg','Хинди');
INSERT INTO `wp_icl_languages_translations` VALUES (1308,'hi','ca','Hindi');
INSERT INTO `wp_icl_languages_translations` VALUES (1309,'hi','cs','Hindština');
INSERT INTO `wp_icl_languages_translations` VALUES (1310,'hi','sk','Hindčina');
INSERT INTO `wp_icl_languages_translations` VALUES (1311,'hi','cy','Hindi');
INSERT INTO `wp_icl_languages_translations` VALUES (1312,'hi','da','Hindi');
INSERT INTO `wp_icl_languages_translations` VALUES (1313,'hi','el','Ινδικά');
INSERT INTO `wp_icl_languages_translations` VALUES (1314,'hi','eo','Hindi');
INSERT INTO `wp_icl_languages_translations` VALUES (1315,'hi','et','Hindi');
INSERT INTO `wp_icl_languages_translations` VALUES (1316,'hi','eu','Hindi');
INSERT INTO `wp_icl_languages_translations` VALUES (1317,'hi','fa','Hindi');
INSERT INTO `wp_icl_languages_translations` VALUES (1318,'hi','fi','Hindi');
INSERT INTO `wp_icl_languages_translations` VALUES (1319,'hi','ga','Hindi');
INSERT INTO `wp_icl_languages_translations` VALUES (1320,'hi','he','הודית');
INSERT INTO `wp_icl_languages_translations` VALUES (1321,'hi','hi','हिन्दी');
INSERT INTO `wp_icl_languages_translations` VALUES (1322,'hi','hr','Hindski');
INSERT INTO `wp_icl_languages_translations` VALUES (1323,'hi','hu','Hindi');
INSERT INTO `wp_icl_languages_translations` VALUES (1324,'hi','hy','Hindi');
INSERT INTO `wp_icl_languages_translations` VALUES (1325,'hi','id','Hindi');
INSERT INTO `wp_icl_languages_translations` VALUES (1326,'hi','is','Hindi');
INSERT INTO `wp_icl_languages_translations` VALUES (1327,'hi','it','Hindi');
INSERT INTO `wp_icl_languages_translations` VALUES (1328,'hi','ja','ヒンディー語');
INSERT INTO `wp_icl_languages_translations` VALUES (1329,'hi','ko','힌두어');
INSERT INTO `wp_icl_languages_translations` VALUES (1330,'hi','ku','Hindi');
INSERT INTO `wp_icl_languages_translations` VALUES (1331,'hi','lv','Hindi');
INSERT INTO `wp_icl_languages_translations` VALUES (1332,'hi','lt','Hindi');
INSERT INTO `wp_icl_languages_translations` VALUES (1333,'hi','mk','Hindi');
INSERT INTO `wp_icl_languages_translations` VALUES (1334,'hi','mt','Hindi');
INSERT INTO `wp_icl_languages_translations` VALUES (1335,'hi','mn','Hindi');
INSERT INTO `wp_icl_languages_translations` VALUES (1336,'hi','ne','Hindi');
INSERT INTO `wp_icl_languages_translations` VALUES (1337,'hi','nl','Hindi');
INSERT INTO `wp_icl_languages_translations` VALUES (1338,'hi','no','Hindi');
INSERT INTO `wp_icl_languages_translations` VALUES (1339,'hi','pa','Hindi');
INSERT INTO `wp_icl_languages_translations` VALUES (1340,'hi','pl','Hindi');
INSERT INTO `wp_icl_languages_translations` VALUES (1341,'hi','pt-pt','Hindi');
INSERT INTO `wp_icl_languages_translations` VALUES (1342,'hi','pt-br','Hindi');
INSERT INTO `wp_icl_languages_translations` VALUES (1343,'hi','qu','Hindi');
INSERT INTO `wp_icl_languages_translations` VALUES (1344,'hi','ro','Hindi');
INSERT INTO `wp_icl_languages_translations` VALUES (1345,'hi','ru','Хинди');
INSERT INTO `wp_icl_languages_translations` VALUES (1346,'hi','sl','Hindi');
INSERT INTO `wp_icl_languages_translations` VALUES (1347,'hi','so','Hindi');
INSERT INTO `wp_icl_languages_translations` VALUES (1348,'hi','sq','Hindi');
INSERT INTO `wp_icl_languages_translations` VALUES (1349,'hi','sr','хинди');
INSERT INTO `wp_icl_languages_translations` VALUES (1350,'hi','sv','Hindi');
INSERT INTO `wp_icl_languages_translations` VALUES (1351,'hi','ta','Hindi');
INSERT INTO `wp_icl_languages_translations` VALUES (1352,'hi','th','ฮินดิ');
INSERT INTO `wp_icl_languages_translations` VALUES (1353,'hi','tr','Hintçe');
INSERT INTO `wp_icl_languages_translations` VALUES (1354,'hi','uk','Hindi');
INSERT INTO `wp_icl_languages_translations` VALUES (1355,'hi','ur','Hindi');
INSERT INTO `wp_icl_languages_translations` VALUES (1356,'hi','uz','Hindi');
INSERT INTO `wp_icl_languages_translations` VALUES (1357,'hi','vi','Hindi');
INSERT INTO `wp_icl_languages_translations` VALUES (1358,'hi','yi','Hindi');
INSERT INTO `wp_icl_languages_translations` VALUES (1359,'hi','zh-hans','印地语');
INSERT INTO `wp_icl_languages_translations` VALUES (1360,'hi','zu','Hindi');
INSERT INTO `wp_icl_languages_translations` VALUES (1361,'hi','zh-hant','印地語');
INSERT INTO `wp_icl_languages_translations` VALUES (1362,'hi','ms','Hindi');
INSERT INTO `wp_icl_languages_translations` VALUES (1363,'hi','gl','Hindi');
INSERT INTO `wp_icl_languages_translations` VALUES (1364,'hi','bn','Hindi');
INSERT INTO `wp_icl_languages_translations` VALUES (1365,'hi','az','Hindi');
INSERT INTO `wp_icl_languages_translations` VALUES (1366,'hr','en','Croatian');
INSERT INTO `wp_icl_languages_translations` VALUES (1367,'hr','es','Croata');
INSERT INTO `wp_icl_languages_translations` VALUES (1368,'hr','de','Kroatisch');
INSERT INTO `wp_icl_languages_translations` VALUES (1369,'hr','fr','Croate');
INSERT INTO `wp_icl_languages_translations` VALUES (1370,'hr','ar','الكرواتية');
INSERT INTO `wp_icl_languages_translations` VALUES (1371,'hr','bs','Croatian');
INSERT INTO `wp_icl_languages_translations` VALUES (1372,'hr','bg','Хърватски');
INSERT INTO `wp_icl_languages_translations` VALUES (1373,'hr','ca','Croatian');
INSERT INTO `wp_icl_languages_translations` VALUES (1374,'hr','cs','Chorvatský');
INSERT INTO `wp_icl_languages_translations` VALUES (1375,'hr','sk','Chorvátština');
INSERT INTO `wp_icl_languages_translations` VALUES (1376,'hr','cy','Croatian');
INSERT INTO `wp_icl_languages_translations` VALUES (1377,'hr','da','Croatian');
INSERT INTO `wp_icl_languages_translations` VALUES (1378,'hr','el','Κροατικά');
INSERT INTO `wp_icl_languages_translations` VALUES (1379,'hr','eo','Croatian');
INSERT INTO `wp_icl_languages_translations` VALUES (1380,'hr','et','Croatian');
INSERT INTO `wp_icl_languages_translations` VALUES (1381,'hr','eu','Croatian');
INSERT INTO `wp_icl_languages_translations` VALUES (1382,'hr','fa','Croatian');
INSERT INTO `wp_icl_languages_translations` VALUES (1383,'hr','fi','Kroatia');
INSERT INTO `wp_icl_languages_translations` VALUES (1384,'hr','ga','Croatian');
INSERT INTO `wp_icl_languages_translations` VALUES (1385,'hr','he','קרוטאית');
INSERT INTO `wp_icl_languages_translations` VALUES (1386,'hr','hi','Croatian');
INSERT INTO `wp_icl_languages_translations` VALUES (1387,'hr','hr','Hrvatski');
INSERT INTO `wp_icl_languages_translations` VALUES (1388,'hr','hu','Horvát');
INSERT INTO `wp_icl_languages_translations` VALUES (1389,'hr','hy','Croatian');
INSERT INTO `wp_icl_languages_translations` VALUES (1390,'hr','id','Croatian');
INSERT INTO `wp_icl_languages_translations` VALUES (1391,'hr','is','Croatian');
INSERT INTO `wp_icl_languages_translations` VALUES (1392,'hr','it','Croato');
INSERT INTO `wp_icl_languages_translations` VALUES (1393,'hr','ja','クロアチア語');
INSERT INTO `wp_icl_languages_translations` VALUES (1394,'hr','ko','크로아시아어');
INSERT INTO `wp_icl_languages_translations` VALUES (1395,'hr','ku','Croatian');
INSERT INTO `wp_icl_languages_translations` VALUES (1396,'hr','lv','Croatian');
INSERT INTO `wp_icl_languages_translations` VALUES (1397,'hr','lt','Croatian');
INSERT INTO `wp_icl_languages_translations` VALUES (1398,'hr','mk','Croatian');
INSERT INTO `wp_icl_languages_translations` VALUES (1399,'hr','mt','Croatian');
INSERT INTO `wp_icl_languages_translations` VALUES (1400,'hr','mn','Croatian');
INSERT INTO `wp_icl_languages_translations` VALUES (1401,'hr','ne','Croatian');
INSERT INTO `wp_icl_languages_translations` VALUES (1402,'hr','nl','Kroatisch');
INSERT INTO `wp_icl_languages_translations` VALUES (1403,'hr','no','Kroatisk');
INSERT INTO `wp_icl_languages_translations` VALUES (1404,'hr','pa','Croatian');
INSERT INTO `wp_icl_languages_translations` VALUES (1405,'hr','pl','Chorwacki');
INSERT INTO `wp_icl_languages_translations` VALUES (1406,'hr','pt-pt','Croata');
INSERT INTO `wp_icl_languages_translations` VALUES (1407,'hr','pt-br','Croata');
INSERT INTO `wp_icl_languages_translations` VALUES (1408,'hr','qu','Croatian');
INSERT INTO `wp_icl_languages_translations` VALUES (1409,'hr','ro','Croată');
INSERT INTO `wp_icl_languages_translations` VALUES (1410,'hr','ru','Хорватский');
INSERT INTO `wp_icl_languages_translations` VALUES (1411,'hr','sl','Hrvaški');
INSERT INTO `wp_icl_languages_translations` VALUES (1412,'hr','so','Croatian');
INSERT INTO `wp_icl_languages_translations` VALUES (1413,'hr','sq','Croatian');
INSERT INTO `wp_icl_languages_translations` VALUES (1414,'hr','sr','хрватски');
INSERT INTO `wp_icl_languages_translations` VALUES (1415,'hr','sv','Kroatiska');
INSERT INTO `wp_icl_languages_translations` VALUES (1416,'hr','ta','Croatian');
INSERT INTO `wp_icl_languages_translations` VALUES (1417,'hr','th','โครเอเชีย');
INSERT INTO `wp_icl_languages_translations` VALUES (1418,'hr','tr','Hırvatça');
INSERT INTO `wp_icl_languages_translations` VALUES (1419,'hr','uk','Croatian');
INSERT INTO `wp_icl_languages_translations` VALUES (1420,'hr','ur','Croatian');
INSERT INTO `wp_icl_languages_translations` VALUES (1421,'hr','uz','Croatian');
INSERT INTO `wp_icl_languages_translations` VALUES (1422,'hr','vi','Croatian');
INSERT INTO `wp_icl_languages_translations` VALUES (1423,'hr','yi','Croatian');
INSERT INTO `wp_icl_languages_translations` VALUES (1424,'hr','zh-hans','克罗地亚语');
INSERT INTO `wp_icl_languages_translations` VALUES (1425,'hr','zu','Croatian');
INSERT INTO `wp_icl_languages_translations` VALUES (1426,'hr','zh-hant','克羅地亞語');
INSERT INTO `wp_icl_languages_translations` VALUES (1427,'hr','ms','Croatian');
INSERT INTO `wp_icl_languages_translations` VALUES (1428,'hr','gl','Croatian');
INSERT INTO `wp_icl_languages_translations` VALUES (1429,'hr','bn','Croatian');
INSERT INTO `wp_icl_languages_translations` VALUES (1430,'hr','az','Croatian');
INSERT INTO `wp_icl_languages_translations` VALUES (1431,'hu','en','Hungarian');
INSERT INTO `wp_icl_languages_translations` VALUES (1432,'hu','es','Húngaro');
INSERT INTO `wp_icl_languages_translations` VALUES (1433,'hu','de','Ungarisch');
INSERT INTO `wp_icl_languages_translations` VALUES (1434,'hu','fr','Hongrois');
INSERT INTO `wp_icl_languages_translations` VALUES (1435,'hu','ar','الهنغارية');
INSERT INTO `wp_icl_languages_translations` VALUES (1436,'hu','bs','Hungarian');
INSERT INTO `wp_icl_languages_translations` VALUES (1437,'hu','bg','Унгарски');
INSERT INTO `wp_icl_languages_translations` VALUES (1438,'hu','ca','Hungarian');
INSERT INTO `wp_icl_languages_translations` VALUES (1439,'hu','cs','Maďarština');
INSERT INTO `wp_icl_languages_translations` VALUES (1440,'hu','sk','Maďarčina');
INSERT INTO `wp_icl_languages_translations` VALUES (1441,'hu','cy','Hungarian');
INSERT INTO `wp_icl_languages_translations` VALUES (1442,'hu','da','Hungarian');
INSERT INTO `wp_icl_languages_translations` VALUES (1443,'hu','el','Ουγγρικά');
INSERT INTO `wp_icl_languages_translations` VALUES (1444,'hu','eo','Hungarian');
INSERT INTO `wp_icl_languages_translations` VALUES (1445,'hu','et','Hungarian');
INSERT INTO `wp_icl_languages_translations` VALUES (1446,'hu','eu','Hungarian');
INSERT INTO `wp_icl_languages_translations` VALUES (1447,'hu','fa','Hungarian');
INSERT INTO `wp_icl_languages_translations` VALUES (1448,'hu','fi','Unkari');
INSERT INTO `wp_icl_languages_translations` VALUES (1449,'hu','ga','Hungarian');
INSERT INTO `wp_icl_languages_translations` VALUES (1450,'hu','he','הונגרית');
INSERT INTO `wp_icl_languages_translations` VALUES (1451,'hu','hi','Hungarian');
INSERT INTO `wp_icl_languages_translations` VALUES (1452,'hu','hr','Mađarski');
INSERT INTO `wp_icl_languages_translations` VALUES (1453,'hu','hu','Magyar');
INSERT INTO `wp_icl_languages_translations` VALUES (1454,'hu','hy','Hungarian');
INSERT INTO `wp_icl_languages_translations` VALUES (1455,'hu','id','Hungarian');
INSERT INTO `wp_icl_languages_translations` VALUES (1456,'hu','is','Hungarian');
INSERT INTO `wp_icl_languages_translations` VALUES (1457,'hu','it','Ungherese');
INSERT INTO `wp_icl_languages_translations` VALUES (1458,'hu','ja','ハンガリー語');
INSERT INTO `wp_icl_languages_translations` VALUES (1459,'hu','ko','헝가리어');
INSERT INTO `wp_icl_languages_translations` VALUES (1460,'hu','ku','Hungarian');
INSERT INTO `wp_icl_languages_translations` VALUES (1461,'hu','lv','Hungarian');
INSERT INTO `wp_icl_languages_translations` VALUES (1462,'hu','lt','Hungarian');
INSERT INTO `wp_icl_languages_translations` VALUES (1463,'hu','mk','Hungarian');
INSERT INTO `wp_icl_languages_translations` VALUES (1464,'hu','mt','Hungarian');
INSERT INTO `wp_icl_languages_translations` VALUES (1465,'hu','mn','Hungarian');
INSERT INTO `wp_icl_languages_translations` VALUES (1466,'hu','ne','Hungarian');
INSERT INTO `wp_icl_languages_translations` VALUES (1467,'hu','nl','Hongaars');
INSERT INTO `wp_icl_languages_translations` VALUES (1468,'hu','no','Ungarsk');
INSERT INTO `wp_icl_languages_translations` VALUES (1469,'hu','pa','Hungarian');
INSERT INTO `wp_icl_languages_translations` VALUES (1470,'hu','pl','Węgierski');
INSERT INTO `wp_icl_languages_translations` VALUES (1471,'hu','pt-pt','Húngaro');
INSERT INTO `wp_icl_languages_translations` VALUES (1472,'hu','pt-br','Húngaro');
INSERT INTO `wp_icl_languages_translations` VALUES (1473,'hu','qu','Hungarian');
INSERT INTO `wp_icl_languages_translations` VALUES (1474,'hu','ro','Ungară');
INSERT INTO `wp_icl_languages_translations` VALUES (1475,'hu','ru','Венгерский');
INSERT INTO `wp_icl_languages_translations` VALUES (1476,'hu','sl','Madžarski');
INSERT INTO `wp_icl_languages_translations` VALUES (1477,'hu','so','Hungarian');
INSERT INTO `wp_icl_languages_translations` VALUES (1478,'hu','sq','Hungarian');
INSERT INTO `wp_icl_languages_translations` VALUES (1479,'hu','sr','мађарски');
INSERT INTO `wp_icl_languages_translations` VALUES (1480,'hu','sv','Ungerska');
INSERT INTO `wp_icl_languages_translations` VALUES (1481,'hu','ta','Hungarian');
INSERT INTO `wp_icl_languages_translations` VALUES (1482,'hu','th','ฮังการี');
INSERT INTO `wp_icl_languages_translations` VALUES (1483,'hu','tr','Macarca');
INSERT INTO `wp_icl_languages_translations` VALUES (1484,'hu','uk','Hungarian');
INSERT INTO `wp_icl_languages_translations` VALUES (1485,'hu','ur','Hungarian');
INSERT INTO `wp_icl_languages_translations` VALUES (1486,'hu','uz','Hungarian');
INSERT INTO `wp_icl_languages_translations` VALUES (1487,'hu','vi','Hungarian');
INSERT INTO `wp_icl_languages_translations` VALUES (1488,'hu','yi','Hungarian');
INSERT INTO `wp_icl_languages_translations` VALUES (1489,'hu','zh-hans','匈牙利语');
INSERT INTO `wp_icl_languages_translations` VALUES (1490,'hu','zu','Hungarian');
INSERT INTO `wp_icl_languages_translations` VALUES (1491,'hu','zh-hant','匈牙利語');
INSERT INTO `wp_icl_languages_translations` VALUES (1492,'hu','ms','Hungarian');
INSERT INTO `wp_icl_languages_translations` VALUES (1493,'hu','gl','Hungarian');
INSERT INTO `wp_icl_languages_translations` VALUES (1494,'hu','bn','Hungarian');
INSERT INTO `wp_icl_languages_translations` VALUES (1495,'hu','az','Hungarian');
INSERT INTO `wp_icl_languages_translations` VALUES (1496,'hy','en','Armenian');
INSERT INTO `wp_icl_languages_translations` VALUES (1497,'hy','es','Armenio');
INSERT INTO `wp_icl_languages_translations` VALUES (1498,'hy','de','Armenisch');
INSERT INTO `wp_icl_languages_translations` VALUES (1499,'hy','fr','Arménien');
INSERT INTO `wp_icl_languages_translations` VALUES (1500,'hy','ar','الأرمينية');
INSERT INTO `wp_icl_languages_translations` VALUES (1501,'hy','bs','Armenian');
INSERT INTO `wp_icl_languages_translations` VALUES (1502,'hy','bg','Арменски');
INSERT INTO `wp_icl_languages_translations` VALUES (1503,'hy','ca','Armenian');
INSERT INTO `wp_icl_languages_translations` VALUES (1504,'hy','cs','Arménský');
INSERT INTO `wp_icl_languages_translations` VALUES (1505,'hy','sk','Arménčina');
INSERT INTO `wp_icl_languages_translations` VALUES (1506,'hy','cy','Armenian');
INSERT INTO `wp_icl_languages_translations` VALUES (1507,'hy','da','Armenian');
INSERT INTO `wp_icl_languages_translations` VALUES (1508,'hy','el','Αρμένικα');
INSERT INTO `wp_icl_languages_translations` VALUES (1509,'hy','eo','Armenian');
INSERT INTO `wp_icl_languages_translations` VALUES (1510,'hy','et','Armenian');
INSERT INTO `wp_icl_languages_translations` VALUES (1511,'hy','eu','Armenian');
INSERT INTO `wp_icl_languages_translations` VALUES (1512,'hy','fa','Armenian');
INSERT INTO `wp_icl_languages_translations` VALUES (1513,'hy','fi','Armenia');
INSERT INTO `wp_icl_languages_translations` VALUES (1514,'hy','ga','Armenian');
INSERT INTO `wp_icl_languages_translations` VALUES (1515,'hy','he','ארמנית');
INSERT INTO `wp_icl_languages_translations` VALUES (1516,'hy','hi','Armenian');
INSERT INTO `wp_icl_languages_translations` VALUES (1517,'hy','hr','Armenski');
INSERT INTO `wp_icl_languages_translations` VALUES (1518,'hy','hu','örmény');
INSERT INTO `wp_icl_languages_translations` VALUES (1519,'hy','hy','Հայերեն');
INSERT INTO `wp_icl_languages_translations` VALUES (1520,'hy','id','Armenian');
INSERT INTO `wp_icl_languages_translations` VALUES (1521,'hy','is','Armenian');
INSERT INTO `wp_icl_languages_translations` VALUES (1522,'hy','it','Armeno');
INSERT INTO `wp_icl_languages_translations` VALUES (1523,'hy','ja','アルメニア語');
INSERT INTO `wp_icl_languages_translations` VALUES (1524,'hy','ko','아르메니아어');
INSERT INTO `wp_icl_languages_translations` VALUES (1525,'hy','ku','Armenian');
INSERT INTO `wp_icl_languages_translations` VALUES (1526,'hy','lv','Armenian');
INSERT INTO `wp_icl_languages_translations` VALUES (1527,'hy','lt','Armenian');
INSERT INTO `wp_icl_languages_translations` VALUES (1528,'hy','mk','Armenian');
INSERT INTO `wp_icl_languages_translations` VALUES (1529,'hy','mt','Armenian');
INSERT INTO `wp_icl_languages_translations` VALUES (1530,'hy','mn','Armenian');
INSERT INTO `wp_icl_languages_translations` VALUES (1531,'hy','ne','Armenian');
INSERT INTO `wp_icl_languages_translations` VALUES (1532,'hy','nl','Armeens');
INSERT INTO `wp_icl_languages_translations` VALUES (1533,'hy','no','Armensk');
INSERT INTO `wp_icl_languages_translations` VALUES (1534,'hy','pa','Armenian');
INSERT INTO `wp_icl_languages_translations` VALUES (1535,'hy','pl','Ormiański');
INSERT INTO `wp_icl_languages_translations` VALUES (1536,'hy','pt-pt','Arménio');
INSERT INTO `wp_icl_languages_translations` VALUES (1537,'hy','pt-br','Arménio');
INSERT INTO `wp_icl_languages_translations` VALUES (1538,'hy','qu','Armenian');
INSERT INTO `wp_icl_languages_translations` VALUES (1539,'hy','ro','Armeană');
INSERT INTO `wp_icl_languages_translations` VALUES (1540,'hy','ru','Армянский');
INSERT INTO `wp_icl_languages_translations` VALUES (1541,'hy','sl','Armenski');
INSERT INTO `wp_icl_languages_translations` VALUES (1542,'hy','so','Armenian');
INSERT INTO `wp_icl_languages_translations` VALUES (1543,'hy','sq','Armenian');
INSERT INTO `wp_icl_languages_translations` VALUES (1544,'hy','sr','јерменски');
INSERT INTO `wp_icl_languages_translations` VALUES (1545,'hy','sv','Armeniska');
INSERT INTO `wp_icl_languages_translations` VALUES (1546,'hy','ta','Armenian');
INSERT INTO `wp_icl_languages_translations` VALUES (1547,'hy','th','อาร์เมเนีย');
INSERT INTO `wp_icl_languages_translations` VALUES (1548,'hy','tr','Ermenice');
INSERT INTO `wp_icl_languages_translations` VALUES (1549,'hy','uk','Armenian');
INSERT INTO `wp_icl_languages_translations` VALUES (1550,'hy','ur','Armenian');
INSERT INTO `wp_icl_languages_translations` VALUES (1551,'hy','uz','Armenian');
INSERT INTO `wp_icl_languages_translations` VALUES (1552,'hy','vi','Armenian');
INSERT INTO `wp_icl_languages_translations` VALUES (1553,'hy','yi','Armenian');
INSERT INTO `wp_icl_languages_translations` VALUES (1554,'hy','zh-hans','亚美尼亚语');
INSERT INTO `wp_icl_languages_translations` VALUES (1555,'hy','zu','Armenian');
INSERT INTO `wp_icl_languages_translations` VALUES (1556,'hy','zh-hant','亞美尼亞語');
INSERT INTO `wp_icl_languages_translations` VALUES (1557,'hy','ms','Armenian');
INSERT INTO `wp_icl_languages_translations` VALUES (1558,'hy','gl','Armenian');
INSERT INTO `wp_icl_languages_translations` VALUES (1559,'hy','bn','Armenian');
INSERT INTO `wp_icl_languages_translations` VALUES (1560,'hy','az','Armenian');
INSERT INTO `wp_icl_languages_translations` VALUES (1561,'id','en','Indonesian');
INSERT INTO `wp_icl_languages_translations` VALUES (1562,'id','es','Indonesio');
INSERT INTO `wp_icl_languages_translations` VALUES (1563,'id','de','Indonesisch');
INSERT INTO `wp_icl_languages_translations` VALUES (1564,'id','fr','Indonésien');
INSERT INTO `wp_icl_languages_translations` VALUES (1565,'id','ar','الأندونيسية');
INSERT INTO `wp_icl_languages_translations` VALUES (1566,'id','bs','Indonesian');
INSERT INTO `wp_icl_languages_translations` VALUES (1567,'id','bg','Индонезийски');
INSERT INTO `wp_icl_languages_translations` VALUES (1568,'id','ca','Indonesian');
INSERT INTO `wp_icl_languages_translations` VALUES (1569,'id','cs','Indonéský');
INSERT INTO `wp_icl_languages_translations` VALUES (1570,'id','sk','Indonézčina');
INSERT INTO `wp_icl_languages_translations` VALUES (1571,'id','cy','Indonesian');
INSERT INTO `wp_icl_languages_translations` VALUES (1572,'id','da','Indonesian');
INSERT INTO `wp_icl_languages_translations` VALUES (1573,'id','el','Ινδονησιακά');
INSERT INTO `wp_icl_languages_translations` VALUES (1574,'id','eo','Indonesian');
INSERT INTO `wp_icl_languages_translations` VALUES (1575,'id','et','Indonesian');
INSERT INTO `wp_icl_languages_translations` VALUES (1576,'id','eu','Indonesian');
INSERT INTO `wp_icl_languages_translations` VALUES (1577,'id','fa','Indonesian');
INSERT INTO `wp_icl_languages_translations` VALUES (1578,'id','fi','Indonesia');
INSERT INTO `wp_icl_languages_translations` VALUES (1579,'id','ga','Indonesian');
INSERT INTO `wp_icl_languages_translations` VALUES (1580,'id','he','אינדונזית');
INSERT INTO `wp_icl_languages_translations` VALUES (1581,'id','hi','Indonesian');
INSERT INTO `wp_icl_languages_translations` VALUES (1582,'id','hr','Indonezijski');
INSERT INTO `wp_icl_languages_translations` VALUES (1583,'id','hu','Indonéz');
INSERT INTO `wp_icl_languages_translations` VALUES (1584,'id','hy','Indonesian');
INSERT INTO `wp_icl_languages_translations` VALUES (1585,'id','id','Indonesia');
INSERT INTO `wp_icl_languages_translations` VALUES (1586,'id','is','Indonesian');
INSERT INTO `wp_icl_languages_translations` VALUES (1587,'id','it','Indonesiano');
INSERT INTO `wp_icl_languages_translations` VALUES (1588,'id','ja','インドネシア語');
INSERT INTO `wp_icl_languages_translations` VALUES (1589,'id','ko','인도네시아어');
INSERT INTO `wp_icl_languages_translations` VALUES (1590,'id','ku','Indonesian');
INSERT INTO `wp_icl_languages_translations` VALUES (1591,'id','lv','Indonesian');
INSERT INTO `wp_icl_languages_translations` VALUES (1592,'id','lt','Indonesian');
INSERT INTO `wp_icl_languages_translations` VALUES (1593,'id','mk','Indonesian');
INSERT INTO `wp_icl_languages_translations` VALUES (1594,'id','mt','Indonesian');
INSERT INTO `wp_icl_languages_translations` VALUES (1595,'id','mn','Indonesian');
INSERT INTO `wp_icl_languages_translations` VALUES (1596,'id','ne','Indonesian');
INSERT INTO `wp_icl_languages_translations` VALUES (1597,'id','nl','Indonesisch');
INSERT INTO `wp_icl_languages_translations` VALUES (1598,'id','no','Indonesian');
INSERT INTO `wp_icl_languages_translations` VALUES (1599,'id','pa','Indonesian');
INSERT INTO `wp_icl_languages_translations` VALUES (1600,'id','pl','Indonezyjski');
INSERT INTO `wp_icl_languages_translations` VALUES (1601,'id','pt-pt','Indonésio');
INSERT INTO `wp_icl_languages_translations` VALUES (1602,'id','pt-br','Indonésio');
INSERT INTO `wp_icl_languages_translations` VALUES (1603,'id','qu','Indonesian');
INSERT INTO `wp_icl_languages_translations` VALUES (1604,'id','ro','Indoneziană');
INSERT INTO `wp_icl_languages_translations` VALUES (1605,'id','ru','Индонезийский');
INSERT INTO `wp_icl_languages_translations` VALUES (1606,'id','sl','Indonezijski');
INSERT INTO `wp_icl_languages_translations` VALUES (1607,'id','so','Indonesian');
INSERT INTO `wp_icl_languages_translations` VALUES (1608,'id','sq','Indonesian');
INSERT INTO `wp_icl_languages_translations` VALUES (1609,'id','sr','индонезијски');
INSERT INTO `wp_icl_languages_translations` VALUES (1610,'id','sv','Indonesiska');
INSERT INTO `wp_icl_languages_translations` VALUES (1611,'id','ta','Indonesian');
INSERT INTO `wp_icl_languages_translations` VALUES (1612,'id','th','อินโดนีเซีย');
INSERT INTO `wp_icl_languages_translations` VALUES (1613,'id','tr','Endonezya dili');
INSERT INTO `wp_icl_languages_translations` VALUES (1614,'id','uk','Indonesian');
INSERT INTO `wp_icl_languages_translations` VALUES (1615,'id','ur','Indonesian');
INSERT INTO `wp_icl_languages_translations` VALUES (1616,'id','uz','Indonesian');
INSERT INTO `wp_icl_languages_translations` VALUES (1617,'id','vi','Indonesian');
INSERT INTO `wp_icl_languages_translations` VALUES (1618,'id','yi','Indonesian');
INSERT INTO `wp_icl_languages_translations` VALUES (1619,'id','zh-hans','印度尼西亚语');
INSERT INTO `wp_icl_languages_translations` VALUES (1620,'id','zu','Indonesian');
INSERT INTO `wp_icl_languages_translations` VALUES (1621,'id','zh-hant','印尼語');
INSERT INTO `wp_icl_languages_translations` VALUES (1622,'id','ms','Indonesian');
INSERT INTO `wp_icl_languages_translations` VALUES (1623,'id','gl','Indonesian');
INSERT INTO `wp_icl_languages_translations` VALUES (1624,'id','bn','Indonesian');
INSERT INTO `wp_icl_languages_translations` VALUES (1625,'id','az','Indonesian');
INSERT INTO `wp_icl_languages_translations` VALUES (1626,'is','en','Icelandic');
INSERT INTO `wp_icl_languages_translations` VALUES (1627,'is','es','Islandés');
INSERT INTO `wp_icl_languages_translations` VALUES (1628,'is','de','Isländisch');
INSERT INTO `wp_icl_languages_translations` VALUES (1629,'is','fr','Islandais');
INSERT INTO `wp_icl_languages_translations` VALUES (1630,'is','ar','الأيسلاندية');
INSERT INTO `wp_icl_languages_translations` VALUES (1631,'is','bs','Icelandic');
INSERT INTO `wp_icl_languages_translations` VALUES (1632,'is','bg','Исландски');
INSERT INTO `wp_icl_languages_translations` VALUES (1633,'is','ca','Icelandic');
INSERT INTO `wp_icl_languages_translations` VALUES (1634,'is','cs','Islandský');
INSERT INTO `wp_icl_languages_translations` VALUES (1635,'is','sk','Islančina');
INSERT INTO `wp_icl_languages_translations` VALUES (1636,'is','cy','Icelandic');
INSERT INTO `wp_icl_languages_translations` VALUES (1637,'is','da','Icelandic');
INSERT INTO `wp_icl_languages_translations` VALUES (1638,'is','el','Ισλανδικά');
INSERT INTO `wp_icl_languages_translations` VALUES (1639,'is','eo','Icelandic');
INSERT INTO `wp_icl_languages_translations` VALUES (1640,'is','et','Icelandic');
INSERT INTO `wp_icl_languages_translations` VALUES (1641,'is','eu','Icelandic');
INSERT INTO `wp_icl_languages_translations` VALUES (1642,'is','fa','Icelandic');
INSERT INTO `wp_icl_languages_translations` VALUES (1643,'is','fi','Islanti');
INSERT INTO `wp_icl_languages_translations` VALUES (1644,'is','ga','Icelandic');
INSERT INTO `wp_icl_languages_translations` VALUES (1645,'is','he','איסלנדית');
INSERT INTO `wp_icl_languages_translations` VALUES (1646,'is','hi','Icelandic');
INSERT INTO `wp_icl_languages_translations` VALUES (1647,'is','hr','Islandski');
INSERT INTO `wp_icl_languages_translations` VALUES (1648,'is','hu','Izlandi');
INSERT INTO `wp_icl_languages_translations` VALUES (1649,'is','hy','Icelandic');
INSERT INTO `wp_icl_languages_translations` VALUES (1650,'is','id','Icelandic');
INSERT INTO `wp_icl_languages_translations` VALUES (1651,'is','is','Íslenska');
INSERT INTO `wp_icl_languages_translations` VALUES (1652,'is','it','Islandese');
INSERT INTO `wp_icl_languages_translations` VALUES (1653,'is','ja','アイスランド語');
INSERT INTO `wp_icl_languages_translations` VALUES (1654,'is','ko','아이슬랜드어');
INSERT INTO `wp_icl_languages_translations` VALUES (1655,'is','ku','Icelandic');
INSERT INTO `wp_icl_languages_translations` VALUES (1656,'is','lv','Icelandic');
INSERT INTO `wp_icl_languages_translations` VALUES (1657,'is','lt','Icelandic');
INSERT INTO `wp_icl_languages_translations` VALUES (1658,'is','mk','Icelandic');
INSERT INTO `wp_icl_languages_translations` VALUES (1659,'is','mt','Icelandic');
INSERT INTO `wp_icl_languages_translations` VALUES (1660,'is','mn','Icelandic');
INSERT INTO `wp_icl_languages_translations` VALUES (1661,'is','ne','Icelandic');
INSERT INTO `wp_icl_languages_translations` VALUES (1662,'is','nl','Ijslands');
INSERT INTO `wp_icl_languages_translations` VALUES (1663,'is','no','Islandsk');
INSERT INTO `wp_icl_languages_translations` VALUES (1664,'is','pa','Icelandic');
INSERT INTO `wp_icl_languages_translations` VALUES (1665,'is','pl','Islandzki');
INSERT INTO `wp_icl_languages_translations` VALUES (1666,'is','pt-pt','Islandês');
INSERT INTO `wp_icl_languages_translations` VALUES (1667,'is','pt-br','Islandês');
INSERT INTO `wp_icl_languages_translations` VALUES (1668,'is','qu','Icelandic');
INSERT INTO `wp_icl_languages_translations` VALUES (1669,'is','ro','Islandeză');
INSERT INTO `wp_icl_languages_translations` VALUES (1670,'is','ru','Исландский');
INSERT INTO `wp_icl_languages_translations` VALUES (1671,'is','sl','Islandski');
INSERT INTO `wp_icl_languages_translations` VALUES (1672,'is','so','Icelandic');
INSERT INTO `wp_icl_languages_translations` VALUES (1673,'is','sq','Icelandic');
INSERT INTO `wp_icl_languages_translations` VALUES (1674,'is','sr','исландски');
INSERT INTO `wp_icl_languages_translations` VALUES (1675,'is','sv','Isländska');
INSERT INTO `wp_icl_languages_translations` VALUES (1676,'is','ta','Icelandic');
INSERT INTO `wp_icl_languages_translations` VALUES (1677,'is','th','ไอซ์แลนด์');
INSERT INTO `wp_icl_languages_translations` VALUES (1678,'is','tr','İzlandaca');
INSERT INTO `wp_icl_languages_translations` VALUES (1679,'is','uk','Icelandic');
INSERT INTO `wp_icl_languages_translations` VALUES (1680,'is','ur','Icelandic');
INSERT INTO `wp_icl_languages_translations` VALUES (1681,'is','uz','Icelandic');
INSERT INTO `wp_icl_languages_translations` VALUES (1682,'is','vi','Icelandic');
INSERT INTO `wp_icl_languages_translations` VALUES (1683,'is','yi','Icelandic');
INSERT INTO `wp_icl_languages_translations` VALUES (1684,'is','zh-hans','冰岛语');
INSERT INTO `wp_icl_languages_translations` VALUES (1685,'is','zu','Icelandic');
INSERT INTO `wp_icl_languages_translations` VALUES (1686,'is','zh-hant','冰島語');
INSERT INTO `wp_icl_languages_translations` VALUES (1687,'is','ms','Icelandic');
INSERT INTO `wp_icl_languages_translations` VALUES (1688,'is','gl','Icelandic');
INSERT INTO `wp_icl_languages_translations` VALUES (1689,'is','bn','Icelandic');
INSERT INTO `wp_icl_languages_translations` VALUES (1690,'is','az','Icelandic');
INSERT INTO `wp_icl_languages_translations` VALUES (1691,'it','en','Italian');
INSERT INTO `wp_icl_languages_translations` VALUES (1692,'it','es','Italiano');
INSERT INTO `wp_icl_languages_translations` VALUES (1693,'it','de','Italienisch');
INSERT INTO `wp_icl_languages_translations` VALUES (1694,'it','fr','Italien');
INSERT INTO `wp_icl_languages_translations` VALUES (1695,'it','ar','الإيطالية');
INSERT INTO `wp_icl_languages_translations` VALUES (1696,'it','bs','Italian');
INSERT INTO `wp_icl_languages_translations` VALUES (1697,'it','bg','Италиански');
INSERT INTO `wp_icl_languages_translations` VALUES (1698,'it','ca','Italian');
INSERT INTO `wp_icl_languages_translations` VALUES (1699,'it','cs','Ital');
INSERT INTO `wp_icl_languages_translations` VALUES (1700,'it','sk','Taliančina');
INSERT INTO `wp_icl_languages_translations` VALUES (1701,'it','cy','Italian');
INSERT INTO `wp_icl_languages_translations` VALUES (1702,'it','da','Italian');
INSERT INTO `wp_icl_languages_translations` VALUES (1703,'it','el','Ιταλικά');
INSERT INTO `wp_icl_languages_translations` VALUES (1704,'it','eo','Italian');
INSERT INTO `wp_icl_languages_translations` VALUES (1705,'it','et','Italian');
INSERT INTO `wp_icl_languages_translations` VALUES (1706,'it','eu','Italian');
INSERT INTO `wp_icl_languages_translations` VALUES (1707,'it','fa','Italian');
INSERT INTO `wp_icl_languages_translations` VALUES (1708,'it','fi','Italia');
INSERT INTO `wp_icl_languages_translations` VALUES (1709,'it','ga','Italian');
INSERT INTO `wp_icl_languages_translations` VALUES (1710,'it','he','איטלקית');
INSERT INTO `wp_icl_languages_translations` VALUES (1711,'it','hi','Italian');
INSERT INTO `wp_icl_languages_translations` VALUES (1712,'it','hr','Talijanski');
INSERT INTO `wp_icl_languages_translations` VALUES (1713,'it','hu','Olasz');
INSERT INTO `wp_icl_languages_translations` VALUES (1714,'it','hy','Italian');
INSERT INTO `wp_icl_languages_translations` VALUES (1715,'it','id','Italian');
INSERT INTO `wp_icl_languages_translations` VALUES (1716,'it','is','Italian');
INSERT INTO `wp_icl_languages_translations` VALUES (1717,'it','it','Italiano');
INSERT INTO `wp_icl_languages_translations` VALUES (1718,'it','ja','イタリア語');
INSERT INTO `wp_icl_languages_translations` VALUES (1719,'it','ko','이태리어');
INSERT INTO `wp_icl_languages_translations` VALUES (1720,'it','ku','Italian');
INSERT INTO `wp_icl_languages_translations` VALUES (1721,'it','lv','Italian');
INSERT INTO `wp_icl_languages_translations` VALUES (1722,'it','lt','Italian');
INSERT INTO `wp_icl_languages_translations` VALUES (1723,'it','mk','Italian');
INSERT INTO `wp_icl_languages_translations` VALUES (1724,'it','mt','Italian');
INSERT INTO `wp_icl_languages_translations` VALUES (1725,'it','mn','Italian');
INSERT INTO `wp_icl_languages_translations` VALUES (1726,'it','ne','Italian');
INSERT INTO `wp_icl_languages_translations` VALUES (1727,'it','nl','Italiaans');
INSERT INTO `wp_icl_languages_translations` VALUES (1728,'it','no','Italiensk');
INSERT INTO `wp_icl_languages_translations` VALUES (1729,'it','pa','Italian');
INSERT INTO `wp_icl_languages_translations` VALUES (1730,'it','pl','Włoski');
INSERT INTO `wp_icl_languages_translations` VALUES (1731,'it','pt-pt','Italiano');
INSERT INTO `wp_icl_languages_translations` VALUES (1732,'it','pt-br','Italiano');
INSERT INTO `wp_icl_languages_translations` VALUES (1733,'it','qu','Italian');
INSERT INTO `wp_icl_languages_translations` VALUES (1734,'it','ro','Italiană');
INSERT INTO `wp_icl_languages_translations` VALUES (1735,'it','ru','Итальянский');
INSERT INTO `wp_icl_languages_translations` VALUES (1736,'it','sl','Italijanski');
INSERT INTO `wp_icl_languages_translations` VALUES (1737,'it','so','Italian');
INSERT INTO `wp_icl_languages_translations` VALUES (1738,'it','sq','Italian');
INSERT INTO `wp_icl_languages_translations` VALUES (1739,'it','sr','италијански');
INSERT INTO `wp_icl_languages_translations` VALUES (1740,'it','sv','Italienska');
INSERT INTO `wp_icl_languages_translations` VALUES (1741,'it','ta','Italian');
INSERT INTO `wp_icl_languages_translations` VALUES (1742,'it','th','อิตาลี');
INSERT INTO `wp_icl_languages_translations` VALUES (1743,'it','tr','İtalyanca');
INSERT INTO `wp_icl_languages_translations` VALUES (1744,'it','uk','Italian');
INSERT INTO `wp_icl_languages_translations` VALUES (1745,'it','ur','Italian');
INSERT INTO `wp_icl_languages_translations` VALUES (1746,'it','uz','Italian');
INSERT INTO `wp_icl_languages_translations` VALUES (1747,'it','vi','Italian');
INSERT INTO `wp_icl_languages_translations` VALUES (1748,'it','yi','Italian');
INSERT INTO `wp_icl_languages_translations` VALUES (1749,'it','zh-hans','意大利语');
INSERT INTO `wp_icl_languages_translations` VALUES (1750,'it','zu','Italian');
INSERT INTO `wp_icl_languages_translations` VALUES (1751,'it','zh-hant','義大利語');
INSERT INTO `wp_icl_languages_translations` VALUES (1752,'it','ms','Italian');
INSERT INTO `wp_icl_languages_translations` VALUES (1753,'it','gl','Italian');
INSERT INTO `wp_icl_languages_translations` VALUES (1754,'it','bn','Italian');
INSERT INTO `wp_icl_languages_translations` VALUES (1755,'it','az','Italian');
INSERT INTO `wp_icl_languages_translations` VALUES (1756,'ja','en','Japanese');
INSERT INTO `wp_icl_languages_translations` VALUES (1757,'ja','es','Japonés');
INSERT INTO `wp_icl_languages_translations` VALUES (1758,'ja','de','Japanisch');
INSERT INTO `wp_icl_languages_translations` VALUES (1759,'ja','fr','Japonais');
INSERT INTO `wp_icl_languages_translations` VALUES (1760,'ja','ar','اليابانية');
INSERT INTO `wp_icl_languages_translations` VALUES (1761,'ja','bs','Japanese');
INSERT INTO `wp_icl_languages_translations` VALUES (1762,'ja','bg','Японски');
INSERT INTO `wp_icl_languages_translations` VALUES (1763,'ja','ca','Japanese');
INSERT INTO `wp_icl_languages_translations` VALUES (1764,'ja','cs','Japonský');
INSERT INTO `wp_icl_languages_translations` VALUES (1765,'ja','sk','Japonština');
INSERT INTO `wp_icl_languages_translations` VALUES (1766,'ja','cy','Japanese');
INSERT INTO `wp_icl_languages_translations` VALUES (1767,'ja','da','Japanese');
INSERT INTO `wp_icl_languages_translations` VALUES (1768,'ja','el','Ιαπωνικά');
INSERT INTO `wp_icl_languages_translations` VALUES (1769,'ja','eo','Japanese');
INSERT INTO `wp_icl_languages_translations` VALUES (1770,'ja','et','Japanese');
INSERT INTO `wp_icl_languages_translations` VALUES (1771,'ja','eu','Japanese');
INSERT INTO `wp_icl_languages_translations` VALUES (1772,'ja','fa','Japanese');
INSERT INTO `wp_icl_languages_translations` VALUES (1773,'ja','fi','Japani');
INSERT INTO `wp_icl_languages_translations` VALUES (1774,'ja','ga','Japanese');
INSERT INTO `wp_icl_languages_translations` VALUES (1775,'ja','he','יפנית');
INSERT INTO `wp_icl_languages_translations` VALUES (1776,'ja','hi','Japanese');
INSERT INTO `wp_icl_languages_translations` VALUES (1777,'ja','hr','Japanski');
INSERT INTO `wp_icl_languages_translations` VALUES (1778,'ja','hu','Japán');
INSERT INTO `wp_icl_languages_translations` VALUES (1779,'ja','hy','Japanese');
INSERT INTO `wp_icl_languages_translations` VALUES (1780,'ja','id','Japanese');
INSERT INTO `wp_icl_languages_translations` VALUES (1781,'ja','is','Japanese');
INSERT INTO `wp_icl_languages_translations` VALUES (1782,'ja','it','Giapponese');
INSERT INTO `wp_icl_languages_translations` VALUES (1783,'ja','ja','日本語');
INSERT INTO `wp_icl_languages_translations` VALUES (1784,'ja','ko','일어');
INSERT INTO `wp_icl_languages_translations` VALUES (1785,'ja','ku','Japanese');
INSERT INTO `wp_icl_languages_translations` VALUES (1786,'ja','lv','Japanese');
INSERT INTO `wp_icl_languages_translations` VALUES (1787,'ja','lt','Japanese');
INSERT INTO `wp_icl_languages_translations` VALUES (1788,'ja','mk','Japanese');
INSERT INTO `wp_icl_languages_translations` VALUES (1789,'ja','mt','Japanese');
INSERT INTO `wp_icl_languages_translations` VALUES (1790,'ja','mn','Japanese');
INSERT INTO `wp_icl_languages_translations` VALUES (1791,'ja','ne','Japanese');
INSERT INTO `wp_icl_languages_translations` VALUES (1792,'ja','nl','Japans');
INSERT INTO `wp_icl_languages_translations` VALUES (1793,'ja','no','Japansk');
INSERT INTO `wp_icl_languages_translations` VALUES (1794,'ja','pa','Japanese');
INSERT INTO `wp_icl_languages_translations` VALUES (1795,'ja','pl','Japoński');
INSERT INTO `wp_icl_languages_translations` VALUES (1796,'ja','pt-pt','Japonês');
INSERT INTO `wp_icl_languages_translations` VALUES (1797,'ja','pt-br','Japonês');
INSERT INTO `wp_icl_languages_translations` VALUES (1798,'ja','qu','Japanese');
INSERT INTO `wp_icl_languages_translations` VALUES (1799,'ja','ro','Japoneză');
INSERT INTO `wp_icl_languages_translations` VALUES (1800,'ja','ru','Японский');
INSERT INTO `wp_icl_languages_translations` VALUES (1801,'ja','sl','Japonski');
INSERT INTO `wp_icl_languages_translations` VALUES (1802,'ja','so','Japanese');
INSERT INTO `wp_icl_languages_translations` VALUES (1803,'ja','sq','Japanese');
INSERT INTO `wp_icl_languages_translations` VALUES (1804,'ja','sr','јапански');
INSERT INTO `wp_icl_languages_translations` VALUES (1805,'ja','sv','Japanska');
INSERT INTO `wp_icl_languages_translations` VALUES (1806,'ja','ta','Japanese');
INSERT INTO `wp_icl_languages_translations` VALUES (1807,'ja','th','ญี่ปุ่น');
INSERT INTO `wp_icl_languages_translations` VALUES (1808,'ja','tr','Japonca');
INSERT INTO `wp_icl_languages_translations` VALUES (1809,'ja','uk','Japanese');
INSERT INTO `wp_icl_languages_translations` VALUES (1810,'ja','ur','Japanese');
INSERT INTO `wp_icl_languages_translations` VALUES (1811,'ja','uz','Japanese');
INSERT INTO `wp_icl_languages_translations` VALUES (1812,'ja','vi','Japanese');
INSERT INTO `wp_icl_languages_translations` VALUES (1813,'ja','yi','Japanese');
INSERT INTO `wp_icl_languages_translations` VALUES (1814,'ja','zh-hans','日语');
INSERT INTO `wp_icl_languages_translations` VALUES (1815,'ja','zu','Japanese');
INSERT INTO `wp_icl_languages_translations` VALUES (1816,'ja','zh-hant','日語');
INSERT INTO `wp_icl_languages_translations` VALUES (1817,'ja','ms','Japanese');
INSERT INTO `wp_icl_languages_translations` VALUES (1818,'ja','gl','Japanese');
INSERT INTO `wp_icl_languages_translations` VALUES (1819,'ja','bn','Japanese');
INSERT INTO `wp_icl_languages_translations` VALUES (1820,'ja','az','Japanese');
INSERT INTO `wp_icl_languages_translations` VALUES (1821,'ko','en','Korean');
INSERT INTO `wp_icl_languages_translations` VALUES (1822,'ko','es','Coreano');
INSERT INTO `wp_icl_languages_translations` VALUES (1823,'ko','de','Koreanisch');
INSERT INTO `wp_icl_languages_translations` VALUES (1824,'ko','fr','Coréen');
INSERT INTO `wp_icl_languages_translations` VALUES (1825,'ko','ar','الكورية');
INSERT INTO `wp_icl_languages_translations` VALUES (1826,'ko','bs','Korean');
INSERT INTO `wp_icl_languages_translations` VALUES (1827,'ko','bg','Корейски');
INSERT INTO `wp_icl_languages_translations` VALUES (1828,'ko','ca','Korean');
INSERT INTO `wp_icl_languages_translations` VALUES (1829,'ko','cs','Korejský');
INSERT INTO `wp_icl_languages_translations` VALUES (1830,'ko','sk','Kórejčina');
INSERT INTO `wp_icl_languages_translations` VALUES (1831,'ko','cy','Korean');
INSERT INTO `wp_icl_languages_translations` VALUES (1832,'ko','da','Korean');
INSERT INTO `wp_icl_languages_translations` VALUES (1833,'ko','el','Κορεάτικα');
INSERT INTO `wp_icl_languages_translations` VALUES (1834,'ko','eo','Korean');
INSERT INTO `wp_icl_languages_translations` VALUES (1835,'ko','et','Korean');
INSERT INTO `wp_icl_languages_translations` VALUES (1836,'ko','eu','Korean');
INSERT INTO `wp_icl_languages_translations` VALUES (1837,'ko','fa','Korean');
INSERT INTO `wp_icl_languages_translations` VALUES (1838,'ko','fi','Korea');
INSERT INTO `wp_icl_languages_translations` VALUES (1839,'ko','ga','Korean');
INSERT INTO `wp_icl_languages_translations` VALUES (1840,'ko','he','קוראנית');
INSERT INTO `wp_icl_languages_translations` VALUES (1841,'ko','hi','Korean');
INSERT INTO `wp_icl_languages_translations` VALUES (1842,'ko','hr','Korejski');
INSERT INTO `wp_icl_languages_translations` VALUES (1843,'ko','hu','Koreai');
INSERT INTO `wp_icl_languages_translations` VALUES (1844,'ko','hy','Korean');
INSERT INTO `wp_icl_languages_translations` VALUES (1845,'ko','id','Korean');
INSERT INTO `wp_icl_languages_translations` VALUES (1846,'ko','is','Korean');
INSERT INTO `wp_icl_languages_translations` VALUES (1847,'ko','it','Coreano');
INSERT INTO `wp_icl_languages_translations` VALUES (1848,'ko','ja','韓国語');
INSERT INTO `wp_icl_languages_translations` VALUES (1849,'ko','ko','한국어');
INSERT INTO `wp_icl_languages_translations` VALUES (1850,'ko','ku','Korean');
INSERT INTO `wp_icl_languages_translations` VALUES (1851,'ko','lv','Korean');
INSERT INTO `wp_icl_languages_translations` VALUES (1852,'ko','lt','Korean');
INSERT INTO `wp_icl_languages_translations` VALUES (1853,'ko','mk','Korean');
INSERT INTO `wp_icl_languages_translations` VALUES (1854,'ko','mt','Korean');
INSERT INTO `wp_icl_languages_translations` VALUES (1855,'ko','mn','Korean');
INSERT INTO `wp_icl_languages_translations` VALUES (1856,'ko','ne','Korean');
INSERT INTO `wp_icl_languages_translations` VALUES (1857,'ko','nl','Koreaans');
INSERT INTO `wp_icl_languages_translations` VALUES (1858,'ko','no','Koreanske');
INSERT INTO `wp_icl_languages_translations` VALUES (1859,'ko','pa','Korean');
INSERT INTO `wp_icl_languages_translations` VALUES (1860,'ko','pl','Koreański');
INSERT INTO `wp_icl_languages_translations` VALUES (1861,'ko','pt-pt','Coreano');
INSERT INTO `wp_icl_languages_translations` VALUES (1862,'ko','pt-br','Coreano');
INSERT INTO `wp_icl_languages_translations` VALUES (1863,'ko','qu','Korean');
INSERT INTO `wp_icl_languages_translations` VALUES (1864,'ko','ro','Coreană');
INSERT INTO `wp_icl_languages_translations` VALUES (1865,'ko','ru','Корейский');
INSERT INTO `wp_icl_languages_translations` VALUES (1866,'ko','sl','Korejski');
INSERT INTO `wp_icl_languages_translations` VALUES (1867,'ko','so','Korean');
INSERT INTO `wp_icl_languages_translations` VALUES (1868,'ko','sq','Korean');
INSERT INTO `wp_icl_languages_translations` VALUES (1869,'ko','sr','корејски');
INSERT INTO `wp_icl_languages_translations` VALUES (1870,'ko','sv','Koreanska');
INSERT INTO `wp_icl_languages_translations` VALUES (1871,'ko','ta','Korean');
INSERT INTO `wp_icl_languages_translations` VALUES (1872,'ko','th','เกาหลี');
INSERT INTO `wp_icl_languages_translations` VALUES (1873,'ko','tr','Kore dili');
INSERT INTO `wp_icl_languages_translations` VALUES (1874,'ko','uk','Korean');
INSERT INTO `wp_icl_languages_translations` VALUES (1875,'ko','ur','Korean');
INSERT INTO `wp_icl_languages_translations` VALUES (1876,'ko','uz','Korean');
INSERT INTO `wp_icl_languages_translations` VALUES (1877,'ko','vi','Korean');
INSERT INTO `wp_icl_languages_translations` VALUES (1878,'ko','yi','Korean');
INSERT INTO `wp_icl_languages_translations` VALUES (1879,'ko','zh-hans','韩语');
INSERT INTO `wp_icl_languages_translations` VALUES (1880,'ko','zu','Korean');
INSERT INTO `wp_icl_languages_translations` VALUES (1881,'ko','zh-hant','韓語');
INSERT INTO `wp_icl_languages_translations` VALUES (1882,'ko','ms','Korean');
INSERT INTO `wp_icl_languages_translations` VALUES (1883,'ko','gl','Korean');
INSERT INTO `wp_icl_languages_translations` VALUES (1884,'ko','bn','Korean');
INSERT INTO `wp_icl_languages_translations` VALUES (1885,'ko','az','Korean');
INSERT INTO `wp_icl_languages_translations` VALUES (1886,'ku','en','Kurdish');
INSERT INTO `wp_icl_languages_translations` VALUES (1887,'ku','es','Kurdo');
INSERT INTO `wp_icl_languages_translations` VALUES (1888,'ku','de','Kurdisch');
INSERT INTO `wp_icl_languages_translations` VALUES (1889,'ku','fr','Kurde');
INSERT INTO `wp_icl_languages_translations` VALUES (1890,'ku','ar','الكردية');
INSERT INTO `wp_icl_languages_translations` VALUES (1891,'ku','bs','Kurdish');
INSERT INTO `wp_icl_languages_translations` VALUES (1892,'ku','bg','Кюрдски');
INSERT INTO `wp_icl_languages_translations` VALUES (1893,'ku','ca','Kurdish');
INSERT INTO `wp_icl_languages_translations` VALUES (1894,'ku','cs','Kurdský');
INSERT INTO `wp_icl_languages_translations` VALUES (1895,'ku','sk','Kurdština');
INSERT INTO `wp_icl_languages_translations` VALUES (1896,'ku','cy','Kurdish');
INSERT INTO `wp_icl_languages_translations` VALUES (1897,'ku','da','Kurdish');
INSERT INTO `wp_icl_languages_translations` VALUES (1898,'ku','el','Κουρδικά');
INSERT INTO `wp_icl_languages_translations` VALUES (1899,'ku','eo','Kurdish');
INSERT INTO `wp_icl_languages_translations` VALUES (1900,'ku','et','Kurdish');
INSERT INTO `wp_icl_languages_translations` VALUES (1901,'ku','eu','Kurdish');
INSERT INTO `wp_icl_languages_translations` VALUES (1902,'ku','fa','Kurdish');
INSERT INTO `wp_icl_languages_translations` VALUES (1903,'ku','fi','Kurdi');
INSERT INTO `wp_icl_languages_translations` VALUES (1904,'ku','ga','Kurdish');
INSERT INTO `wp_icl_languages_translations` VALUES (1905,'ku','he','כורדית');
INSERT INTO `wp_icl_languages_translations` VALUES (1906,'ku','hi','Kurdish');
INSERT INTO `wp_icl_languages_translations` VALUES (1907,'ku','hr','Kurdski');
INSERT INTO `wp_icl_languages_translations` VALUES (1908,'ku','hu','Kurd');
INSERT INTO `wp_icl_languages_translations` VALUES (1909,'ku','hy','Kurdish');
INSERT INTO `wp_icl_languages_translations` VALUES (1910,'ku','id','Kurdish');
INSERT INTO `wp_icl_languages_translations` VALUES (1911,'ku','is','Kurdish');
INSERT INTO `wp_icl_languages_translations` VALUES (1912,'ku','it','Curdo');
INSERT INTO `wp_icl_languages_translations` VALUES (1913,'ku','ja','クルド語');
INSERT INTO `wp_icl_languages_translations` VALUES (1914,'ku','ko','쿠르드어');
INSERT INTO `wp_icl_languages_translations` VALUES (1915,'ku','ku','Kurdish');
INSERT INTO `wp_icl_languages_translations` VALUES (1916,'ku','lv','Kurdish');
INSERT INTO `wp_icl_languages_translations` VALUES (1917,'ku','lt','Kurdish');
INSERT INTO `wp_icl_languages_translations` VALUES (1918,'ku','mk','Kurdish');
INSERT INTO `wp_icl_languages_translations` VALUES (1919,'ku','mt','Kurdish');
INSERT INTO `wp_icl_languages_translations` VALUES (1920,'ku','mn','Kurdish');
INSERT INTO `wp_icl_languages_translations` VALUES (1921,'ku','ne','Kurdish');
INSERT INTO `wp_icl_languages_translations` VALUES (1922,'ku','nl','Koerdish');
INSERT INTO `wp_icl_languages_translations` VALUES (1923,'ku','no','Kurdisk');
INSERT INTO `wp_icl_languages_translations` VALUES (1924,'ku','pa','Kurdish');
INSERT INTO `wp_icl_languages_translations` VALUES (1925,'ku','pl','Kurdyjski');
INSERT INTO `wp_icl_languages_translations` VALUES (1926,'ku','pt-pt','Curdo');
INSERT INTO `wp_icl_languages_translations` VALUES (1927,'ku','pt-br','Curdo');
INSERT INTO `wp_icl_languages_translations` VALUES (1928,'ku','qu','Kurdish');
INSERT INTO `wp_icl_languages_translations` VALUES (1929,'ku','ro','Kurdă');
INSERT INTO `wp_icl_languages_translations` VALUES (1930,'ku','ru','Курдский');
INSERT INTO `wp_icl_languages_translations` VALUES (1931,'ku','sl','Kurdščina');
INSERT INTO `wp_icl_languages_translations` VALUES (1932,'ku','so','Kurdish');
INSERT INTO `wp_icl_languages_translations` VALUES (1933,'ku','sq','Kurdish');
INSERT INTO `wp_icl_languages_translations` VALUES (1934,'ku','sr','курдски');
INSERT INTO `wp_icl_languages_translations` VALUES (1935,'ku','sv','Kurdiska');
INSERT INTO `wp_icl_languages_translations` VALUES (1936,'ku','ta','Kurdish');
INSERT INTO `wp_icl_languages_translations` VALUES (1937,'ku','th','เคอร์ดิช');
INSERT INTO `wp_icl_languages_translations` VALUES (1938,'ku','tr','Kürtçe');
INSERT INTO `wp_icl_languages_translations` VALUES (1939,'ku','uk','Kurdish');
INSERT INTO `wp_icl_languages_translations` VALUES (1940,'ku','ur','Kurdish');
INSERT INTO `wp_icl_languages_translations` VALUES (1941,'ku','uz','Kurdish');
INSERT INTO `wp_icl_languages_translations` VALUES (1942,'ku','vi','Kurdish');
INSERT INTO `wp_icl_languages_translations` VALUES (1943,'ku','yi','Kurdish');
INSERT INTO `wp_icl_languages_translations` VALUES (1944,'ku','zh-hans','库尔德语');
INSERT INTO `wp_icl_languages_translations` VALUES (1945,'ku','zu','Kurdish');
INSERT INTO `wp_icl_languages_translations` VALUES (1946,'ku','zh-hant','庫爾德語');
INSERT INTO `wp_icl_languages_translations` VALUES (1947,'ku','ms','Kurdish');
INSERT INTO `wp_icl_languages_translations` VALUES (1948,'ku','gl','Kurdish');
INSERT INTO `wp_icl_languages_translations` VALUES (1949,'ku','bn','Kurdish');
INSERT INTO `wp_icl_languages_translations` VALUES (1950,'ku','az','Kurdish');
INSERT INTO `wp_icl_languages_translations` VALUES (1951,'lv','en','Latvian');
INSERT INTO `wp_icl_languages_translations` VALUES (1952,'lv','es','Letón');
INSERT INTO `wp_icl_languages_translations` VALUES (1953,'lv','de','Lettisch');
INSERT INTO `wp_icl_languages_translations` VALUES (1954,'lv','fr','Letton');
INSERT INTO `wp_icl_languages_translations` VALUES (1955,'lv','ar','اللاتفية');
INSERT INTO `wp_icl_languages_translations` VALUES (1956,'lv','bs','Latvian');
INSERT INTO `wp_icl_languages_translations` VALUES (1957,'lv','bg','Латвийски');
INSERT INTO `wp_icl_languages_translations` VALUES (1958,'lv','ca','Latvian');
INSERT INTO `wp_icl_languages_translations` VALUES (1959,'lv','cs','Lotyština');
INSERT INTO `wp_icl_languages_translations` VALUES (1960,'lv','sk','Lotyština');
INSERT INTO `wp_icl_languages_translations` VALUES (1961,'lv','cy','Latvian');
INSERT INTO `wp_icl_languages_translations` VALUES (1962,'lv','da','Latvian');
INSERT INTO `wp_icl_languages_translations` VALUES (1963,'lv','el','Λετονικά');
INSERT INTO `wp_icl_languages_translations` VALUES (1964,'lv','eo','Latvian');
INSERT INTO `wp_icl_languages_translations` VALUES (1965,'lv','et','Latvian');
INSERT INTO `wp_icl_languages_translations` VALUES (1966,'lv','eu','Latvian');
INSERT INTO `wp_icl_languages_translations` VALUES (1967,'lv','fa','Latvian');
INSERT INTO `wp_icl_languages_translations` VALUES (1968,'lv','fi','Latvia');
INSERT INTO `wp_icl_languages_translations` VALUES (1969,'lv','ga','Latvian');
INSERT INTO `wp_icl_languages_translations` VALUES (1970,'lv','he','לטבית');
INSERT INTO `wp_icl_languages_translations` VALUES (1971,'lv','hi','Latvian');
INSERT INTO `wp_icl_languages_translations` VALUES (1972,'lv','hr','Latvijski');
INSERT INTO `wp_icl_languages_translations` VALUES (1973,'lv','hu','Lett');
INSERT INTO `wp_icl_languages_translations` VALUES (1974,'lv','hy','Latvian');
INSERT INTO `wp_icl_languages_translations` VALUES (1975,'lv','id','Latvian');
INSERT INTO `wp_icl_languages_translations` VALUES (1976,'lv','is','Latvian');
INSERT INTO `wp_icl_languages_translations` VALUES (1977,'lv','it','Lettone');
INSERT INTO `wp_icl_languages_translations` VALUES (1978,'lv','ja','ラトビア語');
INSERT INTO `wp_icl_languages_translations` VALUES (1979,'lv','ko','라트비아어');
INSERT INTO `wp_icl_languages_translations` VALUES (1980,'lv','ku','Latvian');
INSERT INTO `wp_icl_languages_translations` VALUES (1981,'lv','lv','Latviešu');
INSERT INTO `wp_icl_languages_translations` VALUES (1982,'lv','lt','Latvian');
INSERT INTO `wp_icl_languages_translations` VALUES (1983,'lv','mk','Latvian');
INSERT INTO `wp_icl_languages_translations` VALUES (1984,'lv','mt','Latvian');
INSERT INTO `wp_icl_languages_translations` VALUES (1985,'lv','mn','Latvian');
INSERT INTO `wp_icl_languages_translations` VALUES (1986,'lv','ne','Latvian');
INSERT INTO `wp_icl_languages_translations` VALUES (1987,'lv','nl','Lets');
INSERT INTO `wp_icl_languages_translations` VALUES (1988,'lv','no','Latvisk');
INSERT INTO `wp_icl_languages_translations` VALUES (1989,'lv','pa','Latvian');
INSERT INTO `wp_icl_languages_translations` VALUES (1990,'lv','pl','łotewski');
INSERT INTO `wp_icl_languages_translations` VALUES (1991,'lv','pt-pt','Letão');
INSERT INTO `wp_icl_languages_translations` VALUES (1992,'lv','pt-br','Letão');
INSERT INTO `wp_icl_languages_translations` VALUES (1993,'lv','qu','Latvian');
INSERT INTO `wp_icl_languages_translations` VALUES (1994,'lv','ro','Letoniană');
INSERT INTO `wp_icl_languages_translations` VALUES (1995,'lv','ru','латышский');
INSERT INTO `wp_icl_languages_translations` VALUES (1996,'lv','sl','Latvijščina');
INSERT INTO `wp_icl_languages_translations` VALUES (1997,'lv','so','Latvian');
INSERT INTO `wp_icl_languages_translations` VALUES (1998,'lv','sq','Latvian');
INSERT INTO `wp_icl_languages_translations` VALUES (1999,'lv','sr','летонски');
INSERT INTO `wp_icl_languages_translations` VALUES (2000,'lv','sv','Lettiska');
INSERT INTO `wp_icl_languages_translations` VALUES (2001,'lv','ta','Latvian');
INSERT INTO `wp_icl_languages_translations` VALUES (2002,'lv','th','ลัตเวีย');
INSERT INTO `wp_icl_languages_translations` VALUES (2003,'lv','tr','Letonca');
INSERT INTO `wp_icl_languages_translations` VALUES (2004,'lv','uk','Latvian');
INSERT INTO `wp_icl_languages_translations` VALUES (2005,'lv','ur','Latvian');
INSERT INTO `wp_icl_languages_translations` VALUES (2006,'lv','uz','Latvian');
INSERT INTO `wp_icl_languages_translations` VALUES (2007,'lv','vi','Latvian');
INSERT INTO `wp_icl_languages_translations` VALUES (2008,'lv','yi','Latvian');
INSERT INTO `wp_icl_languages_translations` VALUES (2009,'lv','zh-hans','拉脱维亚语');
INSERT INTO `wp_icl_languages_translations` VALUES (2010,'lv','zu','Latvian');
INSERT INTO `wp_icl_languages_translations` VALUES (2011,'lv','zh-hant','拉脫維亞語');
INSERT INTO `wp_icl_languages_translations` VALUES (2012,'lv','ms','Latvian');
INSERT INTO `wp_icl_languages_translations` VALUES (2013,'lv','gl','Latvian');
INSERT INTO `wp_icl_languages_translations` VALUES (2014,'lv','bn','Latvian');
INSERT INTO `wp_icl_languages_translations` VALUES (2015,'lv','az','Latvian');
INSERT INTO `wp_icl_languages_translations` VALUES (2016,'lt','en','Lithuanian');
INSERT INTO `wp_icl_languages_translations` VALUES (2017,'lt','es','Lituano');
INSERT INTO `wp_icl_languages_translations` VALUES (2018,'lt','de','Litauisch');
INSERT INTO `wp_icl_languages_translations` VALUES (2019,'lt','fr','Lituanien');
INSERT INTO `wp_icl_languages_translations` VALUES (2020,'lt','ar','اللتوانية');
INSERT INTO `wp_icl_languages_translations` VALUES (2021,'lt','bs','Lithuanian');
INSERT INTO `wp_icl_languages_translations` VALUES (2022,'lt','bg','Литовски');
INSERT INTO `wp_icl_languages_translations` VALUES (2023,'lt','ca','Lithuanian');
INSERT INTO `wp_icl_languages_translations` VALUES (2024,'lt','cs','Litevský');
INSERT INTO `wp_icl_languages_translations` VALUES (2025,'lt','sk','Litovčina');
INSERT INTO `wp_icl_languages_translations` VALUES (2026,'lt','cy','Lithuanian');
INSERT INTO `wp_icl_languages_translations` VALUES (2027,'lt','da','Lithuanian');
INSERT INTO `wp_icl_languages_translations` VALUES (2028,'lt','el','Λιθουανικά');
INSERT INTO `wp_icl_languages_translations` VALUES (2029,'lt','eo','Lithuanian');
INSERT INTO `wp_icl_languages_translations` VALUES (2030,'lt','et','Lithuanian');
INSERT INTO `wp_icl_languages_translations` VALUES (2031,'lt','eu','Lithuanian');
INSERT INTO `wp_icl_languages_translations` VALUES (2032,'lt','fa','Lithuanian');
INSERT INTO `wp_icl_languages_translations` VALUES (2033,'lt','fi','Liettua');
INSERT INTO `wp_icl_languages_translations` VALUES (2034,'lt','ga','Lithuanian');
INSERT INTO `wp_icl_languages_translations` VALUES (2035,'lt','he','ליטאית');
INSERT INTO `wp_icl_languages_translations` VALUES (2036,'lt','hi','Lithuanian');
INSERT INTO `wp_icl_languages_translations` VALUES (2037,'lt','hr','Litavski');
INSERT INTO `wp_icl_languages_translations` VALUES (2038,'lt','hu','Litván');
INSERT INTO `wp_icl_languages_translations` VALUES (2039,'lt','hy','Lithuanian');
INSERT INTO `wp_icl_languages_translations` VALUES (2040,'lt','id','Lithuanian');
INSERT INTO `wp_icl_languages_translations` VALUES (2041,'lt','is','Lithuanian');
INSERT INTO `wp_icl_languages_translations` VALUES (2042,'lt','it','Lituano');
INSERT INTO `wp_icl_languages_translations` VALUES (2043,'lt','ja','リトアニア語');
INSERT INTO `wp_icl_languages_translations` VALUES (2044,'lt','ko','리투아니아어');
INSERT INTO `wp_icl_languages_translations` VALUES (2045,'lt','ku','Lithuanian');
INSERT INTO `wp_icl_languages_translations` VALUES (2046,'lt','lv','Lithuanian');
INSERT INTO `wp_icl_languages_translations` VALUES (2047,'lt','lt','Lietuvių');
INSERT INTO `wp_icl_languages_translations` VALUES (2048,'lt','mk','Lithuanian');
INSERT INTO `wp_icl_languages_translations` VALUES (2049,'lt','mt','Lithuanian');
INSERT INTO `wp_icl_languages_translations` VALUES (2050,'lt','mn','Lithuanian');
INSERT INTO `wp_icl_languages_translations` VALUES (2051,'lt','ne','Lithuanian');
INSERT INTO `wp_icl_languages_translations` VALUES (2052,'lt','nl','Litouws');
INSERT INTO `wp_icl_languages_translations` VALUES (2053,'lt','no','Litauisk');
INSERT INTO `wp_icl_languages_translations` VALUES (2054,'lt','pa','Lithuanian');
INSERT INTO `wp_icl_languages_translations` VALUES (2055,'lt','pl','Litewski');
INSERT INTO `wp_icl_languages_translations` VALUES (2056,'lt','pt-pt','Lituano');
INSERT INTO `wp_icl_languages_translations` VALUES (2057,'lt','pt-br','Lituano');
INSERT INTO `wp_icl_languages_translations` VALUES (2058,'lt','qu','Lithuanian');
INSERT INTO `wp_icl_languages_translations` VALUES (2059,'lt','ro','Lituaniană');
INSERT INTO `wp_icl_languages_translations` VALUES (2060,'lt','ru','Литовский');
INSERT INTO `wp_icl_languages_translations` VALUES (2061,'lt','sl','Litovščina');
INSERT INTO `wp_icl_languages_translations` VALUES (2062,'lt','so','Lithuanian');
INSERT INTO `wp_icl_languages_translations` VALUES (2063,'lt','sq','Lithuanian');
INSERT INTO `wp_icl_languages_translations` VALUES (2064,'lt','sr','литвански');
INSERT INTO `wp_icl_languages_translations` VALUES (2065,'lt','sv','Litauiska');
INSERT INTO `wp_icl_languages_translations` VALUES (2066,'lt','ta','Lithuanian');
INSERT INTO `wp_icl_languages_translations` VALUES (2067,'lt','th','ลิธัวเนีย');
INSERT INTO `wp_icl_languages_translations` VALUES (2068,'lt','tr','Litvanyaca');
INSERT INTO `wp_icl_languages_translations` VALUES (2069,'lt','uk','Lithuanian');
INSERT INTO `wp_icl_languages_translations` VALUES (2070,'lt','ur','Lithuanian');
INSERT INTO `wp_icl_languages_translations` VALUES (2071,'lt','uz','Lithuanian');
INSERT INTO `wp_icl_languages_translations` VALUES (2072,'lt','vi','Lithuanian');
INSERT INTO `wp_icl_languages_translations` VALUES (2073,'lt','yi','Lithuanian');
INSERT INTO `wp_icl_languages_translations` VALUES (2074,'lt','zh-hans','立陶宛语');
INSERT INTO `wp_icl_languages_translations` VALUES (2075,'lt','zu','Lithuanian');
INSERT INTO `wp_icl_languages_translations` VALUES (2076,'lt','zh-hant','立陶宛語');
INSERT INTO `wp_icl_languages_translations` VALUES (2077,'lt','ms','Lithuanian');
INSERT INTO `wp_icl_languages_translations` VALUES (2078,'lt','gl','Lithuanian');
INSERT INTO `wp_icl_languages_translations` VALUES (2079,'lt','bn','Lithuanian');
INSERT INTO `wp_icl_languages_translations` VALUES (2080,'lt','az','Lithuanian');
INSERT INTO `wp_icl_languages_translations` VALUES (2081,'mk','en','Macedonian');
INSERT INTO `wp_icl_languages_translations` VALUES (2082,'mk','es','Macedonio');
INSERT INTO `wp_icl_languages_translations` VALUES (2083,'mk','de','Mazedonisch');
INSERT INTO `wp_icl_languages_translations` VALUES (2084,'mk','fr','Macédonien');
INSERT INTO `wp_icl_languages_translations` VALUES (2085,'mk','ar','المقدونية');
INSERT INTO `wp_icl_languages_translations` VALUES (2086,'mk','bs','Macedonian');
INSERT INTO `wp_icl_languages_translations` VALUES (2087,'mk','bg','Македонски');
INSERT INTO `wp_icl_languages_translations` VALUES (2088,'mk','ca','Macedonian');
INSERT INTO `wp_icl_languages_translations` VALUES (2089,'mk','cs','Makedonský');
INSERT INTO `wp_icl_languages_translations` VALUES (2090,'mk','sk','Macedónština');
INSERT INTO `wp_icl_languages_translations` VALUES (2091,'mk','cy','Macedonian');
INSERT INTO `wp_icl_languages_translations` VALUES (2092,'mk','da','Macedonian');
INSERT INTO `wp_icl_languages_translations` VALUES (2093,'mk','el','Μακεδονικά');
INSERT INTO `wp_icl_languages_translations` VALUES (2094,'mk','eo','Macedonian');
INSERT INTO `wp_icl_languages_translations` VALUES (2095,'mk','et','Macedonian');
INSERT INTO `wp_icl_languages_translations` VALUES (2096,'mk','eu','Macedonian');
INSERT INTO `wp_icl_languages_translations` VALUES (2097,'mk','fa','Macedonian');
INSERT INTO `wp_icl_languages_translations` VALUES (2098,'mk','fi','Makedonia');
INSERT INTO `wp_icl_languages_translations` VALUES (2099,'mk','ga','Macedonian');
INSERT INTO `wp_icl_languages_translations` VALUES (2100,'mk','he','מקדונית');
INSERT INTO `wp_icl_languages_translations` VALUES (2101,'mk','hi','Macedonian');
INSERT INTO `wp_icl_languages_translations` VALUES (2102,'mk','hr','Makedonski');
INSERT INTO `wp_icl_languages_translations` VALUES (2103,'mk','hu','Macedón');
INSERT INTO `wp_icl_languages_translations` VALUES (2104,'mk','hy','Macedonian');
INSERT INTO `wp_icl_languages_translations` VALUES (2105,'mk','id','Macedonian');
INSERT INTO `wp_icl_languages_translations` VALUES (2106,'mk','is','Macedonian');
INSERT INTO `wp_icl_languages_translations` VALUES (2107,'mk','it','Macedone');
INSERT INTO `wp_icl_languages_translations` VALUES (2108,'mk','ja','マケドニア語');
INSERT INTO `wp_icl_languages_translations` VALUES (2109,'mk','ko','마케도니아어');
INSERT INTO `wp_icl_languages_translations` VALUES (2110,'mk','ku','Macedonian');
INSERT INTO `wp_icl_languages_translations` VALUES (2111,'mk','lv','Macedonian');
INSERT INTO `wp_icl_languages_translations` VALUES (2112,'mk','lt','Macedonian');
INSERT INTO `wp_icl_languages_translations` VALUES (2113,'mk','mk','македонски');
INSERT INTO `wp_icl_languages_translations` VALUES (2114,'mk','mt','Macedonian');
INSERT INTO `wp_icl_languages_translations` VALUES (2115,'mk','mn','Macedonian');
INSERT INTO `wp_icl_languages_translations` VALUES (2116,'mk','ne','Macedonian');
INSERT INTO `wp_icl_languages_translations` VALUES (2117,'mk','nl','Macedonisch');
INSERT INTO `wp_icl_languages_translations` VALUES (2118,'mk','no','Makedonsk');
INSERT INTO `wp_icl_languages_translations` VALUES (2119,'mk','pa','Macedonian');
INSERT INTO `wp_icl_languages_translations` VALUES (2120,'mk','pl','Macedoński');
INSERT INTO `wp_icl_languages_translations` VALUES (2121,'mk','pt-pt','Macedônio');
INSERT INTO `wp_icl_languages_translations` VALUES (2122,'mk','pt-br','Macedônio');
INSERT INTO `wp_icl_languages_translations` VALUES (2123,'mk','qu','Macedonian');
INSERT INTO `wp_icl_languages_translations` VALUES (2124,'mk','ro','Macedoniană');
INSERT INTO `wp_icl_languages_translations` VALUES (2125,'mk','ru','Македонский');
INSERT INTO `wp_icl_languages_translations` VALUES (2126,'mk','sl','Makedonski');
INSERT INTO `wp_icl_languages_translations` VALUES (2127,'mk','so','Macedonian');
INSERT INTO `wp_icl_languages_translations` VALUES (2128,'mk','sq','Macedonian');
INSERT INTO `wp_icl_languages_translations` VALUES (2129,'mk','sr','македонски');
INSERT INTO `wp_icl_languages_translations` VALUES (2130,'mk','sv','Makedonska');
INSERT INTO `wp_icl_languages_translations` VALUES (2131,'mk','ta','Macedonian');
INSERT INTO `wp_icl_languages_translations` VALUES (2132,'mk','th','มาซิโดเนีย');
INSERT INTO `wp_icl_languages_translations` VALUES (2133,'mk','tr','Makedonyaca');
INSERT INTO `wp_icl_languages_translations` VALUES (2134,'mk','uk','Macedonian');
INSERT INTO `wp_icl_languages_translations` VALUES (2135,'mk','ur','Macedonian');
INSERT INTO `wp_icl_languages_translations` VALUES (2136,'mk','uz','Macedonian');
INSERT INTO `wp_icl_languages_translations` VALUES (2137,'mk','vi','Macedonian');
INSERT INTO `wp_icl_languages_translations` VALUES (2138,'mk','yi','Macedonian');
INSERT INTO `wp_icl_languages_translations` VALUES (2139,'mk','zh-hans','马其顿语');
INSERT INTO `wp_icl_languages_translations` VALUES (2140,'mk','zu','Macedonian');
INSERT INTO `wp_icl_languages_translations` VALUES (2141,'mk','zh-hant','馬其頓語');
INSERT INTO `wp_icl_languages_translations` VALUES (2142,'mk','ms','Macedonian');
INSERT INTO `wp_icl_languages_translations` VALUES (2143,'mk','gl','Macedonian');
INSERT INTO `wp_icl_languages_translations` VALUES (2144,'mk','bn','Macedonian');
INSERT INTO `wp_icl_languages_translations` VALUES (2145,'mk','az','Macedonian');
INSERT INTO `wp_icl_languages_translations` VALUES (2146,'mt','en','Maltese');
INSERT INTO `wp_icl_languages_translations` VALUES (2147,'mt','es','Maltés');
INSERT INTO `wp_icl_languages_translations` VALUES (2148,'mt','de','Maltesisch');
INSERT INTO `wp_icl_languages_translations` VALUES (2149,'mt','fr','Maltais');
INSERT INTO `wp_icl_languages_translations` VALUES (2150,'mt','ar','المالطية');
INSERT INTO `wp_icl_languages_translations` VALUES (2151,'mt','bs','Maltese');
INSERT INTO `wp_icl_languages_translations` VALUES (2152,'mt','bg','Малтийски');
INSERT INTO `wp_icl_languages_translations` VALUES (2153,'mt','ca','Maltese');
INSERT INTO `wp_icl_languages_translations` VALUES (2154,'mt','cs','Maltština');
INSERT INTO `wp_icl_languages_translations` VALUES (2155,'mt','sk','Maltézština');
INSERT INTO `wp_icl_languages_translations` VALUES (2156,'mt','cy','Maltese');
INSERT INTO `wp_icl_languages_translations` VALUES (2157,'mt','da','Maltese');
INSERT INTO `wp_icl_languages_translations` VALUES (2158,'mt','el','Μαλτέζικα');
INSERT INTO `wp_icl_languages_translations` VALUES (2159,'mt','eo','Maltese');
INSERT INTO `wp_icl_languages_translations` VALUES (2160,'mt','et','Maltese');
INSERT INTO `wp_icl_languages_translations` VALUES (2161,'mt','eu','Maltese');
INSERT INTO `wp_icl_languages_translations` VALUES (2162,'mt','fa','Maltese');
INSERT INTO `wp_icl_languages_translations` VALUES (2163,'mt','fi','Malta');
INSERT INTO `wp_icl_languages_translations` VALUES (2164,'mt','ga','Maltese');
INSERT INTO `wp_icl_languages_translations` VALUES (2165,'mt','he','מלטזית');
INSERT INTO `wp_icl_languages_translations` VALUES (2166,'mt','hi','Maltese');
INSERT INTO `wp_icl_languages_translations` VALUES (2167,'mt','hr','Malteški');
INSERT INTO `wp_icl_languages_translations` VALUES (2168,'mt','hu','Máltai');
INSERT INTO `wp_icl_languages_translations` VALUES (2169,'mt','hy','Maltese');
INSERT INTO `wp_icl_languages_translations` VALUES (2170,'mt','id','Maltese');
INSERT INTO `wp_icl_languages_translations` VALUES (2171,'mt','is','Maltese');
INSERT INTO `wp_icl_languages_translations` VALUES (2172,'mt','it','Maltese');
INSERT INTO `wp_icl_languages_translations` VALUES (2173,'mt','ja','マルタ語');
INSERT INTO `wp_icl_languages_translations` VALUES (2174,'mt','ko','몰타어');
INSERT INTO `wp_icl_languages_translations` VALUES (2175,'mt','ku','Maltese');
INSERT INTO `wp_icl_languages_translations` VALUES (2176,'mt','lv','Maltese');
INSERT INTO `wp_icl_languages_translations` VALUES (2177,'mt','lt','Maltese');
INSERT INTO `wp_icl_languages_translations` VALUES (2178,'mt','mk','Maltese');
INSERT INTO `wp_icl_languages_translations` VALUES (2179,'mt','mt','Malti');
INSERT INTO `wp_icl_languages_translations` VALUES (2180,'mt','mn','Maltese');
INSERT INTO `wp_icl_languages_translations` VALUES (2181,'mt','ne','Maltese');
INSERT INTO `wp_icl_languages_translations` VALUES (2182,'mt','nl','Maltees');
INSERT INTO `wp_icl_languages_translations` VALUES (2183,'mt','no','Maltese');
INSERT INTO `wp_icl_languages_translations` VALUES (2184,'mt','pa','Maltese');
INSERT INTO `wp_icl_languages_translations` VALUES (2185,'mt','pl','Maltański');
INSERT INTO `wp_icl_languages_translations` VALUES (2186,'mt','pt-pt','Maltês');
INSERT INTO `wp_icl_languages_translations` VALUES (2187,'mt','pt-br','Maltês');
INSERT INTO `wp_icl_languages_translations` VALUES (2188,'mt','qu','Maltese');
INSERT INTO `wp_icl_languages_translations` VALUES (2189,'mt','ro','Malteză');
INSERT INTO `wp_icl_languages_translations` VALUES (2190,'mt','ru','Мальтийский');
INSERT INTO `wp_icl_languages_translations` VALUES (2191,'mt','sl','Malteški');
INSERT INTO `wp_icl_languages_translations` VALUES (2192,'mt','so','Maltese');
INSERT INTO `wp_icl_languages_translations` VALUES (2193,'mt','sq','Maltese');
INSERT INTO `wp_icl_languages_translations` VALUES (2194,'mt','sr','малтешки');
INSERT INTO `wp_icl_languages_translations` VALUES (2195,'mt','sv','Maltesiska');
INSERT INTO `wp_icl_languages_translations` VALUES (2196,'mt','ta','Maltese');
INSERT INTO `wp_icl_languages_translations` VALUES (2197,'mt','th','มอลทีส');
INSERT INTO `wp_icl_languages_translations` VALUES (2198,'mt','tr','Malta dili');
INSERT INTO `wp_icl_languages_translations` VALUES (2199,'mt','uk','Maltese');
INSERT INTO `wp_icl_languages_translations` VALUES (2200,'mt','ur','Maltese');
INSERT INTO `wp_icl_languages_translations` VALUES (2201,'mt','uz','Maltese');
INSERT INTO `wp_icl_languages_translations` VALUES (2202,'mt','vi','Maltese');
INSERT INTO `wp_icl_languages_translations` VALUES (2203,'mt','yi','Maltese');
INSERT INTO `wp_icl_languages_translations` VALUES (2204,'mt','zh-hans','马耳他语');
INSERT INTO `wp_icl_languages_translations` VALUES (2205,'mt','zu','Maltese');
INSERT INTO `wp_icl_languages_translations` VALUES (2206,'mt','zh-hant','馬爾他語');
INSERT INTO `wp_icl_languages_translations` VALUES (2207,'mt','ms','Maltese');
INSERT INTO `wp_icl_languages_translations` VALUES (2208,'mt','gl','Maltese');
INSERT INTO `wp_icl_languages_translations` VALUES (2209,'mt','bn','Maltese');
INSERT INTO `wp_icl_languages_translations` VALUES (2210,'mt','az','Maltese');
INSERT INTO `wp_icl_languages_translations` VALUES (2211,'mn','en','Mongolian');
INSERT INTO `wp_icl_languages_translations` VALUES (2212,'mn','es','Mongol');
INSERT INTO `wp_icl_languages_translations` VALUES (2213,'mn','de','Mongolisch');
INSERT INTO `wp_icl_languages_translations` VALUES (2214,'mn','fr','Mongol');
INSERT INTO `wp_icl_languages_translations` VALUES (2215,'mn','ar','المنغولية');
INSERT INTO `wp_icl_languages_translations` VALUES (2216,'mn','bs','Mongolian');
INSERT INTO `wp_icl_languages_translations` VALUES (2217,'mn','bg','Монголски');
INSERT INTO `wp_icl_languages_translations` VALUES (2218,'mn','ca','Mongolian');
INSERT INTO `wp_icl_languages_translations` VALUES (2219,'mn','cs','Mongolský');
INSERT INTO `wp_icl_languages_translations` VALUES (2220,'mn','sk','Mongolština');
INSERT INTO `wp_icl_languages_translations` VALUES (2221,'mn','cy','Mongolian');
INSERT INTO `wp_icl_languages_translations` VALUES (2222,'mn','da','Mongolian');
INSERT INTO `wp_icl_languages_translations` VALUES (2223,'mn','el','Μογγολικά');
INSERT INTO `wp_icl_languages_translations` VALUES (2224,'mn','eo','Mongolian');
INSERT INTO `wp_icl_languages_translations` VALUES (2225,'mn','et','Mongolian');
INSERT INTO `wp_icl_languages_translations` VALUES (2226,'mn','eu','Mongolian');
INSERT INTO `wp_icl_languages_translations` VALUES (2227,'mn','fa','Mongolian');
INSERT INTO `wp_icl_languages_translations` VALUES (2228,'mn','fi','Mongoli');
INSERT INTO `wp_icl_languages_translations` VALUES (2229,'mn','ga','Mongolian');
INSERT INTO `wp_icl_languages_translations` VALUES (2230,'mn','he','מונגולית');
INSERT INTO `wp_icl_languages_translations` VALUES (2231,'mn','hi','Mongolian');
INSERT INTO `wp_icl_languages_translations` VALUES (2232,'mn','hr','Mongolski');
INSERT INTO `wp_icl_languages_translations` VALUES (2233,'mn','hu','Mongol');
INSERT INTO `wp_icl_languages_translations` VALUES (2234,'mn','hy','Mongolian');
INSERT INTO `wp_icl_languages_translations` VALUES (2235,'mn','id','Mongolian');
INSERT INTO `wp_icl_languages_translations` VALUES (2236,'mn','is','Mongolian');
INSERT INTO `wp_icl_languages_translations` VALUES (2237,'mn','it','Mongolo');
INSERT INTO `wp_icl_languages_translations` VALUES (2238,'mn','ja','モンゴル語');
INSERT INTO `wp_icl_languages_translations` VALUES (2239,'mn','ko','몽골어');
INSERT INTO `wp_icl_languages_translations` VALUES (2240,'mn','ku','Mongolian');
INSERT INTO `wp_icl_languages_translations` VALUES (2241,'mn','lv','Mongolian');
INSERT INTO `wp_icl_languages_translations` VALUES (2242,'mn','lt','Mongolian');
INSERT INTO `wp_icl_languages_translations` VALUES (2243,'mn','mk','Mongolian');
INSERT INTO `wp_icl_languages_translations` VALUES (2244,'mn','mt','Mongolian');
INSERT INTO `wp_icl_languages_translations` VALUES (2245,'mn','mn','Mongolian');
INSERT INTO `wp_icl_languages_translations` VALUES (2246,'mn','ne','Mongolian');
INSERT INTO `wp_icl_languages_translations` VALUES (2247,'mn','nl','Mongools');
INSERT INTO `wp_icl_languages_translations` VALUES (2248,'mn','no','Mongolsk');
INSERT INTO `wp_icl_languages_translations` VALUES (2249,'mn','pa','Mongolian');
INSERT INTO `wp_icl_languages_translations` VALUES (2250,'mn','pl','Mongolski');
INSERT INTO `wp_icl_languages_translations` VALUES (2251,'mn','pt-pt','Mongolian');
INSERT INTO `wp_icl_languages_translations` VALUES (2252,'mn','pt-br','Mongolian');
INSERT INTO `wp_icl_languages_translations` VALUES (2253,'mn','qu','Mongolian');
INSERT INTO `wp_icl_languages_translations` VALUES (2254,'mn','ro','Mongoleză');
INSERT INTO `wp_icl_languages_translations` VALUES (2255,'mn','ru','Монгольский');
INSERT INTO `wp_icl_languages_translations` VALUES (2256,'mn','sl','Mongolski');
INSERT INTO `wp_icl_languages_translations` VALUES (2257,'mn','so','Mongolian');
INSERT INTO `wp_icl_languages_translations` VALUES (2258,'mn','sq','Mongolian');
INSERT INTO `wp_icl_languages_translations` VALUES (2259,'mn','sr','монголски');
INSERT INTO `wp_icl_languages_translations` VALUES (2260,'mn','sv','Mongoliska');
INSERT INTO `wp_icl_languages_translations` VALUES (2261,'mn','ta','Mongolian');
INSERT INTO `wp_icl_languages_translations` VALUES (2262,'mn','th','มองโกเลีย');
INSERT INTO `wp_icl_languages_translations` VALUES (2263,'mn','tr','Mongolca');
INSERT INTO `wp_icl_languages_translations` VALUES (2264,'mn','uk','Mongolian');
INSERT INTO `wp_icl_languages_translations` VALUES (2265,'mn','ur','Mongolian');
INSERT INTO `wp_icl_languages_translations` VALUES (2266,'mn','uz','Mongolian');
INSERT INTO `wp_icl_languages_translations` VALUES (2267,'mn','vi','Mongolian');
INSERT INTO `wp_icl_languages_translations` VALUES (2268,'mn','yi','Mongolian');
INSERT INTO `wp_icl_languages_translations` VALUES (2269,'mn','zh-hans','蒙古语');
INSERT INTO `wp_icl_languages_translations` VALUES (2270,'mn','zu','Mongolian');
INSERT INTO `wp_icl_languages_translations` VALUES (2271,'mn','zh-hant','蒙古語');
INSERT INTO `wp_icl_languages_translations` VALUES (2272,'mn','ms','Mongolian');
INSERT INTO `wp_icl_languages_translations` VALUES (2273,'mn','gl','Mongolian');
INSERT INTO `wp_icl_languages_translations` VALUES (2274,'mn','bn','Mongolian');
INSERT INTO `wp_icl_languages_translations` VALUES (2275,'mn','az','Mongolian');
INSERT INTO `wp_icl_languages_translations` VALUES (2276,'ne','en','Nepali');
INSERT INTO `wp_icl_languages_translations` VALUES (2277,'ne','es','Nepalí');
INSERT INTO `wp_icl_languages_translations` VALUES (2278,'ne','de','Nepali');
INSERT INTO `wp_icl_languages_translations` VALUES (2279,'ne','fr','Népalais');
INSERT INTO `wp_icl_languages_translations` VALUES (2280,'ne','ar','النيبالية');
INSERT INTO `wp_icl_languages_translations` VALUES (2281,'ne','bs','Nepali');
INSERT INTO `wp_icl_languages_translations` VALUES (2282,'ne','bg','Непалски');
INSERT INTO `wp_icl_languages_translations` VALUES (2283,'ne','ca','Nepali');
INSERT INTO `wp_icl_languages_translations` VALUES (2284,'ne','cs','Nepálský');
INSERT INTO `wp_icl_languages_translations` VALUES (2285,'ne','sk','Nepálčina');
INSERT INTO `wp_icl_languages_translations` VALUES (2286,'ne','cy','Nepali');
INSERT INTO `wp_icl_languages_translations` VALUES (2287,'ne','da','Nepali');
INSERT INTO `wp_icl_languages_translations` VALUES (2288,'ne','el','Νεπαλικά');
INSERT INTO `wp_icl_languages_translations` VALUES (2289,'ne','eo','Nepali');
INSERT INTO `wp_icl_languages_translations` VALUES (2290,'ne','et','Nepali');
INSERT INTO `wp_icl_languages_translations` VALUES (2291,'ne','eu','Nepali');
INSERT INTO `wp_icl_languages_translations` VALUES (2292,'ne','fa','Nepali');
INSERT INTO `wp_icl_languages_translations` VALUES (2293,'ne','fi','Nepali');
INSERT INTO `wp_icl_languages_translations` VALUES (2294,'ne','ga','Nepali');
INSERT INTO `wp_icl_languages_translations` VALUES (2295,'ne','he','נפאלית');
INSERT INTO `wp_icl_languages_translations` VALUES (2296,'ne','hi','Nepali');
INSERT INTO `wp_icl_languages_translations` VALUES (2297,'ne','hr','Nepali');
INSERT INTO `wp_icl_languages_translations` VALUES (2298,'ne','hu','Nepáli');
INSERT INTO `wp_icl_languages_translations` VALUES (2299,'ne','hy','Nepali');
INSERT INTO `wp_icl_languages_translations` VALUES (2300,'ne','id','Nepali');
INSERT INTO `wp_icl_languages_translations` VALUES (2301,'ne','is','Nepali');
INSERT INTO `wp_icl_languages_translations` VALUES (2302,'ne','it','Nepalese');
INSERT INTO `wp_icl_languages_translations` VALUES (2303,'ne','ja','ネパール語');
INSERT INTO `wp_icl_languages_translations` VALUES (2304,'ne','ko','네팔어');
INSERT INTO `wp_icl_languages_translations` VALUES (2305,'ne','ku','Nepali');
INSERT INTO `wp_icl_languages_translations` VALUES (2306,'ne','lv','Nepali');
INSERT INTO `wp_icl_languages_translations` VALUES (2307,'ne','lt','Nepali');
INSERT INTO `wp_icl_languages_translations` VALUES (2308,'ne','mk','Nepali');
INSERT INTO `wp_icl_languages_translations` VALUES (2309,'ne','mt','Nepali');
INSERT INTO `wp_icl_languages_translations` VALUES (2310,'ne','mn','Nepali');
INSERT INTO `wp_icl_languages_translations` VALUES (2311,'ne','ne','Nepali');
INSERT INTO `wp_icl_languages_translations` VALUES (2312,'ne','nl','Nepalees');
INSERT INTO `wp_icl_languages_translations` VALUES (2313,'ne','no','Nepali');
INSERT INTO `wp_icl_languages_translations` VALUES (2314,'ne','pa','Nepali');
INSERT INTO `wp_icl_languages_translations` VALUES (2315,'ne','pl','Nepalski');
INSERT INTO `wp_icl_languages_translations` VALUES (2316,'ne','pt-pt','Nepali');
INSERT INTO `wp_icl_languages_translations` VALUES (2317,'ne','pt-br','Nepali');
INSERT INTO `wp_icl_languages_translations` VALUES (2318,'ne','qu','Nepali');
INSERT INTO `wp_icl_languages_translations` VALUES (2319,'ne','ro','Nepaleză');
INSERT INTO `wp_icl_languages_translations` VALUES (2320,'ne','ru','Непальский');
INSERT INTO `wp_icl_languages_translations` VALUES (2321,'ne','sl','Nepalščina');
INSERT INTO `wp_icl_languages_translations` VALUES (2322,'ne','so','Nepali');
INSERT INTO `wp_icl_languages_translations` VALUES (2323,'ne','sq','Nepali');
INSERT INTO `wp_icl_languages_translations` VALUES (2324,'ne','sr','непалски');
INSERT INTO `wp_icl_languages_translations` VALUES (2325,'ne','sv','Nepalesiska');
INSERT INTO `wp_icl_languages_translations` VALUES (2326,'ne','ta','Nepali');
INSERT INTO `wp_icl_languages_translations` VALUES (2327,'ne','th','เนปาล');
INSERT INTO `wp_icl_languages_translations` VALUES (2328,'ne','tr','Nepal dili');
INSERT INTO `wp_icl_languages_translations` VALUES (2329,'ne','uk','Nepali');
INSERT INTO `wp_icl_languages_translations` VALUES (2330,'ne','ur','Nepali');
INSERT INTO `wp_icl_languages_translations` VALUES (2331,'ne','uz','Nepali');
INSERT INTO `wp_icl_languages_translations` VALUES (2332,'ne','vi','Nepali');
INSERT INTO `wp_icl_languages_translations` VALUES (2333,'ne','yi','Nepali');
INSERT INTO `wp_icl_languages_translations` VALUES (2334,'ne','zh-hans','尼泊尔语');
INSERT INTO `wp_icl_languages_translations` VALUES (2335,'ne','zu','Nepali');
INSERT INTO `wp_icl_languages_translations` VALUES (2336,'ne','zh-hant','尼泊爾語');
INSERT INTO `wp_icl_languages_translations` VALUES (2337,'ne','ms','Nepali');
INSERT INTO `wp_icl_languages_translations` VALUES (2338,'ne','gl','Nepali');
INSERT INTO `wp_icl_languages_translations` VALUES (2339,'ne','bn','Nepali');
INSERT INTO `wp_icl_languages_translations` VALUES (2340,'ne','az','Nepali');
INSERT INTO `wp_icl_languages_translations` VALUES (2341,'nl','en','Dutch');
INSERT INTO `wp_icl_languages_translations` VALUES (2342,'nl','es','Holandés');
INSERT INTO `wp_icl_languages_translations` VALUES (2343,'nl','de','Niederländisch');
INSERT INTO `wp_icl_languages_translations` VALUES (2344,'nl','fr','Néerlandais');
INSERT INTO `wp_icl_languages_translations` VALUES (2345,'nl','ar','الهولندية');
INSERT INTO `wp_icl_languages_translations` VALUES (2346,'nl','bs','Dutch');
INSERT INTO `wp_icl_languages_translations` VALUES (2347,'nl','bg','Холандски');
INSERT INTO `wp_icl_languages_translations` VALUES (2348,'nl','ca','Dutch');
INSERT INTO `wp_icl_languages_translations` VALUES (2349,'nl','cs','Holandský');
INSERT INTO `wp_icl_languages_translations` VALUES (2350,'nl','sk','Holandčina');
INSERT INTO `wp_icl_languages_translations` VALUES (2351,'nl','cy','Dutch');
INSERT INTO `wp_icl_languages_translations` VALUES (2352,'nl','da','Dutch');
INSERT INTO `wp_icl_languages_translations` VALUES (2353,'nl','el','Ολλανδικά');
INSERT INTO `wp_icl_languages_translations` VALUES (2354,'nl','eo','Dutch');
INSERT INTO `wp_icl_languages_translations` VALUES (2355,'nl','et','Dutch');
INSERT INTO `wp_icl_languages_translations` VALUES (2356,'nl','eu','Dutch');
INSERT INTO `wp_icl_languages_translations` VALUES (2357,'nl','fa','Dutch');
INSERT INTO `wp_icl_languages_translations` VALUES (2358,'nl','fi','Hollanti');
INSERT INTO `wp_icl_languages_translations` VALUES (2359,'nl','ga','Dutch');
INSERT INTO `wp_icl_languages_translations` VALUES (2360,'nl','he','הולנדית');
INSERT INTO `wp_icl_languages_translations` VALUES (2361,'nl','hi','Dutch');
INSERT INTO `wp_icl_languages_translations` VALUES (2362,'nl','hr','Nizozemski');
INSERT INTO `wp_icl_languages_translations` VALUES (2363,'nl','hu','Holland');
INSERT INTO `wp_icl_languages_translations` VALUES (2364,'nl','hy','Dutch');
INSERT INTO `wp_icl_languages_translations` VALUES (2365,'nl','id','Dutch');
INSERT INTO `wp_icl_languages_translations` VALUES (2366,'nl','is','Dutch');
INSERT INTO `wp_icl_languages_translations` VALUES (2367,'nl','it','Olandese');
INSERT INTO `wp_icl_languages_translations` VALUES (2368,'nl','ja','オランダ語');
INSERT INTO `wp_icl_languages_translations` VALUES (2369,'nl','ko','화란어');
INSERT INTO `wp_icl_languages_translations` VALUES (2370,'nl','ku','Dutch');
INSERT INTO `wp_icl_languages_translations` VALUES (2371,'nl','lv','Dutch');
INSERT INTO `wp_icl_languages_translations` VALUES (2372,'nl','lt','Dutch');
INSERT INTO `wp_icl_languages_translations` VALUES (2373,'nl','mk','Dutch');
INSERT INTO `wp_icl_languages_translations` VALUES (2374,'nl','mt','Dutch');
INSERT INTO `wp_icl_languages_translations` VALUES (2375,'nl','mn','Dutch');
INSERT INTO `wp_icl_languages_translations` VALUES (2376,'nl','ne','Dutch');
INSERT INTO `wp_icl_languages_translations` VALUES (2377,'nl','nl','Nederlands');
INSERT INTO `wp_icl_languages_translations` VALUES (2378,'nl','no','Nederlandsk');
INSERT INTO `wp_icl_languages_translations` VALUES (2379,'nl','pa','Dutch');
INSERT INTO `wp_icl_languages_translations` VALUES (2380,'nl','pl','Holenderski');
INSERT INTO `wp_icl_languages_translations` VALUES (2381,'nl','pt-pt','Holandês');
INSERT INTO `wp_icl_languages_translations` VALUES (2382,'nl','pt-br','Holandês');
INSERT INTO `wp_icl_languages_translations` VALUES (2383,'nl','qu','Dutch');
INSERT INTO `wp_icl_languages_translations` VALUES (2384,'nl','ro','Olaneză');
INSERT INTO `wp_icl_languages_translations` VALUES (2385,'nl','ru','Голландский');
INSERT INTO `wp_icl_languages_translations` VALUES (2386,'nl','sl','Nizozemščina');
INSERT INTO `wp_icl_languages_translations` VALUES (2387,'nl','so','Dutch');
INSERT INTO `wp_icl_languages_translations` VALUES (2388,'nl','sq','Dutch');
INSERT INTO `wp_icl_languages_translations` VALUES (2389,'nl','sr','холандски');
INSERT INTO `wp_icl_languages_translations` VALUES (2390,'nl','sv','Nederländska');
INSERT INTO `wp_icl_languages_translations` VALUES (2391,'nl','ta','Dutch');
INSERT INTO `wp_icl_languages_translations` VALUES (2392,'nl','th','ดัตช์');
INSERT INTO `wp_icl_languages_translations` VALUES (2393,'nl','tr','Hollandaca');
INSERT INTO `wp_icl_languages_translations` VALUES (2394,'nl','uk','Dutch');
INSERT INTO `wp_icl_languages_translations` VALUES (2395,'nl','ur','Dutch');
INSERT INTO `wp_icl_languages_translations` VALUES (2396,'nl','uz','Dutch');
INSERT INTO `wp_icl_languages_translations` VALUES (2397,'nl','vi','Dutch');
INSERT INTO `wp_icl_languages_translations` VALUES (2398,'nl','yi','Dutch');
INSERT INTO `wp_icl_languages_translations` VALUES (2399,'nl','zh-hans','荷兰语');
INSERT INTO `wp_icl_languages_translations` VALUES (2400,'nl','zu','Dutch');
INSERT INTO `wp_icl_languages_translations` VALUES (2401,'nl','zh-hant','荷蘭語');
INSERT INTO `wp_icl_languages_translations` VALUES (2402,'nl','ms','Dutch');
INSERT INTO `wp_icl_languages_translations` VALUES (2403,'nl','gl','Dutch');
INSERT INTO `wp_icl_languages_translations` VALUES (2404,'nl','bn','Dutch');
INSERT INTO `wp_icl_languages_translations` VALUES (2405,'nl','az','Dutch');
INSERT INTO `wp_icl_languages_translations` VALUES (2406,'no','en','Norwegian Bokmål');
INSERT INTO `wp_icl_languages_translations` VALUES (2407,'no','es','Bokmål');
INSERT INTO `wp_icl_languages_translations` VALUES (2408,'no','de','Norwegisch (Buchsprache)');
INSERT INTO `wp_icl_languages_translations` VALUES (2409,'no','fr','Norvégien Bokmål');
INSERT INTO `wp_icl_languages_translations` VALUES (2410,'no','ar','البوكمالية النرويجية');
INSERT INTO `wp_icl_languages_translations` VALUES (2411,'no','bs','Norwegian Bokmål');
INSERT INTO `wp_icl_languages_translations` VALUES (2412,'no','bg','Норвежки книжовен');
INSERT INTO `wp_icl_languages_translations` VALUES (2413,'no','ca','Norwegian Bokmål');
INSERT INTO `wp_icl_languages_translations` VALUES (2414,'no','cs','Norwegian bokmål');
INSERT INTO `wp_icl_languages_translations` VALUES (2415,'no','sk','Nórsky jazyk Bokmål');
INSERT INTO `wp_icl_languages_translations` VALUES (2416,'no','cy','Norwegian Bokmål');
INSERT INTO `wp_icl_languages_translations` VALUES (2417,'no','da','Norwegian Bokmål');
INSERT INTO `wp_icl_languages_translations` VALUES (2418,'no','el','Νορβηγικά');
INSERT INTO `wp_icl_languages_translations` VALUES (2419,'no','eo','Norwegian Bokmål');
INSERT INTO `wp_icl_languages_translations` VALUES (2420,'no','et','Norwegian Bokmål');
INSERT INTO `wp_icl_languages_translations` VALUES (2421,'no','eu','Norwegian Bokmål');
INSERT INTO `wp_icl_languages_translations` VALUES (2422,'no','fa','Norwegian Bokmål');
INSERT INTO `wp_icl_languages_translations` VALUES (2423,'no','fi','Kirjanorja');
INSERT INTO `wp_icl_languages_translations` VALUES (2424,'no','ga','Norwegian Bokmål');
INSERT INTO `wp_icl_languages_translations` VALUES (2425,'no','he','נורווגית');
INSERT INTO `wp_icl_languages_translations` VALUES (2426,'no','hi','Norwegian Bokmål');
INSERT INTO `wp_icl_languages_translations` VALUES (2427,'no','hr','Književni norveški');
INSERT INTO `wp_icl_languages_translations` VALUES (2428,'no','hu','Norvég bokmål');
INSERT INTO `wp_icl_languages_translations` VALUES (2429,'no','hy','Norwegian Bokmål');
INSERT INTO `wp_icl_languages_translations` VALUES (2430,'no','id','Norwegian Bokmål');
INSERT INTO `wp_icl_languages_translations` VALUES (2431,'no','is','Norwegian Bokmål');
INSERT INTO `wp_icl_languages_translations` VALUES (2432,'no','it','Norvegese Bokmål');
INSERT INTO `wp_icl_languages_translations` VALUES (2433,'no','ja','ノルウェー・ブークモール');
INSERT INTO `wp_icl_languages_translations` VALUES (2434,'no','ko','노르웨이 보크말어');
INSERT INTO `wp_icl_languages_translations` VALUES (2435,'no','ku','Norwegian Bokmål');
INSERT INTO `wp_icl_languages_translations` VALUES (2436,'no','lv','Norwegian Bokmål');
INSERT INTO `wp_icl_languages_translations` VALUES (2437,'no','lt','Norwegian Bokmål');
INSERT INTO `wp_icl_languages_translations` VALUES (2438,'no','mk','Norwegian Bokmål');
INSERT INTO `wp_icl_languages_translations` VALUES (2439,'no','mt','Norwegian Bokmål');
INSERT INTO `wp_icl_languages_translations` VALUES (2440,'no','mn','Norwegian Bokmål');
INSERT INTO `wp_icl_languages_translations` VALUES (2441,'no','ne','Norwegian Bokmål');
INSERT INTO `wp_icl_languages_translations` VALUES (2442,'no','nl','Noors Bokmål');
INSERT INTO `wp_icl_languages_translations` VALUES (2443,'no','no','Norsk bokmål');
INSERT INTO `wp_icl_languages_translations` VALUES (2444,'no','pa','Norwegian Bokmål');
INSERT INTO `wp_icl_languages_translations` VALUES (2445,'no','pl','Norweski bokmål');
INSERT INTO `wp_icl_languages_translations` VALUES (2446,'no','pt-pt','Norueguês');
INSERT INTO `wp_icl_languages_translations` VALUES (2447,'no','pt-br','Norueguês');
INSERT INTO `wp_icl_languages_translations` VALUES (2448,'no','qu','Norwegian Bokmål');
INSERT INTO `wp_icl_languages_translations` VALUES (2449,'no','ro','Bokmål (norvegiană)');
INSERT INTO `wp_icl_languages_translations` VALUES (2450,'no','ru','Норвежский букмол');
INSERT INTO `wp_icl_languages_translations` VALUES (2451,'no','sl','Knjižna norveščina');
INSERT INTO `wp_icl_languages_translations` VALUES (2452,'no','so','Norwegian Bokmål');
INSERT INTO `wp_icl_languages_translations` VALUES (2453,'no','sq','Norwegian Bokmål');
INSERT INTO `wp_icl_languages_translations` VALUES (2454,'no','sr','Норвешки бокмал');
INSERT INTO `wp_icl_languages_translations` VALUES (2455,'no','sv','Norskt Bokmål');
INSERT INTO `wp_icl_languages_translations` VALUES (2456,'no','ta','Norwegian Bokmål');
INSERT INTO `wp_icl_languages_translations` VALUES (2457,'no','th','นอร์วิเจียนบอกมาล');
INSERT INTO `wp_icl_languages_translations` VALUES (2458,'no','tr','Bokmal Norveç dili');
INSERT INTO `wp_icl_languages_translations` VALUES (2459,'no','uk','Norwegian Bokmål');
INSERT INTO `wp_icl_languages_translations` VALUES (2460,'no','ur','Norwegian Bokmål');
INSERT INTO `wp_icl_languages_translations` VALUES (2461,'no','uz','Norwegian Bokmål');
INSERT INTO `wp_icl_languages_translations` VALUES (2462,'no','vi','Norwegian Bokmål');
INSERT INTO `wp_icl_languages_translations` VALUES (2463,'no','yi','Norwegian Bokmål');
INSERT INTO `wp_icl_languages_translations` VALUES (2464,'no','zh-hans','挪威布克莫尔语');
INSERT INTO `wp_icl_languages_translations` VALUES (2465,'no','zu','Norwegian Bokmål');
INSERT INTO `wp_icl_languages_translations` VALUES (2466,'no','zh-hant','挪威布克莫爾語');
INSERT INTO `wp_icl_languages_translations` VALUES (2467,'no','ms','Norwegian Bokmål');
INSERT INTO `wp_icl_languages_translations` VALUES (2468,'no','gl','Norwegian Bokmål');
INSERT INTO `wp_icl_languages_translations` VALUES (2469,'no','bn','Norwegian Bokmål');
INSERT INTO `wp_icl_languages_translations` VALUES (2470,'no','az','Norwegian Bokmål');
INSERT INTO `wp_icl_languages_translations` VALUES (2471,'pa','en','Punjabi');
INSERT INTO `wp_icl_languages_translations` VALUES (2472,'pa','es','Panyabí');
INSERT INTO `wp_icl_languages_translations` VALUES (2473,'pa','de','Pandschabi');
INSERT INTO `wp_icl_languages_translations` VALUES (2474,'pa','fr','Panjabi');
INSERT INTO `wp_icl_languages_translations` VALUES (2475,'pa','ar','البنجابية');
INSERT INTO `wp_icl_languages_translations` VALUES (2476,'pa','bs','Punjabi');
INSERT INTO `wp_icl_languages_translations` VALUES (2477,'pa','bg','Панджабски');
INSERT INTO `wp_icl_languages_translations` VALUES (2478,'pa','ca','Punjabi');
INSERT INTO `wp_icl_languages_translations` VALUES (2479,'pa','cs','Punjabi');
INSERT INTO `wp_icl_languages_translations` VALUES (2480,'pa','sk','Pandžábčina');
INSERT INTO `wp_icl_languages_translations` VALUES (2481,'pa','cy','Punjabi');
INSERT INTO `wp_icl_languages_translations` VALUES (2482,'pa','da','Punjabi');
INSERT INTO `wp_icl_languages_translations` VALUES (2483,'pa','el','Παντζάμπι');
INSERT INTO `wp_icl_languages_translations` VALUES (2484,'pa','eo','Punjabi');
INSERT INTO `wp_icl_languages_translations` VALUES (2485,'pa','et','Punjabi');
INSERT INTO `wp_icl_languages_translations` VALUES (2486,'pa','eu','Punjabi');
INSERT INTO `wp_icl_languages_translations` VALUES (2487,'pa','fa','Punjabi');
INSERT INTO `wp_icl_languages_translations` VALUES (2488,'pa','fi','Pandzabi');
INSERT INTO `wp_icl_languages_translations` VALUES (2489,'pa','ga','Punjabi');
INSERT INTO `wp_icl_languages_translations` VALUES (2490,'pa','he','פנג\'אבית');
INSERT INTO `wp_icl_languages_translations` VALUES (2491,'pa','hi','Punjabi');
INSERT INTO `wp_icl_languages_translations` VALUES (2492,'pa','hr','Pendžabljanin');
INSERT INTO `wp_icl_languages_translations` VALUES (2493,'pa','hu','Pandzsábi');
INSERT INTO `wp_icl_languages_translations` VALUES (2494,'pa','hy','Punjabi');
INSERT INTO `wp_icl_languages_translations` VALUES (2495,'pa','id','Punjabi');
INSERT INTO `wp_icl_languages_translations` VALUES (2496,'pa','is','Punjabi');
INSERT INTO `wp_icl_languages_translations` VALUES (2497,'pa','it','Panjabi');
INSERT INTO `wp_icl_languages_translations` VALUES (2498,'pa','ja','パンジャーブ語');
INSERT INTO `wp_icl_languages_translations` VALUES (2499,'pa','ko','펀자브어');
INSERT INTO `wp_icl_languages_translations` VALUES (2500,'pa','ku','Punjabi');
INSERT INTO `wp_icl_languages_translations` VALUES (2501,'pa','lv','Punjabi');
INSERT INTO `wp_icl_languages_translations` VALUES (2502,'pa','lt','Punjabi');
INSERT INTO `wp_icl_languages_translations` VALUES (2503,'pa','mk','Punjabi');
INSERT INTO `wp_icl_languages_translations` VALUES (2504,'pa','mt','Punjabi');
INSERT INTO `wp_icl_languages_translations` VALUES (2505,'pa','mn','Punjabi');
INSERT INTO `wp_icl_languages_translations` VALUES (2506,'pa','ne','Punjabi');
INSERT INTO `wp_icl_languages_translations` VALUES (2507,'pa','nl','Punjabi');
INSERT INTO `wp_icl_languages_translations` VALUES (2508,'pa','no','Punjabi');
INSERT INTO `wp_icl_languages_translations` VALUES (2509,'pa','pa','Punjabi');
INSERT INTO `wp_icl_languages_translations` VALUES (2510,'pa','pl','Pendżabi');
INSERT INTO `wp_icl_languages_translations` VALUES (2511,'pa','pt-pt','Panjabi');
INSERT INTO `wp_icl_languages_translations` VALUES (2512,'pa','pt-br','Panjabi');
INSERT INTO `wp_icl_languages_translations` VALUES (2513,'pa','qu','Punjabi');
INSERT INTO `wp_icl_languages_translations` VALUES (2514,'pa','ro','Punjabi');
INSERT INTO `wp_icl_languages_translations` VALUES (2515,'pa','ru','Панджаби');
INSERT INTO `wp_icl_languages_translations` VALUES (2516,'pa','sl','Pandžabščina');
INSERT INTO `wp_icl_languages_translations` VALUES (2517,'pa','so','Punjabi');
INSERT INTO `wp_icl_languages_translations` VALUES (2518,'pa','sq','Punjabi');
INSERT INTO `wp_icl_languages_translations` VALUES (2519,'pa','sr','панџаби');
INSERT INTO `wp_icl_languages_translations` VALUES (2520,'pa','sv','Punjabi');
INSERT INTO `wp_icl_languages_translations` VALUES (2521,'pa','ta','Punjabi');
INSERT INTO `wp_icl_languages_translations` VALUES (2522,'pa','th','ปัญจาบ');
INSERT INTO `wp_icl_languages_translations` VALUES (2523,'pa','tr','Pencapça');
INSERT INTO `wp_icl_languages_translations` VALUES (2524,'pa','uk','Punjabi');
INSERT INTO `wp_icl_languages_translations` VALUES (2525,'pa','ur','Punjabi');
INSERT INTO `wp_icl_languages_translations` VALUES (2526,'pa','uz','Punjabi');
INSERT INTO `wp_icl_languages_translations` VALUES (2527,'pa','vi','Punjabi');
INSERT INTO `wp_icl_languages_translations` VALUES (2528,'pa','yi','Punjabi');
INSERT INTO `wp_icl_languages_translations` VALUES (2529,'pa','zh-hans','旁遮普语');
INSERT INTO `wp_icl_languages_translations` VALUES (2530,'pa','zu','Punjabi');
INSERT INTO `wp_icl_languages_translations` VALUES (2531,'pa','zh-hant','旁遮普語');
INSERT INTO `wp_icl_languages_translations` VALUES (2532,'pa','ms','Punjabi');
INSERT INTO `wp_icl_languages_translations` VALUES (2533,'pa','gl','Punjabi');
INSERT INTO `wp_icl_languages_translations` VALUES (2534,'pa','bn','Punjabi');
INSERT INTO `wp_icl_languages_translations` VALUES (2535,'pa','az','Punjabi');
INSERT INTO `wp_icl_languages_translations` VALUES (2536,'pl','en','Polish');
INSERT INTO `wp_icl_languages_translations` VALUES (2537,'pl','es','Polaco');
INSERT INTO `wp_icl_languages_translations` VALUES (2538,'pl','de','Polnisch');
INSERT INTO `wp_icl_languages_translations` VALUES (2539,'pl','fr','Polonais');
INSERT INTO `wp_icl_languages_translations` VALUES (2540,'pl','ar','البولندية');
INSERT INTO `wp_icl_languages_translations` VALUES (2541,'pl','bs','Polish');
INSERT INTO `wp_icl_languages_translations` VALUES (2542,'pl','bg','Полски');
INSERT INTO `wp_icl_languages_translations` VALUES (2543,'pl','ca','Polish');
INSERT INTO `wp_icl_languages_translations` VALUES (2544,'pl','cs','Polský');
INSERT INTO `wp_icl_languages_translations` VALUES (2545,'pl','sk','Polština');
INSERT INTO `wp_icl_languages_translations` VALUES (2546,'pl','cy','Polish');
INSERT INTO `wp_icl_languages_translations` VALUES (2547,'pl','da','Polish');
INSERT INTO `wp_icl_languages_translations` VALUES (2548,'pl','el','Πολωνικά');
INSERT INTO `wp_icl_languages_translations` VALUES (2549,'pl','eo','Polish');
INSERT INTO `wp_icl_languages_translations` VALUES (2550,'pl','et','Polish');
INSERT INTO `wp_icl_languages_translations` VALUES (2551,'pl','eu','Polish');
INSERT INTO `wp_icl_languages_translations` VALUES (2552,'pl','fa','Polish');
INSERT INTO `wp_icl_languages_translations` VALUES (2553,'pl','fi','Puola');
INSERT INTO `wp_icl_languages_translations` VALUES (2554,'pl','ga','Polish');
INSERT INTO `wp_icl_languages_translations` VALUES (2555,'pl','he','פולנית');
INSERT INTO `wp_icl_languages_translations` VALUES (2556,'pl','hi','Polish');
INSERT INTO `wp_icl_languages_translations` VALUES (2557,'pl','hr','Poljski');
INSERT INTO `wp_icl_languages_translations` VALUES (2558,'pl','hu','Lengyel');
INSERT INTO `wp_icl_languages_translations` VALUES (2559,'pl','hy','Polish');
INSERT INTO `wp_icl_languages_translations` VALUES (2560,'pl','id','Polish');
INSERT INTO `wp_icl_languages_translations` VALUES (2561,'pl','is','Polish');
INSERT INTO `wp_icl_languages_translations` VALUES (2562,'pl','it','Polacco');
INSERT INTO `wp_icl_languages_translations` VALUES (2563,'pl','ja','ポーランド語');
INSERT INTO `wp_icl_languages_translations` VALUES (2564,'pl','ko','폴란드어');
INSERT INTO `wp_icl_languages_translations` VALUES (2565,'pl','ku','Polish');
INSERT INTO `wp_icl_languages_translations` VALUES (2566,'pl','lv','Polish');
INSERT INTO `wp_icl_languages_translations` VALUES (2567,'pl','lt','Polish');
INSERT INTO `wp_icl_languages_translations` VALUES (2568,'pl','mk','Polish');
INSERT INTO `wp_icl_languages_translations` VALUES (2569,'pl','mt','Polish');
INSERT INTO `wp_icl_languages_translations` VALUES (2570,'pl','mn','Polish');
INSERT INTO `wp_icl_languages_translations` VALUES (2571,'pl','ne','Polish');
INSERT INTO `wp_icl_languages_translations` VALUES (2572,'pl','nl','Pools');
INSERT INTO `wp_icl_languages_translations` VALUES (2573,'pl','no','Polsk');
INSERT INTO `wp_icl_languages_translations` VALUES (2574,'pl','pa','Polish');
INSERT INTO `wp_icl_languages_translations` VALUES (2575,'pl','pl','Polski');
INSERT INTO `wp_icl_languages_translations` VALUES (2576,'pl','pt-pt','Polonês');
INSERT INTO `wp_icl_languages_translations` VALUES (2577,'pl','pt-br','Polonês');
INSERT INTO `wp_icl_languages_translations` VALUES (2578,'pl','qu','Polish');
INSERT INTO `wp_icl_languages_translations` VALUES (2579,'pl','ro','Poloneză');
INSERT INTO `wp_icl_languages_translations` VALUES (2580,'pl','ru','Польский');
INSERT INTO `wp_icl_languages_translations` VALUES (2581,'pl','sl','Poljski');
INSERT INTO `wp_icl_languages_translations` VALUES (2582,'pl','so','Polish');
INSERT INTO `wp_icl_languages_translations` VALUES (2583,'pl','sq','Polish');
INSERT INTO `wp_icl_languages_translations` VALUES (2584,'pl','sr','пољски');
INSERT INTO `wp_icl_languages_translations` VALUES (2585,'pl','sv','Polska');
INSERT INTO `wp_icl_languages_translations` VALUES (2586,'pl','ta','Polish');
INSERT INTO `wp_icl_languages_translations` VALUES (2587,'pl','th','โปแลนด์');
INSERT INTO `wp_icl_languages_translations` VALUES (2588,'pl','tr','Polonyaca');
INSERT INTO `wp_icl_languages_translations` VALUES (2589,'pl','uk','Polish');
INSERT INTO `wp_icl_languages_translations` VALUES (2590,'pl','ur','Polish');
INSERT INTO `wp_icl_languages_translations` VALUES (2591,'pl','uz','Polish');
INSERT INTO `wp_icl_languages_translations` VALUES (2592,'pl','vi','Polish');
INSERT INTO `wp_icl_languages_translations` VALUES (2593,'pl','yi','Polish');
INSERT INTO `wp_icl_languages_translations` VALUES (2594,'pl','zh-hans','波兰语');
INSERT INTO `wp_icl_languages_translations` VALUES (2595,'pl','zu','Polish');
INSERT INTO `wp_icl_languages_translations` VALUES (2596,'pl','zh-hant','波蘭語');
INSERT INTO `wp_icl_languages_translations` VALUES (2597,'pl','ms','Polish');
INSERT INTO `wp_icl_languages_translations` VALUES (2598,'pl','gl','Polish');
INSERT INTO `wp_icl_languages_translations` VALUES (2599,'pl','bn','Polish');
INSERT INTO `wp_icl_languages_translations` VALUES (2600,'pl','az','Polish');
INSERT INTO `wp_icl_languages_translations` VALUES (2601,'pt-pt','en','Portuguese (Portugal)');
INSERT INTO `wp_icl_languages_translations` VALUES (2602,'pt-pt','es','Portugués, Portugal');
INSERT INTO `wp_icl_languages_translations` VALUES (2603,'pt-pt','de','Portugiesisch, Portugal');
INSERT INTO `wp_icl_languages_translations` VALUES (2604,'pt-pt','fr','Portugais - du Portugal');
INSERT INTO `wp_icl_languages_translations` VALUES (2605,'pt-pt','ar','البرتغالية ، البرتغال');
INSERT INTO `wp_icl_languages_translations` VALUES (2606,'pt-pt','bs','Portuguese, Portugal');
INSERT INTO `wp_icl_languages_translations` VALUES (2607,'pt-pt','bg','Португалски (Португалия)');
INSERT INTO `wp_icl_languages_translations` VALUES (2608,'pt-pt','ca','Portuguese, Portugal');
INSERT INTO `wp_icl_languages_translations` VALUES (2609,'pt-pt','cs','Portugalština ( Portugalsko)');
INSERT INTO `wp_icl_languages_translations` VALUES (2610,'pt-pt','sk','Portugalština');
INSERT INTO `wp_icl_languages_translations` VALUES (2611,'pt-pt','cy','Portuguese, Portugal');
INSERT INTO `wp_icl_languages_translations` VALUES (2612,'pt-pt','da','Portuguese, Portugal');
INSERT INTO `wp_icl_languages_translations` VALUES (2613,'pt-pt','el','Πορτογαλικά');
INSERT INTO `wp_icl_languages_translations` VALUES (2614,'pt-pt','eo','Portuguese, Portugal');
INSERT INTO `wp_icl_languages_translations` VALUES (2615,'pt-pt','et','Portuguese, Portugal');
INSERT INTO `wp_icl_languages_translations` VALUES (2616,'pt-pt','eu','Portuguese, Portugal');
INSERT INTO `wp_icl_languages_translations` VALUES (2617,'pt-pt','fa','Portuguese, Portugal');
INSERT INTO `wp_icl_languages_translations` VALUES (2618,'pt-pt','fi','Portugali');
INSERT INTO `wp_icl_languages_translations` VALUES (2619,'pt-pt','ga','Portuguese, Portugal');
INSERT INTO `wp_icl_languages_translations` VALUES (2620,'pt-pt','he','פורטוגזית');
INSERT INTO `wp_icl_languages_translations` VALUES (2621,'pt-pt','hi','Portuguese, Portugal');
INSERT INTO `wp_icl_languages_translations` VALUES (2622,'pt-pt','hr','Portugalski (Portugal)');
INSERT INTO `wp_icl_languages_translations` VALUES (2623,'pt-pt','hu','Portugál');
INSERT INTO `wp_icl_languages_translations` VALUES (2624,'pt-pt','hy','Portuguese, Portugal');
INSERT INTO `wp_icl_languages_translations` VALUES (2625,'pt-pt','id','Portuguese, Portugal');
INSERT INTO `wp_icl_languages_translations` VALUES (2626,'pt-pt','is','Portuguese, Portugal');
INSERT INTO `wp_icl_languages_translations` VALUES (2627,'pt-pt','it','Portoghese, Portogallo');
INSERT INTO `wp_icl_languages_translations` VALUES (2628,'pt-pt','ja','ポルトガル語');
INSERT INTO `wp_icl_languages_translations` VALUES (2629,'pt-pt','ko','포르투갈 포르투갈어');
INSERT INTO `wp_icl_languages_translations` VALUES (2630,'pt-pt','ku','Portuguese, Portugal');
INSERT INTO `wp_icl_languages_translations` VALUES (2631,'pt-pt','lv','Portuguese, Portugal');
INSERT INTO `wp_icl_languages_translations` VALUES (2632,'pt-pt','lt','Portuguese, Portugal');
INSERT INTO `wp_icl_languages_translations` VALUES (2633,'pt-pt','mk','Portuguese, Portugal');
INSERT INTO `wp_icl_languages_translations` VALUES (2634,'pt-pt','mt','Portuguese, Portugal');
INSERT INTO `wp_icl_languages_translations` VALUES (2635,'pt-pt','mn','Portuguese, Portugal');
INSERT INTO `wp_icl_languages_translations` VALUES (2636,'pt-pt','ne','Portuguese, Portugal');
INSERT INTO `wp_icl_languages_translations` VALUES (2637,'pt-pt','nl','Portugees, Portugal');
INSERT INTO `wp_icl_languages_translations` VALUES (2638,'pt-pt','no','Portugisisk (Portugal)');
INSERT INTO `wp_icl_languages_translations` VALUES (2639,'pt-pt','pa','Portuguese, Portugal');
INSERT INTO `wp_icl_languages_translations` VALUES (2640,'pt-pt','pl','Portugalski, Portugalia');
INSERT INTO `wp_icl_languages_translations` VALUES (2641,'pt-pt','pt-pt','Português');
INSERT INTO `wp_icl_languages_translations` VALUES (2642,'pt-pt','pt-br','Português');
INSERT INTO `wp_icl_languages_translations` VALUES (2643,'pt-pt','qu','Portuguese, Portugal');
INSERT INTO `wp_icl_languages_translations` VALUES (2644,'pt-pt','ro','Portugheză (Portugalia)');
INSERT INTO `wp_icl_languages_translations` VALUES (2645,'pt-pt','ru','Португальский, Португалия');
INSERT INTO `wp_icl_languages_translations` VALUES (2646,'pt-pt','sl','Portugalščina ( Portugalska )');
INSERT INTO `wp_icl_languages_translations` VALUES (2647,'pt-pt','so','Portuguese, Portugal');
INSERT INTO `wp_icl_languages_translations` VALUES (2648,'pt-pt','sq','Portuguese, Portugal');
INSERT INTO `wp_icl_languages_translations` VALUES (2649,'pt-pt','sr','Португалски (Португалија)');
INSERT INTO `wp_icl_languages_translations` VALUES (2650,'pt-pt','sv','Portugisiska, Portugal');
INSERT INTO `wp_icl_languages_translations` VALUES (2651,'pt-pt','ta','Portuguese, Portugal');
INSERT INTO `wp_icl_languages_translations` VALUES (2652,'pt-pt','th','โปรตุเกส');
INSERT INTO `wp_icl_languages_translations` VALUES (2653,'pt-pt','tr','Portekizce, Portekiz');
INSERT INTO `wp_icl_languages_translations` VALUES (2654,'pt-pt','uk','Portuguese, Portugal');
INSERT INTO `wp_icl_languages_translations` VALUES (2655,'pt-pt','ur','Portuguese, Portugal');
INSERT INTO `wp_icl_languages_translations` VALUES (2656,'pt-pt','uz','Portuguese, Portugal');
INSERT INTO `wp_icl_languages_translations` VALUES (2657,'pt-pt','vi','Portuguese, Portugal');
INSERT INTO `wp_icl_languages_translations` VALUES (2658,'pt-pt','yi','Portuguese, Portugal');
INSERT INTO `wp_icl_languages_translations` VALUES (2659,'pt-pt','zh-hans','葡萄牙语（葡萄牙）');
INSERT INTO `wp_icl_languages_translations` VALUES (2660,'pt-pt','zu','Portuguese, Portugal');
INSERT INTO `wp_icl_languages_translations` VALUES (2661,'pt-pt','zh-hant','葡萄牙語（葡萄牙）');
INSERT INTO `wp_icl_languages_translations` VALUES (2662,'pt-pt','ms','Portuguese, Portugal');
INSERT INTO `wp_icl_languages_translations` VALUES (2663,'pt-pt','gl','Portuguese, Portugal');
INSERT INTO `wp_icl_languages_translations` VALUES (2664,'pt-pt','bn','Portuguese, Portugal');
INSERT INTO `wp_icl_languages_translations` VALUES (2665,'pt-pt','az','Portuguese, Portugal');
INSERT INTO `wp_icl_languages_translations` VALUES (2666,'pt-br','en','Portuguese (Brazil)');
INSERT INTO `wp_icl_languages_translations` VALUES (2667,'pt-br','es','Portugués, Brasil');
INSERT INTO `wp_icl_languages_translations` VALUES (2668,'pt-br','de','Portugiesisch, Brasilien');
INSERT INTO `wp_icl_languages_translations` VALUES (2669,'pt-br','fr','Portugais - du Brésil');
INSERT INTO `wp_icl_languages_translations` VALUES (2670,'pt-br','ar','البرتغالية ،البرازيل');
INSERT INTO `wp_icl_languages_translations` VALUES (2671,'pt-br','bs','Portuguese, Brazil');
INSERT INTO `wp_icl_languages_translations` VALUES (2672,'pt-br','bg','Португалски (Бразилия)');
INSERT INTO `wp_icl_languages_translations` VALUES (2673,'pt-br','ca','Portuguese, Brazil');
INSERT INTO `wp_icl_languages_translations` VALUES (2674,'pt-br','cs','Portugalština ( Brazílie)');
INSERT INTO `wp_icl_languages_translations` VALUES (2675,'pt-br','sk','Brazílska Portugalština');
INSERT INTO `wp_icl_languages_translations` VALUES (2676,'pt-br','cy','Portuguese, Brazil');
INSERT INTO `wp_icl_languages_translations` VALUES (2677,'pt-br','da','Portuguese, Brazil');
INSERT INTO `wp_icl_languages_translations` VALUES (2678,'pt-br','el','Πορτογαλικά Βραζιλίας');
INSERT INTO `wp_icl_languages_translations` VALUES (2679,'pt-br','eo','Portuguese, Brazil');
INSERT INTO `wp_icl_languages_translations` VALUES (2680,'pt-br','et','Portuguese, Brazil');
INSERT INTO `wp_icl_languages_translations` VALUES (2681,'pt-br','eu','Portuguese, Brazil');
INSERT INTO `wp_icl_languages_translations` VALUES (2682,'pt-br','fa','Portuguese, Brazil');
INSERT INTO `wp_icl_languages_translations` VALUES (2683,'pt-br','fi','Brasilian portugali');
INSERT INTO `wp_icl_languages_translations` VALUES (2684,'pt-br','ga','Portuguese, Brazil');
INSERT INTO `wp_icl_languages_translations` VALUES (2685,'pt-br','he','פורטוגזית - ברזיל');
INSERT INTO `wp_icl_languages_translations` VALUES (2686,'pt-br','hi','Portuguese, Brazil');
INSERT INTO `wp_icl_languages_translations` VALUES (2687,'pt-br','hr','Portugalski (Brazil)');
INSERT INTO `wp_icl_languages_translations` VALUES (2688,'pt-br','hu','Brazil');
INSERT INTO `wp_icl_languages_translations` VALUES (2689,'pt-br','hy','Portuguese, Brazil');
INSERT INTO `wp_icl_languages_translations` VALUES (2690,'pt-br','id','Portuguese, Brazil');
INSERT INTO `wp_icl_languages_translations` VALUES (2691,'pt-br','is','Portuguese, Brazil');
INSERT INTO `wp_icl_languages_translations` VALUES (2692,'pt-br','it','Portoghese, Brasile');
INSERT INTO `wp_icl_languages_translations` VALUES (2693,'pt-br','ja','ポルトガル語（ブラジル）');
INSERT INTO `wp_icl_languages_translations` VALUES (2694,'pt-br','ko','브라질 포르투갈어');
INSERT INTO `wp_icl_languages_translations` VALUES (2695,'pt-br','ku','Portuguese, Brazil');
INSERT INTO `wp_icl_languages_translations` VALUES (2696,'pt-br','lv','Portuguese, Brazil');
INSERT INTO `wp_icl_languages_translations` VALUES (2697,'pt-br','lt','Portuguese, Brazil');
INSERT INTO `wp_icl_languages_translations` VALUES (2698,'pt-br','mk','Portuguese, Brazil');
INSERT INTO `wp_icl_languages_translations` VALUES (2699,'pt-br','mt','Portuguese, Brazil');
INSERT INTO `wp_icl_languages_translations` VALUES (2700,'pt-br','mn','Portuguese, Brazil');
INSERT INTO `wp_icl_languages_translations` VALUES (2701,'pt-br','ne','Portuguese, Brazil');
INSERT INTO `wp_icl_languages_translations` VALUES (2702,'pt-br','nl','Portugees, Brazilië');
INSERT INTO `wp_icl_languages_translations` VALUES (2703,'pt-br','no','Portugisisk (Brasil)');
INSERT INTO `wp_icl_languages_translations` VALUES (2704,'pt-br','pa','Portuguese, Brazil');
INSERT INTO `wp_icl_languages_translations` VALUES (2705,'pt-br','pl','Portugalski, Brazylia');
INSERT INTO `wp_icl_languages_translations` VALUES (2706,'pt-br','pt-pt','Português');
INSERT INTO `wp_icl_languages_translations` VALUES (2707,'pt-br','pt-br','Português');
INSERT INTO `wp_icl_languages_translations` VALUES (2708,'pt-br','qu','Portuguese, Brazil');
INSERT INTO `wp_icl_languages_translations` VALUES (2709,'pt-br','ro','Portugheză (Brazilia)');
INSERT INTO `wp_icl_languages_translations` VALUES (2710,'pt-br','ru','Португальский, Бразилия');
INSERT INTO `wp_icl_languages_translations` VALUES (2711,'pt-br','sl','Portugalščina ( Brazilija )');
INSERT INTO `wp_icl_languages_translations` VALUES (2712,'pt-br','so','Portuguese, Brazil');
INSERT INTO `wp_icl_languages_translations` VALUES (2713,'pt-br','sq','Portuguese, Brazil');
INSERT INTO `wp_icl_languages_translations` VALUES (2714,'pt-br','sr','Португалски (Бразил)');
INSERT INTO `wp_icl_languages_translations` VALUES (2715,'pt-br','sv','Portugisiska, Brasilien');
INSERT INTO `wp_icl_languages_translations` VALUES (2716,'pt-br','ta','Portuguese, Brazil');
INSERT INTO `wp_icl_languages_translations` VALUES (2717,'pt-br','th','โปรตุเกสบราซิล');
INSERT INTO `wp_icl_languages_translations` VALUES (2718,'pt-br','tr','Portekizce, Brezilya');
INSERT INTO `wp_icl_languages_translations` VALUES (2719,'pt-br','uk','Portuguese, Brazil');
INSERT INTO `wp_icl_languages_translations` VALUES (2720,'pt-br','ur','Portuguese, Brazil');
INSERT INTO `wp_icl_languages_translations` VALUES (2721,'pt-br','uz','Portuguese, Brazil');
INSERT INTO `wp_icl_languages_translations` VALUES (2722,'pt-br','vi','Portuguese, Brazil');
INSERT INTO `wp_icl_languages_translations` VALUES (2723,'pt-br','yi','Portuguese, Brazil');
INSERT INTO `wp_icl_languages_translations` VALUES (2724,'pt-br','zh-hans','葡萄牙语（巴西）');
INSERT INTO `wp_icl_languages_translations` VALUES (2725,'pt-br','zu','Portuguese, Brazil');
INSERT INTO `wp_icl_languages_translations` VALUES (2726,'pt-br','zh-hant','葡萄牙語（巴西）');
INSERT INTO `wp_icl_languages_translations` VALUES (2727,'pt-br','ms','Portuguese, Brazil');
INSERT INTO `wp_icl_languages_translations` VALUES (2728,'pt-br','gl','Portuguese, Brazil');
INSERT INTO `wp_icl_languages_translations` VALUES (2729,'pt-br','bn','Portuguese, Brazil');
INSERT INTO `wp_icl_languages_translations` VALUES (2730,'pt-br','az','Portuguese, Brazil');
INSERT INTO `wp_icl_languages_translations` VALUES (2731,'qu','en','Quechua');
INSERT INTO `wp_icl_languages_translations` VALUES (2732,'qu','es','Quechua');
INSERT INTO `wp_icl_languages_translations` VALUES (2733,'qu','de','Quechua');
INSERT INTO `wp_icl_languages_translations` VALUES (2734,'qu','fr','Quechua');
INSERT INTO `wp_icl_languages_translations` VALUES (2735,'qu','ar','الكويتشوا');
INSERT INTO `wp_icl_languages_translations` VALUES (2736,'qu','bs','Quechua');
INSERT INTO `wp_icl_languages_translations` VALUES (2737,'qu','bg','Кечуа');
INSERT INTO `wp_icl_languages_translations` VALUES (2738,'qu','ca','Quechua');
INSERT INTO `wp_icl_languages_translations` VALUES (2739,'qu','cs','Quechua');
INSERT INTO `wp_icl_languages_translations` VALUES (2740,'qu','sk','Jazyk Quechua');
INSERT INTO `wp_icl_languages_translations` VALUES (2741,'qu','cy','Quechua');
INSERT INTO `wp_icl_languages_translations` VALUES (2742,'qu','da','Quechua');
INSERT INTO `wp_icl_languages_translations` VALUES (2743,'qu','el','Κέτσουα');
INSERT INTO `wp_icl_languages_translations` VALUES (2744,'qu','eo','Quechua');
INSERT INTO `wp_icl_languages_translations` VALUES (2745,'qu','et','Quechua');
INSERT INTO `wp_icl_languages_translations` VALUES (2746,'qu','eu','Quechua');
INSERT INTO `wp_icl_languages_translations` VALUES (2747,'qu','fa','Quechua');
INSERT INTO `wp_icl_languages_translations` VALUES (2748,'qu','fi','Ketsua');
INSERT INTO `wp_icl_languages_translations` VALUES (2749,'qu','ga','Quechua');
INSERT INTO `wp_icl_languages_translations` VALUES (2750,'qu','he','קצ\'ואה');
INSERT INTO `wp_icl_languages_translations` VALUES (2751,'qu','hi','Quechua');
INSERT INTO `wp_icl_languages_translations` VALUES (2752,'qu','hr','Quechua');
INSERT INTO `wp_icl_languages_translations` VALUES (2753,'qu','hu','Quechua');
INSERT INTO `wp_icl_languages_translations` VALUES (2754,'qu','hy','Quechua');
INSERT INTO `wp_icl_languages_translations` VALUES (2755,'qu','id','Quechua');
INSERT INTO `wp_icl_languages_translations` VALUES (2756,'qu','is','Quechua');
INSERT INTO `wp_icl_languages_translations` VALUES (2757,'qu','it','Quechua');
INSERT INTO `wp_icl_languages_translations` VALUES (2758,'qu','ja','ケチュア語');
INSERT INTO `wp_icl_languages_translations` VALUES (2759,'qu','ko','케추아어');
INSERT INTO `wp_icl_languages_translations` VALUES (2760,'qu','ku','Quechua');
INSERT INTO `wp_icl_languages_translations` VALUES (2761,'qu','lv','Quechua');
INSERT INTO `wp_icl_languages_translations` VALUES (2762,'qu','lt','Quechua');
INSERT INTO `wp_icl_languages_translations` VALUES (2763,'qu','mk','Quechua');
INSERT INTO `wp_icl_languages_translations` VALUES (2764,'qu','mt','Quechua');
INSERT INTO `wp_icl_languages_translations` VALUES (2765,'qu','mn','Quechua');
INSERT INTO `wp_icl_languages_translations` VALUES (2766,'qu','ne','Quechua');
INSERT INTO `wp_icl_languages_translations` VALUES (2767,'qu','nl','Quechua');
INSERT INTO `wp_icl_languages_translations` VALUES (2768,'qu','no','Quechua');
INSERT INTO `wp_icl_languages_translations` VALUES (2769,'qu','pa','Quechua');
INSERT INTO `wp_icl_languages_translations` VALUES (2770,'qu','pl','Keczua');
INSERT INTO `wp_icl_languages_translations` VALUES (2771,'qu','pt-pt','Quechua');
INSERT INTO `wp_icl_languages_translations` VALUES (2772,'qu','pt-br','Quechua');
INSERT INTO `wp_icl_languages_translations` VALUES (2773,'qu','qu','Quechua');
INSERT INTO `wp_icl_languages_translations` VALUES (2774,'qu','ro','Quechuană');
INSERT INTO `wp_icl_languages_translations` VALUES (2775,'qu','ru','Кечуа');
INSERT INTO `wp_icl_languages_translations` VALUES (2776,'qu','sl','Quechua');
INSERT INTO `wp_icl_languages_translations` VALUES (2777,'qu','so','Quechua');
INSERT INTO `wp_icl_languages_translations` VALUES (2778,'qu','sq','Quechua');
INSERT INTO `wp_icl_languages_translations` VALUES (2779,'qu','sr','Кечуа');
INSERT INTO `wp_icl_languages_translations` VALUES (2780,'qu','sv','Quechua');
INSERT INTO `wp_icl_languages_translations` VALUES (2781,'qu','ta','Quechua');
INSERT INTO `wp_icl_languages_translations` VALUES (2782,'qu','th','คิวชัว');
INSERT INTO `wp_icl_languages_translations` VALUES (2783,'qu','tr','Quechua dili');
INSERT INTO `wp_icl_languages_translations` VALUES (2784,'qu','uk','Quechua');
INSERT INTO `wp_icl_languages_translations` VALUES (2785,'qu','ur','Quechua');
INSERT INTO `wp_icl_languages_translations` VALUES (2786,'qu','uz','Quechua');
INSERT INTO `wp_icl_languages_translations` VALUES (2787,'qu','vi','Quechua');
INSERT INTO `wp_icl_languages_translations` VALUES (2788,'qu','yi','Quechua');
INSERT INTO `wp_icl_languages_translations` VALUES (2789,'qu','zh-hans','盖丘亚语');
INSERT INTO `wp_icl_languages_translations` VALUES (2790,'qu','zu','Quechua');
INSERT INTO `wp_icl_languages_translations` VALUES (2791,'qu','zh-hant','蓋丘亞語');
INSERT INTO `wp_icl_languages_translations` VALUES (2792,'qu','ms','Quechua');
INSERT INTO `wp_icl_languages_translations` VALUES (2793,'qu','gl','Quechua');
INSERT INTO `wp_icl_languages_translations` VALUES (2794,'qu','bn','Quechua');
INSERT INTO `wp_icl_languages_translations` VALUES (2795,'qu','az','Quechua');
INSERT INTO `wp_icl_languages_translations` VALUES (2796,'ro','en','Romanian');
INSERT INTO `wp_icl_languages_translations` VALUES (2797,'ro','es','Rumano');
INSERT INTO `wp_icl_languages_translations` VALUES (2798,'ro','de','Rumänisch');
INSERT INTO `wp_icl_languages_translations` VALUES (2799,'ro','fr','Roumain');
INSERT INTO `wp_icl_languages_translations` VALUES (2800,'ro','ar','الرومانية');
INSERT INTO `wp_icl_languages_translations` VALUES (2801,'ro','bs','Romanian');
INSERT INTO `wp_icl_languages_translations` VALUES (2802,'ro','bg','Румънски');
INSERT INTO `wp_icl_languages_translations` VALUES (2803,'ro','ca','Romanian');
INSERT INTO `wp_icl_languages_translations` VALUES (2804,'ro','cs','Rumunština');
INSERT INTO `wp_icl_languages_translations` VALUES (2805,'ro','sk','Rumunčina');
INSERT INTO `wp_icl_languages_translations` VALUES (2806,'ro','cy','Romanian');
INSERT INTO `wp_icl_languages_translations` VALUES (2807,'ro','da','Romanian');
INSERT INTO `wp_icl_languages_translations` VALUES (2808,'ro','el','Ρουμανικά');
INSERT INTO `wp_icl_languages_translations` VALUES (2809,'ro','eo','Romanian');
INSERT INTO `wp_icl_languages_translations` VALUES (2810,'ro','et','Romanian');
INSERT INTO `wp_icl_languages_translations` VALUES (2811,'ro','eu','Romanian');
INSERT INTO `wp_icl_languages_translations` VALUES (2812,'ro','fa','Romanian');
INSERT INTO `wp_icl_languages_translations` VALUES (2813,'ro','fi','Romania');
INSERT INTO `wp_icl_languages_translations` VALUES (2814,'ro','ga','Romanian');
INSERT INTO `wp_icl_languages_translations` VALUES (2815,'ro','he','רומנית');
INSERT INTO `wp_icl_languages_translations` VALUES (2816,'ro','hi','Romanian');
INSERT INTO `wp_icl_languages_translations` VALUES (2817,'ro','hr','Rumunjski');
INSERT INTO `wp_icl_languages_translations` VALUES (2818,'ro','hu','Román');
INSERT INTO `wp_icl_languages_translations` VALUES (2819,'ro','hy','Romanian');
INSERT INTO `wp_icl_languages_translations` VALUES (2820,'ro','id','Romanian');
INSERT INTO `wp_icl_languages_translations` VALUES (2821,'ro','is','Romanian');
INSERT INTO `wp_icl_languages_translations` VALUES (2822,'ro','it','Rumeno');
INSERT INTO `wp_icl_languages_translations` VALUES (2823,'ro','ja','ルーマニア語');
INSERT INTO `wp_icl_languages_translations` VALUES (2824,'ro','ko','로마니아어');
INSERT INTO `wp_icl_languages_translations` VALUES (2825,'ro','ku','Romanian');
INSERT INTO `wp_icl_languages_translations` VALUES (2826,'ro','lv','Romanian');
INSERT INTO `wp_icl_languages_translations` VALUES (2827,'ro','lt','Romanian');
INSERT INTO `wp_icl_languages_translations` VALUES (2828,'ro','mk','Romanian');
INSERT INTO `wp_icl_languages_translations` VALUES (2829,'ro','mt','Romanian');
INSERT INTO `wp_icl_languages_translations` VALUES (2830,'ro','mn','Romanian');
INSERT INTO `wp_icl_languages_translations` VALUES (2831,'ro','ne','Romanian');
INSERT INTO `wp_icl_languages_translations` VALUES (2832,'ro','nl','Roemeens');
INSERT INTO `wp_icl_languages_translations` VALUES (2833,'ro','no','Rumensk');
INSERT INTO `wp_icl_languages_translations` VALUES (2834,'ro','pa','Romanian');
INSERT INTO `wp_icl_languages_translations` VALUES (2835,'ro','pl','Rumuński');
INSERT INTO `wp_icl_languages_translations` VALUES (2836,'ro','pt-pt','Romeno');
INSERT INTO `wp_icl_languages_translations` VALUES (2837,'ro','pt-br','Romeno');
INSERT INTO `wp_icl_languages_translations` VALUES (2838,'ro','qu','Romanian');
INSERT INTO `wp_icl_languages_translations` VALUES (2839,'ro','ro','Română');
INSERT INTO `wp_icl_languages_translations` VALUES (2840,'ro','ru','Румынский');
INSERT INTO `wp_icl_languages_translations` VALUES (2841,'ro','sl','Romunščina');
INSERT INTO `wp_icl_languages_translations` VALUES (2842,'ro','so','Romanian');
INSERT INTO `wp_icl_languages_translations` VALUES (2843,'ro','sq','Romanian');
INSERT INTO `wp_icl_languages_translations` VALUES (2844,'ro','sr','румунски');
INSERT INTO `wp_icl_languages_translations` VALUES (2845,'ro','sv','Rumänska');
INSERT INTO `wp_icl_languages_translations` VALUES (2846,'ro','ta','Romanian');
INSERT INTO `wp_icl_languages_translations` VALUES (2847,'ro','th','โรมาเนีย');
INSERT INTO `wp_icl_languages_translations` VALUES (2848,'ro','tr','Rumence');
INSERT INTO `wp_icl_languages_translations` VALUES (2849,'ro','uk','Romanian');
INSERT INTO `wp_icl_languages_translations` VALUES (2850,'ro','ur','Romanian');
INSERT INTO `wp_icl_languages_translations` VALUES (2851,'ro','uz','Romanian');
INSERT INTO `wp_icl_languages_translations` VALUES (2852,'ro','vi','Romanian');
INSERT INTO `wp_icl_languages_translations` VALUES (2853,'ro','yi','Romanian');
INSERT INTO `wp_icl_languages_translations` VALUES (2854,'ro','zh-hans','罗马尼亚语');
INSERT INTO `wp_icl_languages_translations` VALUES (2855,'ro','zu','Romanian');
INSERT INTO `wp_icl_languages_translations` VALUES (2856,'ro','zh-hant','羅馬尼亞語');
INSERT INTO `wp_icl_languages_translations` VALUES (2857,'ro','ms','Romanian');
INSERT INTO `wp_icl_languages_translations` VALUES (2858,'ro','gl','Romanian');
INSERT INTO `wp_icl_languages_translations` VALUES (2859,'ro','bn','Romanian');
INSERT INTO `wp_icl_languages_translations` VALUES (2860,'ro','az','Romanian');
INSERT INTO `wp_icl_languages_translations` VALUES (2861,'ru','en','Russian');
INSERT INTO `wp_icl_languages_translations` VALUES (2862,'ru','es','Ruso');
INSERT INTO `wp_icl_languages_translations` VALUES (2863,'ru','de','Russisch');
INSERT INTO `wp_icl_languages_translations` VALUES (2864,'ru','fr','Russe');
INSERT INTO `wp_icl_languages_translations` VALUES (2865,'ru','ar','الروسية');
INSERT INTO `wp_icl_languages_translations` VALUES (2866,'ru','bs','Russian');
INSERT INTO `wp_icl_languages_translations` VALUES (2867,'ru','bg','Руски');
INSERT INTO `wp_icl_languages_translations` VALUES (2868,'ru','ca','Russian');
INSERT INTO `wp_icl_languages_translations` VALUES (2869,'ru','cs','Ruský');
INSERT INTO `wp_icl_languages_translations` VALUES (2870,'ru','sk','Ruština');
INSERT INTO `wp_icl_languages_translations` VALUES (2871,'ru','cy','Russian');
INSERT INTO `wp_icl_languages_translations` VALUES (2872,'ru','da','Russian');
INSERT INTO `wp_icl_languages_translations` VALUES (2873,'ru','el','Ρωσικά');
INSERT INTO `wp_icl_languages_translations` VALUES (2874,'ru','eo','Russian');
INSERT INTO `wp_icl_languages_translations` VALUES (2875,'ru','et','Russian');
INSERT INTO `wp_icl_languages_translations` VALUES (2876,'ru','eu','Russian');
INSERT INTO `wp_icl_languages_translations` VALUES (2877,'ru','fa','Russian');
INSERT INTO `wp_icl_languages_translations` VALUES (2878,'ru','fi','Venäjä');
INSERT INTO `wp_icl_languages_translations` VALUES (2879,'ru','ga','Russian');
INSERT INTO `wp_icl_languages_translations` VALUES (2880,'ru','he','רוסית');
INSERT INTO `wp_icl_languages_translations` VALUES (2881,'ru','hi','Russian');
INSERT INTO `wp_icl_languages_translations` VALUES (2882,'ru','hr','Ruski');
INSERT INTO `wp_icl_languages_translations` VALUES (2883,'ru','hu','Orosz');
INSERT INTO `wp_icl_languages_translations` VALUES (2884,'ru','hy','Russian');
INSERT INTO `wp_icl_languages_translations` VALUES (2885,'ru','id','Russian');
INSERT INTO `wp_icl_languages_translations` VALUES (2886,'ru','is','Russian');
INSERT INTO `wp_icl_languages_translations` VALUES (2887,'ru','it','Russo');
INSERT INTO `wp_icl_languages_translations` VALUES (2888,'ru','ja','ロシア語');
INSERT INTO `wp_icl_languages_translations` VALUES (2889,'ru','ko','러시아어');
INSERT INTO `wp_icl_languages_translations` VALUES (2890,'ru','ku','Russian');
INSERT INTO `wp_icl_languages_translations` VALUES (2891,'ru','lv','Russian');
INSERT INTO `wp_icl_languages_translations` VALUES (2892,'ru','lt','Russian');
INSERT INTO `wp_icl_languages_translations` VALUES (2893,'ru','mk','Russian');
INSERT INTO `wp_icl_languages_translations` VALUES (2894,'ru','mt','Russian');
INSERT INTO `wp_icl_languages_translations` VALUES (2895,'ru','mn','Russian');
INSERT INTO `wp_icl_languages_translations` VALUES (2896,'ru','ne','Russian');
INSERT INTO `wp_icl_languages_translations` VALUES (2897,'ru','nl','Russisch');
INSERT INTO `wp_icl_languages_translations` VALUES (2898,'ru','no','Russisk');
INSERT INTO `wp_icl_languages_translations` VALUES (2899,'ru','pa','Russian');
INSERT INTO `wp_icl_languages_translations` VALUES (2900,'ru','pl','Rosyjski');
INSERT INTO `wp_icl_languages_translations` VALUES (2901,'ru','pt-pt','Russo');
INSERT INTO `wp_icl_languages_translations` VALUES (2902,'ru','pt-br','Russo');
INSERT INTO `wp_icl_languages_translations` VALUES (2903,'ru','qu','Russian');
INSERT INTO `wp_icl_languages_translations` VALUES (2904,'ru','ro','Rusă');
INSERT INTO `wp_icl_languages_translations` VALUES (2905,'ru','ru','Русский');
INSERT INTO `wp_icl_languages_translations` VALUES (2906,'ru','sl','Ruščina');
INSERT INTO `wp_icl_languages_translations` VALUES (2907,'ru','so','Russian');
INSERT INTO `wp_icl_languages_translations` VALUES (2908,'ru','sq','Russian');
INSERT INTO `wp_icl_languages_translations` VALUES (2909,'ru','sr','руски');
INSERT INTO `wp_icl_languages_translations` VALUES (2910,'ru','sv','Ryska');
INSERT INTO `wp_icl_languages_translations` VALUES (2911,'ru','ta','Russian');
INSERT INTO `wp_icl_languages_translations` VALUES (2912,'ru','th','รัสเซีย');
INSERT INTO `wp_icl_languages_translations` VALUES (2913,'ru','tr','Rusça');
INSERT INTO `wp_icl_languages_translations` VALUES (2914,'ru','uk','Russian');
INSERT INTO `wp_icl_languages_translations` VALUES (2915,'ru','ur','Russian');
INSERT INTO `wp_icl_languages_translations` VALUES (2916,'ru','uz','Russian');
INSERT INTO `wp_icl_languages_translations` VALUES (2917,'ru','vi','Russian');
INSERT INTO `wp_icl_languages_translations` VALUES (2918,'ru','yi','Russian');
INSERT INTO `wp_icl_languages_translations` VALUES (2919,'ru','zh-hans','俄语');
INSERT INTO `wp_icl_languages_translations` VALUES (2920,'ru','zu','Russian');
INSERT INTO `wp_icl_languages_translations` VALUES (2921,'ru','zh-hant','俄語');
INSERT INTO `wp_icl_languages_translations` VALUES (2922,'ru','ms','Russian');
INSERT INTO `wp_icl_languages_translations` VALUES (2923,'ru','gl','Russian');
INSERT INTO `wp_icl_languages_translations` VALUES (2924,'ru','bn','Russian');
INSERT INTO `wp_icl_languages_translations` VALUES (2925,'ru','az','Russian');
INSERT INTO `wp_icl_languages_translations` VALUES (2926,'sl','en','Slovenian');
INSERT INTO `wp_icl_languages_translations` VALUES (2927,'sl','es','Esloveno');
INSERT INTO `wp_icl_languages_translations` VALUES (2928,'sl','de','Slowenisch');
INSERT INTO `wp_icl_languages_translations` VALUES (2929,'sl','fr','Slovène');
INSERT INTO `wp_icl_languages_translations` VALUES (2930,'sl','ar','السلوفانية');
INSERT INTO `wp_icl_languages_translations` VALUES (2931,'sl','bs','Slovenian');
INSERT INTO `wp_icl_languages_translations` VALUES (2932,'sl','bg','Словенски');
INSERT INTO `wp_icl_languages_translations` VALUES (2933,'sl','ca','Slovenian');
INSERT INTO `wp_icl_languages_translations` VALUES (2934,'sl','cs','Slovinština');
INSERT INTO `wp_icl_languages_translations` VALUES (2935,'sl','sk','Slovinčina');
INSERT INTO `wp_icl_languages_translations` VALUES (2936,'sl','cy','Slovenian');
INSERT INTO `wp_icl_languages_translations` VALUES (2937,'sl','da','Slovenian');
INSERT INTO `wp_icl_languages_translations` VALUES (2938,'sl','el','Σλοβενικά');
INSERT INTO `wp_icl_languages_translations` VALUES (2939,'sl','eo','Slovenian');
INSERT INTO `wp_icl_languages_translations` VALUES (2940,'sl','et','Slovenian');
INSERT INTO `wp_icl_languages_translations` VALUES (2941,'sl','eu','Slovenian');
INSERT INTO `wp_icl_languages_translations` VALUES (2942,'sl','fa','Slovenian');
INSERT INTO `wp_icl_languages_translations` VALUES (2943,'sl','fi','Sloveeni');
INSERT INTO `wp_icl_languages_translations` VALUES (2944,'sl','ga','Slovenian');
INSERT INTO `wp_icl_languages_translations` VALUES (2945,'sl','he','סלובנית');
INSERT INTO `wp_icl_languages_translations` VALUES (2946,'sl','hi','Slovenian');
INSERT INTO `wp_icl_languages_translations` VALUES (2947,'sl','hr','Slovenski');
INSERT INTO `wp_icl_languages_translations` VALUES (2948,'sl','hu','Szlovén');
INSERT INTO `wp_icl_languages_translations` VALUES (2949,'sl','hy','Slovenian');
INSERT INTO `wp_icl_languages_translations` VALUES (2950,'sl','id','Slovenian');
INSERT INTO `wp_icl_languages_translations` VALUES (2951,'sl','is','Slovenian');
INSERT INTO `wp_icl_languages_translations` VALUES (2952,'sl','it','Sloveno');
INSERT INTO `wp_icl_languages_translations` VALUES (2953,'sl','ja','スロベニア語');
INSERT INTO `wp_icl_languages_translations` VALUES (2954,'sl','ko','슬로베니아어');
INSERT INTO `wp_icl_languages_translations` VALUES (2955,'sl','ku','Slovenian');
INSERT INTO `wp_icl_languages_translations` VALUES (2956,'sl','lv','Slovenian');
INSERT INTO `wp_icl_languages_translations` VALUES (2957,'sl','lt','Slovenian');
INSERT INTO `wp_icl_languages_translations` VALUES (2958,'sl','mk','Slovenian');
INSERT INTO `wp_icl_languages_translations` VALUES (2959,'sl','mt','Slovenian');
INSERT INTO `wp_icl_languages_translations` VALUES (2960,'sl','mn','Slovenian');
INSERT INTO `wp_icl_languages_translations` VALUES (2961,'sl','ne','Slovenian');
INSERT INTO `wp_icl_languages_translations` VALUES (2962,'sl','nl','Sloveens');
INSERT INTO `wp_icl_languages_translations` VALUES (2963,'sl','no','Slovensk');
INSERT INTO `wp_icl_languages_translations` VALUES (2964,'sl','pa','Slovenian');
INSERT INTO `wp_icl_languages_translations` VALUES (2965,'sl','pl','Słoweński');
INSERT INTO `wp_icl_languages_translations` VALUES (2966,'sl','pt-pt','Esloveno');
INSERT INTO `wp_icl_languages_translations` VALUES (2967,'sl','pt-br','Esloveno');
INSERT INTO `wp_icl_languages_translations` VALUES (2968,'sl','qu','Slovenian');
INSERT INTO `wp_icl_languages_translations` VALUES (2969,'sl','ro','Slovenă');
INSERT INTO `wp_icl_languages_translations` VALUES (2970,'sl','ru','Словенский');
INSERT INTO `wp_icl_languages_translations` VALUES (2971,'sl','sl','Slovenščina');
INSERT INTO `wp_icl_languages_translations` VALUES (2972,'sl','so','Slovenian');
INSERT INTO `wp_icl_languages_translations` VALUES (2973,'sl','sq','Slovenian');
INSERT INTO `wp_icl_languages_translations` VALUES (2974,'sl','sr','словеначки');
INSERT INTO `wp_icl_languages_translations` VALUES (2975,'sl','sv','Slovenska');
INSERT INTO `wp_icl_languages_translations` VALUES (2976,'sl','ta','Slovenian');
INSERT INTO `wp_icl_languages_translations` VALUES (2977,'sl','th','สโลวีเนียน');
INSERT INTO `wp_icl_languages_translations` VALUES (2978,'sl','tr','Sloven dili');
INSERT INTO `wp_icl_languages_translations` VALUES (2979,'sl','uk','Slovenian');
INSERT INTO `wp_icl_languages_translations` VALUES (2980,'sl','ur','Slovenian');
INSERT INTO `wp_icl_languages_translations` VALUES (2981,'sl','uz','Slovenian');
INSERT INTO `wp_icl_languages_translations` VALUES (2982,'sl','vi','Slovenian');
INSERT INTO `wp_icl_languages_translations` VALUES (2983,'sl','yi','Slovenian');
INSERT INTO `wp_icl_languages_translations` VALUES (2984,'sl','zh-hans','斯洛文尼亚语');
INSERT INTO `wp_icl_languages_translations` VALUES (2985,'sl','zu','Slovenian');
INSERT INTO `wp_icl_languages_translations` VALUES (2986,'sl','zh-hant','斯洛文尼亞語');
INSERT INTO `wp_icl_languages_translations` VALUES (2987,'sl','ms','Slovenian');
INSERT INTO `wp_icl_languages_translations` VALUES (2988,'sl','gl','Slovenian');
INSERT INTO `wp_icl_languages_translations` VALUES (2989,'sl','bn','Slovenian');
INSERT INTO `wp_icl_languages_translations` VALUES (2990,'sl','az','Slovenian');
INSERT INTO `wp_icl_languages_translations` VALUES (2991,'so','en','Somali');
INSERT INTO `wp_icl_languages_translations` VALUES (2992,'so','es','Somalí');
INSERT INTO `wp_icl_languages_translations` VALUES (2993,'so','de','Somali');
INSERT INTO `wp_icl_languages_translations` VALUES (2994,'so','fr','Somali');
INSERT INTO `wp_icl_languages_translations` VALUES (2995,'so','ar','الصومالية');
INSERT INTO `wp_icl_languages_translations` VALUES (2996,'so','bs','Somali');
INSERT INTO `wp_icl_languages_translations` VALUES (2997,'so','bg','Сомалийски');
INSERT INTO `wp_icl_languages_translations` VALUES (2998,'so','ca','Somali');
INSERT INTO `wp_icl_languages_translations` VALUES (2999,'so','cs','Somali');
INSERT INTO `wp_icl_languages_translations` VALUES (3000,'so','sk','Somálčina');
INSERT INTO `wp_icl_languages_translations` VALUES (3001,'so','cy','Somali');
INSERT INTO `wp_icl_languages_translations` VALUES (3002,'so','da','Somali');
INSERT INTO `wp_icl_languages_translations` VALUES (3003,'so','el','Σομαλικά');
INSERT INTO `wp_icl_languages_translations` VALUES (3004,'so','eo','Somali');
INSERT INTO `wp_icl_languages_translations` VALUES (3005,'so','et','Somali');
INSERT INTO `wp_icl_languages_translations` VALUES (3006,'so','eu','Somali');
INSERT INTO `wp_icl_languages_translations` VALUES (3007,'so','fa','Somali');
INSERT INTO `wp_icl_languages_translations` VALUES (3008,'so','fi','Somali');
INSERT INTO `wp_icl_languages_translations` VALUES (3009,'so','ga','Somali');
INSERT INTO `wp_icl_languages_translations` VALUES (3010,'so','he','סומלית');
INSERT INTO `wp_icl_languages_translations` VALUES (3011,'so','hi','Somali');
INSERT INTO `wp_icl_languages_translations` VALUES (3012,'so','hr','Somalski');
INSERT INTO `wp_icl_languages_translations` VALUES (3013,'so','hu','Szomáli');
INSERT INTO `wp_icl_languages_translations` VALUES (3014,'so','hy','Somali');
INSERT INTO `wp_icl_languages_translations` VALUES (3015,'so','id','Somali');
INSERT INTO `wp_icl_languages_translations` VALUES (3016,'so','is','Somali');
INSERT INTO `wp_icl_languages_translations` VALUES (3017,'so','it','Somalo');
INSERT INTO `wp_icl_languages_translations` VALUES (3018,'so','ja','ソマリ語');
INSERT INTO `wp_icl_languages_translations` VALUES (3019,'so','ko','소말리아어');
INSERT INTO `wp_icl_languages_translations` VALUES (3020,'so','ku','Somali');
INSERT INTO `wp_icl_languages_translations` VALUES (3021,'so','lv','Somali');
INSERT INTO `wp_icl_languages_translations` VALUES (3022,'so','lt','Somali');
INSERT INTO `wp_icl_languages_translations` VALUES (3023,'so','mk','Somali');
INSERT INTO `wp_icl_languages_translations` VALUES (3024,'so','mt','Somali');
INSERT INTO `wp_icl_languages_translations` VALUES (3025,'so','mn','Somali');
INSERT INTO `wp_icl_languages_translations` VALUES (3026,'so','ne','Somali');
INSERT INTO `wp_icl_languages_translations` VALUES (3027,'so','nl','Somalisch');
INSERT INTO `wp_icl_languages_translations` VALUES (3028,'so','no','Somali');
INSERT INTO `wp_icl_languages_translations` VALUES (3029,'so','pa','Somali');
INSERT INTO `wp_icl_languages_translations` VALUES (3030,'so','pl','Somalijski');
INSERT INTO `wp_icl_languages_translations` VALUES (3031,'so','pt-pt','Somali');
INSERT INTO `wp_icl_languages_translations` VALUES (3032,'so','pt-br','Somali');
INSERT INTO `wp_icl_languages_translations` VALUES (3033,'so','qu','Somali');
INSERT INTO `wp_icl_languages_translations` VALUES (3034,'so','ro','Somaleză');
INSERT INTO `wp_icl_languages_translations` VALUES (3035,'so','ru','Сомалийский');
INSERT INTO `wp_icl_languages_translations` VALUES (3036,'so','sl','Somalski');
INSERT INTO `wp_icl_languages_translations` VALUES (3037,'so','so','Somali');
INSERT INTO `wp_icl_languages_translations` VALUES (3038,'so','sq','Somali');
INSERT INTO `wp_icl_languages_translations` VALUES (3039,'so','sr','Сомалијски');
INSERT INTO `wp_icl_languages_translations` VALUES (3040,'so','sv','Somaliska');
INSERT INTO `wp_icl_languages_translations` VALUES (3041,'so','ta','Somali');
INSERT INTO `wp_icl_languages_translations` VALUES (3042,'so','th','โซมาลี');
INSERT INTO `wp_icl_languages_translations` VALUES (3043,'so','tr','Somalice');
INSERT INTO `wp_icl_languages_translations` VALUES (3044,'so','uk','Somali');
INSERT INTO `wp_icl_languages_translations` VALUES (3045,'so','ur','Somali');
INSERT INTO `wp_icl_languages_translations` VALUES (3046,'so','uz','Somali');
INSERT INTO `wp_icl_languages_translations` VALUES (3047,'so','vi','Somali');
INSERT INTO `wp_icl_languages_translations` VALUES (3048,'so','yi','Somali');
INSERT INTO `wp_icl_languages_translations` VALUES (3049,'so','zh-hans','索马里语');
INSERT INTO `wp_icl_languages_translations` VALUES (3050,'so','zu','Somali');
INSERT INTO `wp_icl_languages_translations` VALUES (3051,'so','zh-hant','索馬里語');
INSERT INTO `wp_icl_languages_translations` VALUES (3052,'so','ms','Somali');
INSERT INTO `wp_icl_languages_translations` VALUES (3053,'so','gl','Somali');
INSERT INTO `wp_icl_languages_translations` VALUES (3054,'so','bn','Somali');
INSERT INTO `wp_icl_languages_translations` VALUES (3055,'so','az','Somali');
INSERT INTO `wp_icl_languages_translations` VALUES (3056,'sq','en','Albanian');
INSERT INTO `wp_icl_languages_translations` VALUES (3057,'sq','es','Albanés');
INSERT INTO `wp_icl_languages_translations` VALUES (3058,'sq','de','Albanisch');
INSERT INTO `wp_icl_languages_translations` VALUES (3059,'sq','fr','Albanais');
INSERT INTO `wp_icl_languages_translations` VALUES (3060,'sq','ar','الألبانية');
INSERT INTO `wp_icl_languages_translations` VALUES (3061,'sq','bs','Albanian');
INSERT INTO `wp_icl_languages_translations` VALUES (3062,'sq','bg','Албански');
INSERT INTO `wp_icl_languages_translations` VALUES (3063,'sq','ca','Albanian');
INSERT INTO `wp_icl_languages_translations` VALUES (3064,'sq','cs','Albánský');
INSERT INTO `wp_icl_languages_translations` VALUES (3065,'sq','sk','Albánčina');
INSERT INTO `wp_icl_languages_translations` VALUES (3066,'sq','cy','Albanian');
INSERT INTO `wp_icl_languages_translations` VALUES (3067,'sq','da','Albanian');
INSERT INTO `wp_icl_languages_translations` VALUES (3068,'sq','el','Αλβανικά');
INSERT INTO `wp_icl_languages_translations` VALUES (3069,'sq','eo','Albanian');
INSERT INTO `wp_icl_languages_translations` VALUES (3070,'sq','et','Albanian');
INSERT INTO `wp_icl_languages_translations` VALUES (3071,'sq','eu','Albanian');
INSERT INTO `wp_icl_languages_translations` VALUES (3072,'sq','fa','Albanian');
INSERT INTO `wp_icl_languages_translations` VALUES (3073,'sq','fi','Albania');
INSERT INTO `wp_icl_languages_translations` VALUES (3074,'sq','ga','Albanian');
INSERT INTO `wp_icl_languages_translations` VALUES (3075,'sq','he','אלבנית');
INSERT INTO `wp_icl_languages_translations` VALUES (3076,'sq','hi','Albanian');
INSERT INTO `wp_icl_languages_translations` VALUES (3077,'sq','hr','Albanski');
INSERT INTO `wp_icl_languages_translations` VALUES (3078,'sq','hu','Albán');
INSERT INTO `wp_icl_languages_translations` VALUES (3079,'sq','hy','Albanian');
INSERT INTO `wp_icl_languages_translations` VALUES (3080,'sq','id','Albanian');
INSERT INTO `wp_icl_languages_translations` VALUES (3081,'sq','is','Albanian');
INSERT INTO `wp_icl_languages_translations` VALUES (3082,'sq','it','Albanese');
INSERT INTO `wp_icl_languages_translations` VALUES (3083,'sq','ja','アルバニア語');
INSERT INTO `wp_icl_languages_translations` VALUES (3084,'sq','ko','알바니아어');
INSERT INTO `wp_icl_languages_translations` VALUES (3085,'sq','ku','Albanian');
INSERT INTO `wp_icl_languages_translations` VALUES (3086,'sq','lv','Albanian');
INSERT INTO `wp_icl_languages_translations` VALUES (3087,'sq','lt','Albanian');
INSERT INTO `wp_icl_languages_translations` VALUES (3088,'sq','mk','Albanian');
INSERT INTO `wp_icl_languages_translations` VALUES (3089,'sq','mt','Albanian');
INSERT INTO `wp_icl_languages_translations` VALUES (3090,'sq','mn','Albanian');
INSERT INTO `wp_icl_languages_translations` VALUES (3091,'sq','ne','Albanian');
INSERT INTO `wp_icl_languages_translations` VALUES (3092,'sq','nl','Albaans');
INSERT INTO `wp_icl_languages_translations` VALUES (3093,'sq','no','Albansk');
INSERT INTO `wp_icl_languages_translations` VALUES (3094,'sq','pa','Albanian');
INSERT INTO `wp_icl_languages_translations` VALUES (3095,'sq','pl','Albański');
INSERT INTO `wp_icl_languages_translations` VALUES (3096,'sq','pt-pt','Albanês');
INSERT INTO `wp_icl_languages_translations` VALUES (3097,'sq','pt-br','Albanês');
INSERT INTO `wp_icl_languages_translations` VALUES (3098,'sq','qu','Albanian');
INSERT INTO `wp_icl_languages_translations` VALUES (3099,'sq','ro','Albaneză');
INSERT INTO `wp_icl_languages_translations` VALUES (3100,'sq','ru','Албанский');
INSERT INTO `wp_icl_languages_translations` VALUES (3101,'sq','sl','Albanski');
INSERT INTO `wp_icl_languages_translations` VALUES (3102,'sq','so','Albanian');
INSERT INTO `wp_icl_languages_translations` VALUES (3103,'sq','sq','Albanian');
INSERT INTO `wp_icl_languages_translations` VALUES (3104,'sq','sr','албански');
INSERT INTO `wp_icl_languages_translations` VALUES (3105,'sq','sv','Albanska');
INSERT INTO `wp_icl_languages_translations` VALUES (3106,'sq','ta','Albanian');
INSERT INTO `wp_icl_languages_translations` VALUES (3107,'sq','th','อัลเบเนีย');
INSERT INTO `wp_icl_languages_translations` VALUES (3108,'sq','tr','Arnavutça');
INSERT INTO `wp_icl_languages_translations` VALUES (3109,'sq','uk','Albanian');
INSERT INTO `wp_icl_languages_translations` VALUES (3110,'sq','ur','Albanian');
INSERT INTO `wp_icl_languages_translations` VALUES (3111,'sq','uz','Albanian');
INSERT INTO `wp_icl_languages_translations` VALUES (3112,'sq','vi','Albanian');
INSERT INTO `wp_icl_languages_translations` VALUES (3113,'sq','yi','Albanian');
INSERT INTO `wp_icl_languages_translations` VALUES (3114,'sq','zh-hans','阿尔巴尼亚语');
INSERT INTO `wp_icl_languages_translations` VALUES (3115,'sq','zu','Albanian');
INSERT INTO `wp_icl_languages_translations` VALUES (3116,'sq','zh-hant','阿爾巴尼亞語');
INSERT INTO `wp_icl_languages_translations` VALUES (3117,'sq','ms','Albanian');
INSERT INTO `wp_icl_languages_translations` VALUES (3118,'sq','gl','Albanian');
INSERT INTO `wp_icl_languages_translations` VALUES (3119,'sq','bn','Albanian');
INSERT INTO `wp_icl_languages_translations` VALUES (3120,'sq','az','Albanian');
INSERT INTO `wp_icl_languages_translations` VALUES (3121,'sr','en','Serbian');
INSERT INTO `wp_icl_languages_translations` VALUES (3122,'sr','es','Serbio');
INSERT INTO `wp_icl_languages_translations` VALUES (3123,'sr','de','Serbisch');
INSERT INTO `wp_icl_languages_translations` VALUES (3124,'sr','fr','Serbe');
INSERT INTO `wp_icl_languages_translations` VALUES (3125,'sr','ar','الصربية');
INSERT INTO `wp_icl_languages_translations` VALUES (3126,'sr','bs','Serbian');
INSERT INTO `wp_icl_languages_translations` VALUES (3127,'sr','bg','Сръбски');
INSERT INTO `wp_icl_languages_translations` VALUES (3128,'sr','ca','Serbian');
INSERT INTO `wp_icl_languages_translations` VALUES (3129,'sr','cs','Srbský');
INSERT INTO `wp_icl_languages_translations` VALUES (3130,'sr','sk','Srbština');
INSERT INTO `wp_icl_languages_translations` VALUES (3131,'sr','cy','Serbian');
INSERT INTO `wp_icl_languages_translations` VALUES (3132,'sr','da','Serbian');
INSERT INTO `wp_icl_languages_translations` VALUES (3133,'sr','el','Σερβικά');
INSERT INTO `wp_icl_languages_translations` VALUES (3134,'sr','eo','Serbian');
INSERT INTO `wp_icl_languages_translations` VALUES (3135,'sr','et','Serbian');
INSERT INTO `wp_icl_languages_translations` VALUES (3136,'sr','eu','Serbian');
INSERT INTO `wp_icl_languages_translations` VALUES (3137,'sr','fa','Serbian');
INSERT INTO `wp_icl_languages_translations` VALUES (3138,'sr','fi','Serbia');
INSERT INTO `wp_icl_languages_translations` VALUES (3139,'sr','ga','Serbian');
INSERT INTO `wp_icl_languages_translations` VALUES (3140,'sr','he','סרבית');
INSERT INTO `wp_icl_languages_translations` VALUES (3141,'sr','hi','Serbian');
INSERT INTO `wp_icl_languages_translations` VALUES (3142,'sr','hr','Srpski');
INSERT INTO `wp_icl_languages_translations` VALUES (3143,'sr','hu','Szerb');
INSERT INTO `wp_icl_languages_translations` VALUES (3144,'sr','hy','Serbian');
INSERT INTO `wp_icl_languages_translations` VALUES (3145,'sr','id','Serbian');
INSERT INTO `wp_icl_languages_translations` VALUES (3146,'sr','is','Serbian');
INSERT INTO `wp_icl_languages_translations` VALUES (3147,'sr','it','Serbo');
INSERT INTO `wp_icl_languages_translations` VALUES (3148,'sr','ja','セルビア語');
INSERT INTO `wp_icl_languages_translations` VALUES (3149,'sr','ko','세르비아어');
INSERT INTO `wp_icl_languages_translations` VALUES (3150,'sr','ku','Serbian');
INSERT INTO `wp_icl_languages_translations` VALUES (3151,'sr','lv','Serbian');
INSERT INTO `wp_icl_languages_translations` VALUES (3152,'sr','lt','Serbian');
INSERT INTO `wp_icl_languages_translations` VALUES (3153,'sr','mk','Serbian');
INSERT INTO `wp_icl_languages_translations` VALUES (3154,'sr','mt','Serbian');
INSERT INTO `wp_icl_languages_translations` VALUES (3155,'sr','mn','Serbian');
INSERT INTO `wp_icl_languages_translations` VALUES (3156,'sr','ne','Serbian');
INSERT INTO `wp_icl_languages_translations` VALUES (3157,'sr','nl','Servisch');
INSERT INTO `wp_icl_languages_translations` VALUES (3158,'sr','no','Serbisk');
INSERT INTO `wp_icl_languages_translations` VALUES (3159,'sr','pa','Serbian');
INSERT INTO `wp_icl_languages_translations` VALUES (3160,'sr','pl','Serbski');
INSERT INTO `wp_icl_languages_translations` VALUES (3161,'sr','pt-pt','Sérvio');
INSERT INTO `wp_icl_languages_translations` VALUES (3162,'sr','pt-br','Sérvio');
INSERT INTO `wp_icl_languages_translations` VALUES (3163,'sr','qu','Serbian');
INSERT INTO `wp_icl_languages_translations` VALUES (3164,'sr','ro','Sârbă');
INSERT INTO `wp_icl_languages_translations` VALUES (3165,'sr','ru','Сербский');
INSERT INTO `wp_icl_languages_translations` VALUES (3166,'sr','sl','Srbski');
INSERT INTO `wp_icl_languages_translations` VALUES (3167,'sr','so','Serbian');
INSERT INTO `wp_icl_languages_translations` VALUES (3168,'sr','sq','Serbian');
INSERT INTO `wp_icl_languages_translations` VALUES (3169,'sr','sr','српски');
INSERT INTO `wp_icl_languages_translations` VALUES (3170,'sr','sv','Serbiska');
INSERT INTO `wp_icl_languages_translations` VALUES (3171,'sr','ta','Serbian');
INSERT INTO `wp_icl_languages_translations` VALUES (3172,'sr','th','เซอร์เบีย');
INSERT INTO `wp_icl_languages_translations` VALUES (3173,'sr','tr','Sırpça');
INSERT INTO `wp_icl_languages_translations` VALUES (3174,'sr','uk','Serbian');
INSERT INTO `wp_icl_languages_translations` VALUES (3175,'sr','ur','Serbian');
INSERT INTO `wp_icl_languages_translations` VALUES (3176,'sr','uz','Serbian');
INSERT INTO `wp_icl_languages_translations` VALUES (3177,'sr','vi','Serbian');
INSERT INTO `wp_icl_languages_translations` VALUES (3178,'sr','yi','Serbian');
INSERT INTO `wp_icl_languages_translations` VALUES (3179,'sr','zh-hans','赛尔维亚语');
INSERT INTO `wp_icl_languages_translations` VALUES (3180,'sr','zu','Serbian');
INSERT INTO `wp_icl_languages_translations` VALUES (3181,'sr','zh-hant','賽爾維亞語');
INSERT INTO `wp_icl_languages_translations` VALUES (3182,'sr','ms','Serbian');
INSERT INTO `wp_icl_languages_translations` VALUES (3183,'sr','gl','Serbian');
INSERT INTO `wp_icl_languages_translations` VALUES (3184,'sr','bn','Serbian');
INSERT INTO `wp_icl_languages_translations` VALUES (3185,'sr','az','Serbian');
INSERT INTO `wp_icl_languages_translations` VALUES (3186,'sv','en','Swedish');
INSERT INTO `wp_icl_languages_translations` VALUES (3187,'sv','es','Sueco');
INSERT INTO `wp_icl_languages_translations` VALUES (3188,'sv','de','Schwedisch');
INSERT INTO `wp_icl_languages_translations` VALUES (3189,'sv','fr','Suédois');
INSERT INTO `wp_icl_languages_translations` VALUES (3190,'sv','ar','السويدية');
INSERT INTO `wp_icl_languages_translations` VALUES (3191,'sv','bs','Swedish');
INSERT INTO `wp_icl_languages_translations` VALUES (3192,'sv','bg','Шведски');
INSERT INTO `wp_icl_languages_translations` VALUES (3193,'sv','ca','Swedish');
INSERT INTO `wp_icl_languages_translations` VALUES (3194,'sv','cs','Švédský');
INSERT INTO `wp_icl_languages_translations` VALUES (3195,'sv','sk','Švédština');
INSERT INTO `wp_icl_languages_translations` VALUES (3196,'sv','cy','Swedish');
INSERT INTO `wp_icl_languages_translations` VALUES (3197,'sv','da','Swedish');
INSERT INTO `wp_icl_languages_translations` VALUES (3198,'sv','el','Σουηδικά');
INSERT INTO `wp_icl_languages_translations` VALUES (3199,'sv','eo','Swedish');
INSERT INTO `wp_icl_languages_translations` VALUES (3200,'sv','et','Swedish');
INSERT INTO `wp_icl_languages_translations` VALUES (3201,'sv','eu','Swedish');
INSERT INTO `wp_icl_languages_translations` VALUES (3202,'sv','fa','Swedish');
INSERT INTO `wp_icl_languages_translations` VALUES (3203,'sv','fi','Ruotsi');
INSERT INTO `wp_icl_languages_translations` VALUES (3204,'sv','ga','Swedish');
INSERT INTO `wp_icl_languages_translations` VALUES (3205,'sv','he','שוודית');
INSERT INTO `wp_icl_languages_translations` VALUES (3206,'sv','hi','Swedish');
INSERT INTO `wp_icl_languages_translations` VALUES (3207,'sv','hr','švedski');
INSERT INTO `wp_icl_languages_translations` VALUES (3208,'sv','hu','Svéd');
INSERT INTO `wp_icl_languages_translations` VALUES (3209,'sv','hy','Swedish');
INSERT INTO `wp_icl_languages_translations` VALUES (3210,'sv','id','Swedish');
INSERT INTO `wp_icl_languages_translations` VALUES (3211,'sv','is','Swedish');
INSERT INTO `wp_icl_languages_translations` VALUES (3212,'sv','it','Svedese');
INSERT INTO `wp_icl_languages_translations` VALUES (3213,'sv','ja','スウェーデン語');
INSERT INTO `wp_icl_languages_translations` VALUES (3214,'sv','ko','스웨덴어');
INSERT INTO `wp_icl_languages_translations` VALUES (3215,'sv','ku','Swedish');
INSERT INTO `wp_icl_languages_translations` VALUES (3216,'sv','lv','Swedish');
INSERT INTO `wp_icl_languages_translations` VALUES (3217,'sv','lt','Swedish');
INSERT INTO `wp_icl_languages_translations` VALUES (3218,'sv','mk','Swedish');
INSERT INTO `wp_icl_languages_translations` VALUES (3219,'sv','mt','Swedish');
INSERT INTO `wp_icl_languages_translations` VALUES (3220,'sv','mn','Swedish');
INSERT INTO `wp_icl_languages_translations` VALUES (3221,'sv','ne','Swedish');
INSERT INTO `wp_icl_languages_translations` VALUES (3222,'sv','nl','Zweeds');
INSERT INTO `wp_icl_languages_translations` VALUES (3223,'sv','no','Swedish');
INSERT INTO `wp_icl_languages_translations` VALUES (3224,'sv','pa','Swedish');
INSERT INTO `wp_icl_languages_translations` VALUES (3225,'sv','pl','Szwedzki');
INSERT INTO `wp_icl_languages_translations` VALUES (3226,'sv','pt-pt','Sueco');
INSERT INTO `wp_icl_languages_translations` VALUES (3227,'sv','pt-br','Sueco');
INSERT INTO `wp_icl_languages_translations` VALUES (3228,'sv','qu','Swedish');
INSERT INTO `wp_icl_languages_translations` VALUES (3229,'sv','ro','Suedeză');
INSERT INTO `wp_icl_languages_translations` VALUES (3230,'sv','ru','Шведский');
INSERT INTO `wp_icl_languages_translations` VALUES (3231,'sv','sl','Švedščina');
INSERT INTO `wp_icl_languages_translations` VALUES (3232,'sv','so','Swedish');
INSERT INTO `wp_icl_languages_translations` VALUES (3233,'sv','sq','Swedish');
INSERT INTO `wp_icl_languages_translations` VALUES (3234,'sv','sr','шведски');
INSERT INTO `wp_icl_languages_translations` VALUES (3235,'sv','sv','Svenska');
INSERT INTO `wp_icl_languages_translations` VALUES (3236,'sv','ta','Swedish');
INSERT INTO `wp_icl_languages_translations` VALUES (3237,'sv','th','สวีเดน');
INSERT INTO `wp_icl_languages_translations` VALUES (3238,'sv','tr','İsveççe');
INSERT INTO `wp_icl_languages_translations` VALUES (3239,'sv','uk','Swedish');
INSERT INTO `wp_icl_languages_translations` VALUES (3240,'sv','ur','Swedish');
INSERT INTO `wp_icl_languages_translations` VALUES (3241,'sv','uz','Swedish');
INSERT INTO `wp_icl_languages_translations` VALUES (3242,'sv','vi','Swedish');
INSERT INTO `wp_icl_languages_translations` VALUES (3243,'sv','yi','Swedish');
INSERT INTO `wp_icl_languages_translations` VALUES (3244,'sv','zh-hans','瑞典语');
INSERT INTO `wp_icl_languages_translations` VALUES (3245,'sv','zu','Swedish');
INSERT INTO `wp_icl_languages_translations` VALUES (3246,'sv','zh-hant','瑞典語');
INSERT INTO `wp_icl_languages_translations` VALUES (3247,'sv','ms','Swedish');
INSERT INTO `wp_icl_languages_translations` VALUES (3248,'sv','gl','Swedish');
INSERT INTO `wp_icl_languages_translations` VALUES (3249,'sv','bn','Swedish');
INSERT INTO `wp_icl_languages_translations` VALUES (3250,'sv','az','Swedish');
INSERT INTO `wp_icl_languages_translations` VALUES (3251,'ta','en','Tamil');
INSERT INTO `wp_icl_languages_translations` VALUES (3252,'ta','es','Tamil');
INSERT INTO `wp_icl_languages_translations` VALUES (3253,'ta','de','Tamil');
INSERT INTO `wp_icl_languages_translations` VALUES (3254,'ta','fr','Tamoul');
INSERT INTO `wp_icl_languages_translations` VALUES (3255,'ta','ar','التاميلية');
INSERT INTO `wp_icl_languages_translations` VALUES (3256,'ta','bs','Tamil');
INSERT INTO `wp_icl_languages_translations` VALUES (3257,'ta','bg','Тамилски');
INSERT INTO `wp_icl_languages_translations` VALUES (3258,'ta','ca','Tamil');
INSERT INTO `wp_icl_languages_translations` VALUES (3259,'ta','cs','Tamil');
INSERT INTO `wp_icl_languages_translations` VALUES (3260,'ta','sk','Tamilčina');
INSERT INTO `wp_icl_languages_translations` VALUES (3261,'ta','cy','Tamil');
INSERT INTO `wp_icl_languages_translations` VALUES (3262,'ta','da','Tamil');
INSERT INTO `wp_icl_languages_translations` VALUES (3263,'ta','el','Ταμίλ');
INSERT INTO `wp_icl_languages_translations` VALUES (3264,'ta','eo','Tamil');
INSERT INTO `wp_icl_languages_translations` VALUES (3265,'ta','et','Tamil');
INSERT INTO `wp_icl_languages_translations` VALUES (3266,'ta','eu','Tamil');
INSERT INTO `wp_icl_languages_translations` VALUES (3267,'ta','fa','Tamil');
INSERT INTO `wp_icl_languages_translations` VALUES (3268,'ta','fi','Tamili');
INSERT INTO `wp_icl_languages_translations` VALUES (3269,'ta','ga','Tamil');
INSERT INTO `wp_icl_languages_translations` VALUES (3270,'ta','he','טמילית');
INSERT INTO `wp_icl_languages_translations` VALUES (3271,'ta','hi','Tamil');
INSERT INTO `wp_icl_languages_translations` VALUES (3272,'ta','hr','Tamil');
INSERT INTO `wp_icl_languages_translations` VALUES (3273,'ta','hu','Tamil');
INSERT INTO `wp_icl_languages_translations` VALUES (3274,'ta','hy','Tamil');
INSERT INTO `wp_icl_languages_translations` VALUES (3275,'ta','id','Tamil');
INSERT INTO `wp_icl_languages_translations` VALUES (3276,'ta','is','Tamil');
INSERT INTO `wp_icl_languages_translations` VALUES (3277,'ta','it','Tamil');
INSERT INTO `wp_icl_languages_translations` VALUES (3278,'ta','ja','タミル語');
INSERT INTO `wp_icl_languages_translations` VALUES (3279,'ta','ko','타밀어');
INSERT INTO `wp_icl_languages_translations` VALUES (3280,'ta','ku','Tamil');
INSERT INTO `wp_icl_languages_translations` VALUES (3281,'ta','lv','Tamil');
INSERT INTO `wp_icl_languages_translations` VALUES (3282,'ta','lt','Tamil');
INSERT INTO `wp_icl_languages_translations` VALUES (3283,'ta','mk','Tamil');
INSERT INTO `wp_icl_languages_translations` VALUES (3284,'ta','mt','Tamil');
INSERT INTO `wp_icl_languages_translations` VALUES (3285,'ta','mn','Tamil');
INSERT INTO `wp_icl_languages_translations` VALUES (3286,'ta','ne','Tamil');
INSERT INTO `wp_icl_languages_translations` VALUES (3287,'ta','nl','Tamil');
INSERT INTO `wp_icl_languages_translations` VALUES (3288,'ta','no','Tamil');
INSERT INTO `wp_icl_languages_translations` VALUES (3289,'ta','pa','Tamil');
INSERT INTO `wp_icl_languages_translations` VALUES (3290,'ta','pl','Tamilski');
INSERT INTO `wp_icl_languages_translations` VALUES (3291,'ta','pt-pt','Tamil');
INSERT INTO `wp_icl_languages_translations` VALUES (3292,'ta','pt-br','Tamil');
INSERT INTO `wp_icl_languages_translations` VALUES (3293,'ta','qu','Tamil');
INSERT INTO `wp_icl_languages_translations` VALUES (3294,'ta','ro','Tamilă');
INSERT INTO `wp_icl_languages_translations` VALUES (3295,'ta','ru','Тамильский');
INSERT INTO `wp_icl_languages_translations` VALUES (3296,'ta','sl','Tamilščina');
INSERT INTO `wp_icl_languages_translations` VALUES (3297,'ta','so','Tamil');
INSERT INTO `wp_icl_languages_translations` VALUES (3298,'ta','sq','Tamil');
INSERT INTO `wp_icl_languages_translations` VALUES (3299,'ta','sr','тамилски');
INSERT INTO `wp_icl_languages_translations` VALUES (3300,'ta','sv','Tamil');
INSERT INTO `wp_icl_languages_translations` VALUES (3301,'ta','ta','Tamil');
INSERT INTO `wp_icl_languages_translations` VALUES (3302,'ta','th','ทมิฬ');
INSERT INTO `wp_icl_languages_translations` VALUES (3303,'ta','tr','Tamil dili');
INSERT INTO `wp_icl_languages_translations` VALUES (3304,'ta','uk','Tamil');
INSERT INTO `wp_icl_languages_translations` VALUES (3305,'ta','ur','Tamil');
INSERT INTO `wp_icl_languages_translations` VALUES (3306,'ta','uz','Tamil');
INSERT INTO `wp_icl_languages_translations` VALUES (3307,'ta','vi','Tamil');
INSERT INTO `wp_icl_languages_translations` VALUES (3308,'ta','yi','Tamil');
INSERT INTO `wp_icl_languages_translations` VALUES (3309,'ta','zh-hans','泰米尔语');
INSERT INTO `wp_icl_languages_translations` VALUES (3310,'ta','zu','Tamil');
INSERT INTO `wp_icl_languages_translations` VALUES (3311,'ta','zh-hant','泰米爾語');
INSERT INTO `wp_icl_languages_translations` VALUES (3312,'ta','ms','Tamil');
INSERT INTO `wp_icl_languages_translations` VALUES (3313,'ta','gl','Tamil');
INSERT INTO `wp_icl_languages_translations` VALUES (3314,'ta','bn','Tamil');
INSERT INTO `wp_icl_languages_translations` VALUES (3315,'ta','az','Tamil');
INSERT INTO `wp_icl_languages_translations` VALUES (3316,'th','en','Thai');
INSERT INTO `wp_icl_languages_translations` VALUES (3317,'th','es','Tailandés');
INSERT INTO `wp_icl_languages_translations` VALUES (3318,'th','de','Thai');
INSERT INTO `wp_icl_languages_translations` VALUES (3319,'th','fr','Thaï');
INSERT INTO `wp_icl_languages_translations` VALUES (3320,'th','ar','التايلندية');
INSERT INTO `wp_icl_languages_translations` VALUES (3321,'th','bs','Thai');
INSERT INTO `wp_icl_languages_translations` VALUES (3322,'th','bg','Тайски');
INSERT INTO `wp_icl_languages_translations` VALUES (3323,'th','ca','Thai');
INSERT INTO `wp_icl_languages_translations` VALUES (3324,'th','cs','Thai');
INSERT INTO `wp_icl_languages_translations` VALUES (3325,'th','sk','Thajština');
INSERT INTO `wp_icl_languages_translations` VALUES (3326,'th','cy','Thai');
INSERT INTO `wp_icl_languages_translations` VALUES (3327,'th','da','Thai');
INSERT INTO `wp_icl_languages_translations` VALUES (3328,'th','el','Ταϊλανδέζικα');
INSERT INTO `wp_icl_languages_translations` VALUES (3329,'th','eo','Thai');
INSERT INTO `wp_icl_languages_translations` VALUES (3330,'th','et','Thai');
INSERT INTO `wp_icl_languages_translations` VALUES (3331,'th','eu','Thai');
INSERT INTO `wp_icl_languages_translations` VALUES (3332,'th','fa','Thai');
INSERT INTO `wp_icl_languages_translations` VALUES (3333,'th','fi','Thai');
INSERT INTO `wp_icl_languages_translations` VALUES (3334,'th','ga','Thai');
INSERT INTO `wp_icl_languages_translations` VALUES (3335,'th','he','תאילנדית');
INSERT INTO `wp_icl_languages_translations` VALUES (3336,'th','hi','Thai');
INSERT INTO `wp_icl_languages_translations` VALUES (3337,'th','hr','Thai');
INSERT INTO `wp_icl_languages_translations` VALUES (3338,'th','hu','Tájföldi');
INSERT INTO `wp_icl_languages_translations` VALUES (3339,'th','hy','Thai');
INSERT INTO `wp_icl_languages_translations` VALUES (3340,'th','id','Thai');
INSERT INTO `wp_icl_languages_translations` VALUES (3341,'th','is','Thai');
INSERT INTO `wp_icl_languages_translations` VALUES (3342,'th','it','Thai');
INSERT INTO `wp_icl_languages_translations` VALUES (3343,'th','ja','タイ語');
INSERT INTO `wp_icl_languages_translations` VALUES (3344,'th','ko','태국어');
INSERT INTO `wp_icl_languages_translations` VALUES (3345,'th','ku','Thai');
INSERT INTO `wp_icl_languages_translations` VALUES (3346,'th','lv','Thai');
INSERT INTO `wp_icl_languages_translations` VALUES (3347,'th','lt','Thai');
INSERT INTO `wp_icl_languages_translations` VALUES (3348,'th','mk','Thai');
INSERT INTO `wp_icl_languages_translations` VALUES (3349,'th','mt','Thai');
INSERT INTO `wp_icl_languages_translations` VALUES (3350,'th','mn','Thai');
INSERT INTO `wp_icl_languages_translations` VALUES (3351,'th','ne','Thai');
INSERT INTO `wp_icl_languages_translations` VALUES (3352,'th','nl','Thai');
INSERT INTO `wp_icl_languages_translations` VALUES (3353,'th','no','Thai');
INSERT INTO `wp_icl_languages_translations` VALUES (3354,'th','pa','Thai');
INSERT INTO `wp_icl_languages_translations` VALUES (3355,'th','pl','Tajski');
INSERT INTO `wp_icl_languages_translations` VALUES (3356,'th','pt-pt','Tailandês');
INSERT INTO `wp_icl_languages_translations` VALUES (3357,'th','pt-br','Tailandês');
INSERT INTO `wp_icl_languages_translations` VALUES (3358,'th','qu','Thai');
INSERT INTO `wp_icl_languages_translations` VALUES (3359,'th','ro','Tailandeză');
INSERT INTO `wp_icl_languages_translations` VALUES (3360,'th','ru','Тайский');
INSERT INTO `wp_icl_languages_translations` VALUES (3361,'th','sl','Tajski');
INSERT INTO `wp_icl_languages_translations` VALUES (3362,'th','so','Thai');
INSERT INTO `wp_icl_languages_translations` VALUES (3363,'th','sq','Thai');
INSERT INTO `wp_icl_languages_translations` VALUES (3364,'th','sr','Тајландски');
INSERT INTO `wp_icl_languages_translations` VALUES (3365,'th','sv','Thailändska');
INSERT INTO `wp_icl_languages_translations` VALUES (3366,'th','ta','Thai');
INSERT INTO `wp_icl_languages_translations` VALUES (3367,'th','th','ไทย');
INSERT INTO `wp_icl_languages_translations` VALUES (3368,'th','tr','Tayca');
INSERT INTO `wp_icl_languages_translations` VALUES (3369,'th','uk','Thai');
INSERT INTO `wp_icl_languages_translations` VALUES (3370,'th','ur','Thai');
INSERT INTO `wp_icl_languages_translations` VALUES (3371,'th','uz','Thai');
INSERT INTO `wp_icl_languages_translations` VALUES (3372,'th','vi','Thai');
INSERT INTO `wp_icl_languages_translations` VALUES (3373,'th','yi','Thai');
INSERT INTO `wp_icl_languages_translations` VALUES (3374,'th','zh-hans','泰语');
INSERT INTO `wp_icl_languages_translations` VALUES (3375,'th','zu','Thai');
INSERT INTO `wp_icl_languages_translations` VALUES (3376,'th','zh-hant','泰語');
INSERT INTO `wp_icl_languages_translations` VALUES (3377,'th','ms','Thai');
INSERT INTO `wp_icl_languages_translations` VALUES (3378,'th','gl','Thai');
INSERT INTO `wp_icl_languages_translations` VALUES (3379,'th','bn','Thai');
INSERT INTO `wp_icl_languages_translations` VALUES (3380,'th','az','Thai');
INSERT INTO `wp_icl_languages_translations` VALUES (3381,'tr','en','Turkish');
INSERT INTO `wp_icl_languages_translations` VALUES (3382,'tr','es','Turco');
INSERT INTO `wp_icl_languages_translations` VALUES (3383,'tr','de','Türkisch');
INSERT INTO `wp_icl_languages_translations` VALUES (3384,'tr','fr','Turc');
INSERT INTO `wp_icl_languages_translations` VALUES (3385,'tr','ar','التركية');
INSERT INTO `wp_icl_languages_translations` VALUES (3386,'tr','bs','Turkish');
INSERT INTO `wp_icl_languages_translations` VALUES (3387,'tr','bg','Турски');
INSERT INTO `wp_icl_languages_translations` VALUES (3388,'tr','ca','Turkish');
INSERT INTO `wp_icl_languages_translations` VALUES (3389,'tr','cs','Turečtina');
INSERT INTO `wp_icl_languages_translations` VALUES (3390,'tr','sk','Turečtina');
INSERT INTO `wp_icl_languages_translations` VALUES (3391,'tr','cy','Turkish');
INSERT INTO `wp_icl_languages_translations` VALUES (3392,'tr','da','Turkish');
INSERT INTO `wp_icl_languages_translations` VALUES (3393,'tr','el','Τουρκικά');
INSERT INTO `wp_icl_languages_translations` VALUES (3394,'tr','eo','Turkish');
INSERT INTO `wp_icl_languages_translations` VALUES (3395,'tr','et','Turkish');
INSERT INTO `wp_icl_languages_translations` VALUES (3396,'tr','eu','Turkish');
INSERT INTO `wp_icl_languages_translations` VALUES (3397,'tr','fa','Turkish');
INSERT INTO `wp_icl_languages_translations` VALUES (3398,'tr','fi','Turkki');
INSERT INTO `wp_icl_languages_translations` VALUES (3399,'tr','ga','Turkish');
INSERT INTO `wp_icl_languages_translations` VALUES (3400,'tr','he','תורכית');
INSERT INTO `wp_icl_languages_translations` VALUES (3401,'tr','hi','Turkish');
INSERT INTO `wp_icl_languages_translations` VALUES (3402,'tr','hr','Turski');
INSERT INTO `wp_icl_languages_translations` VALUES (3403,'tr','hu','Török');
INSERT INTO `wp_icl_languages_translations` VALUES (3404,'tr','hy','Turkish');
INSERT INTO `wp_icl_languages_translations` VALUES (3405,'tr','id','Turkish');
INSERT INTO `wp_icl_languages_translations` VALUES (3406,'tr','is','Turkish');
INSERT INTO `wp_icl_languages_translations` VALUES (3407,'tr','it','Turco');
INSERT INTO `wp_icl_languages_translations` VALUES (3408,'tr','ja','トルコ語');
INSERT INTO `wp_icl_languages_translations` VALUES (3409,'tr','ko','터어키어');
INSERT INTO `wp_icl_languages_translations` VALUES (3410,'tr','ku','Turkish');
INSERT INTO `wp_icl_languages_translations` VALUES (3411,'tr','lv','Turkish');
INSERT INTO `wp_icl_languages_translations` VALUES (3412,'tr','lt','Turkish');
INSERT INTO `wp_icl_languages_translations` VALUES (3413,'tr','mk','Turkish');
INSERT INTO `wp_icl_languages_translations` VALUES (3414,'tr','mt','Turkish');
INSERT INTO `wp_icl_languages_translations` VALUES (3415,'tr','mn','Turkish');
INSERT INTO `wp_icl_languages_translations` VALUES (3416,'tr','ne','Turkish');
INSERT INTO `wp_icl_languages_translations` VALUES (3417,'tr','nl','Turks');
INSERT INTO `wp_icl_languages_translations` VALUES (3418,'tr','no','Turkish');
INSERT INTO `wp_icl_languages_translations` VALUES (3419,'tr','pa','Turkish');
INSERT INTO `wp_icl_languages_translations` VALUES (3420,'tr','pl','Turecki');
INSERT INTO `wp_icl_languages_translations` VALUES (3421,'tr','pt-pt','Turco');
INSERT INTO `wp_icl_languages_translations` VALUES (3422,'tr','pt-br','Turco');
INSERT INTO `wp_icl_languages_translations` VALUES (3423,'tr','qu','Turkish');
INSERT INTO `wp_icl_languages_translations` VALUES (3424,'tr','ro','Turcă');
INSERT INTO `wp_icl_languages_translations` VALUES (3425,'tr','ru','Турецкий');
INSERT INTO `wp_icl_languages_translations` VALUES (3426,'tr','sl','Turščina');
INSERT INTO `wp_icl_languages_translations` VALUES (3427,'tr','so','Turkish');
INSERT INTO `wp_icl_languages_translations` VALUES (3428,'tr','sq','Turkish');
INSERT INTO `wp_icl_languages_translations` VALUES (3429,'tr','sr','турски');
INSERT INTO `wp_icl_languages_translations` VALUES (3430,'tr','sv','Turkiska');
INSERT INTO `wp_icl_languages_translations` VALUES (3431,'tr','ta','Turkish');
INSERT INTO `wp_icl_languages_translations` VALUES (3432,'tr','th','ตุรกี');
INSERT INTO `wp_icl_languages_translations` VALUES (3433,'tr','tr','Türkçe');
INSERT INTO `wp_icl_languages_translations` VALUES (3434,'tr','uk','Turkish');
INSERT INTO `wp_icl_languages_translations` VALUES (3435,'tr','ur','Turkish');
INSERT INTO `wp_icl_languages_translations` VALUES (3436,'tr','uz','Turkish');
INSERT INTO `wp_icl_languages_translations` VALUES (3437,'tr','vi','Turkish');
INSERT INTO `wp_icl_languages_translations` VALUES (3438,'tr','yi','Turkish');
INSERT INTO `wp_icl_languages_translations` VALUES (3439,'tr','zh-hans','土耳其语');
INSERT INTO `wp_icl_languages_translations` VALUES (3440,'tr','zu','Turkish');
INSERT INTO `wp_icl_languages_translations` VALUES (3441,'tr','zh-hant','土耳其語');
INSERT INTO `wp_icl_languages_translations` VALUES (3442,'tr','ms','Turkish');
INSERT INTO `wp_icl_languages_translations` VALUES (3443,'tr','gl','Turkish');
INSERT INTO `wp_icl_languages_translations` VALUES (3444,'tr','bn','Turkish');
INSERT INTO `wp_icl_languages_translations` VALUES (3445,'tr','az','Turkish');
INSERT INTO `wp_icl_languages_translations` VALUES (3446,'uk','en','Ukrainian');
INSERT INTO `wp_icl_languages_translations` VALUES (3447,'uk','es','Ucraniano');
INSERT INTO `wp_icl_languages_translations` VALUES (3448,'uk','de','Ukrainisch');
INSERT INTO `wp_icl_languages_translations` VALUES (3449,'uk','fr','Ukrainien');
INSERT INTO `wp_icl_languages_translations` VALUES (3450,'uk','ar','الأوكرانية');
INSERT INTO `wp_icl_languages_translations` VALUES (3451,'uk','bs','Ukrainian');
INSERT INTO `wp_icl_languages_translations` VALUES (3452,'uk','bg','Украински');
INSERT INTO `wp_icl_languages_translations` VALUES (3453,'uk','ca','Ukrainian');
INSERT INTO `wp_icl_languages_translations` VALUES (3454,'uk','cs','Ukrajinský');
INSERT INTO `wp_icl_languages_translations` VALUES (3455,'uk','sk','Ukrajinčina');
INSERT INTO `wp_icl_languages_translations` VALUES (3456,'uk','cy','Ukrainian');
INSERT INTO `wp_icl_languages_translations` VALUES (3457,'uk','da','Ukrainian');
INSERT INTO `wp_icl_languages_translations` VALUES (3458,'uk','el','Ουκρανικά');
INSERT INTO `wp_icl_languages_translations` VALUES (3459,'uk','eo','Ukrainian');
INSERT INTO `wp_icl_languages_translations` VALUES (3460,'uk','et','Ukrainian');
INSERT INTO `wp_icl_languages_translations` VALUES (3461,'uk','eu','Ukrainian');
INSERT INTO `wp_icl_languages_translations` VALUES (3462,'uk','fa','Ukrainian');
INSERT INTO `wp_icl_languages_translations` VALUES (3463,'uk','fi','Ukraina');
INSERT INTO `wp_icl_languages_translations` VALUES (3464,'uk','ga','Ukrainian');
INSERT INTO `wp_icl_languages_translations` VALUES (3465,'uk','he','אוקראינית');
INSERT INTO `wp_icl_languages_translations` VALUES (3466,'uk','hi','Ukrainian');
INSERT INTO `wp_icl_languages_translations` VALUES (3467,'uk','hr','Ukrajinski');
INSERT INTO `wp_icl_languages_translations` VALUES (3468,'uk','hu','Ukrán');
INSERT INTO `wp_icl_languages_translations` VALUES (3469,'uk','hy','Ukrainian');
INSERT INTO `wp_icl_languages_translations` VALUES (3470,'uk','id','Ukrainian');
INSERT INTO `wp_icl_languages_translations` VALUES (3471,'uk','is','Ukrainian');
INSERT INTO `wp_icl_languages_translations` VALUES (3472,'uk','it','Ucraino');
INSERT INTO `wp_icl_languages_translations` VALUES (3473,'uk','ja','ウクライナ語');
INSERT INTO `wp_icl_languages_translations` VALUES (3474,'uk','ko','우크라이나어');
INSERT INTO `wp_icl_languages_translations` VALUES (3475,'uk','ku','Ukrainian');
INSERT INTO `wp_icl_languages_translations` VALUES (3476,'uk','lv','Ukrainian');
INSERT INTO `wp_icl_languages_translations` VALUES (3477,'uk','lt','Ukrainian');
INSERT INTO `wp_icl_languages_translations` VALUES (3478,'uk','mk','Ukrainian');
INSERT INTO `wp_icl_languages_translations` VALUES (3479,'uk','mt','Ukrainian');
INSERT INTO `wp_icl_languages_translations` VALUES (3480,'uk','mn','Ukrainian');
INSERT INTO `wp_icl_languages_translations` VALUES (3481,'uk','ne','Ukrainian');
INSERT INTO `wp_icl_languages_translations` VALUES (3482,'uk','nl','Oekraïens');
INSERT INTO `wp_icl_languages_translations` VALUES (3483,'uk','no','Ukrainsk');
INSERT INTO `wp_icl_languages_translations` VALUES (3484,'uk','pa','Ukrainian');
INSERT INTO `wp_icl_languages_translations` VALUES (3485,'uk','pl','Ukraiński');
INSERT INTO `wp_icl_languages_translations` VALUES (3486,'uk','pt-pt','Ucraniano');
INSERT INTO `wp_icl_languages_translations` VALUES (3487,'uk','pt-br','Ucraniano');
INSERT INTO `wp_icl_languages_translations` VALUES (3488,'uk','qu','Ukrainian');
INSERT INTO `wp_icl_languages_translations` VALUES (3489,'uk','ro','Ucrainiană');
INSERT INTO `wp_icl_languages_translations` VALUES (3490,'uk','ru','Украинский');
INSERT INTO `wp_icl_languages_translations` VALUES (3491,'uk','sl','Ukrajinski');
INSERT INTO `wp_icl_languages_translations` VALUES (3492,'uk','so','Ukrainian');
INSERT INTO `wp_icl_languages_translations` VALUES (3493,'uk','sq','Ukrainian');
INSERT INTO `wp_icl_languages_translations` VALUES (3494,'uk','sr','украјински');
INSERT INTO `wp_icl_languages_translations` VALUES (3495,'uk','sv','Ukrainska');
INSERT INTO `wp_icl_languages_translations` VALUES (3496,'uk','ta','Ukrainian');
INSERT INTO `wp_icl_languages_translations` VALUES (3497,'uk','th','ยูเครน');
INSERT INTO `wp_icl_languages_translations` VALUES (3498,'uk','tr','Ukraynaca');
INSERT INTO `wp_icl_languages_translations` VALUES (3499,'uk','uk','Українська');
INSERT INTO `wp_icl_languages_translations` VALUES (3500,'uk','ur','Ukrainian');
INSERT INTO `wp_icl_languages_translations` VALUES (3501,'uk','uz','Ukrainian');
INSERT INTO `wp_icl_languages_translations` VALUES (3502,'uk','vi','Ukrainian');
INSERT INTO `wp_icl_languages_translations` VALUES (3503,'uk','yi','Ukrainian');
INSERT INTO `wp_icl_languages_translations` VALUES (3504,'uk','zh-hans','乌克兰语');
INSERT INTO `wp_icl_languages_translations` VALUES (3505,'uk','zu','Ukrainian');
INSERT INTO `wp_icl_languages_translations` VALUES (3506,'uk','zh-hant','烏克蘭語');
INSERT INTO `wp_icl_languages_translations` VALUES (3507,'uk','ms','Ukrainian');
INSERT INTO `wp_icl_languages_translations` VALUES (3508,'uk','gl','Ukrainian');
INSERT INTO `wp_icl_languages_translations` VALUES (3509,'uk','bn','Ukrainian');
INSERT INTO `wp_icl_languages_translations` VALUES (3510,'uk','az','Ukrainian');
INSERT INTO `wp_icl_languages_translations` VALUES (3511,'ur','en','Urdu');
INSERT INTO `wp_icl_languages_translations` VALUES (3512,'ur','es','Urdu');
INSERT INTO `wp_icl_languages_translations` VALUES (3513,'ur','de','Urdu');
INSERT INTO `wp_icl_languages_translations` VALUES (3514,'ur','fr','Ourdu');
INSERT INTO `wp_icl_languages_translations` VALUES (3515,'ur','ar','الأردية');
INSERT INTO `wp_icl_languages_translations` VALUES (3516,'ur','bs','Urdu');
INSERT INTO `wp_icl_languages_translations` VALUES (3517,'ur','bg','Урду');
INSERT INTO `wp_icl_languages_translations` VALUES (3518,'ur','ca','Urdu');
INSERT INTO `wp_icl_languages_translations` VALUES (3519,'ur','cs','Urdu');
INSERT INTO `wp_icl_languages_translations` VALUES (3520,'ur','sk','Urdština');
INSERT INTO `wp_icl_languages_translations` VALUES (3521,'ur','cy','Urdu');
INSERT INTO `wp_icl_languages_translations` VALUES (3522,'ur','da','Urdu');
INSERT INTO `wp_icl_languages_translations` VALUES (3523,'ur','el','Ούρντου');
INSERT INTO `wp_icl_languages_translations` VALUES (3524,'ur','eo','Urdu');
INSERT INTO `wp_icl_languages_translations` VALUES (3525,'ur','et','Urdu');
INSERT INTO `wp_icl_languages_translations` VALUES (3526,'ur','eu','Urdu');
INSERT INTO `wp_icl_languages_translations` VALUES (3527,'ur','fa','Urdu');
INSERT INTO `wp_icl_languages_translations` VALUES (3528,'ur','fi','Urdu');
INSERT INTO `wp_icl_languages_translations` VALUES (3529,'ur','ga','Urdu');
INSERT INTO `wp_icl_languages_translations` VALUES (3530,'ur','he','אורדו');
INSERT INTO `wp_icl_languages_translations` VALUES (3531,'ur','hi','Urdu');
INSERT INTO `wp_icl_languages_translations` VALUES (3532,'ur','hr','Urdski');
INSERT INTO `wp_icl_languages_translations` VALUES (3533,'ur','hu','Urdu');
INSERT INTO `wp_icl_languages_translations` VALUES (3534,'ur','hy','Urdu');
INSERT INTO `wp_icl_languages_translations` VALUES (3535,'ur','id','Urdu');
INSERT INTO `wp_icl_languages_translations` VALUES (3536,'ur','is','Urdu');
INSERT INTO `wp_icl_languages_translations` VALUES (3537,'ur','it','Urdu');
INSERT INTO `wp_icl_languages_translations` VALUES (3538,'ur','ja','ウルドゥー語');
INSERT INTO `wp_icl_languages_translations` VALUES (3539,'ur','ko','우르두어');
INSERT INTO `wp_icl_languages_translations` VALUES (3540,'ur','ku','Urdu');
INSERT INTO `wp_icl_languages_translations` VALUES (3541,'ur','lv','Urdu');
INSERT INTO `wp_icl_languages_translations` VALUES (3542,'ur','lt','Urdu');
INSERT INTO `wp_icl_languages_translations` VALUES (3543,'ur','mk','Urdu');
INSERT INTO `wp_icl_languages_translations` VALUES (3544,'ur','mt','Urdu');
INSERT INTO `wp_icl_languages_translations` VALUES (3545,'ur','mn','Urdu');
INSERT INTO `wp_icl_languages_translations` VALUES (3546,'ur','ne','Urdu');
INSERT INTO `wp_icl_languages_translations` VALUES (3547,'ur','nl','Urdu');
INSERT INTO `wp_icl_languages_translations` VALUES (3548,'ur','no','Urdu');
INSERT INTO `wp_icl_languages_translations` VALUES (3549,'ur','pa','Urdu');
INSERT INTO `wp_icl_languages_translations` VALUES (3550,'ur','pl','Urdu');
INSERT INTO `wp_icl_languages_translations` VALUES (3551,'ur','pt-pt','Urdu');
INSERT INTO `wp_icl_languages_translations` VALUES (3552,'ur','pt-br','Urdu');
INSERT INTO `wp_icl_languages_translations` VALUES (3553,'ur','qu','Urdu');
INSERT INTO `wp_icl_languages_translations` VALUES (3554,'ur','ro','Urdu');
INSERT INTO `wp_icl_languages_translations` VALUES (3555,'ur','ru','Урду');
INSERT INTO `wp_icl_languages_translations` VALUES (3556,'ur','sl','Urdujščina');
INSERT INTO `wp_icl_languages_translations` VALUES (3557,'ur','so','Urdu');
INSERT INTO `wp_icl_languages_translations` VALUES (3558,'ur','sq','Urdu');
INSERT INTO `wp_icl_languages_translations` VALUES (3559,'ur','sr','урду');
INSERT INTO `wp_icl_languages_translations` VALUES (3560,'ur','sv','Urdu');
INSERT INTO `wp_icl_languages_translations` VALUES (3561,'ur','ta','Urdu');
INSERT INTO `wp_icl_languages_translations` VALUES (3562,'ur','th','อุรดู');
INSERT INTO `wp_icl_languages_translations` VALUES (3563,'ur','tr','Urduca');
INSERT INTO `wp_icl_languages_translations` VALUES (3564,'ur','uk','Urdu');
INSERT INTO `wp_icl_languages_translations` VALUES (3565,'ur','ur','اردو ');
INSERT INTO `wp_icl_languages_translations` VALUES (3566,'ur','uz','Urdu');
INSERT INTO `wp_icl_languages_translations` VALUES (3567,'ur','vi','Urdu');
INSERT INTO `wp_icl_languages_translations` VALUES (3568,'ur','yi','Urdu');
INSERT INTO `wp_icl_languages_translations` VALUES (3569,'ur','zh-hans','乌尔都语');
INSERT INTO `wp_icl_languages_translations` VALUES (3570,'ur','zu','Urdu');
INSERT INTO `wp_icl_languages_translations` VALUES (3571,'ur','zh-hant','烏爾都語');
INSERT INTO `wp_icl_languages_translations` VALUES (3572,'ur','ms','Urdu');
INSERT INTO `wp_icl_languages_translations` VALUES (3573,'ur','gl','Urdu');
INSERT INTO `wp_icl_languages_translations` VALUES (3574,'ur','bn','Urdu');
INSERT INTO `wp_icl_languages_translations` VALUES (3575,'ur','az','Urdu');
INSERT INTO `wp_icl_languages_translations` VALUES (3576,'uz','en','Uzbek');
INSERT INTO `wp_icl_languages_translations` VALUES (3577,'uz','es','Uzbeko');
INSERT INTO `wp_icl_languages_translations` VALUES (3578,'uz','de','Usbekisch');
INSERT INTO `wp_icl_languages_translations` VALUES (3579,'uz','fr','Ouzbek');
INSERT INTO `wp_icl_languages_translations` VALUES (3580,'uz','ar','الاوزباكية');
INSERT INTO `wp_icl_languages_translations` VALUES (3581,'uz','bs','Uzbek');
INSERT INTO `wp_icl_languages_translations` VALUES (3582,'uz','bg','Узбекски');
INSERT INTO `wp_icl_languages_translations` VALUES (3583,'uz','ca','Uzbek');
INSERT INTO `wp_icl_languages_translations` VALUES (3584,'uz','cs','Uzbek');
INSERT INTO `wp_icl_languages_translations` VALUES (3585,'uz','sk','Uzbekčina');
INSERT INTO `wp_icl_languages_translations` VALUES (3586,'uz','cy','Uzbek');
INSERT INTO `wp_icl_languages_translations` VALUES (3587,'uz','da','Uzbek');
INSERT INTO `wp_icl_languages_translations` VALUES (3588,'uz','el','Ουζμπεκικά');
INSERT INTO `wp_icl_languages_translations` VALUES (3589,'uz','eo','Uzbek');
INSERT INTO `wp_icl_languages_translations` VALUES (3590,'uz','et','Uzbek');
INSERT INTO `wp_icl_languages_translations` VALUES (3591,'uz','eu','Uzbek');
INSERT INTO `wp_icl_languages_translations` VALUES (3592,'uz','fa','Uzbek');
INSERT INTO `wp_icl_languages_translations` VALUES (3593,'uz','fi','Uzbekki');
INSERT INTO `wp_icl_languages_translations` VALUES (3594,'uz','ga','Uzbek');
INSERT INTO `wp_icl_languages_translations` VALUES (3595,'uz','he','אוזבקית');
INSERT INTO `wp_icl_languages_translations` VALUES (3596,'uz','hi','Uzbek');
INSERT INTO `wp_icl_languages_translations` VALUES (3597,'uz','hr','Uzbečki');
INSERT INTO `wp_icl_languages_translations` VALUES (3598,'uz','hu','üzbég');
INSERT INTO `wp_icl_languages_translations` VALUES (3599,'uz','hy','Uzbek');
INSERT INTO `wp_icl_languages_translations` VALUES (3600,'uz','id','Uzbek');
INSERT INTO `wp_icl_languages_translations` VALUES (3601,'uz','is','Uzbek');
INSERT INTO `wp_icl_languages_translations` VALUES (3602,'uz','it','Uzbeco');
INSERT INTO `wp_icl_languages_translations` VALUES (3603,'uz','ja','ウズベク語');
INSERT INTO `wp_icl_languages_translations` VALUES (3604,'uz','ko','우즈베크어');
INSERT INTO `wp_icl_languages_translations` VALUES (3605,'uz','ku','Uzbek');
INSERT INTO `wp_icl_languages_translations` VALUES (3606,'uz','lv','Uzbek');
INSERT INTO `wp_icl_languages_translations` VALUES (3607,'uz','lt','Uzbek');
INSERT INTO `wp_icl_languages_translations` VALUES (3608,'uz','mk','Uzbek');
INSERT INTO `wp_icl_languages_translations` VALUES (3609,'uz','mt','Uzbek');
INSERT INTO `wp_icl_languages_translations` VALUES (3610,'uz','mn','Uzbek');
INSERT INTO `wp_icl_languages_translations` VALUES (3611,'uz','ne','Uzbek');
INSERT INTO `wp_icl_languages_translations` VALUES (3612,'uz','nl','Oezbeeks');
INSERT INTO `wp_icl_languages_translations` VALUES (3613,'uz','no','Usbekisk');
INSERT INTO `wp_icl_languages_translations` VALUES (3614,'uz','pa','Uzbek');
INSERT INTO `wp_icl_languages_translations` VALUES (3615,'uz','pl','Uzbecki');
INSERT INTO `wp_icl_languages_translations` VALUES (3616,'uz','pt-pt','Uzbeque');
INSERT INTO `wp_icl_languages_translations` VALUES (3617,'uz','pt-br','Uzbeque');
INSERT INTO `wp_icl_languages_translations` VALUES (3618,'uz','qu','Uzbek');
INSERT INTO `wp_icl_languages_translations` VALUES (3619,'uz','ro','Uzbecă');
INSERT INTO `wp_icl_languages_translations` VALUES (3620,'uz','ru','Узбекский');
INSERT INTO `wp_icl_languages_translations` VALUES (3621,'uz','sl','Uzbek');
INSERT INTO `wp_icl_languages_translations` VALUES (3622,'uz','so','Uzbek');
INSERT INTO `wp_icl_languages_translations` VALUES (3623,'uz','sq','Uzbek');
INSERT INTO `wp_icl_languages_translations` VALUES (3624,'uz','sr','Узбек');
INSERT INTO `wp_icl_languages_translations` VALUES (3625,'uz','sv','Uzbekiska');
INSERT INTO `wp_icl_languages_translations` VALUES (3626,'uz','ta','Uzbek');
INSERT INTO `wp_icl_languages_translations` VALUES (3627,'uz','th','อุซเบก');
INSERT INTO `wp_icl_languages_translations` VALUES (3628,'uz','tr','Özbekçe');
INSERT INTO `wp_icl_languages_translations` VALUES (3629,'uz','uk','Uzbek');
INSERT INTO `wp_icl_languages_translations` VALUES (3630,'uz','ur','Uzbek');
INSERT INTO `wp_icl_languages_translations` VALUES (3631,'uz','uz','Uzbek');
INSERT INTO `wp_icl_languages_translations` VALUES (3632,'uz','vi','Uzbek');
INSERT INTO `wp_icl_languages_translations` VALUES (3633,'uz','yi','Uzbek');
INSERT INTO `wp_icl_languages_translations` VALUES (3634,'uz','zh-hans','乌兹别克语');
INSERT INTO `wp_icl_languages_translations` VALUES (3635,'uz','zu','Uzbek');
INSERT INTO `wp_icl_languages_translations` VALUES (3636,'uz','zh-hant','烏茲別克語');
INSERT INTO `wp_icl_languages_translations` VALUES (3637,'uz','ms','Uzbek');
INSERT INTO `wp_icl_languages_translations` VALUES (3638,'uz','gl','Uzbek');
INSERT INTO `wp_icl_languages_translations` VALUES (3639,'uz','bn','Uzbek');
INSERT INTO `wp_icl_languages_translations` VALUES (3640,'uz','az','Uzbek');
INSERT INTO `wp_icl_languages_translations` VALUES (3641,'vi','en','Vietnamese');
INSERT INTO `wp_icl_languages_translations` VALUES (3642,'vi','es','Vietnamita');
INSERT INTO `wp_icl_languages_translations` VALUES (3643,'vi','de','Vietnamesisch');
INSERT INTO `wp_icl_languages_translations` VALUES (3644,'vi','fr','Vietnamien');
INSERT INTO `wp_icl_languages_translations` VALUES (3645,'vi','ar','الفيتنامية');
INSERT INTO `wp_icl_languages_translations` VALUES (3646,'vi','bs','Vietnamese');
INSERT INTO `wp_icl_languages_translations` VALUES (3647,'vi','bg','Виетнамски');
INSERT INTO `wp_icl_languages_translations` VALUES (3648,'vi','ca','Vietnamese');
INSERT INTO `wp_icl_languages_translations` VALUES (3649,'vi','cs','Vietnamský');
INSERT INTO `wp_icl_languages_translations` VALUES (3650,'vi','sk','Vietnamčina');
INSERT INTO `wp_icl_languages_translations` VALUES (3651,'vi','cy','Vietnamese');
INSERT INTO `wp_icl_languages_translations` VALUES (3652,'vi','da','Vietnamese');
INSERT INTO `wp_icl_languages_translations` VALUES (3653,'vi','el','Βιετναμέζικα');
INSERT INTO `wp_icl_languages_translations` VALUES (3654,'vi','eo','Vietnamese');
INSERT INTO `wp_icl_languages_translations` VALUES (3655,'vi','et','Vietnamese');
INSERT INTO `wp_icl_languages_translations` VALUES (3656,'vi','eu','Vietnamese');
INSERT INTO `wp_icl_languages_translations` VALUES (3657,'vi','fa','Vietnamese');
INSERT INTO `wp_icl_languages_translations` VALUES (3658,'vi','fi','Vietnam');
INSERT INTO `wp_icl_languages_translations` VALUES (3659,'vi','ga','Vietnamese');
INSERT INTO `wp_icl_languages_translations` VALUES (3660,'vi','he','וייטנאמית');
INSERT INTO `wp_icl_languages_translations` VALUES (3661,'vi','hi','Vietnamese');
INSERT INTO `wp_icl_languages_translations` VALUES (3662,'vi','hr','Vijetnamski');
INSERT INTO `wp_icl_languages_translations` VALUES (3663,'vi','hu','Vietnámi');
INSERT INTO `wp_icl_languages_translations` VALUES (3664,'vi','hy','Vietnamese');
INSERT INTO `wp_icl_languages_translations` VALUES (3665,'vi','id','Vietnamese');
INSERT INTO `wp_icl_languages_translations` VALUES (3666,'vi','is','Vietnamese');
INSERT INTO `wp_icl_languages_translations` VALUES (3667,'vi','it','Vietnamita');
INSERT INTO `wp_icl_languages_translations` VALUES (3668,'vi','ja','ベトナム語');
INSERT INTO `wp_icl_languages_translations` VALUES (3669,'vi','ko','베트남어');
INSERT INTO `wp_icl_languages_translations` VALUES (3670,'vi','ku','Vietnamese');
INSERT INTO `wp_icl_languages_translations` VALUES (3671,'vi','lv','Vietnamese');
INSERT INTO `wp_icl_languages_translations` VALUES (3672,'vi','lt','Vietnamese');
INSERT INTO `wp_icl_languages_translations` VALUES (3673,'vi','mk','Vietnamese');
INSERT INTO `wp_icl_languages_translations` VALUES (3674,'vi','mt','Vietnamese');
INSERT INTO `wp_icl_languages_translations` VALUES (3675,'vi','mn','Vietnamese');
INSERT INTO `wp_icl_languages_translations` VALUES (3676,'vi','ne','Vietnamese');
INSERT INTO `wp_icl_languages_translations` VALUES (3677,'vi','nl','Vietnamees');
INSERT INTO `wp_icl_languages_translations` VALUES (3678,'vi','no','Vietnamesisk');
INSERT INTO `wp_icl_languages_translations` VALUES (3679,'vi','pa','Vietnamese');
INSERT INTO `wp_icl_languages_translations` VALUES (3680,'vi','pl','Wietnamski');
INSERT INTO `wp_icl_languages_translations` VALUES (3681,'vi','pt-pt','Vietnamita');
INSERT INTO `wp_icl_languages_translations` VALUES (3682,'vi','pt-br','Vietnamita');
INSERT INTO `wp_icl_languages_translations` VALUES (3683,'vi','qu','Vietnamese');
INSERT INTO `wp_icl_languages_translations` VALUES (3684,'vi','ro','Vietnameză');
INSERT INTO `wp_icl_languages_translations` VALUES (3685,'vi','ru','Вьетнамский');
INSERT INTO `wp_icl_languages_translations` VALUES (3686,'vi','sl','Vietnamščina');
INSERT INTO `wp_icl_languages_translations` VALUES (3687,'vi','so','Vietnamese');
INSERT INTO `wp_icl_languages_translations` VALUES (3688,'vi','sq','Vietnamese');
INSERT INTO `wp_icl_languages_translations` VALUES (3689,'vi','sr','вијетнамски');
INSERT INTO `wp_icl_languages_translations` VALUES (3690,'vi','sv','Vietnamesiska');
INSERT INTO `wp_icl_languages_translations` VALUES (3691,'vi','ta','Vietnamese');
INSERT INTO `wp_icl_languages_translations` VALUES (3692,'vi','th','เวียดนาม');
INSERT INTO `wp_icl_languages_translations` VALUES (3693,'vi','tr','Vietnamca');
INSERT INTO `wp_icl_languages_translations` VALUES (3694,'vi','uk','Vietnamese');
INSERT INTO `wp_icl_languages_translations` VALUES (3695,'vi','ur','Vietnamese');
INSERT INTO `wp_icl_languages_translations` VALUES (3696,'vi','uz','Vietnamese');
INSERT INTO `wp_icl_languages_translations` VALUES (3697,'vi','vi','Tiếng Việt');
INSERT INTO `wp_icl_languages_translations` VALUES (3698,'vi','yi','Vietnamese');
INSERT INTO `wp_icl_languages_translations` VALUES (3699,'vi','zh-hans','越南语');
INSERT INTO `wp_icl_languages_translations` VALUES (3700,'vi','zu','Vietnamese');
INSERT INTO `wp_icl_languages_translations` VALUES (3701,'vi','zh-hant','越南語');
INSERT INTO `wp_icl_languages_translations` VALUES (3702,'vi','ms','Vietnamese');
INSERT INTO `wp_icl_languages_translations` VALUES (3703,'vi','gl','Vietnamese');
INSERT INTO `wp_icl_languages_translations` VALUES (3704,'vi','bn','Vietnamese');
INSERT INTO `wp_icl_languages_translations` VALUES (3705,'vi','az','Vietnamese');
INSERT INTO `wp_icl_languages_translations` VALUES (3706,'yi','en','Yiddish');
INSERT INTO `wp_icl_languages_translations` VALUES (3707,'yi','es','Yidis');
INSERT INTO `wp_icl_languages_translations` VALUES (3708,'yi','de','Jiddisch');
INSERT INTO `wp_icl_languages_translations` VALUES (3709,'yi','fr','Yiddish');
INSERT INTO `wp_icl_languages_translations` VALUES (3710,'yi','ar','اليديشية');
INSERT INTO `wp_icl_languages_translations` VALUES (3711,'yi','bs','Yiddish');
INSERT INTO `wp_icl_languages_translations` VALUES (3712,'yi','bg','Идиш');
INSERT INTO `wp_icl_languages_translations` VALUES (3713,'yi','ca','Yiddish');
INSERT INTO `wp_icl_languages_translations` VALUES (3714,'yi','cs','Jidiš');
INSERT INTO `wp_icl_languages_translations` VALUES (3715,'yi','sk','Jidiš');
INSERT INTO `wp_icl_languages_translations` VALUES (3716,'yi','cy','Yiddish');
INSERT INTO `wp_icl_languages_translations` VALUES (3717,'yi','da','Yiddish');
INSERT INTO `wp_icl_languages_translations` VALUES (3718,'yi','el','Γίντις');
INSERT INTO `wp_icl_languages_translations` VALUES (3719,'yi','eo','Yiddish');
INSERT INTO `wp_icl_languages_translations` VALUES (3720,'yi','et','Yiddish');
INSERT INTO `wp_icl_languages_translations` VALUES (3721,'yi','eu','Yiddish');
INSERT INTO `wp_icl_languages_translations` VALUES (3722,'yi','fa','Yiddish');
INSERT INTO `wp_icl_languages_translations` VALUES (3723,'yi','fi','Jiddi');
INSERT INTO `wp_icl_languages_translations` VALUES (3724,'yi','ga','Yiddish');
INSERT INTO `wp_icl_languages_translations` VALUES (3725,'yi','he','יידיש');
INSERT INTO `wp_icl_languages_translations` VALUES (3726,'yi','hi','Yiddish');
INSERT INTO `wp_icl_languages_translations` VALUES (3727,'yi','hr','Jidiš');
INSERT INTO `wp_icl_languages_translations` VALUES (3728,'yi','hu','Jiddis');
INSERT INTO `wp_icl_languages_translations` VALUES (3729,'yi','hy','Yiddish');
INSERT INTO `wp_icl_languages_translations` VALUES (3730,'yi','id','Yiddish');
INSERT INTO `wp_icl_languages_translations` VALUES (3731,'yi','is','Yiddish');
INSERT INTO `wp_icl_languages_translations` VALUES (3732,'yi','it','Yiddish');
INSERT INTO `wp_icl_languages_translations` VALUES (3733,'yi','ja','イディッシュ語');
INSERT INTO `wp_icl_languages_translations` VALUES (3734,'yi','ko','이디시어');
INSERT INTO `wp_icl_languages_translations` VALUES (3735,'yi','ku','Yiddish');
INSERT INTO `wp_icl_languages_translations` VALUES (3736,'yi','lv','Yiddish');
INSERT INTO `wp_icl_languages_translations` VALUES (3737,'yi','lt','Yiddish');
INSERT INTO `wp_icl_languages_translations` VALUES (3738,'yi','mk','Yiddish');
INSERT INTO `wp_icl_languages_translations` VALUES (3739,'yi','mt','Yiddish');
INSERT INTO `wp_icl_languages_translations` VALUES (3740,'yi','mn','Yiddish');
INSERT INTO `wp_icl_languages_translations` VALUES (3741,'yi','ne','Yiddish');
INSERT INTO `wp_icl_languages_translations` VALUES (3742,'yi','nl','Jiddisch');
INSERT INTO `wp_icl_languages_translations` VALUES (3743,'yi','no','Yiddish');
INSERT INTO `wp_icl_languages_translations` VALUES (3744,'yi','pa','Yiddish');
INSERT INTO `wp_icl_languages_translations` VALUES (3745,'yi','pl','Jidysz');
INSERT INTO `wp_icl_languages_translations` VALUES (3746,'yi','pt-pt','Yiddish');
INSERT INTO `wp_icl_languages_translations` VALUES (3747,'yi','pt-br','Yiddish');
INSERT INTO `wp_icl_languages_translations` VALUES (3748,'yi','qu','Yiddish');
INSERT INTO `wp_icl_languages_translations` VALUES (3749,'yi','ro','Idiş');
INSERT INTO `wp_icl_languages_translations` VALUES (3750,'yi','ru','Идиш');
INSERT INTO `wp_icl_languages_translations` VALUES (3751,'yi','sl','Jidiš');
INSERT INTO `wp_icl_languages_translations` VALUES (3752,'yi','so','Yiddish');
INSERT INTO `wp_icl_languages_translations` VALUES (3753,'yi','sq','Yiddish');
INSERT INTO `wp_icl_languages_translations` VALUES (3754,'yi','sr','јидиш');
INSERT INTO `wp_icl_languages_translations` VALUES (3755,'yi','sv','Jiddisch');
INSERT INTO `wp_icl_languages_translations` VALUES (3756,'yi','ta','Yiddish');
INSERT INTO `wp_icl_languages_translations` VALUES (3757,'yi','th','ยิชดิช');
INSERT INTO `wp_icl_languages_translations` VALUES (3758,'yi','tr','Eski İbranice');
INSERT INTO `wp_icl_languages_translations` VALUES (3759,'yi','uk','Yiddish');
INSERT INTO `wp_icl_languages_translations` VALUES (3760,'yi','ur','Yiddish');
INSERT INTO `wp_icl_languages_translations` VALUES (3761,'yi','uz','Yiddish');
INSERT INTO `wp_icl_languages_translations` VALUES (3762,'yi','vi','Yiddish');
INSERT INTO `wp_icl_languages_translations` VALUES (3763,'yi','yi','Yiddish');
INSERT INTO `wp_icl_languages_translations` VALUES (3764,'yi','zh-hans','依地语');
INSERT INTO `wp_icl_languages_translations` VALUES (3765,'yi','zu','Yiddish');
INSERT INTO `wp_icl_languages_translations` VALUES (3766,'yi','zh-hant','依地語');
INSERT INTO `wp_icl_languages_translations` VALUES (3767,'yi','ms','Yiddish');
INSERT INTO `wp_icl_languages_translations` VALUES (3768,'yi','gl','Yiddish');
INSERT INTO `wp_icl_languages_translations` VALUES (3769,'yi','bn','Yiddish');
INSERT INTO `wp_icl_languages_translations` VALUES (3770,'yi','az','Yiddish');
INSERT INTO `wp_icl_languages_translations` VALUES (3771,'zh-hans','en','Chinese (Simplified)');
INSERT INTO `wp_icl_languages_translations` VALUES (3772,'zh-hans','es','Chino simplificado');
INSERT INTO `wp_icl_languages_translations` VALUES (3773,'zh-hans','de','Vereinfachtes Chinesisch');
INSERT INTO `wp_icl_languages_translations` VALUES (3774,'zh-hans','fr','Chinois simplifié');
INSERT INTO `wp_icl_languages_translations` VALUES (3775,'zh-hans','ar','الصينية المبسطة');
INSERT INTO `wp_icl_languages_translations` VALUES (3776,'zh-hans','bs','Chinese (Simplified)');
INSERT INTO `wp_icl_languages_translations` VALUES (3777,'zh-hans','bg','Китайски  (опростен)');
INSERT INTO `wp_icl_languages_translations` VALUES (3778,'zh-hans','ca','Chinese (Simplified)');
INSERT INTO `wp_icl_languages_translations` VALUES (3779,'zh-hans','cs','Čínština ( Zjednodušený )');
INSERT INTO `wp_icl_languages_translations` VALUES (3780,'zh-hans','sk','Zjednodušená Čínština');
INSERT INTO `wp_icl_languages_translations` VALUES (3781,'zh-hans','cy','Chinese (Simplified)');
INSERT INTO `wp_icl_languages_translations` VALUES (3782,'zh-hans','da','Chinese (Simplified)');
INSERT INTO `wp_icl_languages_translations` VALUES (3783,'zh-hans','el','Κινεζικά (Απλοποιημένα)');
INSERT INTO `wp_icl_languages_translations` VALUES (3784,'zh-hans','eo','Chinese (Simplified)');
INSERT INTO `wp_icl_languages_translations` VALUES (3785,'zh-hans','et','Chinese (Simplified)');
INSERT INTO `wp_icl_languages_translations` VALUES (3786,'zh-hans','eu','Chinese (Simplified)');
INSERT INTO `wp_icl_languages_translations` VALUES (3787,'zh-hans','fa','Chinese (Simplified)');
INSERT INTO `wp_icl_languages_translations` VALUES (3788,'zh-hans','fi','Kiina');
INSERT INTO `wp_icl_languages_translations` VALUES (3789,'zh-hans','ga','Chinese (Simplified)');
INSERT INTO `wp_icl_languages_translations` VALUES (3790,'zh-hans','he','סינית');
INSERT INTO `wp_icl_languages_translations` VALUES (3791,'zh-hans','hi','Chinese (Simplified)');
INSERT INTO `wp_icl_languages_translations` VALUES (3792,'zh-hans','hr','Kineski (pojednostavljeni)');
INSERT INTO `wp_icl_languages_translations` VALUES (3793,'zh-hans','hu','Egyszerűsített kínai');
INSERT INTO `wp_icl_languages_translations` VALUES (3794,'zh-hans','hy','Chinese (Simplified)');
INSERT INTO `wp_icl_languages_translations` VALUES (3795,'zh-hans','id','Chinese (Simplified)');
INSERT INTO `wp_icl_languages_translations` VALUES (3796,'zh-hans','is','Chinese (Simplified)');
INSERT INTO `wp_icl_languages_translations` VALUES (3797,'zh-hans','it','Cinese semplificato');
INSERT INTO `wp_icl_languages_translations` VALUES (3798,'zh-hans','ja','簡体中国語');
INSERT INTO `wp_icl_languages_translations` VALUES (3799,'zh-hans','ko','중국어 간체');
INSERT INTO `wp_icl_languages_translations` VALUES (3800,'zh-hans','ku','Chinese (Simplified)');
INSERT INTO `wp_icl_languages_translations` VALUES (3801,'zh-hans','lv','Chinese (Simplified)');
INSERT INTO `wp_icl_languages_translations` VALUES (3802,'zh-hans','lt','Chinese (Simplified)');
INSERT INTO `wp_icl_languages_translations` VALUES (3803,'zh-hans','mk','Chinese (Simplified)');
INSERT INTO `wp_icl_languages_translations` VALUES (3804,'zh-hans','mt','Chinese (Simplified)');
INSERT INTO `wp_icl_languages_translations` VALUES (3805,'zh-hans','mn','Chinese (Simplified)');
INSERT INTO `wp_icl_languages_translations` VALUES (3806,'zh-hans','ne','Chinese (Simplified)');
INSERT INTO `wp_icl_languages_translations` VALUES (3807,'zh-hans','nl','Vereenvoudigd Chinees');
INSERT INTO `wp_icl_languages_translations` VALUES (3808,'zh-hans','no','Kinesisk (forenklet)');
INSERT INTO `wp_icl_languages_translations` VALUES (3809,'zh-hans','pa','Chinese (Simplified)');
INSERT INTO `wp_icl_languages_translations` VALUES (3810,'zh-hans','pl','Chiński uproszczony');
INSERT INTO `wp_icl_languages_translations` VALUES (3811,'zh-hans','pt-pt','Chinês (Simplificado)');
INSERT INTO `wp_icl_languages_translations` VALUES (3812,'zh-hans','pt-br','Chinês (Simplificado)');
INSERT INTO `wp_icl_languages_translations` VALUES (3813,'zh-hans','qu','Chinese (Simplified)');
INSERT INTO `wp_icl_languages_translations` VALUES (3814,'zh-hans','ro','Chineza simplificată');
INSERT INTO `wp_icl_languages_translations` VALUES (3815,'zh-hans','ru','Китайский (упрощенный)');
INSERT INTO `wp_icl_languages_translations` VALUES (3816,'zh-hans','sl','Kitajščina (poenostavljena )');
INSERT INTO `wp_icl_languages_translations` VALUES (3817,'zh-hans','so','Chinese (Simplified)');
INSERT INTO `wp_icl_languages_translations` VALUES (3818,'zh-hans','sq','Chinese (Simplified)');
INSERT INTO `wp_icl_languages_translations` VALUES (3819,'zh-hans','sr','Кинески (поједностављени)');
INSERT INTO `wp_icl_languages_translations` VALUES (3820,'zh-hans','sv','Förenklad kinesiska');
INSERT INTO `wp_icl_languages_translations` VALUES (3821,'zh-hans','ta','Chinese (Simplified)');
INSERT INTO `wp_icl_languages_translations` VALUES (3822,'zh-hans','th','จีนประยุกต์');
INSERT INTO `wp_icl_languages_translations` VALUES (3823,'zh-hans','tr','Modern Çince');
INSERT INTO `wp_icl_languages_translations` VALUES (3824,'zh-hans','uk','Chinese (Simplified)');
INSERT INTO `wp_icl_languages_translations` VALUES (3825,'zh-hans','ur','Chinese (Simplified)');
INSERT INTO `wp_icl_languages_translations` VALUES (3826,'zh-hans','uz','Chinese (Simplified)');
INSERT INTO `wp_icl_languages_translations` VALUES (3827,'zh-hans','vi','Chinese (Simplified)');
INSERT INTO `wp_icl_languages_translations` VALUES (3828,'zh-hans','yi','Chinese (Simplified)');
INSERT INTO `wp_icl_languages_translations` VALUES (3829,'zh-hans','zh-hans','简体中文');
INSERT INTO `wp_icl_languages_translations` VALUES (3830,'zh-hans','zu','Chinese (Simplified)');
INSERT INTO `wp_icl_languages_translations` VALUES (3831,'zh-hans','zh-hant','簡體中文');
INSERT INTO `wp_icl_languages_translations` VALUES (3832,'zh-hans','ms','Chinese (Simplified)');
INSERT INTO `wp_icl_languages_translations` VALUES (3833,'zh-hans','gl','Chinese (Simplified)');
INSERT INTO `wp_icl_languages_translations` VALUES (3834,'zh-hans','bn','Chinese (Simplified)');
INSERT INTO `wp_icl_languages_translations` VALUES (3835,'zh-hans','az','Chinese (Simplified)');
INSERT INTO `wp_icl_languages_translations` VALUES (3836,'zu','en','Zulu');
INSERT INTO `wp_icl_languages_translations` VALUES (3837,'zu','es','Zulú');
INSERT INTO `wp_icl_languages_translations` VALUES (3838,'zu','de','Zulu');
INSERT INTO `wp_icl_languages_translations` VALUES (3839,'zu','fr','Zoulou');
INSERT INTO `wp_icl_languages_translations` VALUES (3840,'zu','ar','الزولو');
INSERT INTO `wp_icl_languages_translations` VALUES (3841,'zu','bs','Zulu');
INSERT INTO `wp_icl_languages_translations` VALUES (3842,'zu','bg','Зулу');
INSERT INTO `wp_icl_languages_translations` VALUES (3843,'zu','ca','Zulu');
INSERT INTO `wp_icl_languages_translations` VALUES (3844,'zu','cs','Zulu');
INSERT INTO `wp_icl_languages_translations` VALUES (3845,'zu','sk','Jazyk Zulu');
INSERT INTO `wp_icl_languages_translations` VALUES (3846,'zu','cy','Zulu');
INSERT INTO `wp_icl_languages_translations` VALUES (3847,'zu','da','Zulu');
INSERT INTO `wp_icl_languages_translations` VALUES (3848,'zu','el','Ζουλού');
INSERT INTO `wp_icl_languages_translations` VALUES (3849,'zu','eo','Zulu');
INSERT INTO `wp_icl_languages_translations` VALUES (3850,'zu','et','Zulu');
INSERT INTO `wp_icl_languages_translations` VALUES (3851,'zu','eu','Zulu');
INSERT INTO `wp_icl_languages_translations` VALUES (3852,'zu','fa','Zulu');
INSERT INTO `wp_icl_languages_translations` VALUES (3853,'zu','fi','Zulu');
INSERT INTO `wp_icl_languages_translations` VALUES (3854,'zu','ga','Zulu');
INSERT INTO `wp_icl_languages_translations` VALUES (3855,'zu','he','זולו ');
INSERT INTO `wp_icl_languages_translations` VALUES (3856,'zu','hi','Zulu');
INSERT INTO `wp_icl_languages_translations` VALUES (3857,'zu','hr','Zulu');
INSERT INTO `wp_icl_languages_translations` VALUES (3858,'zu','hu','Zulu');
INSERT INTO `wp_icl_languages_translations` VALUES (3859,'zu','hy','Zulu');
INSERT INTO `wp_icl_languages_translations` VALUES (3860,'zu','id','Zulu');
INSERT INTO `wp_icl_languages_translations` VALUES (3861,'zu','is','Zulu');
INSERT INTO `wp_icl_languages_translations` VALUES (3862,'zu','it','Zulu');
INSERT INTO `wp_icl_languages_translations` VALUES (3863,'zu','ja','ズールー語');
INSERT INTO `wp_icl_languages_translations` VALUES (3864,'zu','ko','줄루어');
INSERT INTO `wp_icl_languages_translations` VALUES (3865,'zu','ku','Zulu');
INSERT INTO `wp_icl_languages_translations` VALUES (3866,'zu','lv','Zulu');
INSERT INTO `wp_icl_languages_translations` VALUES (3867,'zu','lt','Zulu');
INSERT INTO `wp_icl_languages_translations` VALUES (3868,'zu','mk','Zulu');
INSERT INTO `wp_icl_languages_translations` VALUES (3869,'zu','mt','Zulu');
INSERT INTO `wp_icl_languages_translations` VALUES (3870,'zu','mn','Zulu');
INSERT INTO `wp_icl_languages_translations` VALUES (3871,'zu','ne','Zulu');
INSERT INTO `wp_icl_languages_translations` VALUES (3872,'zu','nl','Zulu');
INSERT INTO `wp_icl_languages_translations` VALUES (3873,'zu','no','Zulu');
INSERT INTO `wp_icl_languages_translations` VALUES (3874,'zu','pa','Zulu');
INSERT INTO `wp_icl_languages_translations` VALUES (3875,'zu','pl','Zuluski');
INSERT INTO `wp_icl_languages_translations` VALUES (3876,'zu','pt-pt','Zulu');
INSERT INTO `wp_icl_languages_translations` VALUES (3877,'zu','pt-br','Zulu');
INSERT INTO `wp_icl_languages_translations` VALUES (3878,'zu','qu','Zulu');
INSERT INTO `wp_icl_languages_translations` VALUES (3879,'zu','ro','Zulu');
INSERT INTO `wp_icl_languages_translations` VALUES (3880,'zu','ru','Зулу');
INSERT INTO `wp_icl_languages_translations` VALUES (3881,'zu','sl','Zulu');
INSERT INTO `wp_icl_languages_translations` VALUES (3882,'zu','so','Zulu');
INSERT INTO `wp_icl_languages_translations` VALUES (3883,'zu','sq','Zulu');
INSERT INTO `wp_icl_languages_translations` VALUES (3884,'zu','sr','зулу');
INSERT INTO `wp_icl_languages_translations` VALUES (3885,'zu','sv','Zulu');
INSERT INTO `wp_icl_languages_translations` VALUES (3886,'zu','ta','Zulu');
INSERT INTO `wp_icl_languages_translations` VALUES (3887,'zu','th','ซูลู');
INSERT INTO `wp_icl_languages_translations` VALUES (3888,'zu','tr','Zulu dili');
INSERT INTO `wp_icl_languages_translations` VALUES (3889,'zu','uk','Zulu');
INSERT INTO `wp_icl_languages_translations` VALUES (3890,'zu','ur','Zulu');
INSERT INTO `wp_icl_languages_translations` VALUES (3891,'zu','uz','Zulu');
INSERT INTO `wp_icl_languages_translations` VALUES (3892,'zu','vi','Zulu');
INSERT INTO `wp_icl_languages_translations` VALUES (3893,'zu','yi','Zulu');
INSERT INTO `wp_icl_languages_translations` VALUES (3894,'zu','zh-hans','祖鲁语');
INSERT INTO `wp_icl_languages_translations` VALUES (3895,'zu','zu','Zulu');
INSERT INTO `wp_icl_languages_translations` VALUES (3896,'zu','zh-hant','祖魯語');
INSERT INTO `wp_icl_languages_translations` VALUES (3897,'zu','ms','Zulu');
INSERT INTO `wp_icl_languages_translations` VALUES (3898,'zu','gl','Zulu');
INSERT INTO `wp_icl_languages_translations` VALUES (3899,'zu','bn','Zulu');
INSERT INTO `wp_icl_languages_translations` VALUES (3900,'zu','az','Zulu');
INSERT INTO `wp_icl_languages_translations` VALUES (3901,'zh-hant','en','Chinese (Traditional)');
INSERT INTO `wp_icl_languages_translations` VALUES (3902,'zh-hant','es','Chino tradicional');
INSERT INTO `wp_icl_languages_translations` VALUES (3903,'zh-hant','de','Traditionelles Chinesisch');
INSERT INTO `wp_icl_languages_translations` VALUES (3904,'zh-hant','fr','Chinois traditionnel');
INSERT INTO `wp_icl_languages_translations` VALUES (3905,'zh-hant','ar','الصينية التقليدية');
INSERT INTO `wp_icl_languages_translations` VALUES (3906,'zh-hant','bs','Chinese (Traditional)');
INSERT INTO `wp_icl_languages_translations` VALUES (3907,'zh-hant','bg','Китайски (традиционен)');
INSERT INTO `wp_icl_languages_translations` VALUES (3908,'zh-hant','ca','Chinese (Traditional)');
INSERT INTO `wp_icl_languages_translations` VALUES (3909,'zh-hant','cs','Čínština (tradiční )');
INSERT INTO `wp_icl_languages_translations` VALUES (3910,'zh-hant','sk','Tradičná Čínština');
INSERT INTO `wp_icl_languages_translations` VALUES (3911,'zh-hant','cy','Chinese (Traditional)');
INSERT INTO `wp_icl_languages_translations` VALUES (3912,'zh-hant','da','Chinese (Traditional)');
INSERT INTO `wp_icl_languages_translations` VALUES (3913,'zh-hant','el','Κινεζικά (Παραδοσιακά)');
INSERT INTO `wp_icl_languages_translations` VALUES (3914,'zh-hant','eo','Chinese (Traditional)');
INSERT INTO `wp_icl_languages_translations` VALUES (3915,'zh-hant','et','Chinese (Traditional)');
INSERT INTO `wp_icl_languages_translations` VALUES (3916,'zh-hant','eu','Chinese (Traditional)');
INSERT INTO `wp_icl_languages_translations` VALUES (3917,'zh-hant','fa','Chinese (Traditional)');
INSERT INTO `wp_icl_languages_translations` VALUES (3918,'zh-hant','fi','Perinteinen kiina');
INSERT INTO `wp_icl_languages_translations` VALUES (3919,'zh-hant','ga','Chinese (Traditional)');
INSERT INTO `wp_icl_languages_translations` VALUES (3920,'zh-hant','he','סינית מסורתית');
INSERT INTO `wp_icl_languages_translations` VALUES (3921,'zh-hant','hi','Chinese (Traditional)');
INSERT INTO `wp_icl_languages_translations` VALUES (3922,'zh-hant','hr','Kineski (tradicionalni)');
INSERT INTO `wp_icl_languages_translations` VALUES (3923,'zh-hant','hu','Hagyományos kínai');
INSERT INTO `wp_icl_languages_translations` VALUES (3924,'zh-hant','hy','Chinese (Traditional)');
INSERT INTO `wp_icl_languages_translations` VALUES (3925,'zh-hant','id','Chinese (Traditional)');
INSERT INTO `wp_icl_languages_translations` VALUES (3926,'zh-hant','is','Chinese (Traditional)');
INSERT INTO `wp_icl_languages_translations` VALUES (3927,'zh-hant','it','Cinese tradizionale');
INSERT INTO `wp_icl_languages_translations` VALUES (3928,'zh-hant','ja','繁体中国語');
INSERT INTO `wp_icl_languages_translations` VALUES (3929,'zh-hant','ko','중국어 번체');
INSERT INTO `wp_icl_languages_translations` VALUES (3930,'zh-hant','ku','Chinese (Traditional)');
INSERT INTO `wp_icl_languages_translations` VALUES (3931,'zh-hant','lv','Chinese (Traditional)');
INSERT INTO `wp_icl_languages_translations` VALUES (3932,'zh-hant','lt','Chinese (Traditional)');
INSERT INTO `wp_icl_languages_translations` VALUES (3933,'zh-hant','mk','Chinese (Traditional)');
INSERT INTO `wp_icl_languages_translations` VALUES (3934,'zh-hant','mt','Chinese (Traditional)');
INSERT INTO `wp_icl_languages_translations` VALUES (3935,'zh-hant','mn','Chinese (Traditional)');
INSERT INTO `wp_icl_languages_translations` VALUES (3936,'zh-hant','ne','Chinese (Traditional)');
INSERT INTO `wp_icl_languages_translations` VALUES (3937,'zh-hant','nl','Traditioneel Chinees');
INSERT INTO `wp_icl_languages_translations` VALUES (3938,'zh-hant','no','Kinesisk (tradisjonell)');
INSERT INTO `wp_icl_languages_translations` VALUES (3939,'zh-hant','pa','Chinese (Traditional)');
INSERT INTO `wp_icl_languages_translations` VALUES (3940,'zh-hant','pl','Chiński tradycyjny');
INSERT INTO `wp_icl_languages_translations` VALUES (3941,'zh-hant','pt-pt','Chinês (Tradicional)');
INSERT INTO `wp_icl_languages_translations` VALUES (3942,'zh-hant','pt-br','Chinês (Tradicional)');
INSERT INTO `wp_icl_languages_translations` VALUES (3943,'zh-hant','qu','Chinese (Traditional)');
INSERT INTO `wp_icl_languages_translations` VALUES (3944,'zh-hant','ro','Chineza tradiţională');
INSERT INTO `wp_icl_languages_translations` VALUES (3945,'zh-hant','ru','Китайский (традиционный)');
INSERT INTO `wp_icl_languages_translations` VALUES (3946,'zh-hant','sl','Kitajščina (tradicionalna)');
INSERT INTO `wp_icl_languages_translations` VALUES (3947,'zh-hant','so','Chinese (Traditional)');
INSERT INTO `wp_icl_languages_translations` VALUES (3948,'zh-hant','sq','Chinese (Traditional)');
INSERT INTO `wp_icl_languages_translations` VALUES (3949,'zh-hant','sr','Кинески (традиционални)');
INSERT INTO `wp_icl_languages_translations` VALUES (3950,'zh-hant','sv','Traditionell kinesiska');
INSERT INTO `wp_icl_languages_translations` VALUES (3951,'zh-hant','ta','Chinese (Traditional)');
INSERT INTO `wp_icl_languages_translations` VALUES (3952,'zh-hant','th','จีนดั้งเดิม');
INSERT INTO `wp_icl_languages_translations` VALUES (3953,'zh-hant','tr','Klasik Çince');
INSERT INTO `wp_icl_languages_translations` VALUES (3954,'zh-hant','uk','Chinese (Traditional)');
INSERT INTO `wp_icl_languages_translations` VALUES (3955,'zh-hant','ur','Chinese (Traditional)');
INSERT INTO `wp_icl_languages_translations` VALUES (3956,'zh-hant','uz','Chinese (Traditional)');
INSERT INTO `wp_icl_languages_translations` VALUES (3957,'zh-hant','vi','Chinese (Traditional)');
INSERT INTO `wp_icl_languages_translations` VALUES (3958,'zh-hant','yi','Chinese (Traditional)');
INSERT INTO `wp_icl_languages_translations` VALUES (3959,'zh-hant','zh-hans','繁体中文');
INSERT INTO `wp_icl_languages_translations` VALUES (3960,'zh-hant','zu','Chinese (Traditional)');
INSERT INTO `wp_icl_languages_translations` VALUES (3961,'zh-hant','zh-hant','繁體中文');
INSERT INTO `wp_icl_languages_translations` VALUES (3962,'zh-hant','ms','Chinese (Traditional)');
INSERT INTO `wp_icl_languages_translations` VALUES (3963,'zh-hant','gl','Chinese (Traditional)');
INSERT INTO `wp_icl_languages_translations` VALUES (3964,'zh-hant','bn','Chinese (Traditional)');
INSERT INTO `wp_icl_languages_translations` VALUES (3965,'zh-hant','az','Chinese (Traditional)');
INSERT INTO `wp_icl_languages_translations` VALUES (3966,'ms','en','Malay');
INSERT INTO `wp_icl_languages_translations` VALUES (3967,'ms','es','Malayo');
INSERT INTO `wp_icl_languages_translations` VALUES (3968,'ms','de','Malaiisch');
INSERT INTO `wp_icl_languages_translations` VALUES (3969,'ms','fr','Malay');
INSERT INTO `wp_icl_languages_translations` VALUES (3970,'ms','ar','لغة الملايو');
INSERT INTO `wp_icl_languages_translations` VALUES (3971,'ms','bs','Malay');
INSERT INTO `wp_icl_languages_translations` VALUES (3972,'ms','bg','Малайски');
INSERT INTO `wp_icl_languages_translations` VALUES (3973,'ms','ca','Malay');
INSERT INTO `wp_icl_languages_translations` VALUES (3974,'ms','cs','Malajský');
INSERT INTO `wp_icl_languages_translations` VALUES (3975,'ms','sk','Malay');
INSERT INTO `wp_icl_languages_translations` VALUES (3976,'ms','cy','Malay');
INSERT INTO `wp_icl_languages_translations` VALUES (3977,'ms','da','Malay');
INSERT INTO `wp_icl_languages_translations` VALUES (3978,'ms','el','Malay');
INSERT INTO `wp_icl_languages_translations` VALUES (3979,'ms','eo','Malay');
INSERT INTO `wp_icl_languages_translations` VALUES (3980,'ms','et','Malay');
INSERT INTO `wp_icl_languages_translations` VALUES (3981,'ms','eu','Malay');
INSERT INTO `wp_icl_languages_translations` VALUES (3982,'ms','fa','Malay');
INSERT INTO `wp_icl_languages_translations` VALUES (3983,'ms','fi','Malay');
INSERT INTO `wp_icl_languages_translations` VALUES (3984,'ms','ga','Malay');
INSERT INTO `wp_icl_languages_translations` VALUES (3985,'ms','he','מלאית');
INSERT INTO `wp_icl_languages_translations` VALUES (3986,'ms','hi','Malay');
INSERT INTO `wp_icl_languages_translations` VALUES (3987,'ms','hr','Malajski');
INSERT INTO `wp_icl_languages_translations` VALUES (3988,'ms','hu','Malay');
INSERT INTO `wp_icl_languages_translations` VALUES (3989,'ms','hy','Malay');
INSERT INTO `wp_icl_languages_translations` VALUES (3990,'ms','id','Malay');
INSERT INTO `wp_icl_languages_translations` VALUES (3991,'ms','is','Malay');
INSERT INTO `wp_icl_languages_translations` VALUES (3992,'ms','it','Malay');
INSERT INTO `wp_icl_languages_translations` VALUES (3993,'ms','ja','Malay');
INSERT INTO `wp_icl_languages_translations` VALUES (3994,'ms','ko','Malay');
INSERT INTO `wp_icl_languages_translations` VALUES (3995,'ms','ku','Malay');
INSERT INTO `wp_icl_languages_translations` VALUES (3996,'ms','lv','Malay');
INSERT INTO `wp_icl_languages_translations` VALUES (3997,'ms','lt','Malay');
INSERT INTO `wp_icl_languages_translations` VALUES (3998,'ms','mk','Malay');
INSERT INTO `wp_icl_languages_translations` VALUES (3999,'ms','mt','Malay');
INSERT INTO `wp_icl_languages_translations` VALUES (4000,'ms','mn','Malay');
INSERT INTO `wp_icl_languages_translations` VALUES (4001,'ms','ne','Malay');
INSERT INTO `wp_icl_languages_translations` VALUES (4002,'ms','nl','Malay');
INSERT INTO `wp_icl_languages_translations` VALUES (4003,'ms','no','Malay');
INSERT INTO `wp_icl_languages_translations` VALUES (4004,'ms','pa','Malay');
INSERT INTO `wp_icl_languages_translations` VALUES (4005,'ms','pl','Malay');
INSERT INTO `wp_icl_languages_translations` VALUES (4006,'ms','pt-pt','Malaio');
INSERT INTO `wp_icl_languages_translations` VALUES (4007,'ms','pt-br','Malaio');
INSERT INTO `wp_icl_languages_translations` VALUES (4008,'ms','qu','Malay');
INSERT INTO `wp_icl_languages_translations` VALUES (4009,'ms','ro','Malay');
INSERT INTO `wp_icl_languages_translations` VALUES (4010,'ms','ru','Малайский');
INSERT INTO `wp_icl_languages_translations` VALUES (4011,'ms','sl','Malajščina');
INSERT INTO `wp_icl_languages_translations` VALUES (4012,'ms','so','Malay');
INSERT INTO `wp_icl_languages_translations` VALUES (4013,'ms','sq','Malay');
INSERT INTO `wp_icl_languages_translations` VALUES (4014,'ms','sr','малајски');
INSERT INTO `wp_icl_languages_translations` VALUES (4015,'ms','sv','Malay');
INSERT INTO `wp_icl_languages_translations` VALUES (4016,'ms','ta','Malay');
INSERT INTO `wp_icl_languages_translations` VALUES (4017,'ms','th','Malay');
INSERT INTO `wp_icl_languages_translations` VALUES (4018,'ms','tr','Malay');
INSERT INTO `wp_icl_languages_translations` VALUES (4019,'ms','uk','Malay');
INSERT INTO `wp_icl_languages_translations` VALUES (4020,'ms','ur','Malay');
INSERT INTO `wp_icl_languages_translations` VALUES (4021,'ms','uz','Malay');
INSERT INTO `wp_icl_languages_translations` VALUES (4022,'ms','vi','Malay');
INSERT INTO `wp_icl_languages_translations` VALUES (4023,'ms','yi','Malay');
INSERT INTO `wp_icl_languages_translations` VALUES (4024,'ms','zh-hans','Malay');
INSERT INTO `wp_icl_languages_translations` VALUES (4025,'ms','zu','Malay');
INSERT INTO `wp_icl_languages_translations` VALUES (4026,'ms','zh-hant','Malay');
INSERT INTO `wp_icl_languages_translations` VALUES (4027,'ms','ms','Melayu');
INSERT INTO `wp_icl_languages_translations` VALUES (4028,'ms','gl','Malay');
INSERT INTO `wp_icl_languages_translations` VALUES (4029,'ms','bn','Malay');
INSERT INTO `wp_icl_languages_translations` VALUES (4030,'ms','az','Malay');
INSERT INTO `wp_icl_languages_translations` VALUES (4031,'gl','en','Galician');
INSERT INTO `wp_icl_languages_translations` VALUES (4032,'gl','es','Gallego');
INSERT INTO `wp_icl_languages_translations` VALUES (4033,'gl','de','Galicisch');
INSERT INTO `wp_icl_languages_translations` VALUES (4034,'gl','fr','Galicien');
INSERT INTO `wp_icl_languages_translations` VALUES (4035,'gl','ar','Galician');
INSERT INTO `wp_icl_languages_translations` VALUES (4036,'gl','bs','Galician');
INSERT INTO `wp_icl_languages_translations` VALUES (4037,'gl','bg','Galician');
INSERT INTO `wp_icl_languages_translations` VALUES (4038,'gl','ca','Galician');
INSERT INTO `wp_icl_languages_translations` VALUES (4039,'gl','cs','Galician');
INSERT INTO `wp_icl_languages_translations` VALUES (4040,'gl','sk','Galician');
INSERT INTO `wp_icl_languages_translations` VALUES (4041,'gl','cy','Galician');
INSERT INTO `wp_icl_languages_translations` VALUES (4042,'gl','da','Galician');
INSERT INTO `wp_icl_languages_translations` VALUES (4043,'gl','el','Galician');
INSERT INTO `wp_icl_languages_translations` VALUES (4044,'gl','eo','Galician');
INSERT INTO `wp_icl_languages_translations` VALUES (4045,'gl','et','Galician');
INSERT INTO `wp_icl_languages_translations` VALUES (4046,'gl','eu','Galician');
INSERT INTO `wp_icl_languages_translations` VALUES (4047,'gl','fa','Galician');
INSERT INTO `wp_icl_languages_translations` VALUES (4048,'gl','fi','Galician');
INSERT INTO `wp_icl_languages_translations` VALUES (4049,'gl','ga','Galician');
INSERT INTO `wp_icl_languages_translations` VALUES (4050,'gl','he','Galician');
INSERT INTO `wp_icl_languages_translations` VALUES (4051,'gl','hi','Galician');
INSERT INTO `wp_icl_languages_translations` VALUES (4052,'gl','hr','Galician');
INSERT INTO `wp_icl_languages_translations` VALUES (4053,'gl','hu','Galician');
INSERT INTO `wp_icl_languages_translations` VALUES (4054,'gl','hy','Galician');
INSERT INTO `wp_icl_languages_translations` VALUES (4055,'gl','id','Galician');
INSERT INTO `wp_icl_languages_translations` VALUES (4056,'gl','is','Galician');
INSERT INTO `wp_icl_languages_translations` VALUES (4057,'gl','it','Gallego');
INSERT INTO `wp_icl_languages_translations` VALUES (4058,'gl','ja','Galician');
INSERT INTO `wp_icl_languages_translations` VALUES (4059,'gl','ko','Galician');
INSERT INTO `wp_icl_languages_translations` VALUES (4060,'gl','ku','Galician');
INSERT INTO `wp_icl_languages_translations` VALUES (4061,'gl','lv','Galician');
INSERT INTO `wp_icl_languages_translations` VALUES (4062,'gl','lt','Galician');
INSERT INTO `wp_icl_languages_translations` VALUES (4063,'gl','mk','Galician');
INSERT INTO `wp_icl_languages_translations` VALUES (4064,'gl','mt','Galician');
INSERT INTO `wp_icl_languages_translations` VALUES (4065,'gl','mn','Galician');
INSERT INTO `wp_icl_languages_translations` VALUES (4066,'gl','ne','Galician');
INSERT INTO `wp_icl_languages_translations` VALUES (4067,'gl','nl','Galician');
INSERT INTO `wp_icl_languages_translations` VALUES (4068,'gl','no','Galician');
INSERT INTO `wp_icl_languages_translations` VALUES (4069,'gl','pa','Galician');
INSERT INTO `wp_icl_languages_translations` VALUES (4070,'gl','pl','Galician');
INSERT INTO `wp_icl_languages_translations` VALUES (4071,'gl','pt-pt','Galego');
INSERT INTO `wp_icl_languages_translations` VALUES (4072,'gl','pt-br','Galego');
INSERT INTO `wp_icl_languages_translations` VALUES (4073,'gl','qu','Galician');
INSERT INTO `wp_icl_languages_translations` VALUES (4074,'gl','ro','Galician');
INSERT INTO `wp_icl_languages_translations` VALUES (4075,'gl','ru','Галисийский');
INSERT INTO `wp_icl_languages_translations` VALUES (4076,'gl','sl','Galician');
INSERT INTO `wp_icl_languages_translations` VALUES (4077,'gl','so','Galician');
INSERT INTO `wp_icl_languages_translations` VALUES (4078,'gl','sq','Galician');
INSERT INTO `wp_icl_languages_translations` VALUES (4079,'gl','sr','Galician');
INSERT INTO `wp_icl_languages_translations` VALUES (4080,'gl','sv','Galician');
INSERT INTO `wp_icl_languages_translations` VALUES (4081,'gl','ta','Galician');
INSERT INTO `wp_icl_languages_translations` VALUES (4082,'gl','th','Galician');
INSERT INTO `wp_icl_languages_translations` VALUES (4083,'gl','tr','Galician');
INSERT INTO `wp_icl_languages_translations` VALUES (4084,'gl','uk','Galician');
INSERT INTO `wp_icl_languages_translations` VALUES (4085,'gl','ur','Galician');
INSERT INTO `wp_icl_languages_translations` VALUES (4086,'gl','uz','Galician');
INSERT INTO `wp_icl_languages_translations` VALUES (4087,'gl','vi','Galician');
INSERT INTO `wp_icl_languages_translations` VALUES (4088,'gl','yi','Galician');
INSERT INTO `wp_icl_languages_translations` VALUES (4089,'gl','zh-hans','Galician');
INSERT INTO `wp_icl_languages_translations` VALUES (4090,'gl','zu','Galician');
INSERT INTO `wp_icl_languages_translations` VALUES (4091,'gl','zh-hant','Galician');
INSERT INTO `wp_icl_languages_translations` VALUES (4092,'gl','ms','Galician');
INSERT INTO `wp_icl_languages_translations` VALUES (4093,'gl','gl','Galego');
INSERT INTO `wp_icl_languages_translations` VALUES (4094,'gl','bn','Galician');
INSERT INTO `wp_icl_languages_translations` VALUES (4095,'gl','az','Galician');
INSERT INTO `wp_icl_languages_translations` VALUES (4096,'bn','en','Bengali');
INSERT INTO `wp_icl_languages_translations` VALUES (4097,'bn','es','Bengalí');
INSERT INTO `wp_icl_languages_translations` VALUES (4098,'bn','de','Bengalisch');
INSERT INTO `wp_icl_languages_translations` VALUES (4099,'bn','fr','Bengali');
INSERT INTO `wp_icl_languages_translations` VALUES (4100,'bn','ar','Bengali');
INSERT INTO `wp_icl_languages_translations` VALUES (4101,'bn','bs','Bengali');
INSERT INTO `wp_icl_languages_translations` VALUES (4102,'bn','bg','Bengali');
INSERT INTO `wp_icl_languages_translations` VALUES (4103,'bn','ca','Bengali');
INSERT INTO `wp_icl_languages_translations` VALUES (4104,'bn','cs','Bengali');
INSERT INTO `wp_icl_languages_translations` VALUES (4105,'bn','sk','Bengali');
INSERT INTO `wp_icl_languages_translations` VALUES (4106,'bn','cy','Bengali');
INSERT INTO `wp_icl_languages_translations` VALUES (4107,'bn','da','Bengali');
INSERT INTO `wp_icl_languages_translations` VALUES (4108,'bn','el','Bengali');
INSERT INTO `wp_icl_languages_translations` VALUES (4109,'bn','eo','Bengali');
INSERT INTO `wp_icl_languages_translations` VALUES (4110,'bn','et','Bengali');
INSERT INTO `wp_icl_languages_translations` VALUES (4111,'bn','eu','Bengali');
INSERT INTO `wp_icl_languages_translations` VALUES (4112,'bn','fa','Bengali');
INSERT INTO `wp_icl_languages_translations` VALUES (4113,'bn','fi','Bengali');
INSERT INTO `wp_icl_languages_translations` VALUES (4114,'bn','ga','Bengali');
INSERT INTO `wp_icl_languages_translations` VALUES (4115,'bn','he','Bengali');
INSERT INTO `wp_icl_languages_translations` VALUES (4116,'bn','hi','Bengali');
INSERT INTO `wp_icl_languages_translations` VALUES (4117,'bn','hr','Bengali');
INSERT INTO `wp_icl_languages_translations` VALUES (4118,'bn','hu','Bengali');
INSERT INTO `wp_icl_languages_translations` VALUES (4119,'bn','hy','Bengali');
INSERT INTO `wp_icl_languages_translations` VALUES (4120,'bn','id','Bengali');
INSERT INTO `wp_icl_languages_translations` VALUES (4121,'bn','is','Bengali');
INSERT INTO `wp_icl_languages_translations` VALUES (4122,'bn','it','Bengalese');
INSERT INTO `wp_icl_languages_translations` VALUES (4123,'bn','ja','Bengali');
INSERT INTO `wp_icl_languages_translations` VALUES (4124,'bn','ko','Bengali');
INSERT INTO `wp_icl_languages_translations` VALUES (4125,'bn','ku','Bengali');
INSERT INTO `wp_icl_languages_translations` VALUES (4126,'bn','lv','Bengali');
INSERT INTO `wp_icl_languages_translations` VALUES (4127,'bn','lt','Bengali');
INSERT INTO `wp_icl_languages_translations` VALUES (4128,'bn','mk','Bengali');
INSERT INTO `wp_icl_languages_translations` VALUES (4129,'bn','mt','Bengali');
INSERT INTO `wp_icl_languages_translations` VALUES (4130,'bn','mn','Bengali');
INSERT INTO `wp_icl_languages_translations` VALUES (4131,'bn','ne','Bengali');
INSERT INTO `wp_icl_languages_translations` VALUES (4132,'bn','nl','Bengali');
INSERT INTO `wp_icl_languages_translations` VALUES (4133,'bn','no','Bengali');
INSERT INTO `wp_icl_languages_translations` VALUES (4134,'bn','pa','Bengali');
INSERT INTO `wp_icl_languages_translations` VALUES (4135,'bn','pl','Bengali');
INSERT INTO `wp_icl_languages_translations` VALUES (4136,'bn','pt-pt','Bengalês');
INSERT INTO `wp_icl_languages_translations` VALUES (4137,'bn','pt-br','Bengalês');
INSERT INTO `wp_icl_languages_translations` VALUES (4138,'bn','qu','Bengali');
INSERT INTO `wp_icl_languages_translations` VALUES (4139,'bn','ro','Bengali');
INSERT INTO `wp_icl_languages_translations` VALUES (4140,'bn','ru','Бенгальский');
INSERT INTO `wp_icl_languages_translations` VALUES (4141,'bn','sl','Bengali');
INSERT INTO `wp_icl_languages_translations` VALUES (4142,'bn','so','Bengali');
INSERT INTO `wp_icl_languages_translations` VALUES (4143,'bn','sq','Bengali');
INSERT INTO `wp_icl_languages_translations` VALUES (4144,'bn','sr','Bengali');
INSERT INTO `wp_icl_languages_translations` VALUES (4145,'bn','sv','Bengali');
INSERT INTO `wp_icl_languages_translations` VALUES (4146,'bn','ta','Bengali');
INSERT INTO `wp_icl_languages_translations` VALUES (4147,'bn','th','Bengali');
INSERT INTO `wp_icl_languages_translations` VALUES (4148,'bn','tr','Bengali');
INSERT INTO `wp_icl_languages_translations` VALUES (4149,'bn','uk','Bengali');
INSERT INTO `wp_icl_languages_translations` VALUES (4150,'bn','ur','Bengali');
INSERT INTO `wp_icl_languages_translations` VALUES (4151,'bn','uz','Bengali');
INSERT INTO `wp_icl_languages_translations` VALUES (4152,'bn','vi','Bengali');
INSERT INTO `wp_icl_languages_translations` VALUES (4153,'bn','yi','Bengali');
INSERT INTO `wp_icl_languages_translations` VALUES (4154,'bn','zh-hans','Bengali');
INSERT INTO `wp_icl_languages_translations` VALUES (4155,'bn','zu','Bengali');
INSERT INTO `wp_icl_languages_translations` VALUES (4156,'bn','zh-hant','Bengali');
INSERT INTO `wp_icl_languages_translations` VALUES (4157,'bn','ms','Bengali');
INSERT INTO `wp_icl_languages_translations` VALUES (4158,'bn','gl','Bengali');
INSERT INTO `wp_icl_languages_translations` VALUES (4159,'bn','bn','বাংলাদেশ');
INSERT INTO `wp_icl_languages_translations` VALUES (4160,'bn','az','Bengali');
INSERT INTO `wp_icl_languages_translations` VALUES (4161,'az','en','Azerbaijani');
INSERT INTO `wp_icl_languages_translations` VALUES (4162,'az','es','Azerí');
INSERT INTO `wp_icl_languages_translations` VALUES (4163,'az','de','Aserbeidschanisch');
INSERT INTO `wp_icl_languages_translations` VALUES (4164,'az','fr','Azéri');
INSERT INTO `wp_icl_languages_translations` VALUES (4165,'az','ar','الأذربيجانية');
INSERT INTO `wp_icl_languages_translations` VALUES (4166,'az','bs','Azerbaijani');
INSERT INTO `wp_icl_languages_translations` VALUES (4167,'az','bg','Azerbaijani');
INSERT INTO `wp_icl_languages_translations` VALUES (4168,'az','ca','Azerbaijani');
INSERT INTO `wp_icl_languages_translations` VALUES (4169,'az','cs','Azerbaijani');
INSERT INTO `wp_icl_languages_translations` VALUES (4170,'az','sk','Azerbaijani');
INSERT INTO `wp_icl_languages_translations` VALUES (4171,'az','cy','Azerbaijani');
INSERT INTO `wp_icl_languages_translations` VALUES (4172,'az','da','Azerbaijani');
INSERT INTO `wp_icl_languages_translations` VALUES (4173,'az','el','Azerbaijani');
INSERT INTO `wp_icl_languages_translations` VALUES (4174,'az','eo','Azerbaijani');
INSERT INTO `wp_icl_languages_translations` VALUES (4175,'az','et','Azerbaijani');
INSERT INTO `wp_icl_languages_translations` VALUES (4176,'az','eu','Azerbaijani');
INSERT INTO `wp_icl_languages_translations` VALUES (4177,'az','fa','Azerbaijani');
INSERT INTO `wp_icl_languages_translations` VALUES (4178,'az','fi','Azerbaijani');
INSERT INTO `wp_icl_languages_translations` VALUES (4179,'az','ga','Azerbaijani');
INSERT INTO `wp_icl_languages_translations` VALUES (4180,'az','he','אזרביג\'נית');
INSERT INTO `wp_icl_languages_translations` VALUES (4181,'az','hi','Azerbaijani');
INSERT INTO `wp_icl_languages_translations` VALUES (4182,'az','hr','Azerbaijani');
INSERT INTO `wp_icl_languages_translations` VALUES (4183,'az','hu','Azerbaijani');
INSERT INTO `wp_icl_languages_translations` VALUES (4184,'az','hy','Azerbaijani');
INSERT INTO `wp_icl_languages_translations` VALUES (4185,'az','id','Azerbaijani');
INSERT INTO `wp_icl_languages_translations` VALUES (4186,'az','is','Azerbaijani');
INSERT INTO `wp_icl_languages_translations` VALUES (4187,'az','it','Azerbaigiano');
INSERT INTO `wp_icl_languages_translations` VALUES (4188,'az','ja','アゼルバイジャン語');
INSERT INTO `wp_icl_languages_translations` VALUES (4189,'az','ko','Azerbaijani');
INSERT INTO `wp_icl_languages_translations` VALUES (4190,'az','ku','Azerbaijani');
INSERT INTO `wp_icl_languages_translations` VALUES (4191,'az','lv','Azerbaijani');
INSERT INTO `wp_icl_languages_translations` VALUES (4192,'az','lt','Azerbaijani');
INSERT INTO `wp_icl_languages_translations` VALUES (4193,'az','mk','Azerbaijani');
INSERT INTO `wp_icl_languages_translations` VALUES (4194,'az','mt','Azerbaijani');
INSERT INTO `wp_icl_languages_translations` VALUES (4195,'az','mn','Azerbaijani');
INSERT INTO `wp_icl_languages_translations` VALUES (4196,'az','ne','Azerbaijani');
INSERT INTO `wp_icl_languages_translations` VALUES (4197,'az','nl','Azerbaijani');
INSERT INTO `wp_icl_languages_translations` VALUES (4198,'az','no','Azerbaijani');
INSERT INTO `wp_icl_languages_translations` VALUES (4199,'az','pa','Azerbaijani');
INSERT INTO `wp_icl_languages_translations` VALUES (4200,'az','pl','Azerski');
INSERT INTO `wp_icl_languages_translations` VALUES (4201,'az','pt-pt','Azerbaijano');
INSERT INTO `wp_icl_languages_translations` VALUES (4202,'az','pt-br','Azerbaijano');
INSERT INTO `wp_icl_languages_translations` VALUES (4203,'az','qu','Azerbaijani');
INSERT INTO `wp_icl_languages_translations` VALUES (4204,'az','ro','Azerbaijani');
INSERT INTO `wp_icl_languages_translations` VALUES (4205,'az','ru','Азербайджанский');
INSERT INTO `wp_icl_languages_translations` VALUES (4206,'az','sl','Azerbaijani');
INSERT INTO `wp_icl_languages_translations` VALUES (4207,'az','so','Azerbaijani');
INSERT INTO `wp_icl_languages_translations` VALUES (4208,'az','sq','Azerbaijani');
INSERT INTO `wp_icl_languages_translations` VALUES (4209,'az','sr','Azerbaijani');
INSERT INTO `wp_icl_languages_translations` VALUES (4210,'az','sv','Azerbaijani');
INSERT INTO `wp_icl_languages_translations` VALUES (4211,'az','ta','Azerbaijani');
INSERT INTO `wp_icl_languages_translations` VALUES (4212,'az','th','Azerbaijani');
INSERT INTO `wp_icl_languages_translations` VALUES (4213,'az','tr','Azerbaijani');
INSERT INTO `wp_icl_languages_translations` VALUES (4214,'az','uk','Azerbaijani');
INSERT INTO `wp_icl_languages_translations` VALUES (4215,'az','ur','Azerbaijani');
INSERT INTO `wp_icl_languages_translations` VALUES (4216,'az','uz','Azerbaijani');
INSERT INTO `wp_icl_languages_translations` VALUES (4217,'az','vi','Azerbaijani');
INSERT INTO `wp_icl_languages_translations` VALUES (4218,'az','yi','Azerbaijani');
INSERT INTO `wp_icl_languages_translations` VALUES (4219,'az','zh-hans','阿塞拜疆语');
INSERT INTO `wp_icl_languages_translations` VALUES (4220,'az','zu','Azerbaijani');
INSERT INTO `wp_icl_languages_translations` VALUES (4221,'az','zh-hant','Azerbaijani');
INSERT INTO `wp_icl_languages_translations` VALUES (4222,'az','ms','Azerbaijani');
INSERT INTO `wp_icl_languages_translations` VALUES (4223,'az','gl','Azerbaijani');
INSERT INTO `wp_icl_languages_translations` VALUES (4224,'az','bn','Azerbaijani');
INSERT INTO `wp_icl_languages_translations` VALUES (4225,'az','az','Azərbaycan');
/*!40000 ALTER TABLE `wp_icl_languages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_icl_locale_map`
--

DROP TABLE IF EXISTS `wp_icl_locale_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_icl_locale_map` (
  `code` varchar(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `locale` varchar(35) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`code`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_icl_locale_map`
--

LOCK TABLES `wp_icl_locale_map` WRITE;
/*!40000 ALTER TABLE `wp_icl_locale_map` DISABLE KEYS */;
INSERT INTO `wp_icl_locale_map` VALUES ('ru','ru_RU');
INSERT INTO `wp_icl_locale_map` VALUES ('uk','uk');
/*!40000 ALTER TABLE `wp_icl_locale_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_icl_message_status`
--

DROP TABLE IF EXISTS `wp_icl_message_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_icl_message_status` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `rid` bigint(20) unsigned NOT NULL,
  `object_id` bigint(20) unsigned NOT NULL,
  `from_language` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `to_language` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `md5` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `object_type` varchar(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` smallint(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `rid` (`rid`),
  KEY `object_id` (`object_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_icl_message_status`
--

LOCK TABLES `wp_icl_message_status` WRITE;
/*!40000 ALTER TABLE `wp_icl_message_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_icl_message_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_icl_mo_files_domains`
--

DROP TABLE IF EXISTS `wp_icl_mo_files_domains`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_icl_mo_files_domains` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_path` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `file_path_md5` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `domain` varchar(45) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'not_imported',
  `num_of_strings` int(11) NOT NULL DEFAULT '0',
  `last_modified` int(11) NOT NULL,
  `component_type` enum('plugin','theme','other') COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'other',
  `component_id` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `file_path_md5_UNIQUE` (`file_path_md5`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_icl_mo_files_domains`
--

LOCK TABLES `wp_icl_mo_files_domains` WRITE;
/*!40000 ALTER TABLE `wp_icl_mo_files_domains` DISABLE KEYS */;
INSERT INTO `wp_icl_mo_files_domains` VALUES (1,'wp-content\\plugins\\wpml-string-translation\\locale\\wpml-string-translation-ru_RU.mo','a959a5e1ae79fddf3574217ea728d648','wpml-string-translation','not_imported',0,1652690664,'plugin','wpml-string-translation/plugin.php');
INSERT INTO `wp_icl_mo_files_domains` VALUES (2,'wp-content\\plugins\\wpml-string-translation\\locale\\wpml-string-translation-uk.mo','5c28bc87c58879252ac76de43bfe2f62','wpml-string-translation','not_imported',0,1652690664,'plugin','wpml-string-translation/plugin.php');
INSERT INTO `wp_icl_mo_files_domains` VALUES (3,'wp-content\\languages\\ru_RU.mo','dc5d5db874a2d0cea96d493472002fab','default','not_imported',0,1652690688,'other','');
INSERT INTO `wp_icl_mo_files_domains` VALUES (4,'wp-content\\languages\\uk.mo','69c11082b003f11ab04a525b6a19f311','default','not_imported',0,1652690690,'other','');
INSERT INTO `wp_icl_mo_files_domains` VALUES (5,'wp-content\\languages\\admin-ru_RU.mo','be5577a5242fbbd3053ffa7fd4a477c6','default','not_imported',0,1652690688,'other','');
INSERT INTO `wp_icl_mo_files_domains` VALUES (6,'wp-content\\languages\\admin-uk.mo','d6f712986bb8caae218c76748f9970aa','default','not_imported',0,1652690690,'other','');
INSERT INTO `wp_icl_mo_files_domains` VALUES (7,'wp-content\\plugins\\advanced-custom-fields-pro\\lang\\acf-ru_RU.mo','61647b9290e0721f6fc4b5cd833a6b7a','acf','not_imported',0,1652689996,'plugin','advanced-custom-fields-pro/acf.php');
INSERT INTO `wp_icl_mo_files_domains` VALUES (8,'wp-content\\plugins\\advanced-custom-fields-pro\\lang\\acf-uk.mo','94d9e197b2b09684ab1d432211364382','acf','not_imported',0,1652689996,'plugin','advanced-custom-fields-pro/acf.php');
INSERT INTO `wp_icl_mo_files_domains` VALUES (9,'wp-content\\plugins\\sitepress-multilingual-cms\\vendor\\otgs\\installer\\locale\\installer-ru_RU.mo','bd92d1150845a0db0e205cea957b5b8f','installer','not_imported',0,1652690629,'plugin','sitepress-multilingual-cms/sitepress.php');
INSERT INTO `wp_icl_mo_files_domains` VALUES (10,'wp-content\\plugins\\sitepress-multilingual-cms\\vendor\\otgs\\installer\\locale\\installer-uk.mo','30ae71df1882078e74b7af480d29209a','installer','not_imported',0,1652690629,'plugin','sitepress-multilingual-cms/sitepress.php');
INSERT INTO `wp_icl_mo_files_domains` VALUES (11,'wp-content\\languages\\ru_RU-77fdfadaf2e1ca3a027d1956b910bc50.json','2ea70f553c46ff9a8d746d66dd829374','default-common','not_imported',0,1652690688,'other','');
INSERT INTO `wp_icl_mo_files_domains` VALUES (12,'wp-content\\languages\\uk-77fdfadaf2e1ca3a027d1956b910bc50.json','fd1c102292e9c50ca9eb8ea70e0f7ef7','default-common','not_imported',0,1652690690,'other','');
INSERT INTO `wp_icl_mo_files_domains` VALUES (13,'wp-content\\languages\\ru_RU-93882e8f9976382d7f724ac595ed7151.json','7d63220f4ad410708b02fdf35ab36ff2','default-wp-auth-check','not_imported',0,1652690688,'other','');
INSERT INTO `wp_icl_mo_files_domains` VALUES (14,'wp-content\\languages\\uk-93882e8f9976382d7f724ac595ed7151.json','5e227880bb21dc63329e397155ebdd73','default-wp-auth-check','not_imported',0,1652690690,'other','');
INSERT INTO `wp_icl_mo_files_domains` VALUES (15,'wp-content\\languages\\continents-cities-ru_RU.mo','6a1d9b91174d3d4f437182050c4f5704','continents-cities','not_imported',0,1652690688,'other','');
INSERT INTO `wp_icl_mo_files_domains` VALUES (16,'wp-content\\languages\\continents-cities-uk.mo','6a12019ccad62150e03a572d2a257856','continents-cities','not_imported',0,1652690690,'other','');
INSERT INTO `wp_icl_mo_files_domains` VALUES (17,'wp-content\\languages\\ru_RU-9c3519f4870fac83dc0dbf18cb6bd4c4.json','fbe370ff57e6956334239350fb34b46c','default-wp-color-picker','not_imported',0,1652690688,'other','');
INSERT INTO `wp_icl_mo_files_domains` VALUES (18,'wp-content\\languages\\uk-9c3519f4870fac83dc0dbf18cb6bd4c4.json','f507cfbaee409bda8765d81b9c1b472a','default-wp-color-picker','not_imported',0,1652690690,'other','');
INSERT INTO `wp_icl_mo_files_domains` VALUES (19,'wp-content\\languages\\ru_RU-bf23b24175490c2e46aaf92ff6a0c70f.json','81f9742baa182d41d13d47f6341facc9','default-wp-pointer','not_imported',0,1652690688,'other','');
INSERT INTO `wp_icl_mo_files_domains` VALUES (20,'wp-content\\languages\\uk-bf23b24175490c2e46aaf92ff6a0c70f.json','c09215ebc7c32d633ef8a2b5fa57946e','default-wp-pointer','not_imported',0,1652690690,'other','');
INSERT INTO `wp_icl_mo_files_domains` VALUES (21,'wp-content\\languages\\ru_RU-320f4ad9792aaa6dedb1e71cbdf85d57.json','dd3cec18ada40eec3d4e6f56979073a8','default-wp-a11y','not_imported',0,1652690688,'other','');
INSERT INTO `wp_icl_mo_files_domains` VALUES (22,'wp-content\\languages\\uk-320f4ad9792aaa6dedb1e71cbdf85d57.json','7035f735ce073bdcdb0ed5184e40d3a1','default-wp-a11y','not_imported',0,1652690690,'other','');
INSERT INTO `wp_icl_mo_files_domains` VALUES (23,'wp-content\\languages\\ru_RU-7d5ca435e60d92f024d46c9257aaa0f7.json','3c734f2990fe49da7422ffab3850b88c','default-tags-suggest','not_imported',0,1652690688,'other','');
INSERT INTO `wp_icl_mo_files_domains` VALUES (24,'wp-content\\languages\\uk-7d5ca435e60d92f024d46c9257aaa0f7.json','3ccc43f2902d2a69225b61e0535e14cb','default-tags-suggest','not_imported',0,1652690690,'other','');
INSERT INTO `wp_icl_mo_files_domains` VALUES (25,'wp-content\\languages\\ru_RU-9b256ea9cd54df92095e04c76758ceb0.json','77281bcfbee3d59affb4ca3f17aafcd8','default-inline-edit-post','not_imported',0,1652690688,'other','');
INSERT INTO `wp_icl_mo_files_domains` VALUES (26,'wp-content\\languages\\uk-9b256ea9cd54df92095e04c76758ceb0.json','bb4e3362e0ab6b0f937739cbfbc61fab','default-inline-edit-post','not_imported',0,1652690690,'other','');
INSERT INTO `wp_icl_mo_files_domains` VALUES (27,'wp-content\\languages\\ru_RU-0eebe503220d4a00341eb011b92769b4.json','97994c514c7a7654eb3679de46f4abbd','default-password-strength-meter','not_imported',0,1652690688,'other','');
INSERT INTO `wp_icl_mo_files_domains` VALUES (28,'wp-content\\languages\\uk-0eebe503220d4a00341eb011b92769b4.json','3103877c393136601c837e1b54b8bbc6','default-password-strength-meter','not_imported',0,1652690690,'other','');
INSERT INTO `wp_icl_mo_files_domains` VALUES (29,'wp-content\\languages\\ru_RU-81d6f084cb273e02e15b01bd9ece87f7.json','2ee38f32fd46ad2a00a2ab41e36ed7d2','default-user-profile','not_imported',0,1652690688,'other','');
INSERT INTO `wp_icl_mo_files_domains` VALUES (30,'wp-content\\languages\\uk-81d6f084cb273e02e15b01bd9ece87f7.json','5724f8e56302a4546ab6129d49bad392','default-user-profile','not_imported',0,1652690690,'other','');
INSERT INTO `wp_icl_mo_files_domains` VALUES (31,'wp-content\\languages\\ru_RU-4a38fe1c0c45989e44682ba6109d9f46.json','85ac697cba81396c310e103938a2c709','default-site-health','not_imported',0,1652690688,'other','');
INSERT INTO `wp_icl_mo_files_domains` VALUES (32,'wp-content\\languages\\uk-4a38fe1c0c45989e44682ba6109d9f46.json','3b71a9de94e89c1701fb6a47586c14dc','default-site-health','not_imported',0,1652690690,'other','');
INSERT INTO `wp_icl_mo_files_domains` VALUES (33,'wp-content\\languages\\ru_RU-6025add6bde16aaeb12787d250f9b414.json','626301b926b0ac46ec8909f183c02caa','default-admin-comments','not_imported',0,1652690688,'other','');
INSERT INTO `wp_icl_mo_files_domains` VALUES (34,'wp-content\\languages\\uk-6025add6bde16aaeb12787d250f9b414.json','52c2bd1640a2e0e482fae64c98850bac','default-admin-comments','not_imported',0,1652690690,'other','');
INSERT INTO `wp_icl_mo_files_domains` VALUES (35,'wp-content\\languages\\ru_RU-50278328b502f4eb3f2b8b7ab49324a1.json','597586fae9fef896cd8aa9bfe4cd08ed','default-postbox','not_imported',0,1652690688,'other','');
INSERT INTO `wp_icl_mo_files_domains` VALUES (36,'wp-content\\languages\\uk-50278328b502f4eb3f2b8b7ab49324a1.json','bf0999aa09cf61480b65627a571404a3','default-postbox','not_imported',0,1652690690,'other','');
INSERT INTO `wp_icl_mo_files_domains` VALUES (37,'wp-content\\languages\\ru_RU-e2e4c4b80f3adf2c70b431bfdb1b4872.json','2bb9dbc6f58090b6a7d5489b25efce86','default-dashboard','not_imported',0,1652690688,'other','');
INSERT INTO `wp_icl_mo_files_domains` VALUES (38,'wp-content\\languages\\uk-e2e4c4b80f3adf2c70b431bfdb1b4872.json','b91ececb85727fe6ac22883c7bc8c762','default-dashboard','not_imported',0,1652690690,'other','');
INSERT INTO `wp_icl_mo_files_domains` VALUES (39,'wp-content\\languages\\ru_RU-7436b7ee9e4f11ac0d618d8cc886eb66.json','eb9aa27a0ac4a2f9b4c15c98c0564469','default-plugin-install','not_imported',0,1652690688,'other','');
INSERT INTO `wp_icl_mo_files_domains` VALUES (40,'wp-content\\languages\\uk-7436b7ee9e4f11ac0d618d8cc886eb66.json','37bc0ab00206dbf324be277e3f37e607','default-plugin-install','not_imported',0,1652690690,'other','');
INSERT INTO `wp_icl_mo_files_domains` VALUES (41,'wp-content\\languages\\ru_RU-2b390f85a3048c5b4255fb45960b6514.json','273b61828a5c7defb07b00494d616aa9','default-updates','not_imported',0,1652690688,'other','');
INSERT INTO `wp_icl_mo_files_domains` VALUES (42,'wp-content\\languages\\uk-2b390f85a3048c5b4255fb45960b6514.json','e37c163c02835ee6e322bb40a8e16c08','default-updates','not_imported',0,1652690690,'other','');
INSERT INTO `wp_icl_mo_files_domains` VALUES (43,'wp-content\\languages\\ru_RU-9d47a87c240c1d10701cd6a02b28aa1b.json','d09aa6e22c1a00a7f855b32fe0c6fce2','default-tags-box','not_imported',0,1652690688,'other','');
INSERT INTO `wp_icl_mo_files_domains` VALUES (44,'wp-content\\languages\\uk-9d47a87c240c1d10701cd6a02b28aa1b.json','8e8876e391491a7fefc2c1dbfddedece','default-tags-box','not_imported',0,1652690690,'other','');
INSERT INTO `wp_icl_mo_files_domains` VALUES (45,'wp-content\\languages\\ru_RU-569e85ef168299eb8c8f24d8ef8c8a78.json','d0755b394fe0b9ef7de346be0e150918','default-post','not_imported',0,1652690688,'other','');
INSERT INTO `wp_icl_mo_files_domains` VALUES (46,'wp-content\\languages\\uk-569e85ef168299eb8c8f24d8ef8c8a78.json','52ce2c34c1dd8e5724734142b29f61b5','default-post','not_imported',0,1652690690,'other','');
/*!40000 ALTER TABLE `wp_icl_mo_files_domains` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_icl_node`
--

DROP TABLE IF EXISTS `wp_icl_node`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_icl_node` (
  `nid` bigint(20) NOT NULL,
  `md5` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `links_fixed` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`nid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_icl_node`
--

LOCK TABLES `wp_icl_node` WRITE;
/*!40000 ALTER TABLE `wp_icl_node` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_icl_node` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_icl_reminders`
--

DROP TABLE IF EXISTS `wp_icl_reminders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_icl_reminders` (
  `id` bigint(20) NOT NULL,
  `message` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `url` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `can_delete` tinyint(4) NOT NULL,
  `show` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_icl_reminders`
--

LOCK TABLES `wp_icl_reminders` WRITE;
/*!40000 ALTER TABLE `wp_icl_reminders` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_icl_reminders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_icl_string_batches`
--

DROP TABLE IF EXISTS `wp_icl_string_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_icl_string_batches` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `string_id` bigint(20) unsigned NOT NULL,
  `batch_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_icl_string_batches`
--

LOCK TABLES `wp_icl_string_batches` WRITE;
/*!40000 ALTER TABLE `wp_icl_string_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_icl_string_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_icl_string_packages`
--

DROP TABLE IF EXISTS `wp_icl_string_packages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_icl_string_packages` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `kind_slug` varchar(160) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `kind` varchar(160) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` varchar(160) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `title` varchar(160) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `edit_link` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `view_link` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `word_count` varchar(2000) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_icl_string_packages`
--

LOCK TABLES `wp_icl_string_packages` WRITE;
/*!40000 ALTER TABLE `wp_icl_string_packages` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_icl_string_packages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_icl_string_pages`
--

DROP TABLE IF EXISTS `wp_icl_string_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_icl_string_pages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `string_id` bigint(20) unsigned NOT NULL,
  `url_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `string_to_url_id` (`url_id`),
  KEY `string_id` (`string_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_icl_string_pages`
--

LOCK TABLES `wp_icl_string_pages` WRITE;
/*!40000 ALTER TABLE `wp_icl_string_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_icl_string_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_icl_string_positions`
--

DROP TABLE IF EXISTS `wp_icl_string_positions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_icl_string_positions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `string_id` bigint(20) NOT NULL,
  `kind` tinyint(4) DEFAULT NULL,
  `position_in_page` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `string_id` (`string_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_icl_string_positions`
--

LOCK TABLES `wp_icl_string_positions` WRITE;
/*!40000 ALTER TABLE `wp_icl_string_positions` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_icl_string_positions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_icl_string_status`
--

DROP TABLE IF EXISTS `wp_icl_string_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_icl_string_status` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `rid` bigint(20) NOT NULL,
  `string_translation_id` bigint(20) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `md5` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `string_translation_id` (`string_translation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_icl_string_status`
--

LOCK TABLES `wp_icl_string_status` WRITE;
/*!40000 ALTER TABLE `wp_icl_string_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_icl_string_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_icl_string_translations`
--

DROP TABLE IF EXISTS `wp_icl_string_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_icl_string_translations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `string_id` bigint(20) unsigned NOT NULL,
  `language` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_520_ci,
  `mo_string` longtext COLLATE utf8mb4_unicode_520_ci,
  `translator_id` bigint(20) unsigned DEFAULT NULL,
  `translation_service` varchar(16) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `batch_id` int(11) NOT NULL DEFAULT '0',
  `translation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `string_language` (`string_id`,`language`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_icl_string_translations`
--

LOCK TABLES `wp_icl_string_translations` WRITE;
/*!40000 ALTER TABLE `wp_icl_string_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_icl_string_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_icl_string_urls`
--

DROP TABLE IF EXISTS `wp_icl_string_urls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_icl_string_urls` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `language` varchar(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `string_string_lang_url` (`language`,`url`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_icl_string_urls`
--

LOCK TABLES `wp_icl_string_urls` WRITE;
/*!40000 ALTER TABLE `wp_icl_string_urls` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_icl_string_urls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_icl_strings`
--

DROP TABLE IF EXISTS `wp_icl_strings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_icl_strings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `language` varchar(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `context` varchar(160) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` varchar(160) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `string_package_id` bigint(20) unsigned DEFAULT NULL,
  `location` bigint(20) unsigned DEFAULT NULL,
  `wrap_tag` varchar(16) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'LINE',
  `title` varchar(160) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `gettext_context` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `domain_name_context_md5` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `translation_priority` varchar(160) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `word_count` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_domain_name_context_md5` (`domain_name_context_md5`),
  KEY `language_context` (`language`,`context`),
  KEY `icl_strings_name` (`name`),
  KEY `icl_strings_translation_priority` (`translation_priority`),
  KEY `context` (`context`),
  KEY `string_package_id` (`string_package_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_icl_strings`
--

LOCK TABLES `wp_icl_strings` WRITE;
/*!40000 ALTER TABLE `wp_icl_strings` DISABLE KEYS */;
INSERT INTO `wp_icl_strings` VALUES (1,'uk','WP','Blog Title','Libra',NULL,NULL,'','LINE',NULL,0,'','5ff0887b4c486c0329311e8d30610d58','',NULL);
INSERT INTO `wp_icl_strings` VALUES (2,'uk','WP','Tagline','Just another WordPress site',NULL,NULL,'','LINE',NULL,0,'','6e70f8f3e0f8c134711af40ab6e4931b','',NULL);
INSERT INTO `wp_icl_strings` VALUES (3,'en','WPML','Text for alternative languages for posts','This post is also available in: %s',NULL,NULL,'','LINE',NULL,0,'','c9203e3110feb389a62b2f341a6c346a','',NULL);
/*!40000 ALTER TABLE `wp_icl_strings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_icl_translate`
--

DROP TABLE IF EXISTS `wp_icl_translate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_icl_translate` (
  `tid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `job_id` bigint(20) unsigned NOT NULL,
  `content_id` bigint(20) unsigned NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `field_type` varchar(160) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `field_wrap_tag` varchar(16) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `field_format` varchar(16) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `field_translate` tinyint(4) NOT NULL,
  `field_data` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `field_data_translated` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `field_finished` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tid`),
  KEY `job_id` (`job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_icl_translate`
--

LOCK TABLES `wp_icl_translate` WRITE;
/*!40000 ALTER TABLE `wp_icl_translate` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_icl_translate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_icl_translate_job`
--

DROP TABLE IF EXISTS `wp_icl_translate_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_icl_translate_job` (
  `job_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `rid` bigint(20) unsigned NOT NULL,
  `translator_id` int(10) unsigned NOT NULL,
  `translated` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `manager_id` int(10) unsigned NOT NULL,
  `revision` int(10) unsigned DEFAULT NULL,
  `title` varchar(160) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `deadline_date` datetime DEFAULT NULL,
  `completed_date` datetime DEFAULT NULL,
  `editor` varchar(16) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `editor_job_id` bigint(20) unsigned DEFAULT NULL,
  `edit_timestamp` int(11) unsigned DEFAULT NULL,
  `automatic` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`job_id`),
  KEY `rid` (`rid`,`translator_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_icl_translate_job`
--

LOCK TABLES `wp_icl_translate_job` WRITE;
/*!40000 ALTER TABLE `wp_icl_translate_job` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_icl_translate_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_icl_translation_batches`
--

DROP TABLE IF EXISTS `wp_icl_translation_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_icl_translation_batches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `batch_name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tp_id` int(11) DEFAULT NULL,
  `ts_url` text COLLATE utf8mb4_unicode_520_ci,
  `last_update` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_icl_translation_batches`
--

LOCK TABLES `wp_icl_translation_batches` WRITE;
/*!40000 ALTER TABLE `wp_icl_translation_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_icl_translation_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_icl_translation_status`
--

DROP TABLE IF EXISTS `wp_icl_translation_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_icl_translation_status` (
  `rid` bigint(20) NOT NULL AUTO_INCREMENT,
  `translation_id` bigint(20) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `translator_id` bigint(20) NOT NULL,
  `needs_update` tinyint(4) NOT NULL,
  `md5` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `translation_service` varchar(16) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `batch_id` int(11) NOT NULL DEFAULT '0',
  `translation_package` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `links_fixed` tinyint(4) NOT NULL DEFAULT '0',
  `_prevstate` longtext COLLATE utf8mb4_unicode_520_ci,
  `uuid` varchar(36) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `tp_id` int(11) DEFAULT NULL,
  `tp_revision` int(11) NOT NULL DEFAULT '1',
  `ts_status` text COLLATE utf8mb4_unicode_520_ci,
  `review_status` enum('NEEDS_REVIEW','EDITING','ACCEPTED') COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `ate_comm_retry_count` int(11) unsigned DEFAULT '0',
  PRIMARY KEY (`rid`),
  UNIQUE KEY `translation_id` (`translation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_icl_translation_status`
--

LOCK TABLES `wp_icl_translation_status` WRITE;
/*!40000 ALTER TABLE `wp_icl_translation_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_icl_translation_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_icl_translations`
--

DROP TABLE IF EXISTS `wp_icl_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_icl_translations` (
  `translation_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `element_type` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post_post',
  `element_id` bigint(20) DEFAULT NULL,
  `trid` bigint(20) NOT NULL,
  `language_code` varchar(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `source_language_code` varchar(7) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`translation_id`),
  UNIQUE KEY `trid_lang` (`trid`,`language_code`),
  UNIQUE KEY `el_type_id` (`element_type`,`element_id`),
  KEY `trid` (`trid`),
  KEY `id_type_language` (`element_id`,`element_type`,`language_code`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_icl_translations`
--

LOCK TABLES `wp_icl_translations` WRITE;
/*!40000 ALTER TABLE `wp_icl_translations` DISABLE KEYS */;
INSERT INTO `wp_icl_translations` VALUES (1,'post_page',3,3,'uk',NULL);
INSERT INTO `wp_icl_translations` VALUES (2,'post_page',2,2,'uk',NULL);
INSERT INTO `wp_icl_translations` VALUES (3,'post_post',1,1,'uk',NULL);
INSERT INTO `wp_icl_translations` VALUES (4,'tax_category',1,5,'uk',NULL);
INSERT INTO `wp_icl_translations` VALUES (5,'comment',1,7,'uk',NULL);
INSERT INTO `wp_icl_translations` VALUES (6,'tax_category',2,5,'ru','uk');
/*!40000 ALTER TABLE `wp_icl_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=911 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://localhost:10004','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://localhost:10004','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','Libra','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','Just another WordPress site','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','dev-email@flywheel.local','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','F j, Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','g:i a','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:94:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=18&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:2:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','3','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','','no');
INSERT INTO `wp_options` VALUES (40,'template','Libra','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','Libra','yes');
INSERT INTO `wp_options` VALUES (42,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (43,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (44,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (45,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (46,'db_version','51917','yes');
INSERT INTO `wp_options` VALUES (47,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (48,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (49,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (50,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (51,'show_on_front','page','yes');
INSERT INTO `wp_options` VALUES (52,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (53,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (54,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (55,'upload_url_path','/wp-content/uploads','yes');
INSERT INTO `wp_options` VALUES (56,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (57,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (59,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (60,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (61,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (62,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (63,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (64,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (65,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (67,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (68,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (69,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (70,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (71,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (72,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (73,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (74,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (75,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (76,'widget_categories','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (77,'widget_text','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_rss','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (79,'uninstall_plugins','a:0:{}','no');
INSERT INTO `wp_options` VALUES (80,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (81,'page_for_posts','0','yes');
INSERT INTO `wp_options` VALUES (82,'page_on_front','18','yes');
INSERT INTO `wp_options` VALUES (83,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (84,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (85,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (86,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (87,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (89,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (90,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (91,'admin_email_lifespan','1668241103','yes');
INSERT INTO `wp_options` VALUES (92,'disallowed_keys','','no');
INSERT INTO `wp_options` VALUES (93,'comment_previously_approved','1','yes');
INSERT INTO `wp_options` VALUES (94,'auto_plugin_theme_update_emails','a:0:{}','no');
INSERT INTO `wp_options` VALUES (95,'auto_update_core_dev','enabled','yes');
INSERT INTO `wp_options` VALUES (96,'auto_update_core_minor','enabled','yes');
INSERT INTO `wp_options` VALUES (97,'auto_update_core_major','enabled','yes');
INSERT INTO `wp_options` VALUES (98,'wp_force_deactivated_plugins','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (99,'initial_db_version','51917','yes');
INSERT INTO `wp_options` VALUES (100,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:76:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:34:\"wpml_manage_translation_management\";b:1;s:21:\"wpml_manage_languages\";b:1;s:41:\"wpml_manage_theme_and_plugin_localization\";b:1;s:19:\"wpml_manage_support\";b:1;s:36:\"wpml_manage_woocommerce_multilingual\";b:1;s:37:\"wpml_operate_woocommerce_multilingual\";b:1;s:29:\"wpml_manage_media_translation\";b:1;s:22:\"wpml_manage_navigation\";b:1;s:24:\"wpml_manage_sticky_links\";b:1;s:30:\"wpml_manage_string_translation\";b:1;s:33:\"wpml_manage_translation_analytics\";b:1;s:25:\"wpml_manage_wp_menus_sync\";b:1;s:32:\"wpml_manage_taxonomy_translation\";b:1;s:27:\"wpml_manage_troubleshooting\";b:1;s:31:\"wpml_manage_translation_options\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (101,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (102,'widget_block','a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (103,'sidebars_widgets','a:3:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:19:\"home-banner-widgets\";a:0:{}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (104,'cron','a:7:{i:1654183103;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1654201103;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1654244303;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1654244878;a:3:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1654589903;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1655368372;a:1:{s:25:\"otgs_send_components_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (105,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (106,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (107,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (111,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (112,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'nonce_key',' RTb~}+?rlNHASAv4<o6%}byfvXj4[Bnw<@*n8.i$213C</X2U9O8htlRQ.v#sda','no');
INSERT INTO `wp_options` VALUES (115,'nonce_salt','8#|_*PQLF884Y=#-fmLBb1,N.qY-;r7GR(?/]B1003<vK$Pvt33KOHQ;Zh}mX[`#','no');
INSERT INTO `wp_options` VALUES (116,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (117,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (118,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (120,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (123,'theme_mods_twentytwentytwo','a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1652690590;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}s:18:\"nav_menu_locations\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (126,'https_detection_errors','a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:21:\"HTTPS request failed.\";}}','yes');
INSERT INTO `wp_options` VALUES (154,'can_compress_scripts','1','no');
INSERT INTO `wp_options` VALUES (157,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_options` VALUES (162,'current_theme','Libra','yes');
INSERT INTO `wp_options` VALUES (163,'theme_mods_7fridays','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1652690586;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:19:\"home-banner-widgets\";a:0:{}}}}','yes');
INSERT INTO `wp_options` VALUES (164,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (165,'recently_activated','a:2:{s:40:\"sitepress-multilingual-cms/sitepress.php\";i:1652693067;s:34:\"wpml-string-translation/plugin.php\";i:1652693065;}','yes');
INSERT INTO `wp_options` VALUES (170,'acf_version','5.12.2','yes');
INSERT INTO `wp_options` VALUES (175,'icl_sitepress_version','4.5.2','yes');
INSERT INTO `wp_options` VALUES (176,'icl_sitepress_settings','a:57:{s:19:\"hide_upgrade_notice\";s:5:\"4.5.2\";s:25:\"icl_capabilities_verified\";b:1;s:16:\"active_languages\";a:2:{i:0;s:2:\"ru\";i:1;s:2:\"uk\";}s:21:\"interview_translators\";i:1;s:34:\"existing_content_language_verified\";i:1;s:25:\"language_negotiation_type\";i:1;s:18:\"icl_lso_link_empty\";i:0;s:18:\"sync_page_ordering\";i:1;s:16:\"sync_page_parent\";i:1;s:18:\"sync_page_template\";i:1;s:16:\"sync_ping_status\";i:1;s:19:\"sync_comment_status\";i:1;s:16:\"sync_sticky_flag\";i:1;s:13:\"sync_password\";i:1;s:17:\"sync_private_flag\";i:1;s:16:\"sync_post_format\";i:1;s:11:\"sync_delete\";i:1;s:15:\"sync_delete_tax\";i:0;s:20:\"sync_post_taxonomies\";i:1;s:14:\"sync_post_date\";i:0;s:21:\"sync_taxonomy_parents\";i:0;s:25:\"translation_pickup_method\";i:0;s:15:\"notify_complete\";i:1;s:26:\"translated_document_status\";i:1;s:17:\"remote_management\";i:0;s:15:\"auto_adjust_ids\";i:1;s:11:\"alert_delay\";i:0;s:12:\"promote_wpml\";i:0;s:18:\"automatic_redirect\";i:0;s:17:\"remember_language\";i:24;s:28:\"icl_lang_sel_copy_parameters\";s:0:\"\";s:28:\"translated_document_page_url\";s:13:\"auto-generate\";s:27:\"sync_comments_on_duplicates\";i:0;s:3:\"seo\";a:3:{s:10:\"head_langs\";i:1;s:27:\"canonicalization_duplicates\";i:1;s:19:\"head_langs_priority\";i:1;}s:22:\"posts_slug_translation\";a:2:{s:2:\"on\";i:1;s:20:\"string_name_migrated\";b:1;}s:4:\"urls\";a:5:{s:30:\"directory_for_default_language\";i:0;s:12:\"show_on_root\";s:0:\"\";s:19:\"root_html_file_path\";s:0:\"\";s:9:\"root_page\";i:0;s:23:\"hide_language_switchers\";i:1;}s:12:\"xdomain_data\";i:1;s:24:\"custom_posts_sync_option\";a:7:{s:4:\"post\";i:1;s:4:\"page\";i:1;s:10:\"attachment\";i:1;s:8:\"wp_block\";i:1;s:13:\"wp_navigation\";i:1;s:11:\"wp_template\";i:1;s:16:\"wp_template_part\";i:1;}s:22:\"taxonomies_sync_option\";a:3:{s:8:\"category\";i:1;s:8:\"post_tag\";i:1;s:20:\"translation_priority\";i:1;}s:28:\"tm_block_retranslating_terms\";i:1;s:22:\"admin_default_language\";s:9:\"_default_\";s:18:\"ajx_health_checked\";b:1;s:2:\"st\";a:17:{s:25:\"db_ok_for_gettext_context\";b:1;s:42:\"WPML\\ST\\MO\\Generate\\Process\\Status_has_run\";b:1;s:41:\"WPML_ST_Upgrade_Migrate_Originals_has_run\";b:1;s:48:\"WPML_ST_Upgrade_Db_Cache_Command_2.4.2_2_has_run\";b:1;s:52:\"WPML_ST_Upgrade_Display_Strings_Scan_Notices_has_run\";b:1;s:48:\"WPML_ST_Upgrade_DB_String_Packages_2.4.2_has_run\";b:1;s:37:\"WPML_ST_Upgrade_MO_Scanning_3_has_run\";b:1;s:46:\"WPML_ST_Upgrade_DB_String_Name_Index_2_has_run\";b:1;s:48:\"WPML_ST_Upgrade_DB_Longtext_String_Value_has_run\";b:1;s:53:\"WPML_ST_Upgrade_DB_String_Packages_Word_Count_has_run\";b:1;s:64:\"WPML\\ST\\Upgrade\\Command\\RegenerateMoFilesWithStringNames_has_run\";b:1;s:16:\"strings_per_page\";i:10;s:15:\"icl_st_auto_reg\";s:7:\"disable\";s:16:\"strings_language\";s:2:\"en\";s:16:\"translated-users\";a:0:{}s:2:\"sw\";a:0:{}s:53:\"WPML\\ST\\MO\\Generate\\Process\\Status_background_has_run\";b:1;}s:15:\"languages_order\";a:2:{i:0;s:2:\"ru\";i:1;s:2:\"uk\";}s:22:\"theme_language_folders\";N;s:28:\"sync_comments_on_duplicates \";i:0;s:22:\"taxonomy_names_checked\";b:1;s:14:\"setup_complete\";i:1;s:18:\"default_categories\";a:2:{s:2:\"uk\";s:1:\"1\";s:2:\"ru\";i:2;}s:16:\"default_language\";s:2:\"uk\";s:17:\"setup_wizard_step\";i:5;s:22:\"translation-management\";a:12:{s:25:\"custom_fields_translation\";a:18:{s:5:\"title\";i:2;s:11:\"description\";i:2;s:8:\"keywords\";i:2;s:10:\"_edit_last\";i:0;s:10:\"_edit_lock\";i:0;s:17:\"_wp_page_template\";i:0;s:23:\"_wp_attachment_metadata\";i:0;s:16:\"original_post_id\";i:0;s:22:\"_wpml_original_post_id\";i:0;s:12:\"_wp_old_slug\";i:0;s:20:\"_icl_translator_note\";i:0;s:14:\"_alp_processed\";i:0;s:7:\"_pingme\";i:0;s:10:\"_encloseme\";i:0;s:22:\"_icl_lang_duplicate_of\";i:0;s:13:\"_thumbnail_id\";i:0;s:17:\"_wp_attached_file\";i:0;s:24:\"_wp_attachment_image_alt\";i:2;}s:29:\"custom_fields_readonly_config\";a:18:{i:0;s:5:\"title\";i:1;s:11:\"description\";i:2;s:8:\"keywords\";i:3;s:10:\"_edit_last\";i:4;s:10:\"_edit_lock\";i:5;s:17:\"_wp_page_template\";i:6;s:23:\"_wp_attachment_metadata\";i:7;s:16:\"original_post_id\";i:8;s:22:\"_wpml_original_post_id\";i:9;s:12:\"_wp_old_slug\";i:10;s:20:\"_icl_translator_note\";i:11;s:14:\"_alp_processed\";i:12;s:7:\"_pingme\";i:13;s:10:\"_encloseme\";i:14;s:22:\"_icl_lang_duplicate_of\";i:15;s:13:\"_thumbnail_id\";i:16;s:17:\"_wp_attached_file\";i:17;s:24:\"_wp_attachment_image_alt\";}s:32:\"custom_fields_translation_custom\";a:0:{}s:41:\"custom_fields_translation_custom_readonly\";a:0:{}s:22:\"doc_translation_method\";i:0;s:35:\"__custom_types_readonly_config_prev\";a:0:{}s:28:\"custom_types_readonly_config\";a:0:{}s:36:\"__custom_fields_readonly_config_prev\";a:18:{i:0;s:5:\"title\";i:1;s:11:\"description\";i:2;s:8:\"keywords\";i:3;s:10:\"_edit_last\";i:4;s:10:\"_edit_lock\";i:5;s:17:\"_wp_page_template\";i:6;s:23:\"_wp_attachment_metadata\";i:7;s:16:\"original_post_id\";i:8;s:22:\"_wpml_original_post_id\";i:9;s:12:\"_wp_old_slug\";i:10;s:20:\"_icl_translator_note\";i:11;s:14:\"_alp_processed\";i:12;s:7:\"_pingme\";i:13;s:10:\"_encloseme\";i:14;s:22:\"_icl_lang_duplicate_of\";i:15;s:13:\"_thumbnail_id\";i:16;s:17:\"_wp_attached_file\";i:17;s:24:\"_wp_attachment_image_alt\";}s:41:\"__custom_term_fields_readonly_config_prev\";a:0:{}s:34:\"custom_term_fields_readonly_config\";a:0:{}s:26:\"taxonomies_readonly_config\";a:1:{s:20:\"translation_priority\";i:1;}s:28:\"custom-types_readonly_config\";a:5:{s:10:\"attachment\";i:1;s:8:\"wp_block\";i:1;s:13:\"wp_navigation\";i:1;s:11:\"wp_template\";i:1;s:16:\"wp_template_part\";i:1;}}s:24:\"custom-types_sync_option\";a:5:{s:10:\"attachment\";i:1;s:8:\"wp_block\";i:1;s:13:\"wp_navigation\";i:1;s:11:\"wp_template\";i:1;s:16:\"wp_template_part\";i:1;}s:29:\"language_selector_initialized\";i:1;s:27:\"dont_show_help_admin_notice\";b:1;s:21:\"site_does_not_use_icl\";b:1;s:29:\"edit_languages_flag_migration\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (177,'_wpml_media','a:2:{s:20:\"new_content_settings\";a:3:{s:22:\"always_translate_media\";b:1;s:15:\"duplicate_media\";b:1;s:18:\"duplicate_featured\";b:1;}s:13:\"starting_help\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (178,'wpml_dependencies:needs_validation','1','yes');
INSERT INTO `wp_options` VALUES (179,'wpml_dependencies:valid_plugins','a:1:{i:0;s:26:\"sitepress-multilingual-cms\";}','yes');
INSERT INTO `wp_options` VALUES (180,'wpml_dependencies:invalid_plugins','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (181,'wpml_dependencies:expected_versions','a:7:{s:23:\"wpml-string-translation\";s:5:\"3.2.0\";s:24:\"woocommerce-multilingual\";s:5:\"4.7.8\";s:22:\"wpml-media-translation\";s:5:\"2.7.0\";s:17:\"wpml-sticky-links\";s:5:\"1.5.0\";s:12:\"wpml-cms-nav\";s:5:\"1.5.0\";s:25:\"gravityforms-multilingual\";s:5:\"1.5.0\";s:26:\"sitepress-multilingual-cms\";s:5:\"4.5.0\";}','yes');
INSERT INTO `wp_options` VALUES (183,'wpml_config_index','O:8:\"stdClass\":2:{s:7:\"plugins\";a:86:{i:0;O:8:\"stdClass\":5:{s:4:\"name\";s:11:\"Popup Maker\";s:14:\"override_local\";b:1;s:4:\"path\";s:39:\"wpml-config/popup-maker/wpml-config.xml\";s:7:\"updated\";i:1620036189;s:4:\"hash\";s:32:\"49bdd09f6b77d62749a7a052f5163e57\";}i:1;O:8:\"stdClass\":5:{s:4:\"name\";s:33:\"10bit WooCommerce Gateway Yaadpay\";s:14:\"override_local\";b:1;s:4:\"path\";s:61:\"wpml-config/10bit-woocommerce-gateway-yaadpay/wpml-config.xml\";s:7:\"updated\";i:1464939780;s:4:\"hash\";s:32:\"ebdce80f3b6bfa13112b1d4c6a31b560\";}i:2;O:8:\"stdClass\":5:{s:4:\"name\";s:18:\"Advanced Gutenberg\";s:14:\"override_local\";b:1;s:4:\"path\";s:46:\"wpml-config/advanced-gutenberg/wpml-config.xml\";s:7:\"updated\";i:1620206304;s:4:\"hash\";s:32:\"965305688fa93fe758789b1be81c1f9f\";}i:3;O:8:\"stdClass\":5:{s:4:\"name\";s:19:\"PublishPress Blocks\";s:14:\"override_local\";b:1;s:4:\"path\";s:46:\"wpml-config/advanced-gutenberg/wpml-config.xml\";s:7:\"updated\";i:1620206304;s:4:\"hash\";s:32:\"965305688fa93fe758789b1be81c1f9f\";}i:4;O:8:\"stdClass\":5:{s:4:\"name\";s:16:\"Ajax Search Lite\";s:14:\"override_local\";b:1;s:4:\"path\";s:44:\"wpml-config/ajax-search-lite/wpml-config.xml\";s:7:\"updated\";i:1535127720;s:4:\"hash\";s:32:\"79dc60103bbc2eaaf6ac2ff25ca8dfa7\";}i:5;O:8:\"stdClass\":5:{s:4:\"name\";s:13:\"Atomic Blocks\";s:14:\"override_local\";b:1;s:4:\"path\";s:41:\"wpml-config/atomic-blocks/wpml-config.xml\";s:7:\"updated\";i:1585156226;s:4:\"hash\";s:32:\"8d93d53d0fa037f291aaf9aa5980c287\";}i:6;O:8:\"stdClass\":5:{s:4:\"name\";s:43:\"Atomic Blocks - Gutenberg Blocks Collection\";s:14:\"override_local\";b:1;s:4:\"path\";s:41:\"wpml-config/atomic-blocks/wpml-config.xml\";s:7:\"updated\";i:1585156226;s:4:\"hash\";s:32:\"8d93d53d0fa037f291aaf9aa5980c287\";}i:7;O:8:\"stdClass\":5:{s:4:\"name\";s:14:\"Genesis Blocks\";s:14:\"override_local\";b:1;s:4:\"path\";s:41:\"wpml-config/atomic-blocks/wpml-config.xml\";s:7:\"updated\";i:1585156226;s:4:\"hash\";s:32:\"8d93d53d0fa037f291aaf9aa5980c287\";}i:8;O:8:\"stdClass\":5:{s:4:\"name\";s:36:\"Beaver Builder Plugin (Lite Version)\";s:14:\"override_local\";b:1;s:4:\"path\";s:42:\"wpml-config/beaver-builder/wpml-config.xml\";s:7:\"updated\";i:1641827910;s:4:\"hash\";s:32:\"8d7808d12f301b8c5f385bcec724862b\";}i:9;O:8:\"stdClass\":5:{s:4:\"name\";s:35:\"Beaver Builder Plugin (Pro Version)\";s:14:\"override_local\";b:1;s:4:\"path\";s:42:\"wpml-config/beaver-builder/wpml-config.xml\";s:7:\"updated\";i:1641827910;s:4:\"hash\";s:32:\"8d7808d12f301b8c5f385bcec724862b\";}i:10;O:8:\"stdClass\":5:{s:4:\"name\";s:8:\"Book Now\";s:14:\"override_local\";b:0;s:4:\"path\";s:36:\"wpml-config/book-now/wpml-config.xml\";s:7:\"updated\";i:1505319840;s:4:\"hash\";s:32:\"d123c0bb22d447095c3c443cb41c273a\";}i:11;O:8:\"stdClass\":5:{s:4:\"name\";s:13:\"Click to Chat\";s:14:\"override_local\";b:1;s:4:\"path\";s:54:\"wpml-config/click-to-chat-for-whatsapp/wpml-config.xml\";s:7:\"updated\";i:1652451341;s:4:\"hash\";s:32:\"4b8dd1a89b982a19bb3d1fc82998c732\";}i:12;O:8:\"stdClass\":5:{s:4:\"name\";s:21:\"Advanced Comment Form\";s:14:\"override_local\";b:1;s:4:\"path\";s:40:\"wpml-config/comment-form/wpml-config.xml\";s:7:\"updated\";i:1535127720;s:4:\"hash\";s:32:\"a84c0e28e4c97dec1a3053c316c27892\";}i:13;O:8:\"stdClass\":5:{s:4:\"name\";s:27:\"Contact Form 7 Multilingual\";s:14:\"override_local\";b:1;s:4:\"path\";s:55:\"wpml-config/contact-form-7-multilingual/wpml-config.xml\";s:7:\"updated\";i:1626959466;s:4:\"hash\";s:32:\"45416d75df0810659c99a36d39f0129b\";}i:14;O:8:\"stdClass\":5:{s:4:\"name\";s:11:\"Cornerstone\";s:14:\"override_local\";b:1;s:4:\"path\";s:39:\"wpml-config/cornerstone/wpml-config.xml\";s:7:\"updated\";i:1622456765;s:4:\"hash\";s:32:\"737c23d5694a88f1860b39c06e68b44c\";}i:15;O:8:\"stdClass\":5:{s:4:\"name\";s:19:\"Custom Post Type UI\";s:14:\"override_local\";b:1;s:4:\"path\";s:47:\"wpml-config/custom-post-type-ui/wpml-config.xml\";s:7:\"updated\";i:1604075857;s:4:\"hash\";s:32:\"c35b9664bea4b9d9b83b5748e14be9b0\";}i:16;O:8:\"stdClass\":5:{s:4:\"name\";s:12:\"Divi Builder\";s:14:\"override_local\";b:1;s:4:\"path\";s:40:\"wpml-config/divi-builder/wpml-config.xml\";s:7:\"updated\";i:1641297629;s:4:\"hash\";s:32:\"c1a254cea71d40393238a2bad782ac67\";}i:17;O:8:\"stdClass\":5:{s:4:\"name\";s:9:\"Elementor\";s:14:\"override_local\";b:1;s:4:\"path\";s:37:\"wpml-config/elementor/wpml-config.xml\";s:7:\"updated\";i:1642170991;s:4:\"hash\";s:32:\"d9011afc75f72489b893eaf251376d0f\";}i:18;O:8:\"stdClass\":5:{s:4:\"name\";s:18:\"Event Tickets Plus\";s:14:\"override_local\";b:0;s:4:\"path\";s:46:\"wpml-config/event-tickets-plus/wpml-config.xml\";s:7:\"updated\";i:1477310580;s:4:\"hash\";s:32:\"f333802d6c6c9836466d3ff52cfe2bd7\";}i:19;O:8:\"stdClass\":5:{s:4:\"name\";s:31:\"The Events Calendar: Filter Bar\";s:14:\"override_local\";b:1;s:4:\"path\";s:44:\"wpml-config/events-filterbar/wpml-config.xml\";s:7:\"updated\";i:1529671740;s:4:\"hash\";s:32:\"787231e7b7cdb54ca447512234be0768\";}i:20;O:8:\"stdClass\":5:{s:4:\"name\";s:10:\"Exit Popup\";s:14:\"override_local\";b:0;s:4:\"path\";s:38:\"wpml-config/exit-popup/wpml-config.xml\";s:7:\"updated\";i:1532441340;s:4:\"hash\";s:32:\"9759f24db8621dfa772d7222c9c336dd\";}i:21;O:8:\"stdClass\":5:{s:4:\"name\";s:10:\"Forminator\";s:14:\"override_local\";b:1;s:4:\"path\";s:38:\"wpml-config/forminator/wpml-config.xml\";s:7:\"updated\";i:1574177482;s:4:\"hash\";s:32:\"ae0a6b1f1bc9fc80ada4833f9ee8917c\";}i:22;O:8:\"stdClass\":5:{s:4:\"name\";s:24:\"Google Analytics Opt-Out\";s:14:\"override_local\";b:1;s:4:\"path\";s:52:\"wpml-config/google-analytics-opt-out/wpml-config.xml\";s:7:\"updated\";i:1535127720;s:4:\"hash\";s:32:\"823965222ce323c88eadbcf95dcde0ff\";}i:23;O:8:\"stdClass\":5:{s:4:\"name\";s:21:\"WPBakery Page Builder\";s:14:\"override_local\";b:1;s:4:\"path\";s:39:\"wpml-config/js_composer/wpml-config.xml\";s:7:\"updated\";i:1652100411;s:4:\"hash\";s:32:\"dc6e0e1a2d11c75bc91eff51cedfa668\";}i:24;O:8:\"stdClass\":5:{s:4:\"name\";s:24:\"WPBakery Visual Composer\";s:14:\"override_local\";b:1;s:4:\"path\";s:39:\"wpml-config/js_composer/wpml-config.xml\";s:7:\"updated\";i:1652100411;s:4:\"hash\";s:32:\"dc6e0e1a2d11c75bc91eff51cedfa668\";}i:25;O:8:\"stdClass\":5:{s:4:\"name\";s:26:\"The7 WPBakery Page Builder\";s:14:\"override_local\";b:1;s:4:\"path\";s:47:\"wpml-config/js_composer-dt-the7/wpml-config.xml\";s:7:\"updated\";i:1652100411;s:4:\"hash\";s:32:\"dc6e0e1a2d11c75bc91eff51cedfa668\";}i:26;O:8:\"stdClass\":5:{s:4:\"name\";s:47:\"Kadence Blocks - Gutenberg Page Builder Toolkit\";s:14:\"override_local\";b:1;s:4:\"path\";s:42:\"wpml-config/kadence-blocks/wpml-config.xml\";s:7:\"updated\";i:1589279268;s:4:\"hash\";s:32:\"e3fa847064d1728f8cc936efdbb8077d\";}i:27;O:8:\"stdClass\":5:{s:4:\"name\";s:12:\"KingComposer\";s:14:\"override_local\";b:1;s:4:\"path\";s:40:\"wpml-config/kingcomposer/wpml-config.xml\";s:7:\"updated\";i:1535127720;s:4:\"hash\";s:32:\"cadb27cc7ba0e61d3fd2acaf27fef4df\";}i:28;O:8:\"stdClass\":5:{s:4:\"name\";s:23:\"MailChimp for WordPress\";s:14:\"override_local\";b:1;s:4:\"path\";s:44:\"wpml-config/mailchimp-for-wp/wpml-config.xml\";s:7:\"updated\";i:1632841277;s:4:\"hash\";s:32:\"744ec7f417887a2ba6200cd3bff17891\";}i:29;O:8:\"stdClass\":5:{s:4:\"name\";s:12:\"MasterSlider\";s:14:\"override_local\";b:1;s:4:\"path\";s:41:\"wpml-config/master-slider/wpml-config.xml\";s:7:\"updated\";i:1535127720;s:4:\"hash\";s:32:\"2b5b8d5c1d934ee19a547b66d6c76b69\";}i:30;O:8:\"stdClass\":5:{s:4:\"name\";s:7:\"Members\";s:14:\"override_local\";b:0;s:4:\"path\";s:35:\"wpml-config/members/wpml-config.xml\";s:7:\"updated\";i:1497367620;s:4:\"hash\";s:32:\"37e638f5a56f59208150c3649c291e41\";}i:31;O:8:\"stdClass\":5:{s:4:\"name\";s:46:\"Multibanco (IfthenPay gateway) for WooCommerce\";s:14:\"override_local\";b:0;s:4:\"path\";s:72:\"wpml-config/multibanco-ifthenpay-gateway-for-woocommerce/wpml-config.xml\";s:7:\"updated\";i:1441014780;s:4:\"hash\";s:32:\"3cddef77fd163e090472f995aa2388d4\";}i:32;O:8:\"stdClass\":5:{s:4:\"name\";s:11:\"Ninja Forms\";s:14:\"override_local\";b:1;s:4:\"path\";s:39:\"wpml-config/ninja-forms/wpml-config.xml\";s:7:\"updated\";i:1535127720;s:4:\"hash\";s:32:\"7b3321902299b49238e59d0741ce1f8d\";}i:33;O:8:\"stdClass\":5:{s:4:\"name\";s:25:\"NW ADCart for WooCommerce\";s:14:\"override_local\";b:1;s:4:\"path\";s:53:\"wpml-config/nw-adcart-for-woocommerce/wpml-config.xml\";s:7:\"updated\";i:1409734260;s:4:\"hash\";s:32:\"91d62df0659fc7b561a3932a7a52de6a\";}i:34;O:8:\"stdClass\":5:{s:4:\"name\";s:14:\"Oxygen Builder\";s:14:\"override_local\";b:1;s:4:\"path\";s:34:\"wpml-config/oxygen/wpml-config.xml\";s:7:\"updated\";i:1619521680;s:4:\"hash\";s:32:\"97caa8ae95747f8e3c27e065362b0976\";}i:35;O:8:\"stdClass\":5:{s:4:\"name\";s:20:\"Paid Memberships Pro\";s:14:\"override_local\";b:1;s:4:\"path\";s:48:\"wpml-config/paid-memberships-pro/wpml-config.xml\";s:7:\"updated\";i:1535127720;s:4:\"hash\";s:32:\"a26838992708887d6825bd1fbdceca59\";}i:36;O:8:\"stdClass\":5:{s:4:\"name\";s:22:\"PayPal for WooCommerce\";s:14:\"override_local\";b:1;s:4:\"path\";s:50:\"wpml-config/paypal-for-woocommerce/wpml-config.xml\";s:7:\"updated\";i:1504696980;s:4:\"hash\";s:32:\"8d98b39c86e95094e6b7727fda7a6f00\";}i:37;O:8:\"stdClass\":5:{s:4:\"name\";s:35:\"Product Enquiry Pro for WooCommerce\";s:14:\"override_local\";b:1;s:4:\"path\";s:63:\"wpml-config/product-enquiry-pro-for-woocommerce/wpml-config.xml\";s:7:\"updated\";i:1409734500;s:4:\"hash\";s:32:\"305232f06370d52a29c346d6b711f50a\";}i:38;O:8:\"stdClass\":5:{s:4:\"name\";s:20:\"Rezgo Online Booking\";s:14:\"override_local\";b:1;s:4:\"path\";s:33:\"wpml-config/rezgo/wpml-config.xml\";s:7:\"updated\";i:1535127720;s:4:\"hash\";s:32:\"6f3433a4c5eafa13eaf125eea7d84239\";}i:39;O:8:\"stdClass\":5:{s:4:\"name\";s:15:\"Search & Filter\";s:14:\"override_local\";b:1;s:4:\"path\";s:41:\"wpml-config/search-filter/wpml-config.xml\";s:7:\"updated\";i:1535127720;s:4:\"hash\";s:32:\"104b64d62b408a4ae7c5da7ff0acd0b2\";}i:40;O:8:\"stdClass\":5:{s:4:\"name\";s:10:\"Sensei LMS\";s:14:\"override_local\";b:0;s:4:\"path\";s:34:\"wpml-config/sensei/wpml-config.xml\";s:7:\"updated\";i:1620379210;s:4:\"hash\";s:32:\"383f9e0ed491f2e4b752ccd88e9a8e7c\";}i:41;O:8:\"stdClass\":5:{s:4:\"name\";s:6:\"Sensei\";s:14:\"override_local\";b:0;s:4:\"path\";s:34:\"wpml-config/sensei/wpml-config.xml\";s:7:\"updated\";i:1620379210;s:4:\"hash\";s:32:\"383f9e0ed491f2e4b752ccd88e9a8e7c\";}i:42;O:8:\"stdClass\":5:{s:4:\"name\";s:13:\"Rank Math SEO\";s:14:\"override_local\";b:1;s:4:\"path\";s:44:\"wpml-config/seo-by-rank-math/wpml-config.xml\";s:7:\"updated\";i:1595411877;s:4:\"hash\";s:32:\"0afae267f73a47afd09ae1d322c41735\";}i:43;O:8:\"stdClass\":5:{s:4:\"name\";s:26:\"Page Builder by SiteOrigin\";s:14:\"override_local\";b:0;s:4:\"path\";s:38:\"wpml-config/siteorigin/wpml-config.xml\";s:7:\"updated\";i:1626270156;s:4:\"hash\";s:32:\"bf60919abb66f219390b6bde64e1e910\";}i:44;O:8:\"stdClass\":5:{s:4:\"name\";s:21:\"WPML Multilingual CMS\";s:14:\"override_local\";b:1;s:4:\"path\";s:54:\"wpml-config/sitepress-multilingual-cms/wpml-config.xml\";s:7:\"updated\";i:1641897855;s:4:\"hash\";s:32:\"66d637154bfa1806628f47ce3463c7cf\";}i:45;O:8:\"stdClass\":5:{s:4:\"name\";s:25:\"SiteOrigin Widgets Bundle\";s:14:\"override_local\";b:0;s:4:\"path\";s:45:\"wpml-config/so-widgets-bundle/wpml-config.xml\";s:7:\"updated\";i:1622456765;s:4:\"hash\";s:32:\"ebae21a440bbef63b7db4763bdadde8b\";}i:46;O:8:\"stdClass\":5:{s:4:\"name\";s:28:\"Stackable - Gutenberg Blocks\";s:14:\"override_local\";b:1;s:4:\"path\";s:63:\"wpml-config/stackable-ultimate-gutenberg-blocks/wpml-config.xml\";s:7:\"updated\";i:1636369568;s:4:\"hash\";s:32:\"5a1420930af4bf5839b760fc061a6ecd\";}i:47;O:8:\"stdClass\":5:{s:4:\"name\";s:11:\"Subscriptio\";s:14:\"override_local\";b:0;s:4:\"path\";s:39:\"wpml-config/subscriptio/wpml-config.xml\";s:7:\"updated\";i:1519647600;s:4:\"hash\";s:32:\"a23128c1dde651ef63093336042948e5\";}i:48;O:8:\"stdClass\":5:{s:4:\"name\";s:19:\"The Events Calendar\";s:14:\"override_local\";b:1;s:4:\"path\";s:47:\"wpml-config/the-events-calendar/wpml-config.xml\";s:7:\"updated\";i:1597940433;s:4:\"hash\";s:32:\"9dc1b1aa9bdd03cb5f8057ebb4976651\";}i:49;O:8:\"stdClass\":5:{s:4:\"name\";s:29:\"Ultimate Addons for Gutenberg\";s:14:\"override_local\";b:1;s:4:\"path\";s:57:\"wpml-config/ultimate-addons-for-gutenberg/wpml-config.xml\";s:7:\"updated\";i:1626881281;s:4:\"hash\";s:32:\"dd97c86546f00df88004c955bbf54011\";}i:50;O:8:\"stdClass\":5:{s:4:\"name\";s:15:\"Ultimate Member\";s:14:\"override_local\";b:1;s:4:\"path\";s:43:\"wpml-config/ultimate-member/wpml-config.xml\";s:7:\"updated\";i:1535127720;s:4:\"hash\";s:32:\"c80a46117b6be17e1099cb0640f8e722\";}i:51;O:8:\"stdClass\":5:{s:4:\"name\";s:37:\"Uncode Page Builder (Visual Composer)\";s:14:\"override_local\";b:1;s:4:\"path\";s:46:\"wpml-config/uncode-js_composer/wpml-config.xml\";s:7:\"updated\";i:1652097347;s:4:\"hash\";s:32:\"b6f94d22d0733dcd82d205a49d915181\";}i:52;O:8:\"stdClass\":5:{s:4:\"name\";s:28:\"Uncode WPBakery Page Builder\";s:14:\"override_local\";b:1;s:4:\"path\";s:46:\"wpml-config/uncode-js_composer/wpml-config.xml\";s:7:\"updated\";i:1652097347;s:4:\"hash\";s:32:\"b6f94d22d0733dcd82d205a49d915181\";}i:53;O:8:\"stdClass\":5:{s:4:\"name\";s:21:\"Woocomerce Brands Pro\";s:14:\"override_local\";b:0;s:4:\"path\";s:37:\"wpml-config/woo-brand/wpml-config.xml\";s:7:\"updated\";i:1442243400;s:4:\"hash\";s:32:\"dc7eeb10cd6e0eb80b7960eb8b6058a4\";}i:54;O:8:\"stdClass\":5:{s:4:\"name\";s:39:\"WooCommerce Additional Variation Images\";s:14:\"override_local\";b:1;s:4:\"path\";s:67:\"wpml-config/woocommerce-additional-variation-images/wpml-config.xml\";s:7:\"updated\";i:1479214860;s:4:\"hash\";s:32:\"39b5f72684021b09b12b53b7ff9c7100\";}i:55;O:8:\"stdClass\":5:{s:4:\"name\";s:35:\"WooCommerce Advanced Product Labels\";s:14:\"override_local\";b:0;s:4:\"path\";s:63:\"wpml-config/woocommerce-advanced-product-labels/wpml-config.xml\";s:7:\"updated\";i:1441177080;s:4:\"hash\";s:32:\"4b29c29516a1a33b328d90ffc5c4aad7\";}i:56;O:8:\"stdClass\":5:{s:4:\"name\";s:20:\"WooCommerce Bookings\";s:14:\"override_local\";b:1;s:4:\"path\";s:48:\"wpml-config/woocommerce-bookings/wpml-config.xml\";s:7:\"updated\";i:1636123706;s:4:\"hash\";s:32:\"ea8d3b0bcc59994e2b70096fda3696b8\";}i:57;O:8:\"stdClass\":5:{s:4:\"name\";s:38:\"WooCommerce Catalog Visibility Options\";s:14:\"override_local\";b:1;s:4:\"path\";s:66:\"wpml-config/woocommerce-catalog-visibility-options/wpml-config.xml\";s:7:\"updated\";i:1408625580;s:4:\"hash\";s:32:\"d10bd6388a88521e488f7e4ba295c94c\";}i:58;O:8:\"stdClass\":5:{s:4:\"name\";s:30:\"WooCommerce Composite Products\";s:14:\"override_local\";b:0;s:4:\"path\";s:58:\"wpml-config/woocommerce-composite-products/wpml-config.xml\";s:7:\"updated\";i:1491207900;s:4:\"hash\";s:32:\"a6c0ed6554be69f56779f64506ab96d1\";}i:59;O:8:\"stdClass\":5:{s:4:\"name\";s:30:\"WooCommerce Currency Converter\";s:14:\"override_local\";b:1;s:4:\"path\";s:58:\"wpml-config/woocommerce-currency-converter/wpml-config.xml\";s:7:\"updated\";i:1452009180;s:4:\"hash\";s:32:\"b2191d7affaf1efe74e6a3ca4b0494c6\";}i:60;O:8:\"stdClass\":5:{s:4:\"name\";s:32:\"WooCommerce DIBS FlexWin Gateway\";s:14:\"override_local\";b:1;s:4:\"path\";s:60:\"wpml-config/woocommerce-dibs-flexwin-gateway/wpml-config.xml\";s:7:\"updated\";i:1459514460;s:4:\"hash\";s:32:\"d9237f895f0f133c8e11f4753d96eeca\";}i:61;O:8:\"stdClass\":5:{s:4:\"name\";s:24:\"WooCommerce Embed Slides\";s:14:\"override_local\";b:1;s:4:\"path\";s:52:\"wpml-config/woocommerce-embed-slides/wpml-config.xml\";s:7:\"updated\";i:1499457300;s:4:\"hash\";s:32:\"243e3a54d920cc2ddf96f17f4ff38f2d\";}i:62;O:8:\"stdClass\":5:{s:4:\"name\";s:26:\"WooCommerce Stripe Gateway\";s:14:\"override_local\";b:1;s:4:\"path\";s:54:\"wpml-config/woocommerce-gateway-stripe/wpml-config.xml\";s:7:\"updated\";i:1409061480;s:4:\"hash\";s:32:\"4139e23bcdd0bb3e78cb079fa851ce85\";}i:63;O:8:\"stdClass\":5:{s:4:\"name\";s:22:\"WooCommerce Gift Cards\";s:14:\"override_local\";b:1;s:4:\"path\";s:50:\"wpml-config/woocommerce-gift-cards/wpml-config.xml\";s:7:\"updated\";i:1643977398;s:4:\"hash\";s:32:\"ce84b1e70be2a143f426bdd91f90b440\";}i:64;O:8:\"stdClass\":5:{s:4:\"name\";s:29:\"WooCommerce Local Pickup Plus\";s:14:\"override_local\";b:1;s:4:\"path\";s:57:\"wpml-config/woocommerce-local-pickup-plus/wpml-config.xml\";s:7:\"updated\";i:1442582820;s:4:\"hash\";s:32:\"816774f477bfa1c481cdba021d33f705\";}i:65;O:8:\"stdClass\":5:{s:4:\"name\";s:23:\"WooCommerce Memberships\";s:14:\"override_local\";b:1;s:4:\"path\";s:51:\"wpml-config/woocommerce-memberships/wpml-config.xml\";s:7:\"updated\";i:1585587094;s:4:\"hash\";s:32:\"b12275a5491bc1858f181f56158b7a91\";}i:66;O:8:\"stdClass\":5:{s:4:\"name\";s:25:\"WooCommerce Mix and Match\";s:14:\"override_local\";b:1;s:4:\"path\";s:62:\"wpml-config/woocommerce-mix-and-match-products/wpml-config.xml\";s:7:\"updated\";i:1651268962;s:4:\"hash\";s:32:\"a48aaa356d5b8a3993622e46f02305e2\";}i:67;O:8:\"stdClass\":5:{s:4:\"name\";s:24:\"WooCommerce Multilingual\";s:14:\"override_local\";b:1;s:4:\"path\";s:52:\"wpml-config/woocommerce-multilingual/wpml-config.xml\";s:7:\"updated\";i:1644519969;s:4:\"hash\";s:32:\"f27b96e45df6c3e4a7e793bf7ebfbe24\";}i:68;O:8:\"stdClass\":5:{s:4:\"name\";s:40:\"WooCommerce Multilingual & Multicurrency\";s:14:\"override_local\";b:1;s:4:\"path\";s:52:\"wpml-config/woocommerce-multilingual/wpml-config.xml\";s:7:\"updated\";i:1644519969;s:4:\"hash\";s:32:\"f27b96e45df6c3e4a7e793bf7ebfbe24\";}i:69;O:8:\"stdClass\":5:{s:4:\"name\";s:27:\"WooCommerce Name Your Price\";s:14:\"override_local\";b:1;s:4:\"path\";s:55:\"wpml-config/woocommerce-name-your-price/wpml-config.xml\";s:7:\"updated\";i:1574177482;s:4:\"hash\";s:32:\"055de38e55802236ee636eec63bdde5e\";}i:70;O:8:\"stdClass\":5:{s:4:\"name\";s:27:\"WooCommerce Paymill Gateway\";s:14:\"override_local\";b:1;s:4:\"path\";s:55:\"wpml-config/woocommerce-paymill-gateway/wpml-config.xml\";s:7:\"updated\";i:1408626540;s:4:\"hash\";s:32:\"46409842584ff8df43a2aa922ad1d388\";}i:71;O:8:\"stdClass\":5:{s:4:\"name\";s:40:\"WooCommerce PDF Invoices & Packing Slips\";s:14:\"override_local\";b:1;s:4:\"path\";s:66:\"wpml-config/woocommerce-pdf-invoices-packing-slips/wpml-config.xml\";s:7:\"updated\";i:1461579300;s:4:\"hash\";s:32:\"34ecf8066c5c9042a0bd60b5d40c4c55\";}i:72;O:8:\"stdClass\":5:{s:4:\"name\";s:17:\"WooCommerce Plivo\";s:14:\"override_local\";b:1;s:4:\"path\";s:45:\"wpml-config/woocommerce-plivo/wpml-config.xml\";s:7:\"updated\";i:1409734680;s:4:\"hash\";s:32:\"539d172825c4714d69b8a42ad1826c5d\";}i:73;O:8:\"stdClass\":5:{s:4:\"name\";s:20:\"WooCommerce PostePay\";s:14:\"override_local\";b:1;s:4:\"path\";s:48:\"wpml-config/woocommerce-postepay/wpml-config.xml\";s:7:\"updated\";i:1409063100;s:4:\"hash\";s:32:\"b08722979a25b15ba4a02a16fb555ccc\";}i:74;O:8:\"stdClass\":5:{s:4:\"name\";s:28:\"WooCommerce Price by Country\";s:14:\"override_local\";b:1;s:4:\"path\";s:56:\"wpml-config/woocommerce-price-by-country/wpml-config.xml\";s:7:\"updated\";i:1415282880;s:4:\"hash\";s:32:\"9b296d64ba8afee80cb1ff4fac80144b\";}i:75;O:8:\"stdClass\":5:{s:4:\"name\";s:27:\"WooCommerce Product Add-ons\";s:14:\"override_local\";b:1;s:4:\"path\";s:55:\"wpml-config/woocommerce-product-add-ons/wpml-config.xml\";s:7:\"updated\";i:1476961740;s:4:\"hash\";s:32:\"69f94bed6e4b3546cc7be2fbd2bf392b\";}i:76;O:8:\"stdClass\":5:{s:4:\"name\";s:27:\"WooCommerce Product Bundles\";s:14:\"override_local\";b:0;s:4:\"path\";s:55:\"wpml-config/woocommerce-product-bundles/wpml-config.xml\";s:7:\"updated\";i:1487080740;s:4:\"hash\";s:32:\"7cddba745169acd899b12f24e3580dcc\";}i:77;O:8:\"stdClass\":5:{s:4:\"name\";s:29:\"WooCommerce Product Gift Wrap\";s:14:\"override_local\";b:1;s:4:\"path\";s:57:\"wpml-config/woocommerce-product-gift-wrap/wpml-config.xml\";s:7:\"updated\";i:1429639980;s:4:\"hash\";s:32:\"dd3371d64d2ee01e6e42fd7e0bd134cf\";}i:78;O:8:\"stdClass\":5:{s:4:\"name\";s:38:\"Woocommerce Social Media Share Buttons\";s:14:\"override_local\";b:1;s:4:\"path\";s:66:\"wpml-config/woocommerce-social-media-share-buttons/wpml-config.xml\";s:7:\"updated\";i:1464934800;s:4:\"hash\";s:32:\"3130bbf2a35424d9ecd8d6c3255bf817\";}i:79;O:8:\"stdClass\":5:{s:4:\"name\";s:23:\"WooCommerce Tab Manager\";s:14:\"override_local\";b:1;s:4:\"path\";s:51:\"wpml-config/woocommerce-tab-manager/wpml-config.xml\";s:7:\"updated\";i:1505158140;s:4:\"hash\";s:32:\"477be025d13abe1c1b89bb7666564ed6\";}i:80;O:8:\"stdClass\":5:{s:4:\"name\";s:21:\"WooCommerce Video Tab\";s:14:\"override_local\";b:1;s:4:\"path\";s:49:\"wpml-config/woocommerce-video-tab/wpml-config.xml\";s:7:\"updated\";i:1415284320;s:4:\"hash\";s:32:\"7f9769bc2769e07ae730f3b4cd307741\";}i:81;O:8:\"stdClass\":5:{s:4:\"name\";s:9:\"Yoast SEO\";s:14:\"override_local\";b:1;s:4:\"path\";s:41:\"wpml-config/wordpress-seo/wpml-config.xml\";s:7:\"updated\";i:1592553706;s:4:\"hash\";s:32:\"207e931d1df921957c81fe2554bbf4e9\";}i:82;O:8:\"stdClass\":5:{s:4:\"name\";s:17:\"Yoast SEO Premium\";s:14:\"override_local\";b:1;s:4:\"path\";s:49:\"wpml-config/wordpress-seo-premium/wpml-config.xml\";s:7:\"updated\";i:1592553706;s:4:\"hash\";s:32:\"207e931d1df921957c81fe2554bbf4e9\";}i:83;O:8:\"stdClass\":5:{s:4:\"name\";s:14:\"WP Job Manager\";s:14:\"override_local\";b:0;s:4:\"path\";s:42:\"wpml-config/wp-job-manager/wpml-config.xml\";s:7:\"updated\";i:1499098260;s:4:\"hash\";s:32:\"36842c6b8a11a733ef00ef8d9bc410b9\";}i:84;O:8:\"stdClass\":5:{s:4:\"name\";s:16:\"WPML Test Config\";s:14:\"override_local\";b:1;s:4:\"path\";s:44:\"wpml-config/wpml-test-config/wpml-config.xml\";s:7:\"updated\";i:1429103280;s:4:\"hash\";s:32:\"9c3bb313d5a4f028bebfa8fc8af990a3\";}i:85;O:8:\"stdClass\":5:{s:4:\"name\";s:9:\"Yoast SEO\";s:14:\"override_local\";b:1;s:4:\"path\";s:37:\"wpml-config/yoast-seo/wpml-config.xml\";s:7:\"updated\";i:1530098880;s:4:\"hash\";s:32:\"4014a9b37ac42f0cc726390fb9088ebc\";}}s:6:\"themes\";a:25:{i:0;O:8:\"stdClass\":5:{s:4:\"name\";s:5:\"Astra\";s:14:\"override_local\";b:1;s:4:\"path\";s:33:\"wpml-config/astra/wpml-config.xml\";s:7:\"updated\";i:1628079458;s:4:\"hash\";s:32:\"b33a69c7d46c8abe69cb63b74b0ad975\";}i:1;O:8:\"stdClass\":5:{s:4:\"name\";s:5:\"Avada\";s:14:\"override_local\";b:1;s:4:\"path\";s:33:\"wpml-config/avada/wpml-config.xml\";s:7:\"updated\";i:1649361247;s:4:\"hash\";s:32:\"df213331020e6d7b524150a55e11d14c\";}i:2;O:8:\"stdClass\":5:{s:4:\"name\";s:8:\"Brooklyn\";s:14:\"override_local\";b:1;s:4:\"path\";s:36:\"wpml-config/brooklyn/wpml-config.xml\";s:7:\"updated\";i:1574177482;s:4:\"hash\";s:32:\"960edb3057ad96e2863221e82a4c69d2\";}i:3;O:8:\"stdClass\":5:{s:4:\"name\";s:6:\"Canvas\";s:14:\"override_local\";b:1;s:4:\"path\";s:34:\"wpml-config/canvas/wpml-config.xml\";s:7:\"updated\";i:1476729660;s:4:\"hash\";s:32:\"ea1da43b18f87c4aa73982113067cd95\";}i:4;O:8:\"stdClass\":5:{s:4:\"name\";s:9:\"Customizr\";s:14:\"override_local\";b:0;s:4:\"path\";s:37:\"wpml-config/customizr/wpml-config.xml\";s:7:\"updated\";i:1440909000;s:4:\"hash\";s:32:\"d63f73a0df72ab558bdbfaadaeb9c737\";}i:5;O:8:\"stdClass\":5:{s:4:\"name\";s:4:\"Divi\";s:14:\"override_local\";b:1;s:4:\"path\";s:32:\"wpml-config/Divi/wpml-config.xml\";s:7:\"updated\";i:1641297629;s:4:\"hash\";s:32:\"7f75777d03ee13c4667e2bc5ea30f519\";}i:6;O:8:\"stdClass\":5:{s:4:\"name\";s:4:\"The7\";s:14:\"override_local\";b:1;s:4:\"path\";s:35:\"wpml-config/dt-the7/wpml-config.xml\";s:7:\"updated\";i:1534160160;s:4:\"hash\";s:32:\"b99fe39e5d53275b0237a65894036893\";}i:7;O:8:\"stdClass\":5:{s:4:\"name\";s:10:\"Emerald CV\";s:14:\"override_local\";b:1;s:4:\"path\";s:38:\"wpml-config/emerald-cv/wpml-config.xml\";s:7:\"updated\";i:1460387160;s:4:\"hash\";s:32:\"3ab5fd101b71e7b306e48a07801c7557\";}i:8;O:8:\"stdClass\":5:{s:4:\"name\";s:6:\"Enfold\";s:14:\"override_local\";b:1;s:4:\"path\";s:34:\"wpml-config/enfold/wpml-config.xml\";s:7:\"updated\";i:1645001684;s:4:\"hash\";s:32:\"50b4ee78030084609de9e138d9e13ca8\";}i:9;O:8:\"stdClass\":5:{s:4:\"name\";s:5:\"Extra\";s:14:\"override_local\";b:1;s:4:\"path\";s:33:\"wpml-config/extra/wpml-config.xml\";s:7:\"updated\";i:1641297629;s:4:\"hash\";s:32:\"dfc7129b05c450f3099f67bafadd4dc1\";}i:10;O:8:\"stdClass\":5:{s:4:\"name\";s:8:\"Function\";s:14:\"override_local\";b:1;s:4:\"path\";s:36:\"wpml-config/function/wpml-config.xml\";s:7:\"updated\";i:1476729720;s:4:\"hash\";s:32:\"bb6dd583fb2a28ee5c4e2a264a770d60\";}i:11;O:8:\"stdClass\":5:{s:4:\"name\";s:13:\"GeneratePress\";s:14:\"override_local\";b:0;s:4:\"path\";s:41:\"wpml-config/generatepress/wpml-config.xml\";s:7:\"updated\";i:1591094953;s:4:\"hash\";s:32:\"4fba6e5837b20c7b3e763a4edb85dc47\";}i:12;O:8:\"stdClass\":5:{s:4:\"name\";s:7:\"Genesis\";s:14:\"override_local\";b:1;s:4:\"path\";s:35:\"wpml-config/genesis/wpml-config.xml\";s:7:\"updated\";i:1456825680;s:4:\"hash\";s:32:\"795657d127a84e450ad21218284bdd28\";}i:13;O:8:\"stdClass\":5:{s:4:\"name\";s:36:\"IDStore - Responsive WordPress Theme\";s:14:\"override_local\";b:1;s:4:\"path\";s:62:\"wpml-config/idstore-responsive-wordpress-theme/wpml-config.xml\";s:7:\"updated\";i:1499457240;s:4:\"hash\";s:32:\"1c49e6754e661e5eb1c301f8874829da\";}i:14;O:8:\"stdClass\":5:{s:4:\"name\";s:6:\"Luster\";s:14:\"override_local\";b:0;s:4:\"path\";s:34:\"wpml-config/luster/wpml-config.xml\";s:7:\"updated\";i:1574177482;s:4:\"hash\";s:32:\"82a924b258dea8a7d87ba0002b561b1a\";}i:15;O:8:\"stdClass\":5:{s:4:\"name\";s:4:\"Port\";s:14:\"override_local\";b:1;s:4:\"path\";s:32:\"wpml-config/port/wpml-config.xml\";s:7:\"updated\";i:1426496160;s:4:\"hash\";s:32:\"788cce209545b94cfede660d543d7013\";}i:16;O:8:\"stdClass\":5:{s:4:\"name\";s:3:\"Pro\";s:14:\"override_local\";b:1;s:4:\"path\";s:31:\"wpml-config/pro/wpml-config.xml\";s:7:\"updated\";i:1622456765;s:4:\"hash\";s:32:\"cc3a7bc1e76ae1226de4c911634e8625\";}i:17;O:8:\"stdClass\":5:{s:4:\"name\";s:10:\"Relevanssi\";s:14:\"override_local\";b:1;s:4:\"path\";s:38:\"wpml-config/relevanssi/wpml-config.xml\";s:7:\"updated\";i:1519735440;s:4:\"hash\";s:32:\"c630dfd3df777607e8f43ea201b413d0\";}i:18;O:8:\"stdClass\":5:{s:4:\"name\";s:18:\"Relevanssi Premium\";s:14:\"override_local\";b:1;s:4:\"path\";s:46:\"wpml-config/relevanssi-premium/wpml-config.xml\";s:7:\"updated\";i:1519735440;s:4:\"hash\";s:32:\"c630dfd3df777607e8f43ea201b413d0\";}i:19;O:8:\"stdClass\":5:{s:4:\"name\";s:6:\"Resort\";s:14:\"override_local\";b:1;s:4:\"path\";s:34:\"wpml-config/resort/wpml-config.xml\";s:7:\"updated\";i:1491314280;s:4:\"hash\";s:32:\"363adea9467157a4e0b49d50c2be3b3f\";}i:20;O:8:\"stdClass\":5:{s:4:\"name\";s:6:\"Reveal\";s:14:\"override_local\";b:1;s:4:\"path\";s:34:\"wpml-config/reveal/wpml-config.xml\";s:7:\"updated\";i:1461595980;s:4:\"hash\";s:32:\"58db88b09a090c9fcff3d65bd031d14a\";}i:21;O:8:\"stdClass\":5:{s:4:\"name\";s:13:\"ReWalk Parent\";s:14:\"override_local\";b:0;s:4:\"path\";s:41:\"wpml-config/rewalk-parent/wpml-config.xml\";s:7:\"updated\";i:1480345020;s:4:\"hash\";s:32:\"7b17377ed5e4226bc7e3d44270bc7924\";}i:22;O:8:\"stdClass\":5:{s:4:\"name\";s:10:\"Scrollider\";s:14:\"override_local\";b:0;s:4:\"path\";s:38:\"wpml-config/scrollider/wpml-config.xml\";s:7:\"updated\";i:1479395940;s:4:\"hash\";s:32:\"83fbe85052a8e7eb7ac61496187c7271\";}i:23;O:8:\"stdClass\":5:{s:4:\"name\";s:6:\"Uncode\";s:14:\"override_local\";b:1;s:4:\"path\";s:34:\"wpml-config/uncode/wpml-config.xml\";s:7:\"updated\";i:1612368753;s:4:\"hash\";s:32:\"5fc00f036d83b26035262343c7d3d2db\";}i:24;O:8:\"stdClass\":5:{s:4:\"name\";s:1:\"X\";s:14:\"override_local\";b:1;s:4:\"path\";s:29:\"wpml-config/x/wpml-config.xml\";s:7:\"updated\";i:1622456765;s:4:\"hash\";s:32:\"7d8b4f3e70b303df882b029c6ed872fc\";}}}','no');
INSERT INTO `wp_options` VALUES (184,'wpml_config_index_updated','1652690714','no');
INSERT INTO `wp_options` VALUES (185,'wpml_config_files_arr','O:8:\"stdClass\":2:{s:6:\"themes\";a:0:{}s:7:\"plugins\";a:1:{s:21:\"WPML Multilingual CMS\";s:14438:\"<wpml-config>\n	<custom-fields>\n		<custom-field action=\"translate\">title</custom-field>\n		<custom-field action=\"translate\">description</custom-field>\n		<custom-field action=\"translate\">keywords</custom-field>\n		<custom-field action=\"ignore\">_edit_last</custom-field>\n		<custom-field action=\"ignore\">_edit_lock</custom-field>\n		<custom-field action=\"ignore\">_wp_page_template</custom-field>\n		<custom-field action=\"ignore\">_wp_attachment_metadata</custom-field>\n		<custom-field action=\"ignore\">original_post_id</custom-field>\n		<custom-field action=\"ignore\">_wpml_original_post_id</custom-field>\n		<custom-field action=\"ignore\">_wp_old_slug</custom-field>\n		<custom-field action=\"ignore\">_icl_translator_note</custom-field>\n		<custom-field action=\"ignore\">_alp_processed</custom-field>\n		<custom-field action=\"ignore\">_pingme</custom-field>\n		<custom-field action=\"ignore\">_encloseme</custom-field>\n		<custom-field action=\"ignore\">_icl_lang_duplicate_of</custom-field>\n		<custom-field action=\"ignore\">_thumbnail_id</custom-field>\n		<custom-field action=\"ignore\">_wp_attached_file</custom-field>\n		<custom-field action=\"translate\">_wp_attachment_image_alt</custom-field>\n	</custom-fields>\n	<taxonomies>\n		<taxonomy translate=\"1\">translation_priority</taxonomy>\n	</taxonomies>\n	<language-switcher-settings>\n		<key name=\"link_empty\">0</key>\n		<key name=\"statics\">\n			<key name=\"footer\">\n				<key name=\"show\">0</key>\n				<key name=\"display_flags\">1</key>\n				<key name=\"display_names_in_current_lang\">1</key>\n				<key name=\"display_names_in_native_lang\">1</key>\n				<key name=\"display_link_for_current_lang\">1</key>\n				<key name=\"font_current_normal\">#444444</key>\n				<key name=\"font_current_hover\">#000000</key>\n				<key name=\"background_current_normal\">#ffffff</key>\n				<key name=\"background_current_hover\">#eeeeee</key>\n				<key name=\"font_other_normal\">#444444</key>\n				<key name=\"font_other_hover\">#000000</key>\n				<key name=\"background_other_normal\">#ffffff</key>\n				<key name=\"background_other_hover\">#eeeeee</key>\n				<key name=\"border\">#cdcdcd</key>\n			</key>\n			<key name=\"post_translations\">\n				<key name=\"show\">0</key>\n				<key name=\"display_flags\">0</key>\n				<key name=\"display_names_in_current_lang\">1</key>\n				<key name=\"display_names_in_native_lang\">1</key>\n				<key name=\"display_link_for_current_lang\">0</key>\n				<key name=\"display_before_content\">1</key>\n				<key name=\"display_after_content\">0</key>\n				<key name=\"availability_text\">This post is also available in: %s</key>\n			</key>\n			<key name=\"shortcode_actions\">\n				<key name=\"show\">0</key>\n				<key name=\"display_flags\">0</key>\n				<key name=\"display_names_in_current_lang\">1</key>\n				<key name=\"display_names_in_native_lang\">1</key>\n				<key name=\"display_link_for_current_lang\">1</key>\n			</key>\n		</key>\n	</language-switcher-settings>\n	<custom-types>\n		<custom-type translate=\"1\">attachment</custom-type>\n		<custom-type translate=\"1\">wp_block</custom-type>\n		<custom-type translate=\"1\">wp_navigation</custom-type>\n		<custom-type translate=\"1\">wp_template</custom-type>\n		<custom-type translate=\"1\">wp_template_part</custom-type>\n	</custom-types>\n	<shortcode-list>call_to_action,newsletter,tours_shortcode,cta_button,woocommerce_thankyou,woocommerce_shop,table,custom_profile,symple_heading,row,tagcloud,sform,nano,add_eventon_list,che,era,essa,nel,gli,per,come,anima,ella,quel,show_gd_mylist_btn,su_spoiler,email,vul,wpv-view,wpv-post-field,accordion_item,citation,gallery,foogallery,user-submitted-posts,chronologie,adresse,get_unit_label,get_reference_label,woocommerce_api_manager_lost_api_key,wp-knowledgebase,testimonials_slider,rpwe,posts,nowotworu,intima-media,dostarcza,standaryzowany,jako,czarny,ekstrakt,kwas,std,dwuwodzian,stm_icon_box,ess_grid,rev_slider,linkview,dropcap,permalinklist,testimonial_slider,woocommerce_software_lost_license,text-blocks,wp_sitemap_page,wcmp_vendor,vendor_registration,efsrow,efscolumn,efsbutton,md_rev_slider,md_live_text,md_imagebox_full,flagallery,pbr_quicklinksmenu,rev_slider_vc,opalhotel_reservation_form,pbr_title_heading,pbr_testimonials,embedyt,yith_wcwl_wishlist,wcm_content_restricted,feature_box,woocommerce_en_check,wc_box,wc_row,wc_column,wc_fullwidth,wc_center,wp_social_sharing,infoboxes,testimonials,woocommerce_social_media_share_buttons,wcv_vendor_dashboard,wcv_shop_settings,wcv_orders,inplayer,useyourdrive,wp_blog_designer,us_blog,tt_address,tt_dashboard,envira-gallery,hotspotitem,woocommerce_klarna_checkout,wpml_mailto,contact-field,ux_banner,advanced_iframe,siteorigin_widget,ec_store,simpay_payment_receipt,su-mensaje,borlabs_cookie,contact_info,stm_boats_video,packages_orderdata,yith_ywraq_request_quote,woocommerce_pay,button,supsystic-tables,clean-login,woocommerce_pay,pdf-embedder,insertgenerator,youzer_register,wysija_form,video,customer-area,customer-area-dashboard,customer-area-private-files-home,customer-area-private-files,customer-account-home,customer-area-account,customer-area-logout,bookly-form,bookly-cancellation-confirmation,stm_classic_filter,popup_trigger,mainwp_archived_lists,wcv_vendorslist,dotpay_content,formularz,cyberactive_school_courses_selection_form,cyberactive_school_session_timeout,ditty_news_ticker,donationcampaign,das-list-events,event_embed,sectiontitle,learn_press_profile,ticket-submit,tickets,aanduiding,datum,thim-icon-box,ngg_images,wpdomainchecker,visualizer,mk_page_section,rssreviews,animate_this,simple-sitemap,gravityform,stm_tech_info,fep_submission_form,ucaddon_diagonal_event_box,wcv_feedback_form,newsletters_management,wcv_pro_dashboard,tm_pb_section,wwof_product_listing,res_map,jssupportticket,socialbar,socialbar_service,front-end-pm,stm_sidebar,give_receipt,donation_history,simpay_error,tm_pb_contact_field,jwp,woocommerce_checkout,mk_custom_list,sg_popup,icon,extra_wrap,frontier-post,invierno,appbox,highlight,ci_alert,vc_mad_products,dt_list,geoip-continent,geoip-country,geoip-region,geoip-city,geoip-postalcode,geoip-latitude,geoip-longitude,geoip-location,woocommerce_notices,stm_icon_box,post-timeline,tt_address,private-message,visualizer,ga_optout,manage_serial_key_usage,ut_header,site_name,bfname,order_id,menu-country,menu-prefer,accordion-item,mini-icon,gvlogic,stm_gmap,contact-form,iconbox,woocommerce_my_account,super_form,wpdm-all-packages,photoblocks,et_pb_map_pin,ginger_reset_cookie,su_divider,fbl_login_button,gmw_single_location,one_full,recent_products,custom_list,endif,jours,wpuf-login,lyte,product_table,wpuf-registration,wpuf_dashboard,amazon,member-pricing-table,rozinky,ngg_images,add_to_cart_url,srizonfbgallery,wysija_form,cl-itext,embedyt,icon_counter,text_block,vtftable,header_static,bookingcalendar,flexslider,anova-geoip-meta,zp_vc_slideshow_element,zp_scrollto,my_calendar_upcoming,wpv-post-url,fusion_button,su_tab,freeconsultation_technical_forum_link,vc_images_carousel,otgs_logo_url,wpv-conditional,wpv-view,teaser,dt_fancy_image,fusion_tagline_box,contact_us_add,content_box,tagline_box,us_iconbox,fusion_tab,fisicamente,one_half_sidebar,action-btn,invicta_contacts,pricing_price,button,icon_link,slideshow,vcex_milestone,secondary-demo,vh_pricing_table,category_name,blogurl,q_team,tab_nav_item</shortcode-list>\n\n	<built-with-page-builder><![CDATA[/<!-- wp:/]]></built-with-page-builder>\n\n	<gutenberg-blocks>\n		<gutenberg-block type=\"core/paragraph\" translate=\"1\">\n			<xpath>//p</xpath>\n		</gutenberg-block>\n		<gutenberg-block type=\"core/heading\" translate=\"1\">\n			<xpath>//*[self::h1 or self::h2 or self::h3 or self::h4 or self::h5 or self::h6]</xpath>\n		</gutenberg-block>\n		<gutenberg-block type=\"core/button\" translate=\"1\">\n			<xpath>//a</xpath>\n			<xpath type=\'link\'>//a/@href</xpath>\n		</gutenberg-block>\n		<gutenberg-block type=\"core/image\" translate=\"1\">\n			<xpath>//figure/figcaption</xpath>\n			<xpath>//figure//img/@alt</xpath>\n			<xpath>//figure//img/@title</xpath>\n			<xpath type=\'link\'>//figure/a/@href</xpath>\n		</gutenberg-block>\n		<gutenberg-block type=\"core/gallery\" translate=\"1\">\n			<xpath>//figure/figcaption</xpath>\n			<xpath>//figure/img/@alt</xpath>\n		</gutenberg-block>\n		<gutenberg-block type=\"core/media-text\" translate=\"1\">\n			<xpath>//figure/img/@alt</xpath>\n		</gutenberg-block>\n		<gutenberg-block type=\"core/list\" translate=\"1\">\n			<xpath>//ul/li|//ol/li</xpath>\n		</gutenberg-block>\n		<gutenberg-block type=\"core/quote\" translate=\"1\">\n			<xpath>//blockquote/p</xpath>\n			<xpath>//blockquote/cite</xpath>\n		</gutenberg-block>\n		<gutenberg-block type=\"core/audio\" translate=\"1\">\n			<xpath>//figure/figcaption</xpath>\n		</gutenberg-block>\n		<gutenberg-block type=\"core/video\" translate=\"1\">\n			<xpath>//figure/figcaption</xpath>\n		</gutenberg-block>\n		<gutenberg-block type=\"core/file\" translate=\"1\">\n			<xpath>//div/a</xpath>\n		</gutenberg-block>\n		<gutenberg-block type=\"core/cover\" translate=\"1\">\n			<xpath>//div/p</xpath>\n		</gutenberg-block>\n		<gutenberg-block type=\"core/search\" translate=\"1\">\n			<key name=\"label\" />\n			<key name=\"placeholder\" />\n			<key name=\"buttonText\" />\n		</gutenberg-block>\n		<!-- Since WP 5.0.0 core/cover-image is replaced with core/cover -->\n		<gutenberg-block type=\"core/cover-image\" translate=\"1\">\n			<xpath>//div/p</xpath>\n		</gutenberg-block>\n		<gutenberg-block type=\"core/subhead\" translate=\"1\">\n			<xpath>//p</xpath>\n		</gutenberg-block>\n		<gutenberg-block type=\"core/verse\" translate=\"1\">\n			<xpath>//pre</xpath>\n		</gutenberg-block>\n		<gutenberg-block type=\"core/table\" translate=\"1\">\n			<xpath>//th</xpath>\n			<xpath>//td</xpath>\n			<xpath>//figure/figcaption</xpath>\n		</gutenberg-block>\n		<gutenberg-block type=\"core/preformatted\" translate=\"1\">\n			<xpath>//pre</xpath>\n		</gutenberg-block>\n		<gutenberg-block type=\"core/pullquote\" translate=\"1\">\n			<xpath>//blockquote/p</xpath>\n			<xpath>//blockquote/cite</xpath>\n		</gutenberg-block>\n		<gutenberg-block type=\"core/navigation-link\" translate=\"1\">\n			<key name=\"label\" />\n			<key name=\"url\" />\n		</gutenberg-block>\n		<gutenberg-block type=\"core/column\" translate=\"0\" />\n		<gutenberg-block type=\"core/columns\" translate=\"0\" />\n		<gutenberg-block type=\"core/code\" translate=\"0\" />\n		<gutenberg-block type=\"core/more\" translate=\"0\" />\n		<gutenberg-block type=\"core/nextpage\" translate=\"0\" />\n		<gutenberg-block type=\"core/separator\" translate=\"0\" />\n		<gutenberg-block type=\"core/spacer\" translate=\"0\" />\n		<gutenberg-block type=\"core/shortcode\" translate=\"0\" />\n		<gutenberg-block type=\"core-embed/twitter\" translate=\"1\">\n			<xpath>//figure/figcaption</xpath>\n		</gutenberg-block>\n		<gutenberg-block type=\"core-embed/youtube\" translate=\"1\">\n			<xpath>//figure/figcaption</xpath>\n		</gutenberg-block>\n		<gutenberg-block type=\"core-embed/facebook\" translate=\"1\">\n			<xpath>//figure/figcaption</xpath>\n		</gutenberg-block>\n		<gutenberg-block type=\"core-embed/instagram\" translate=\"1\">\n			<xpath>//figure/figcaption</xpath>\n		</gutenberg-block>\n		<gutenberg-block type=\"core-embed/vimeo\" translate=\"1\">\n			<xpath>//figure/figcaption</xpath>\n		</gutenberg-block>\n		<gutenberg-block type=\"core-embed/soundcloud\" translate=\"1\">\n			<xpath>//figure/figcaption</xpath>\n		</gutenberg-block>\n		<gutenberg-block type=\"core-embed/spotify\" translate=\"1\">\n			<xpath>//figure/figcaption</xpath>\n		</gutenberg-block>\n		<gutenberg-block type=\"core-embed/flickr\" translate=\"1\">\n			<xpath>//figure/figcaption</xpath>\n		</gutenberg-block>\n		<gutenberg-block type=\"core-embed/animoto\" translate=\"1\">\n			<xpath>//figure/figcaption</xpath>\n		</gutenberg-block>\n		<gutenberg-block type=\"core-embed/collegehumor\" translate=\"1\">\n			<xpath>//figure/figcaption</xpath>\n		</gutenberg-block>\n		<gutenberg-block type=\"core-embed/dailymotion\" translate=\"1\">\n			<xpath>//figure/figcaption</xpath>\n		</gutenberg-block>\n		<gutenberg-block type=\"core-embed/funnyordie\" translate=\"1\">\n			<xpath>//figure/figcaption</xpath>\n		</gutenberg-block>\n		<gutenberg-block type=\"core-embed/hulu\" translate=\"1\">\n			<xpath>//figure/figcaption</xpath>\n		</gutenberg-block>\n		<gutenberg-block type=\"core-embed/imgur\" translate=\"1\">\n			<xpath>//figure/figcaption</xpath>\n		</gutenberg-block>\n		<gutenberg-block type=\"core-embed/issuu\" translate=\"1\">\n			<xpath>//figure/figcaption</xpath>\n		</gutenberg-block>\n		<gutenberg-block type=\"core-embed/kickstarter\" translate=\"1\">\n			<xpath>//figure/figcaption</xpath>\n		</gutenberg-block>\n		<gutenberg-block type=\"core-embed/meetup-com\" translate=\"1\">\n			<xpath>//figure/figcaption</xpath>\n		</gutenberg-block>\n		<gutenberg-block type=\"core-embed/mixcloud\" translate=\"1\">\n			<xpath>//figure/figcaption</xpath>\n		</gutenberg-block>\n		<gutenberg-block type=\"core-embed/photobucket\" translate=\"1\">\n			<xpath>//figure/figcaption</xpath>\n		</gutenberg-block>\n		<gutenberg-block type=\"core-embed/photobucket\" translate=\"1\">\n			<xpath>//figure/figcaption</xpath>\n		</gutenberg-block>\n		<gutenberg-block type=\"core-embed/polldaddy\" translate=\"1\">\n			<xpath>//figure/figcaption</xpath>\n		</gutenberg-block>\n		<gutenberg-block type=\"core-embed/reddit\" translate=\"1\">\n			<xpath>//figure/figcaption</xpath>\n		</gutenberg-block>\n		<gutenberg-block type=\"core-embed/reverbnation\" translate=\"1\">\n			<xpath>//figure/figcaption</xpath>\n		</gutenberg-block>\n		<gutenberg-block type=\"core-embed/screencast\" translate=\"1\">\n			<xpath>//figure/figcaption</xpath>\n		</gutenberg-block>\n		<gutenberg-block type=\"core-embed/scribd\" translate=\"1\">\n			<xpath>//figure/figcaption</xpath>\n		</gutenberg-block>\n		<gutenberg-block type=\"core-embed/slideshare\" translate=\"1\">\n			<xpath>//figure/figcaption</xpath>\n		</gutenberg-block>\n		<gutenberg-block type=\"core-embed/smugmug\" translate=\"1\">\n			<xpath>//figure/figcaption</xpath>\n		</gutenberg-block>\n		<gutenberg-block type=\"core-embed/speaker\" translate=\"1\">\n			<xpath>//figure/figcaption</xpath>\n		</gutenberg-block>\n		<gutenberg-block type=\"core-embed/ted\" translate=\"1\">\n			<xpath>//figure/figcaption</xpath>\n		</gutenberg-block>\n		<gutenberg-block type=\"core-embed/tumblr\" translate=\"1\">\n			<xpath>//figure/figcaption</xpath>\n		</gutenberg-block>\n		<gutenberg-block type=\"core-embed/videopress\" translate=\"1\">\n			<xpath>//figure/figcaption</xpath>\n		</gutenberg-block>\n		<gutenberg-block type=\"core-embed/wordpress\" translate=\"1\">\n			<xpath>//figure/figcaption</xpath>\n		</gutenberg-block>\n		<gutenberg-block type=\"core-embed/wordpress-tv\" translate=\"1\">\n			<xpath>//figure/figcaption</xpath>\n		</gutenberg-block>\n		<gutenberg-block type=\"core/html\" translate=\"1\">\n			<xpath>/*</xpath>\n		</gutenberg-block>\n	</gutenberg-blocks>\n</wpml-config>\n\";}}','no');
INSERT INTO `wp_options` VALUES (186,'wp_installer_settings','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','no');
INSERT INTO `wp_options` VALUES (188,'WPML(setup)','a:5:{s:13:\"is-tm-allowed\";b:1;s:8:\"who-mode\";a:1:{i:0;s:6:\"myself\";}s:13:\"original-lang\";s:2:\"uk\";s:16:\"translated-langs\";a:1:{i:0;s:2:\"ru\";}s:12:\"current-step\";s:7:\"license\";}','yes');
INSERT INTO `wp_options` VALUES (189,'WPML_Group_Keys','a:2:{i:0;s:11:\"WPML(setup)\";i:1;s:8:\"WPML(ST)\";}','yes');
INSERT INTO `wp_options` VALUES (190,'wpml_dependencies:installed_plugins','a:1:{s:26:\"sitepress-multilingual-cms\";s:5:\"4.3.6\";}','yes');
INSERT INTO `wp_options` VALUES (197,'acf_pro_license','','yes');
INSERT INTO `wp_options` VALUES (202,'installer_repositories_with_theme','a:1:{i:0;s:7:\"toolset\";}','yes');
INSERT INTO `wp_options` VALUES (208,'WPML(ST)','a:1:{s:50:\"WPML\\ST\\Batch\\Translation\\Records_schema_installed\";b:1;}','yes');
INSERT INTO `wp_options` VALUES (216,'theme_mods_Libra','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:11:\"header-menu\";i:3;s:11:\"footer-menu\";i:5;}s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_options` VALUES (225,'icl_admin_messages','a:2:{s:8:\"messages\";a:0:{}s:16:\"instant_messages\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (230,'category_children_all','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (231,'category_children_','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (235,'category_children_uk','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (236,'category_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (241,'otgs_share_local_components','a:1:{s:4:\"wpml\";i:0;}','yes');
INSERT INTO `wp_options` VALUES (242,'otgs_active_components','a:2:{s:6:\"plugin\";a:3:{i:0;a:3:{s:4:\"File\";s:34:\"advanced-custom-fields-pro/acf.php\";s:4:\"Name\";s:26:\"Advanced Custom Fields PRO\";s:7:\"Version\";s:6:\"5.12.2\";}i:1;a:3:{s:4:\"File\";s:40:\"sitepress-multilingual-cms/sitepress.php\";s:4:\"Name\";s:21:\"WPML Multilingual CMS\";s:7:\"Version\";s:5:\"4.3.6\";}i:2;a:3:{s:4:\"File\";s:34:\"wpml-string-translation/plugin.php\";s:4:\"Name\";s:23:\"WPML String Translation\";s:7:\"Version\";s:5:\"3.0.6\";}}s:5:\"theme\";a:1:{i:0;a:3:{s:8:\"Template\";s:5:\"Libra\";s:4:\"Name\";s:5:\"Libra\";s:7:\"Version\";s:4:\"1.00\";}}}','yes');
INSERT INTO `wp_options` VALUES (243,'wpml_start_version','4.3.6','yes');
INSERT INTO `wp_options` VALUES (244,'wpml_string_table_ok_for_mo_import','yes','yes');
INSERT INTO `wp_options` VALUES (247,'wpml_update_statuses','a:22:{s:31:\"wpml-upgrade-localization-files\";b:1;s:41:\"wpml-upgrade-fix-non-admin-with-admin-cap\";b:1;s:42:\"wpml-upgrade-table-translate-job-for-3-9-0\";b:1;s:50:\"wpml-upgrade-remove-translation-services-transient\";b:1;s:35:\"wpml-upgrade-display-mode-for-posts\";b:1;s:42:\"wpml-add-uuid-column-to-translation-status\";b:1;s:46:\"wpml-upgrade-element-type-length-and-collation\";b:1;s:45:\"wpml-upgrade-add-word-count-column-to-strings\";b:1;s:35:\"wpml-upgrade-media-without-language\";b:1;s:38:\"wpml-upgrade-media-duplication-in-core\";b:1;s:26:\"wpml-upgrade-chinese-flags\";b:1;s:51:\"wpml-upgrade-add-editor-column-to-icl-translate-job\";b:1;s:25:\"wpml-upgrade-wpml-site-id\";b:1;s:35:\"wpml-upgrade-wpml-site-id-remaining\";b:1;s:43:\"wpml-upgrade-add-location-column-to-strings\";b:1;s:41:\"wpml-upgrade-add-wrap-column-to-translate\";b:1;s:39:\"wpml-upgrade-add-wrap-column-to-strings\";b:1;s:46:\"wpml\\upgrade\\commands\\addcontextindextostrings\";b:1;s:56:\"wpml\\upgrade\\commands\\addstatusindextostringtranslations\";b:1;s:54:\"wpml\\upgrade\\commands\\addstringpackageidindextostrings\";b:1;s:46:\"wpml\\upgrade\\command\\disableoptionsautoloading\";b:1;s:46:\"wpml\\upgrade\\commands\\removerestdisablednotice\";b:1;}','yes');
INSERT INTO `wp_options` VALUES (248,'wpml-package-translation-string-packages-table-updated','0.0.2','yes');
INSERT INTO `wp_options` VALUES (249,'wpml-package-translation-string-table-updated','1','yes');
INSERT INTO `wp_options` VALUES (250,'wpml-package-translation-db-updates-run','a:1:{i:0;s:5:\"0.0.2\";}','yes');
INSERT INTO `wp_options` VALUES (253,'wpml_st_display_strings_scan_notices','1','yes');
INSERT INTO `wp_options` VALUES (254,'wpml_base_slug_translation','1','yes');
INSERT INTO `wp_options` VALUES (255,'widget_text_icl','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (256,'widget_icl_lang_sel_widget','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (257,'wpml_shortcode_list','a:291:{i:0;s:14:\"call_to_action\";i:1;s:10:\"newsletter\";i:2;s:15:\"tours_shortcode\";i:3;s:10:\"cta_button\";i:4;s:20:\"woocommerce_thankyou\";i:5;s:16:\"woocommerce_shop\";i:6;s:5:\"table\";i:7;s:14:\"custom_profile\";i:8;s:14:\"symple_heading\";i:9;s:3:\"row\";i:10;s:8:\"tagcloud\";i:11;s:5:\"sform\";i:12;s:4:\"nano\";i:13;s:16:\"add_eventon_list\";i:14;s:3:\"che\";i:15;s:3:\"era\";i:16;s:4:\"essa\";i:17;s:3:\"nel\";i:18;s:3:\"gli\";i:19;s:3:\"per\";i:20;s:4:\"come\";i:21;s:5:\"anima\";i:22;s:4:\"ella\";i:23;s:4:\"quel\";i:24;s:18:\"show_gd_mylist_btn\";i:25;s:10:\"su_spoiler\";i:26;s:5:\"email\";i:27;s:3:\"vul\";i:28;s:8:\"wpv-view\";i:29;s:14:\"wpv-post-field\";i:30;s:14:\"accordion_item\";i:31;s:8:\"citation\";i:32;s:7:\"gallery\";i:33;s:10:\"foogallery\";i:34;s:20:\"user-submitted-posts\";i:35;s:11:\"chronologie\";i:36;s:7:\"adresse\";i:37;s:14:\"get_unit_label\";i:38;s:19:\"get_reference_label\";i:39;s:36:\"woocommerce_api_manager_lost_api_key\";i:40;s:16:\"wp-knowledgebase\";i:41;s:19:\"testimonials_slider\";i:42;s:4:\"rpwe\";i:43;s:5:\"posts\";i:44;s:9:\"nowotworu\";i:45;s:12:\"intima-media\";i:46;s:9:\"dostarcza\";i:47;s:14:\"standaryzowany\";i:48;s:4:\"jako\";i:49;s:6:\"czarny\";i:50;s:8:\"ekstrakt\";i:51;s:4:\"kwas\";i:52;s:3:\"std\";i:53;s:10:\"dwuwodzian\";i:54;s:12:\"stm_icon_box\";i:55;s:8:\"ess_grid\";i:56;s:10:\"rev_slider\";i:57;s:8:\"linkview\";i:58;s:7:\"dropcap\";i:59;s:13:\"permalinklist\";i:60;s:18:\"testimonial_slider\";i:61;s:33:\"woocommerce_software_lost_license\";i:62;s:11:\"text-blocks\";i:63;s:15:\"wp_sitemap_page\";i:64;s:11:\"wcmp_vendor\";i:65;s:19:\"vendor_registration\";i:66;s:6:\"efsrow\";i:67;s:9:\"efscolumn\";i:68;s:9:\"efsbutton\";i:69;s:13:\"md_rev_slider\";i:70;s:12:\"md_live_text\";i:71;s:16:\"md_imagebox_full\";i:72;s:10:\"flagallery\";i:73;s:18:\"pbr_quicklinksmenu\";i:74;s:13:\"rev_slider_vc\";i:75;s:26:\"opalhotel_reservation_form\";i:76;s:17:\"pbr_title_heading\";i:77;s:16:\"pbr_testimonials\";i:78;s:7:\"embedyt\";i:79;s:18:\"yith_wcwl_wishlist\";i:80;s:22:\"wcm_content_restricted\";i:81;s:11:\"feature_box\";i:82;s:20:\"woocommerce_en_check\";i:83;s:6:\"wc_box\";i:84;s:6:\"wc_row\";i:85;s:9:\"wc_column\";i:86;s:12:\"wc_fullwidth\";i:87;s:9:\"wc_center\";i:88;s:17:\"wp_social_sharing\";i:89;s:9:\"infoboxes\";i:90;s:12:\"testimonials\";i:91;s:38:\"woocommerce_social_media_share_buttons\";i:92;s:20:\"wcv_vendor_dashboard\";i:93;s:17:\"wcv_shop_settings\";i:94;s:10:\"wcv_orders\";i:95;s:8:\"inplayer\";i:96;s:12:\"useyourdrive\";i:97;s:16:\"wp_blog_designer\";i:98;s:7:\"us_blog\";i:99;s:10:\"tt_address\";i:100;s:12:\"tt_dashboard\";i:101;s:14:\"envira-gallery\";i:102;s:11:\"hotspotitem\";i:103;s:27:\"woocommerce_klarna_checkout\";i:104;s:11:\"wpml_mailto\";i:105;s:13:\"contact-field\";i:106;s:9:\"ux_banner\";i:107;s:15:\"advanced_iframe\";i:108;s:17:\"siteorigin_widget\";i:109;s:8:\"ec_store\";i:110;s:22:\"simpay_payment_receipt\";i:111;s:10:\"su-mensaje\";i:112;s:14:\"borlabs_cookie\";i:113;s:12:\"contact_info\";i:114;s:15:\"stm_boats_video\";i:115;s:18:\"packages_orderdata\";i:116;s:24:\"yith_ywraq_request_quote\";i:117;s:15:\"woocommerce_pay\";i:118;s:6:\"button\";i:119;s:16:\"supsystic-tables\";i:120;s:11:\"clean-login\";i:121;s:15:\"woocommerce_pay\";i:122;s:12:\"pdf-embedder\";i:123;s:15:\"insertgenerator\";i:124;s:15:\"youzer_register\";i:125;s:11:\"wysija_form\";i:126;s:5:\"video\";i:127;s:13:\"customer-area\";i:128;s:23:\"customer-area-dashboard\";i:129;s:32:\"customer-area-private-files-home\";i:130;s:27:\"customer-area-private-files\";i:131;s:21:\"customer-account-home\";i:132;s:21:\"customer-area-account\";i:133;s:20:\"customer-area-logout\";i:134;s:11:\"bookly-form\";i:135;s:32:\"bookly-cancellation-confirmation\";i:136;s:18:\"stm_classic_filter\";i:137;s:13:\"popup_trigger\";i:138;s:21:\"mainwp_archived_lists\";i:139;s:15:\"wcv_vendorslist\";i:140;s:14:\"dotpay_content\";i:141;s:9:\"formularz\";i:142;s:41:\"cyberactive_school_courses_selection_form\";i:143;s:34:\"cyberactive_school_session_timeout\";i:144;s:17:\"ditty_news_ticker\";i:145;s:16:\"donationcampaign\";i:146;s:15:\"das-list-events\";i:147;s:11:\"event_embed\";i:148;s:12:\"sectiontitle\";i:149;s:19:\"learn_press_profile\";i:150;s:13:\"ticket-submit\";i:151;s:7:\"tickets\";i:152;s:10:\"aanduiding\";i:153;s:5:\"datum\";i:154;s:13:\"thim-icon-box\";i:155;s:10:\"ngg_images\";i:156;s:15:\"wpdomainchecker\";i:157;s:10:\"visualizer\";i:158;s:15:\"mk_page_section\";i:159;s:10:\"rssreviews\";i:160;s:12:\"animate_this\";i:161;s:14:\"simple-sitemap\";i:162;s:11:\"gravityform\";i:163;s:13:\"stm_tech_info\";i:164;s:19:\"fep_submission_form\";i:165;s:26:\"ucaddon_diagonal_event_box\";i:166;s:17:\"wcv_feedback_form\";i:167;s:22:\"newsletters_management\";i:168;s:17:\"wcv_pro_dashboard\";i:169;s:13:\"tm_pb_section\";i:170;s:20:\"wwof_product_listing\";i:171;s:7:\"res_map\";i:172;s:15:\"jssupportticket\";i:173;s:9:\"socialbar\";i:174;s:17:\"socialbar_service\";i:175;s:12:\"front-end-pm\";i:176;s:11:\"stm_sidebar\";i:177;s:12:\"give_receipt\";i:178;s:16:\"donation_history\";i:179;s:12:\"simpay_error\";i:180;s:19:\"tm_pb_contact_field\";i:181;s:3:\"jwp\";i:182;s:20:\"woocommerce_checkout\";i:183;s:14:\"mk_custom_list\";i:184;s:8:\"sg_popup\";i:185;s:4:\"icon\";i:186;s:10:\"extra_wrap\";i:187;s:13:\"frontier-post\";i:188;s:8:\"invierno\";i:189;s:6:\"appbox\";i:190;s:9:\"highlight\";i:191;s:8:\"ci_alert\";i:192;s:15:\"vc_mad_products\";i:193;s:7:\"dt_list\";i:194;s:15:\"geoip-continent\";i:195;s:13:\"geoip-country\";i:196;s:12:\"geoip-region\";i:197;s:10:\"geoip-city\";i:198;s:16:\"geoip-postalcode\";i:199;s:14:\"geoip-latitude\";i:200;s:15:\"geoip-longitude\";i:201;s:14:\"geoip-location\";i:202;s:19:\"woocommerce_notices\";i:203;s:12:\"stm_icon_box\";i:204;s:13:\"post-timeline\";i:205;s:10:\"tt_address\";i:206;s:15:\"private-message\";i:207;s:10:\"visualizer\";i:208;s:9:\"ga_optout\";i:209;s:23:\"manage_serial_key_usage\";i:210;s:9:\"ut_header\";i:211;s:9:\"site_name\";i:212;s:6:\"bfname\";i:213;s:8:\"order_id\";i:214;s:12:\"menu-country\";i:215;s:11:\"menu-prefer\";i:216;s:14:\"accordion-item\";i:217;s:9:\"mini-icon\";i:218;s:7:\"gvlogic\";i:219;s:8:\"stm_gmap\";i:220;s:12:\"contact-form\";i:221;s:7:\"iconbox\";i:222;s:22:\"woocommerce_my_account\";i:223;s:10:\"super_form\";i:224;s:17:\"wpdm-all-packages\";i:225;s:11:\"photoblocks\";i:226;s:13:\"et_pb_map_pin\";i:227;s:19:\"ginger_reset_cookie\";i:228;s:10:\"su_divider\";i:229;s:16:\"fbl_login_button\";i:230;s:19:\"gmw_single_location\";i:231;s:8:\"one_full\";i:232;s:15:\"recent_products\";i:233;s:11:\"custom_list\";i:234;s:5:\"endif\";i:235;s:5:\"jours\";i:236;s:10:\"wpuf-login\";i:237;s:4:\"lyte\";i:238;s:13:\"product_table\";i:239;s:17:\"wpuf-registration\";i:240;s:14:\"wpuf_dashboard\";i:241;s:6:\"amazon\";i:242;s:20:\"member-pricing-table\";i:243;s:7:\"rozinky\";i:244;s:10:\"ngg_images\";i:245;s:15:\"add_to_cart_url\";i:246;s:15:\"srizonfbgallery\";i:247;s:11:\"wysija_form\";i:248;s:8:\"cl-itext\";i:249;s:7:\"embedyt\";i:250;s:12:\"icon_counter\";i:251;s:10:\"text_block\";i:252;s:8:\"vtftable\";i:253;s:13:\"header_static\";i:254;s:15:\"bookingcalendar\";i:255;s:10:\"flexslider\";i:256;s:16:\"anova-geoip-meta\";i:257;s:23:\"zp_vc_slideshow_element\";i:258;s:11:\"zp_scrollto\";i:259;s:20:\"my_calendar_upcoming\";i:260;s:12:\"wpv-post-url\";i:261;s:13:\"fusion_button\";i:262;s:6:\"su_tab\";i:263;s:37:\"freeconsultation_technical_forum_link\";i:264;s:18:\"vc_images_carousel\";i:265;s:13:\"otgs_logo_url\";i:266;s:15:\"wpv-conditional\";i:267;s:8:\"wpv-view\";i:268;s:6:\"teaser\";i:269;s:14:\"dt_fancy_image\";i:270;s:18:\"fusion_tagline_box\";i:271;s:14:\"contact_us_add\";i:272;s:11:\"content_box\";i:273;s:11:\"tagline_box\";i:274;s:10:\"us_iconbox\";i:275;s:10:\"fusion_tab\";i:276;s:11:\"fisicamente\";i:277;s:16:\"one_half_sidebar\";i:278;s:10:\"action-btn\";i:279;s:16:\"invicta_contacts\";i:280;s:13:\"pricing_price\";i:281;s:6:\"button\";i:282;s:9:\"icon_link\";i:283;s:9:\"slideshow\";i:284;s:14:\"vcex_milestone\";i:285;s:14:\"secondary-demo\";i:286;s:16:\"vh_pricing_table\";i:287;s:13:\"category_name\";i:288;s:7:\"blogurl\";i:289;s:6:\"q_team\";i:290;s:12:\"tab_nav_item\";}','yes');
INSERT INTO `wp_options` VALUES (258,'wpml_built_with_page_builder','a:1:{i:0;s:10:\"/<!-- wp:/\";}','yes');
INSERT INTO `wp_options` VALUES (259,'wpml-gutenberg-config','a:61:{s:14:\"core/paragraph\";a:1:{s:5:\"xpath\";a:1:{i:0;s:3:\"//p\";}}s:12:\"core/heading\";a:1:{s:5:\"xpath\";a:1:{i:0;s:73:\"//*[self::h1 or self::h2 or self::h3 or self::h4 or self::h5 or self::h6]\";}}s:11:\"core/button\";a:1:{s:5:\"xpath\";a:2:{i:0;s:3:\"//a\";i:1;a:2:{s:5:\"value\";s:9:\"//a/@href\";s:4:\"type\";s:4:\"LINK\";}}}s:10:\"core/image\";a:1:{s:5:\"xpath\";a:4:{i:0;s:19:\"//figure/figcaption\";i:1;s:18:\"//figure//img/@alt\";i:2;s:20:\"//figure//img/@title\";i:3;a:2:{s:5:\"value\";s:16:\"//figure/a/@href\";s:4:\"type\";s:4:\"LINK\";}}}s:12:\"core/gallery\";a:1:{s:5:\"xpath\";a:2:{i:0;s:19:\"//figure/figcaption\";i:1;s:17:\"//figure/img/@alt\";}}s:15:\"core/media-text\";a:1:{s:5:\"xpath\";a:1:{i:0;s:17:\"//figure/img/@alt\";}}s:9:\"core/list\";a:1:{s:5:\"xpath\";a:1:{i:0;s:15:\"//ul/li|//ol/li\";}}s:10:\"core/quote\";a:1:{s:5:\"xpath\";a:2:{i:0;s:14:\"//blockquote/p\";i:1;s:17:\"//blockquote/cite\";}}s:10:\"core/audio\";a:1:{s:5:\"xpath\";a:1:{i:0;s:19:\"//figure/figcaption\";}}s:10:\"core/video\";a:1:{s:5:\"xpath\";a:1:{i:0;s:19:\"//figure/figcaption\";}}s:9:\"core/file\";a:1:{s:5:\"xpath\";a:1:{i:0;s:7:\"//div/a\";}}s:10:\"core/cover\";a:1:{s:5:\"xpath\";a:1:{i:0;s:7:\"//div/p\";}}s:11:\"core/search\";a:1:{s:3:\"key\";a:3:{s:5:\"label\";a:0:{}s:11:\"placeholder\";a:0:{}s:10:\"buttonText\";a:0:{}}}s:16:\"core/cover-image\";a:1:{s:5:\"xpath\";a:1:{i:0;s:7:\"//div/p\";}}s:12:\"core/subhead\";a:1:{s:5:\"xpath\";a:1:{i:0;s:3:\"//p\";}}s:10:\"core/verse\";a:1:{s:5:\"xpath\";a:1:{i:0;s:5:\"//pre\";}}s:10:\"core/table\";a:1:{s:5:\"xpath\";a:3:{i:0;s:4:\"//th\";i:1;s:4:\"//td\";i:2;s:19:\"//figure/figcaption\";}}s:17:\"core/preformatted\";a:1:{s:5:\"xpath\";a:1:{i:0;s:5:\"//pre\";}}s:14:\"core/pullquote\";a:1:{s:5:\"xpath\";a:2:{i:0;s:14:\"//blockquote/p\";i:1;s:17:\"//blockquote/cite\";}}s:20:\"core/navigation-link\";a:1:{s:3:\"key\";a:2:{s:5:\"label\";a:0:{}s:3:\"url\";a:0:{}}}s:11:\"core/column\";a:0:{}s:12:\"core/columns\";a:0:{}s:9:\"core/code\";a:0:{}s:9:\"core/more\";a:0:{}s:13:\"core/nextpage\";a:0:{}s:14:\"core/separator\";a:0:{}s:11:\"core/spacer\";a:0:{}s:14:\"core/shortcode\";a:0:{}s:18:\"core-embed/twitter\";a:1:{s:5:\"xpath\";a:1:{i:0;s:19:\"//figure/figcaption\";}}s:18:\"core-embed/youtube\";a:1:{s:5:\"xpath\";a:1:{i:0;s:19:\"//figure/figcaption\";}}s:19:\"core-embed/facebook\";a:1:{s:5:\"xpath\";a:1:{i:0;s:19:\"//figure/figcaption\";}}s:20:\"core-embed/instagram\";a:1:{s:5:\"xpath\";a:1:{i:0;s:19:\"//figure/figcaption\";}}s:16:\"core-embed/vimeo\";a:1:{s:5:\"xpath\";a:1:{i:0;s:19:\"//figure/figcaption\";}}s:21:\"core-embed/soundcloud\";a:1:{s:5:\"xpath\";a:1:{i:0;s:19:\"//figure/figcaption\";}}s:18:\"core-embed/spotify\";a:1:{s:5:\"xpath\";a:1:{i:0;s:19:\"//figure/figcaption\";}}s:17:\"core-embed/flickr\";a:1:{s:5:\"xpath\";a:1:{i:0;s:19:\"//figure/figcaption\";}}s:18:\"core-embed/animoto\";a:1:{s:5:\"xpath\";a:1:{i:0;s:19:\"//figure/figcaption\";}}s:23:\"core-embed/collegehumor\";a:1:{s:5:\"xpath\";a:1:{i:0;s:19:\"//figure/figcaption\";}}s:22:\"core-embed/dailymotion\";a:1:{s:5:\"xpath\";a:1:{i:0;s:19:\"//figure/figcaption\";}}s:21:\"core-embed/funnyordie\";a:1:{s:5:\"xpath\";a:1:{i:0;s:19:\"//figure/figcaption\";}}s:15:\"core-embed/hulu\";a:1:{s:5:\"xpath\";a:1:{i:0;s:19:\"//figure/figcaption\";}}s:16:\"core-embed/imgur\";a:1:{s:5:\"xpath\";a:1:{i:0;s:19:\"//figure/figcaption\";}}s:16:\"core-embed/issuu\";a:1:{s:5:\"xpath\";a:1:{i:0;s:19:\"//figure/figcaption\";}}s:22:\"core-embed/kickstarter\";a:1:{s:5:\"xpath\";a:1:{i:0;s:19:\"//figure/figcaption\";}}s:21:\"core-embed/meetup-com\";a:1:{s:5:\"xpath\";a:1:{i:0;s:19:\"//figure/figcaption\";}}s:19:\"core-embed/mixcloud\";a:1:{s:5:\"xpath\";a:1:{i:0;s:19:\"//figure/figcaption\";}}s:22:\"core-embed/photobucket\";a:1:{s:5:\"xpath\";a:1:{i:0;s:19:\"//figure/figcaption\";}}s:20:\"core-embed/polldaddy\";a:1:{s:5:\"xpath\";a:1:{i:0;s:19:\"//figure/figcaption\";}}s:17:\"core-embed/reddit\";a:1:{s:5:\"xpath\";a:1:{i:0;s:19:\"//figure/figcaption\";}}s:23:\"core-embed/reverbnation\";a:1:{s:5:\"xpath\";a:1:{i:0;s:19:\"//figure/figcaption\";}}s:21:\"core-embed/screencast\";a:1:{s:5:\"xpath\";a:1:{i:0;s:19:\"//figure/figcaption\";}}s:17:\"core-embed/scribd\";a:1:{s:5:\"xpath\";a:1:{i:0;s:19:\"//figure/figcaption\";}}s:21:\"core-embed/slideshare\";a:1:{s:5:\"xpath\";a:1:{i:0;s:19:\"//figure/figcaption\";}}s:18:\"core-embed/smugmug\";a:1:{s:5:\"xpath\";a:1:{i:0;s:19:\"//figure/figcaption\";}}s:18:\"core-embed/speaker\";a:1:{s:5:\"xpath\";a:1:{i:0;s:19:\"//figure/figcaption\";}}s:14:\"core-embed/ted\";a:1:{s:5:\"xpath\";a:1:{i:0;s:19:\"//figure/figcaption\";}}s:17:\"core-embed/tumblr\";a:1:{s:5:\"xpath\";a:1:{i:0;s:19:\"//figure/figcaption\";}}s:21:\"core-embed/videopress\";a:1:{s:5:\"xpath\";a:1:{i:0;s:19:\"//figure/figcaption\";}}s:20:\"core-embed/wordpress\";a:1:{s:5:\"xpath\";a:1:{i:0;s:19:\"//figure/figcaption\";}}s:23:\"core-embed/wordpress-tv\";a:1:{s:5:\"xpath\";a:1:{i:0;s:19:\"//figure/figcaption\";}}s:9:\"core/html\";a:1:{s:5:\"xpath\";a:1:{i:0;s:2:\"/*\";}}}','yes');
INSERT INTO `wp_options` VALUES (274,'WPLANG','','yes');
INSERT INTO `wp_options` VALUES (275,'new_admin_email','dev-email@flywheel.local','yes');
INSERT INTO `wp_options` VALUES (286,'wpml_page_builders_options','a:1:{s:18:\"translate_raw_html\";i:0;}','yes');
INSERT INTO `wp_options` VALUES (309,'wpml_language_switcher','a:6:{s:8:\"migrated\";i:0;s:18:\"converted_menu_ids\";i:0;s:10:\"link_empty\";i:0;s:5:\"menus\";a:0:{}s:8:\"sidebars\";a:0:{}s:7:\"statics\";a:3:{s:6:\"footer\";O:19:\"WPML_LS_Footer_Slot\":2:{s:24:\"\0WPML_LS_Slot\0properties\";a:19:{s:10:\"slot_group\";s:7:\"statics\";s:9:\"slot_slug\";s:6:\"footer\";s:4:\"show\";i:0;s:8:\"template\";s:27:\"wpml-legacy-horizontal-list\";s:13:\"display_flags\";i:1;s:29:\"display_link_for_current_lang\";i:1;s:28:\"display_names_in_native_lang\";i:1;s:29:\"display_names_in_current_lang\";i:1;s:17:\"background_normal\";N;s:13:\"border_normal\";N;s:19:\"font_current_normal\";s:7:\"#444444\";s:18:\"font_current_hover\";s:7:\"#000000\";s:25:\"background_current_normal\";s:7:\"#ffffff\";s:24:\"background_current_hover\";s:7:\"#eeeeee\";s:17:\"font_other_normal\";s:7:\"#444444\";s:16:\"font_other_hover\";s:7:\"#000000\";s:23:\"background_other_normal\";s:7:\"#ffffff\";s:22:\"background_other_hover\";s:7:\"#eeeeee\";s:15:\"template_string\";N;}s:34:\"\0WPML_LS_Slot\0protected_properties\";a:2:{i:0;s:10:\"slot_group\";i:1;s:9:\"slot_slug\";}}s:17:\"post_translations\";O:30:\"WPML_LS_Post_Translations_Slot\":2:{s:24:\"\0WPML_LS_Slot\0properties\";a:22:{s:10:\"slot_group\";s:7:\"statics\";s:9:\"slot_slug\";s:17:\"post_translations\";s:4:\"show\";i:0;s:8:\"template\";s:29:\"wpml-legacy-post-translations\";s:13:\"display_flags\";i:0;s:29:\"display_link_for_current_lang\";i:0;s:28:\"display_names_in_native_lang\";i:1;s:29:\"display_names_in_current_lang\";i:1;s:17:\"background_normal\";N;s:13:\"border_normal\";N;s:19:\"font_current_normal\";N;s:18:\"font_current_hover\";N;s:25:\"background_current_normal\";N;s:24:\"background_current_hover\";N;s:17:\"font_other_normal\";N;s:16:\"font_other_hover\";N;s:23:\"background_other_normal\";N;s:22:\"background_other_hover\";N;s:15:\"template_string\";N;s:22:\"display_before_content\";i:1;s:21:\"display_after_content\";i:0;s:17:\"availability_text\";s:34:\"This post is also available in: %s\";}s:34:\"\0WPML_LS_Slot\0protected_properties\";a:2:{i:0;s:10:\"slot_group\";i:1;s:9:\"slot_slug\";}}s:17:\"shortcode_actions\";O:30:\"WPML_LS_Shortcode_Actions_Slot\":2:{s:24:\"\0WPML_LS_Slot\0properties\";a:19:{s:10:\"slot_group\";s:7:\"statics\";s:9:\"slot_slug\";s:17:\"shortcode_actions\";s:4:\"show\";i:0;s:8:\"template\";s:27:\"wpml-legacy-horizontal-list\";s:13:\"display_flags\";i:0;s:29:\"display_link_for_current_lang\";i:1;s:28:\"display_names_in_native_lang\";i:1;s:29:\"display_names_in_current_lang\";i:1;s:17:\"background_normal\";N;s:13:\"border_normal\";N;s:19:\"font_current_normal\";N;s:18:\"font_current_hover\";N;s:25:\"background_current_normal\";N;s:24:\"background_current_hover\";N;s:17:\"font_other_normal\";N;s:16:\"font_other_hover\";N;s:23:\"background_other_normal\";N;s:22:\"background_other_hover\";N;s:15:\"template_string\";N;}s:34:\"\0WPML_LS_Slot\0protected_properties\";a:2:{i:0;s:10:\"slot_group\";i:1;s:9:\"slot_slug\";}}}}','yes');
INSERT INTO `wp_options` VALUES (344,'options_logo','13','no');
INSERT INTO `wp_options` VALUES (345,'_options_logo','field_6282182c6c49c','no');
INSERT INTO `wp_options` VALUES (355,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (372,'options_header_btn','a:3:{s:5:\"title\";s:13:\"+380976658894\";s:3:\"url\";s:16:\"tel:380976658894\";s:6:\"target\";s:0:\"\";}','no');
INSERT INTO `wp_options` VALUES (373,'_options_header_btn','field_628231f29d764','no');
INSERT INTO `wp_options` VALUES (467,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:2:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-6.0.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-6.0.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-6.0-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-6.0-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"6.0\";s:7:\"version\";s:3:\"6.0\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-6.0.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-6.0.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-6.0-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-6.0-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"6.0\";s:7:\"version\";s:3:\"6.0\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1654182150;s:15:\"version_checked\";s:5:\"5.9.3\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (468,'_site_transient_update_plugins','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1654182149;s:8:\"response\";a:1:{s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:7:\"5.5.6.1\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/contact-form-7.5.5.6.1.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=2279696\";s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.7\";s:6:\"tested\";s:3:\"6.0\";s:12:\"requires_php\";b:0;}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (469,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1654182151;s:7:\"checked\";a:4:{s:5:\"Libra\";s:4:\"1.00\";s:12:\"twentytwenty\";s:3:\"1.9\";s:15:\"twentytwentyone\";s:3:\"1.5\";s:15:\"twentytwentytwo\";s:3:\"1.1\";}s:8:\"response\";a:3:{s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.2.0.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.6.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.2\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.2.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:15:\"twentytwentyone\";s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:3:\"1.0\";s:7:\"updated\";s:19:\"2022-05-20 18:54:03\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/translation/theme/twentytwentyone/1.0/uk.zip\";s:10:\"autoupdate\";b:1;}}}','no');
INSERT INTO `wp_options` VALUES (470,'wpcf7','a:2:{s:7:\"version\";s:5:\"5.5.6\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1652712449;s:7:\"version\";s:5:\"5.5.6\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}','yes');
INSERT INTO `wp_options` VALUES (537,'_transient_health-check-site-status-result','{\"good\":12,\"recommended\":5,\"critical\":1}','yes');
INSERT INTO `wp_options` VALUES (592,'secret_key','vPHHtULNh{]%P:|N3*Kze1M+_otxe;zRveV|/BL()rwF!x0^&-%Qj2nv0<Bl`.Hc','no');
INSERT INTO `wp_options` VALUES (741,'_site_transient_timeout_php_check_472f71d2a071d463a95f84346288dc89','1654260741','no');
INSERT INTO `wp_options` VALUES (742,'_site_transient_php_check_472f71d2a071d463a95f84346288dc89','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
INSERT INTO `wp_options` VALUES (905,'_transient_timeout_global_styles_Libra','1654182209','no');
INSERT INTO `wp_options` VALUES (906,'_transient_global_styles_Libra','body{--wp--preset--color--black: #000000;--wp--preset--color--cyan-bluish-gray: #abb8c3;--wp--preset--color--white: #ffffff;--wp--preset--color--pale-pink: #f78da7;--wp--preset--color--vivid-red: #cf2e2e;--wp--preset--color--luminous-vivid-orange: #ff6900;--wp--preset--color--luminous-vivid-amber: #fcb900;--wp--preset--color--light-green-cyan: #7bdcb5;--wp--preset--color--vivid-green-cyan: #00d084;--wp--preset--color--pale-cyan-blue: #8ed1fc;--wp--preset--color--vivid-cyan-blue: #0693e3;--wp--preset--color--vivid-purple: #9b51e0;--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);--wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);--wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);--wp--preset--gradient--blush-light-purple: linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);--wp--preset--gradient--blush-bordeaux: linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);--wp--preset--gradient--luminous-dusk: linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);--wp--preset--gradient--pale-ocean: linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);--wp--preset--gradient--electric-grass: linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);--wp--preset--gradient--midnight: linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);--wp--preset--duotone--dark-grayscale: url(\'#wp-duotone-dark-grayscale\');--wp--preset--duotone--grayscale: url(\'#wp-duotone-grayscale\');--wp--preset--duotone--purple-yellow: url(\'#wp-duotone-purple-yellow\');--wp--preset--duotone--blue-red: url(\'#wp-duotone-blue-red\');--wp--preset--duotone--midnight: url(\'#wp-duotone-midnight\');--wp--preset--duotone--magenta-yellow: url(\'#wp-duotone-magenta-yellow\');--wp--preset--duotone--purple-green: url(\'#wp-duotone-purple-green\');--wp--preset--duotone--blue-orange: url(\'#wp-duotone-blue-orange\');--wp--preset--font-size--small: 13px;--wp--preset--font-size--medium: 20px;--wp--preset--font-size--large: 36px;--wp--preset--font-size--x-large: 42px;}.has-black-color{color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-color{color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-color{color: var(--wp--preset--color--white) !important;}.has-pale-pink-color{color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-color{color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-color{color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-color{color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-color{color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-color{color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-color{color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-color{color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-color{color: var(--wp--preset--color--vivid-purple) !important;}.has-black-background-color{background-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-background-color{background-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-background-color{background-color: var(--wp--preset--color--white) !important;}.has-pale-pink-background-color{background-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-background-color{background-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-background-color{background-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-background-color{background-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-background-color{background-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-background-color{background-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-background-color{background-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-background-color{background-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-background-color{background-color: var(--wp--preset--color--vivid-purple) !important;}.has-black-border-color{border-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-border-color{border-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-border-color{border-color: var(--wp--preset--color--white) !important;}.has-pale-pink-border-color{border-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-border-color{border-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-border-color{border-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-border-color{border-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-border-color{border-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-border-color{border-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-border-color{border-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-border-color{border-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-border-color{border-color: var(--wp--preset--color--vivid-purple) !important;}.has-vivid-cyan-blue-to-vivid-purple-gradient-background{background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;}.has-light-green-cyan-to-vivid-green-cyan-gradient-background{background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;}.has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;}.has-luminous-vivid-orange-to-vivid-red-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;}.has-very-light-gray-to-cyan-bluish-gray-gradient-background{background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;}.has-cool-to-warm-spectrum-gradient-background{background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;}.has-blush-light-purple-gradient-background{background: var(--wp--preset--gradient--blush-light-purple) !important;}.has-blush-bordeaux-gradient-background{background: var(--wp--preset--gradient--blush-bordeaux) !important;}.has-luminous-dusk-gradient-background{background: var(--wp--preset--gradient--luminous-dusk) !important;}.has-pale-ocean-gradient-background{background: var(--wp--preset--gradient--pale-ocean) !important;}.has-electric-grass-gradient-background{background: var(--wp--preset--gradient--electric-grass) !important;}.has-midnight-gradient-background{background: var(--wp--preset--gradient--midnight) !important;}.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}.has-x-large-font-size{font-size: var(--wp--preset--font-size--x-large) !important;}','no');
INSERT INTO `wp_options` VALUES (907,'_transient_timeout_acf_plugin_updates','1654354950','no');
INSERT INTO `wp_options` VALUES (908,'_transient_acf_plugin_updates','a:4:{s:7:\"plugins\";a:0:{}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:6:\"5.12.2\";}}','no');
INSERT INTO `wp_options` VALUES (909,'_site_transient_timeout_theme_roots','1654183950','no');
INSERT INTO `wp_options` VALUES (910,'_site_transient_theme_roots','a:4:{s:5:\"Libra\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=591 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (15,11,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (16,11,'_edit_lock','1653064710:1');
INSERT INTO `wp_postmeta` VALUES (17,13,'_wp_attached_file','2022/05/logo.svg');
INSERT INTO `wp_postmeta` VALUES (18,14,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (19,14,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (20,14,'_menu_item_object_id','14');
INSERT INTO `wp_postmeta` VALUES (21,14,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (22,14,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (23,14,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (24,14,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (25,14,'_menu_item_url','#');
INSERT INTO `wp_postmeta` VALUES (27,15,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (28,15,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (29,15,'_menu_item_object_id','15');
INSERT INTO `wp_postmeta` VALUES (30,15,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (31,15,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (32,15,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (33,15,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (34,15,'_menu_item_url','#');
INSERT INTO `wp_postmeta` VALUES (36,2,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (37,2,'_wp_trash_meta_time','1652699679');
INSERT INTO `wp_postmeta` VALUES (38,2,'_wp_desired_post_slug','sample-page');
INSERT INTO `wp_postmeta` VALUES (39,18,'_edit_lock','1653070759:1');
INSERT INTO `wp_postmeta` VALUES (40,21,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (41,21,'_edit_lock','1653064738:1');
INSERT INTO `wp_postmeta` VALUES (42,28,'_wp_attached_file','2022/05/academy-celebrate-min-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (43,28,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:40:\"2022/05/academy-celebrate-min-scaled.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"academy-celebrate-min-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:34:\"academy-celebrate-min-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"academy-celebrate-min-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:33:\"academy-celebrate-min-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:35:\"academy-celebrate-min-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:35:\"academy-celebrate-min-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:25:\"academy-celebrate-min.jpg\";}');
INSERT INTO `wp_postmeta` VALUES (44,18,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (45,18,'flexible_content_0_banner_title','Бюро Перекладів');
INSERT INTO `wp_postmeta` VALUES (46,18,'_flexible_content_0_banner_title','field_62823fe9bd86a');
INSERT INTO `wp_postmeta` VALUES (47,18,'flexible_content_0_banner_text','На відміну від поширеної думки Lorem Ipsum не є випадковим набором літер. Він походить з уривку класичної латинської літератури 45 року до н.е., тобто має більш як 2000-річну історію. Річард Макклінток, професор латини з коледжу Хемпдін-Сидні, що у Вірджінії, вивчав одне з найменш зрозумілих латинських слів - consectetur - з уривку Lorem Ipsum, і у пошуку цього слова в класичній літературі знайшов безсумнівне джерело.');
INSERT INTO `wp_postmeta` VALUES (48,18,'_flexible_content_0_banner_text','field_6282402abd86b');
INSERT INTO `wp_postmeta` VALUES (49,18,'flexible_content_0_banner_button','a:3:{s:5:\"title\";s:33:\"Замовити переклад\";s:3:\"url\";s:9:\"/services\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (50,18,'_flexible_content_0_banner_button','field_62824036bd86c');
INSERT INTO `wp_postmeta` VALUES (51,18,'flexible_content_0_banner_image','34');
INSERT INTO `wp_postmeta` VALUES (52,18,'_flexible_content_0_banner_image','field_62824075bd86d');
INSERT INTO `wp_postmeta` VALUES (53,18,'flexible_content_0_form_shortcode','[contact-form-7 id=\"31\" title=\"Contact form 1\"]');
INSERT INTO `wp_postmeta` VALUES (54,18,'_flexible_content_0_form_shortcode','field_6282408fbd86e');
INSERT INTO `wp_postmeta` VALUES (55,18,'flexible_content','a:3:{i:0;s:11:\"banner_home\";i:1;s:8:\"benefits\";i:2;s:13:\"about_company\";}');
INSERT INTO `wp_postmeta` VALUES (56,18,'_flexible_content','field_62823f63bd869');
INSERT INTO `wp_postmeta` VALUES (57,29,'flexible_content_0_banner_title','Бюро Перекладів');
INSERT INTO `wp_postmeta` VALUES (58,29,'_flexible_content_0_banner_title','field_62823fe9bd86a');
INSERT INTO `wp_postmeta` VALUES (59,29,'flexible_content_0_banner_text','На відміну від поширеної думки Lorem Ipsum не є випадковим набором літер. Він походить з уривку класичної латинської літератури 45 року до н.е., тобто має більш як 2000-річну історію. Річард Макклінток, професор латини з коледжу Хемпдін-Сидні, що у Вірджінії, вивчав одне з найменш зрозумілих латинських слів - consectetur - з уривку Lorem Ipsum, і у пошуку цього слова в класичній літературі знайшов безсумнівне джерело. Lorem Ipsum походить з розділів 1.10.32 та 1.10.33 цицеронівського \"de Finibus Bonorum et Malorum\" (\"Про межі добра і зла\"), написаного у 45 році до н.е. Цей трактат з теорії етики був дуже популярним в епоху Відродження.\r\nПерший рядок Lorem Ipsum, \"Lorem ipsum dolor sit amet...\" походить з одного з рядків розділу 1.10.32.');
INSERT INTO `wp_postmeta` VALUES (60,29,'_flexible_content_0_banner_text','field_6282402abd86b');
INSERT INTO `wp_postmeta` VALUES (61,29,'flexible_content_0_banner_button','a:3:{s:5:\"title\";s:33:\"Замовити переклад\";s:3:\"url\";s:9:\"/services\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (62,29,'_flexible_content_0_banner_button','field_62824036bd86c');
INSERT INTO `wp_postmeta` VALUES (63,29,'flexible_content_0_banner_image','28');
INSERT INTO `wp_postmeta` VALUES (64,29,'_flexible_content_0_banner_image','field_62824075bd86d');
INSERT INTO `wp_postmeta` VALUES (65,29,'flexible_content_0_form_shortcode','');
INSERT INTO `wp_postmeta` VALUES (66,29,'_flexible_content_0_form_shortcode','field_6282408fbd86e');
INSERT INTO `wp_postmeta` VALUES (67,29,'flexible_content','a:1:{i:0;s:11:\"banner_home\";}');
INSERT INTO `wp_postmeta` VALUES (68,29,'_flexible_content','field_62823f63bd869');
INSERT INTO `wp_postmeta` VALUES (69,30,'flexible_content_0_banner_title','Бюро Перекладів');
INSERT INTO `wp_postmeta` VALUES (70,30,'_flexible_content_0_banner_title','field_62823fe9bd86a');
INSERT INTO `wp_postmeta` VALUES (71,30,'flexible_content_0_banner_text','На відміну від поширеної думки Lorem Ipsum не є випадковим набором літер. Він походить з уривку класичної латинської літератури 45 року до н.е., тобто має більш як 2000-річну історію. Річард Макклінток, професор латини з коледжу Хемпдін-Сидні, що у Вірджінії, вивчав одне з найменш зрозумілих латинських слів - consectetur - з уривку Lorem Ipsum, і у пошуку цього слова в класичній літературі знайшов безсумнівне джерело. Lorem Ipsum походить з розділів 1.10.32 та 1.10.33 цицеронівського \"de Finibus Bonorum et Malorum\" (\"Про межі добра і зла\"), написаного у 45 році до н.е. Цей трактат з теорії етики був дуже популярним в епоху Відродження.\r\n\r\nПерший рядок Lorem Ipsum, \"Lorem ipsum dolor sit amet...\" походить з одного з рядків розділу 1.10.32.');
INSERT INTO `wp_postmeta` VALUES (72,30,'_flexible_content_0_banner_text','field_6282402abd86b');
INSERT INTO `wp_postmeta` VALUES (73,30,'flexible_content_0_banner_button','a:3:{s:5:\"title\";s:33:\"Замовити переклад\";s:3:\"url\";s:9:\"/services\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (74,30,'_flexible_content_0_banner_button','field_62824036bd86c');
INSERT INTO `wp_postmeta` VALUES (75,30,'flexible_content_0_banner_image','28');
INSERT INTO `wp_postmeta` VALUES (76,30,'_flexible_content_0_banner_image','field_62824075bd86d');
INSERT INTO `wp_postmeta` VALUES (77,30,'flexible_content_0_form_shortcode','');
INSERT INTO `wp_postmeta` VALUES (78,30,'_flexible_content_0_form_shortcode','field_6282408fbd86e');
INSERT INTO `wp_postmeta` VALUES (79,30,'flexible_content','a:1:{i:0;s:11:\"banner_home\";}');
INSERT INTO `wp_postmeta` VALUES (80,30,'_flexible_content','field_62823f63bd869');
INSERT INTO `wp_postmeta` VALUES (81,31,'_form','<div class=\"form_wrap\">\n<h3>Зворотній зв\'язок</h3>\n[tel* tel-990 placeholder \"Ваш номер телефону\"]\n<div class=\"cta_button submit\">\n[submit \"Передзвоніть, будь-ласка\"]\n<span class=\"line\"></span>\n</div>\n</div>');
INSERT INTO `wp_postmeta` VALUES (82,31,'_mail','a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:45:\"Передзвоніть, будь-ласка\";s:6:\"sender\";s:37:\"[_site_title] <wordpress@libra.local>\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:4:\"body\";s:26:\"Телкфон : [tel-990]\";s:18:\"additional_headers\";s:19:\"Reply-To: [tel-404]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}');
INSERT INTO `wp_postmeta` VALUES (83,31,'_mail_2','a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:37:\"[_site_title] <wordpress@libra.local>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:105:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}');
INSERT INTO `wp_postmeta` VALUES (84,31,'_messages','a:22:{s:12:\"mail_sent_ok\";s:70:\"Дякую за повідомлення. Його надіслано.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:124:\"В одному або кількох полях є помилка. Перевірте та повторіть спробу.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:38:\"Поле є обов’язковим.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}');
INSERT INTO `wp_postmeta` VALUES (85,31,'_additional_settings','');
INSERT INTO `wp_postmeta` VALUES (86,31,'_locale','en_US');
INSERT INTO `wp_postmeta` VALUES (89,32,'flexible_content_0_banner_title','Бюро Перекладів');
INSERT INTO `wp_postmeta` VALUES (90,32,'_flexible_content_0_banner_title','field_62823fe9bd86a');
INSERT INTO `wp_postmeta` VALUES (91,32,'flexible_content_0_banner_text','На відміну від поширеної думки Lorem Ipsum не є випадковим набором літер. Він походить з уривку класичної латинської літератури 45 року до н.е., тобто має більш як 2000-річну історію. Річард Макклінток, професор латини з коледжу Хемпдін-Сидні, що у Вірджінії, вивчав одне з найменш зрозумілих латинських слів - consectetur - з уривку Lorem Ipsum, і у пошуку цього слова в класичній літературі знайшов безсумнівне джерело. Lorem Ipsum походить з розділів 1.10.32 та 1.10.33 цицеронівського \"de Finibus Bonorum et Malorum\" (\"Про межі добра і зла\"), написаного у 45 році до н.е. Цей трактат з теорії етики був дуже популярним в епоху Відродження.\r\n\r\nПерший рядок Lorem Ipsum, \"Lorem ipsum dolor sit amet...\" походить з одного з рядків розділу 1.10.32.');
INSERT INTO `wp_postmeta` VALUES (92,32,'_flexible_content_0_banner_text','field_6282402abd86b');
INSERT INTO `wp_postmeta` VALUES (93,32,'flexible_content_0_banner_button','a:3:{s:5:\"title\";s:33:\"Замовити переклад\";s:3:\"url\";s:9:\"/services\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (94,32,'_flexible_content_0_banner_button','field_62824036bd86c');
INSERT INTO `wp_postmeta` VALUES (95,32,'flexible_content_0_banner_image','28');
INSERT INTO `wp_postmeta` VALUES (96,32,'_flexible_content_0_banner_image','field_62824075bd86d');
INSERT INTO `wp_postmeta` VALUES (97,32,'flexible_content_0_form_shortcode','[contact-form-7 id=\"31\" title=\"Contact form 1\"]');
INSERT INTO `wp_postmeta` VALUES (98,32,'_flexible_content_0_form_shortcode','field_6282408fbd86e');
INSERT INTO `wp_postmeta` VALUES (99,32,'flexible_content','a:1:{i:0;s:11:\"banner_home\";}');
INSERT INTO `wp_postmeta` VALUES (100,32,'_flexible_content','field_62823f63bd869');
INSERT INTO `wp_postmeta` VALUES (103,33,'flexible_content_0_banner_title','Бюро Перекладів');
INSERT INTO `wp_postmeta` VALUES (104,33,'_flexible_content_0_banner_title','field_62823fe9bd86a');
INSERT INTO `wp_postmeta` VALUES (105,33,'flexible_content_0_banner_text','На відміну від поширеної думки Lorem Ipsum не є випадковим набором літер. Він походить з уривку класичної латинської літератури 45 року до н.е., тобто має більш як 2000-річну історію. Річард Макклінток, професор латини з коледжу Хемпдін-Сидні, що у Вірджінії, вивчав одне з найменш зрозумілих латинських слів - consectetur - з уривку Lorem Ipsum, і у пошуку цього слова в класичній літературі знайшов безсумнівне джерело.');
INSERT INTO `wp_postmeta` VALUES (106,33,'_flexible_content_0_banner_text','field_6282402abd86b');
INSERT INTO `wp_postmeta` VALUES (107,33,'flexible_content_0_banner_button','a:3:{s:5:\"title\";s:33:\"Замовити переклад\";s:3:\"url\";s:9:\"/services\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (108,33,'_flexible_content_0_banner_button','field_62824036bd86c');
INSERT INTO `wp_postmeta` VALUES (109,33,'flexible_content_0_banner_image','28');
INSERT INTO `wp_postmeta` VALUES (110,33,'_flexible_content_0_banner_image','field_62824075bd86d');
INSERT INTO `wp_postmeta` VALUES (111,33,'flexible_content_0_form_shortcode','[contact-form-7 id=\"31\" title=\"Contact form 1\"]');
INSERT INTO `wp_postmeta` VALUES (112,33,'_flexible_content_0_form_shortcode','field_6282408fbd86e');
INSERT INTO `wp_postmeta` VALUES (113,33,'flexible_content','a:1:{i:0;s:11:\"banner_home\";}');
INSERT INTO `wp_postmeta` VALUES (114,33,'_flexible_content','field_62823f63bd869');
INSERT INTO `wp_postmeta` VALUES (121,31,'_config_errors','a:1:{s:23:\"mail.additional_headers\";a:1:{i:0;a:2:{s:4:\"code\";i:102;s:4:\"args\";a:3:{s:7:\"message\";s:51:\"Invalid mailbox syntax is used in the %name% field.\";s:6:\"params\";a:1:{s:4:\"name\";s:8:\"Reply-To\";}s:4:\"link\";s:68:\"https://contactform7.com/configuration-errors/invalid-mailbox-syntax\";}}}}');
INSERT INTO `wp_postmeta` VALUES (122,34,'_wp_attached_file','2022/05/working-hard-party-hard-weekends-cropped-shot-woman-typing-keyboard-sitting-front-computer-monitor-freelancer-translating-new-project-writing-some-notes-note-pad.jpg');
INSERT INTO `wp_postmeta` VALUES (123,34,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:667;s:4:\"file\";s:173:\"2022/05/working-hard-party-hard-weekends-cropped-shot-woman-typing-keyboard-sitting-front-computer-monitor-freelancer-translating-new-project-writing-some-notes-note-pad.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:173:\"working-hard-party-hard-weekends-cropped-shot-woman-typing-keyboard-sitting-front-computer-monitor-freelancer-translating-new-project-writing-some-notes-note-pad-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:173:\"working-hard-party-hard-weekends-cropped-shot-woman-typing-keyboard-sitting-front-computer-monitor-freelancer-translating-new-project-writing-some-notes-note-pad-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:173:\"working-hard-party-hard-weekends-cropped-shot-woman-typing-keyboard-sitting-front-computer-monitor-freelancer-translating-new-project-writing-some-notes-note-pad-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (124,35,'flexible_content_0_banner_title','Бюро Перекладів');
INSERT INTO `wp_postmeta` VALUES (125,35,'_flexible_content_0_banner_title','field_62823fe9bd86a');
INSERT INTO `wp_postmeta` VALUES (126,35,'flexible_content_0_banner_text','На відміну від поширеної думки Lorem Ipsum не є випадковим набором літер. Він походить з уривку класичної латинської літератури 45 року до н.е., тобто має більш як 2000-річну історію. Річард Макклінток, професор латини з коледжу Хемпдін-Сидні, що у Вірджінії, вивчав одне з найменш зрозумілих латинських слів - consectetur - з уривку Lorem Ipsum, і у пошуку цього слова в класичній літературі знайшов безсумнівне джерело.');
INSERT INTO `wp_postmeta` VALUES (127,35,'_flexible_content_0_banner_text','field_6282402abd86b');
INSERT INTO `wp_postmeta` VALUES (128,35,'flexible_content_0_banner_button','a:3:{s:5:\"title\";s:33:\"Замовити переклад\";s:3:\"url\";s:9:\"/services\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (129,35,'_flexible_content_0_banner_button','field_62824036bd86c');
INSERT INTO `wp_postmeta` VALUES (130,35,'flexible_content_0_banner_image','34');
INSERT INTO `wp_postmeta` VALUES (131,35,'_flexible_content_0_banner_image','field_62824075bd86d');
INSERT INTO `wp_postmeta` VALUES (132,35,'flexible_content_0_form_shortcode','[contact-form-7 id=\"31\" title=\"Contact form 1\"]');
INSERT INTO `wp_postmeta` VALUES (133,35,'_flexible_content_0_form_shortcode','field_6282408fbd86e');
INSERT INTO `wp_postmeta` VALUES (134,35,'flexible_content','a:1:{i:0;s:11:\"banner_home\";}');
INSERT INTO `wp_postmeta` VALUES (135,35,'_flexible_content','field_62823f63bd869');
INSERT INTO `wp_postmeta` VALUES (138,18,'flexible_content_1_title','Переваги');
INSERT INTO `wp_postmeta` VALUES (139,18,'_flexible_content_1_title','field_6287a99ed57eb');
INSERT INTO `wp_postmeta` VALUES (140,18,'flexible_content_1_blocks_0_icon','53');
INSERT INTO `wp_postmeta` VALUES (141,18,'_flexible_content_1_blocks_0_icon','field_6287ab33d57ed');
INSERT INTO `wp_postmeta` VALUES (142,18,'flexible_content_1_blocks_0_block_title','Індивідуальний підхід');
INSERT INTO `wp_postmeta` VALUES (143,18,'_flexible_content_1_blocks_0_block_title','field_6287ab6ad57ee');
INSERT INTO `wp_postmeta` VALUES (144,18,'flexible_content_1_blocks_1_icon','51');
INSERT INTO `wp_postmeta` VALUES (145,18,'_flexible_content_1_blocks_1_icon','field_6287ab33d57ed');
INSERT INTO `wp_postmeta` VALUES (146,18,'flexible_content_1_blocks_1_block_title','Надійність і професійність');
INSERT INTO `wp_postmeta` VALUES (147,18,'_flexible_content_1_blocks_1_block_title','field_6287ab6ad57ee');
INSERT INTO `wp_postmeta` VALUES (148,18,'flexible_content_1_blocks_2_icon','49');
INSERT INTO `wp_postmeta` VALUES (149,18,'_flexible_content_1_blocks_2_icon','field_6287ab33d57ed');
INSERT INTO `wp_postmeta` VALUES (150,18,'flexible_content_1_blocks_2_block_title','Єкономія вашого часу і фінансів');
INSERT INTO `wp_postmeta` VALUES (151,18,'_flexible_content_1_blocks_2_block_title','field_6287ab6ad57ee');
INSERT INTO `wp_postmeta` VALUES (152,18,'flexible_content_1_blocks','4');
INSERT INTO `wp_postmeta` VALUES (153,18,'_flexible_content_1_blocks','field_6287aa74d57ec');
INSERT INTO `wp_postmeta` VALUES (154,42,'flexible_content_0_banner_title','Бюро Перекладів');
INSERT INTO `wp_postmeta` VALUES (155,42,'_flexible_content_0_banner_title','field_62823fe9bd86a');
INSERT INTO `wp_postmeta` VALUES (156,42,'flexible_content_0_banner_text','На відміну від поширеної думки Lorem Ipsum не є випадковим набором літер. Він походить з уривку класичної латинської літератури 45 року до н.е., тобто має більш як 2000-річну історію. Річард Макклінток, професор латини з коледжу Хемпдін-Сидні, що у Вірджінії, вивчав одне з найменш зрозумілих латинських слів - consectetur - з уривку Lorem Ipsum, і у пошуку цього слова в класичній літературі знайшов безсумнівне джерело.');
INSERT INTO `wp_postmeta` VALUES (157,42,'_flexible_content_0_banner_text','field_6282402abd86b');
INSERT INTO `wp_postmeta` VALUES (158,42,'flexible_content_0_banner_button','a:3:{s:5:\"title\";s:33:\"Замовити переклад\";s:3:\"url\";s:9:\"/services\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (159,42,'_flexible_content_0_banner_button','field_62824036bd86c');
INSERT INTO `wp_postmeta` VALUES (160,42,'flexible_content_0_banner_image','34');
INSERT INTO `wp_postmeta` VALUES (161,42,'_flexible_content_0_banner_image','field_62824075bd86d');
INSERT INTO `wp_postmeta` VALUES (162,42,'flexible_content_0_form_shortcode','[contact-form-7 id=\"31\" title=\"Contact form 1\"]');
INSERT INTO `wp_postmeta` VALUES (163,42,'_flexible_content_0_form_shortcode','field_6282408fbd86e');
INSERT INTO `wp_postmeta` VALUES (164,42,'flexible_content','a:2:{i:0;s:11:\"banner_home\";i:1;s:8:\"benefits\";}');
INSERT INTO `wp_postmeta` VALUES (165,42,'_flexible_content','field_62823f63bd869');
INSERT INTO `wp_postmeta` VALUES (166,42,'flexible_content_1_title','Переваги');
INSERT INTO `wp_postmeta` VALUES (167,42,'_flexible_content_1_title','field_6287a99ed57eb');
INSERT INTO `wp_postmeta` VALUES (168,42,'flexible_content_1_blocks_0_icon','41');
INSERT INTO `wp_postmeta` VALUES (169,42,'_flexible_content_1_blocks_0_icon','field_6287ab33d57ed');
INSERT INTO `wp_postmeta` VALUES (170,42,'flexible_content_1_blocks_0_block_title','Індивідуальний підхід');
INSERT INTO `wp_postmeta` VALUES (171,42,'_flexible_content_1_blocks_0_block_title','field_6287ab6ad57ee');
INSERT INTO `wp_postmeta` VALUES (172,42,'flexible_content_1_blocks_1_icon','41');
INSERT INTO `wp_postmeta` VALUES (173,42,'_flexible_content_1_blocks_1_icon','field_6287ab33d57ed');
INSERT INTO `wp_postmeta` VALUES (174,42,'flexible_content_1_blocks_1_block_title','Надійність і професійність');
INSERT INTO `wp_postmeta` VALUES (175,42,'_flexible_content_1_blocks_1_block_title','field_6287ab6ad57ee');
INSERT INTO `wp_postmeta` VALUES (176,42,'flexible_content_1_blocks_2_icon','41');
INSERT INTO `wp_postmeta` VALUES (177,42,'_flexible_content_1_blocks_2_icon','field_6287ab33d57ed');
INSERT INTO `wp_postmeta` VALUES (178,42,'flexible_content_1_blocks_2_block_title','Єкономія вашого часу і фінансів');
INSERT INTO `wp_postmeta` VALUES (179,42,'_flexible_content_1_blocks_2_block_title','field_6287ab6ad57ee');
INSERT INTO `wp_postmeta` VALUES (180,42,'flexible_content_1_blocks','3');
INSERT INTO `wp_postmeta` VALUES (181,42,'_flexible_content_1_blocks','field_6287aa74d57ec');
INSERT INTO `wp_postmeta` VALUES (182,18,'flexible_content_1_section_image','34');
INSERT INTO `wp_postmeta` VALUES (183,18,'_flexible_content_1_section_image','field_6287b53ee44f0');
INSERT INTO `wp_postmeta` VALUES (184,44,'flexible_content_0_banner_title','Бюро Перекладів');
INSERT INTO `wp_postmeta` VALUES (185,44,'_flexible_content_0_banner_title','field_62823fe9bd86a');
INSERT INTO `wp_postmeta` VALUES (186,44,'flexible_content_0_banner_text','На відміну від поширеної думки Lorem Ipsum не є випадковим набором літер. Він походить з уривку класичної латинської літератури 45 року до н.е., тобто має більш як 2000-річну історію. Річард Макклінток, професор латини з коледжу Хемпдін-Сидні, що у Вірджінії, вивчав одне з найменш зрозумілих латинських слів - consectetur - з уривку Lorem Ipsum, і у пошуку цього слова в класичній літературі знайшов безсумнівне джерело.');
INSERT INTO `wp_postmeta` VALUES (187,44,'_flexible_content_0_banner_text','field_6282402abd86b');
INSERT INTO `wp_postmeta` VALUES (188,44,'flexible_content_0_banner_button','a:3:{s:5:\"title\";s:33:\"Замовити переклад\";s:3:\"url\";s:9:\"/services\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (189,44,'_flexible_content_0_banner_button','field_62824036bd86c');
INSERT INTO `wp_postmeta` VALUES (190,44,'flexible_content_0_banner_image','34');
INSERT INTO `wp_postmeta` VALUES (191,44,'_flexible_content_0_banner_image','field_62824075bd86d');
INSERT INTO `wp_postmeta` VALUES (192,44,'flexible_content_0_form_shortcode','[contact-form-7 id=\"31\" title=\"Contact form 1\"]');
INSERT INTO `wp_postmeta` VALUES (193,44,'_flexible_content_0_form_shortcode','field_6282408fbd86e');
INSERT INTO `wp_postmeta` VALUES (194,44,'flexible_content','a:2:{i:0;s:11:\"banner_home\";i:1;s:8:\"benefits\";}');
INSERT INTO `wp_postmeta` VALUES (195,44,'_flexible_content','field_62823f63bd869');
INSERT INTO `wp_postmeta` VALUES (196,44,'flexible_content_1_title','Переваги');
INSERT INTO `wp_postmeta` VALUES (197,44,'_flexible_content_1_title','field_6287a99ed57eb');
INSERT INTO `wp_postmeta` VALUES (198,44,'flexible_content_1_blocks_0_icon','41');
INSERT INTO `wp_postmeta` VALUES (199,44,'_flexible_content_1_blocks_0_icon','field_6287ab33d57ed');
INSERT INTO `wp_postmeta` VALUES (200,44,'flexible_content_1_blocks_0_block_title','Індивідуальний підхід');
INSERT INTO `wp_postmeta` VALUES (201,44,'_flexible_content_1_blocks_0_block_title','field_6287ab6ad57ee');
INSERT INTO `wp_postmeta` VALUES (202,44,'flexible_content_1_blocks_1_icon','41');
INSERT INTO `wp_postmeta` VALUES (203,44,'_flexible_content_1_blocks_1_icon','field_6287ab33d57ed');
INSERT INTO `wp_postmeta` VALUES (204,44,'flexible_content_1_blocks_1_block_title','Надійність і професійність');
INSERT INTO `wp_postmeta` VALUES (205,44,'_flexible_content_1_blocks_1_block_title','field_6287ab6ad57ee');
INSERT INTO `wp_postmeta` VALUES (206,44,'flexible_content_1_blocks_2_icon','41');
INSERT INTO `wp_postmeta` VALUES (207,44,'_flexible_content_1_blocks_2_icon','field_6287ab33d57ed');
INSERT INTO `wp_postmeta` VALUES (208,44,'flexible_content_1_blocks_2_block_title','Єкономія вашого часу і фінансів');
INSERT INTO `wp_postmeta` VALUES (209,44,'_flexible_content_1_blocks_2_block_title','field_6287ab6ad57ee');
INSERT INTO `wp_postmeta` VALUES (210,44,'flexible_content_1_blocks','3');
INSERT INTO `wp_postmeta` VALUES (211,44,'_flexible_content_1_blocks','field_6287aa74d57ec');
INSERT INTO `wp_postmeta` VALUES (212,44,'flexible_content_1_section_image','34');
INSERT INTO `wp_postmeta` VALUES (213,44,'_flexible_content_1_section_image','field_6287b53ee44f0');
INSERT INTO `wp_postmeta` VALUES (214,45,'flexible_content_0_banner_title','Бюро Перекладів');
INSERT INTO `wp_postmeta` VALUES (215,45,'_flexible_content_0_banner_title','field_62823fe9bd86a');
INSERT INTO `wp_postmeta` VALUES (216,45,'flexible_content_0_banner_text','На відміну від поширеної думки Lorem Ipsum не є випадковим набором літер. Він походить з уривку класичної латинської літератури 45 року до н.е., тобто має більш як 2000-річну історію. Річард Макклінток, професор латини з коледжу Хемпдін-Сидні, що у Вірджінії, вивчав одне з найменш зрозумілих латинських слів - consectetur - з уривку Lorem Ipsum, і у пошуку цього слова в класичній літературі знайшов безсумнівне джерело.');
INSERT INTO `wp_postmeta` VALUES (217,45,'_flexible_content_0_banner_text','field_6282402abd86b');
INSERT INTO `wp_postmeta` VALUES (218,45,'flexible_content_0_banner_button','a:3:{s:5:\"title\";s:33:\"Замовити переклад\";s:3:\"url\";s:9:\"/services\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (219,45,'_flexible_content_0_banner_button','field_62824036bd86c');
INSERT INTO `wp_postmeta` VALUES (220,45,'flexible_content_0_banner_image','34');
INSERT INTO `wp_postmeta` VALUES (221,45,'_flexible_content_0_banner_image','field_62824075bd86d');
INSERT INTO `wp_postmeta` VALUES (222,45,'flexible_content_0_form_shortcode','[contact-form-7 id=\"31\" title=\"Contact form 1\"]');
INSERT INTO `wp_postmeta` VALUES (223,45,'_flexible_content_0_form_shortcode','field_6282408fbd86e');
INSERT INTO `wp_postmeta` VALUES (224,45,'flexible_content','a:2:{i:0;s:11:\"banner_home\";i:1;s:8:\"benefits\";}');
INSERT INTO `wp_postmeta` VALUES (225,45,'_flexible_content','field_62823f63bd869');
INSERT INTO `wp_postmeta` VALUES (226,45,'flexible_content_1_title','Переваги');
INSERT INTO `wp_postmeta` VALUES (227,45,'_flexible_content_1_title','field_6287a99ed57eb');
INSERT INTO `wp_postmeta` VALUES (228,45,'flexible_content_1_blocks_0_icon','41');
INSERT INTO `wp_postmeta` VALUES (229,45,'_flexible_content_1_blocks_0_icon','field_6287ab33d57ed');
INSERT INTO `wp_postmeta` VALUES (230,45,'flexible_content_1_blocks_0_block_title','Індивідуальний <br>підхід');
INSERT INTO `wp_postmeta` VALUES (231,45,'_flexible_content_1_blocks_0_block_title','field_6287ab6ad57ee');
INSERT INTO `wp_postmeta` VALUES (232,45,'flexible_content_1_blocks_1_icon','41');
INSERT INTO `wp_postmeta` VALUES (233,45,'_flexible_content_1_blocks_1_icon','field_6287ab33d57ed');
INSERT INTO `wp_postmeta` VALUES (234,45,'flexible_content_1_blocks_1_block_title','Надійність і <br>професійність');
INSERT INTO `wp_postmeta` VALUES (235,45,'_flexible_content_1_blocks_1_block_title','field_6287ab6ad57ee');
INSERT INTO `wp_postmeta` VALUES (236,45,'flexible_content_1_blocks_2_icon','41');
INSERT INTO `wp_postmeta` VALUES (237,45,'_flexible_content_1_blocks_2_icon','field_6287ab33d57ed');
INSERT INTO `wp_postmeta` VALUES (238,45,'flexible_content_1_blocks_2_block_title','Єкономія <br>вашого часу і фінансів');
INSERT INTO `wp_postmeta` VALUES (239,45,'_flexible_content_1_blocks_2_block_title','field_6287ab6ad57ee');
INSERT INTO `wp_postmeta` VALUES (240,45,'flexible_content_1_blocks','3');
INSERT INTO `wp_postmeta` VALUES (241,45,'_flexible_content_1_blocks','field_6287aa74d57ec');
INSERT INTO `wp_postmeta` VALUES (242,45,'flexible_content_1_section_image','34');
INSERT INTO `wp_postmeta` VALUES (243,45,'_flexible_content_1_section_image','field_6287b53ee44f0');
INSERT INTO `wp_postmeta` VALUES (244,46,'flexible_content_0_banner_title','Бюро Перекладів');
INSERT INTO `wp_postmeta` VALUES (245,46,'_flexible_content_0_banner_title','field_62823fe9bd86a');
INSERT INTO `wp_postmeta` VALUES (246,46,'flexible_content_0_banner_text','На відміну від поширеної думки Lorem Ipsum не є випадковим набором літер. Він походить з уривку класичної латинської літератури 45 року до н.е., тобто має більш як 2000-річну історію. Річард Макклінток, професор латини з коледжу Хемпдін-Сидні, що у Вірджінії, вивчав одне з найменш зрозумілих латинських слів - consectetur - з уривку Lorem Ipsum, і у пошуку цього слова в класичній літературі знайшов безсумнівне джерело.');
INSERT INTO `wp_postmeta` VALUES (247,46,'_flexible_content_0_banner_text','field_6282402abd86b');
INSERT INTO `wp_postmeta` VALUES (248,46,'flexible_content_0_banner_button','a:3:{s:5:\"title\";s:33:\"Замовити переклад\";s:3:\"url\";s:9:\"/services\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (249,46,'_flexible_content_0_banner_button','field_62824036bd86c');
INSERT INTO `wp_postmeta` VALUES (250,46,'flexible_content_0_banner_image','34');
INSERT INTO `wp_postmeta` VALUES (251,46,'_flexible_content_0_banner_image','field_62824075bd86d');
INSERT INTO `wp_postmeta` VALUES (252,46,'flexible_content_0_form_shortcode','[contact-form-7 id=\"31\" title=\"Contact form 1\"]');
INSERT INTO `wp_postmeta` VALUES (253,46,'_flexible_content_0_form_shortcode','field_6282408fbd86e');
INSERT INTO `wp_postmeta` VALUES (254,46,'flexible_content','a:2:{i:0;s:11:\"banner_home\";i:1;s:8:\"benefits\";}');
INSERT INTO `wp_postmeta` VALUES (255,46,'_flexible_content','field_62823f63bd869');
INSERT INTO `wp_postmeta` VALUES (256,46,'flexible_content_1_title','Переваги');
INSERT INTO `wp_postmeta` VALUES (257,46,'_flexible_content_1_title','field_6287a99ed57eb');
INSERT INTO `wp_postmeta` VALUES (258,46,'flexible_content_1_blocks_0_icon','41');
INSERT INTO `wp_postmeta` VALUES (259,46,'_flexible_content_1_blocks_0_icon','field_6287ab33d57ed');
INSERT INTO `wp_postmeta` VALUES (260,46,'flexible_content_1_blocks_0_block_title','Індивідуальний підхід');
INSERT INTO `wp_postmeta` VALUES (261,46,'_flexible_content_1_blocks_0_block_title','field_6287ab6ad57ee');
INSERT INTO `wp_postmeta` VALUES (262,46,'flexible_content_1_blocks_1_icon','41');
INSERT INTO `wp_postmeta` VALUES (263,46,'_flexible_content_1_blocks_1_icon','field_6287ab33d57ed');
INSERT INTO `wp_postmeta` VALUES (264,46,'flexible_content_1_blocks_1_block_title','Надійність і професійність');
INSERT INTO `wp_postmeta` VALUES (265,46,'_flexible_content_1_blocks_1_block_title','field_6287ab6ad57ee');
INSERT INTO `wp_postmeta` VALUES (266,46,'flexible_content_1_blocks_2_icon','41');
INSERT INTO `wp_postmeta` VALUES (267,46,'_flexible_content_1_blocks_2_icon','field_6287ab33d57ed');
INSERT INTO `wp_postmeta` VALUES (268,46,'flexible_content_1_blocks_2_block_title','Єкономія вашого часу і фінансів');
INSERT INTO `wp_postmeta` VALUES (269,46,'_flexible_content_1_blocks_2_block_title','field_6287ab6ad57ee');
INSERT INTO `wp_postmeta` VALUES (270,46,'flexible_content_1_blocks','3');
INSERT INTO `wp_postmeta` VALUES (271,46,'_flexible_content_1_blocks','field_6287aa74d57ec');
INSERT INTO `wp_postmeta` VALUES (272,46,'flexible_content_1_section_image','34');
INSERT INTO `wp_postmeta` VALUES (273,46,'_flexible_content_1_section_image','field_6287b53ee44f0');
INSERT INTO `wp_postmeta` VALUES (275,48,'flexible_content_0_banner_title','Бюро Перекладів');
INSERT INTO `wp_postmeta` VALUES (276,48,'_flexible_content_0_banner_title','field_62823fe9bd86a');
INSERT INTO `wp_postmeta` VALUES (277,48,'flexible_content_0_banner_text','На відміну від поширеної думки Lorem Ipsum не є випадковим набором літер. Він походить з уривку класичної латинської літератури 45 року до н.е., тобто має більш як 2000-річну історію. Річард Макклінток, професор латини з коледжу Хемпдін-Сидні, що у Вірджінії, вивчав одне з найменш зрозумілих латинських слів - consectetur - з уривку Lorem Ipsum, і у пошуку цього слова в класичній літературі знайшов безсумнівне джерело.');
INSERT INTO `wp_postmeta` VALUES (278,48,'_flexible_content_0_banner_text','field_6282402abd86b');
INSERT INTO `wp_postmeta` VALUES (279,48,'flexible_content_0_banner_button','a:3:{s:5:\"title\";s:33:\"Замовити переклад\";s:3:\"url\";s:9:\"/services\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (280,48,'_flexible_content_0_banner_button','field_62824036bd86c');
INSERT INTO `wp_postmeta` VALUES (281,48,'flexible_content_0_banner_image','34');
INSERT INTO `wp_postmeta` VALUES (282,48,'_flexible_content_0_banner_image','field_62824075bd86d');
INSERT INTO `wp_postmeta` VALUES (283,48,'flexible_content_0_form_shortcode','[contact-form-7 id=\"31\" title=\"Contact form 1\"]');
INSERT INTO `wp_postmeta` VALUES (284,48,'_flexible_content_0_form_shortcode','field_6282408fbd86e');
INSERT INTO `wp_postmeta` VALUES (285,48,'flexible_content','a:2:{i:0;s:11:\"banner_home\";i:1;s:8:\"benefits\";}');
INSERT INTO `wp_postmeta` VALUES (286,48,'_flexible_content','field_62823f63bd869');
INSERT INTO `wp_postmeta` VALUES (287,48,'flexible_content_1_title','Переваги');
INSERT INTO `wp_postmeta` VALUES (288,48,'_flexible_content_1_title','field_6287a99ed57eb');
INSERT INTO `wp_postmeta` VALUES (289,48,'flexible_content_1_blocks_0_icon','47');
INSERT INTO `wp_postmeta` VALUES (290,48,'_flexible_content_1_blocks_0_icon','field_6287ab33d57ed');
INSERT INTO `wp_postmeta` VALUES (291,48,'flexible_content_1_blocks_0_block_title','Індивідуальний підхід');
INSERT INTO `wp_postmeta` VALUES (292,48,'_flexible_content_1_blocks_0_block_title','field_6287ab6ad57ee');
INSERT INTO `wp_postmeta` VALUES (293,48,'flexible_content_1_blocks_1_icon','47');
INSERT INTO `wp_postmeta` VALUES (294,48,'_flexible_content_1_blocks_1_icon','field_6287ab33d57ed');
INSERT INTO `wp_postmeta` VALUES (295,48,'flexible_content_1_blocks_1_block_title','Надійність і професійність');
INSERT INTO `wp_postmeta` VALUES (296,48,'_flexible_content_1_blocks_1_block_title','field_6287ab6ad57ee');
INSERT INTO `wp_postmeta` VALUES (297,48,'flexible_content_1_blocks_2_icon','47');
INSERT INTO `wp_postmeta` VALUES (298,48,'_flexible_content_1_blocks_2_icon','field_6287ab33d57ed');
INSERT INTO `wp_postmeta` VALUES (299,48,'flexible_content_1_blocks_2_block_title','Єкономія вашого часу і фінансів');
INSERT INTO `wp_postmeta` VALUES (300,48,'_flexible_content_1_blocks_2_block_title','field_6287ab6ad57ee');
INSERT INTO `wp_postmeta` VALUES (301,48,'flexible_content_1_blocks','3');
INSERT INTO `wp_postmeta` VALUES (302,48,'_flexible_content_1_blocks','field_6287aa74d57ec');
INSERT INTO `wp_postmeta` VALUES (303,48,'flexible_content_1_section_image','34');
INSERT INTO `wp_postmeta` VALUES (304,48,'_flexible_content_1_section_image','field_6287b53ee44f0');
INSERT INTO `wp_postmeta` VALUES (305,49,'_wp_attached_file','2022/05/saving.svg');
INSERT INTO `wp_postmeta` VALUES (306,50,'flexible_content_0_banner_title','Бюро Перекладів');
INSERT INTO `wp_postmeta` VALUES (307,50,'_flexible_content_0_banner_title','field_62823fe9bd86a');
INSERT INTO `wp_postmeta` VALUES (308,50,'flexible_content_0_banner_text','На відміну від поширеної думки Lorem Ipsum не є випадковим набором літер. Він походить з уривку класичної латинської літератури 45 року до н.е., тобто має більш як 2000-річну історію. Річард Макклінток, професор латини з коледжу Хемпдін-Сидні, що у Вірджінії, вивчав одне з найменш зрозумілих латинських слів - consectetur - з уривку Lorem Ipsum, і у пошуку цього слова в класичній літературі знайшов безсумнівне джерело.');
INSERT INTO `wp_postmeta` VALUES (309,50,'_flexible_content_0_banner_text','field_6282402abd86b');
INSERT INTO `wp_postmeta` VALUES (310,50,'flexible_content_0_banner_button','a:3:{s:5:\"title\";s:33:\"Замовити переклад\";s:3:\"url\";s:9:\"/services\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (311,50,'_flexible_content_0_banner_button','field_62824036bd86c');
INSERT INTO `wp_postmeta` VALUES (312,50,'flexible_content_0_banner_image','34');
INSERT INTO `wp_postmeta` VALUES (313,50,'_flexible_content_0_banner_image','field_62824075bd86d');
INSERT INTO `wp_postmeta` VALUES (314,50,'flexible_content_0_form_shortcode','[contact-form-7 id=\"31\" title=\"Contact form 1\"]');
INSERT INTO `wp_postmeta` VALUES (315,50,'_flexible_content_0_form_shortcode','field_6282408fbd86e');
INSERT INTO `wp_postmeta` VALUES (316,50,'flexible_content','a:2:{i:0;s:11:\"banner_home\";i:1;s:8:\"benefits\";}');
INSERT INTO `wp_postmeta` VALUES (317,50,'_flexible_content','field_62823f63bd869');
INSERT INTO `wp_postmeta` VALUES (318,50,'flexible_content_1_title','Переваги');
INSERT INTO `wp_postmeta` VALUES (319,50,'_flexible_content_1_title','field_6287a99ed57eb');
INSERT INTO `wp_postmeta` VALUES (320,50,'flexible_content_1_blocks_0_icon','47');
INSERT INTO `wp_postmeta` VALUES (321,50,'_flexible_content_1_blocks_0_icon','field_6287ab33d57ed');
INSERT INTO `wp_postmeta` VALUES (322,50,'flexible_content_1_blocks_0_block_title','Індивідуальний підхід');
INSERT INTO `wp_postmeta` VALUES (323,50,'_flexible_content_1_blocks_0_block_title','field_6287ab6ad57ee');
INSERT INTO `wp_postmeta` VALUES (324,50,'flexible_content_1_blocks_1_icon','47');
INSERT INTO `wp_postmeta` VALUES (325,50,'_flexible_content_1_blocks_1_icon','field_6287ab33d57ed');
INSERT INTO `wp_postmeta` VALUES (326,50,'flexible_content_1_blocks_1_block_title','Надійність і професійність');
INSERT INTO `wp_postmeta` VALUES (327,50,'_flexible_content_1_blocks_1_block_title','field_6287ab6ad57ee');
INSERT INTO `wp_postmeta` VALUES (328,50,'flexible_content_1_blocks_2_icon','49');
INSERT INTO `wp_postmeta` VALUES (329,50,'_flexible_content_1_blocks_2_icon','field_6287ab33d57ed');
INSERT INTO `wp_postmeta` VALUES (330,50,'flexible_content_1_blocks_2_block_title','Єкономія вашого часу і фінансів');
INSERT INTO `wp_postmeta` VALUES (331,50,'_flexible_content_1_blocks_2_block_title','field_6287ab6ad57ee');
INSERT INTO `wp_postmeta` VALUES (332,50,'flexible_content_1_blocks','3');
INSERT INTO `wp_postmeta` VALUES (333,50,'_flexible_content_1_blocks','field_6287aa74d57ec');
INSERT INTO `wp_postmeta` VALUES (334,50,'flexible_content_1_section_image','34');
INSERT INTO `wp_postmeta` VALUES (335,50,'_flexible_content_1_section_image','field_6287b53ee44f0');
INSERT INTO `wp_postmeta` VALUES (336,51,'_wp_attached_file','2022/05/management.svg');
INSERT INTO `wp_postmeta` VALUES (337,52,'flexible_content_0_banner_title','Бюро Перекладів');
INSERT INTO `wp_postmeta` VALUES (338,52,'_flexible_content_0_banner_title','field_62823fe9bd86a');
INSERT INTO `wp_postmeta` VALUES (339,52,'flexible_content_0_banner_text','На відміну від поширеної думки Lorem Ipsum не є випадковим набором літер. Він походить з уривку класичної латинської літератури 45 року до н.е., тобто має більш як 2000-річну історію. Річард Макклінток, професор латини з коледжу Хемпдін-Сидні, що у Вірджінії, вивчав одне з найменш зрозумілих латинських слів - consectetur - з уривку Lorem Ipsum, і у пошуку цього слова в класичній літературі знайшов безсумнівне джерело.');
INSERT INTO `wp_postmeta` VALUES (340,52,'_flexible_content_0_banner_text','field_6282402abd86b');
INSERT INTO `wp_postmeta` VALUES (341,52,'flexible_content_0_banner_button','a:3:{s:5:\"title\";s:33:\"Замовити переклад\";s:3:\"url\";s:9:\"/services\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (342,52,'_flexible_content_0_banner_button','field_62824036bd86c');
INSERT INTO `wp_postmeta` VALUES (343,52,'flexible_content_0_banner_image','34');
INSERT INTO `wp_postmeta` VALUES (344,52,'_flexible_content_0_banner_image','field_62824075bd86d');
INSERT INTO `wp_postmeta` VALUES (345,52,'flexible_content_0_form_shortcode','[contact-form-7 id=\"31\" title=\"Contact form 1\"]');
INSERT INTO `wp_postmeta` VALUES (346,52,'_flexible_content_0_form_shortcode','field_6282408fbd86e');
INSERT INTO `wp_postmeta` VALUES (347,52,'flexible_content','a:2:{i:0;s:11:\"banner_home\";i:1;s:8:\"benefits\";}');
INSERT INTO `wp_postmeta` VALUES (348,52,'_flexible_content','field_62823f63bd869');
INSERT INTO `wp_postmeta` VALUES (349,52,'flexible_content_1_title','Переваги');
INSERT INTO `wp_postmeta` VALUES (350,52,'_flexible_content_1_title','field_6287a99ed57eb');
INSERT INTO `wp_postmeta` VALUES (351,52,'flexible_content_1_blocks_0_icon','47');
INSERT INTO `wp_postmeta` VALUES (352,52,'_flexible_content_1_blocks_0_icon','field_6287ab33d57ed');
INSERT INTO `wp_postmeta` VALUES (353,52,'flexible_content_1_blocks_0_block_title','Індивідуальний підхід');
INSERT INTO `wp_postmeta` VALUES (354,52,'_flexible_content_1_blocks_0_block_title','field_6287ab6ad57ee');
INSERT INTO `wp_postmeta` VALUES (355,52,'flexible_content_1_blocks_1_icon','51');
INSERT INTO `wp_postmeta` VALUES (356,52,'_flexible_content_1_blocks_1_icon','field_6287ab33d57ed');
INSERT INTO `wp_postmeta` VALUES (357,52,'flexible_content_1_blocks_1_block_title','Надійність і професійність');
INSERT INTO `wp_postmeta` VALUES (358,52,'_flexible_content_1_blocks_1_block_title','field_6287ab6ad57ee');
INSERT INTO `wp_postmeta` VALUES (359,52,'flexible_content_1_blocks_2_icon','49');
INSERT INTO `wp_postmeta` VALUES (360,52,'_flexible_content_1_blocks_2_icon','field_6287ab33d57ed');
INSERT INTO `wp_postmeta` VALUES (361,52,'flexible_content_1_blocks_2_block_title','Єкономія вашого часу і фінансів');
INSERT INTO `wp_postmeta` VALUES (362,52,'_flexible_content_1_blocks_2_block_title','field_6287ab6ad57ee');
INSERT INTO `wp_postmeta` VALUES (363,52,'flexible_content_1_blocks','3');
INSERT INTO `wp_postmeta` VALUES (364,52,'_flexible_content_1_blocks','field_6287aa74d57ec');
INSERT INTO `wp_postmeta` VALUES (365,52,'flexible_content_1_section_image','34');
INSERT INTO `wp_postmeta` VALUES (366,52,'_flexible_content_1_section_image','field_6287b53ee44f0');
INSERT INTO `wp_postmeta` VALUES (367,53,'_wp_attached_file','2022/05/user.svg');
INSERT INTO `wp_postmeta` VALUES (368,54,'flexible_content_0_banner_title','Бюро Перекладів');
INSERT INTO `wp_postmeta` VALUES (369,54,'_flexible_content_0_banner_title','field_62823fe9bd86a');
INSERT INTO `wp_postmeta` VALUES (370,54,'flexible_content_0_banner_text','На відміну від поширеної думки Lorem Ipsum не є випадковим набором літер. Він походить з уривку класичної латинської літератури 45 року до н.е., тобто має більш як 2000-річну історію. Річард Макклінток, професор латини з коледжу Хемпдін-Сидні, що у Вірджінії, вивчав одне з найменш зрозумілих латинських слів - consectetur - з уривку Lorem Ipsum, і у пошуку цього слова в класичній літературі знайшов безсумнівне джерело.');
INSERT INTO `wp_postmeta` VALUES (371,54,'_flexible_content_0_banner_text','field_6282402abd86b');
INSERT INTO `wp_postmeta` VALUES (372,54,'flexible_content_0_banner_button','a:3:{s:5:\"title\";s:33:\"Замовити переклад\";s:3:\"url\";s:9:\"/services\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (373,54,'_flexible_content_0_banner_button','field_62824036bd86c');
INSERT INTO `wp_postmeta` VALUES (374,54,'flexible_content_0_banner_image','34');
INSERT INTO `wp_postmeta` VALUES (375,54,'_flexible_content_0_banner_image','field_62824075bd86d');
INSERT INTO `wp_postmeta` VALUES (376,54,'flexible_content_0_form_shortcode','[contact-form-7 id=\"31\" title=\"Contact form 1\"]');
INSERT INTO `wp_postmeta` VALUES (377,54,'_flexible_content_0_form_shortcode','field_6282408fbd86e');
INSERT INTO `wp_postmeta` VALUES (378,54,'flexible_content','a:2:{i:0;s:11:\"banner_home\";i:1;s:8:\"benefits\";}');
INSERT INTO `wp_postmeta` VALUES (379,54,'_flexible_content','field_62823f63bd869');
INSERT INTO `wp_postmeta` VALUES (380,54,'flexible_content_1_title','Переваги');
INSERT INTO `wp_postmeta` VALUES (381,54,'_flexible_content_1_title','field_6287a99ed57eb');
INSERT INTO `wp_postmeta` VALUES (382,54,'flexible_content_1_blocks_0_icon','53');
INSERT INTO `wp_postmeta` VALUES (383,54,'_flexible_content_1_blocks_0_icon','field_6287ab33d57ed');
INSERT INTO `wp_postmeta` VALUES (384,54,'flexible_content_1_blocks_0_block_title','Індивідуальний підхід');
INSERT INTO `wp_postmeta` VALUES (385,54,'_flexible_content_1_blocks_0_block_title','field_6287ab6ad57ee');
INSERT INTO `wp_postmeta` VALUES (386,54,'flexible_content_1_blocks_1_icon','51');
INSERT INTO `wp_postmeta` VALUES (387,54,'_flexible_content_1_blocks_1_icon','field_6287ab33d57ed');
INSERT INTO `wp_postmeta` VALUES (388,54,'flexible_content_1_blocks_1_block_title','Надійність і професійність');
INSERT INTO `wp_postmeta` VALUES (389,54,'_flexible_content_1_blocks_1_block_title','field_6287ab6ad57ee');
INSERT INTO `wp_postmeta` VALUES (390,54,'flexible_content_1_blocks_2_icon','49');
INSERT INTO `wp_postmeta` VALUES (391,54,'_flexible_content_1_blocks_2_icon','field_6287ab33d57ed');
INSERT INTO `wp_postmeta` VALUES (392,54,'flexible_content_1_blocks_2_block_title','Єкономія вашого часу і фінансів');
INSERT INTO `wp_postmeta` VALUES (393,54,'_flexible_content_1_blocks_2_block_title','field_6287ab6ad57ee');
INSERT INTO `wp_postmeta` VALUES (394,54,'flexible_content_1_blocks','3');
INSERT INTO `wp_postmeta` VALUES (395,54,'_flexible_content_1_blocks','field_6287aa74d57ec');
INSERT INTO `wp_postmeta` VALUES (396,54,'flexible_content_1_section_image','34');
INSERT INTO `wp_postmeta` VALUES (397,54,'_flexible_content_1_section_image','field_6287b53ee44f0');
INSERT INTO `wp_postmeta` VALUES (398,55,'_wp_attached_file','2022/05/translate.svg');
INSERT INTO `wp_postmeta` VALUES (399,18,'flexible_content_1_blocks_3_icon','55');
INSERT INTO `wp_postmeta` VALUES (400,18,'_flexible_content_1_blocks_3_icon','field_6287ab33d57ed');
INSERT INTO `wp_postmeta` VALUES (401,18,'flexible_content_1_blocks_3_block_title','Підтримка');
INSERT INTO `wp_postmeta` VALUES (402,18,'_flexible_content_1_blocks_3_block_title','field_6287ab6ad57ee');
INSERT INTO `wp_postmeta` VALUES (403,56,'flexible_content_0_banner_title','Бюро Перекладів');
INSERT INTO `wp_postmeta` VALUES (404,56,'_flexible_content_0_banner_title','field_62823fe9bd86a');
INSERT INTO `wp_postmeta` VALUES (405,56,'flexible_content_0_banner_text','На відміну від поширеної думки Lorem Ipsum не є випадковим набором літер. Він походить з уривку класичної латинської літератури 45 року до н.е., тобто має більш як 2000-річну історію. Річард Макклінток, професор латини з коледжу Хемпдін-Сидні, що у Вірджінії, вивчав одне з найменш зрозумілих латинських слів - consectetur - з уривку Lorem Ipsum, і у пошуку цього слова в класичній літературі знайшов безсумнівне джерело.');
INSERT INTO `wp_postmeta` VALUES (406,56,'_flexible_content_0_banner_text','field_6282402abd86b');
INSERT INTO `wp_postmeta` VALUES (407,56,'flexible_content_0_banner_button','a:3:{s:5:\"title\";s:33:\"Замовити переклад\";s:3:\"url\";s:9:\"/services\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (408,56,'_flexible_content_0_banner_button','field_62824036bd86c');
INSERT INTO `wp_postmeta` VALUES (409,56,'flexible_content_0_banner_image','34');
INSERT INTO `wp_postmeta` VALUES (410,56,'_flexible_content_0_banner_image','field_62824075bd86d');
INSERT INTO `wp_postmeta` VALUES (411,56,'flexible_content_0_form_shortcode','[contact-form-7 id=\"31\" title=\"Contact form 1\"]');
INSERT INTO `wp_postmeta` VALUES (412,56,'_flexible_content_0_form_shortcode','field_6282408fbd86e');
INSERT INTO `wp_postmeta` VALUES (413,56,'flexible_content','a:2:{i:0;s:11:\"banner_home\";i:1;s:8:\"benefits\";}');
INSERT INTO `wp_postmeta` VALUES (414,56,'_flexible_content','field_62823f63bd869');
INSERT INTO `wp_postmeta` VALUES (415,56,'flexible_content_1_title','Переваги');
INSERT INTO `wp_postmeta` VALUES (416,56,'_flexible_content_1_title','field_6287a99ed57eb');
INSERT INTO `wp_postmeta` VALUES (417,56,'flexible_content_1_blocks_0_icon','53');
INSERT INTO `wp_postmeta` VALUES (418,56,'_flexible_content_1_blocks_0_icon','field_6287ab33d57ed');
INSERT INTO `wp_postmeta` VALUES (419,56,'flexible_content_1_blocks_0_block_title','Індивідуальний підхід');
INSERT INTO `wp_postmeta` VALUES (420,56,'_flexible_content_1_blocks_0_block_title','field_6287ab6ad57ee');
INSERT INTO `wp_postmeta` VALUES (421,56,'flexible_content_1_blocks_1_icon','51');
INSERT INTO `wp_postmeta` VALUES (422,56,'_flexible_content_1_blocks_1_icon','field_6287ab33d57ed');
INSERT INTO `wp_postmeta` VALUES (423,56,'flexible_content_1_blocks_1_block_title','Надійність і професійність');
INSERT INTO `wp_postmeta` VALUES (424,56,'_flexible_content_1_blocks_1_block_title','field_6287ab6ad57ee');
INSERT INTO `wp_postmeta` VALUES (425,56,'flexible_content_1_blocks_2_icon','49');
INSERT INTO `wp_postmeta` VALUES (426,56,'_flexible_content_1_blocks_2_icon','field_6287ab33d57ed');
INSERT INTO `wp_postmeta` VALUES (427,56,'flexible_content_1_blocks_2_block_title','Єкономія вашого часу і фінансів');
INSERT INTO `wp_postmeta` VALUES (428,56,'_flexible_content_1_blocks_2_block_title','field_6287ab6ad57ee');
INSERT INTO `wp_postmeta` VALUES (429,56,'flexible_content_1_blocks','4');
INSERT INTO `wp_postmeta` VALUES (430,56,'_flexible_content_1_blocks','field_6287aa74d57ec');
INSERT INTO `wp_postmeta` VALUES (431,56,'flexible_content_1_section_image','34');
INSERT INTO `wp_postmeta` VALUES (432,56,'_flexible_content_1_section_image','field_6287b53ee44f0');
INSERT INTO `wp_postmeta` VALUES (433,56,'flexible_content_1_blocks_3_icon','55');
INSERT INTO `wp_postmeta` VALUES (434,56,'_flexible_content_1_blocks_3_icon','field_6287ab33d57ed');
INSERT INTO `wp_postmeta` VALUES (435,56,'flexible_content_1_blocks_3_block_title','Підтримка');
INSERT INTO `wp_postmeta` VALUES (436,56,'_flexible_content_1_blocks_3_block_title','field_6287ab6ad57ee');
INSERT INTO `wp_postmeta` VALUES (437,18,'flexible_content_2_image','63');
INSERT INTO `wp_postmeta` VALUES (438,18,'_flexible_content_2_image','field_6287c301f4469');
INSERT INTO `wp_postmeta` VALUES (439,18,'flexible_content_2_title','Ми виконуємо роботу будь-якої складності');
INSERT INTO `wp_postmeta` VALUES (440,18,'_flexible_content_2_title','field_6287c30ef446a');
INSERT INTO `wp_postmeta` VALUES (441,18,'flexible_content_2_text','Вже давно відомо, що читабельний зміст буде заважати зосередитись людині, яка оцінює композицію сторінки. Сенс використання Lorem Ipsum полягає в тому, що цей текст має більш-менш нормальне розподілення літер на відміну від, наприклад, \"Тут іде текст.\r\n\r\nТут іде текст.\" Це робить текст схожим на оповідний. Багато програм верстування та веб-дизайну використовують Lorem Ipsum як зразок і пошук за терміном \"lorem ipsum\" відкриє багато веб-сайтів, які знаходяться ще в зародковому стані. Різні версії Lorem Ipsum з\'явились за минулі роки, деякі випадково, деякі було створено зумисно (зокрема, жартівливі).');
INSERT INTO `wp_postmeta` VALUES (442,18,'_flexible_content_2_text','field_6287c322f446b');
INSERT INTO `wp_postmeta` VALUES (443,18,'flexible_content_2_button','a:3:{s:5:\"title\";s:23:\"Наші послуги\";s:3:\"url\";s:1:\"#\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (444,18,'_flexible_content_2_button','field_6287c32bf446c');
INSERT INTO `wp_postmeta` VALUES (445,61,'flexible_content_0_banner_title','Бюро Перекладів');
INSERT INTO `wp_postmeta` VALUES (446,61,'_flexible_content_0_banner_title','field_62823fe9bd86a');
INSERT INTO `wp_postmeta` VALUES (447,61,'flexible_content_0_banner_text','На відміну від поширеної думки Lorem Ipsum не є випадковим набором літер. Він походить з уривку класичної латинської літератури 45 року до н.е., тобто має більш як 2000-річну історію. Річард Макклінток, професор латини з коледжу Хемпдін-Сидні, що у Вірджінії, вивчав одне з найменш зрозумілих латинських слів - consectetur - з уривку Lorem Ipsum, і у пошуку цього слова в класичній літературі знайшов безсумнівне джерело.');
INSERT INTO `wp_postmeta` VALUES (448,61,'_flexible_content_0_banner_text','field_6282402abd86b');
INSERT INTO `wp_postmeta` VALUES (449,61,'flexible_content_0_banner_button','a:3:{s:5:\"title\";s:33:\"Замовити переклад\";s:3:\"url\";s:9:\"/services\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (450,61,'_flexible_content_0_banner_button','field_62824036bd86c');
INSERT INTO `wp_postmeta` VALUES (451,61,'flexible_content_0_banner_image','34');
INSERT INTO `wp_postmeta` VALUES (452,61,'_flexible_content_0_banner_image','field_62824075bd86d');
INSERT INTO `wp_postmeta` VALUES (453,61,'flexible_content_0_form_shortcode','[contact-form-7 id=\"31\" title=\"Contact form 1\"]');
INSERT INTO `wp_postmeta` VALUES (454,61,'_flexible_content_0_form_shortcode','field_6282408fbd86e');
INSERT INTO `wp_postmeta` VALUES (455,61,'flexible_content','a:3:{i:0;s:11:\"banner_home\";i:1;s:8:\"benefits\";i:2;s:13:\"about_comapny\";}');
INSERT INTO `wp_postmeta` VALUES (456,61,'_flexible_content','field_62823f63bd869');
INSERT INTO `wp_postmeta` VALUES (457,61,'flexible_content_1_title','Переваги');
INSERT INTO `wp_postmeta` VALUES (458,61,'_flexible_content_1_title','field_6287a99ed57eb');
INSERT INTO `wp_postmeta` VALUES (459,61,'flexible_content_1_blocks_0_icon','53');
INSERT INTO `wp_postmeta` VALUES (460,61,'_flexible_content_1_blocks_0_icon','field_6287ab33d57ed');
INSERT INTO `wp_postmeta` VALUES (461,61,'flexible_content_1_blocks_0_block_title','Індивідуальний підхід');
INSERT INTO `wp_postmeta` VALUES (462,61,'_flexible_content_1_blocks_0_block_title','field_6287ab6ad57ee');
INSERT INTO `wp_postmeta` VALUES (463,61,'flexible_content_1_blocks_1_icon','51');
INSERT INTO `wp_postmeta` VALUES (464,61,'_flexible_content_1_blocks_1_icon','field_6287ab33d57ed');
INSERT INTO `wp_postmeta` VALUES (465,61,'flexible_content_1_blocks_1_block_title','Надійність і професійність');
INSERT INTO `wp_postmeta` VALUES (466,61,'_flexible_content_1_blocks_1_block_title','field_6287ab6ad57ee');
INSERT INTO `wp_postmeta` VALUES (467,61,'flexible_content_1_blocks_2_icon','49');
INSERT INTO `wp_postmeta` VALUES (468,61,'_flexible_content_1_blocks_2_icon','field_6287ab33d57ed');
INSERT INTO `wp_postmeta` VALUES (469,61,'flexible_content_1_blocks_2_block_title','Єкономія вашого часу і фінансів');
INSERT INTO `wp_postmeta` VALUES (470,61,'_flexible_content_1_blocks_2_block_title','field_6287ab6ad57ee');
INSERT INTO `wp_postmeta` VALUES (471,61,'flexible_content_1_blocks','4');
INSERT INTO `wp_postmeta` VALUES (472,61,'_flexible_content_1_blocks','field_6287aa74d57ec');
INSERT INTO `wp_postmeta` VALUES (473,61,'flexible_content_1_section_image','34');
INSERT INTO `wp_postmeta` VALUES (474,61,'_flexible_content_1_section_image','field_6287b53ee44f0');
INSERT INTO `wp_postmeta` VALUES (475,61,'flexible_content_1_blocks_3_icon','55');
INSERT INTO `wp_postmeta` VALUES (476,61,'_flexible_content_1_blocks_3_icon','field_6287ab33d57ed');
INSERT INTO `wp_postmeta` VALUES (477,61,'flexible_content_1_blocks_3_block_title','Підтримка');
INSERT INTO `wp_postmeta` VALUES (478,61,'_flexible_content_1_blocks_3_block_title','field_6287ab6ad57ee');
INSERT INTO `wp_postmeta` VALUES (479,61,'flexible_content_2_image','28');
INSERT INTO `wp_postmeta` VALUES (480,61,'_flexible_content_2_image','field_6287c301f4469');
INSERT INTO `wp_postmeta` VALUES (481,61,'flexible_content_2_title','Ми виконуємо роботу будь-якоЇ сладності');
INSERT INTO `wp_postmeta` VALUES (482,61,'_flexible_content_2_title','field_6287c30ef446a');
INSERT INTO `wp_postmeta` VALUES (483,61,'flexible_content_2_text','Вже давно відомо, що читабельний зміст буде заважати зосередитись людині, яка оцінює композицію сторінки. Сенс використання Lorem Ipsum полягає в тому, що цей текст має більш-менш нормальне розподілення літер на відміну від, наприклад, \"Тут іде текст. \r\n\r\nТут іде текст.\" Це робить текст схожим на оповідний. Багато програм верстування та веб-дизайну використовують Lorem Ipsum як зразок і пошук за терміном \"lorem ipsum\" відкриє багато веб-сайтів, які знаходяться ще в зародковому стані. Різні версії Lorem Ipsum з\'явились за минулі роки, деякі випадково, деякі було створено зумисно (зокрема, жартівливі).');
INSERT INTO `wp_postmeta` VALUES (484,61,'_flexible_content_2_text','field_6287c322f446b');
INSERT INTO `wp_postmeta` VALUES (485,61,'flexible_content_2_button','a:3:{s:5:\"title\";s:23:\"Наші послуги\";s:3:\"url\";s:10:\"http://№\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (486,61,'_flexible_content_2_button','field_6287c32bf446c');
INSERT INTO `wp_postmeta` VALUES (487,62,'flexible_content_0_banner_title','Бюро Перекладів');
INSERT INTO `wp_postmeta` VALUES (488,62,'_flexible_content_0_banner_title','field_62823fe9bd86a');
INSERT INTO `wp_postmeta` VALUES (489,62,'flexible_content_0_banner_text','На відміну від поширеної думки Lorem Ipsum не є випадковим набором літер. Він походить з уривку класичної латинської літератури 45 року до н.е., тобто має більш як 2000-річну історію. Річард Макклінток, професор латини з коледжу Хемпдін-Сидні, що у Вірджінії, вивчав одне з найменш зрозумілих латинських слів - consectetur - з уривку Lorem Ipsum, і у пошуку цього слова в класичній літературі знайшов безсумнівне джерело.');
INSERT INTO `wp_postmeta` VALUES (490,62,'_flexible_content_0_banner_text','field_6282402abd86b');
INSERT INTO `wp_postmeta` VALUES (491,62,'flexible_content_0_banner_button','a:3:{s:5:\"title\";s:33:\"Замовити переклад\";s:3:\"url\";s:9:\"/services\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (492,62,'_flexible_content_0_banner_button','field_62824036bd86c');
INSERT INTO `wp_postmeta` VALUES (493,62,'flexible_content_0_banner_image','34');
INSERT INTO `wp_postmeta` VALUES (494,62,'_flexible_content_0_banner_image','field_62824075bd86d');
INSERT INTO `wp_postmeta` VALUES (495,62,'flexible_content_0_form_shortcode','[contact-form-7 id=\"31\" title=\"Contact form 1\"]');
INSERT INTO `wp_postmeta` VALUES (496,62,'_flexible_content_0_form_shortcode','field_6282408fbd86e');
INSERT INTO `wp_postmeta` VALUES (497,62,'flexible_content','a:3:{i:0;s:11:\"banner_home\";i:1;s:8:\"benefits\";i:2;s:13:\"about_company\";}');
INSERT INTO `wp_postmeta` VALUES (498,62,'_flexible_content','field_62823f63bd869');
INSERT INTO `wp_postmeta` VALUES (499,62,'flexible_content_1_title','Переваги');
INSERT INTO `wp_postmeta` VALUES (500,62,'_flexible_content_1_title','field_6287a99ed57eb');
INSERT INTO `wp_postmeta` VALUES (501,62,'flexible_content_1_blocks_0_icon','53');
INSERT INTO `wp_postmeta` VALUES (502,62,'_flexible_content_1_blocks_0_icon','field_6287ab33d57ed');
INSERT INTO `wp_postmeta` VALUES (503,62,'flexible_content_1_blocks_0_block_title','Індивідуальний підхід');
INSERT INTO `wp_postmeta` VALUES (504,62,'_flexible_content_1_blocks_0_block_title','field_6287ab6ad57ee');
INSERT INTO `wp_postmeta` VALUES (505,62,'flexible_content_1_blocks_1_icon','51');
INSERT INTO `wp_postmeta` VALUES (506,62,'_flexible_content_1_blocks_1_icon','field_6287ab33d57ed');
INSERT INTO `wp_postmeta` VALUES (507,62,'flexible_content_1_blocks_1_block_title','Надійність і професійність');
INSERT INTO `wp_postmeta` VALUES (508,62,'_flexible_content_1_blocks_1_block_title','field_6287ab6ad57ee');
INSERT INTO `wp_postmeta` VALUES (509,62,'flexible_content_1_blocks_2_icon','49');
INSERT INTO `wp_postmeta` VALUES (510,62,'_flexible_content_1_blocks_2_icon','field_6287ab33d57ed');
INSERT INTO `wp_postmeta` VALUES (511,62,'flexible_content_1_blocks_2_block_title','Єкономія вашого часу і фінансів');
INSERT INTO `wp_postmeta` VALUES (512,62,'_flexible_content_1_blocks_2_block_title','field_6287ab6ad57ee');
INSERT INTO `wp_postmeta` VALUES (513,62,'flexible_content_1_blocks','4');
INSERT INTO `wp_postmeta` VALUES (514,62,'_flexible_content_1_blocks','field_6287aa74d57ec');
INSERT INTO `wp_postmeta` VALUES (515,62,'flexible_content_1_section_image','34');
INSERT INTO `wp_postmeta` VALUES (516,62,'_flexible_content_1_section_image','field_6287b53ee44f0');
INSERT INTO `wp_postmeta` VALUES (517,62,'flexible_content_1_blocks_3_icon','55');
INSERT INTO `wp_postmeta` VALUES (518,62,'_flexible_content_1_blocks_3_icon','field_6287ab33d57ed');
INSERT INTO `wp_postmeta` VALUES (519,62,'flexible_content_1_blocks_3_block_title','Підтримка');
INSERT INTO `wp_postmeta` VALUES (520,62,'_flexible_content_1_blocks_3_block_title','field_6287ab6ad57ee');
INSERT INTO `wp_postmeta` VALUES (521,62,'flexible_content_2_image','28');
INSERT INTO `wp_postmeta` VALUES (522,62,'_flexible_content_2_image','field_6287c301f4469');
INSERT INTO `wp_postmeta` VALUES (523,62,'flexible_content_2_title','Ми виконуємо роботу будь-якої складності');
INSERT INTO `wp_postmeta` VALUES (524,62,'_flexible_content_2_title','field_6287c30ef446a');
INSERT INTO `wp_postmeta` VALUES (525,62,'flexible_content_2_text','Вже давно відомо, що читабельний зміст буде заважати зосередитись людині, яка оцінює композицію сторінки. Сенс використання Lorem Ipsum полягає в тому, що цей текст має більш-менш нормальне розподілення літер на відміну від, наприклад, \"Тут іде текст.\r\n\r\nТут іде текст.\" Це робить текст схожим на оповідний. Багато програм верстування та веб-дизайну використовують Lorem Ipsum як зразок і пошук за терміном \"lorem ipsum\" відкриє багато веб-сайтів, які знаходяться ще в зародковому стані. Різні версії Lorem Ipsum з\'явились за минулі роки, деякі випадково, деякі було створено зумисно (зокрема, жартівливі).');
INSERT INTO `wp_postmeta` VALUES (526,62,'_flexible_content_2_text','field_6287c322f446b');
INSERT INTO `wp_postmeta` VALUES (527,62,'flexible_content_2_button','a:3:{s:5:\"title\";s:23:\"Наші послуги\";s:3:\"url\";s:1:\"#\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (528,62,'_flexible_content_2_button','field_6287c32bf446c');
INSERT INTO `wp_postmeta` VALUES (529,63,'_wp_attached_file','2022/05/dictionary.jpg');
INSERT INTO `wp_postmeta` VALUES (530,63,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:853;s:4:\"file\";s:22:\"2022/05/dictionary.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"dictionary-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"dictionary-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"dictionary-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"dictionary-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (531,64,'flexible_content_0_banner_title','Бюро Перекладів');
INSERT INTO `wp_postmeta` VALUES (532,64,'_flexible_content_0_banner_title','field_62823fe9bd86a');
INSERT INTO `wp_postmeta` VALUES (533,64,'flexible_content_0_banner_text','На відміну від поширеної думки Lorem Ipsum не є випадковим набором літер. Він походить з уривку класичної латинської літератури 45 року до н.е., тобто має більш як 2000-річну історію. Річард Макклінток, професор латини з коледжу Хемпдін-Сидні, що у Вірджінії, вивчав одне з найменш зрозумілих латинських слів - consectetur - з уривку Lorem Ipsum, і у пошуку цього слова в класичній літературі знайшов безсумнівне джерело.');
INSERT INTO `wp_postmeta` VALUES (534,64,'_flexible_content_0_banner_text','field_6282402abd86b');
INSERT INTO `wp_postmeta` VALUES (535,64,'flexible_content_0_banner_button','a:3:{s:5:\"title\";s:33:\"Замовити переклад\";s:3:\"url\";s:9:\"/services\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (536,64,'_flexible_content_0_banner_button','field_62824036bd86c');
INSERT INTO `wp_postmeta` VALUES (537,64,'flexible_content_0_banner_image','34');
INSERT INTO `wp_postmeta` VALUES (538,64,'_flexible_content_0_banner_image','field_62824075bd86d');
INSERT INTO `wp_postmeta` VALUES (539,64,'flexible_content_0_form_shortcode','[contact-form-7 id=\"31\" title=\"Contact form 1\"]');
INSERT INTO `wp_postmeta` VALUES (540,64,'_flexible_content_0_form_shortcode','field_6282408fbd86e');
INSERT INTO `wp_postmeta` VALUES (541,64,'flexible_content','a:3:{i:0;s:11:\"banner_home\";i:1;s:8:\"benefits\";i:2;s:13:\"about_company\";}');
INSERT INTO `wp_postmeta` VALUES (542,64,'_flexible_content','field_62823f63bd869');
INSERT INTO `wp_postmeta` VALUES (543,64,'flexible_content_1_title','Переваги');
INSERT INTO `wp_postmeta` VALUES (544,64,'_flexible_content_1_title','field_6287a99ed57eb');
INSERT INTO `wp_postmeta` VALUES (545,64,'flexible_content_1_blocks_0_icon','53');
INSERT INTO `wp_postmeta` VALUES (546,64,'_flexible_content_1_blocks_0_icon','field_6287ab33d57ed');
INSERT INTO `wp_postmeta` VALUES (547,64,'flexible_content_1_blocks_0_block_title','Індивідуальний підхід');
INSERT INTO `wp_postmeta` VALUES (548,64,'_flexible_content_1_blocks_0_block_title','field_6287ab6ad57ee');
INSERT INTO `wp_postmeta` VALUES (549,64,'flexible_content_1_blocks_1_icon','51');
INSERT INTO `wp_postmeta` VALUES (550,64,'_flexible_content_1_blocks_1_icon','field_6287ab33d57ed');
INSERT INTO `wp_postmeta` VALUES (551,64,'flexible_content_1_blocks_1_block_title','Надійність і професійність');
INSERT INTO `wp_postmeta` VALUES (552,64,'_flexible_content_1_blocks_1_block_title','field_6287ab6ad57ee');
INSERT INTO `wp_postmeta` VALUES (553,64,'flexible_content_1_blocks_2_icon','49');
INSERT INTO `wp_postmeta` VALUES (554,64,'_flexible_content_1_blocks_2_icon','field_6287ab33d57ed');
INSERT INTO `wp_postmeta` VALUES (555,64,'flexible_content_1_blocks_2_block_title','Єкономія вашого часу і фінансів');
INSERT INTO `wp_postmeta` VALUES (556,64,'_flexible_content_1_blocks_2_block_title','field_6287ab6ad57ee');
INSERT INTO `wp_postmeta` VALUES (557,64,'flexible_content_1_blocks','4');
INSERT INTO `wp_postmeta` VALUES (558,64,'_flexible_content_1_blocks','field_6287aa74d57ec');
INSERT INTO `wp_postmeta` VALUES (559,64,'flexible_content_1_section_image','34');
INSERT INTO `wp_postmeta` VALUES (560,64,'_flexible_content_1_section_image','field_6287b53ee44f0');
INSERT INTO `wp_postmeta` VALUES (561,64,'flexible_content_1_blocks_3_icon','55');
INSERT INTO `wp_postmeta` VALUES (562,64,'_flexible_content_1_blocks_3_icon','field_6287ab33d57ed');
INSERT INTO `wp_postmeta` VALUES (563,64,'flexible_content_1_blocks_3_block_title','Підтримка');
INSERT INTO `wp_postmeta` VALUES (564,64,'_flexible_content_1_blocks_3_block_title','field_6287ab6ad57ee');
INSERT INTO `wp_postmeta` VALUES (565,64,'flexible_content_2_image','63');
INSERT INTO `wp_postmeta` VALUES (566,64,'_flexible_content_2_image','field_6287c301f4469');
INSERT INTO `wp_postmeta` VALUES (567,64,'flexible_content_2_title','Ми виконуємо роботу будь-якої складності');
INSERT INTO `wp_postmeta` VALUES (568,64,'_flexible_content_2_title','field_6287c30ef446a');
INSERT INTO `wp_postmeta` VALUES (569,64,'flexible_content_2_text','Вже давно відомо, що читабельний зміст буде заважати зосередитись людині, яка оцінює композицію сторінки. Сенс використання Lorem Ipsum полягає в тому, що цей текст має більш-менш нормальне розподілення літер на відміну від, наприклад, \"Тут іде текст.\r\n\r\nТут іде текст.\" Це робить текст схожим на оповідний. Багато програм верстування та веб-дизайну використовують Lorem Ipsum як зразок і пошук за терміном \"lorem ipsum\" відкриє багато веб-сайтів, які знаходяться ще в зародковому стані. Різні версії Lorem Ipsum з\'явились за минулі роки, деякі випадково, деякі було створено зумисно (зокрема, жартівливі).');
INSERT INTO `wp_postmeta` VALUES (570,64,'_flexible_content_2_text','field_6287c322f446b');
INSERT INTO `wp_postmeta` VALUES (571,64,'flexible_content_2_button','a:3:{s:5:\"title\";s:23:\"Наші послуги\";s:3:\"url\";s:1:\"#\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (572,64,'_flexible_content_2_button','field_6287c32bf446c');
INSERT INTO `wp_postmeta` VALUES (573,65,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (574,65,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (575,65,'_menu_item_object_id','65');
INSERT INTO `wp_postmeta` VALUES (576,65,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (577,65,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (578,65,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (579,65,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (580,65,'_menu_item_url','#');
INSERT INTO `wp_postmeta` VALUES (582,66,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (583,66,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (584,66,'_menu_item_object_id','66');
INSERT INTO `wp_postmeta` VALUES (585,66,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (586,66,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (587,66,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (588,66,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (589,66,'_menu_item_url','#');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2022-05-16 08:18:23','2022-05-16 08:18:23','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2022-05-16 08:18:23','2022-05-16 08:18:23','',0,'http://localhost:10004/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2022-05-16 08:18:23','2022-05-16 08:18:23','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost:10004/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','trash','closed','open','','sample-page__trashed','','','2022-05-16 14:14:39','2022-05-16 11:14:39','',0,'http://localhost:10004/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2022-05-16 08:18:23','2022-05-16 08:18:23','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost:10004.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->','Privacy Policy','','draft','closed','open','','privacy-policy','','','2022-05-16 08:18:23','2022-05-16 08:18:23','',0,'http://localhost:10004/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2022-05-16 12:24:15','2022-05-16 09:24:15','a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:18:\"acf-options-header\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Заголовок Сторінки','%d0%b7%d0%b0%d0%b3%d0%be%d0%bb%d0%be%d0%b2%d0%be%d0%ba-%d1%81%d1%82%d0%be%d1%80%d1%96%d0%bd%d0%ba%d0%b8','publish','closed','closed','','group_628217e38bdac','','','2022-05-16 14:14:25','2022-05-16 11:14:25','',0,'http://localhost:10004/?post_type=acf-field-group&#038;p=11',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2022-05-16 12:24:15','2022-05-16 09:24:15','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Логотип','logo','publish','closed','closed','','field_6282182c6c49c','','','2022-05-16 12:24:15','2022-05-16 09:24:15','',11,'http://localhost:10004/?post_type=acf-field&p=12',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (13,1,'2022-05-16 13:38:51','2022-05-16 10:38:51','','logo','','inherit','open','closed','','logo','','','2022-05-16 13:38:51','2022-05-16 10:38:51','',0,'/wp-content/uploads/2022/05/logo.svg',0,'attachment','image/svg+xml',0);
INSERT INTO `wp_posts` VALUES (14,1,'2022-05-16 13:54:16','2022-05-16 10:54:16','','Послуги','','publish','closed','closed','','%d0%bf%d0%be%d1%81%d0%bb%d1%83%d0%b3%d0%b8','','','2022-05-16 13:54:16','2022-05-16 10:54:16','',0,'http://localhost:10004/?p=14',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2022-05-16 13:54:16','2022-05-16 10:54:16','','Контакти','','publish','closed','closed','','%d0%ba%d0%be%d0%bd%d1%82%d0%b0%d0%ba%d1%82%d0%b8','','','2022-05-16 13:54:16','2022-05-16 10:54:16','',0,'http://localhost:10004/?p=15',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (16,1,'2022-05-16 14:14:25','2022-05-16 11:14:25','a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";}','Кнопка','header_btn','publish','closed','closed','','field_628231f29d764','','','2022-05-16 14:14:25','2022-05-16 11:14:25','',11,'http://localhost:10004/?post_type=acf-field&p=16',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (17,1,'2022-05-16 14:14:39','2022-05-16 11:14:39','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost:10004/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','inherit','closed','closed','','2-revision-v1','','','2022-05-16 14:14:39','2022-05-16 11:14:39','',2,'http://localhost:10004/?p=17',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (18,1,'2022-05-16 14:15:01','2022-05-16 11:15:01','','Головна Сторінка','','publish','closed','closed','','%d0%b3%d0%be%d0%bb%d0%be%d0%b2%d0%bd%d0%b0-%d1%81%d1%82%d0%be%d1%80%d1%96%d0%bd%d0%ba%d0%b0','','','2022-05-20 20:18:39','2022-05-20 17:18:39','',0,'http://localhost:10004/?page_id=18',0,'page','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2022-05-16 14:14:41','2022-05-16 11:14:41','{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }','Custom Styles','','publish','closed','closed','','wp-global-styles-libra','','','2022-05-16 14:14:41','2022-05-16 11:14:41','',0,'http://localhost:10004/wp-global-styles-libra/',0,'wp_global_styles','',0);
INSERT INTO `wp_posts` VALUES (20,1,'2022-05-16 14:15:01','2022-05-16 11:15:01','','Головна Сторінка','','inherit','closed','closed','','18-revision-v1','','','2022-05-16 14:15:01','2022-05-16 11:15:01','',18,'http://localhost:10004/?p=20',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (21,1,'2022-05-16 15:16:44','2022-05-16 12:16:44','a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"page\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Блоки для Побудови сторінки','%d0%b1%d0%bb%d0%be%d0%ba%d0%b8-%d0%b4%d0%bb%d1%8f-%d0%bf%d0%be%d0%b1%d1%83%d0%b4%d0%be%d0%b2%d0%b8-%d1%81%d1%82%d0%be%d1%80%d1%96%d0%bd%d0%ba%d0%b8','publish','closed','closed','','group_62823f3a82c97','','','2022-05-20 19:41:16','2022-05-20 16:41:16','',0,'http://localhost:10004/?post_type=acf-field-group&#038;p=21',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2022-05-16 15:16:44','2022-05-16 12:16:44','a:9:{s:4:\"type\";s:16:\"flexible_content\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"layouts\";a:3:{s:20:\"layout_62823f8f5a120\";a:6:{s:3:\"key\";s:20:\"layout_62823f8f5a120\";s:5:\"label\";s:12:\"Баннер\";s:4:\"name\";s:11:\"banner_home\";s:7:\"display\";s:5:\"block\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";}s:20:\"layout_6287a997d57ea\";a:6:{s:3:\"key\";s:20:\"layout_6287a997d57ea\";s:5:\"label\";s:8:\"Benefits\";s:4:\"name\";s:8:\"benefits\";s:7:\"display\";s:5:\"block\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";}s:20:\"layout_6287c2f0f4468\";a:6:{s:3:\"key\";s:20:\"layout_6287c2f0f4468\";s:5:\"label\";s:13:\"About Company\";s:4:\"name\";s:13:\"about_company\";s:7:\"display\";s:5:\"block\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";}}s:12:\"button_label\";s:21:\"Додати Блок\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";}','Блоки','flexible_content','publish','closed','closed','','field_62823f63bd869','','','2022-05-20 19:41:16','2022-05-20 16:41:16','',21,'http://localhost:10004/?post_type=acf-field&#038;p=22',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (23,1,'2022-05-16 15:16:44','2022-05-16 12:16:44','a:11:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_62823f8f5a120\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Заголовок Банера','banner_title','publish','closed','closed','','field_62823fe9bd86a','','','2022-05-16 15:16:44','2022-05-16 12:16:44','',22,'http://localhost:10004/?post_type=acf-field&p=23',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (24,1,'2022-05-16 15:16:44','2022-05-16 12:16:44','a:11:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_62823f8f5a120\";s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}','Текст Банера','banner_text','publish','closed','closed','','field_6282402abd86b','','','2022-05-16 15:16:44','2022-05-16 12:16:44','',22,'http://localhost:10004/?post_type=acf-field&p=24',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (25,1,'2022-05-16 15:16:44','2022-05-16 12:16:44','a:7:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_62823f8f5a120\";s:13:\"return_format\";s:5:\"array\";}','Кнопка на Банері','banner_button','publish','closed','closed','','field_62824036bd86c','','','2022-05-16 15:16:44','2022-05-16 12:16:44','',22,'http://localhost:10004/?post_type=acf-field&p=25',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (26,1,'2022-05-16 15:16:44','2022-05-16 12:16:44','a:16:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_62823f8f5a120\";s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Картинка Банера','banner_image','publish','closed','closed','','field_62824075bd86d','','','2022-05-16 15:16:44','2022-05-16 12:16:44','',22,'http://localhost:10004/?post_type=acf-field&p=26',3,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (27,1,'2022-05-16 15:16:44','2022-05-16 12:16:44','a:11:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_62823f8f5a120\";s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}','Код для Форми','form_shortcode','publish','closed','closed','','field_6282408fbd86e','','','2022-05-16 15:16:44','2022-05-16 12:16:44','',22,'http://localhost:10004/?post_type=acf-field&p=27',4,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (28,1,'2022-05-16 15:22:17','2022-05-16 12:22:17','','academy-celebrate-min','','inherit','open','closed','','academy-celebrate-min','','','2022-05-16 15:22:17','2022-05-16 12:22:17','',18,'/wp-content/uploads/2022/05/academy-celebrate-min.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (29,1,'2022-05-16 15:22:31','2022-05-16 12:22:31','','Головна Сторінка','','inherit','closed','closed','','18-revision-v1','','','2022-05-16 15:22:31','2022-05-16 12:22:31','',18,'http://localhost:10004/?p=29',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (30,1,'2022-05-16 17:20:54','2022-05-16 14:20:54','','Головна Сторінка','','inherit','closed','closed','','18-revision-v1','','','2022-05-16 17:20:54','2022-05-16 14:20:54','',18,'http://localhost:10004/?p=30',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (31,1,'2022-05-16 17:47:29','2022-05-16 14:47:29','<div class=\"form_wrap\">\r\n<h3>Зворотній зв\'язок</h3>\r\n[tel* tel-990 placeholder \"Ваш номер телефону\"]\r\n<div class=\"cta_button submit\">\r\n[submit \"Передзвоніть, будь-ласка\"]\r\n<span class=\"line\"></span>\r\n</div>\r\n</div>\n1\nПередзвоніть, будь-ласка\n[_site_title] <wordpress@libra.local>\n[_site_admin_email]\nТелкфон : [tel-990]\nReply-To: [tel-404]\n\n\n\n\n[_site_title] \"[your-subject]\"\n[_site_title] <wordpress@libra.local>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\nReply-To: [_site_admin_email]\n\n\n\nДякую за повідомлення. Його надіслано.\nThere was an error trying to send your message. Please try again later.\nВ одному або кількох полях є помилка. Перевірте та повторіть спробу.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nПоле є обов’язковим.\nThe field is too long.\nThe field is too short.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.','Contact form 1','','publish','closed','closed','','contact-form-1','','','2022-05-20 15:31:41','2022-05-20 12:31:41','',0,'http://localhost:10004/?post_type=wpcf7_contact_form&#038;p=31',0,'wpcf7_contact_form','',0);
INSERT INTO `wp_posts` VALUES (32,1,'2022-05-16 17:51:10','2022-05-16 14:51:10','','Головна Сторінка','','inherit','closed','closed','','18-revision-v1','','','2022-05-16 17:51:10','2022-05-16 14:51:10','',18,'http://localhost:10004/?p=32',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (33,1,'2022-05-20 14:15:39','2022-05-20 11:15:39','','Головна Сторінка','','inherit','closed','closed','','18-revision-v1','','','2022-05-20 14:15:39','2022-05-20 11:15:39','',18,'http://localhost:10004/?p=33',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (34,1,'2022-05-20 16:20:33','2022-05-20 13:20:33','','working-hard-party-hard-weekends-cropped-shot-woman-typing-keyboard-sitting-front-computer-monitor-freelancer-translating-new-project-writing-some-notes-note-pad','','inherit','open','closed','','working-hard-party-hard-weekends-cropped-shot-woman-typing-keyboard-sitting-front-computer-monitor-freelancer-translating-new-project-writing-some-notes-note-pad','','','2022-05-20 16:20:33','2022-05-20 13:20:33','',18,'/wp-content/uploads/2022/05/working-hard-party-hard-weekends-cropped-shot-woman-typing-keyboard-sitting-front-computer-monitor-freelancer-translating-new-project-writing-some-notes-note-pad.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (35,1,'2022-05-20 16:20:37','2022-05-20 13:20:37','','Головна Сторінка','','inherit','closed','closed','','18-revision-v1','','','2022-05-20 16:20:37','2022-05-20 13:20:37','',18,'http://localhost:10004/?p=35',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (36,1,'2022-05-20 17:55:41','2022-05-20 14:55:41','a:11:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_6287a997d57ea\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Title','title','publish','closed','closed','','field_6287a99ed57eb','','','2022-05-20 18:35:37','2022-05-20 15:35:37','',22,'http://localhost:10004/?post_type=acf-field&#038;p=36',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (37,1,'2022-05-20 17:55:41','2022-05-20 14:55:41','a:11:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_6287a997d57ea\";s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:8:\"Add Item\";}','Blocks','blocks','publish','closed','closed','','field_6287aa74d57ec','','','2022-05-20 18:35:37','2022-05-20 15:35:37','',22,'http://localhost:10004/?post_type=acf-field&#038;p=37',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (38,1,'2022-05-20 17:55:41','2022-05-20 14:55:41','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Icon','icon','publish','closed','closed','','field_6287ab33d57ed','','','2022-05-20 17:55:41','2022-05-20 14:55:41','',37,'http://localhost:10004/?post_type=acf-field&p=38',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (39,1,'2022-05-20 17:55:41','2022-05-20 14:55:41','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Block Title','block_title','publish','closed','closed','','field_6287ab6ad57ee','','','2022-05-20 17:55:41','2022-05-20 14:55:41','',37,'http://localhost:10004/?post_type=acf-field&p=39',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (42,1,'2022-05-20 18:26:21','2022-05-20 15:26:21','','Головна Сторінка','','inherit','closed','closed','','18-revision-v1','','','2022-05-20 18:26:21','2022-05-20 15:26:21','',18,'http://localhost:10004/?p=42',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (43,1,'2022-05-20 18:35:37','2022-05-20 15:35:37','a:16:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_6287a997d57ea\";s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Section Image','section_image','publish','closed','closed','','field_6287b53ee44f0','','','2022-05-20 18:35:37','2022-05-20 15:35:37','',22,'http://localhost:10004/?post_type=acf-field&p=43',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (44,1,'2022-05-20 18:36:33','2022-05-20 15:36:33','','Головна Сторінка','','inherit','closed','closed','','18-revision-v1','','','2022-05-20 18:36:33','2022-05-20 15:36:33','',18,'http://localhost:10004/?p=44',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (45,1,'2022-05-20 18:44:40','2022-05-20 15:44:40','','Головна Сторінка','','inherit','closed','closed','','18-revision-v1','','','2022-05-20 18:44:40','2022-05-20 15:44:40','',18,'http://localhost:10004/?p=45',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (46,1,'2022-05-20 18:45:43','2022-05-20 15:45:43','','Головна Сторінка','','inherit','closed','closed','','18-revision-v1','','','2022-05-20 18:45:43','2022-05-20 15:45:43','',18,'http://localhost:10004/?p=46',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (48,1,'2022-05-20 18:49:05','2022-05-20 15:49:05','','Головна Сторінка','','inherit','closed','closed','','18-revision-v1','','','2022-05-20 18:49:05','2022-05-20 15:49:05','',18,'http://localhost:10004/?p=48',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (49,1,'2022-05-20 18:50:56','2022-05-20 15:50:56','','saving','','inherit','open','closed','','saving','','','2022-05-20 18:50:56','2022-05-20 15:50:56','',18,'/wp-content/uploads/2022/05/saving.svg',0,'attachment','image/svg+xml',0);
INSERT INTO `wp_posts` VALUES (50,1,'2022-05-20 18:50:59','2022-05-20 15:50:59','','Головна Сторінка','','inherit','closed','closed','','18-revision-v1','','','2022-05-20 18:50:59','2022-05-20 15:50:59','',18,'http://localhost:10004/?p=50',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (51,1,'2022-05-20 18:53:28','2022-05-20 15:53:28','','management','','inherit','open','closed','','management','','','2022-05-20 18:53:28','2022-05-20 15:53:28','',18,'/wp-content/uploads/2022/05/management.svg',0,'attachment','image/svg+xml',0);
INSERT INTO `wp_posts` VALUES (52,1,'2022-05-20 18:53:31','2022-05-20 15:53:31','','Головна Сторінка','','inherit','closed','closed','','18-revision-v1','','','2022-05-20 18:53:31','2022-05-20 15:53:31','',18,'http://localhost:10004/?p=52',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (53,1,'2022-05-20 18:57:31','2022-05-20 15:57:31','','user','','inherit','open','closed','','user','','','2022-05-20 18:57:31','2022-05-20 15:57:31','',18,'/wp-content/uploads/2022/05/user.svg',0,'attachment','image/svg+xml',0);
INSERT INTO `wp_posts` VALUES (54,1,'2022-05-20 18:57:38','2022-05-20 15:57:38','','Головна Сторінка','','inherit','closed','closed','','18-revision-v1','','','2022-05-20 18:57:38','2022-05-20 15:57:38','',18,'http://localhost:10004/?p=54',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (55,1,'2022-05-20 19:04:43','2022-05-20 16:04:43','','translate','','inherit','open','closed','','translate','','','2022-05-20 19:04:43','2022-05-20 16:04:43','',18,'/wp-content/uploads/2022/05/translate.svg',0,'attachment','image/svg+xml',0);
INSERT INTO `wp_posts` VALUES (56,1,'2022-05-20 19:05:12','2022-05-20 16:05:12','','Головна Сторінка','','inherit','closed','closed','','18-revision-v1','','','2022-05-20 19:05:12','2022-05-20 16:05:12','',18,'http://localhost:10004/?p=56',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (57,1,'2022-05-20 19:39:09','2022-05-20 16:39:09','a:16:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_6287c2f0f4468\";s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Image','image','publish','closed','closed','','field_6287c301f4469','','','2022-05-20 19:39:09','2022-05-20 16:39:09','',22,'http://localhost:10004/?post_type=acf-field&p=57',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (58,1,'2022-05-20 19:39:09','2022-05-20 16:39:09','a:11:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_6287c2f0f4468\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Title','title','publish','closed','closed','','field_6287c30ef446a','','','2022-05-20 19:39:09','2022-05-20 16:39:09','',22,'http://localhost:10004/?post_type=acf-field&p=58',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (59,1,'2022-05-20 19:39:09','2022-05-20 16:39:09','a:11:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_6287c2f0f4468\";s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}','Text','text','publish','closed','closed','','field_6287c322f446b','','','2022-05-20 19:39:09','2022-05-20 16:39:09','',22,'http://localhost:10004/?post_type=acf-field&p=59',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (60,1,'2022-05-20 19:39:09','2022-05-20 16:39:09','a:7:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_6287c2f0f4468\";s:13:\"return_format\";s:5:\"array\";}','Button','button','publish','closed','closed','','field_6287c32bf446c','','','2022-05-20 19:39:09','2022-05-20 16:39:09','',22,'http://localhost:10004/?post_type=acf-field&p=60',3,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (61,1,'2022-05-20 19:40:37','2022-05-20 16:40:37','','Головна Сторінка','','inherit','closed','closed','','18-revision-v1','','','2022-05-20 19:40:37','2022-05-20 16:40:37','',18,'http://localhost:10004/?p=61',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (62,1,'2022-05-20 19:42:11','2022-05-20 16:42:11','','Головна Сторінка','','inherit','closed','closed','','18-revision-v1','','','2022-05-20 19:42:11','2022-05-20 16:42:11','',18,'http://localhost:10004/?p=62',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (63,1,'2022-05-20 20:18:35','2022-05-20 17:18:35','','dictionary','','inherit','open','closed','','dictionary','','','2022-05-20 20:18:35','2022-05-20 17:18:35','',18,'/wp-content/uploads/2022/05/dictionary.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (64,1,'2022-05-20 20:18:39','2022-05-20 17:18:39','','Головна Сторінка','','inherit','closed','closed','','18-revision-v1','','','2022-05-20 20:18:39','2022-05-20 17:18:39','',18,'http://localhost:10004/?p=64',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (65,1,'2022-05-27 17:17:33','2022-05-27 14:17:33','','Послуги','','publish','closed','closed','','%d0%bf%d0%be%d1%81%d0%bb%d1%83%d0%b3%d0%b8-2','','','2022-05-27 17:17:33','2022-05-27 14:17:33','',0,'http://localhost:10004/?p=65',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (66,1,'2022-05-27 17:17:33','2022-05-27 14:17:33','','Контакти','','publish','closed','closed','','%d0%ba%d0%be%d0%bd%d1%82%d0%b0%d0%ba%d1%82%d0%b8-2','','','2022-05-27 17:17:33','2022-05-27 14:17:33','',0,'http://localhost:10004/?p=66',2,'nav_menu_item','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (14,3,0);
INSERT INTO `wp_term_relationships` VALUES (15,3,0);
INSERT INTO `wp_term_relationships` VALUES (19,4,0);
INSERT INTO `wp_term_relationships` VALUES (65,5,0);
INSERT INTO `wp_term_relationships` VALUES (66,5,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'category','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (3,3,'nav_menu','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (4,4,'wp_theme','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (5,5,'nav_menu','',0,2);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Без категорії','%d0%b1%d0%b5%d0%b7-%d0%ba%d0%b0%d1%82%d0%b5%d0%b3%d0%be%d1%80%d1%96%d1%97',0);
INSERT INTO `wp_terms` VALUES (2,'Без категории','%d0%b1%d0%b5%d0%b7-%d0%ba%d0%b0%d1%82%d0%b5%d0%b3%d0%be%d1%80%d0%b8%d0%b8',0);
INSERT INTO `wp_terms` VALUES (3,'Header Menu','header-menu',0);
INSERT INTO `wp_terms` VALUES (4,'Libra','libra',0);
INSERT INTO `wp_terms` VALUES (5,'Footer Menu','footer-menu',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','aljona91');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:16:{s:13:\"administrator\";b:1;s:34:\"wpml_manage_translation_management\";b:1;s:21:\"wpml_manage_languages\";b:1;s:41:\"wpml_manage_theme_and_plugin_localization\";b:1;s:19:\"wpml_manage_support\";b:1;s:36:\"wpml_manage_woocommerce_multilingual\";b:1;s:37:\"wpml_operate_woocommerce_multilingual\";b:1;s:29:\"wpml_manage_media_translation\";b:1;s:22:\"wpml_manage_navigation\";b:1;s:24:\"wpml_manage_sticky_links\";b:1;s:30:\"wpml_manage_string_translation\";b:1;s:33:\"wpml_manage_translation_analytics\";b:1;s:25:\"wpml_manage_wp_menus_sync\";b:1;s:32:\"wpml_manage_taxonomy_translation\";b:1;s:27:\"wpml_manage_troubleshooting\";b:1;s:31:\"wpml_manage_translation_options\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (16,1,'default_password_nag','');
INSERT INTO `wp_usermeta` VALUES (18,1,'wp_dashboard_quick_press_last_post_id','4');
INSERT INTO `wp_usermeta` VALUES (19,1,'icl_admin_language_migrated_to_wp47','1');
INSERT INTO `wp_usermeta` VALUES (21,1,'session_tokens','a:1:{s:64:\"d39bbdcc40aeaae19330fa8eacb2d0548cf83196b88b13335c401881ea6eeace\";a:4:{s:10:\"expiration\";i:1653900527;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36\";s:5:\"login\";i:1652690927;}}');
INSERT INTO `wp_usermeta` VALUES (22,1,'wp_user-settings','libraryContent=browse&editor=html');
INSERT INTO `wp_usermeta` VALUES (23,1,'wp_user-settings-time','1652703752');
INSERT INTO `wp_usermeta` VALUES (24,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}');
INSERT INTO `wp_usermeta` VALUES (25,1,'metaboxhidden_nav-menus','a:1:{i:0;s:12:\"add-post_tag\";}');
INSERT INTO `wp_usermeta` VALUES (26,1,'nav_menu_recently_edited','5');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'aljona91','$P$Bx.cKGb.gDrzkPppd57q5dk90xAPOQ/','aljona91','dev-email@flywheel.local','http://localhost:10004','2022-05-16 08:18:23','',0,'aljona91');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-02 20:48:17
