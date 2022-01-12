/*
 Navicat Premium Data Transfer

 Source Server         : root
 Source Server Type    : MySQL
 Source Server Version : 80023
 Source Host           : localhost:3306
 Source Schema         : bus_management

 Target Server Type    : MySQL
 Target Server Version : 80023
 File Encoding         : 65001

 Date: 12/01/2022 12:29:33
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_bus
-- ----------------------------
DROP TABLE IF EXISTS `t_bus`;
CREATE TABLE `t_bus`  (
  `busId` int NOT NULL AUTO_INCREMENT,
  `busName` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `busCode` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `engine` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `chassis` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `instrumentNumber` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `principal` int NULL DEFAULT NULL,
  `vendor` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `pakingPlace` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `displace` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `model` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `type` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `purpose` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `purchaseDate` datetime NULL DEFAULT NULL,
  `photo` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `createTime` datetime NULL DEFAULT NULL,
  `updateTime` datetime NULL DEFAULT NULL,
  `creator` int NULL DEFAULT NULL,
  `deleteFlag` int NULL DEFAULT NULL,
  PRIMARY KEY (`busId`) USING BTREE,
  INDEX `principal`(`principal`) USING BTREE,
  INDEX `creator`(`creator`) USING BTREE,
  CONSTRAINT `t_bus_ibfk_1` FOREIGN KEY (`principal`) REFERENCES `t_user` (`userId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `t_bus_ibfk_2` FOREIGN KEY (`creator`) REFERENCES `t_user` (`userId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 46 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_bus
-- ----------------------------
INSERT INTO `t_bus` VALUES (1, '宇通', '京CHI3P0', '308461584-J', 'WVWPR13C6AE170920', 'WVWPR13C6AE170920', 22, '河南宇通', '北京朝阳区北辰东路,与慧忠路交岔口以北50米路西', '1.22', 'BK6100CNG', '单层16座', '公共公车', '2021-12-01 15:03:44', '1641475286063.jpg', '2021-12-31 15:04:26', '2022-01-08 08:41:35', 2, 0);
INSERT INTO `t_bus` VALUES (2, '沃尔沃', '京CHI3P8', '308461584-J', 'WVWPR13C6AE170920', 'WVWPR13C6AE170920', 6, '沃尔沃', '北京朝阳区北辰东路,与慧忠路交岔口以北50米路西', '1.2', 'BK6100CNG', '单层16座', '公共公车', '2021-12-01 15:03:44', '1.jpg', '2021-12-31 15:04:26', '2022-01-06 21:31:32', 2, 0);
INSERT INTO `t_bus` VALUES (3, '宇通', '京CE7777', '308461584-J', 'WVWPR13C6AE170920', 'WVWPR13C6AE170920', 6, '河南宇通', '北京朝阳区北辰东路,与慧忠路交岔口以北50米路西', '1.2', 'BK6100CNG', '单层16座', '私用公车', '2021-12-01 15:03:44', '1641475311578.jpg', '2021-12-31 15:04:26', '2022-01-06 21:25:05', 2, 0);
INSERT INTO `t_bus` VALUES (4, '宇通', '京AHI3P0', '308461584-J', 'WVWPR13C6AE170920', 'WVWPR13C6AE170920', 6, '河南宇通', '1234567', '1.2', 'BK6100CNG', '单层16座', '公共公车', '2021-12-01 15:03:44', '1641539505367.jpg', '2021-12-31 15:04:26', '2022-01-07 15:11:48', 2, 0);
INSERT INTO `t_bus` VALUES (5, 'wert', '京C66666', 'wertyui', '3456789', 'wertyui', 38, '阿斯顿', 'qwertyu', '234', 'werth', 'werth', 'wertg', '2022-01-06 08:50:37', '1641291339274.jpg', '2022-01-04 18:16:24', '2022-01-04 18:16:24', 1, 1);
INSERT INTO `t_bus` VALUES (6, '上海申龙', '京F77776', '123456aaa', '123456', '1234567', 5, '上海申龙', '1234567', '11', '123456yu', '23456yu', '公共公车', '2022-01-05 14:14:32', '1641475298811.jpg', '2022-01-05 14:06:12', '2022-01-07 09:32:07', 1, 0);
INSERT INTO `t_bus` VALUES (7, '景龙', '京D12342', '1234567', '123456', '123456', 5, '景龙', '1234567', '11', '12345', '1234', '公共公车', '2022-01-05 14:10:00', '1641475298811.jpg', '2022-01-05 14:10:02', '2022-01-06 21:31:07', 1, 0);
INSERT INTO `t_bus` VALUES (8, '宇通', '京CHI3P4', '308461584-J', 'WVWPR13C6AE170920', 'WVWPR13C6AE170920', 5, '河南宇通', '北京朝阳区北辰东路,与慧忠路交岔口以北50米路西', '1.22', 'BK6100CNG', '单层16座', '公共公车', '2021-12-01 15:03:44', '1641475286063.jpg', '2021-12-31 15:04:26', '2022-01-06 21:21:29', 2, 0);
INSERT INTO `t_bus` VALUES (9, '沃尔沃', '京CHI3P6', '308461584-J', 'WVWPR13C6AE170920', 'WVWPR13C6AE170920', 6, '沃尔沃', '北京朝阳区北辰东路,与慧忠路交岔口以北50米路西', '1.2', 'BK6100CNG', '单层16座', '公共公车', '2021-12-01 15:03:44', '1.jpg', '2021-12-31 15:04:26', '2022-01-06 21:31:32', 2, 0);
INSERT INTO `t_bus` VALUES (10, '宇通', '京CE8777', '308461584-J', 'WVWPR13C6AE170920', 'WVWPR13C6AE170920', 22, '河南宇通', '北京朝阳区北辰东路,与慧忠路交岔口以北50米路西', '1.2', 'BK6100CNG', '单层16座', '私用公车', '2021-12-01 15:03:44', '1641475311578.jpg', '2021-12-31 15:04:26', '2022-01-06 21:25:05', 2, 0);
INSERT INTO `t_bus` VALUES (11, '宇通', '京AHI3P9', '308461584-J', 'WVWPR13C6AE170920', 'WVWPR13C6AE170920', 6, '河南宇通', '1234567', '1.2', 'BK6100CNG', '单层16座', '公共公车', '2021-12-01 15:03:44', '1641475326818.jpg', '2021-12-31 15:04:26', '2022-01-06 21:25:26', 2, 0);
INSERT INTO `t_bus` VALUES (12, 'wert', '京A88888', 'wertyui', '3456789', 'wertyui', 5, '阿斯顿', 'qwertyu', '234', 'werth', 'werth', 'wertg', '2022-01-06 08:50:37', '1641291339274.jpg', '2022-01-04 18:16:24', '2022-01-04 18:16:24', 1, 1);
INSERT INTO `t_bus` VALUES (13, '上海申龙', '京F77777', '123456aaa', '123456', '1234567', 33, '上海申龙', '1234567', '11', '123456yu', '23456yu', '公共公车', '2022-01-05 14:14:32', '1641475286063.jpg', '2022-01-05 14:06:12', '2022-01-07 09:32:17', 1, 0);
INSERT INTO `t_bus` VALUES (14, '景龙', '京D12345', '1234567', '123456', '123456', 5, '景龙', '1234567', '11', '12345', '1234', '公共公车', '2022-01-05 14:10:00', '1641475298811.jpg', '2022-01-05 14:10:02', '2022-01-06 21:31:07', 1, 0);
INSERT INTO `t_bus` VALUES (15, '宇通', '京CHI3P0', '308461584-J', 'WVWPR13C6AE170920', 'WVWPR13C6AE170920', 5, '河南宇通', '北京朝阳区北辰东路,与慧忠路交岔口以北50米路西', '1.22', 'BK6100CNG', '单层16座', '公共公车', '2021-12-01 15:03:44', '1641475286063.jpg', '2021-12-31 15:04:26', '2022-01-06 21:21:29', 2, 0);
INSERT INTO `t_bus` VALUES (16, '沃尔沃', '京CHI3P8', '308461584-J', 'WVWPR13C6AE170920', 'WVWPR13C6AE170920', 6, '沃尔沃', '北京朝阳区北辰东路,与慧忠路交岔口以北50米路西', '1.2', 'BK6100CNG', '单层16座', '公共公车', '2021-12-01 15:03:44', '1.jpg', '2021-12-31 15:04:26', '2022-01-06 21:31:32', 2, 0);
INSERT INTO `t_bus` VALUES (17, '宇通', '京CE7778', '308461584-J', 'WVWPR13C6AE170920', 'WVWPR13C6AE170920', 38, '河南宇通', '北京朝阳区北辰东路,与慧忠路交岔口以北50米路西', '1.2', 'BK6100CNG', '单层16座', '私用公车', '2021-12-01 15:03:44', '1641475311578.jpg', '2021-12-31 15:04:26', '2022-01-06 21:25:05', 2, 0);
INSERT INTO `t_bus` VALUES (18, '宇通', '京AHI3P3', '308461584-J', 'WVWPR13C6AE170920', 'WVWPR13C6AE170920', 6, '河南宇通', '1234567', '1.2', 'BK6100CNG', '单层16座', '公共公车', '2021-12-01 15:03:44', '1641475326818.jpg', '2021-12-31 15:04:26', '2022-01-06 21:25:26', 2, 0);
INSERT INTO `t_bus` VALUES (19, 'wert', '京A99999', 'wertyui', '3456789', 'wertyui', 5, '阿斯顿', 'qwertyu', '234', 'werth', 'werth', 'wertg', '2022-01-06 08:50:37', '1641291339274.jpg', '2022-01-04 18:16:24', '2022-01-04 18:16:24', 1, 1);
INSERT INTO `t_bus` VALUES (20, '上海申龙', '京F77771', '123456aaa', '123456', '1234567', 5, '上海申龙', '1234567', '11', '123456yu', '23456yu', '公共公车', '2022-01-05 14:14:32', '1.jpg', '2022-01-05 14:06:12', '2022-01-07 09:32:31', 1, 0);
INSERT INTO `t_bus` VALUES (21, '景龙', '京D12347', '1234567', '123456', '123456', 33, '景龙', '1234567', '11', '12345', '1234', '公共公车', '2022-01-05 14:10:00', '1641475298811.jpg', '2022-01-05 14:10:02', '2022-01-06 21:31:07', 1, 0);
INSERT INTO `t_bus` VALUES (22, '宇通', '京CHI3P0', '308461584-J', 'WVWPR13C6AE170920', 'WVWPR13C6AE170920', 5, '河南宇通', '北京朝阳区北辰东路,与慧忠路交岔口以北50米路西', '1.22', 'BK6100CNG', '单层16座', '公共公车', '2021-12-01 15:03:44', '1641475286063.jpg', '2021-12-31 15:04:26', '2022-01-06 21:21:29', 2, 0);
INSERT INTO `t_bus` VALUES (23, '沃尔沃', '京CHI3P8', '308461584-J', 'WVWPR13C6AE170920', 'WVWPR13C6AE170920', 6, '沃尔沃', '北京朝阳区北辰东路,与慧忠路交岔口以北50米路西', '1.2', 'BK6100CNG', '单层16座', '公共公车', '2021-12-01 15:03:44', '1.jpg', '2021-12-31 15:04:26', '2022-01-06 21:31:32', 2, 0);
INSERT INTO `t_bus` VALUES (24, '宇通', '京CE7779', '308461584-J', 'WVWPR13C6AE170920', 'WVWPR13C6AE170920', 22, '河南宇通', '北京朝阳区北辰东路,与慧忠路交岔口以北50米路西', '1.2', 'BK6100CNG', '单层16座', '私用公车', '2021-12-01 15:03:44', '1641475311578.jpg', '2021-12-31 15:04:26', '2022-01-06 21:25:05', 2, 0);
INSERT INTO `t_bus` VALUES (25, '宇通', '京AHI3P0', '308461584-J', 'WVWPR13C6AE170920', 'WVWPR13C6AE170920', 6, '河南宇通', '1234567', '1.2', 'BK6100CNG', '单层16座', '公共公车', '2021-12-01 15:03:44', '1641475326818.jpg', '2021-12-31 15:04:26', '2022-01-06 21:25:26', 2, 0);
INSERT INTO `t_bus` VALUES (26, 'wert', '京DU8888', 'wertyui', '3456789', 'wertyui', 38, '阿斯顿', 'qwertyu', '234', 'werth', 'werth', 'wertg', '2022-01-06 08:50:37', '1641291339274.jpg', '2022-01-04 18:16:24', '2022-01-04 18:16:24', 1, 1);
INSERT INTO `t_bus` VALUES (27, '上海申龙', '京F77773', '123456aaa', '123456', '1234567', 5, '上海申龙', '1234567', '11', '123456yu', '23456yu', '公共公车', '2022-01-05 14:14:32', '1641475286063.jpg', '2022-01-05 14:06:12', '2022-01-07 09:40:33', 1, 0);
INSERT INTO `t_bus` VALUES (28, '景龙', '京D12340', '1234567', '123456', '123456', 5, '景龙', '1234567', '11', '12345', '1234', '公共公车', '2022-01-05 14:10:00', '1641475298811.jpg', '2022-01-05 14:10:02', '2022-01-06 21:31:07', 1, 0);
INSERT INTO `t_bus` VALUES (29, '宇通', '京CHI3P8', '308461584-J', 'WVWPR13C6AE170920', 'WVWPR13C6AE170920', 33, '河南宇通', '北京朝阳区北辰东路,与慧忠路交岔口以北50米路西', '1.22', 'BK6100CNG', '单层16座', '公共公车', '2021-12-01 15:03:44', '1641475286063.jpg', '2021-12-31 15:04:26', '2022-01-06 21:21:29', 2, 0);
INSERT INTO `t_bus` VALUES (30, '沃尔沃', '京CHI3P9', '308461584-J', 'WVWPR13C6AE170920', 'WVWPR13C6AE170920', 38, '沃尔沃', '北京朝阳区北辰东路,与慧忠路交岔口以北50米路西', '1.2', 'BK6100CNG', '单层16座', '公共公车', '2021-12-01 15:03:44', '1.jpg', '2021-12-31 15:04:26', '2022-01-06 21:31:32', 2, 0);
INSERT INTO `t_bus` VALUES (31, '宇通', '京CE7772', '308461584-J', 'WVWPR13C6AE170920', 'WVWPR13C6AE170920', 6, '河南宇通', '北京朝阳区北辰东路,与慧忠路交岔口以北50米路西', '1.2', 'BK6100CNG', '单层16座', '私用公车', '2021-12-01 15:03:44', '1641475311578.jpg', '2021-12-31 15:04:26', '2022-01-06 21:25:05', 2, 0);
INSERT INTO `t_bus` VALUES (32, '宇通', '京AHI3P0', '308461584-J', 'WVWPR13C6AE170920', 'WVWPR13C6AE170920', 6, '河南宇通', '1234567', '1.2', 'BK6100CNG', '单层16座', '公共公车', '2021-12-01 15:03:44', '1641475326818.jpg', '2021-12-31 15:04:26', '2022-01-06 21:25:26', 2, 0);
INSERT INTO `t_bus` VALUES (33, 'wert', '3456', 'wertyui', '3456789', 'wertyui', 5, '阿斯顿', 'qwertyu', '234', 'werth', 'werth', 'wertg', '2022-01-06 08:50:37', '1641291339274.jpg', '2022-01-04 18:16:24', '2022-01-04 18:16:24', 1, 1);
INSERT INTO `t_bus` VALUES (34, '上海申龙', '京F77776', '123456aaa', '123456', '1234567', 5, '上海申龙', '1234567', '11', '123456yu', '23456yu', '公共公车', '2022-01-05 14:14:32', '1.jpg', '2022-01-05 14:06:12', '2022-01-07 09:32:42', 1, 0);
INSERT INTO `t_bus` VALUES (35, '景龙', '京D12344', '1234567', '123456', '123456', 5, '景龙', '1234567', '11', '12345', '1234', '公共公车', '2022-01-05 14:10:00', '1641550646656.jpg', '2022-01-05 14:10:02', '2022-01-07 18:17:29', 1, 0);
INSERT INTO `t_bus` VALUES (36, '宇通', '京CHI3P9', '308461584-J', 'WVWPR13C6AE170920', 'WVWPR13C6AE170920', 5, '河南宇通', '北京朝阳区北辰东路,与慧忠路交岔口以北50米路西', '1.22', 'BK6100CNG', '单层16座', '公共公车', '2021-12-01 15:03:44', '1641475286063.jpg', '2021-12-31 15:04:26', '2022-01-06 21:21:29', 2, 0);
INSERT INTO `t_bus` VALUES (37, '沃尔沃', '京CHI3P4', '308461584-J', 'WVWPR13C6AE170920', 'WVWPR13C6AE170920', 6, '沃尔沃', '北京朝阳区北辰东路,与慧忠路交岔口以北50米路西', '1.2', 'BK6100CNG', '单层16座', '公共公车', '2021-12-01 15:03:44', '1.jpg', '2021-12-31 15:04:26', '2022-01-06 21:31:32', 2, 0);
INSERT INTO `t_bus` VALUES (38, '宇通', '京CE7774', '308461584-J', 'WVWPR13C6AE170920', 'WVWPR13C6AE170920', 6, '河南宇通', '北京朝阳区北辰东路,与慧忠路交岔口以北50米路西', '1.2', 'BK6100CNG', '单层16座', '私用公车', '2021-12-01 15:03:44', '1641475311578.jpg', '2021-12-31 15:04:26', '2022-01-06 21:25:05', 2, 0);
INSERT INTO `t_bus` VALUES (39, '宇通', '京AHI3P4', '308461584-J', 'WVWPR13C6AE170920', 'WVWPR13C6AE170920', 6, '河南宇通', '1234567', '1.2', 'BK6100CNG', '单层16座', '公共公车', '2021-12-01 15:03:44', '1641475326818.jpg', '2021-12-31 15:04:26', '2022-01-06 21:25:26', 2, 0);
INSERT INTO `t_bus` VALUES (40, 'wert', '3456', 'wertyui', '3456789', 'wertyui', 5, '阿斯顿', 'qwertyu', '234', 'werth', 'werth', 'wertg', '2022-01-06 08:50:37', '1641291339274.jpg', '2022-01-04 18:16:24', '2022-01-04 18:16:24', 1, 1);
INSERT INTO `t_bus` VALUES (41, '上海申龙', '京F77770', '123456aaa', '123456', '1234567', 5, '上海申龙', '1234567', '11', '123456yu', '23456yu', '公共公车', '2022-01-05 14:14:32', '1.jpg', '2022-01-05 14:06:12', '2022-01-07 09:40:57', 1, 0);
INSERT INTO `t_bus` VALUES (42, '景龙', '京D12348', '1234567', '123456', '123456', 5, '景龙', '1234567', '11', '12345', '1234', '公共公车', '2022-01-05 14:10:00', '1641550672855.jpg', '2022-01-05 14:10:02', '2022-01-07 18:17:54', 1, 0);
INSERT INTO `t_bus` VALUES (43, 'qwer', '京C99999', '1234567', 'qwerty12345', '12345678', 5, '沃尔沃', '北京朝阳区北辰东路,与慧忠路交岔口以北50米路西', '1.1', '123456', '2345', '私用公车', '2022-01-05 00:00:00', '1641475311578.jpg', '2022-01-07 09:34:03', '2022-01-07 09:34:03', 1, 1);
INSERT INTO `t_bus` VALUES (44, '沃尔沃', '京A11111', '123456', '12345', '123456', 5, '沃尔沃', '北京朝阳区北辰东路,与慧忠路交岔口以北50米路西', '1.2', 'qwer12345', '2345', '私用公车', '2022-01-07 21:01:33', '1641550646656.jpg', '2022-01-07 21:01:34', '2022-01-07 21:01:34', 1, 0);
INSERT INTO `t_bus` VALUES (45, 'qewert', '123456', '234567', '23456y', '123456', 5, '沃尔沃', '北京朝阳区北辰东路,与慧忠路交岔口以北50米路西', '11', '123456u', '`12345', '公共公车', '2022-01-06 08:41:18', '1641550646656.jpg', '2022-01-08 08:41:22', '2022-01-08 08:41:22', 1, 0);

-- ----------------------------
-- Table structure for t_bus_expenditure
-- ----------------------------
DROP TABLE IF EXISTS `t_bus_expenditure`;
CREATE TABLE `t_bus_expenditure`  (
  `expId` int NOT NULL AUTO_INCREMENT,
  `busCode` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `invoiceCode` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `typeId` int NULL DEFAULT NULL,
  `amount` double NULL DEFAULT NULL,
  `state` int NULL DEFAULT NULL,
  `approver` int NULL DEFAULT NULL,
  `des` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `createTime` datetime NULL DEFAULT NULL,
  `updateTime` datetime NULL DEFAULT NULL,
  `creator` int NULL DEFAULT NULL,
  `deleteFlag` int NULL DEFAULT NULL,
  `deleteNote` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`expId`) USING BTREE,
  INDEX `typeId`(`typeId`) USING BTREE,
  INDEX `approver`(`approver`) USING BTREE,
  INDEX `creator`(`creator`) USING BTREE,
  CONSTRAINT `t_bus_expenditure_ibfk_1` FOREIGN KEY (`typeId`) REFERENCES `t_bus_expenditure_type` (`typeId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `t_bus_expenditure_ibfk_2` FOREIGN KEY (`approver`) REFERENCES `t_user` (`userId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `t_bus_expenditure_ibfk_3` FOREIGN KEY (`creator`) REFERENCES `t_user` (`userId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 46 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_bus_expenditure
-- ----------------------------
INSERT INTO `t_bus_expenditure` VALUES (1, '沪CHI3P0', '109320321', 1, 3333, 1, 1, '金额超过1000,需要审核', '2022-01-03 09:46:04', '2022-01-06 22:04:32', 1, 0, NULL);
INSERT INTO `t_bus_expenditure` VALUES (2, '京CHI3P0', '109320321', 2, 111, 2, 1, 'qqq厚度爱上凤凰', '2022-01-02 09:46:04', '2022-01-05 14:59:13', 5, 0, NULL);
INSERT INTO `t_bus_expenditure` VALUES (3, '京CHI3P0', '109320321', 3, 333, 0, 1, 'aaaaaaa', '2022-01-04 09:46:04', '2022-01-04 09:46:08', 1, 0, NULL);
INSERT INTO `t_bus_expenditure` VALUES (8, '京CHI3P0', '12345yuwerg', 7, 12344, 0, 2, '金额超过1000,需要审核', '2022-01-01 12:43:20', '2022-01-05 17:04:14', 1, 0, NULL);
INSERT INTO `t_bus_expenditure` VALUES (9, '京CHI3P0', '12345yu', 3, 123, 1, 1, '12345一头热哇ASD', '2022-01-04 12:43:59', '2022-01-04 12:43:59', 1, 0, NULL);
INSERT INTO `t_bus_expenditure` VALUES (10, '京CHI3P0', '109320321', 2, 333, 0, 1, 'aaaaaaadfghj', '2022-01-08 12:59:08', '2022-01-04 12:59:08', 1, 0, NULL);
INSERT INTO `t_bus_expenditure` VALUES (11, '京AHI3P3', 'qwer23456', 3, 123, 0, 1, '微软体育和广泛的', '2022-01-05 13:23:18', '2022-01-05 15:19:42', 1, 0, NULL);
INSERT INTO `t_bus_expenditure` VALUES (13, '京AHI3P3', '1234567', 7, 5, 0, 1, '12345tyfds', '2022-01-08 15:13:01', '2022-01-05 15:13:01', 1, 0, NULL);
INSERT INTO `t_bus_expenditure` VALUES (14, '京D12347', '345678', 1, 5555, 2, 1, '12345tyfds', '2022-01-05 15:14:02', '2022-01-05 15:14:02', 1, 0, NULL);
INSERT INTO `t_bus_expenditure` VALUES (15, '京AHI3P3', '567890', 3, 12345, 0, 1, '金额超过1000,需要审核', '2022-01-08 15:15:10', '2022-01-05 15:15:10', 1, 0, NULL);
INSERT INTO `t_bus_expenditure` VALUES (16, '京D12347', '55555', 1, 33, 2, NULL, '1234567890-=', '2022-01-05 16:54:46', '2022-01-05 16:54:46', 1, 0, NULL);
INSERT INTO `t_bus_expenditure` VALUES (17, '京AHI3P3', '234567io', 8, 1234, 1, 1, '金额超过1000,需要审核', '2022-01-06 09:46:45', '2022-01-06 09:46:45', 1, 0, NULL);
INSERT INTO `t_bus_expenditure` VALUES (18, '京D12347', 'k12345678', 2, 12345, 0, NULL, '金额超过1000,需要审核', '2022-01-06 09:47:43', '2022-01-06 09:47:43', 1, 0, NULL);
INSERT INTO `t_bus_expenditure` VALUES (19, '京D12347', '098765432', 7, 23, 1, 1, 'qwertfdsasdcvb', '2022-01-06 09:48:23', '2022-01-06 09:48:23', 1, 0, NULL);
INSERT INTO `t_bus_expenditure` VALUES (20, '京AHI3P3', '1234567890[]', 3, 223, 2, NULL, '12345678', '2022-01-08 22:04:51', '2022-01-06 22:04:51', 1, 0, NULL);
INSERT INTO `t_bus_expenditure` VALUES (21, '京CHI3P0', '109320321', 2, 111, 2, 1, 'qqq厚度爱上凤凰', '2022-01-07 09:46:04', '2022-01-05 14:59:13', 5, 0, NULL);
INSERT INTO `t_bus_expenditure` VALUES (22, '京CHI3P0', '109320321', 3, 333, 1, 1, 'aaaaaaa', '2022-01-08 09:46:04', '2022-01-04 09:46:08', 1, 0, NULL);
INSERT INTO `t_bus_expenditure` VALUES (23, '京CHI3P0', '12345yuwerg', 7, 12344, 0, 2, '金额超过1000,需要审核', '2022-01-01 12:43:20', '2022-01-05 17:04:14', 1, 0, NULL);
INSERT INTO `t_bus_expenditure` VALUES (24, '京CHI3P0', '12345yu', 3, 123, 1, 1, '12345一头热哇ASD', '2022-01-04 12:43:59', '2022-01-04 12:43:59', 1, 0, NULL);
INSERT INTO `t_bus_expenditure` VALUES (25, '京CHI3P0', '109320321', 2, 333, 0, 1, 'aaaaaaadfghj', '2021-12-23 12:59:08', '2022-01-04 12:59:08', 1, 0, NULL);
INSERT INTO `t_bus_expenditure` VALUES (26, '京AHI3P3', 'qwer23456', 3, 123, 0, 5, '微软体育和广泛的', '2022-01-06 19:47:43', '2022-01-05 15:19:42', 1, 0, NULL);
INSERT INTO `t_bus_expenditure` VALUES (27, '京AHI3P3', '1234567', 7, 5, 1, 1, '12345tyfds', '2022-01-08 15:13:01', '2022-01-05 15:13:01', 1, 0, NULL);
INSERT INTO `t_bus_expenditure` VALUES (28, '京D12347', '345678', 1, 5555, 1, 1, '12345tyfds', '2022-01-05 15:14:02', '2022-01-05 15:14:02', 1, 0, NULL);
INSERT INTO `t_bus_expenditure` VALUES (29, '京AHI3P3', '567890', 3, 12345, 0, 2, '金额超过1000,需要审核', '2022-01-05 15:15:10', '2022-01-05 15:15:10', 1, 0, NULL);
INSERT INTO `t_bus_expenditure` VALUES (30, '京D12347', '55555', 1, 33, 2, 1, '1234567890-=', '2022-01-06 16:54:46', '2022-01-05 16:54:46', 1, 0, NULL);
INSERT INTO `t_bus_expenditure` VALUES (31, '京AHI3P3', '234567io', 8, 1234, 0, 22, '金额超过1000,需要审核', '2022-01-06 19:46:45', '2022-01-06 09:46:45', 1, 0, NULL);
INSERT INTO `t_bus_expenditure` VALUES (32, '京D12347', 'k12345678', 2, 12345, 0, 33, '金额超过1000,需要审核', '2022-01-08 19:47:43', '2022-01-06 09:47:43', 1, 0, NULL);
INSERT INTO `t_bus_expenditure` VALUES (33, '京D12347', '098765432', 7, 23, 1, 1, 'qwertfdsasdcvb', '2022-01-06 19:47:43', '2022-01-06 09:48:23', 1, 0, NULL);
INSERT INTO `t_bus_expenditure` VALUES (44, '沪CHI3P0', '109320321', 1, 333, 1, 1, 'aaaaaaa', '2022-01-07 09:46:04', '2021-12-10 21:16:36', 1, 1, NULL);
INSERT INTO `t_bus_expenditure` VALUES (45, '	 京AHI3P3', '12345678', 6, 44, 2, NULL, '12345678oiuytr', '2022-01-06 22:23:08', '2022-01-06 22:23:08', 1, 1, NULL);

-- ----------------------------
-- Table structure for t_bus_expenditure_type
-- ----------------------------
DROP TABLE IF EXISTS `t_bus_expenditure_type`;
CREATE TABLE `t_bus_expenditure_type`  (
  `typeId` int NOT NULL AUTO_INCREMENT,
  `typeName` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `typeNote` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `deleteFlag` int NULL DEFAULT NULL,
  PRIMARY KEY (`typeId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_bus_expenditure_type
-- ----------------------------
INSERT INTO `t_bus_expenditure_type` VALUES (1, '燃油费(汽油)', '燃油费(汽油)', 0);
INSERT INTO `t_bus_expenditure_type` VALUES (2, '燃油费(柴油)', '燃油费(柴油)', 0);
INSERT INTO `t_bus_expenditure_type` VALUES (3, '保险费', '保险费', 0);
INSERT INTO `t_bus_expenditure_type` VALUES (4, '维修保养费', '维修保养费', 0);
INSERT INTO `t_bus_expenditure_type` VALUES (6, '过路(桥)费', '过路(桥)费', 0);
INSERT INTO `t_bus_expenditure_type` VALUES (7, '停车费', '停车费', 0);
INSERT INTO `t_bus_expenditure_type` VALUES (8, '车船税', '车船税', 0);
INSERT INTO `t_bus_expenditure_type` VALUES (9, '检测费', '检测费', 0);
INSERT INTO `t_bus_expenditure_type` VALUES (10, '其它费用', '如洗车、违章罚款等,支出记录', 0);
INSERT INTO `t_bus_expenditure_type` VALUES (12, '23456', 'qwert12345', 1);
INSERT INTO `t_bus_expenditure_type` VALUES (13, '洗车费', '洗车费用', 1);
INSERT INTO `t_bus_expenditure_type` VALUES (14, 'a', NULL, 1);

-- ----------------------------
-- Table structure for t_bus_register_info
-- ----------------------------
DROP TABLE IF EXISTS `t_bus_register_info`;
CREATE TABLE `t_bus_register_info`  (
  `regId` int NOT NULL AUTO_INCREMENT,
  `busCode` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `recepient` int NULL DEFAULT NULL,
  `startPlace` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `endPlace` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `startOdometer` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `endOdometer` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `useTime` datetime NULL DEFAULT NULL,
  `useReason` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `createTime` datetime NULL DEFAULT NULL,
  `updateTime` datetime NULL DEFAULT NULL,
  `creator` int NULL DEFAULT NULL,
  `deleteFlag` int NULL DEFAULT NULL,
  `deleteNote` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`regId`) USING BTREE,
  INDEX `recepient`(`recepient`) USING BTREE,
  INDEX `creator`(`creator`) USING BTREE,
  CONSTRAINT `t_bus_register_info_ibfk_1` FOREIGN KEY (`recepient`) REFERENCES `t_user` (`userId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `t_bus_register_info_ibfk_2` FOREIGN KEY (`creator`) REFERENCES `t_user` (`userId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_bus_register_info
-- ----------------------------
INSERT INTO `t_bus_register_info` VALUES (1, '京CHI3P0', 6, 'AAABB', 'BBBC', '10', '9', '2022-01-03 11:16:40', 'awsedrftgyhujiko', '2022-01-03 11:17:10', '2022-01-07 10:11:58', 3, 0, NULL);
INSERT INTO `t_bus_register_info` VALUES (2, '京CHI3P0', 33, 'AVC', 'BGG', '10', '9', '2022-01-05 11:16:40', '预定', '2022-01-03 11:17:10', '2022-01-03 11:17:12', 3, 0, NULL);
INSERT INTO `t_bus_register_info` VALUES (3, '京CHI3P8', 22, 'AET', 'BHH', '10', '9', '2022-01-08 11:16:40', '预定', '2022-01-03 11:17:10', '2022-01-03 11:17:12', 3, 0, NULL);
INSERT INTO `t_bus_register_info` VALUES (5, '京A99999', 6, 'dsfghh', 'sdfgb', 'dsff', '234', '2022-01-04 14:26:50', 'sdfghjkiuytyrte', '2022-01-04 14:30:09', '2022-01-06 21:53:49', 1, 0, NULL);
INSERT INTO `t_bus_register_info` VALUES (6, '京A99999', 38, 'AVC', 'BGG', '12', '23', '2021-12-01 00:00:00', 'qqqqqqqq23wertg', '2021-12-01 14:45:05', '2022-01-06 21:53:58', 1, 0, NULL);
INSERT INTO `t_bus_register_info` VALUES (7, '京D12347', 6, 'AAABB', 'BBBC', '10', '9', '2022-01-03 11:16:40', '预定awsedrftgyhujiko', '2022-01-03 11:17:10', '2022-01-04 14:18:50', 3, 0, NULL);
INSERT INTO `t_bus_register_info` VALUES (8, '京CHI3P0', 6, 'AAABB', 'BBBC', '10', '9', '2022-01-03 11:16:40', '预定awsedrftgyhujikofhf', '2022-01-03 11:17:10', '2022-01-06 22:00:55', 3, 0, NULL);
INSERT INTO `t_bus_register_info` VALUES (9, '京CHI3P0', 33, 'AVC', 'BGG', '10', '9', '2022-01-05 11:16:40', '预定', '2022-01-03 11:17:10', '2022-01-03 11:17:12', 3, 0, NULL);
INSERT INTO `t_bus_register_info` VALUES (10, '京CHI3P8', 22, 'AET', 'BHH', '10', '9', '2022-01-03 11:16:40', '预定', '2022-01-08 11:17:10', '2022-01-03 11:17:12', 3, 0, NULL);
INSERT INTO `t_bus_register_info` VALUES (11, '京A99999', 6, 'dsfghh', 'sdfgb', 'dsff', '234', '2022-01-06 14:26:50', 'sdfghjkiuytyrte', '2022-01-08 14:30:09', '2022-01-06 21:53:49', 1, 0, NULL);
INSERT INTO `t_bus_register_info` VALUES (12, '京A99999', 38, 'AVC', 'BGG', '12', '23', '2021-12-01 00:00:00', 'qqqqqqqq23wertg', '2021-12-01 14:45:05', '2022-01-06 21:53:58', 1, 0, NULL);
INSERT INTO `t_bus_register_info` VALUES (13, '京D12347', 6, 'AAABB', 'BBBC', '10', '9', '2022-01-07 11:16:40', '预定awsedrftgyhujiko', '2022-01-03 11:17:10', '2022-01-04 14:18:50', 3, 0, NULL);
INSERT INTO `t_bus_register_info` VALUES (14, '京CHI3P0', 6, 'AAABB', 'BBBC', '10', '9', '2022-01-06 11:16:40', '12345预定awsedrftgyhujiko', '2022-01-07 11:17:10', '2022-01-08 08:44:03', 3, 0, NULL);
INSERT INTO `t_bus_register_info` VALUES (15, '京CHI3P0', 33, 'AVC', 'BGG', '10', '9', '2022-01-08 11:16:40', '预定', '2022-01-07 11:17:10', '2022-01-03 11:17:12', 3, 0, NULL);
INSERT INTO `t_bus_register_info` VALUES (16, '京CHI3P8', 22, 'AET', 'BHH', '10', '9', '2022-01-08 11:16:40', '预定', '2022-01-03 11:17:10', '2022-01-03 11:17:12', 3, 0, NULL);
INSERT INTO `t_bus_register_info` VALUES (17, '京A99999', 6, 'dsfghh', 'sdfgb', 'dsff', '234', '2022-01-04 14:26:50', 'sdfghjkiuytyrte', '2022-01-04 14:30:09', '2022-01-06 21:53:49', 1, 0, NULL);
INSERT INTO `t_bus_register_info` VALUES (18, '京A99999', 38, 'AVC', 'BGG', '12', '23', '2022-01-06 19:47:43', 'qqqqqqqq23wertg', '2022-01-08 14:45:05', '2022-01-06 21:53:58', 1, 0, NULL);
INSERT INTO `t_bus_register_info` VALUES (19, '京D12347', 6, 'AAABB', 'BBBC', '10', '9', '2022-01-06 11:16:40', '预定awsedrftgyhujiko', '2022-01-03 11:17:10', '2022-01-04 14:18:50', 3, 0, NULL);
INSERT INTO `t_bus_register_info` VALUES (20, '京CHI3P0', 6, 'AAABB', 'BBBC', '10', '9', '2022-01-06 19:47:43', '预定awsedrftgyhujiko', '2022-01-03 11:17:10', '2022-01-04 14:18:50', 3, 0, NULL);
INSERT INTO `t_bus_register_info` VALUES (21, '京CHI3P0', 33, 'AVC', 'BGG', '10', '9', '2022-01-08 11:16:40', '预定', '2022-01-08 11:17:10', '2022-01-03 11:17:12', 3, 0, NULL);
INSERT INTO `t_bus_register_info` VALUES (22, '京CHI3P8', 22, 'AET', 'BHH', '10', '9', '2022-01-03 11:16:40', '预定', '2022-01-03 11:17:10', '2022-01-03 11:17:12', 3, 0, NULL);
INSERT INTO `t_bus_register_info` VALUES (23, '京A99999', 6, 'dsfghh', 'sdfgb', 'dsff', '234', '2022-01-04 14:26:50', 'sdfghjkiuytyrte', '2022-01-06 14:30:09', '2022-01-06 21:53:49', 1, 0, NULL);
INSERT INTO `t_bus_register_info` VALUES (24, '京A99999', 38, 'AVC', 'BGG', '12', '23', '2022-01-08 00:04:00', 'qqqqqqqq23wertg', '2021-12-01 14:45:05', '2022-01-06 21:53:58', 1, 0, NULL);
INSERT INTO `t_bus_register_info` VALUES (25, '京D12347', 6, 'AAABB', 'BBBC', '10', '9', '2022-01-08 11:16:40', '预定awsedrftgyhujiko', '2022-01-03 11:17:10', '2022-01-04 14:18:50', 3, 0, NULL);
INSERT INTO `t_bus_register_info` VALUES (26, '	 京D12347', 22, 'AAABB', 'sdfgb', '12', '11', '2022-01-18 00:00:00', '11234567890-poiuytrew', '2022-01-06 22:01:22', '2022-01-06 22:01:22', 1, 0, NULL);
INSERT INTO `t_bus_register_info` VALUES (27, '京AHI3P3', 6, 'AVC', 'BHH', '5', '6', '2022-01-06 22:23:56', '1234567890', '2022-01-06 22:23:58', '2022-01-06 22:23:58', 1, 0, NULL);
INSERT INTO `t_bus_register_info` VALUES (28, '京D12347', 22, 'AAABB', 'sdfgb', '5', '6', '2022-01-06 22:38:41', 'asdf', '2022-01-06 22:38:46', '2022-01-06 22:38:46', 1, 1, NULL);

-- ----------------------------
-- Table structure for t_cost_accraditation
-- ----------------------------
DROP TABLE IF EXISTS `t_cost_accraditation`;
CREATE TABLE `t_cost_accraditation`  (
  `appId` int NOT NULL AUTO_INCREMENT,
  `busCode` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `approver` int NULL DEFAULT NULL,
  `appTime` datetime NULL DEFAULT NULL,
  `appState` int NULL DEFAULT NULL,
  `expId` int NULL DEFAULT NULL COMMENT '操作的经费登记记录id',
  `deleteFlag` int NULL DEFAULT NULL,
  PRIMARY KEY (`appId`) USING BTREE,
  INDEX `approver`(`approver`) USING BTREE,
  CONSTRAINT `t_cost_accraditation_ibfk_1` FOREIGN KEY (`approver`) REFERENCES `t_user` (`userId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_cost_accraditation
-- ----------------------------
INSERT INTO `t_cost_accraditation` VALUES (1, '京CHI3P0', 4, '2022-01-04 22:50:51', 1, 3, 0);
INSERT INTO `t_cost_accraditation` VALUES (2, '京CHI3P0', 4, '2022-01-04 22:50:51', 0, 2, 0);
INSERT INTO `t_cost_accraditation` VALUES (3, '京CHI3P0', 4, '2022-01-04 22:50:51', 2, 2, 0);
INSERT INTO `t_cost_accraditation` VALUES (4, '沪CHI3P0', 1, '2022-01-04 23:28:12', 0, 1, 0);
INSERT INTO `t_cost_accraditation` VALUES (5, '沪CHI3P0', 1, '2022-01-04 23:29:23', 0, 1, 0);
INSERT INTO `t_cost_accraditation` VALUES (6, '沪CHI3P0', 1, '2022-01-04 23:29:29', 2, 1, 0);
INSERT INTO `t_cost_accraditation` VALUES (7, '沪CHI3P0', 1, '2022-01-04 23:31:32', 0, 1, 0);
INSERT INTO `t_cost_accraditation` VALUES (8, '京CHI3P0', 1, '2022-01-04 23:31:32', 1, 2, 0);
INSERT INTO `t_cost_accraditation` VALUES (9, '沪CHI3P0', 1, '2022-01-04 23:31:37', 0, 1, 0);
INSERT INTO `t_cost_accraditation` VALUES (10, '京CHI3P0', 1, '2022-01-04 23:31:37', 0, 2, 0);
INSERT INTO `t_cost_accraditation` VALUES (11, '沪CHI3P0', 1, '2022-01-04 23:34:32', 0, 1, 0);
INSERT INTO `t_cost_accraditation` VALUES (12, '沪CHI3P0', 1, '2022-01-04 23:41:53', 0, 1, 0);
INSERT INTO `t_cost_accraditation` VALUES (13, '京CHI3P0', 1, '2022-01-04 23:42:16', 0, 2, 0);
INSERT INTO `t_cost_accraditation` VALUES (14, '沪CHI3P0', 1, '2022-01-05 00:15:23', 0, 1, 0);
INSERT INTO `t_cost_accraditation` VALUES (15, '沪CHI3P0', 1, '2022-01-05 00:23:17', 0, 1, 0);
INSERT INTO `t_cost_accraditation` VALUES (16, '沪CHI3P0', 1, '2022-01-05 00:23:48', 0, 1, 0);
INSERT INTO `t_cost_accraditation` VALUES (17, '京CHI3P0', 1, '2022-01-05 00:25:27', 0, 2, 0);
INSERT INTO `t_cost_accraditation` VALUES (18, '沪CHI3P0', 1, '2022-01-05 00:27:32', 1, 1, 0);
INSERT INTO `t_cost_accraditation` VALUES (19, '京CHI3P0', 1, '2022-01-05 15:20:40', 1, 9, 0);
INSERT INTO `t_cost_accraditation` VALUES (20, '京AHI3P3', 1, '2022-01-07 21:03:53', 2, 11, 0);
INSERT INTO `t_cost_accraditation` VALUES (21, '京D12347', 1, '2022-01-07 21:03:53', 2, 14, 0);
INSERT INTO `t_cost_accraditation` VALUES (22, '京CHI3P0', 1, '2022-01-07 21:04:06', 0, 3, 0);
INSERT INTO `t_cost_accraditation` VALUES (23, '京AHI3P3', 1, '2022-01-07 21:04:06', 0, 13, 0);
INSERT INTO `t_cost_accraditation` VALUES (24, '京AHI3P3', 1, '2022-01-07 21:05:37', 1, 15, 0);
INSERT INTO `t_cost_accraditation` VALUES (25, '京AHI3P3', 1, '2022-01-07 21:05:44', 1, 17, 0);
INSERT INTO `t_cost_accraditation` VALUES (26, '京AHI3P3', 1, '2022-01-07 21:06:01', 0, 15, 0);
INSERT INTO `t_cost_accraditation` VALUES (27, '京CHI3P0', 1, '2022-01-07 21:06:24', 1, 22, 0);
INSERT INTO `t_cost_accraditation` VALUES (28, '京D12347', 1, '2022-01-07 22:09:05', 1, 14, 0);
INSERT INTO `t_cost_accraditation` VALUES (29, '京D12347', 1, '2022-01-07 22:09:09', 2, 14, 0);
INSERT INTO `t_cost_accraditation` VALUES (30, '京AHI3P3', 1, '2022-01-07 22:09:37', 1, 27, 0);
INSERT INTO `t_cost_accraditation` VALUES (31, '京D12347', 1, '2022-01-07 22:09:37', 1, 33, 0);
INSERT INTO `t_cost_accraditation` VALUES (32, '京D12347', 1, '2022-01-07 22:09:37', 1, 19, 0);
INSERT INTO `t_cost_accraditation` VALUES (33, '京D12347', 1, '2022-01-08 08:47:18', 1, 28, 0);
INSERT INTO `t_cost_accraditation` VALUES (34, '沪CHI3P0', 1, '2022-01-08 08:47:18', 1, 1, 0);
INSERT INTO `t_cost_accraditation` VALUES (35, '京AHI3P3', 1, '2022-01-08 08:47:49', 0, 11, 0);

-- ----------------------------
-- Table structure for t_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_menu`;
CREATE TABLE `t_menu`  (
  `menuId` int NOT NULL AUTO_INCREMENT,
  `menuName` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `icon` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `parent` int NULL DEFAULT NULL,
  `url` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `target` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`menuId`) USING BTREE,
  UNIQUE INDEX `menuName`(`menuName`) USING BTREE,
  INDEX `parent`(`parent`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_menu
-- ----------------------------
INSERT INTO `t_menu` VALUES (1, '系统管理', 'el-icon-cpu', 0, '/1', NULL);
INSERT INTO `t_menu` VALUES (2, '权限管理', 'el-icon-postcard', 0, '/2', NULL);
INSERT INTO `t_menu` VALUES (3, '公车登记管理', 'el-icon-s-shop', 0, '/3', NULL);
INSERT INTO `t_menu` VALUES (4, '审批管理', 'el-icon-s-opportunity', 0, '/4', NULL);
INSERT INTO `t_menu` VALUES (5, '统计管理', 'el-icon-s-data', 0, '/5', NULL);
INSERT INTO `t_menu` VALUES (6, '用户信息管理', 'el-icon-user-solid', 1, '/6', NULL);
INSERT INTO `t_menu` VALUES (7, '公车信息管理', 'el-icon-s-help', 1, '/7', NULL);
INSERT INTO `t_menu` VALUES (8, '公车经费支出类别管理', 'el-icon-s-promotion', 1, '/8', NULL);
INSERT INTO `t_menu` VALUES (9, '角色添加', 'el-icon-user-solid', 2, '/9', NULL);
INSERT INTO `t_menu` VALUES (10, '角色信息管理', 'el-icon-s-order', 2, '/10', NULL);
INSERT INTO `t_menu` VALUES (11, '用户角色管理', 'el-icon-s-check', 2, '/11', NULL);
INSERT INTO `t_menu` VALUES (12, '公车使用登记', 'el-icon-s-opportunity', 3, '/12', NULL);
INSERT INTO `t_menu` VALUES (13, '公车经费支出登记管理', 'el-icon-s-data', 3, '/13', NULL);
INSERT INTO `t_menu` VALUES (14, '管理部门审批', 'el-icon-menu', 4, '/14', NULL);
INSERT INTO `t_menu` VALUES (15, '审批条目管理', 'el-icon-s-order', 4, '/15', NULL);
INSERT INTO `t_menu` VALUES (16, '公车使用信息统计', 'el-icon-s-cooperation', 5, '/16', NULL);
INSERT INTO `t_menu` VALUES (17, '公车经费支出信息统计', 'el-icon-s-check', 5, '/17', NULL);
INSERT INTO `t_menu` VALUES (18, '数据备份', 'el-icon-lock', 0, '/18', NULL);
INSERT INTO `t_menu` VALUES (19, '数据库备份', 'el-icon-s-opportunity', 18, '/19', NULL);

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role`  (
  `roleId` int NOT NULL AUTO_INCREMENT,
  `roleName` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `roleNote` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`roleId`) USING BTREE,
  UNIQUE INDEX `roleName`(`roleName`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES (-1, '无权限', '给修改无权限的用,此类角色=null');
INSERT INTO `t_role` VALUES (1, '超级管理员', '内测账号');
INSERT INTO `t_role` VALUES (2, '系统管理员', '系统管理,权限管理');
INSERT INTO `t_role` VALUES (3, '公车录入员', '公车登记管理');
INSERT INTO `t_role` VALUES (4, '审批员', '审批管理');
INSERT INTO `t_role` VALUES (5, '财务员', '统计管理');
INSERT INTO `t_role` VALUES (6, '司机', '公车领用人');
INSERT INTO `t_role` VALUES (14, '公车管理员', '只管理公车');
INSERT INTO `t_role` VALUES (15, '用户管理员', '只管理用户信息');
INSERT INTO `t_role` VALUES (21, 'wer', 'erwer');

-- ----------------------------
-- Table structure for t_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_role_menu`;
CREATE TABLE `t_role_menu`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `roleId` int NULL DEFAULT NULL,
  `menuId` int NULL DEFAULT NULL,
  `deleteFlag` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `roleId`(`roleId`) USING BTREE,
  INDEX `menuId`(`menuId`) USING BTREE,
  CONSTRAINT `t_role_menu_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `t_role` (`roleId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `t_role_menu_ibfk_2` FOREIGN KEY (`menuId`) REFERENCES `t_menu` (`menuId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 230 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_role_menu
-- ----------------------------
INSERT INTO `t_role_menu` VALUES (38, 4, 4, 0);
INSERT INTO `t_role_menu` VALUES (39, 4, 14, 0);
INSERT INTO `t_role_menu` VALUES (40, 4, 15, 0);
INSERT INTO `t_role_menu` VALUES (95, 2, 6, 0);
INSERT INTO `t_role_menu` VALUES (96, 2, 7, 0);
INSERT INTO `t_role_menu` VALUES (97, 2, 8, 0);
INSERT INTO `t_role_menu` VALUES (98, 2, 9, 0);
INSERT INTO `t_role_menu` VALUES (99, 2, 10, 0);
INSERT INTO `t_role_menu` VALUES (100, 2, 11, 0);
INSERT INTO `t_role_menu` VALUES (102, 2, 1, 0);
INSERT INTO `t_role_menu` VALUES (103, 2, 2, 0);
INSERT INTO `t_role_menu` VALUES (106, 3, 12, 0);
INSERT INTO `t_role_menu` VALUES (107, 3, 13, 0);
INSERT INTO `t_role_menu` VALUES (127, 3, 3, 0);
INSERT INTO `t_role_menu` VALUES (129, 5, 16, 0);
INSERT INTO `t_role_menu` VALUES (130, 5, 17, 0);
INSERT INTO `t_role_menu` VALUES (131, 5, 5, 0);
INSERT INTO `t_role_menu` VALUES (194, 15, 6, 0);
INSERT INTO `t_role_menu` VALUES (195, 15, 1, 0);
INSERT INTO `t_role_menu` VALUES (196, 1, 1, 0);
INSERT INTO `t_role_menu` VALUES (197, 1, 6, 0);
INSERT INTO `t_role_menu` VALUES (198, 1, 7, 0);
INSERT INTO `t_role_menu` VALUES (199, 1, 8, 0);
INSERT INTO `t_role_menu` VALUES (200, 1, 2, 0);
INSERT INTO `t_role_menu` VALUES (201, 1, 9, 0);
INSERT INTO `t_role_menu` VALUES (202, 1, 10, 0);
INSERT INTO `t_role_menu` VALUES (203, 1, 11, 0);
INSERT INTO `t_role_menu` VALUES (204, 1, 3, 0);
INSERT INTO `t_role_menu` VALUES (205, 1, 12, 0);
INSERT INTO `t_role_menu` VALUES (206, 1, 13, 0);
INSERT INTO `t_role_menu` VALUES (207, 1, 4, 0);
INSERT INTO `t_role_menu` VALUES (208, 1, 14, 0);
INSERT INTO `t_role_menu` VALUES (209, 1, 15, 0);
INSERT INTO `t_role_menu` VALUES (210, 1, 5, 0);
INSERT INTO `t_role_menu` VALUES (211, 1, 16, 0);
INSERT INTO `t_role_menu` VALUES (212, 1, 17, 0);
INSERT INTO `t_role_menu` VALUES (213, 1, 18, 0);
INSERT INTO `t_role_menu` VALUES (214, 1, 19, 0);
INSERT INTO `t_role_menu` VALUES (218, 14, 7, 0);
INSERT INTO `t_role_menu` VALUES (219, 14, 1, 0);
INSERT INTO `t_role_menu` VALUES (227, 21, 3, 0);
INSERT INTO `t_role_menu` VALUES (228, 21, 12, 0);
INSERT INTO `t_role_menu` VALUES (229, 21, 13, 0);

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `userId` int NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `roleId` int NULL DEFAULT NULL,
  `userName` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `userPassword` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `realName` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sex` char(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `idCard` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `birth` date NOT NULL,
  `age` int NULL DEFAULT NULL,
  `tel` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `createTime` datetime NULL DEFAULT NULL,
  `updateTime` datetime NULL DEFAULT NULL,
  `creator` int NULL DEFAULT NULL,
  `deleteFlag` int NOT NULL,
  PRIMARY KEY (`userId`) USING BTREE,
  UNIQUE INDEX `userName`(`userName`) USING BTREE,
  INDEX `creator`(`creator`) USING BTREE,
  INDEX `roleId`(`roleId`) USING BTREE,
  CONSTRAINT `t_user_ibfk_1` FOREIGN KEY (`creator`) REFERENCES `t_user` (`userId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `t_user_ibfk_2` FOREIGN KEY (`roleId`) REFERENCES `t_role` (`roleId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (1, 1, 'a', '123', '张三', '男', '11', '2021-12-27', 12, '11', '2021-12-27 22:00:13', '2021-12-27 22:00:15', 1, 0);
INSERT INTO `t_user` VALUES (2, 2, 'func', '123', 'bob', '女', '12', '2021-12-02', 20, '13666', '2021-12-28 18:31:44', '2022-01-02 22:53:30', 1, 0);
INSERT INTO `t_user` VALUES (3, 3, 'c', '123', 'mary', '女', '12', '2021-12-28', 23, '13', '2021-12-28 18:31:44', '2021-12-28 18:31:50', 2, 0);
INSERT INTO `t_user` VALUES (4, 4, 'ddd', '123', 'ttt', '男', '11', '2021-12-27', 12, '11', '2021-12-17 22:00:13', '2021-12-27 22:00:15', 2, 0);
INSERT INTO `t_user` VALUES (5, 5, '小明', '123', '明明', '男', '113456', '2021-12-27', 12, '11', '2021-12-17 22:00:13', '2021-12-27 22:00:15', 2, 0);
INSERT INTO `t_user` VALUES (6, 6, 'driver', '123', 'carry', '女', '44411', '2021-12-27', 12, '11', '2021-12-17 22:00:13', '2021-12-27 22:00:15', 2, 0);
INSERT INTO `t_user` VALUES (15, 4, 'ere', 'trt', 'rtr', '男', '1233', '2021-12-08', 18, '3434', '2021-12-30 15:06:22', '2021-12-30 15:06:22', 1, 0);
INSERT INTO `t_user` VALUES (16, 6, 'who', '123', 'our', '女', '2334', '2021-12-15', 19, '13234567', '2021-12-30 15:09:28', '2021-12-30 15:09:28', 1, 0);
INSERT INTO `t_user` VALUES (17, 6, 'qwerty', '12345', '1wef', '女', '123456y', '2022-01-11', 18, '123456', '2022-01-04 19:01:58', '2022-01-04 19:01:58', 1, 0);
INSERT INTO `t_user` VALUES (18, 6, 'werty', '12345aaaa', '1wef', '男', '123456y', '2022-01-11', 20, '123456', '2022-01-04 19:05:53', '2022-01-04 19:15:21', 1, 0);
INSERT INTO `t_user` VALUES (19, 6, 'qqq12345rrr', '12345678', 'qwerty', '男', '123456789', '2022-01-12', 16, '234567', '2022-01-03 19:18:21', '2022-01-08 08:40:03', 1, 0);
INSERT INTO `t_user` VALUES (20, 5, 'yyyyyy', 'yyy', 'yyy', '男', 'yyy', '2022-01-24', 18, 'yyy', '2022-01-04 19:21:31', '2022-01-04 19:21:31', 1, 0);
INSERT INTO `t_user` VALUES (21, 6, 'bbbbb', 'yyy', 'yyy', '男', 'yyy', '2022-01-24', 18, 'yyy', '2022-01-04 19:23:40', '2022-01-04 19:45:01', 1, 0);
INSERT INTO `t_user` VALUES (22, 6, 'pppp', 'yyy', 'yyy', '女', 'yyy', '2022-01-24', 18, 'yyy', '2022-01-04 19:23:57', '2022-01-04 21:14:02', 1, 0);
INSERT INTO `t_user` VALUES (23, 6, 'rrr', 'rrr', 'rrr', '女', 'rrrr', '2022-01-18', 18, 'rrr', '2022-01-04 19:40:36', '2022-01-04 19:40:36', 1, 0);
INSERT INTO `t_user` VALUES (24, 6, 'ttt333', '1234567', '里斯', '女', '12345678', '2022-01-12', 18, '1234567', '2022-01-05 12:46:27', '2022-01-05 13:58:45', 1, 0);
INSERT INTO `t_user` VALUES (25, 6, 'you', '2345frrer', '梨花', '男', '23456', '2022-01-12', 18, '12345', '2022-01-05 12:58:44', '2022-01-05 12:58:44', 1, 0);
INSERT INTO `t_user` VALUES (26, -1, 'youare', '2345frrer', '梨花', '男', '23456', '2022-01-12', 18, '12345', '2022-01-05 12:59:56', '2022-01-05 12:59:56', 1, 0);
INSERT INTO `t_user` VALUES (27, 1, '789', '123456', 'qwerty', '男', '12345678', '2022-01-11', 19, '12345678', '2022-01-05 13:06:25', '2022-01-05 13:07:31', 1, 1);
INSERT INTO `t_user` VALUES (29, 2, 'Terat', 'iAn1Nfw1dM', '管云', '男', '671182749930926464', '1991-03-07', 44, '04718607414', '2022-01-06 21:06:24', '2022-01-06 21:07:35', 1, 0);
INSERT INTO `t_user` VALUES (30, 3, 'Eve', 'MYSXT', '让晶瑶', '女', '055997001473482458', '1996-07-26', 32, '31990181552', '2022-01-06 21:12:37', '2022-01-06 21:12:37', 1, 0);
INSERT INTO `t_user` VALUES (31, 4, 'mitch', 'rfgiro', '甘欣合', '女', '532810439466052254', '1999-07-04', 24, '04415987165', '2022-01-06 21:14:25', '2022-01-06 21:14:25', 1, 0);
INSERT INTO `t_user` VALUES (32, 5, 'evera', '58220803669', '施霖', '男', '050871998830492814', '1992-04-16', 29, '31096786337', '2022-01-06 21:15:48', '2022-01-06 21:15:48', 1, 0);
INSERT INTO `t_user` VALUES (33, 6, 'itrin', '7125963', '莱高兴', '男', '504274199136647420', '1996-12-10', 26, '91624203436', '2022-01-06 21:16:49', '2022-01-07 19:56:25', 1, 0);
INSERT INTO `t_user` VALUES (34, 2, 'Terat22', 'iAn1Nfw1dM', '管云', '男', '671182749930926464', '1991-03-07', 44, '04718607414', '2022-01-04 21:06:24', '2022-01-06 21:07:35', 1, 0);
INSERT INTO `t_user` VALUES (35, 3, 'Eve33', 'MYSXT', '让晶瑶', '女', '055997001473482458', '1996-07-26', 32, '31990181552', '2022-01-06 21:12:37', '2022-01-06 21:12:37', 1, 0);
INSERT INTO `t_user` VALUES (36, 4, 'mitch44', 'rfgiro', '甘欣合', '女', '532810439466052254', '1999-07-04', 24, '04415987165', '2022-01-06 21:14:25', '2022-01-06 21:14:25', 1, 0);
INSERT INTO `t_user` VALUES (37, 5, 'evera5', '58220803669', '施霖', '男', '050871998830492814', '1992-04-16', 29, '31096786337', '2022-01-21 21:15:48', '2022-01-06 21:15:48', 1, 0);
INSERT INTO `t_user` VALUES (38, 3, 'itrin7', '7125963', '莱高兴', '男', '504274199136647420', '1996-12-10', 26, '91624203436', '2022-01-11 21:16:49', '2022-01-06 21:16:49', 1, 0);
INSERT INTO `t_user` VALUES (39, 2, 'WRER', '123456', 'wer', '男', '123456', '2022-01-12', 18, '12345', '2022-01-08 08:39:38', '2022-01-08 08:39:38', 1, 0);

SET FOREIGN_KEY_CHECKS = 1;
