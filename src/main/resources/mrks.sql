/*
Navicat MySQL Data Transfer

Source Server         : LOCALHOST
Source Server Version : 50710
Source Host           : localhost:3306
Source Database       : mrks

Target Server Type    : MYSQL
Target Server Version : 50710
File Encoding         : 65001

Date: 2016-09-11 09:28:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `bus_answer`
-- ----------------------------
DROP TABLE IF EXISTS `bus_answer`;
CREATE TABLE `bus_answer` (
  `ans_id` varchar(64) NOT NULL,
  `答案内容` varchar(255) DEFAULT NULL,
  `创建时间` datetime DEFAULT NULL,
  `que_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`ans_id`),
  KEY `que_id` (`que_id`),
  CONSTRAINT `que_id` FOREIGN KEY (`que_id`) REFERENCES `bus_question` (`que_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bus_answer
-- ----------------------------
INSERT INTO `bus_answer` VALUES ('020b8630-8f5d-49b7-a1f6-009098ca8459', '4', '2016-08-05 13:08:15', '6387bcac-b75c-4aad-8d92-f0676e0f92c2');
INSERT INTO `bus_answer` VALUES ('0bcf6061-40bb-4be8-aeb0-053818b2b282', '3', '2016-08-05 13:08:15', 'ee9ab8cf-247a-4694-8781-2692992c2730');
INSERT INTO `bus_answer` VALUES ('118e0243-1caf-4d3f-8b40-21f95decd094', '2', '2016-08-05 13:08:07', '68233964-8ca2-4a84-a164-ffd3cc32ecb8');
INSERT INTO `bus_answer` VALUES ('12bd0782-5167-4e30-b13f-4ea6556bba5b', '4', '2016-08-05 13:08:14', '90a02f06-95b5-4740-90ef-5cebfbe17bbe');
INSERT INTO `bus_answer` VALUES ('1a10dfdf-d203-4cb2-80bb-122fcbdd0558', '1', '2016-08-05 13:08:10', 'b76a5205-7921-4532-a45c-90aa6cea95e7');
INSERT INTO `bus_answer` VALUES ('1dd7c8b1-1e2f-4018-8ac3-80f7a18d9789', '111', '2016-07-18 09:36:09', '04ad62f4-ee97-4237-89dc-88fab034358f');
INSERT INTO `bus_answer` VALUES ('1eca60a0-71b1-4f95-84db-d222613bcf78', '4', '2016-08-05 13:08:07', '68233964-8ca2-4a84-a164-ffd3cc32ecb8');
INSERT INTO `bus_answer` VALUES ('2838ea9d-81a1-4227-85c7-c1b1958a6f11', '3', '2016-08-05 13:08:10', 'b76a5205-7921-4532-a45c-90aa6cea95e7');
INSERT INTO `bus_answer` VALUES ('2f7e1a6e-0d93-412f-ada4-8f6b4cd7ee3b', '3', '2016-08-05 13:08:14', '90a02f06-95b5-4740-90ef-5cebfbe17bbe');
INSERT INTO `bus_answer` VALUES ('31797c71-b77a-4b33-8b2e-2af0e7b6f3d7', '3', '2016-08-05 13:08:16', 'c20270d4-c85b-421f-9d7d-d8c3b93f6251');
INSERT INTO `bus_answer` VALUES ('33666453-8642-4270-a3f8-3b6fbb04efb6', '4', '2016-08-05 13:08:15', 'ee9ab8cf-247a-4694-8781-2692992c2730');
INSERT INTO `bus_answer` VALUES ('3b21d65d-f3ba-41b7-9866-1f8b4f764be0', '3', '2016-08-05 13:08:15', '06f14334-c730-400e-8c14-84e307a8a7b7');
INSERT INTO `bus_answer` VALUES ('4137fb2a-8514-4b71-847e-c77e0e00a70e', '2', '2016-08-05 13:08:15', 'ba25ba2d-8611-4e39-b1cf-46dfd8206ab6');
INSERT INTO `bus_answer` VALUES ('42fc8511-a036-4292-bf5e-0320cdbf98c9', '2', '2016-08-05 13:08:14', '90a02f06-95b5-4740-90ef-5cebfbe17bbe');
INSERT INTO `bus_answer` VALUES ('467abd6c-7cc5-4e0d-a437-88b307856113', '2', '2016-08-05 13:08:10', 'b76a5205-7921-4532-a45c-90aa6cea95e7');
INSERT INTO `bus_answer` VALUES ('4938aeb6-33fd-4a3d-9109-28b431c8f9a0', '222', '2016-07-18 09:36:09', '04ad62f4-ee97-4237-89dc-88fab034358f');
INSERT INTO `bus_answer` VALUES ('4971ef13-ecf4-4005-8039-1a7df81e0819', 'dd2', '2016-07-17 12:44:20', '5efbdcdd-1e96-4a87-aca2-ad1e6555e1a5');
INSERT INTO `bus_answer` VALUES ('523d3a2a-d555-4a42-a996-35fe3f99a579', 'ddd3', '2016-07-17 12:44:20', '5efbdcdd-1e96-4a87-aca2-ad1e6555e1a5');
INSERT INTO `bus_answer` VALUES ('57861ebe-dc33-4ed1-be44-c02b86f35651', '2', '2016-08-05 13:08:16', 'b7201989-f4f1-4cf3-9bfe-591cce6bbea9');
INSERT INTO `bus_answer` VALUES ('57b12d50-5129-456a-8f6b-d01d569b196b', '3', '2016-08-05 13:08:16', '503e2364-d861-47b6-8ec0-33e57e55eb3c');
INSERT INTO `bus_answer` VALUES ('5d746268-6577-4b78-bfba-d018d3add65e', '1', '2016-08-05 13:08:14', '90a02f06-95b5-4740-90ef-5cebfbe17bbe');
INSERT INTO `bus_answer` VALUES ('5dbd5c4e-67fe-494b-a766-67c6fa06a4b1', '4', '2016-08-05 13:08:15', 'ba25ba2d-8611-4e39-b1cf-46dfd8206ab6');
INSERT INTO `bus_answer` VALUES ('6af16a0f-22b9-4007-87a5-620f00765b14', '1', '2016-08-05 13:08:15', '06f14334-c730-400e-8c14-84e307a8a7b7');
INSERT INTO `bus_answer` VALUES ('6eca2e73-3847-455b-a237-07e3ecfb5505', '2', '2016-08-05 13:08:16', '503e2364-d861-47b6-8ec0-33e57e55eb3c');
INSERT INTO `bus_answer` VALUES ('713ef742-0d3f-4b87-9152-cd0b63eb72fa', '1', '2016-08-05 13:08:16', 'c20270d4-c85b-421f-9d7d-d8c3b93f6251');
INSERT INTO `bus_answer` VALUES ('7c5879cc-edf7-43ed-bc31-a40a4ac68d3c', '1', '2016-08-05 13:08:15', 'ee9ab8cf-247a-4694-8781-2692992c2730');
INSERT INTO `bus_answer` VALUES ('89a74ffa-31a3-4f8e-a2f3-b438a6adf3a7', '3', '2016-08-05 13:08:16', 'b7201989-f4f1-4cf3-9bfe-591cce6bbea9');
INSERT INTO `bus_answer` VALUES ('8a452c12-03fd-4115-bb49-42607caccc44', '1', '2016-08-05 13:08:15', '6387bcac-b75c-4aad-8d92-f0676e0f92c2');
INSERT INTO `bus_answer` VALUES ('8a989cef-5fa0-4cbf-9cd0-c3e40c1c2c2b', '2', '2016-08-05 13:08:16', 'c20270d4-c85b-421f-9d7d-d8c3b93f6251');
INSERT INTO `bus_answer` VALUES ('9030ed72-695a-4b3a-a5af-455add50e107', '2', '2016-08-05 13:08:15', '6387bcac-b75c-4aad-8d92-f0676e0f92c2');
INSERT INTO `bus_answer` VALUES ('9a0c9e0e-aabb-4dfd-a9b0-8fc54c9326cb', 'd4', '2016-07-17 12:44:20', '5efbdcdd-1e96-4a87-aca2-ad1e6555e1a5');
INSERT INTO `bus_answer` VALUES ('9dfa8b3d-f5d6-4e4a-8478-07349d83b47b', '1', '2016-08-05 13:08:16', '503e2364-d861-47b6-8ec0-33e57e55eb3c');
INSERT INTO `bus_answer` VALUES ('a6b57138-b22f-4a2c-be2f-de31be4d95ba', '4', '2016-08-05 13:08:16', 'b7201989-f4f1-4cf3-9bfe-591cce6bbea9');
INSERT INTO `bus_answer` VALUES ('b5bf2de9-a70b-46bc-851d-192a52554da9', 'd1', '2016-07-17 12:44:20', '5efbdcdd-1e96-4a87-aca2-ad1e6555e1a5');
INSERT INTO `bus_answer` VALUES ('b5f625fd-b44b-4112-bcac-7adc40ddc1f8', '4', '2016-08-05 13:08:15', '06f14334-c730-400e-8c14-84e307a8a7b7');
INSERT INTO `bus_answer` VALUES ('bf32cee0-0b65-4bf6-9432-0c28f77396ec', '2', '2016-08-05 13:08:15', 'ee9ab8cf-247a-4694-8781-2692992c2730');
INSERT INTO `bus_answer` VALUES ('c01a82cc-516a-4468-b82b-9afcc778244c', '3', '2016-08-05 13:08:15', '6387bcac-b75c-4aad-8d92-f0676e0f92c2');
INSERT INTO `bus_answer` VALUES ('c07934c2-7545-42b7-8326-493f5f738274', '4', '2016-08-05 13:08:10', 'b76a5205-7921-4532-a45c-90aa6cea95e7');
INSERT INTO `bus_answer` VALUES ('c41e00f4-9630-48a6-b1af-a795cd3b9b32', '2', '2016-08-05 13:08:15', '06f14334-c730-400e-8c14-84e307a8a7b7');
INSERT INTO `bus_answer` VALUES ('c5efa46a-0867-4f60-9ba2-9a29ad81d3bf', '1', '2016-08-05 13:08:16', 'b7201989-f4f1-4cf3-9bfe-591cce6bbea9');
INSERT INTO `bus_answer` VALUES ('c6ac65a7-4e90-4da3-ab8a-9b940e5a5bd7', '444', '2016-07-18 09:36:09', '04ad62f4-ee97-4237-89dc-88fab034358f');
INSERT INTO `bus_answer` VALUES ('ca018944-af91-4ffe-82b7-85532469b0ed', '4', '2016-08-05 13:08:16', '503e2364-d861-47b6-8ec0-33e57e55eb3c');
INSERT INTO `bus_answer` VALUES ('d1a82fe2-5132-4af4-b984-1d7c7c2602f7', '1', '2016-08-05 13:08:07', '68233964-8ca2-4a84-a164-ffd3cc32ecb8');
INSERT INTO `bus_answer` VALUES ('d440fd25-286f-4473-8888-c3802cd2bf4e', '333', '2016-07-18 14:56:35', '6c8c2a33-24e5-426e-b2f4-2fd909372427');
INSERT INTO `bus_answer` VALUES ('dbb08818-8f91-4baf-b7e1-5baad22da229', '4', '2016-08-05 13:08:16', 'c20270d4-c85b-421f-9d7d-d8c3b93f6251');
INSERT INTO `bus_answer` VALUES ('dd768c81-8df4-4954-a3f8-a665e4681502', '3', '2016-08-05 13:08:15', 'ba25ba2d-8611-4e39-b1cf-46dfd8206ab6');
INSERT INTO `bus_answer` VALUES ('e7782f1f-f8b5-4e2e-90ea-f0d401f92f05', '222', '2016-07-18 14:56:35', '6c8c2a33-24e5-426e-b2f4-2fd909372427');
INSERT INTO `bus_answer` VALUES ('f1837058-2336-4b3f-8aa1-d7a5314a96ff', '3', '2016-08-05 13:08:07', '68233964-8ca2-4a84-a164-ffd3cc32ecb8');
INSERT INTO `bus_answer` VALUES ('f2d9d051-a390-4193-9c89-b82ffd4e08d3', '111', '2016-07-18 14:56:35', '6c8c2a33-24e5-426e-b2f4-2fd909372427');
INSERT INTO `bus_answer` VALUES ('f32bb98d-1c8b-4099-ba15-dca75851457f', 'cccc', '2016-07-18 14:56:35', '6c8c2a33-24e5-426e-b2f4-2fd909372427');
INSERT INTO `bus_answer` VALUES ('f8c289d8-ff57-4895-bd89-36e09bad2889', '1', '2016-08-05 13:08:15', 'ba25ba2d-8611-4e39-b1cf-46dfd8206ab6');
INSERT INTO `bus_answer` VALUES ('ff39fdce-ce96-4674-b453-14f7b408b481', '333', '2016-07-18 09:36:09', '04ad62f4-ee97-4237-89dc-88fab034358f');

-- ----------------------------
-- Table structure for `bus_info`
-- ----------------------------
DROP TABLE IF EXISTS `bus_info`;
CREATE TABLE `bus_info` (
  `info_id` varchar(64) NOT NULL,
  `用户名` varchar(64) DEFAULT NULL,
  `分数` int(11) DEFAULT NULL,
  `main_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`info_id`),
  KEY `info_main_id` (`main_id`),
  CONSTRAINT `info_main_id` FOREIGN KEY (`main_id`) REFERENCES `bus_main` (`main_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bus_info
-- ----------------------------
INSERT INTO `bus_info` VALUES ('4f77a644-4a19-47c0-8152-6c44c13559af', null, '0', '1');
INSERT INTO `bus_info` VALUES ('e2961a40-f5c4-4af8-ab94-6a4ab560812e', 'admin1', '20', '1');

-- ----------------------------
-- Table structure for `bus_main`
-- ----------------------------
DROP TABLE IF EXISTS `bus_main`;
CREATE TABLE `bus_main` (
  `main_id` varchar(64) NOT NULL,
  `标题` varchar(255) DEFAULT NULL,
  `创建时间` datetime DEFAULT NULL,
  `答题时间` bigint(20) DEFAULT NULL,
  `sub_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`main_id`),
  KEY `sub_id` (`sub_id`),
  CONSTRAINT `sub_id` FOREIGN KEY (`sub_id`) REFERENCES `bus_subject` (`sub_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bus_main
-- ----------------------------
INSERT INTO `bus_main` VALUES ('1', '长春代数试题(卷一)', '2016-07-15 08:29:40', '50', '2');

-- ----------------------------
-- Table structure for `bus_question`
-- ----------------------------
DROP TABLE IF EXISTS `bus_question`;
CREATE TABLE `bus_question` (
  `que_id` varchar(64) NOT NULL,
  `问题标题` varchar(255) DEFAULT NULL,
  `问题类型` varchar(20) DEFAULT NULL,
  `创建时间` datetime DEFAULT NULL,
  `答案编码` int(11) DEFAULT NULL,
  `分数` int(11) DEFAULT NULL,
  `main_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`que_id`),
  KEY `main_id` (`main_id`),
  CONSTRAINT `main_id` FOREIGN KEY (`main_id`) REFERENCES `bus_main` (`main_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bus_question
-- ----------------------------
INSERT INTO `bus_question` VALUES ('04ad62f4-ee97-4237-89dc-88fab034358f', '测试为题AAA', 'checkbox', '2016-07-18 09:36:09', '7199', '10', '1');
INSERT INTO `bus_question` VALUES ('06f14334-c730-400e-8c14-84e307a8a7b7', '测试习题DDDD', 'radio', '2016-08-05 13:08:15', '2213', '10', '1');
INSERT INTO `bus_question` VALUES ('503e2364-d861-47b6-8ec0-33e57e55eb3c', '测试习题DDDD', 'radio', '2016-08-05 13:08:16', '2444', '10', '1');
INSERT INTO `bus_question` VALUES ('5efbdcdd-1e96-4a87-aca2-ad1e6555e1a5', '测试为题BBB', 'radio', '2016-07-17 12:44:20', '4622', '10', '1');
INSERT INTO `bus_question` VALUES ('6387bcac-b75c-4aad-8d92-f0676e0f92c2', '测试习题DDDD', 'radio', '2016-08-05 13:08:15', '2351', '10', '1');
INSERT INTO `bus_question` VALUES ('68233964-8ca2-4a84-a164-ffd3cc32ecb8', '测试习题DDDD', 'radio', '2016-08-05 13:08:07', '2370', '10', '1');
INSERT INTO `bus_question` VALUES ('6c8c2a33-24e5-426e-b2f4-2fd909372427', '测试为题CCC', 'checkbox', '2016-07-18 14:56:35', '7202', '10', '1');
INSERT INTO `bus_question` VALUES ('90a02f06-95b5-4740-90ef-5cebfbe17bbe', '测试习题DDDD', 'radio', '2016-08-05 13:08:14', '2436', '10', '1');
INSERT INTO `bus_question` VALUES ('b7201989-f4f1-4cf3-9bfe-591cce6bbea9', '测试习题DDDD', 'radio', '2016-08-05 13:08:16', '2520', '10', '1');
INSERT INTO `bus_question` VALUES ('b76a5205-7921-4532-a45c-90aa6cea95e7', '测试习题DDDD', 'radio', '2016-08-05 13:08:10', '2533', '10', '1');
INSERT INTO `bus_question` VALUES ('ba25ba2d-8611-4e39-b1cf-46dfd8206ab6', '测试习题DDDD', 'radio', '2016-08-05 13:08:15', '2422', '10', '1');
INSERT INTO `bus_question` VALUES ('c20270d4-c85b-421f-9d7d-d8c3b93f6251', '测试习题DDDD', 'radio', '2016-08-05 13:08:16', '2419', '10', '1');
INSERT INTO `bus_question` VALUES ('ee9ab8cf-247a-4694-8781-2692992c2730', '测试习题DDDD', 'radio', '2016-08-05 13:08:15', '2614', '10', '1');

-- ----------------------------
-- Table structure for `bus_subject`
-- ----------------------------
DROP TABLE IF EXISTS `bus_subject`;
CREATE TABLE `bus_subject` (
  `sub_id` varchar(64) NOT NULL,
  `科目` varchar(64) DEFAULT NULL,
  `创建时间` datetime DEFAULT NULL,
  PRIMARY KEY (`sub_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bus_subject
-- ----------------------------
INSERT INTO `bus_subject` VALUES ('13db9c84-0ac0-479b-b7ea-214c15993963', '语文-监考刘娜', '2016-07-13 15:59:43');
INSERT INTO `bus_subject` VALUES ('2', '数学-监考于国良', '2016-07-13 10:43:10');
INSERT INTO `bus_subject` VALUES ('22d3cc67-fa01-46fd-af94-6f2f81fc2d5f', '化学-监考刘文生', '2016-07-13 15:59:56');
INSERT INTO `bus_subject` VALUES ('55e17315-ce86-41b5-8040-f672054d085f', '历史-监考张小白', '2016-07-13 15:58:42');
INSERT INTO `bus_subject` VALUES ('764a501c-ba7e-42f2-8009-5e4c3a3ee6ad', '物理-监考柳小小', '2016-07-13 15:50:55');
INSERT INTO `bus_subject` VALUES ('870e1da7-c840-4b4d-8c80-b79b2aa35c48', '政治-监考张晓晨', '2016-07-13 15:43:12');
INSERT INTO `bus_subject` VALUES ('8ff0fc5f-9a62-4fc8-ae7f-9a68991faae2', '毛邓-监考孙俪', '2016-07-13 16:04:22');
INSERT INTO `bus_subject` VALUES ('e4be2ad9-2875-48fc-aa3e-55be4186d6ec', '社科-监考周玉娇', '2016-07-13 15:46:25');
INSERT INTO `bus_subject` VALUES ('eab9b066-6d88-423f-8e95-5c08dd3587dc', '代数-监考杨春兰', '2016-07-13 15:57:48');
INSERT INTO `bus_subject` VALUES ('f69eaa13-495b-47c6-8693-b7f0b3b259c8', '英语-监考刘迪', '2016-07-13 16:05:03');
INSERT INTO `bus_subject` VALUES ('fe0b235c-2057-4710-8f4d-8dae46922b53', '日语-监考安倍晋三', '2016-07-13 15:54:16');

-- ----------------------------
-- Table structure for `sys_userinfo`
-- ----------------------------
DROP TABLE IF EXISTS `sys_userinfo`;
CREATE TABLE `sys_userinfo` (
  `id` varchar(64) NOT NULL,
  `用户名` varchar(20) DEFAULT NULL,
  `密码` varchar(20) DEFAULT NULL,
  `姓名` varchar(10) DEFAULT NULL,
  `职务` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_userinfo
-- ----------------------------
INSERT INTO `sys_userinfo` VALUES ('1', 'username', 'password', 'wuli良良', '管理员');
INSERT INTO `sys_userinfo` VALUES ('2', 'admin1', 'admin', '4', '5');
INSERT INTO `sys_userinfo` VALUES ('3', 'admin2', 'admin', '5', '6');
