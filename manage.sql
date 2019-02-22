/*
Navicat MySQL Data Transfer

Source Server         : MySql
Source Server Version : 50723
Source Host           : 127.0.0.1:3306
Source Database       : manage

Target Server Type    : MYSQL
Target Server Version : 50723
File Encoding         : 65001

Date: 2019-02-22 09:02:32
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL COMMENT '菜单名称',
  `pid` int(11) DEFAULT NULL COMMENT '父菜单id',
  `zindex` int(2) DEFAULT NULL COMMENT '菜单排序',
  `istype` int(1) DEFAULT NULL COMMENT '权限分类（0 菜单；1 功能）',
  `descpt` varchar(50) DEFAULT NULL COMMENT '描述',
  `code` varchar(20) DEFAULT NULL COMMENT '菜单编号',
  `icon` varchar(30) DEFAULT NULL COMMENT '菜单图标名称',
  `page` varchar(50) DEFAULT NULL COMMENT '菜单url',
  `insert_time` datetime DEFAULT NULL COMMENT '添加时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES ('1', '系统管理', '0', '1', '0', '系统管理', 'system', '', '/', '2017-12-20 16:22:43', '2019-02-21 11:04:47');
INSERT INTO `permission` VALUES ('2', '--     用户管理', '1', '11', '0', '用户管理', 'usermanage', '', '/user/userList', '2017-12-20 16:27:03', '2019-02-21 21:34:17');
INSERT INTO `permission` VALUES ('3', '-- 角色管理', '1', '12', '0', '角色管理', 'rolemanage', '', '/auth/roleManage', '2017-12-20 16:27:03', '2019-02-21 21:33:04');
INSERT INTO `permission` VALUES ('4', '-- 权限管理', '1', '13', '0', '权限管理', 'permmanage', null, '/auth/permList', '2017-12-30 19:17:32', '2019-02-21 21:33:14');
INSERT INTO `permission` VALUES ('5', '基础信息', '0', '2', '0', '原料管理', 'info', null, '/', '2017-12-30 19:17:50', '2019-02-22 08:52:00');
INSERT INTO `permission` VALUES ('6', '原料管理', '0', '3', '0', '原料管理', 'channel', null, '/', '2018-01-01 11:07:17', '2019-02-21 11:05:25');
INSERT INTO `permission` VALUES ('8', '成品管理', '0', '4', '0', '成品管理', 'orders', null, '/', '2018-01-09 09:26:53', '2019-02-21 11:05:47');
INSERT INTO `permission` VALUES ('10', '-- 原料入库', '6', '31', '0', '人员档案信息', 'channelPage', null, '/channel/channelListPage', '2018-01-09 19:07:05', '2019-02-21 21:34:50');
INSERT INTO `permission` VALUES ('13', '-- 人员档案信息', '5', '21', '0', '商品列表', 'staff', null, '/staff/staffList', '2018-01-09 19:33:53', '2019-02-22 08:52:27');
INSERT INTO `permission` VALUES ('14', '-- 成品入库', '8', '41', '0', '商品订单列表', 'orderPage', null, '/order/orderPage', '2018-01-09 19:34:33', '2019-02-21 21:34:59');
INSERT INTO `permission` VALUES ('15', '质检管理', '0', '5', '0', '质检管理', 'query', null, '/', '2019-02-21 10:59:31', '2019-02-21 11:06:07');
INSERT INTO `permission` VALUES ('19', '-- 客户档案信息', '5', '22', '0', '客户档案信息', 'customer', null, '/customer/customerList', '2019-02-21 11:03:40', '2019-02-22 08:51:27');
INSERT INTO `permission` VALUES ('20', '--  成品质检', '15', '51', '0', '成品质检', 'zhiliang', null, '/zhiliang', '2019-02-21 11:07:30', '2019-02-22 08:45:11');
INSERT INTO `permission` VALUES ('21', '次品管理', '0', '6', '0', '次品管理', 'cipin', null, '/', '2019-02-21 14:41:24', null);
INSERT INTO `permission` VALUES ('22', '生产管理', '0', '7', '0', '生产管理', 'shengchan', null, '/', '2019-02-21 14:41:54', null);
INSERT INTO `permission` VALUES ('23', '资产管理', '0', '8', '0', '资产管理', 'zichan', null, '/', '2019-02-21 14:42:28', null);
INSERT INTO `permission` VALUES ('24', '--  供商档案信息', '5', '23', '0', '供商档案信息', 'gys', null, '/gongyingshang', '2019-02-21 14:44:33', '2019-02-21 21:34:34');
INSERT INTO `permission` VALUES ('25', '-- 次品报检', '21', '61', '0', '次品报检', 'cipin', null, '/cipin', '2019-02-21 14:46:23', '2019-02-22 08:45:23');
INSERT INTO `permission` VALUES ('26', '-- 生产领料', '22', '71', '0', '生产领料', 'sc', null, '/shengchan', '2019-02-21 14:47:10', '2019-02-22 08:45:32');
INSERT INTO `permission` VALUES ('27', '-- 资产验收', '23', '81', '0', '资产验收', 'zichan', null, '/zichan', '2019-02-21 14:47:52', '2019-02-22 08:45:40');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(30) DEFAULT NULL COMMENT '角色名称',
  `descpt` varchar(50) DEFAULT NULL COMMENT '角色描述',
  `code` varchar(20) DEFAULT NULL COMMENT '角色编号',
  `insert_uid` int(11) DEFAULT NULL COMMENT '操作用户id',
  `insert_time` datetime DEFAULT NULL COMMENT '添加数据时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '超级管理', '超级管理员', 'superman', null, '2018-01-09 19:28:53', '2019-02-21 14:48:04');
INSERT INTO `role` VALUES ('2', '高级管理员', '高级管理员', 'highmanage', null, '2018-01-17 13:53:23', '2019-02-21 11:20:02');
INSERT INTO `role` VALUES ('3', '经理', '经理', 'bdmanage', null, '2018-01-18 13:41:47', '2019-02-21 11:20:16');
INSERT INTO `role` VALUES ('4', '质检员', '质检员', 'checkmanage', null, '2018-01-18 14:03:00', '2019-02-21 11:20:44');
INSERT INTO `role` VALUES ('5', '客维员', '客维员', 'guestmanage', null, '2018-01-18 14:06:48', '2019-02-21 11:21:11');

-- ----------------------------
-- Table structure for role_permission
-- ----------------------------
DROP TABLE IF EXISTS `role_permission`;
CREATE TABLE `role_permission` (
  `role_id` int(5) NOT NULL,
  `permit_id` int(5) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`permit_id`,`role_id`),
  KEY `perimitid` (`permit_id`) USING BTREE,
  KEY `roleid` (`role_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_permission
-- ----------------------------
INSERT INTO `role_permission` VALUES ('1', '1');
INSERT INTO `role_permission` VALUES ('2', '1');
INSERT INTO `role_permission` VALUES ('1', '2');
INSERT INTO `role_permission` VALUES ('2', '2');
INSERT INTO `role_permission` VALUES ('1', '3');
INSERT INTO `role_permission` VALUES ('2', '3');
INSERT INTO `role_permission` VALUES ('1', '4');
INSERT INTO `role_permission` VALUES ('1', '5');
INSERT INTO `role_permission` VALUES ('2', '5');
INSERT INTO `role_permission` VALUES ('3', '5');
INSERT INTO `role_permission` VALUES ('5', '5');
INSERT INTO `role_permission` VALUES ('1', '6');
INSERT INTO `role_permission` VALUES ('2', '6');
INSERT INTO `role_permission` VALUES ('3', '6');
INSERT INTO `role_permission` VALUES ('1', '8');
INSERT INTO `role_permission` VALUES ('2', '8');
INSERT INTO `role_permission` VALUES ('3', '8');
INSERT INTO `role_permission` VALUES ('1', '10');
INSERT INTO `role_permission` VALUES ('2', '10');
INSERT INTO `role_permission` VALUES ('3', '10');
INSERT INTO `role_permission` VALUES ('1', '13');
INSERT INTO `role_permission` VALUES ('2', '13');
INSERT INTO `role_permission` VALUES ('3', '13');
INSERT INTO `role_permission` VALUES ('5', '13');
INSERT INTO `role_permission` VALUES ('1', '14');
INSERT INTO `role_permission` VALUES ('2', '14');
INSERT INTO `role_permission` VALUES ('3', '14');
INSERT INTO `role_permission` VALUES ('1', '15');
INSERT INTO `role_permission` VALUES ('2', '15');
INSERT INTO `role_permission` VALUES ('3', '15');
INSERT INTO `role_permission` VALUES ('4', '15');
INSERT INTO `role_permission` VALUES ('1', '19');
INSERT INTO `role_permission` VALUES ('2', '19');
INSERT INTO `role_permission` VALUES ('3', '19');
INSERT INTO `role_permission` VALUES ('5', '19');
INSERT INTO `role_permission` VALUES ('1', '20');
INSERT INTO `role_permission` VALUES ('2', '20');
INSERT INTO `role_permission` VALUES ('3', '20');
INSERT INTO `role_permission` VALUES ('4', '20');
INSERT INTO `role_permission` VALUES ('1', '21');
INSERT INTO `role_permission` VALUES ('1', '22');
INSERT INTO `role_permission` VALUES ('1', '23');
INSERT INTO `role_permission` VALUES ('1', '24');
INSERT INTO `role_permission` VALUES ('1', '25');
INSERT INTO `role_permission` VALUES ('1', '26');
INSERT INTO `role_permission` VALUES ('1', '27');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT '' COMMENT '用户名',
  `rolename` varchar(50) DEFAULT NULL,
  `mobile` varchar(15) DEFAULT '' COMMENT '手机号',
  `email` varchar(50) DEFAULT '' COMMENT '邮箱',
  `password` varchar(50) DEFAULT '' COMMENT '密码',
  `insert_uid` int(11) DEFAULT NULL COMMENT '添加该用户的用户id',
  `insert_time` datetime DEFAULT NULL COMMENT '注册时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `is_del` tinyint(1) DEFAULT '0' COMMENT '是否删除（0：正常；1：已删）',
  `is_job` tinyint(1) DEFAULT '0' COMMENT '是否在职（0：正常；1，离职）',
  `mcode` varchar(10) DEFAULT '' COMMENT '短信验证码',
  `send_time` datetime DEFAULT NULL COMMENT '短信发送时间',
  `version` int(10) DEFAULT '0' COMMENT '更新版本',
  PRIMARY KEY (`id`),
  KEY `name` (`username`) USING BTREE,
  KEY `id` (`id`) USING BTREE,
  KEY `mobile` (`mobile`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', '超级管理员', '12316596566', 'aaa', 'e10adc3949ba59abbe56e057f20f883e', null, '2017-12-29 17:27:23', '2018-01-09 13:34:33', '0', '0', '123456', '2018-01-17 13:42:45', '0');
INSERT INTO `user` VALUES ('3', 'cs1', '测试用户1', '11155556667', 'a11', 'e10adc3949ba59abbe56e057f20f883e', '1', '2018-01-01 15:17:19', '2019-02-21 11:25:27', '0', '0', null, null, '1');
INSERT INTO `user` VALUES ('5', 'cs2', '测试用户2', '11155552233', 'a', 'e10adc3949ba59abbe56e057f20f883e', '1', '2018-01-02 13:41:29', '2019-02-21 11:25:52', '0', '0', null, null, '2');
INSERT INTO `user` VALUES ('6', 'wyyyy', null, '12356456542', 'afdfd123', 'e10adc3949ba59abbe56e057f20f883e', '1', '2018-01-02 13:44:04', '2019-02-21 11:25:57', '0', '1', null, null, '2');
INSERT INTO `user` VALUES ('7', 'wwwww', null, '11155623232', '123456', 'c33367701511b4f6020ec61ded352059', '1', '2018-01-02 13:44:23', '2019-02-21 11:26:01', '1', '0', null, null, '2');
INSERT INTO `user` VALUES ('8', 'manage', null, '12345678911', '359818226@.com', 'e10adc3949ba59abbe56e057f20f883e', null, '2018-01-04 16:51:21', '2018-01-08 21:02:38', '0', '0', null, null, '0');
INSERT INTO `user` VALUES ('10', 'b', null, '12345678977', 'a', 'c33367701511b4f6020ec61ded352059', '1', '2018-01-09 10:30:56', '2018-04-22 21:27:53', '0', '0', null, null, '0');
INSERT INTO `user` VALUES ('11', 'e', null, '12345678911', 'e', 'c33367701511b4f6020ec61ded352059', null, '2018-01-09 10:31:08', null, '0', '0', null, null, '0');
INSERT INTO `user` VALUES ('12', 'ee', null, '12345678919', 'a', 'c33367701511b4f6020ec61ded352059', '1', '2018-01-09 10:31:33', '2018-04-22 21:28:01', '0', '0', null, null, '0');
INSERT INTO `user` VALUES ('13', '456', null, '12345678888', 'e', 'c33367701511b4f6020ec61ded352059', null, '2018-01-09 10:31:46', null, '0', '0', null, null, '0');
INSERT INTO `user` VALUES ('14', '89', null, '12345612222', 'a', 'c33367701511b4f6020ec61ded352059', null, '2018-01-09 10:31:58', null, '0', '0', null, null, '0');
INSERT INTO `user` VALUES ('15', 'aa', null, '12345678915', 'ee1', 'c33367701511b4f6020ec61ded352059', null, '2018-01-09 10:32:12', '2018-01-09 13:29:12', '0', '0', null, null, '0');
INSERT INTO `user` VALUES ('16', 'tty', null, '12345678521', 'aa', 'c33367701511b4f6020ec61ded352059', null, '2018-01-09 13:32:17', '2018-01-09 13:45:58', '0', '0', null, null, '0');
INSERT INTO `user` VALUES ('17', 'oo', null, '12345666666', 'qq', 'c33367701511b4f6020ec61ded352059', '1', '2018-01-09 13:51:01', '2018-04-24 19:30:01', '0', '0', null, null, '0');
INSERT INTO `user` VALUES ('18', 'iik', null, '12345678920', 'aaaa120', 'c33367701511b4f6020ec61ded352059', null, '2018-01-09 16:31:03', '2018-01-09 16:41:28', '0', '0', null, null, '0');
INSERT INTO `user` VALUES ('19', '123456', null, '12321727724', '24319@qq.com', 'c33367701511b4f6020ec61ded352059', '1', '2018-01-17 09:24:27', '2018-04-28 19:21:59', '0', '0', '386614', '2018-01-18 09:45:41', '0');
INSERT INTO `user` VALUES ('20', 'xiaoqiabng1', null, '11111111212', '1213@qq.com', 'c33367701511b4f6020ec61ded352059', '19', '2018-01-17 13:54:08', '2018-04-26 14:09:23', '0', '0', '353427', '2018-01-17 13:56:59', '0');
INSERT INTO `user` VALUES ('21', 'aaaacc2', null, '10123235656', '', 'c33367701511b4f6020ec61ded352059', '1', '2018-04-22 21:14:48', '2018-05-02 16:55:12', '0', '0', null, null, '8');
INSERT INTO `user` VALUES ('22', '11232323232', null, '23233223322', '', 'c33367701511b4f6020ec61ded352059', '19', '2018-04-26 13:30:44', '2018-04-28 19:22:11', '1', '0', null, null, '0');
INSERT INTO `user` VALUES ('23', 'bbb1', null, '10222224564', '', 'c33367701511b4f6020ec61ded352059', '19', '2018-04-26 14:36:30', '2018-04-28 15:43:21', '1', '0', null, null, '0');
INSERT INTO `user` VALUES ('24', 'eee', null, '12536369898', '', 'c33367701511b4f6020ec61ded352059', '19', '2018-04-26 18:37:34', '2018-04-28 15:36:12', '1', '0', null, null, '0');
INSERT INTO `user` VALUES ('25', 'fast', null, '12312312312', '', 'c33367701511b4f6020ec61ded352059', '1', '2018-04-28 09:37:32', '2018-04-28 09:37:48', '1', '0', null, null, '0');
INSERT INTO `user` VALUES ('26', 'xxx', null, '12923235959', '', 'c33367701511b4f6020ec61ded352059', '1', '2018-05-02 16:55:35', '2018-05-02 19:35:51', '1', '0', null, null, '5');
INSERT INTO `user` VALUES ('27', 'ppp12', null, '12826265353', '', 'c33367701511b4f6020ec61ded352059', '1', '2018-05-02 16:56:41', '2018-05-02 19:30:05', '1', '0', null, null, '19');

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `user_id` int(11) NOT NULL,
  `role_id` int(5) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `userid` (`user_id`) USING BTREE,
  KEY `roleid` (`role_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('1', '1');
INSERT INTO `user_role` VALUES ('3', '2');
INSERT INTO `user_role` VALUES ('5', '3');
INSERT INTO `user_role` VALUES ('6', '4');
INSERT INTO `user_role` VALUES ('7', '5');
INSERT INTO `user_role` VALUES ('12', '5');
INSERT INTO `user_role` VALUES ('18', '5');
INSERT INTO `user_role` VALUES ('19', '3');
INSERT INTO `user_role` VALUES ('20', '2');
INSERT INTO `user_role` VALUES ('21', '4');
INSERT INTO `user_role` VALUES ('22', '5');
INSERT INTO `user_role` VALUES ('23', '3');
INSERT INTO `user_role` VALUES ('24', '5');
INSERT INTO `user_role` VALUES ('25', '2');
INSERT INTO `user_role` VALUES ('26', '5');
INSERT INTO `user_role` VALUES ('27', '5');
