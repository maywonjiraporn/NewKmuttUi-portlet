-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Nov 25, 2016 at 02:18 PM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Database: `kmutt`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `budget_type`
-- 

CREATE TABLE `budget_type` (
  `budget_type_id` int(11) NOT NULL auto_increment,
  `budget_type_name` varchar(255) NOT NULL,
  `created_by` varchar(30) NOT NULL,
  `created_dttm` datetime NOT NULL,
  `updated_by` varchar(30) NOT NULL,
  `updated_dttm` datetime NOT NULL,
  PRIMARY KEY  (`budget_type_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

-- 
-- Dumping data for table `budget_type`
-- 

INSERT INTO `budget_type` VALUES (1, 'EI', 'null', '2016-09-19 11:05:01', 'null', '2016-09-19 11:05:01');
INSERT INTO `budget_type` VALUES (5, 'EE', 'null', '2016-09-13 13:56:18', 'null', '2016-09-13 13:56:18');
INSERT INTO `budget_type` VALUES (9, 'IE', 'null', '2016-09-16 15:26:41', 'null', '2016-09-16 15:26:41');
INSERT INTO `budget_type` VALUES (8, 'EII', 'null', '2016-09-19 17:20:05', 'ADMIN', '2016-09-19 17:20:05');
INSERT INTO `budget_type` VALUES (10, 'TEST1', 'ADMIN', '2016-09-19 17:17:36', 'ADMIN', '2016-09-19 17:17:36');
INSERT INTO `budget_type` VALUES (12, 'TEST', 'ADMIN', '2016-09-19 17:17:00', 'ADMIN', '2016-09-19 17:17:00');
INSERT INTO `budget_type` VALUES (13, '1', 'ADMIN', '2016-09-19 17:28:03', 'ADMIN', '2016-09-19 17:28:03');
INSERT INTO `budget_type` VALUES (14, '12', 'ADMIN', '2016-09-23 11:35:46', 'ADMIN', '2016-09-23 11:36:09');
INSERT INTO `budget_type` VALUES (15, '23', 'ADMIN', '2016-09-23 11:35:52', 'ADMIN', '2016-09-23 11:36:01');
INSERT INTO `budget_type` VALUES (16, '34', 'ADMIN', '2016-09-23 11:36:16', 'ADMIN', '2016-09-23 11:36:16');
INSERT INTO `budget_type` VALUES (17, '1', 'ADMIN', '2016-09-28 09:30:35', 'ADMIN', '2016-09-28 09:30:35');

-- --------------------------------------------------------

-- 
-- Table structure for table `item_group`
-- 

CREATE TABLE `item_group` (
  `item_group_id` int(11) NOT NULL auto_increment,
  `item_group_name` varchar(255) NOT NULL,
  `item_group_description` varchar(255) NOT NULL,
  `created_by` varchar(30) NOT NULL,
  `created_dttm` datetime NOT NULL,
  `updated_by` varchar(30) NOT NULL,
  `updated_dttm` datetime NOT NULL,
  PRIMARY KEY  (`item_group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=53 ;

-- 
-- Dumping data for table `item_group`
-- 

INSERT INTO `item_group` VALUES (2, 'ค่าบำรุง / ค่าธรรมเนียมการศึกษา', 'ธรรมเนียมการศึกษา', 'ADMIN', '2016-09-19 16:19:46', 'ADMIN', '2016-09-23 11:40:37');
INSERT INTO `item_group` VALUES (3, 'รายได้จากงานบริการวิชาการ/วิจัย', 'รายได้จากงานบริการวิชาการ/วิจัย', 'null', '2016-09-19 10:41:03', 'null', '2016-09-19 10:41:03');
INSERT INTO `item_group` VALUES (4, 'รายได้เงินอุดหนุนจากรัฐบาล', 'รายได้เงินอุดหนุนจากรัฐบาล', 'null', '2016-09-16 10:45:18', 'null', '2016-09-16 10:45:18');
INSERT INTO `item_group` VALUES (5, 'งานอื่นๆ', 'ส่วนรวม', 'null', '2016-09-16 10:42:54', 'ADMIN', '2016-09-21 09:22:41');
INSERT INTO `item_group` VALUES (1, 'งานวิจัย', 'ในส่วนของการวิจัย', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `item_group` VALUES (6, 'รายได้ภายใน จากการศึกษา', 'รายได้ภายใน จากการศึกษา', '', '0000-00-00 00:00:00', 'ADMIN', '2016-09-22 17:58:58');
INSERT INTO `item_group` VALUES (7, 'รายได้ภายใน บริการวิชาการ', 'รายได้ภายใน บริการวิชาการ', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `item_group` VALUES (8, 'รายได้ภายใน วิจัย', 'รายได้ภายใน วิจัย', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `item_group` VALUES (9, 'รายได้ภายใน ระหว่างหน่วยงาน', 'รายได้ภายใน ระหว่างหน่วยงาน', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `item_group` VALUES (10, 'รวมรายได้สุทธิ', 'รวมรายได้สุทธิ', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `item_group` VALUES (11, 'ค่าใช้จ่ายบุคลากร', 'ค่าใช้จ่ายบุคลากร', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `item_group` VALUES (12, 'ค่าใช้จ่ายดำเนินงาน', 'ค่าใช้จ่ายดำเนินงาน', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `item_group` VALUES (13, 'ค่าสาธารณูปโภค', 'ค่าสาธารณูปโภค', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `item_group` VALUES (14, 'อุดหนุน', 'อุดหนุน', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `item_group` VALUES (15, 'รายจ่ายอื่น', 'รายจ่ายอื่น', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `item_group` VALUES (16, 'รายจ่ายการตลาด', 'รายจ่ายการตลาด', 'null', '2016-09-16 13:43:05', 'null', '2016-09-16 13:43:05');
INSERT INTO `item_group` VALUES (17, '444', '4444', 'null', '2016-09-19 10:26:20', 'null', '2016-09-19 10:26:20');
INSERT INTO `item_group` VALUES (18, '1', '1', 'null', '2016-09-19 10:27:21', 'null', '2016-09-19 10:27:21');
INSERT INTO `item_group` VALUES (19, '2', '2', 'null', '2016-09-19 10:29:06', 'null', '2016-09-19 10:29:06');
INSERT INTO `item_group` VALUES (20, '3', '3', 'null', '2016-09-19 14:54:53', 'null', '2016-09-19 14:54:53');
INSERT INTO `item_group` VALUES (24, '6', '6', 'null', '2016-09-19 15:20:32', 'null', '2016-09-19 15:20:32');
INSERT INTO `item_group` VALUES (22, '4', '4', 'null', '2016-09-19 15:17:08', 'null', '2016-09-19 15:17:08');
INSERT INTO `item_group` VALUES (23, '5', '5', 'null', '2016-09-19 15:18:27', 'null', '2016-09-19 15:18:27');
INSERT INTO `item_group` VALUES (25, '7', '7', 'null', '2016-09-19 15:23:54', 'null', '2016-09-19 15:23:54');
INSERT INTO `item_group` VALUES (33, '66', '66', 'ADMIN', '2016-09-19 16:06:17', 'ADMIN', '2016-09-19 16:06:17');
INSERT INTO `item_group` VALUES (40, 'ee', 'ee', 'ADMIN', '2016-09-23 11:01:39', 'ADMIN', '2016-09-23 11:01:39');
INSERT INTO `item_group` VALUES (41, 'r', 'r', 'ADMIN', '2016-09-23 11:04:37', 'ADMIN', '2016-09-23 11:04:37');
INSERT INTO `item_group` VALUES (42, '12', '12', 'ADMIN', '2016-09-23 11:36:30', 'ADMIN', '2016-09-23 11:36:30');
INSERT INTO `item_group` VALUES (43, '23', '23', 'ADMIN', '2016-09-23 11:36:43', 'ADMIN', '2016-09-23 11:36:43');
INSERT INTO `item_group` VALUES (45, '45', '45', 'ADMIN', '2016-09-23 11:40:03', 'ADMIN', '2016-09-23 11:40:03');
INSERT INTO `item_group` VALUES (46, '56', '56', 'ADMIN', '2016-09-23 11:40:10', 'ADMIN', '2016-09-23 11:40:10');
INSERT INTO `item_group` VALUES (47, '15444', '1454444', 'ADMIN', '2016-09-23 11:51:38', 'ADMIN', '2016-09-23 11:51:47');
INSERT INTO `item_group` VALUES (51, 'wwww', 'www', 'ADMIN', '2016-09-27 14:52:48', 'ADMIN', '2016-09-27 14:52:48');

-- --------------------------------------------------------

-- 
-- Table structure for table `item_group_account`
-- 

CREATE TABLE `item_group_account` (
  `item_group_account_id` int(11) NOT NULL auto_increment,
  `item_group_id` int(11) NOT NULL,
  `start_account_code` varchar(30) NOT NULL,
  `end_account_code` varchar(30) NOT NULL,
  `created_by` varchar(30) NOT NULL,
  `created_dttm` datetime NOT NULL,
  `updated_by` varchar(30) NOT NULL,
  `updated_dttm` datetime NOT NULL,
  PRIMARY KEY  (`item_group_account_id`),
  KEY `item_group_item_group_account_fk` (`item_group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=53 ;

-- 
-- Dumping data for table `item_group_account`
-- 

INSERT INTO `item_group_account` VALUES (1, 1, '40101000000', '40101999998', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `item_group_account` VALUES (2, 2, '40201020001', '40599999998', 'ADMIN', '2016-09-19 17:02:08', 'ADMIN', '2016-09-28 11:43:21');
INSERT INTO `item_group_account` VALUES (3, 1, '40102010001', '40102999998', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `item_group_account` VALUES (4, 1, '40103000001', '40103999998', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `item_group_account` VALUES (5, 2, '40301020001', '40499999998', 'null', '2016-09-19 11:23:29', 'ADMIN', '2016-09-20 09:12:13');
INSERT INTO `item_group_account` VALUES (28, 6, '0011', '0015', 'null', '2016-09-16 13:32:56', 'null', '2016-09-16 13:32:56');
INSERT INTO `item_group_account` VALUES (27, 6, '0006', '0010', 'null', '2016-09-16 13:28:44', 'null', '2016-09-16 13:28:44');
INSERT INTO `item_group_account` VALUES (24, 12, '0022', '0022', 'null', '2016-09-16 10:41:04', 'null', '2016-09-16 10:41:04');
INSERT INTO `item_group_account` VALUES (25, 2, '40501020001', '40699999998', 'null', '2016-09-19 11:46:15', 'null', '2016-09-19 11:46:15');
INSERT INTO `item_group_account` VALUES (26, 6, '0001', '0005', 'null', '2016-09-16 13:28:28', 'null', '2016-09-16 13:28:28');
INSERT INTO `item_group_account` VALUES (21, 11, '1234', '1234', 'null', '2016-09-15 18:11:32', 'null', '2016-09-15 18:11:32');
INSERT INTO `item_group_account` VALUES (22, 11, '1345', '1345', 'null', '2016-09-15 18:13:57', 'null', '2016-09-15 18:13:57');
INSERT INTO `item_group_account` VALUES (23, 12, '0011', '0011', 'null', '2016-09-16 10:41:18', 'null', '2016-09-16 10:41:18');
INSERT INTO `item_group_account` VALUES (29, 6, '0020', '0025', 'null', '2016-09-16 13:37:14', 'null', '2016-09-16 13:37:14');
INSERT INTO `item_group_account` VALUES (30, 6, '0030', '0035', 'null', '2016-09-16 13:38:54', 'null', '2016-09-16 13:38:54');
INSERT INTO `item_group_account` VALUES (31, 6, '000', '1111', 'null', '2016-09-16 13:40:32', 'null', '2016-09-16 13:40:32');
INSERT INTO `item_group_account` VALUES (32, 6, '1111', '0000', 'null', '2016-09-16 13:41:09', 'null', '2016-09-16 13:41:09');
INSERT INTO `item_group_account` VALUES (33, 5, '0000012', '0000056', 'null', '2016-09-16 15:57:53', 'null', '2016-09-16 15:57:53');
INSERT INTO `item_group_account` VALUES (35, 10, '000000101', '500100001', 'null', '2016-09-16 17:30:48', 'null', '2016-09-16 17:30:48');
INSERT INTO `item_group_account` VALUES (36, 10, '000000102', '500100002', 'null', '2016-09-16 17:30:37', 'null', '2016-09-16 17:30:37');
INSERT INTO `item_group_account` VALUES (40, 2, '1', '1', 'null', '2016-09-19 16:08:06', 'null', '2016-09-19 16:08:06');
INSERT INTO `item_group_account` VALUES (46, 3, '1', '1', 'ADMIN', '2016-09-22 16:01:30', 'ADMIN', '2016-09-22 16:01:30');
INSERT INTO `item_group_account` VALUES (42, 2, 'fgh', 'h', 'null', '2016-09-19 16:17:06', 'null', '2016-09-19 16:17:06');
INSERT INTO `item_group_account` VALUES (45, 2, '45', '45', 'ADMIN', '2016-09-19 17:04:45', 'ADMIN', '2016-09-19 17:04:45');
INSERT INTO `item_group_account` VALUES (47, 3, '2', '2', 'ADMIN', '2016-09-22 16:01:44', 'ADMIN', '2016-09-22 16:01:44');
INSERT INTO `item_group_account` VALUES (48, 3, '3', '3', 'ADMIN', '2016-09-22 16:01:58', 'ADMIN', '2016-09-22 16:01:58');
INSERT INTO `item_group_account` VALUES (49, 5, '0000013', '0000057', 'ADMIN', '2016-09-22 16:03:57', 'ADMIN', '2016-09-22 16:03:57');
INSERT INTO `item_group_account` VALUES (50, 2, '444555', '444555', 'ADMIN', '2016-09-23 11:59:24', 'ADMIN', '2016-09-23 11:59:36');
INSERT INTO `item_group_account` VALUES (51, 2, '3333', '3333', 'ADMIN', '2016-09-23 11:59:46', 'ADMIN', '2016-09-23 11:59:46');
INSERT INTO `item_group_account` VALUES (52, 16, '00010', '00010', 'ADMIN', '2016-09-27 11:43:49', 'ADMIN', '2016-09-27 11:43:49');

-- --------------------------------------------------------

-- 
-- Table structure for table `report_tempate_budget`
-- 

CREATE TABLE `report_tempate_budget` (
  `template_budget_id` int(11) NOT NULL auto_increment,
  `template_detail_id` int(11) NOT NULL,
  `start_budget_id` varchar(30) NOT NULL,
  `end_budget_id` varchar(30) NOT NULL,
  `created_by` varchar(30) NOT NULL,
  `created_dttm` datetime NOT NULL,
  `updated_by` varchar(30) NOT NULL,
  `updated_dttm` datetime NOT NULL,
  PRIMARY KEY  (`template_budget_id`),
  KEY `report_template_detail_report_tempate_budget_fk` (`template_detail_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- 
-- Dumping data for table `report_tempate_budget`
-- 

INSERT INTO `report_tempate_budget` VALUES (1, 1, '1', '1', 'ADMIN', '2016-09-23 11:11:28', 'ADMIN', '2016-09-23 11:11:28');
INSERT INTO `report_tempate_budget` VALUES (2, 1, '2', '2', 'ADMIN', '2016-09-23 11:24:03', 'ADMIN', '2016-09-23 11:24:03');
INSERT INTO `report_tempate_budget` VALUES (4, 3, '1212121', '12121221', 'null', '2016-09-29 16:17:24', 'null', '2016-09-29 16:17:28');

-- --------------------------------------------------------

-- 
-- Table structure for table `report_template_detail`
-- 

CREATE TABLE `report_template_detail` (
  `template_detail_id` int(11) NOT NULL auto_increment,
  `template_header_id` int(11) NOT NULL,
  `level_id` int(11) NOT NULL,
  `level_line_id` int(11) NOT NULL,
  `item_group_id` int(11) NOT NULL,
  `parent_id` int(11) default NULL,
  `net_total_group` int(11) default NULL,
  `budget_type_id` int(11) default NULL,
  `created_by` varchar(30) NOT NULL,
  `created_dttm` datetime NOT NULL,
  `updated_by` varchar(30) NOT NULL,
  `updated_dttm` datetime NOT NULL,
  PRIMARY KEY  (`template_detail_id`),
  KEY `budget_type_report_template_detail_fk` (`budget_type_id`),
  KEY `item_group_report_template_detail_fk` (`item_group_id`),
  KEY `report_template_header_report_template_detail_fk` (`template_header_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- 
-- Dumping data for table `report_template_detail`
-- 

INSERT INTO `report_template_detail` VALUES (1, 1, 1, 1, 2, 1, 1, 1, 'ADMIN', '2016-09-23 10:53:42', 'ADMIN', '2016-09-23 10:53:42');
INSERT INTO `report_template_detail` VALUES (2, 1, 2, 2, 3, 2, 2, 1, 'ADMIN', '2016-09-23 11:12:23', 'ADMIN', '2016-09-23 11:12:23');
INSERT INTO `report_template_detail` VALUES (3, 3, 12, 12, 2, 12, 12, 1, 'null', '2016-09-29 16:16:56', 'null', '2016-09-29 16:16:56');

-- --------------------------------------------------------

-- 
-- Table structure for table `report_template_fund`
-- 

CREATE TABLE `report_template_fund` (
  `template_fund_id` int(11) NOT NULL auto_increment,
  `template_detail_id` int(11) NOT NULL,
  `start_fund_id` varchar(30) NOT NULL,
  `end_fund_id` varchar(30) NOT NULL,
  `created_by` varchar(30) NOT NULL,
  `created_dttm` datetime NOT NULL,
  `updated_by` varchar(30) NOT NULL,
  `updated_dttm` datetime NOT NULL,
  PRIMARY KEY  (`template_fund_id`),
  KEY `report_template_detail_report_template_fund_fk` (`template_detail_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- 
-- Dumping data for table `report_template_fund`
-- 

INSERT INTO `report_template_fund` VALUES (1, 1, '1', '1', 'ADMIN', '2016-09-23 10:57:35', 'ADMIN', '2016-09-23 10:57:35');
INSERT INTO `report_template_fund` VALUES (2, 3, '12', '12', 'null', '2016-09-29 16:17:07', 'null', '2016-09-29 16:17:07');

-- --------------------------------------------------------

-- 
-- Table structure for table `report_template_header`
-- 

CREATE TABLE `report_template_header` (
  `template_header_id` int(11) NOT NULL auto_increment,
  `template_name` varchar(255) NOT NULL,
  `template_type_id` int(11) NOT NULL,
  `created_by` varchar(30) NOT NULL,
  `created_dttm` datetime NOT NULL,
  `updated_by` varchar(30) NOT NULL,
  `updated_dttm` datetime NOT NULL,
  PRIMARY KEY  (`template_header_id`),
  KEY `template_type_report_template_header_fk` (`template_type_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

-- 
-- Dumping data for table `report_template_header`
-- 

INSERT INTO `report_template_header` VALUES (1, '4', 30, 'null', '2016-09-23 10:33:23', 'null', '2016-09-23 10:33:23');
INSERT INTO `report_template_header` VALUES (2, 'fff', 30, 'ADMIN', '2016-09-23 10:39:02', 'ADMIN', '2016-09-23 10:39:02');
INSERT INTO `report_template_header` VALUES (3, '123', 38, 'ADMIN', '2016-09-23 12:00:16', 'ADMIN', '2016-09-23 12:21:17');
INSERT INTO `report_template_header` VALUES (7, '4555', 38, 'ADMIN', '2016-09-23 12:01:37', 'ADMIN', '2016-09-23 12:23:32');
INSERT INTO `report_template_header` VALUES (5, '2', 38, 'ADMIN', '2016-09-23 12:00:32', 'ADMIN', '2016-09-23 12:00:32');
INSERT INTO `report_template_header` VALUES (8, '4', 38, 'ADMIN', '2016-09-23 12:01:37', 'ADMIN', '2016-09-23 12:01:37');
INSERT INTO `report_template_header` VALUES (9, '5555', 38, 'ADMIN', '2016-09-23 12:08:12', 'ADMIN', '2016-09-23 12:08:12');
INSERT INTO `report_template_header` VALUES (10, '5555', 38, 'ADMIN', '2016-09-23 12:08:12', 'ADMIN', '2016-09-23 12:08:12');
INSERT INTO `report_template_header` VALUES (12, '55555555', 38, 'ADMIN', '2016-09-23 12:11:46', 'ADMIN', '2016-09-23 12:11:46');
INSERT INTO `report_template_header` VALUES (13, '55555555', 38, 'ADMIN', '2016-09-23 12:11:46', 'ADMIN', '2016-09-23 12:11:46');
INSERT INTO `report_template_header` VALUES (14, 'การงาน', 38, 'ADMIN', '2016-09-23 12:14:57', 'ADMIN', '2016-09-23 12:14:57');
INSERT INTO `report_template_header` VALUES (15, 'การงาน', 38, 'ADMIN', '2016-09-23 12:14:57', 'ADMIN', '2016-09-23 12:14:57');

-- --------------------------------------------------------

-- 
-- Table structure for table `template_type`
-- 

CREATE TABLE `template_type` (
  `template_type_id` int(11) NOT NULL auto_increment,
  `template_type_name` varchar(255) NOT NULL,
  `created_by` varchar(30) NOT NULL,
  `created_dttm` datetime NOT NULL,
  `updated_by` varchar(30) NOT NULL,
  `updated_dttm` datetime NOT NULL,
  PRIMARY KEY  (`template_type_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=41 ;

-- 
-- Dumping data for table `template_type`
-- 

INSERT INTO `template_type` VALUES (38, 'year1', 'ADMIN', '2016-09-23 11:34:32', 'ADMIN', '2016-09-27 14:45:21');
INSERT INTO `template_type` VALUES (35, 'day', 'ADMIN', '2016-09-23 11:30:22', 'ADMIN', '2016-09-23 11:30:22');
