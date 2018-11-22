/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 100110
Source Host           : localhost:3306
Source Database       : blog

Target Server Type    : MYSQL
Target Server Version : 100110
File Encoding         : 65001

Date: 2018-11-21 16:38:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for about_blog
-- ----------------------------
DROP TABLE IF EXISTS `about_blog`;
CREATE TABLE `about_blog` (
  `blog_id` mediumint(8) NOT NULL COMMENT '用户ID',
  `blog_keyword` varchar(255) NOT NULL COMMENT '博客关键字',
  `blog_description` varchar(255) NOT NULL COMMENT '博客描述',
  `blog_name` varchar(36) NOT NULL COMMENT '博客名称',
  `blog_title` varchar(128) NOT NULL COMMENT '博客标题',
  PRIMARY KEY (`blog_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of about_blog
-- ----------------------------

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `article_id` smallint(5) NOT NULL AUTO_INCREMENT COMMENT '文章自增ID号',
  `article_title` varchar(128) NOT NULL COMMENT '文章名称',
  `article_subhead` varchar(128) NOT NULL COMMENT '文章名称',
  `article_ip` char(15) NOT NULL COMMENT '发布IP',
  `article_click` int(10) NOT NULL COMMENT '查看人数',
  `article_sort_id` mediumint(8) NOT NULL COMMENT '所属分类',
  `sys_user_id` mediumint(8) NOT NULL COMMENT '所属用户ID',
  `article_type` int(13) NOT NULL DEFAULT '1' COMMENT '文章的模式:0为私有，1为公开，2为仅好友查看',
  `article_content_abstract` char(255) NOT NULL COMMENT '文章内容介绍',
  `article_content_id` smallint(5) NOT NULL COMMENT '文章内容ID',
  `article_up` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否置顶:0为否，1为是',
  `article_support` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否博主推荐:0为否，1为是',
  `article_create_time` datetime(6) NOT NULL COMMENT '发布时间',
  `article_modified_time` datetime(6) NOT NULL COMMENT '修改时间',
  `is_deleted` tinyint(1) unsigned zerofill NOT NULL COMMENT '1是删除.0是没有删除',
  PRIMARY KEY (`article_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------

-- ----------------------------
-- Table structure for article_content
-- ----------------------------
DROP TABLE IF EXISTS `article_content`;
CREATE TABLE `article_content` (
  `article_content_id` smallint(5) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `article_id` smallint(5) DEFAULT NULL COMMENT '文章ID',
  `article_content` text COMMENT '文章内容',
  PRIMARY KEY (`article_content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article_content
-- ----------------------------

-- ----------------------------
-- Table structure for article_sort
-- ----------------------------
DROP TABLE IF EXISTS `article_sort`;
CREATE TABLE `article_sort` (
  `article_sort_id` mediumint(8) NOT NULL AUTO_INCREMENT COMMENT '文章分类自增ID',
  `sys_user_id` mediumint(8) NOT NULL COMMENT '该分类所属用户',
  `article_sort_name` varchar(60) NOT NULL COMMENT '分类名称',
  `article_sort_create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `article_sort_modified_time` datetime(6) NOT NULL COMMENT '修改时间',
  `is_deleted` tinyint(1) NOT NULL COMMENT '1,是删除,0是没有删除',
  PRIMARY KEY (`article_sort_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article_sort
-- ----------------------------

-- ----------------------------
-- Table structure for maxim
-- ----------------------------
DROP TABLE IF EXISTS `maxim`;
CREATE TABLE `maxim` (
  `maxim_id` int(8) NOT NULL AUTO_INCREMENT COMMENT '说说记录ID',
  `sys_user_id` int(8) NOT NULL COMMENT '用户ID',
  `maxim` varchar(255) NOT NULL COMMENT '说说内容',
  `maxim_ip` char(15) NOT NULL COMMENT '说说发布时的IP地址',
  `maxim_create_time` datetime(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000' COMMENT '发布时间',
  `maxim__modified_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` tinyint(1) unsigned zerofill NOT NULL COMMENT '1,表示是,0表示否',
  PRIMARY KEY (`maxim_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of maxim
-- ----------------------------

-- ----------------------------
-- Table structure for message_book
-- ----------------------------
DROP TABLE IF EXISTS `message_book`;
CREATE TABLE `message_book` (
  `message_book_id` smallint(5) NOT NULL AUTO_INCREMENT COMMENT '留言表自增ID',
  `sys_user_id` mediumint(8) NOT NULL COMMENT '用户ID',
  `message_book_user_id` mediumint(8) NOT NULL COMMENT '留言者ID',
  `message_content` varchar(255) NOT NULL COMMENT '留言内容',
  `message_book_user_ip` varchar(15) NOT NULL COMMENT '留言用户的IP地址',
  `message_book_time` datetime(6) NOT NULL COMMENT '留言时间',
  `place` varchar(64) NOT NULL COMMENT '地区',
  `is_deleted` tinyint(1) unsigned zerofill DEFAULT NULL COMMENT '1是删除,0是没有删除',
  PRIMARY KEY (`message_book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message_book
-- ----------------------------

-- ----------------------------
-- Table structure for photo
-- ----------------------------
DROP TABLE IF EXISTS `photo`;
CREATE TABLE `photo` (
  `photo_id` mediumint(8) NOT NULL AUTO_INCREMENT COMMENT '相片ID',
  `photo_name` varchar(255) NOT NULL COMMENT '相片名称',
  `photo_src` varchar(255) NOT NULL COMMENT '图片路径',
  `photo_description` varchar(255) NOT NULL COMMENT '图片描述',
  `sys_user_id` mediumint(8) NOT NULL COMMENT '所属用户ID',
  `phots_sort_id` mediumint(8) NOT NULL COMMENT '所属相册ID',
  `photo_create_time` datetime(6) NOT NULL COMMENT '图片上传时间',
  `photo_modified_time` datetime(6) NOT NULL COMMENT '图片上传时间',
  `upload_ip` char(15) NOT NULL COMMENT '图片操作上传IP地址',
  PRIMARY KEY (`photo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of photo
-- ----------------------------

-- ----------------------------
-- Table structure for photo_sort
-- ----------------------------
DROP TABLE IF EXISTS `photo_sort`;
CREATE TABLE `photo_sort` (
  `photo_sort_id` mediumint(8) NOT NULL AUTO_INCREMENT COMMENT '相册ID',
  `photo_sort_name` varchar(20) NOT NULL COMMENT '相册名',
  `photo_sort_show_type` varchar(20) NOT NULL COMMENT '展示方式 0->仅主人可见,1->输入密码即可查看,2->仅好友能查看,3->回答问题即可查看',
  `photo_sort_pwd` varchar(32) NOT NULL COMMENT '查看密码',
  `sys_user_id` mediumint(8) NOT NULL COMMENT '所属用户ID',
  `visitor_question` varchar(255) NOT NULL COMMENT '访问问题',
  `visitor_answer` varchar(128) NOT NULL COMMENT '访问问题的答案',
  `top_pic_src` mediumint(8) NOT NULL COMMENT '封面图片的路径',
  `sort_create_time` datetime NOT NULL COMMENT '创建时间',
  `sort_modified_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `is_deleted` tinyint(1) DEFAULT NULL COMMENT '1,是删除,0是没有删除',
  PRIMARY KEY (`photo_sort_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of photo_sort
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `sys_user_id` mediumint(8) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `group_id` mediumint(8) NOT NULL COMMENT '用户组ID',
  `sys_user_name` varchar(32) NOT NULL COMMENT '用户名',
  `sys_user_pwd` varchar(32) NOT NULL COMMENT '用户密码',
  `sys_user_phone` char(11) NOT NULL COMMENT '用户手机号码',
  `sys_user_sex` tinyint(1) NOT NULL COMMENT '用户性别,1男,2女',
  `sys_user_qq` varchar(15) NOT NULL COMMENT '用户QQ号码',
  `sys_user_email` varchar(64) NOT NULL COMMENT '用户EMAIL地址',
  `sys_user_address` varchar(255) NOT NULL COMMENT '用户地址',
  `sys_user_last_login_ip` varchar(15) NOT NULL COMMENT '用户上一次登录IP地址',
  `sys_user_birthday` datetime(6) NOT NULL COMMENT '用户生日',
  `sys_user_image_url` varchar(255) NOT NULL COMMENT '用户头像存储路径',
  `sys_user_register_time` datetime(6) NOT NULL COMMENT '用户注册时间',
  `sys_user_register_ip` varchar(15) NOT NULL COMMENT '用户注册时IP地址',
  `sys_user_lock` tinyint(3) NOT NULL COMMENT '是否锁定，0为不锁定，1为锁定',
  `sys_user_freeze` tinyint(3) NOT NULL COMMENT '是否冻结，0为不冻结，1为冻结',
  `sys_user_role_id` varchar(255) NOT NULL COMMENT '拥有权限id',
  PRIMARY KEY (`sys_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
