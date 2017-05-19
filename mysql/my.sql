/*
 Navicat MySQL Data Transfer

 Source Server         : Kickfolio Local
 Source Server Type    : MySQL
 Source Server Version : 50635
 Source Host           : localhost
 Source Database       : kickfolio

 Target Server Type    : MySQL
 Target Server Version : 50635
 File Encoding         : utf-8

 Date: 05/09/2017 14:14:19 PM
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `pages`
-- ----------------------------
DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `page_id` int(10) NOT NULL,
  `page_name` varchar(150) DEFAULT NULL,
  `page_heading` varchar(150) DEFAULT NULL,
  `page_strapline` varchar(250) DEFAULT NULL,
  `page_teaser` longtext,
  `page_content` longtext,
  `page_layout` varchar(50) DEFAULT NULL,
  `page_metatitle` varchar(150) DEFAULT NULL,
  `page_metadesc` varchar(500) DEFAULT NULL,
  `page_true_link` varchar(250) DEFAULT NULL,
  `page_url_rewrite` varchar(500) DEFAULT NULL,
  `page_theme` varchar(50) DEFAULT NULL,
  `page_created` datetime DEFAULT NULL,
  `page_modified` datetime DEFAULT NULL,
  `page_active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Records of `pages`
-- ----------------------------
BEGIN;
INSERT INTO `pages` VALUES ('1', 'Home', 'We Are Kick', 'Stapline goes here', 'Teaser text goes here', 'Page content goes here', 'home', null, null, null, null, null, '2017-05-09 14:11:57', '2017-05-09 14:11:59', '1'), ('2', 'About', 'About', 'Stapline goes here', 'Teaser text goes here', 'Page content goes here', 'about', null, null, null, null, null, '2017-05-09 14:13:42', '2017-05-09 14:13:44', '1'), ('3', 'Projects', 'Projects', 'Stapline goes here', 'Teaser text goes here', 'Page content goes here', null, null, null, null, null, null, '2017-05-09 14:13:46', '2017-05-09 14:13:48', '1');
COMMIT;

-- ----------------------------
--  Table structure for `projects`
-- ----------------------------
DROP TABLE IF EXISTS `projects`;
CREATE TABLE `projects` (
  `project_id` int(10) NOT NULL,
  `project_name` varchar(150) DEFAULT NULL,
  `project_heading` varchar(150) DEFAULT NULL,
  `project_strapline` varchar(250) DEFAULT NULL,
  `project_teaser` longtext,
  `project_content` longtext,
  `project_layout` varchar(50) DEFAULT NULL,
  `project_metatitle` longtext,
  `project_metadesc` longtext,
  `project_true_link` varchar(250) DEFAULT NULL,
  `project_url_rewrite` varchar(255) DEFAULT NULL,
  `project_website_url` varchar(100) DEFAULT NULL,
  `project_email` varchar(100) DEFAULT NULL,
  `project_created` date DEFAULT NULL,
  `project_modified` date DEFAULT NULL,
  `project_active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

SET FOREIGN_KEY_CHECKS = 1;
