/*
Navicat MySQL Data Transfer

Source Server         : ali
Source Server Version : 50719
Source Host           : 59.110.142.12:3306
Source Database       : zdql

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2018-03-22 11:52:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admins
-- ----------------------------
DROP TABLE IF EXISTS `admins`;
CREATE TABLE `admins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admins_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admins
-- ----------------------------
INSERT INTO `admins` VALUES ('1', '莞尔', 'admin@admin.com', '$2y$10$CihROLiupOfgXeHM1ZNRQeD0dL2HCmt0dXZTlzhLUb9L9PUX5j3.G', 'izfeBemAaEAQTFsXmv5Gqnl6AoNwhIOyEKvbntuY0VWebPJ4ItMZZ6zIxz17', '1', '2017-08-11 16:59:49', '2017-08-11 16:59:56');

-- ----------------------------
-- Table structure for bushous
-- ----------------------------
DROP TABLE IF EXISTS `bushous`;
CREATE TABLE `bushous` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bihua` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '笔画',
  `name` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bushous_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=215 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of bushous
-- ----------------------------
INSERT INTO `bushous` VALUES ('1', '1', '一 ', '横', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('2', '1', '丨', '竖', '1', '1', '1', '2017-09-25 14:48:48', '2017-10-13 18:10:47');
INSERT INTO `bushous` VALUES ('3', '1', '丶 ', '点', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('4', '1', '丿 乀 乁', '撇', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('5', '1', '乙 乚 乛', '折', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('6', '1', '亅 ', '勾', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('7', '2', '二 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('8', '2', '亠 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('9', '2', '人(亻)', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-10-18 18:37:08');
INSERT INTO `bushous` VALUES ('10', '2', '儿 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('11', '2', '入 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('12', '2', '八(丷) ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('13', '2', '冂 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('14', '2', '冖 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('15', '2', '冫 ', '【仌】古冰字，与冰或寒冷有关。如：凌，冰块。', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('16', '2', '几 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('17', '2', '凵 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('18', '2', '刀(刂) ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('19', '2', '力 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('20', '2', '勹 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('21', '2', '匕 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('22', '2', '匚 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('23', '2', '匸 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('24', '2', '十 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('25', '2', '卜 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('26', '2', '卩(㔾) ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('27', '2', '厂 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('28', '2', '厶 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('29', '2', '又 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('30', '3', '口 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('31', '3', '囗 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('32', '3', '土 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('33', '3', '士 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('34', '3', '夂 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('35', '3', '夊 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('36', '3', '夕 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('37', '3', '大 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('38', '3', '女 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('39', '3', '子 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('40', '3', '宀 ', '(miǎn)与宫室有关。', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('41', '3', '寸 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('42', '3', '小 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('43', '3', '尢 尣 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('44', '3', '尸 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('45', '3', '屮 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('46', '3', '山 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('47', '3', '巛 巜 川', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('48', '3', '工 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('49', '3', '己 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('50', '3', '巾 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('51', '3', '干 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('52', '3', '幺 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('53', '3', '广 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('54', '2', '廴 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('55', '4', '廿', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-10-17 19:14:11');
INSERT INTO `bushous` VALUES ('56', '3', '弋 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('57', '3', '弓 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('58', '3', '彐 彑 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('59', '3', '彡 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('60', '3', '彳 ', '(chì)与行走有关。如：循，顺着路走。徐，慢走。很，不顺从。《史记·项羽本纪》：“很如羊”。', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('61', '4', '心 忄', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('62', '4', '戈 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('63', '4', '戶 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('64', '4', '手 扌', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('65', '4', '支 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('66', '4', '攴 攵 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('67', '4', '文 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('68', '4', '斗 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('69', '4', '斤 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('70', '4', '方 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('71', '4', '无 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('72', '4', '日 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('73', '4', '曰 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('74', '4', '月 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('75', '4', '木 朩', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('76', '4', '欠 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('77', '4', '止 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('78', '4', '歹 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('79', '4', '殳 ', '多与打击有关。如：段，锤击。殴，拳击。', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('80', '4', '毋 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('81', '4', '比 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('82', '4', '毛 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('83', '4', '氏 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('84', '4', '气 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('85', '3', '水 氵', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('86', '4', '火 灬', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('87', '4', '爪 爫', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('88', '4', '父 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('89', '4', '爻 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('90', '4', '爿 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('91', '4', '片 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('92', '4', '牙 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('93', '4', '牛 牜', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('94', '4', '犬 犭', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('95', '5', '玄 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('96', '5', '玉 王', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('97', '5', '瓜 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('98', '4', '瓦', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-10-17 19:14:16');
INSERT INTO `bushous` VALUES ('99', '5', '甘 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('100', '5', '生 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('101', '5', '用 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('102', '5', '田 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('103', '5', '疋 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('104', '5', '疒 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('105', '5', '癶 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('106', '5', '白 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('107', '5', '皮 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('108', '5', '皿 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('109', '5', '目 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('110', '5', '矛 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('111', '5', '矢 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('112', '5', '石 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('113', '5', '示 礻', '与鬼神祭祀有关。如：社，土地神。祝，祷告求福。祸，神的惩罚。祖，已死的祖先神。禁，禁忌，怕冲撞鬼神而不敢做的事情。', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('114', '4', '禸 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('115', '5', '禾 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('116', '5', '穴 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('117', '5', '立 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('118', '6', '竹 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('119', '6', '米 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('120', '6', '糸 糹 纟', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('121', '6', '缶 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('122', '6', '网 罒', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('123', '6', '羊 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('124', '6', '羽 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('125', '6', '老 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('126', '6', '而 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('127', '6', '耒 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('128', '6', '耳 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('129', '6', '聿 ', '(肀，读玉)：聿部，作部首时可表示和笔或书写有关的事物', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('130', '6', '肉 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('131', '6', '臣 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('132', '6', '自 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('133', '6', '至 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('134', '6', '臼 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('135', '6', '舌 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('136', '6', '舛 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('137', '6', '舟 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('138', '6', '艮 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('139', '6', '色 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('140', '6', '艸 艹', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('141', '6', '虍 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('142', '6', '虫 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('143', '6', '血 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('144', '6', '行 ', '与道路有关。如：行，本义为道路。《诗经·七月》：“遵彼微行。”', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('145', '6', '衣 衤', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('146', '6', '西 覀', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('147', '7', '見 见', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('148', '7', '角 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('149', '7', '言 讠', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('150', '7', '谷 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('151', '7', '豆 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('152', '7', '豕 ', '表示和猪有关的事物', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('153', '7', '豸 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('154', '7', '貝 贝', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('155', '7', '赤 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('156', '7', '走 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('157', '7', '足 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('158', '7', '身 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('159', '7', '車 车', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('160', '7', '辛 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('161', '7', '辰 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('162', '7', '辵 辶', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('163', '7', '邑 阝', '与城邑有关。如；鄙，边邑。郭，城郭。郑，古邑名(也即国名)。都，有先君宗庙的城邑叫都。', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('164', '7', '酉 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('165', '8', '釆 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('166', '8', '里 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('167', '8', '金 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('168', '8', '長 长 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('169', '8', '門 门 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('170', '8', '阜 阝', '与山陵或台阶有关。如：阳，山南面。阿，大山。除，殿阶。阶，台阶。陟，阶高。', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('171', '8', '隶 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('172', '8', '隹 ', '(zhu)也与鸟类有关。如：雕，一种猛禽。雄，本指牡鸟。雅，古“鸦”字。', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('173', '8', '雨 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('174', '8', '靑 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('175', '8', '非 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('176', '9', '面 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('177', '9', '革 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('178', '9', '韋 韦', '与熟皮有关。如：韧，(像熟皮那样)柔韧。撼，古袜字，熟皮制品。', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('179', '9', '韭 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('180', '9', '音 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('181', '9', '頁 页', '(xié)与人头有关。如：颇，偏头。顾，回头。顿', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('182', '9', '風 风', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('183', '9', '飛 飞', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('184', '9', '食 飠 饣', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('185', '9', '首 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('186', '9', '香 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('187', '9', '馬 马', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-10-17 19:15:23');
INSERT INTO `bushous` VALUES ('188', '9', '骨', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-10-17 19:14:22');
INSERT INTO `bushous` VALUES ('189', '10', '高 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('190', '10', '髟 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('191', '10', '鬥 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('192', '10', '鬯 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('193', '10', '鬲 ', '与釜锅有关。如：鬻，古粥字。融，炊气上腾的样子。', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('194', '9', '鬼', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-10-17 19:14:40');
INSERT INTO `bushous` VALUES ('195', '11', '魚 鱼', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('196', '11', '鳥 鸟', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('197', '11', '鹵 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('198', '11', '鹿 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('199', '11', '麥 麦', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('200', '11', '麻 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('201', '12', '黃 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('202', '12', '黍 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('203', '12', '黑 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('204', '12', '黹 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('205', '13', '黽 黾', '表示和蛙、龟等两栖动物有关的事物', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('206', '12', '鼎 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('207', '13', '鼓 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('208', '13', '鼠 鼡', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('209', '14', '鼻 ', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('210', '14', '齊 齐', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-09-25 14:48:50');
INSERT INTO `bushous` VALUES ('211', '15', '齒 齿', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-10-17 19:15:26');
INSERT INTO `bushous` VALUES ('212', '16', '龍 龙', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-10-17 19:16:26');
INSERT INTO `bushous` VALUES ('213', '16', '龜 龟', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-10-17 19:22:07');
INSERT INTO `bushous` VALUES ('214', '17', '龠', '', '1', '1', '1', '2017-09-25 14:48:48', '2017-10-17 19:15:45');

-- ----------------------------
-- Table structure for carousels
-- ----------------------------
DROP TABLE IF EXISTS `carousels`;
CREATE TABLE `carousels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'url唯一标记',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` int(11) NOT NULL DEFAULT '0',
  `info` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `carousels_url_unique` (`url`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of carousels
-- ----------------------------
INSERT INTO `carousels` VALUES ('1', '灯火通明，遁入空门，只是年犹少', 'http://www.zzideqile.com/dict/天', '2017-08/JNZMYUee8fNBU9XxrgBRU1KeWYetPOxxjN8KHFUb.jpeg', '灯火通明，遁入空门，只是年犹少', '1', '灯火通明，遁入空门，只是年犹少', '1', '2017-08-11 10:54:37', '2017-12-27 13:57:07');
INSERT INTO `carousels` VALUES ('2', '江湖夜雨十年灯', 'http://www.zzideqile.com/dict/人', '2017-08/Q6DhI2GhkCSNHXRswiDuCiQxtC0NpZgBfhaZ2nxI.png', '江湖夜雨十年灯', '1', '江湖夜雨十年灯', '0', '2017-08-11 10:54:37', '2017-12-27 13:57:17');
INSERT INTO `carousels` VALUES ('3', '人生如逆旅 我亦是行人', 'http://www.zzideqile.com/dict/它', '2017-08/Xnt7pbJfwhEhITUpFLQQqKh3iArO7XPr0zmucIlL.png', '人生如逆旅 我亦是行人', '1', '人生如逆旅 我亦是行人', '0', '2017-08-11 10:54:37', '2017-12-27 13:57:46');
INSERT INTO `carousels` VALUES ('4', '灵感源于爱，心爱之物，心爱之人', 'http://www.zzideqile.com/dict/地', '2017-08/Ajpe2YGXKTK4sfjFLJcfrxTlCQ0IwtXbP9xpanAK.jpeg', '灵感，源于爱，心爱之物，心爱之人。', '1', '灵感，源于爱，心爱之物，心爱之人。', '1', '2017-08-11 10:54:37', '2017-12-27 13:56:55');

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0' COMMENT '父子关系',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '名称',
  `weight` tinyint(4) NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES ('1', '6', '散文', '3', '1', '1', '3', '2017-08-14 03:47:31', '2017-10-17 18:51:59');
INSERT INTO `categories` VALUES ('2', '0', '文化', '1', '1', '1', '1', '2017-08-14 03:48:30', '2017-10-17 18:26:18');
INSERT INTO `categories` VALUES ('3', '6', '寓言', '4', '1', '1', '4', '2017-08-14 05:46:49', '2017-10-17 18:51:59');
INSERT INTO `categories` VALUES ('4', '2', '诗词歌曲', '5', '1', '1', '1', '2017-08-14 05:47:15', '2017-10-17 18:39:41');
INSERT INTO `categories` VALUES ('5', '2', '诸子百家', '4', '1', '1', '1', '2017-08-14 05:47:31', '2017-10-17 18:39:41');
INSERT INTO `categories` VALUES ('6', '0', '艺术', '1', '1', '1', '1', '2017-09-12 09:35:42', '2017-10-17 18:28:52');
INSERT INTO `categories` VALUES ('7', '2', '天文历法', '2', '1', '1', '0', '2017-09-12 09:35:52', '2017-10-17 18:39:41');
INSERT INTO `categories` VALUES ('8', '6', '生活感悟', '2', '1', '1', '1', '2017-09-12 09:36:26', '2017-10-17 18:51:59');
INSERT INTO `categories` VALUES ('9', '6', '书房四艺', '1', '1', '1', '1', '2017-09-12 09:36:34', '2017-10-17 18:38:34');
INSERT INTO `categories` VALUES ('10', '2', '历史', '1', '1', '1', '1', '2017-10-17 18:31:35', '2017-10-17 18:36:52');
INSERT INTO `categories` VALUES ('11', '2', '说文解字', '3', '1', '1', '1', '2017-10-17 18:35:24', '2017-10-17 18:39:41');
INSERT INTO `categories` VALUES ('12', '2', '道家', '0', '1', '1', '1', '2017-10-17 18:40:35', '2017-10-17 18:40:35');

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT '999999',
  `nickname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `commentable_id` int(11) NOT NULL,
  `commentable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `support` int(11) NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comments_uid_index` (`uid`),
  KEY `comments_commentable_id_commentable_type_index` (`commentable_id`,`commentable_type`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES ('1', '0', 'test', '0', '8', 'App\\Post', '0', '![file](2017-09/J2XmHwYlQC2VsOBPYTEwzHzjb3Xvxu7Qiahd8TbY.png)  然后测试一下', '1', '2017-09-27 17:37:21', '2017-09-27 17:37:21');
INSERT INTO `comments` VALUES ('2', '0', '上邪', '0', '1', 'App\\Dict', '0', '坚持下去(*^ω^*)', '1', '2017-10-18 21:18:05', '2017-10-18 21:18:05');

-- ----------------------------
-- Table structure for dicts
-- ----------------------------
DROP TABLE IF EXISTS `dicts`;
CREATE TABLE `dicts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jianti` char(1) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '简体字',
  `fanti` char(1) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '繁体字',
  `slug` char(1) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'url唯一标记',
  `pinyin` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '拼音',
  `bushou_id` int(11) NOT NULL,
  `cate_id` int(11) NOT NULL,
  `zitu` varchar(65) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '汉字形象图片',
  `image` varchar(65) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '甲骨图片',
  `yitizi` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '异体字',
  `shuowen` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '说文解字',
  `benyuan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '汉字造字本源',
  `jieshi` varchar(3000) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '解释',
  `cizu` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '词组',
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `dicts_jianti_unique` (`jianti`),
  UNIQUE KEY `dicts_fanti_unique` (`fanti`),
  UNIQUE KEY `dicts_slug_unique` (`slug`),
  KEY `dicts_pinyin_index` (`pinyin`),
  KEY `dicts_bushou_id_index` (`bushou_id`),
  KEY `dicts_cate_id_index` (`cate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of dicts
-- ----------------------------
INSERT INTO `dicts` VALUES ('1', '天', '天', '天', 'tian', '37', '11', 'zitu/T2FWtIRVCjf5rIDC8x99iRKTtqUpSaJTjzrdOvEq.png', '2017-10/BfHEXiZBQcdzrorflfEM0QsavQm0UmL4ExSybLiz.jpeg', '䒶 兲 靝', '顚也。至高無上，从一、大。', '本意为人的头顶，后来引申为人头顶上的天空，苍天。积阳气而成天。清阳之气上升为天，浊音之气下降为地，地气上蒸化为云，天气下降化作雨（黄帝内经）。', '<p>1. 日月星辰所羅列的空間，即天空。<br />\r\n&nbsp; &nbsp; &nbsp;如：「碧海青天」、「頂天立地」。<br />\r\n&nbsp; &nbsp; &nbsp;唐．韓愈〈原道〉：「坐井而觀天，曰天小者，非天小也。」&nbsp;<br />\r\n2. 一晝夜的時間。<br />\r\n&nbsp; &nbsp; &nbsp;如：「昨天」、「今天」、「大後天」、「一天」。&nbsp;<br />\r\n3. 白天或一天中的某一段時間。<br />\r\n&nbsp; &nbsp; &nbsp;如：「三天三夜」、「三更天」。<br />\r\n&nbsp; &nbsp; &nbsp;宋．程顥〈春日偶成〉詩：「雲淡風輕近午天，傍花隨柳過前川。」&nbsp;<br />\r\n4. 時節、季節。<br />\r\n&nbsp; &nbsp; &nbsp;如：「春天」、「三伏天」、「黃梅天」。&nbsp;<br />\r\n5. 氣候。<br />\r\n&nbsp; &nbsp; &nbsp;如：「晴天」、「陰天」、「大熱天」、「下雨天」。&nbsp;<br />\r\n6. 自然。<br />\r\n&nbsp; &nbsp; &nbsp;如：「人定勝天」、「樂天知命」。<br />\r\n&nbsp; &nbsp; &nbsp;《莊子．天道》：「是故古之明大道者，先明天而道德次之。」&nbsp;<br />\r\n7. 指宇宙萬物的主宰。有時指大自然、有時指命運、有時指天神等。<br />\r\n&nbsp; &nbsp; &nbsp;如：「生死有命，富貴在天。」、「謀事在人，成事在天。」、「不怨天，不尤人。」<br />\r\n&nbsp; &nbsp; &nbsp;《書經．泰誓中》：「天視自我民視，天聽自我民聽。」&nbsp;<br />\r\n8. 指神靈所住的世界。<br />\r\n&nbsp; &nbsp; &nbsp;如：「升天」、「歸天」。&nbsp;<br />\r\n9. 不可或缺或最重要的事物。<br />\r\n&nbsp; &nbsp; &nbsp;如：「以夫為天」。<br />\r\n&nbsp; &nbsp; &nbsp;《漢書．卷四十三．酈食其傳》：「王者以民為天，而民以食為天。」&nbsp;<br />\r\n10. &nbsp;量詞。計算時間的單位。一天有二十四小時。<br />\r\n&nbsp; &nbsp; &nbsp;如：「這項工作限你三十天時間完成，不得拖延。」&nbsp;<br />\r\n11. 極大，大。<br />\r\n&nbsp; &nbsp; &nbsp;如：「天價」、「天文數字」、「天大的新聞」。</p>\r\n\r\n<p>&nbsp;</p>', '<p>天子</p>\r\n\r\n<p>天似穹庐</p>\r\n\r\n<p>天灵(人或其他动物的头顶骨)，天灵盖(头顶骨)</p>\r\n\r\n<p>天下无不散之宴席</p>\r\n\r\n<p>天下兴亡，匹夫有责。</p>\r\n\r\n<p>天下无难事，只怕有人心。</p>', '1', '1', '1', '2017-10-11 17:11:03', '2017-10-20 12:04:10');
INSERT INTO `dicts` VALUES ('2', '人', '人', '人', 'ren', '9', '11', 'zitu/tB2E9elFNg5xPs0O9RtY5Kr4FYNtwajBJJQHvx3U.jpeg', '2017-10/vegnFpmTzFwhLMsrpLrni7HpZkfVsmJCIkQEaSHV.jpeg', '亻𤯔', '天地之性最貴者也。此籒文。象臂脛之形。凡人之屬皆从人。', '人，天地之灵，天地之心，得天地阴阳二气而成型；《列子•黄帝》有七尺之骸、手足之异, 戴发含齿, 倚而食者, 谓之人。', '<p>1. 具有高度智慧和靈性，且能製造並使用工具以進行勞動的高等動物。<br />\r\n&nbsp; &nbsp; &nbsp;如：「男人」、「女人」、「人類」。&nbsp;<br />\r\n2. 別人、他人。<br />\r\n&nbsp; &nbsp; &nbsp;如：「己所不欲，勿施於人。」&nbsp;<br />\r\n3. 每人。<br />\r\n&nbsp; &nbsp; &nbsp;如：「人盡皆知」、「人手一冊」。<br />\r\n&nbsp; &nbsp; 《後漢書．卷一八．吳漢傳》：「若能同心一力，人自為戰，大功可立。」&nbsp;<br />\r\n4. 某種類型、身分的人。<br />\r\n&nbsp; &nbsp; &nbsp;如：「軍人」、「主持人」、「介紹人」、「臺北人」。&nbsp;<br />\r\n5. 人的品格和性情。<br />\r\n&nbsp; &nbsp; &nbsp;如：「文如其人」。<br />\r\n&nbsp; &nbsp;《孟子．萬章下》：「頌其詩，讀其書，不知其人，可乎？」<br />\r\n&nbsp; &nbsp; &nbsp;宋．王安石〈祭歐陽文忠公文〉：「世之學者，無問乎識與不識，而讀其文，則其人可知。」&nbsp;<br />\r\n6. 姓。如明代有人杰。&nbsp;<br />\r\n7. 二一四部首之一。</p>', '<p>人面不知何处去，桃花依旧笑春风。</p>\r\n\r\n<p>人生天地间，忽如远行客。</p>\r\n\r\n<p>人不可貌相，海水不可斗量。</p>\r\n\r\n<p>人之将死其言也善。</p>', '1', '1', '1', '2017-10-19 17:16:00', '2017-10-20 12:05:44');
INSERT INTO `dicts` VALUES ('3', '地', '地', '地', 'di', '32', '11', 'zitu/t4o7bKyWmFBrlGFB2sSo7tGKl8n7UTP2iVBTasQZ.jpeg', '2017-10/RpveZtdXznXmLEzDpU8J6ga6RC5LQtkvy1uveqyV.jpeg', '墬', '地，元气初分，輕清陽爲天，重濁陰爲地。萬物所陳列也。从土，也聲。', '墬，中国汉字，古同“地”。小篆看想来像从土里能长出万物的意思，合起来，就是孕育出万物的大地。', '<p>1. 人類萬物棲息生長的處所。與「天」相對。例大地、天地<br />\r\n2. 指地球。例地心<br />\r\n3. 田地、土地。例耕地、荒地、地盡其利<br />\r\n4. 場所。例發源地、目的地、根據地<br />\r\n5. 區域。例本地、殖民地、臺灣各地<br />\r\n6. 地位、立場。例易地而處、設身處地<br />\r\n7. 本性、心思、意志的領域。例見地、心地<br />\r\n8. 本質、底子。例質地<br />\r\n9. 助詞。用於副詞語尾。例忽地、驀地<br />\r\n10. (de)語助詞。同「的」。例慢慢地吃、好好地玩</p>', '<p>广袤大地</p>\r\n\r\n<p>天文地理</p>\r\n\r\n<p>天长地久有尽时，此恨绵绵无绝期。</p>\r\n\r\n<p>此地无银三百两，隔壁阿二不曾偷。</p>\r\n\r\n<p>英雄无用武之地</p>', '1', '1', '1', '2017-10-20 15:40:28', '2017-10-20 15:45:39');
INSERT INTO `dicts` VALUES ('4', '它', '它', '它', 'ta', '40', '11', 'zitu/CHy77kfcknEx5FXLYLfT8wh8ZJT56lkaqRXouT88.png', '2017-10/7vLW0bSFgEiU690ADHalA157Bw5hOce7VfDZmQW3.jpeg', '', '虫也。从虫而長，象冤曲垂尾形。上古艸居患它，故相問無它乎。凡它之屬皆从它。蛇，它或从虫。', '本意，蛇，甲骨文像蛇，有的甲骨文像上面一个脚下面一个蛇，像脚要踩着蛇的样子，古代用蛇它代表第三人称的‘它’，\r\n它,虫也。从虫而长,象冤曲垂尾形,上古草居患它,故相问「无它乎?」——《说文》\r\n“无它“ 有事出门打猎没碰到蛇吧，有安好的意思。', '<p>①本义：蛇，头尖身长的无足爬行动物。 本义只见于古文（后写作&ldquo;蛇&rdquo;）<br />\r\n②人类以外的所有事物。 其它 它物 它罪 它肠 它心 它人 它年 它名 它所 它们　它山之石&nbsp;</p>', '<p>它们</p>\r\n\r\n<p>它山之石</p>', '1', '1', '1', '2017-10-25 18:53:26', '2017-10-25 19:01:16');
INSERT INTO `dicts` VALUES ('5', '恙', '恙', '恙', 'yang', '61', '11', 'zitu/iircPfaikrIPVrgoFBmup6mPe4MxJig3GreLbITN.png', '2017-10/VKCUin0cod2HcBgSMcuQPhP1Ucoq5ou3ePewod14.jpeg', '', '恙，憂也。从心，羊聲。', '毒虫也，伤人，所以称为无恙，就是出门没碰见伤人的毒虫吧。《风俗通》言：恙，毒虫也，喜伤人。古人草居露宿，故相劳问，必曰：“无恙？”据此，似乎楼上所言比较符合。', '<p>1. &nbsp;忧虑。<br />\r\n2. &nbsp;疾病。<br />\r\n3. &nbsp;祸患。<br />\r\n4. &nbsp;传说中的一种啮虫。<br />\r\n&nbsp;《玉篇&middot;心部》：「恙，噬蛊，善食人心。」<br />\r\n&nbsp; 司马贞索隐引《易传》：「上古之时，草居露宿。恙，啮虫也，善食人心，俗悉患之，故相劳云&lsquo;无恙&rsquo;。恙非病也。」</p>', '<p>无恙</p>\r\n\r\n<p>恙虫</p>', '1', '1', '1', '2017-10-25 19:07:46', '2017-10-25 19:07:46');
INSERT INTO `dicts` VALUES ('6', '害', '害', '害', 'hai', '40', '11', 'linshitupian.jpg', 'linshijiaguwen.jpg', '说文后续补充', '说文后续补充', '像在屋子里面，一人对另外一人说，手里拿着一根带刺的木棒，陷害他人的样子。', '<p>说文后续补充</p>', '<p>说文后续补充</p>', '1', '1', '1', '2017-11-18 21:25:50', '2017-11-18 21:25:50');
INSERT INTO `dicts` VALUES ('7', '有', '有', '有', 'you', '74', '11', 'linshitupian.jpg', 'linshijiaguwen.jpg', '说文后续补充', '说文后续补充', '人手里拿着肉（月），代表有。', '<p>说文后续补充</p>', '<p>说文后续补充</p>', '1', '1', '1', '2017-11-18 21:33:28', '2017-11-18 21:33:28');

-- ----------------------------
-- Table structure for friend_links
-- ----------------------------
DROP TABLE IF EXISTS `friend_links`;
CREATE TABLE `friend_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '唯一标记',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'url唯一标记',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` tinyint(4) NOT NULL DEFAULT '0',
  `info` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `friend_links_name_unique` (`name`),
  UNIQUE KEY `friend_links_url_unique` (`url`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of friend_links
-- ----------------------------
INSERT INTO `friend_links` VALUES ('1', 'lofter', 'http://www.lofter.com/', '2017-07/sNgpnpqpuK7ZUQoEnXYidFIJ76R9IXtNExSFVESE.jpeg', '网易lofter', '1', '网易lofter', '1', '2017-08-11 17:20:56', '2017-08-11 17:20:58');
INSERT INTO `friend_links` VALUES ('2', '推搪', 'https://www.duitang.com/', '2017-07/T9K04A87zneQ1ONq5zktauHFiLMnij3rdSAy3GqD.png', '推搪', '1', '推搪', '1', '2017-08-11 17:21:01', '2017-08-11 17:21:02');
INSERT INTO `friend_links` VALUES ('3', '象形字典', 'http://www.vividict.com/', '2017-07/WVYl2aqB5rKLkac4fwwGnoo4gg2IkxSqCBL4iJ3j.jpeg', '象形字典', '1', '象形字典', '1', '2017-08-11 17:21:06', '2017-08-11 17:21:08');
INSERT INTO `friend_links` VALUES ('4', '字得其乐', 'http://www.zzideqile.com/', '2017-07/AzgNh5sMDWWAr3lew7Cvm3KmtgGUUIZC1dvasq2Y.jpeg', '字得其乐', '1', '字得其乐', '1', '2017-08-11 17:21:11', '2017-09-27 18:52:34');

-- ----------------------------
-- Table structure for menus
-- ----------------------------
DROP TABLE IF EXISTS `menus`;
CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0' COMMENT '菜单关系',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '菜单链接地址',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '菜单名称',
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'material-icons图标',
  `weight` tinyint(4) NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of menus
-- ----------------------------
INSERT INTO `menus` VALUES ('1', '0', '/home', '首页', 'home', '5', '1', null, '2017-08-11 09:17:12');
INSERT INTO `menus` VALUES ('2', '0', '/blogs', '博客', 'view_quilt', '3', '1', null, '2017-10-17 16:58:26');
INSERT INTO `menus` VALUES ('3', '0', '/tops', '排行', 'whatshot', '2', '1', null, '2017-10-17 16:58:22');
INSERT INTO `menus` VALUES ('4', '6', '/app', 'APP', 'apps', '3', '0', null, '2017-09-27 18:52:25');
INSERT INTO `menus` VALUES ('5', '6', '/single', '专题', 'art_track', '4', '1', null, '2017-09-27 18:52:25');
INSERT INTO `menus` VALUES ('6', '0', 'other', '其他', 'view_carousel', '1', '1', null, '2017-08-11 09:17:12');
INSERT INTO `menus` VALUES ('7', '6', '/about', '关于我们', 'account_balance', '7', '1', null, '2017-09-27 18:52:25');
INSERT INTO `menus` VALUES ('8', '6', '/contact', '联系我们', 'location_on', '6', '1', null, '2017-09-27 18:52:25');
INSERT INTO `menus` VALUES ('9', '6', '/item', '条款', 'local_cafe', '5', '1', null, '2017-09-27 18:52:25');
INSERT INTO `menus` VALUES ('10', '6', '/search', '搜索', 'search', '1', '0', null, '2017-09-09 05:54:14');
INSERT INTO `menus` VALUES ('11', '6', '/products', '购物车', 'shopping_cart', '2', '0', null, '2017-09-09 05:54:14');
INSERT INTO `menus` VALUES ('12', '0', '/dict-index', '字典', 'translate', '4', '1', '2017-10-17 11:33:23', '2017-10-17 16:58:26');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2017_09_26_025806_entrust_setup_tables', '1');
INSERT INTO `migrations` VALUES ('4', '2017_09_26_025854_create_admins_table', '1');
INSERT INTO `migrations` VALUES ('5', '2017_09_26_025907_create_categories_table', '1');
INSERT INTO `migrations` VALUES ('6', '2017_09_26_025921_create_tags_table', '1');
INSERT INTO `migrations` VALUES ('7', '2017_09_26_025934_create_posts_table', '1');
INSERT INTO `migrations` VALUES ('8', '2017_09_26_025948_create_dicts_table', '1');
INSERT INTO `migrations` VALUES ('9', '2017_09_26_030002_create_comments_table', '1');
INSERT INTO `migrations` VALUES ('10', '2017_09_26_030016_create_bushous_table', '1');
INSERT INTO `migrations` VALUES ('11', '2017_09_26_030030_create_carousels_table', '1');
INSERT INTO `migrations` VALUES ('12', '2017_09_26_030043_create_menus_table', '1');
INSERT INTO `migrations` VALUES ('13', '2017_09_26_030057_create_settings_table', '1');
INSERT INTO `migrations` VALUES ('14', '2017_09_26_030111_create_friend_links_table', '1');
INSERT INTO `migrations` VALUES ('15', '2017_09_26_030139_create_single_pages_table', '1');
INSERT INTO `migrations` VALUES ('16', '2017_09_26_034845_create_taggables_table', '1');
INSERT INTO `migrations` VALUES ('17', '2017_10_16_155315_create_pinyins_table', '1');
INSERT INTO `migrations` VALUES ('18', '2017_10_16_161053_add_field_zitu_to_dict', '1');
INSERT INTO `migrations` VALUES ('19', '2017_10_20_103332_add_field_benyuan_to_dict', '2');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for permission_role
-- ----------------------------
DROP TABLE IF EXISTS `permission_role`;
CREATE TABLE `permission_role` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_role_id_foreign` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of permission_role
-- ----------------------------

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of permissions
-- ----------------------------

-- ----------------------------
-- Table structure for pinyins
-- ----------------------------
DROP TABLE IF EXISTS `pinyins`;
CREATE TABLE `pinyins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pinyins_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=412 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of pinyins
-- ----------------------------
INSERT INTO `pinyins` VALUES ('1', 'A', 'a', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('2', 'A', 'ai', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('3', 'A', 'an', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('4', 'A', 'ang', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('5', 'A', 'ao', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('6', 'B', 'ba', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('7', 'B', 'bai', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('8', 'B', 'ban', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('9', 'B', 'bang', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('10', 'B', 'bao', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('11', 'B', 'bei', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('12', 'B', 'ben', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('13', 'B', 'beng', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('14', 'B', 'bi', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('15', 'B', 'bian', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('16', 'B', 'biao', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('17', 'B', 'bie', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('18', 'B', 'bin', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('19', 'B', 'bing', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('20', 'B', 'bo', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('21', 'B', 'bu', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('22', 'C', 'ca', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('23', 'C', 'cai', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('24', 'C', 'can', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('25', 'C', 'cang', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('26', 'C', 'cao', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('27', 'C', 'ce', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('28', 'C', 'cei', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('29', 'C', 'cen', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('30', 'C', 'ceng', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('31', 'C', 'cha', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('32', 'C', 'chai', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('33', 'C', 'chan', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('34', 'C', 'chang', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('35', 'C', 'chao', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('36', 'C', 'che', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('37', 'C', 'chen', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('38', 'C', 'cheng', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('39', 'C', 'chi', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('40', 'C', 'chong', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('41', 'C', 'chou', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('42', 'C', 'chu', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('43', 'C', 'chua', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('44', 'C', 'chuai', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('45', 'C', 'chuan', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('46', 'C', 'chuang', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('47', 'C', 'chui', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('48', 'C', 'chun', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('49', 'C', 'chuo', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('50', 'C', 'ci', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('51', 'C', 'cong', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('52', 'C', 'cou', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('53', 'C', 'cu', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('54', 'C', 'cuan', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('55', 'C', 'cui', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('56', 'C', 'cun', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('57', 'C', 'cuo', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('58', 'D', 'da', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('59', 'D', 'dai', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('60', 'D', 'dan', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('61', 'D', 'dang', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('62', 'D', 'dao', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('63', 'D', 'de', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('64', 'D', 'dei', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('65', 'D', 'deng', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('66', 'D', 'di', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('67', 'D', 'dia', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('68', 'D', 'dian', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('69', 'D', 'diao', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('70', 'D', 'die', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('71', 'D', 'ding', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('72', 'D', 'diu', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('73', 'D', 'dong', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('74', 'D', 'dou', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('75', 'D', 'du', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('76', 'D', 'duan', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('77', 'D', 'dui', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('78', 'D', 'dun', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('79', 'D', 'duo', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('80', 'E', 'e', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('81', 'E', 'ei', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('82', 'E', 'en', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('83', 'E', 'eng', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('84', 'E', 'er', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('85', 'F', 'fa', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('86', 'F', 'fan', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('87', 'F', 'fang', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('88', 'F', 'fei', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('89', 'F', 'fen', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('90', 'F', 'feng', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('91', 'F', 'fiao', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('92', 'F', 'fo', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('93', 'F', 'fou', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('94', 'F', 'fu', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('95', 'G', 'ga', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('96', 'G', 'gai', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('97', 'G', 'gan', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('98', 'G', 'gang', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('99', 'G', 'gao', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('100', 'G', 'ge', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('101', 'G', 'gei', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('102', 'G', 'gen', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('103', 'G', 'geng', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('104', 'G', 'gong', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('105', 'G', 'gou', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('106', 'G', 'gu', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('107', 'G', 'gua', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('108', 'G', 'guai', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('109', 'G', 'guan', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('110', 'G', 'guang', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('111', 'G', 'gui', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('112', 'G', 'gun', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('113', 'G', 'guo', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('114', 'H', 'ha', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('115', 'H', 'hai', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('116', 'H', 'han', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('117', 'H', 'hang', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('118', 'H', 'hao', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('119', 'H', 'he', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('120', 'H', 'hei', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('121', 'H', 'hen', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('122', 'H', 'heng', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('123', 'H', 'hm', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('124', 'H', 'hng', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('125', 'H', 'hong', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('126', 'H', 'hou', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('127', 'H', 'hu', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('128', 'H', 'hua', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('129', 'H', 'huai', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('130', 'H', 'huan', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('131', 'H', 'huang', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('132', 'H', 'hui', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('133', 'H', 'hun', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('134', 'H', 'huo', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('135', 'J', 'ji', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('136', 'J', 'jia', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('137', 'J', 'jian', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('138', 'J', 'jiang', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('139', 'J', 'jiao', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('140', 'J', 'jie', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('141', 'J', 'jin', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('142', 'J', 'jing', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('143', 'J', 'jiong', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('144', 'J', 'jiu', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('145', 'J', 'ju', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('146', 'J', 'juan', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('147', 'J', 'jue', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('148', 'J', 'jun', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('149', 'K', 'ka', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('150', 'K', 'kai', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('151', 'K', 'kan', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('152', 'K', 'kang', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('153', 'K', 'kao', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('154', 'K', 'ke', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('155', 'K', 'ken', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('156', 'K', 'keng', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('157', 'K', 'kong', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('158', 'K', 'kou', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('159', 'K', 'ku', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('160', 'K', 'kua', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('161', 'K', 'kuai', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('162', 'K', 'kuan', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('163', 'K', 'kuang', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('164', 'K', 'kui', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('165', 'K', 'kun', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('166', 'K', 'kuo', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('167', 'L', 'la', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('168', 'L', 'lai', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('169', 'L', 'lan', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('170', 'L', 'lang', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('171', 'L', 'lao', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('172', 'L', 'le', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('173', 'L', 'lei', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('174', 'L', 'leng', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('175', 'L', 'li', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('176', 'L', 'lia', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('177', 'L', 'lian', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('178', 'L', 'liang', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('179', 'L', 'liao', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('180', 'L', 'lie', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('181', 'L', 'lin', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('182', 'L', 'ling', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('183', 'L', 'liu', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('184', 'L', 'long', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('185', 'L', 'lou', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('186', 'L', 'lu', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('187', 'L', 'lun', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('188', 'L', 'luo', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('189', 'M', 'm', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('190', 'M', 'ma', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('191', 'M', 'mai', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('192', 'M', 'man', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('193', 'M', 'mang', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('194', 'M', 'mao', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('195', 'M', 'me', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('196', 'M', 'mei', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('197', 'M', 'men', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('198', 'M', 'meng', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('199', 'M', 'mi', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('200', 'M', 'mian', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('201', 'M', 'miao', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('202', 'M', 'mie', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('203', 'M', 'min', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('204', 'M', 'ming', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('205', 'M', 'miu', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('206', 'M', 'mo', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('207', 'M', 'mou', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('208', 'M', 'mu', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('209', 'N', 'n', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('210', 'N', 'na', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('211', 'N', 'nai', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('212', 'N', 'nan', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('213', 'N', 'nang', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('214', 'N', 'nao', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('215', 'N', 'ne', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('216', 'N', 'nei', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('217', 'N', 'nen', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('218', 'N', 'neng', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('219', 'N', 'ng', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('220', 'N', 'ni', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('221', 'N', 'nian', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('222', 'N', 'niang', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('223', 'N', 'niao', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('224', 'N', 'nie', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('225', 'N', 'nin', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('226', 'N', 'ning', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('227', 'N', 'niu', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('228', 'N', 'nong', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('229', 'N', 'nou', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('230', 'N', 'nu', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('231', 'N', 'nuan', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('232', 'N', 'nüe', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('233', 'N', 'nun', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('234', 'N', 'nuo', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('235', 'O', 'o', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('236', 'O', 'ou', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('237', 'P', 'pa', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('238', 'P', 'pai', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('239', 'P', 'pan', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('240', 'P', 'pang', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('241', 'P', 'pao', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('242', 'P', 'pei', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('243', 'P', 'pen', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('244', 'P', 'peng', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('245', 'P', 'pi', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('246', 'P', 'pian', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('247', 'P', 'piao', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('248', 'P', 'pie', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('249', 'P', 'pin', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('250', 'P', 'ping', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('251', 'P', 'po', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('252', 'P', 'pou', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('253', 'P', 'pu', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('254', 'Q', 'qi', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('255', 'Q', 'qia', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('256', 'Q', 'qian', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('257', 'Q', 'qiang', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('258', 'Q', 'qiao', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('259', 'Q', 'qie', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('260', 'Q', 'qin', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('261', 'Q', 'qing', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('262', 'Q', 'qiong', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('263', 'Q', 'qiu', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('264', 'Q', 'qu', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('265', 'Q', 'quan', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('266', 'Q', 'que', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('267', 'Q', 'qun', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('268', 'R', 'ran', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('269', 'R', 'rang', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('270', 'R', 'rao', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('271', 'R', 're', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('272', 'R', 'ren', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('273', 'R', 'reng', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('274', 'R', 'ri', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('275', 'R', 'rong', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('276', 'R', 'rou', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('277', 'R', 'ru', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('278', 'R', 'ruan', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('279', 'R', 'rui', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('280', 'R', 'run', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('281', 'R', 'ruo', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('282', 'S', 'sa', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('283', 'S', 'sai', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('284', 'S', 'san', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('285', 'S', 'sang', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('286', 'S', 'sao', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('287', 'S', 'se', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('288', 'S', 'sen', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('289', 'S', 'seng', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('290', 'S', 'sha', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('291', 'S', 'shai', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('292', 'S', 'shan', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('293', 'S', 'shang', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('294', 'S', 'shao', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('295', 'S', 'she', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('296', 'S', 'shei', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('297', 'S', 'shen', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('298', 'S', 'sheng', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('299', 'S', 'shi', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('300', 'S', 'shou', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('301', 'S', 'shu', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('302', 'S', 'shua', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('303', 'S', 'shuai', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('304', 'S', 'shuan', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('305', 'S', 'shuang', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('306', 'S', 'shui', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('307', 'S', 'shun', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('308', 'S', 'shuo', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('309', 'S', 'si', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('310', 'S', 'song', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('311', 'S', 'sou', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('312', 'S', 'su', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('313', 'S', 'suan', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('314', 'S', 'sui', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('315', 'S', 'sun', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('316', 'S', 'suo', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('317', 'T', 'ta', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('318', 'T', 'tai', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('319', 'T', 'tan', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('320', 'T', 'tang', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('321', 'T', 'tao', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('322', 'T', 'te', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('323', 'T', 'teng', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('324', 'T', 'ti', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('325', 'T', 'tian', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('326', 'T', 'tiao', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('327', 'T', 'tie', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('328', 'T', 'ting', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('329', 'T', 'tong', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('330', 'T', 'tou', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('331', 'T', 'tu', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('332', 'T', 'tuan', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('333', 'T', 'tui', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('334', 'T', 'tun', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('335', 'T', 'tuo', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('336', 'W', 'wa', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('337', 'W', 'wai', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('338', 'W', 'wan', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('339', 'W', 'wang', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('340', 'W', 'wei', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('341', 'W', 'wen', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('342', 'W', 'weng', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('343', 'W', 'wo', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('344', 'W', 'wu', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('345', 'X', 'xi', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('346', 'X', 'xia', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('347', 'X', 'xian', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('348', 'X', 'xiang', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('349', 'X', 'xiao', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('350', 'X', 'xie', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('351', 'X', 'xin', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('352', 'X', 'xing', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('353', 'X', 'xiong', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('354', 'X', 'xiu', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('355', 'X', 'xu', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('356', 'X', 'xuan', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('357', 'X', 'xue', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('358', 'X', 'xun', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('359', 'Y', 'ya', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('360', 'Y', 'yai', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('361', 'Y', 'yan', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('362', 'Y', 'yang', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('363', 'Y', 'yao', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('364', 'Y', 'ye', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('365', 'Y', 'yi', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('366', 'Y', 'yin', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('367', 'Y', 'ying', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('368', 'Y', 'yo', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('369', 'Y', 'yong', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('370', 'Y', 'you', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('371', 'Y', 'yu', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('372', 'Y', 'yuan', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('373', 'Y', 'yue', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('374', 'Y', 'yun', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('375', 'Z', 'za', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('376', 'Z', 'zai', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('377', 'Z', 'zan', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('378', 'Z', 'zang', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('379', 'Z', 'zao', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('380', 'Z', 'ze', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('381', 'Z', 'zei', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('382', 'Z', 'zen', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('383', 'Z', 'zeng', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('384', 'Z', 'zha', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('385', 'Z', 'zhai', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('386', 'Z', 'zhan', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('387', 'Z', 'zhang', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('388', 'Z', 'zhao', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('389', 'Z', 'zhe', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('390', 'Z', 'zhei', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('391', 'Z', 'zhen', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('392', 'Z', 'zheng', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('393', 'Z', 'zhi', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('394', 'Z', 'zhong', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('395', 'Z', 'zhou', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('396', 'Z', 'zhu', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('397', 'Z', 'zhua', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('398', 'Z', 'zhuai', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('399', 'Z', 'zhuan', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('400', 'Z', 'zhuang', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('401', 'Z', 'zhui', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('402', 'Z', 'zhun', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('403', 'Z', 'zhuo', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('404', 'Z', 'zi', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('405', 'Z', 'zong', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('406', 'Z', 'zou', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('407', 'Z', 'zu', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('408', 'Z', 'zuan', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('409', 'Z', 'zui', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('410', 'Z', 'zun', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');
INSERT INTO `pinyins` VALUES ('411', 'Z', 'zuo', '1', '2017-10-13 14:13:50', '2017-10-13 14:13:52');

-- ----------------------------
-- Table structure for posts
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cate_id` int(11) NOT NULL,
  `keyword` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'url唯一标记',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_name_unique` (`name`),
  UNIQUE KEY `posts_slug_unique` (`slug`),
  KEY `posts_cate_id_index` (`cate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of posts
-- ----------------------------
INSERT INTO `posts` VALUES ('1', '遇到百分百的女孩', '1', '四月一个晴朗的早晨，遇到百分百的女孩', '四月一个晴朗的早晨，遇到百分百的女孩', '四月一个晴朗的早晨，遇到百分百的女孩', '2017-08/r4MpkVTcsnKKMoXX4nILIuwvApaYOju5jso2GDK4.jpeg', '<p>四月一个晴朗的早晨，我在原宿后街同一个百分之百的女孩擦肩而过。&nbsp;&nbsp;&nbsp; 女孩算不得怎么漂亮，衣着也不出众，脑后的头发执著地带有睡觉挤压的痕迹。年龄也恐怕快三十了。严格来说，恐怕难以称之为女孩。然而，相距五十米开外我便一眼看出：对我来说，她是个百分之百的女孩。从看见她的身姿的那一瞬间，我的胸口便如发生地鸣一般地震颤，口中如沙漠一般干得沙沙作响。 或许你也有你的理想型女孩，例如喜欢足踝细弱的女孩，还有眼睛大的女孩，十指绝对好看的女孩，或不明所以地迷上慢慢花时间进食的女孩。我当然也有自己的偏爱，在饭店吃饭时就曾看邻桌一女孩的鼻形看得发呆。<br />\r\n但要明确勾勒百分之百的女孩形象，任何人都无法做到。我就绝对想不起她长有怎样的鼻子。甚至是否有鼻子都已记不真切，现在我所能记的，只是她并非十分漂亮这一点。事情也真是不可思议。<br />\r\n&ldquo;昨天在路上同一个百分之百的女孩擦肩而过。&rdquo;我对一个人说。<br />\r\n&ldquo;唔，&rdquo;他应道，&ldquo;人可漂亮？&rdquo;<br />\r\n&ldquo;不，不是说这个。&rdquo;<br />\r\n&ldquo;那，是合你口味的那种类型喽？&rdquo;<br />\r\n&ldquo;记不得了。眼睛什么样啦，胸部是大是小啦，统统忘得一干二净。&rdquo;<br />\r\n&ldquo;莫名其妙啊！&rdquo;<br />\r\n&ldquo;是莫名其妙。&rdquo;<br />\r\n&ldquo;那么，&rdquo;他显得兴趣索然，&ldquo;你做什么了？搭话了？还是跟踪了？&rdquo;<br />\r\n&ldquo;什么都没做，&rdquo;我说，&ldquo;仅仅擦肩而过而已。&rdquo;<br />\r\n她由东往西走，我从西向东走，在四月里一个神清气爽的清晨。&nbsp;&nbsp;&nbsp; 我想和她说话，哪怕三十分钟也好。想打听她的身世，也想全盘托出自己的身世。而最重要的，是想弄清导致一九八一年四月一个晴朗的早晨我们在原宿后街擦肩而过这一命运的原委，那里面肯定充满着和平时代的古老机器般的温馨的秘密。&nbsp;&nbsp;&nbsp; 如此谈罢，我们可以找地方吃午饭，看伍迪&middot;艾伦的影片，再顺路到宾馆里的酒吧喝鸡尾酒什么的。弄得好，喝完后说不定能同她睡上一觉。<br />\r\n可能性在叩击我的心扉。<br />\r\n我和她之间的距离已经近至十五六米了。<br />\r\n问题是，我到底该如何向她搭话呢？<br />\r\n&ldquo;你好！和我说说话可以么？哪怕三十分钟也好。&rdquo;<br />\r\n过于傻气，简直像劝人加入保险。<br />\r\n&ldquo;请问，这一带有二十四小时营业的洗衣店么？&rdquo;<br />\r\n这也同样傻里傻气。何况我岂非连洗衣袋都没带！有谁能相信我的道白呢？<br />\r\n或许开门见山好些。&ldquo;你好！你对我可是百分之百的女孩哟！&rdquo;&nbsp;&nbsp;&nbsp; 不，不成，她恐怕不会相信我的直白。纵然相信，也未必愿同我说什么话。她可能这样说：即便我对你是百分之百的女孩，你对我却不是百分之百的男人，抱歉！而这是大有可能的。假如陷入这般境地，我肯定全然不知所措。这一打击说不定会使我一蹶不振。我已三十二岁，所谓上年纪归根结蒂便是这么一回事。 我是在花店门前和她擦肩而过的，那暖暖的小小的空气块儿触到我的肌肤。柏油路面洒了水，周围荡漾着玫瑰花香。连向她打声招呼我都未能做到。她身穿白毛衣，右手拿一个尚未贴邮票的白色四方信封。她给谁写了这封信。那般睡眼惺忪，说不定整整写了一个晚上。那四方信封里有可能装着她的全部秘密。<br />\r\n走几步回头时，她的身影早已消失在人群里。&nbsp;&nbsp;&nbsp; 当然，今天我已完全清楚当时应怎样向她搭话。但不管怎么说，那道白实在太长，我肯定表达不好&mdash;&mdash;就是这样，我所想到的每每不够实用。<br />\r\n总之，道白自&ldquo;很久很久以前&rdquo;开始，而以&ldquo;你不觉得这是个令人伤感的故事吗&rdquo;结束。&nbsp;&nbsp;&nbsp; 很久很久以前，有个地方有一个少男和一个少女。少男十八，少女十六。少男算不得英俊，少女也不怎么漂亮，无非随处可见的孤独而平常的少男少女。但两人坚信世上某个地方一定存在百分之百适合自己的少女和少男。是的，两人相信奇迹，而奇迹果真发生了。<br />\r\n一天两人在街头不期而遇。<br />\r\n&ldquo;真巧！我一直在找寻你。也许你不相信，你对我是百分之百的女孩！&rdquo;少男对少女说。<br />\r\n少女对少男道：&ldquo;你对我也正是百分之百的男孩。从头到脚和我想象的一模一样。简直是在做梦。&rdquo;&nbsp;&nbsp;&nbsp; 两人坐在公园长椅上，手拉着手百谈不厌。两人已不再孤独。百分之百的需求对方，百分之百被对方需求。而百分之百需求对方和百分之百被对方需求是何等美妙的事情啊！这已是宇宙奇迹！<br />\r\n但两人心中掠过了一个小小的、的确小而又小的疑虑：梦想如此轻易成真，是不是好事呢？<br />\r\n交谈突然中断时，少男这样说道：&nbsp;&nbsp;&nbsp; &ldquo;我说，再尝试一次吧！如果我们两人真是一对百分之百的恋人的话，肯定还会有一天在哪里相遇。下次相遇时如果仍觉得对方百分之百，就马上在那里结婚，好么？&rdquo;<br />\r\n&ldquo;好的。&rdquo;少女回答。<br />\r\n于是两人分开，各奔东西。&nbsp;&nbsp;&nbsp; 然而说实在话，根本没有必要尝试，纯属多此一举。为什么呢？因为两人的的确确是一对百分之百的恋人，因为那是奇迹般的邂逅。但两人过于年轻，没办法知道这许多，于是无情的命运开始捉弄两人了。&nbsp;&nbsp;&nbsp; 一年冬天，两人都染上了那年肆虐的恶性流感，在死亡线徘徊几个星期后，过去的记忆丧失殆尽。事情也真是离奇，当两人睁眼醒来时，脑袋里犹如D&middot;H&middot;劳伦斯少年时代的贮币盒一样空空如也。&nbsp;&nbsp;&nbsp; 但这对青年男女毕竟聪颖豁达且极有毅力，经过不懈努力，终于再度获得了新的知识新的情感，胜任愉快地重返社会生活。啊，我的上帝！这两人真是无可挑剔！他们完全能够换乘地铁，能够在邮局寄快信，并且分别体验了百分之七十五和百分之八十五的恋爱。&nbsp;&nbsp;&nbsp; 如此一来而去，少男三十二，少女三十岁了。时光以惊人的速度流逝。&nbsp;&nbsp;&nbsp; 四月一个晴朗的早晨，少男为喝上折价的早咖啡沿原宿后街由西向东走，少女为买快信邮票沿同一条街由东向西去，两人在路的正中央擦肩而过。失却的记忆的微光刹那间照亮了两颗心：<br />\r\n<strong>她对我是百分之百的女孩。<br />\r\n他对我是百分之百的男孩。</strong><br />\r\n<img alt=\"\" class=\"img-rounded img-responsive img-raised\" src=\"/uploads/ck/images/20170814040058-5991207a9aaba.jpg\" /> 然而两人记忆的烛光委实过于微弱，两人的话语也不似十四年前那般清晰，结果连句话也没说便擦肩而过，径直消失在人群中，永远永远。<br />\r\n你不觉得这是个令人伤感的故事么？<br />\r\n是的，我本该这样向她搭话。</p>', '1', '1', '1', '2017-08-14 04:01:15', '2017-09-22 07:31:53');
INSERT INTO `posts` VALUES ('2', '苏幕遮-周邦彦', '4', '苏幕遮-周邦彦', '苏幕遮-周邦彦', '苏幕遮-周邦彦', '2017-08/bW1Ujgs6iC79Sits8sKumzkiFNkf5e08BmqfnIw3.jpeg', '<h2>苏幕遮&middot;燎沈香​​​​​​</h2>\r\n\r\n<pre>\r\n作者： 周邦彦\r\n\r\n燎沉香，消溽暑。鸟雀呼晴，侵晓窥檐语。叶上初阳干宿雨，水面清圆，一一风荷举。\r\n\r\n故乡遥，何日去？家住吴门，久作长安旅。五月渔郎相忆否。小楫轻舟，梦入芙蓉浦。</pre>\r\n\r\n<p><img alt=\"\" class=\"img-rounded img-responsive img-raised\" src=\"/uploads/ck/images/20170814042730-599126b2090c7.jpg\" /></p>', '1', '1', '1', '2017-08-14 04:28:40', '2017-08-14 05:47:52');
INSERT INTO `posts` VALUES ('3', '《黑羊》- 卡尔维诺', '3', '《黑羊》- 卡尔维诺', '《黑羊》- 卡尔维诺', '《黑羊》- 卡尔维诺', '2017-08/ObAe1PbSTLK1zoOqWTkRxbTVTpZww6TDnzgH2AFY.jpeg', '<p>&nbsp; &nbsp; 从前有个国家，里面人人是贼。&nbsp;<br />\r\n&nbsp; &nbsp; 一到傍晚，他们手持万能钥匙和遮光灯笼出门，走到邻居家里行窃。破晓时分，他们提着偷来的东西回到家里，总能发现自己家也失窃了。&nbsp;<br />\r\n　他们就这样幸福地居住在一起。没有不幸的人，因为每个人都从别人那里偷东西，别人又再从别人那里偷，依次下去，直到最后一个人去第一个窃贼家行窃。该国贸易也就不可避免地是买方和卖方的双向欺骗。政府是个向臣民行窃的犯罪机构，而臣民也仅对欺骗政府感兴趣。所以日子倒也平稳，没有富人和穷人。&nbsp;<br />\r\n　有一天－－到底是怎么回事没人知道－－总之是有个诚实人到了该地定居。到晚上，他没有携袋提灯地出门，却呆在家里抽烟读小说。&nbsp;<br />\r\n　贼来了，见灯亮着，就没进去。&nbsp;<br />\r\n　这样持续了有一段时间。后来他们感到有必要向他挑明一下，纵使他想什么都不做地过日子，可他没理由妨碍别人做事。他天天晚上呆在家里，这就意味着有一户人家第二天没了口粮。&nbsp;<br />\r\n　诚实人感到他无力反抗这样的逻辑。从此他也像他们一样，晚上出门，次日早晨回家，但他不行窃。他是诚实的。对此，你是无能为力的。他走到远处的桥上，看河水打桥下流过。每次回家，他都会发现家里失窃了。&nbsp;<br />\r\n　不到一星期，诚实人就发现自己已经一文不名了；他家徒四壁，没任何东西可吃。但这不能算不了什么，因为那是他自己的错；不，问题是他的行为使其他人很不安。因为他让别人偷走了他的一切却不从别人那儿偷任何东西；这样总有人在黎明回家时，发现家里没被动过－－那本该是由诚实人进去行窃的。不久以后，那些没有被偷过的人家发现他们比人家就富了，就不想再行窃了。更糟的是，那些跑到诚实人家里去行窃的人，总发现里面空空如也，因此他们就变穷了。&nbsp;<br />\r\n　同时，富起来的那些人和诚实人一样，养成了晚上去桥上的习惯，他们也看河水打桥下流过。这样，事态就更混乱了，因为这意味着更多的人在变富，也有更多的人在变穷。&nbsp;<br />\r\n　现在，那些富人发现，如果他们天天去桥上，他们很快也会变穷的。他们就想：&ldquo;我们雇那些穷的去替我们行窃吧。&rdquo;他们签下合同，敲定了工资和如何分成。自然，他们依然是贼，依然互相欺骗。但形势表明，富人是越来越富，穷人是越来越穷。&nbsp;<br />\r\n　有些人富裕得已经根本无须亲自行窃或雇人行窃就可保持富有。但一旦他们停止行窃的话，他们就会变穷，因为穷人会偷他们。因此他们又雇了穷人中的最穷者来帮助他们看守财富，以免遭穷人行窃，这就意味着要建立警察局和监狱。&nbsp;<br />\r\n　因此，在那诚实人出现后没几年，人们就不再谈什么偷盗或被偷盗了，而只说穷人和富人；但他们个个都还是贼。&nbsp;<br />\r\n　唯一诚实的只有开头的那个人，但他不久便死了，饿死的。&nbsp;</p>', '1', '1', '1', '2017-08-14 05:53:58', '2017-08-14 05:55:22');
INSERT INTO `posts` VALUES ('4', '桃花源记', '4', '桃花源记', '桃花源记', '桃花源记', '2017-08/vWOsNeiSVfW57bnAVK1H02RIgX7cQrQ9rb1PFbxq.jpeg', '<p>　　晋太元中，武陵人捕鱼为业。缘溪行，忘路之远近。忽逢桃花林， 夹（jiā）岸数百步，中无杂树，芳草鲜美，落英缤纷。渔人甚异之。复前行，欲穷其林。&nbsp;<br />\r\n　　林尽水源，便得一山，山有小口，仿佛若有光。便舍（shě）船，从口入。初极狭，才通人。复行数十步，豁（hu&ograve;）然开朗。土地平旷，屋舍（sh&egrave;）俨（yǎn）然，有良田美池桑竹之属。阡（qiān）陌（m&ograve;）交通，鸡犬相闻。其中往来种（zh&ograve;ng）作，男女衣着（zhu&oacute;），悉如外人。黄发垂髫（ti&aacute;o），并怡然自乐。&nbsp;<br />\r\n　　见渔人，乃大惊，问所从来。具答之。便要（yāo）还家，设酒杀鸡作食。村中闻有此人，咸（xi&aacute;n）来问讯。自云先世避秦时乱，率妻子邑（y&igrave;）人来此绝境，不复出焉，遂与外人间隔。问今是何世，乃不知有汉，无论魏晋。此人一一为具言所闻，皆叹惋。余人各复延至其家，皆出酒食。停数日，辞去。此中人语（y&ugrave;）云：&ldquo;不足为外人道也。&rdquo;&nbsp;<br />\r\n　　既出，得其船，便扶向路，处处志之。及郡下，诣（y&igrave;）太守，说如此。太守即遣人随其往，寻向所志，遂迷，不复得路。&nbsp;<br />\r\n　　南阳刘子骥（j&igrave;），高尚士也，闻之，欣然规往。未果，寻病终。后遂无问津者。</p>', '1', '1', '1', '2017-08-14 06:08:45', '2017-08-14 06:13:05');
INSERT INTO `posts` VALUES ('5', '我的心曾悲伤七次', '6', '我的心曾悲伤七次', '我的心曾悲伤七次', '我的心曾悲伤七次', '2017-08/JTRnY6mX9r0kL3oD4oKXGOcEJfkrDi9UAodCrpJB.jpeg', '<p>　　The first time when I saw her being meek that she might attain height.&nbsp;<br />\r\n　　第一次，是当我看到她本可进取，却故作谦卑时。&nbsp;<br />\r\n　　&nbsp;<br />\r\n　　The second time when I saw her limping before the crippled.&nbsp;<br />\r\n　　第二次，是当我看到她在瘸子面前跛行而过时。&nbsp;<br />\r\n　　&nbsp;<br />\r\n　　The third time when she was given to choose between the hard and the easy, and she chose the easy.&nbsp;<br />\r\n　　第三次，是当她在难易之间，却选择了容易时。&nbsp;<br />\r\n　　&nbsp;<br />\r\n　　The fourth time when she committed a wrong, and comforted herself that others also commit wrong.&nbsp;<br />\r\n　　第四次，是当她犯了错，却借由别人也会犯错来宽慰自己时。&nbsp;<br />\r\n　　&nbsp;<br />\r\n　　The fifth time when she forbore for weakness, and attributed her patience to strength.&nbsp;<br />\r\n　　第五次，是当她因为软弱而忍让，却声称为自己的坚韧时。&nbsp;<br />\r\n　　&nbsp;<br />\r\n　　The sixth time when she despised the ugliness of a face, and knew not that it was one of her own masks.&nbsp;<br />\r\n　　第六次，是当她鄙夷一张丑恶的嘴脸，却不知那正是自己面具中的一副时。&nbsp;<br />\r\n　　&nbsp;<br />\r\n　　And the seventh time when she sang a song of praise, and deemed it a virtue.&nbsp;<br />\r\n　　第七次，是当她吟唱圣歌，却自诩为一种美德时。&nbsp;<br />\r\n<br />\r\n&nbsp; &nbsp; &nbsp; Kahlil Gibran，1883&mdash;1931 纪伯伦</p>', '1', '1', '1', '2017-08-14 06:20:51', '2017-08-14 06:20:51');
INSERT INTO `posts` VALUES ('6', '项脊轩志', '4', '项脊轩志', '项脊轩志', '项脊轩志', '2017-08/UhcDDRYn5OPeHFH9c5Nf2WVyopDn8mLSc2GlI9mj.jpeg', '<p>　　 项脊轩，旧南阁子也。室仅方丈，可容一人居。百年老屋，尘泥渗漉，雨泽下注；每移案，顾视无可置者。又北向，不能得日，日过午已昏。余稍为修葺，使不上漏。前辟四窗，垣墙周庭，以当南日，日影反照，室始洞然。又杂植兰桂竹木于庭，旧时栏楯，亦遂增胜。借书满架，偃仰啸歌，冥然兀坐，万籁有声；而庭阶寂寂，小鸟时来啄食，人至不去。三五之夜，明月半墙，桂影斑驳，风移影动，珊珊可爱。<br />\r\n　　 然余居于此，多可喜，亦多可悲。先是，庭中通南北为一。迨诸父异爨，内外多置小门,墙往往而是。东犬西吠，客逾庖而宴，鸡栖于厅。庭中始为篱，已为墙，凡再变矣。家有老妪， 尝居于此。妪，先大母婢也，－乳－二世，先妣抚之甚厚。室西连于中闺，先妣尝一至。妪每谓余曰：&ldquo;某所，而母立于兹。&rdquo;妪又曰：&ldquo;汝姊在吾怀，呱呱而泣；娘以指叩门扉曰：&lsquo;儿寒乎？欲食乎？&rsquo;吾从板外相为应答。&rdquo;语未毕， 余泣，妪亦泣。<br />\r\n　　 余自束发读书轩中，一日，大母过余曰：&ldquo;吾儿，久不见若影，何竟日默默在此，大类女郎也？&rdquo;比去，以手阖门，自语曰：&ldquo;吾家读书久不效，儿之成，则可待乎！&rdquo;顷之，持一象笏至，曰：&ldquo;此吾祖太常公宣德间执此以朝，他日汝当用之！&rdquo;瞻顾遗迹，如在昨日，令人长号不自禁。<br />\r\n　　 轩东故尝为厨，人往，从轩前过。余扃牖而居，久之能以足音辨人。轩凡四遭火，得不焚，殆有神护者。&nbsp;<br />\r\n　　 项脊生曰：&ldquo;蜀清守丹穴，利甲天下，其后秦皇帝筑女怀清台；刘玄德与曹操争天下，诸葛孔明起陇中。方二人之昧昧于一隅也，世何足以知之，余区区处败屋中，方扬眉、瞬目，谓有奇景。人知之者，其谓与坎井之蛙何异？&rdquo;<br />\r\n　　 余既为此志，后五年，吾妻来归，时至轩中从余问古事，或凭几学书。 吾妻归宁，述诸小妹语曰：&ldquo;闻姊家有阁子，且何谓阁子也？&rdquo;其后六年，吾妻死，室坏不修。其后二年，余久卧病无聊，乃使人复葺南阁子，其制稍异于前。然自后余多在外，不常居。&nbsp;<br />\r\n　　 庭有枇杷树，吾妻死之年所手植也，今已亭亭如盖矣。</p>', '1', '1', '1', '2017-08-14 06:23:54', '2017-08-14 06:23:54');
INSERT INTO `posts` VALUES ('7', '严重的时刻', '4', '严重的时刻', '严重的时刻', '严重的时刻', '2017-08/9odYOwGqSX87bj2qhX9AYIWdsbcxV08DWJBhWpsa.jpeg', '<p>此刻有谁在世上的某处哭，&nbsp;<wbr /><br />\r\n无缘无故地在世上哭，&nbsp;<wbr /><br />\r\n哭我。&nbsp;<wbr /><br />\r\n<br />\r\n此刻有谁在夜里的某处笑，&nbsp;<wbr /><br />\r\n无缘无故地在夜里笑，&nbsp;<wbr /><br />\r\n笑我。&nbsp;<wbr /><br />\r\n<br />\r\n此刻有谁在世上的某处走，&nbsp;<wbr /><br />\r\n无缘无故地在世上走，&nbsp;<wbr /><br />\r\n走向我。&nbsp;<wbr /><br />\r\n<br />\r\n此刻有谁在世上的某处死&nbsp;<wbr /><br />\r\n无缘无故地在世上死，&nbsp;<wbr /><br />\r\n望着我。&nbsp;</p>', '1', '1', '1', '2017-08-14 06:25:33', '2017-08-14 06:25:33');
INSERT INTO `posts` VALUES ('8', '68张民国初期老照片（图集） - 中国老照片', '1', '68张民国初期老照片（图集） - 中国老照片', '68张民国初期老照片（图集） - 中国老照片', '68张民国初期老照片（图集） - 中国老照片', '2017-09/B7t2uUYg6rLbshp4bUFj3OGgK5RpC5Iqt7uea2eh.jpeg', '<p>1984年，美国的一户人家在整理祖上留下的旧鞋盒时，发现了一叠已经发黄的黑白老照片。阅读照片旁的备注，他们惊讶地发现，这些是1917年后在中国拍摄的珍贵场景。这些民国初期的珍贵照片公布于众后，让全世界惊艳。</p>\r\n\r\n<p>西德尼&middot;戴维&middot;甘博（1890&mdash;1968）出生于美国俄亥俄州辛辛那提，是一位研究中国的学者和社会学家，也是一位颇有成就的业余摄影师。从1917年至1932年期间，西德尼&middot;甘博曾多次来到中国，拍摄了大量照片，为中国这一重要历史时期留下了珍贵的影像档案。他的镜头记录了中国各地社会风俗、老百姓日常生活的方方面面，这样珍贵的画面如今已存世不多。</p>\r\n\r\n<div><img alt=\"甘博与他拍摄的照片\" class=\"img-rounded img-responsive img-raised\" src=\"/uploads/series/minguolaozhaopian/gamble1.jpg\" />\r\n<h4>甘博与他拍摄的照片</h4>\r\n</div>\r\n\r\n<div><img alt=\"北京一户人家正在结婚\" class=\"img-rounded img-responsive img-raised\" src=\"/uploads/series/minguolaozhaopian/gamble2.jpg\" />\r\n<h4>北京一户人家正在结婚</h4>\r\n</div>\r\n\r\n<div><img alt=\"北京的生意人和账房先生\" class=\"img-rounded img-responsive img-raised\" src=\"/uploads/series/minguolaozhaopian/gamble3.jpg\" />\r\n<h4>北京的生意人和账房先生</h4>\r\n</div>\r\n\r\n<div><img alt=\"北京街头，一群背着乐器的人\" class=\"img-rounded img-responsive img-raised\" src=\"/uploads/series/minguolaozhaopian/gamble4.jpg\" />\r\n<h4>北京街头，一群背着乐器的人</h4>\r\n</div>\r\n\r\n<div><img alt=\"北京幼稚园里的孩子\" class=\"img-rounded img-responsive img-raised\" src=\"/uploads/series/minguolaozhaopian/gamble5.jpg\" />\r\n<h4>北京幼稚园里的孩子</h4>\r\n</div>\r\n\r\n<div><img alt=\"北京一个外出做活的木匠\" class=\"img-rounded img-responsive img-raised\" src=\"/uploads/series/minguolaozhaopian/gamble6.jpg\" />\r\n<h4>北京一个外出做活的木匠</h4>\r\n</div>\r\n\r\n<div><img alt=\"北京，一家工厂内工人在织地毯\" class=\"img-rounded img-responsive img-raised\" src=\"/uploads/series/minguolaozhaopian/gamble7.jpg\" />\r\n<h4>北京，一家工厂内工人在织地毯</h4>\r\n</div>\r\n\r\n<div><img alt=\"北京的一个拾粪人\" class=\"img-rounded img-responsive img-raised\" src=\"/uploads/series/minguolaozhaopian/gamble8.jpg\" />\r\n<h4>北京的一个拾粪人</h4>\r\n</div>\r\n\r\n<div><img alt=\"中国民间的强国诉求\" class=\"img-rounded img-responsive img-raised\" src=\"/uploads/series/minguolaozhaopian/gamble9.jpg\" />\r\n<h4>中国民间的强国诉求</h4>\r\n</div>\r\n\r\n<div><img alt=\"木匠在工房内忙碌著\" class=\"img-rounded img-responsive img-raised\" src=\"/uploads/series/minguolaozhaopian/gamble10.jpg\" />\r\n<h4>木匠在工房内忙碌著</h4>\r\n</div>\r\n\r\n<div><img alt=\"北京街头的旗人母子\" class=\"img-rounded img-responsive img-raised\" src=\"/uploads/series/minguolaozhaopian/gamble11.jpg\" />\r\n<h4>北京街头的旗人母子</h4>\r\n</div>\r\n\r\n<div><img alt=\"北京街头的一位老年乞丐，她怀中还抱着一个孩子\" class=\"img-rounded img-responsive img-raised\" src=\"/uploads/series/minguolaozhaopian/gamble12.jpg\" />\r\n<h4>北京街头的一位老年乞丐，她怀中还抱着一个孩子</h4>\r\n</div>\r\n\r\n<div><img alt=\"街头的盲人\" class=\"img-rounded img-responsive img-raised\" src=\"/uploads/series/minguolaozhaopian/gamble13.jpg\" />\r\n<h4>街头的盲人</h4>\r\n</div>\r\n\r\n<div><img alt=\"北京的一个喇嘛\" class=\"img-rounded img-responsive img-raised\" src=\"/uploads/series/minguolaozhaopian/gamble14.jpg\" />\r\n<h4>北京的一个喇嘛</h4>\r\n</div>\r\n\r\n<div><img alt=\"北京雍和宫的喇嘛在仪式上跳舞\" class=\"img-rounded img-responsive img-raised\" src=\"/uploads/series/minguolaozhaopian/gamble15.jpg\" />\r\n<h4>北京雍和宫的喇嘛在仪式上跳舞</h4>\r\n</div>\r\n\r\n<div><img alt=\"北京的一个机械加工厂车间\" class=\"img-rounded img-responsive img-raised\" src=\"/uploads/series/minguolaozhaopian/gamble16.jpg\" />\r\n<h4>北京的一个机械加工厂车间</h4>\r\n</div>\r\n\r\n<div><img alt=\"北京语言学校在考试\" class=\"img-rounded img-responsive img-raised\" src=\"/uploads/series/minguolaozhaopian/gamble17.jpg\" />\r\n<h4>北京语言学校在考试</h4>\r\n</div>\r\n\r\n<div><img alt=\"北京的囚犯\" class=\"img-rounded img-responsive img-raised\" src=\"/uploads/series/minguolaozhaopian/gamble18.jpg\" />\r\n<h4>北京的囚犯</h4>\r\n</div>\r\n\r\n<div><img alt=\"北京一所监狱内，犯人在做火柴\" class=\"img-rounded img-responsive img-raised\" src=\"/uploads/series/minguolaozhaopian/gamble19.jpg\" />\r\n<h4>北京一所监狱内，犯人在做火柴</h4>\r\n</div>\r\n\r\n<div><img alt=\"北京颐和园昆明湖上的玉带桥\" class=\"img-rounded img-responsive img-raised\" src=\"/uploads/series/minguolaozhaopian/gamble20.jpg\" />\r\n<h4>北京颐和园昆明湖上的玉带桥</h4>\r\n</div>\r\n\r\n<div><img alt=\"雨后的北京，胡同里很泥泞\" class=\"img-rounded img-responsive img-raised\" src=\"/uploads/series/minguolaozhaopian/gamble21.jpg\" />\r\n<h4>雨后的北京，胡同里很泥泞</h4>\r\n</div>\r\n\r\n<div><img alt=\"北京一个葬礼上的扎纸\" class=\"img-rounded img-responsive img-raised\" src=\"/uploads/series/minguolaozhaopian/gamble22.jpg\" />\r\n<h4>北京一个葬礼上的扎纸</h4>\r\n</div>\r\n\r\n<div><img alt=\"北京一个葬礼上的扎纸\" class=\"img-rounded img-responsive img-raised\" src=\"/uploads/series/minguolaozhaopian/gamble23.jpg\" />\r\n<h4>北京一个葬礼上的扎纸</h4>\r\n</div>\r\n\r\n<div><img alt=\"北京一个葬礼上的纸扎马车\" class=\"img-rounded img-responsive img-raised\" src=\"/uploads/series/minguolaozhaopian/gamble24.jpg\" />\r\n<h4>北京一个葬礼上的纸扎马车</h4>\r\n</div>\r\n\r\n<div><img alt=\"北京葬礼上的纸扎仆人\" class=\"img-rounded img-responsive img-raised\" src=\"/uploads/series/minguolaozhaopian/gamble25.jpg\" />\r\n<h4>北京葬礼上的纸扎仆人</h4>\r\n</div>\r\n\r\n<div><img alt=\"北京观火台\" class=\"img-rounded img-responsive img-raised\" src=\"/uploads/series/minguolaozhaopian/gamble26.jpg\" />\r\n<h4>北京观火台</h4>\r\n</div>\r\n\r\n<div><img alt=\"天津，一名外国医生在给中国的孩子看病\" class=\"img-rounded img-responsive img-raised\" src=\"/uploads/series/minguolaozhaopian/gamble27.jpg\" />\r\n<h4>天津，一名外国医生在给中国的孩子看病</h4>\r\n</div>\r\n\r\n<div><img alt=\"天津一户人家的婚礼\" class=\"img-rounded img-responsive img-raised\" src=\"/uploads/series/minguolaozhaopian/gamble28.jpg\" />\r\n<h4>天津一户人家的婚礼</h4>\r\n</div>\r\n\r\n<div><img alt=\"天津一名姓周的男子\" class=\"img-rounded img-responsive img-raised\" src=\"/uploads/series/minguolaozhaopian/gamble29.jpg\" />\r\n<h4>天津一名姓周的男子</h4>\r\n</div>\r\n\r\n<div><img alt=\"天津街头的马车\" class=\"img-rounded img-responsive img-raised\" src=\"/uploads/series/minguolaozhaopian/gamble30.jpg\" />\r\n<h4>天津街头的马车</h4>\r\n</div>\r\n\r\n<div><img alt=\"天津住在窝棚的难民们\" class=\"img-rounded img-responsive img-raised\" src=\"/uploads/series/minguolaozhaopian/gamble31.jpg\" />\r\n<h4>天津住在窝棚的难民们</h4>\r\n</div>\r\n\r\n<div><img alt=\"天津东马路青年会门口，等候接新郎新娘的马车\" class=\"img-rounded img-responsive img-raised\" src=\"/uploads/series/minguolaozhaopian/gamble32.jpg\" />\r\n<h4>天津东马路青年会门口，等候接新郎新娘的马车</h4>\r\n</div>\r\n\r\n<div><img alt=\"天津的警察\" class=\"img-rounded img-responsive img-raised\" src=\"/uploads/series/minguolaozhaopian/gamble33.jpg\" />\r\n<h4>天津的警察</h4>\r\n</div>\r\n\r\n<div><img alt=\"河北山海关街头卖大蒜的小贩\" class=\"img-rounded img-responsive img-raised\" src=\"/uploads/series/minguolaozhaopian/gamble34.jpg\" />\r\n<h4>河北山海关街头卖大蒜的小贩</h4>\r\n</div>\r\n\r\n<div><img alt=\"广东东莞桥头镇的一个基督教福音堂\" class=\"img-rounded img-responsive img-raised\" src=\"/uploads/series/minguolaozhaopian/gamble35.jpg\" />\r\n<h4>广东东莞桥头镇的一个基督教福音堂</h4>\r\n</div>\r\n\r\n<div><img alt=\"杭州装大碗茶的茶壶\" class=\"img-rounded img-responsive img-raised\" src=\"/uploads/series/minguolaozhaopian/gamble36.jpg\" />\r\n<h4>杭州装大碗茶的茶壶</h4>\r\n</div>\r\n\r\n<div><img alt=\"杭州街头，手艺人表演做鼓\" class=\"img-rounded img-responsive img-raised\" src=\"/uploads/series/minguolaozhaopian/gamble37.jpg\" />\r\n<h4>杭州街头，手艺人表演做鼓</h4>\r\n</div>\r\n\r\n<div><img alt=\"杭州一个制伞铺\" class=\"img-rounded img-responsive img-raised\" src=\"/uploads/series/minguolaozhaopian/gamble38.jpg\" />\r\n<h4>杭州一个制伞铺</h4>\r\n</div>\r\n\r\n<div><img alt=\"杭州大运河上运送木材的船只\" class=\"img-rounded img-responsive img-raised\" src=\"/uploads/series/minguolaozhaopian/gamble39.jpg\" />\r\n<h4>杭州大运河上运送木材的船只</h4>\r\n</div>\r\n\r\n<div><img alt=\"杭州的私塾\" class=\"img-rounded img-responsive img-raised\" src=\"/uploads/series/minguolaozhaopian/gamble40.jpg\" />\r\n<h4>杭州的私塾</h4>\r\n</div>\r\n\r\n<div><img alt=\"杭州的牛拉车\" class=\"img-rounded img-responsive img-raised\" src=\"/uploads/series/minguolaozhaopian/gamble41.jpg\" />\r\n<h4>杭州的牛拉车</h4>\r\n</div>\r\n\r\n<div><img alt=\"杭州街边的小吃店\" class=\"img-rounded img-responsive img-raised\" src=\"/uploads/series/minguolaozhaopian/gamble42.jpg\" />\r\n<h4>杭州街边的小吃店</h4>\r\n</div>\r\n\r\n<div><img alt=\"杭州基督教青年会情景\" class=\"img-rounded img-responsive img-raised\" src=\"/uploads/series/minguolaozhaopian/gamble43.jpg\" />\r\n<h4>杭州基督教青年会情景</h4>\r\n</div>\r\n\r\n<div><img alt=\"杭州雷峰塔，塔之后于1924年坍塌\" class=\"img-rounded img-responsive img-raised\" src=\"/uploads/series/minguolaozhaopian/gamble44.jpg\" />\r\n<h4>杭州雷峰塔,塔之后于1924年坍塌</h4>\r\n</div>\r\n\r\n<div><img alt=\"安徽省安庆迎江寺内的镇风塔\" class=\"img-rounded img-responsive img-raised\" src=\"/uploads/series/minguolaozhaopian/gamble45.jpg\" />\r\n<h4>安徽省安庆迎江寺内的镇风塔</h4>\r\n</div>\r\n\r\n<div><img alt=\"山东济南太庙的香客\" class=\"img-rounded img-responsive img-raised\" src=\"/uploads/series/minguolaozhaopian/gamble46.jpg\" />\r\n<h4>山东济南太庙的香客</h4>\r\n</div>\r\n\r\n<div><img alt=\"河北保定育婴堂收养的弃儿\" class=\"img-rounded img-responsive img-raised\" src=\"/uploads/series/minguolaozhaopian/gamble47.jpg\" />\r\n<h4>河北保定育婴堂收养的弃儿</h4>\r\n</div>\r\n\r\n<div><img alt=\"蜗居在破旧房屋中的流浪人\" class=\"img-rounded img-responsive img-raised\" src=\"/uploads/series/minguolaozhaopian/gamble48.jpg\" />\r\n<h4>蜗居在破旧房屋中的流浪人</h4>\r\n</div>\r\n\r\n<div><img alt=\"农民使用的一种农具——篓\" class=\"img-rounded img-responsive img-raised\" src=\"/uploads/series/minguolaozhaopian/gamble49.jpg\" />\r\n<h4>农民使用的一种农具&mdash;&mdash;篓</h4>\r\n</div>\r\n\r\n<div><img alt=\"中国农村的一个生猪买卖集市\" class=\"img-rounded img-responsive img-raised\" src=\"/uploads/series/minguolaozhaopian/gamble50.jpg\" />\r\n<h4>中国农村的一个生猪买卖集市</h4>\r\n</div>\r\n\r\n<div><img alt=\"河南开封一个外国人家庭\" class=\"img-rounded img-responsive img-raised\" src=\"/uploads/series/minguolaozhaopian/gamble51.jpg\" />\r\n<h4>河南开封一个外国人家庭</h4>\r\n</div>\r\n\r\n<div><img alt=\"广州的士兵\" class=\"img-rounded img-responsive img-raised\" src=\"/uploads/series/minguolaozhaopian/gamble52.jpg\" />\r\n<h4>广州的士兵</h4>\r\n</div>\r\n\r\n<div><img alt=\"中国学生的合影\" class=\"img-rounded img-responsive img-raised\" src=\"/uploads/series/minguolaozhaopian/gamble53.jpg\" />\r\n<h4>中国学生的合影</h4>\r\n</div>\r\n\r\n<div><img alt=\"湖北宜昌街头理发摊\" class=\"img-rounded img-responsive img-raised\" src=\"/uploads/series/minguolaozhaopian/gamble54.jpg\" />\r\n<h4>湖北宜昌街头理发摊</h4>\r\n</div>\r\n\r\n<div><img alt=\"湖北宜昌，一艘船打算靠岸\" class=\"img-rounded img-responsive img-raised\" src=\"/uploads/series/minguolaozhaopian/gamble55.jpg\" />\r\n<h4>湖北宜昌，一艘船打算靠岸</h4>\r\n</div>\r\n\r\n<div><img alt=\"湖北宜昌街边小贩\" class=\"img-rounded img-responsive img-raised\" src=\"/uploads/series/minguolaozhaopian/gamble56.jpg\" />\r\n<h4>湖北宜昌街边小贩</h4>\r\n</div>\r\n\r\n<div><img alt=\"四川成都的挑夫\" class=\"img-rounded img-responsive img-raised\" src=\"/uploads/series/minguolaozhaopian/gamble57.jpg\" />\r\n<h4>四川成都的挑夫</h4>\r\n</div>\r\n\r\n<div><img alt=\"四川，一群孩子走过一个喇嘛庙的围墙，他们身后是喇嘛庙的窗户\" class=\"img-rounded img-responsive img-raised\" src=\"/uploads/series/minguolaozhaopian/gamble58.jpg\" />\r\n<h4>四川，一群孩子走过一个喇嘛庙的围墙，他们身后是喇嘛庙的窗户</h4>\r\n</div>\r\n\r\n<div><img alt=\"四川一户藏族人家庭\" class=\"img-rounded img-responsive img-raised\" src=\"/uploads/series/minguolaozhaopian/gamble59.jpg\" />\r\n<h4>四川一户藏族人家庭</h4>\r\n</div>\r\n\r\n<div><img alt=\"四川理县杂谷吞高益斋（藏族）与妻儿\" class=\"img-rounded img-responsive img-raised\" src=\"/uploads/series/minguolaozhaopian/gamble60.jpg\" />\r\n<h4>四川理县杂谷吞高益斋（藏族）与妻儿，摄于1917年</h4>\r\n</div>\r\n\r\n<div><img alt=\"四川带遮阳棚的独轮车\" class=\"img-rounded img-responsive img-raised\" src=\"/uploads/series/minguolaozhaopian/gamble61.jpg\" />\r\n<h4>四川带遮阳棚的独轮车</h4>\r\n</div>\r\n\r\n<div><img alt=\"四川遂宁的农民在做草鞋\" class=\"img-rounded img-responsive img-raised\" src=\"/uploads/series/minguolaozhaopian/gamble62.jpg\" />\r\n<h4>四川遂宁的农民在做草鞋</h4>\r\n</div>\r\n\r\n<div><img alt=\"四川遂宁的水果摊\" class=\"img-rounded img-responsive img-raised\" src=\"/uploads/series/minguolaozhaopian/gamble63.jpg\" />\r\n<h4>四川遂宁的水果摊</h4>\r\n</div>\r\n\r\n<div><img alt=\"四川新都县一所寺庙的住持\" class=\"img-rounded img-responsive img-raised\" src=\"/uploads/series/minguolaozhaopian/gamble64.jpg\" />\r\n<h4>四川新都县一所寺庙的住持</h4>\r\n</div>\r\n\r\n<div><img alt=\"重庆街头的孩子们\" class=\"img-rounded img-responsive img-raised\" src=\"/uploads/series/minguolaozhaopian/gamble65.jpg\" />\r\n<h4>重庆街头的孩子们</h4>\r\n</div>\r\n\r\n<div><img alt=\"四川遂宁的街头生活\" class=\"img-rounded img-responsive img-raised\" src=\"/uploads/series/minguolaozhaopian/gamble66.jpg\" />\r\n<h4>四川遂宁的街头生活</h4>\r\n</div>\r\n\r\n<div><img alt=\"在澳门的尼泊尔人\" class=\"img-rounded img-responsive img-raised\" src=\"/uploads/series/minguolaozhaopian/gamble67.jpg\" />\r\n<h4>在澳门的尼泊尔人</h4>\r\n</div>\r\n\r\n<div><img alt=\"四川潼川一户农家在磨面\" class=\"img-rounded img-responsive img-raised\" src=\"/uploads/series/minguolaozhaopian/gamble68.jpg\" />\r\n<h4>四川潼川一户农家在磨面</h4>\r\n</div>\r\n\r\n<div><img alt=\"一群农民\" class=\"img-rounded img-responsive img-raised\" src=\"/uploads/series/minguolaozhaopian/gamble69.jpg\" />\r\n<h4>一群农民</h4>\r\n</div>', '1', '1', '1', '2017-09-19 11:10:18', '2017-09-27 17:36:40');
INSERT INTO `posts` VALUES ('9', '道德經一 論德', '12', '道德經一  論德', '道德經  論德', '論德', '2017-09/crai75DHxGFmWDzzJrbotiTK537NGFascIUXauTg.jpeg', '<blockquote>\r\n<p>上德不德，是以有德。下德不失德，是以無德。</p>\r\n\r\n<p>上德無為而無以為也。</p>\r\n\r\n<p>下德爲之而有以爲也。</p>\r\n\r\n<p>上仁為之而無以為也。</p>\r\n\r\n<p>上義為之而有以為也。</p>\r\n\r\n<p>上禮為之而莫之應也，則攘臂而乃（扔）之。故失道。</p>\r\n\r\n<p>失道而後德，失德而後仁，失仁而後義，失義而後禮。</p>\r\n\r\n<p>夫禮者，忠信之泊（薄）也，而亂之首也。</p>\r\n\r\n<p>前識者，道之華也，而愚之首也。</p>\r\n\r\n<p>是以大丈夫居其厚而不居其泊（薄），居其實而不居其華。</p>\r\n\r\n<p>故去皮（彼）取此。</p>\r\n</blockquote>\r\n\r\n<p>攘臂：捋起袖子</p>\r\n\r\n<p>首：既含有始義，同時在性命之學中，心為神臟，腦為神腑。首含腦義，腦司意識，用腦不用心則愚。心主禮德火明，禮德喪失則陰意擅主腦中意識。</p>\r\n\r\n<p>愚：《说文》從心從禺，禺，猴屬，獸之愚者。</p>\r\n\r\n<p>居：是「踞」的本字。象人曲脛蹲踞形。居，蹲也，從尸，古者居從古，俗居從足。</p>\r\n\r\n<p>尸：《说文》陳也，象卧之形。尸不僅有屍體之義，亦有神像神主之義；古時祭禮中亦代表死者受祭的活人。</p>\r\n\r\n<p>皮：膚淺，表面，淺薄&nbsp;</p>', '1', '1', '1', '2017-09-12 10:08:52', '2017-09-24 04:26:53');
INSERT INTO `posts` VALUES ('10', '道德經二 得一', '12', '道德經二 得一', '道德經二 得一', '得一', '2017-09/crai75DHxGFmWDzzJrbotiTK537NGFascIUXauTg.jpeg', '<blockquote>\r\n<p>昔之得一者，天得一以清，地得一以寧，神得一以靈，浴（谷）得一以盈，侯王得一以為以為正。</p>\r\n\r\n<p>其至(致)之也。 【至&nbsp; 鳥從高處飛下至地】</p>\r\n\r\n<p>胃（謂）天毋已清將恐裂，胃（謂）地毋已寧將恐發，胃神毋已靈將恐歇，胃浴毋已盈將恐歇渴（竭），胃侯王毋已貴以高將恐蹶。</p>\r\n\r\n<p>故必貴而以賤為本，必高矣而以下為基。</p>\r\n\r\n<p>夫是以侯王自胃孤、寡、不穀，此其以賤之為本與，非也？</p>\r\n\r\n<p>故致數輿無輿，是故不欲祿祿若玉，硌硌若石。</p>\r\n</blockquote>\r\n\r\n<p>浴：含水，人，盆三物，人在盆中以水沖洗之義。此處指人以道德能沐浴，得其内在精華者</p>\r\n\r\n<p>盈：儲滿器皿</p>\r\n\r\n<p>至：鳥從高處鳥飛下至地</p>\r\n\r\n<p>毋：毋《说文》止之也，又同「無」</p>\r\n\r\n<p>歇：《说文》息也，一曰氣越泄也。歇，泄也。</p>\r\n\r\n<p>蹶：倒下，跌倒。</p>\r\n\r\n<p>穀：简體即「谷」</p>\r\n\r\n<p>硌：大石；堅硬</p>\r\n\r\n<p>&nbsp;</p>', '1', '1', '1', '2017-09-12 12:32:04', '2017-09-24 04:50:20');
INSERT INTO `posts` VALUES ('11', '道德經三 聞道', '12', '道德經 聞道', '道德經 聞道', '聞道', '2017-09/crai75DHxGFmWDzzJrbotiTK537NGFascIUXauTg.jpeg', '<blockquote>\r\n<p>上士聞道，堇能（勤而）行之；</p>\r\n\r\n<p>中士聞道；若存若亡；</p>\r\n\r\n<p>下士聞道；大笑之。弗（不）笑不足以為道。</p>\r\n\r\n<p>【&lsquo;弗&lsquo;&rsquo;和&lsquo;不&rsquo;意思相似，並不完全相同，經書中同時存在這兩個字，所以還是有所不同之處的】</p>\r\n\r\n<p>是以建言有之曰：</p>\r\n\r\n<p>明道如費（孛、昧），進道如退，夷道如類；</p>\r\n\r\n<p>上德如浴，大白如辱，廣德如不足，建德如輸（偷），質真如渝；</p>\r\n\r\n<p>大方無隅（禺），大器晚（免、曼（慢））成，大音希聲，天（大）象無刑（形）；</p>\r\n\r\n<p>道隱無名。</p>\r\n\r\n<p>夫唯道，善始且善成（善貸且成）。</p>\r\n</blockquote>\r\n\r\n<p>堇：僅，简体字「仅」 ，象两臂交缚的人形，為祭獻之人形。有奉献，獻身之義。</p>\r\n\r\n<p>費：散去銭財之意</p>\r\n\r\n<p>孛：通悖，即悖理</p>\r\n\r\n<p>昧：日未明</p>\r\n\r\n<p>輸：用車轉運</p>\r\n\r\n<p>渝：變污也</p>\r\n\r\n<p>隅：山水弯曲边角处，拐角</p>\r\n\r\n<p>&nbsp;</p>', '1', '1', '1', '2017-09-16 15:08:52', '2017-09-24 14:00:42');
INSERT INTO `posts` VALUES ('12', '道德經四 反復', '12', '道德經 反復', '道德經 反復', '反復', '2017-09/crai75DHxGFmWDzzJrbotiTK537NGFascIUXauTg.jpeg', '<blockquote>\r\n<p>反也者，道之動也；</p>\r\n\r\n<p>弱也者，道之用也。</p>\r\n\r\n<p>天下之（萬）物生於有，有生於無。</p>\r\n</blockquote>', '1', '1', '1', '2017-09-16 15:08:52', '2017-09-22 15:55:14');
INSERT INTO `posts` VALUES ('13', '道德經五 中和', '12', '道德經 中和', '道德經 中和', '中和', '2017-09/crai75DHxGFmWDzzJrbotiTK537NGFascIUXauTg.jpeg', '<blockquote>\r\n<p>道生一，一生二，二生三，三生萬物。</p>\r\n\r\n<p>萬物負陰而抱陽，沖（中）氣以為和。</p>\r\n\r\n<p>天下之所惡，唯孤、寡、不穀，而王公以為自名也。</p>\r\n\r\n<p>勿（物）或損之而益，或益之而損。</p>\r\n\r\n<p>覲殷死，議而教人。</p>\r\n\r\n<p>故強良（梁）者不得死，我（吾）將以為學（教）父。</p>\r\n</blockquote>\r\n\r\n<p>觐殷死：禮崩樂壞也&nbsp;</p>\r\n\r\n<p>觐：古代诸侯秋天朝见帝王之禮儀</p>\r\n\r\n<p>殷：作樂之盛稱殷</p>\r\n\r\n<p>學：覺悟也</p>\r\n\r\n<p>&nbsp;</p>', '1', '1', '1', '2017-09-16 15:08:52', '2017-09-24 14:07:50');
INSERT INTO `posts` VALUES ('14', '道德經六 至柔', '12', '道德經 至柔', '道德經 至柔', '至柔', '2017-09/crai75DHxGFmWDzzJrbotiTK537NGFascIUXauTg.jpeg', '<blockquote>\r\n<p>天下之至柔，馳騁於天下之致（至）堅。</p>\r\n\r\n<p>無有入於無間，吾（五）是以知無為之有益。</p>\r\n\r\n<p>不言之教，無為之益，天下希能及之矣。</p>\r\n</blockquote>', '1', '1', '1', '2017-09-16 15:08:52', '2017-09-22 15:56:26');
INSERT INTO `posts` VALUES ('15', '道德經七 立戒', '12', '道德經 立戒', '道德經 立戒', '立戒', '2017-09/crai75DHxGFmWDzzJrbotiTK537NGFascIUXauTg.jpeg', '<blockquote>\r\n<p>名與身孰親？</p>\r\n\r\n<p>身與貨孰多？</p>\r\n\r\n<p>得與亡孰病？</p>\r\n\r\n<p>其愛必大費，多藏必厚亡。</p>\r\n\r\n<p>故知足不辱，知止不殆，可以長久。</p>\r\n</blockquote>\r\n\r\n<p>孰：誰，哪個或哪個人</p>\r\n\r\n<p>殆： 說文-&gt; 危險&nbsp;</p>', '1', '1', '1', '2017-09-16 15:08:52', '2017-10-03 14:14:02');
INSERT INTO `posts` VALUES ('16', '道德經八 請靚', '12', '道德經  請靚', '道德經  請靚', '請靚', '2017-09/crai75DHxGFmWDzzJrbotiTK537NGFascIUXauTg.jpeg', '<blockquote>\r\n<p>大成若缺，其用不敝；</p>\r\n\r\n<p>大盈若沖，其用不窮；</p>\r\n\r\n<p>大直若詘（qu），大喬若拙（zhuo），大贏如絀（chu）。</p>\r\n\r\n<p>躁（趮）勝寒，靚（靜）勝炅（熱），請靚可以為天下正。</p>\r\n</blockquote>\r\n\r\n<p>&nbsp;若：順也，若時：順應天時，亦有如同，像等義</p>\r\n\r\n<p>詘：同屈，屈曲</p>\r\n\r\n<p>絀：不足之義，與贏絀意義相對</p>\r\n\r\n<p>靚：通靜，靚，說文：召也，從見。進入道德境界之義</p>\r\n\r\n<p>炅：光、熱，光芒外現之義</p>\r\n\r\n<p>請：謁（ye拜見，進見）見</p>', '1', '1', '1', '2017-09-16 15:08:52', '2017-10-03 14:35:53');
INSERT INTO `posts` VALUES ('17', '道德經九 知足', '12', '道德經 知足', '道德經 知足', '知足', '2017-09/crai75DHxGFmWDzzJrbotiTK537NGFascIUXauTg.jpeg', '<blockquote>\r\n<p>天下有道，卻走馬以糞；天下無道，戎馬生於郊。</p>\r\n\r\n<p>罪莫大於可慾，禍莫大於不知足，咎莫大於欲得。</p>\r\n\r\n<p>故知足之足，恒足矣。</p>\r\n</blockquote>\r\n\r\n<p>恆:「常也，從心，從舟」&nbsp;。心以舟施，恆也。古文恆從月。《詩》曰:女月之恆</p>', '1', '1', '1', '2017-09-16 15:08:52', '2017-10-03 14:47:43');
INSERT INTO `posts` VALUES ('18', '道德經十 知天下', '12', '道德經 知天下', '道德經 知天下', '知天下', '2017-09/crai75DHxGFmWDzzJrbotiTK537NGFascIUXauTg.jpeg', '<blockquote>\r\n<p>不出於戶，以知天下；</p>\r\n\r\n<p>不窺於牖（you），以知天道；</p>\r\n\r\n<p>其出也彌遠，其知彌少。</p>\r\n\r\n<p>是以聖人不行而知，不見而名，弗為而成。</p>\r\n</blockquote>\r\n\r\n<p>規：有法度也。古與「窺」 亦通</p>\r\n\r\n<p>知：從口從矢，用口陳述，由心意辨識會意</p>\r\n\r\n<p>彌：（mi）長久</p>', '1', '1', '1', '2017-09-16 15:08:52', '2017-10-03 14:53:03');
INSERT INTO `posts` VALUES ('19', '道德經十一 日損', '12', '道德經  日損', '道德經  日損', '日損', '2017-09/crai75DHxGFmWDzzJrbotiTK537NGFascIUXauTg.jpeg', '<blockquote>\r\n<p>為學者日益，聞（爲）道者日損。</p>\r\n\r\n<p>損之又損，以至於無為，無為而無不為。</p>\r\n\r\n<p>將欲取天下者恆無事；</p>\r\n\r\n<p>及其有事也，不足以取天下。&nbsp;</p>\r\n</blockquote>', '1', '1', '1', '2017-09-16 15:08:52', '2017-10-03 14:55:05');
INSERT INTO `posts` VALUES ('20', '道德經十二 德善', '12', '道德經 德善', '道德經 德善', '德善', '2017-09/crai75DHxGFmWDzzJrbotiTK537NGFascIUXauTg.jpeg', '<blockquote>\r\n<p>聖人恆無心，以百姓心為心。</p>\r\n\r\n<p>善者善之，不善者亦善之，德善也。</p>\r\n\r\n<p>信者信之，不信者亦信之，德信也。</p>\r\n\r\n<p>聖人之在天下，翕翕焉，為天下渾心；</p>\r\n\r\n<p>百姓皆屬其耳目，聖人皆孩之。</p>\r\n</blockquote>\r\n\r\n<p>翕：(xi)聚集之義&nbsp;</p>\r\n\r\n<p>孩：咳，可作嘆息用，亦可作咳嗽等</p>', '1', '1', '1', '2017-09-16 15:08:52', '2017-10-03 14:59:08');
INSERT INTO `posts` VALUES ('21', '道德經十三 生死', '12', '道德經 生死', '道德經 生死', '生死', '2017-09/crai75DHxGFmWDzzJrbotiTK537NGFascIUXauTg.jpeg', '<blockquote>\r\n<p>出生，入死。</p>\r\n\r\n<p>生之徒十有三，死之徒十有三，</p>\r\n\r\n<p>而民生生，動皆之死地之十有三。</p>\r\n\r\n<p>夫何故也？</p>\r\n\r\n<p>以其生生也，</p>\r\n\r\n<p>蓋聞善執生者，陵行不辟兕虎，入軍不被甲兵；</p>\r\n\r\n<p>兕無所椯其角，虎無所措其爪，兵無所容其刃。</p>\r\n\r\n<p>夫何故也？</p>\r\n\r\n<p>以其無死地焉。</p>\r\n</blockquote>\r\n\r\n<p>&nbsp;陵：丘陵</p>\r\n\r\n<p>兕：（si）如野牛而青</p>\r\n\r\n<p>椯：揣度，割取，剟削，剌等義</p>', '1', '1', '1', '2017-09-16 15:08:52', '2017-10-03 15:06:34');
INSERT INTO `posts` VALUES ('22', '道德經十四 尊貴', '12', '道德經  尊貴', '道德經  尊貴', '尊貴', '2017-09/crai75DHxGFmWDzzJrbotiTK537NGFascIUXauTg.jpeg', '<blockquote>\r\n<p>道生之，而德畜之，物形之，而器成之。</p>\r\n\r\n<p>是以萬物尊道而貴德。</p>\r\n\r\n<p>道之尊，德之貴也，夫莫之爵而恆自祭也。</p>\r\n\r\n<p>道。</p>\r\n\r\n<p>生之，畜之，長之，遂之，亭之，毒之，養之，覆之。</p>\r\n\r\n<p>生而弗有也，為而弗恃也，長而弗宰也，此之謂玄德。</p>\r\n</blockquote>\r\n\r\n<p>&nbsp;祭：古祭祀極為普通，「爵」為祭器</p>\r\n\r\n<p>遂：育也</p>\r\n\r\n<p>亭：養育;又亭毒，養育，化育</p>', '1', '1', '1', '2017-09-16 15:08:52', '2017-10-03 15:15:38');
INSERT INTO `posts` VALUES ('23', '道德經十五', '12', '道德經', '道德經', '道德經十五', '2017-09/crai75DHxGFmWDzzJrbotiTK537NGFascIUXauTg.jpeg', '<blockquote>\r\n<p>&nbsp;</p>\r\n</blockquote>', '1', '1', '1', '2017-09-16 15:08:52', '2017-09-22 16:07:40');
INSERT INTO `posts` VALUES ('24', '道德經十六', '12', '道德經', '道德經', '道德經十六', '2017-09/crai75DHxGFmWDzzJrbotiTK537NGFascIUXauTg.jpeg', '<blockquote>\r\n<p>&nbsp;</p>\r\n</blockquote>', '1', '1', '1', '2017-09-16 15:08:52', '2017-09-22 16:09:45');
INSERT INTO `posts` VALUES ('25', '道德經十七', '12', '道德經', '道德經', '道德經十七', '2017-09/crai75DHxGFmWDzzJrbotiTK537NGFascIUXauTg.jpeg', '十七', '1', '1', '1', '2017-09-16 15:08:52', '2017-09-16 15:00:49');
INSERT INTO `posts` VALUES ('26', '道德經十八', '12', '道德經', '道德經', '道德經十八', '2017-09/crai75DHxGFmWDzzJrbotiTK537NGFascIUXauTg.jpeg', '十八', '1', '1', '1', '2017-09-16 15:08:52', '2017-09-16 15:00:49');
INSERT INTO `posts` VALUES ('27', '道德經十九', '12', '道德經', '道德經', '道德經十九', '2017-09/crai75DHxGFmWDzzJrbotiTK537NGFascIUXauTg.jpeg', '十九', '1', '1', '1', '2017-09-16 15:08:52', '2017-09-16 15:00:49');
INSERT INTO `posts` VALUES ('28', '道德經二十', '12', '道德經', '道德經', '道德經二十', '2017-09/crai75DHxGFmWDzzJrbotiTK537NGFascIUXauTg.jpeg', '二十', '1', '1', '1', '2017-09-16 15:08:52', '2017-09-16 15:00:49');
INSERT INTO `posts` VALUES ('29', '道德經二十一', '12', '道德經', '道德經', '道德經二十一', '2017-09/crai75DHxGFmWDzzJrbotiTK537NGFascIUXauTg.jpeg', '二十一', '1', '1', '1', '2017-09-16 15:08:52', '2017-09-16 15:00:49');
INSERT INTO `posts` VALUES ('30', '道德經二十二', '12', '道德經', '道德經', '道德經二十二', '2017-09/crai75DHxGFmWDzzJrbotiTK537NGFascIUXauTg.jpeg', '二十二', '1', '1', '1', '2017-09-16 15:08:52', '2017-09-16 15:00:49');
INSERT INTO `posts` VALUES ('31', '道德經二十三', '12', '道德經', '道德經', '道德經二十三', '2017-09/crai75DHxGFmWDzzJrbotiTK537NGFascIUXauTg.jpeg', '二十三', '1', '1', '1', '2017-09-16 15:08:52', '2017-09-16 15:00:49');
INSERT INTO `posts` VALUES ('32', '道德經二十四', '12', '道德經', '道德經', '道德經二十四', '2017-09/crai75DHxGFmWDzzJrbotiTK537NGFascIUXauTg.jpeg', '二十四', '1', '1', '1', '2017-09-16 15:08:52', '2017-09-16 15:00:49');
INSERT INTO `posts` VALUES ('33', '道德經二十五', '12', '道德經', '道德經', '道德經二十五', '2017-09/crai75DHxGFmWDzzJrbotiTK537NGFascIUXauTg.jpeg', '二十五', '1', '1', '1', '2017-09-16 15:08:52', '2017-09-16 15:00:49');
INSERT INTO `posts` VALUES ('34', '道德經二十六', '12', '道德經', '道德經', '道德經二十六', '2017-09/crai75DHxGFmWDzzJrbotiTK537NGFascIUXauTg.jpeg', '二十六', '1', '1', '1', '2017-09-16 15:08:52', '2017-09-16 15:00:49');
INSERT INTO `posts` VALUES ('35', '道德經二十七', '12', '道德經', '道德經', '道德經二十七', '2017-09/crai75DHxGFmWDzzJrbotiTK537NGFascIUXauTg.jpeg', '二十七', '1', '1', '1', '2017-09-16 15:08:52', '2017-09-16 15:00:49');
INSERT INTO `posts` VALUES ('36', '道德經二十八', '12', '道德經', '道德經', '道德經二十八', '2017-09/crai75DHxGFmWDzzJrbotiTK537NGFascIUXauTg.jpeg', '二十八', '1', '1', '1', '2017-09-16 15:08:52', '2017-09-16 15:00:49');
INSERT INTO `posts` VALUES ('37', '道德經二十九', '12', '道德經', '道德經', '道德經二十九', '2017-09/crai75DHxGFmWDzzJrbotiTK537NGFascIUXauTg.jpeg', '二十九', '1', '1', '1', '2017-09-16 15:08:52', '2017-09-16 15:00:49');
INSERT INTO `posts` VALUES ('38', '道德經三十', '12', '道德經', '道德經', '道德經三十', '2017-09/crai75DHxGFmWDzzJrbotiTK537NGFascIUXauTg.jpeg', '三十', '1', '1', '1', '2017-09-16 15:08:52', '2017-09-16 15:00:49');
INSERT INTO `posts` VALUES ('39', '道德經三十一', '12', '道德經', '道德經', '道德經三十一', '2017-09/crai75DHxGFmWDzzJrbotiTK537NGFascIUXauTg.jpeg', '三十一', '1', '1', '1', '2017-09-16 15:08:52', '2017-09-16 15:00:49');
INSERT INTO `posts` VALUES ('40', '道德經三十二', '12', '道德經', '道德經', '道德經三十二', '2017-09/crai75DHxGFmWDzzJrbotiTK537NGFascIUXauTg.jpeg', '三十二', '1', '1', '1', '2017-09-16 15:08:52', '2017-09-16 15:00:49');
INSERT INTO `posts` VALUES ('41', '道德經三十三', '12', '道德經', '道德經', '道德經三十三', '2017-09/crai75DHxGFmWDzzJrbotiTK537NGFascIUXauTg.jpeg', '三十三', '1', '1', '1', '2017-09-16 15:08:52', '2017-09-16 15:00:49');
INSERT INTO `posts` VALUES ('42', '道德經三十四', '12', '道德經', '道德經', '道德經三十四', '2017-09/crai75DHxGFmWDzzJrbotiTK537NGFascIUXauTg.jpeg', '三十四', '1', '1', '1', '2017-09-16 15:08:52', '2017-09-16 15:00:49');
INSERT INTO `posts` VALUES ('43', '道德經三十五', '12', '道德經', '道德經', '道德經三十五', '2017-09/crai75DHxGFmWDzzJrbotiTK537NGFascIUXauTg.jpeg', '三十五', '1', '1', '1', '2017-09-16 15:08:52', '2017-09-16 15:00:49');
INSERT INTO `posts` VALUES ('44', '道德經三十六', '12', '道德經', '道德經', '道德經三十六', '2017-09/crai75DHxGFmWDzzJrbotiTK537NGFascIUXauTg.jpeg', '三十六', '1', '1', '1', '2017-09-16 15:08:52', '2017-09-16 15:00:49');
INSERT INTO `posts` VALUES ('45', '道德經三十七', '12', '道德經', '道德經', '道德經三十七', '2017-09/crai75DHxGFmWDzzJrbotiTK537NGFascIUXauTg.jpeg', '三十七', '1', '1', '1', '2017-09-16 15:08:52', '2017-09-16 15:00:49');
INSERT INTO `posts` VALUES ('46', '道德經三十八', '12', '道德經', '道德經', '道德經三十八', '2017-09/crai75DHxGFmWDzzJrbotiTK537NGFascIUXauTg.jpeg', '三十八', '1', '1', '1', '2017-09-16 15:08:52', '2017-09-16 15:00:49');
INSERT INTO `posts` VALUES ('47', '道德經三十九', '12', '道德經', '道德經', '道德經三十九', '2017-09/crai75DHxGFmWDzzJrbotiTK537NGFascIUXauTg.jpeg', '三十九', '1', '1', '1', '2017-09-16 15:08:52', '2017-09-16 15:00:49');
INSERT INTO `posts` VALUES ('48', '道德經四十', '12', '道德經', '道德經', '道德經四十', '2017-09/crai75DHxGFmWDzzJrbotiTK537NGFascIUXauTg.jpeg', '四十', '1', '1', '1', '2017-09-16 15:08:52', '2017-09-16 15:00:49');
INSERT INTO `posts` VALUES ('49', '道德經四十一', '12', '道德經', '道德經', '道德經四十一', '2017-09/crai75DHxGFmWDzzJrbotiTK537NGFascIUXauTg.jpeg', '四十一', '1', '1', '1', '2017-09-16 15:08:52', '2017-09-16 15:00:49');
INSERT INTO `posts` VALUES ('50', '道德經四十二', '12', '道德經', '道德經', '道德經四十二', '2017-09/crai75DHxGFmWDzzJrbotiTK537NGFascIUXauTg.jpeg', '四十二', '1', '1', '1', '2017-09-16 15:08:52', '2017-09-16 15:00:49');
INSERT INTO `posts` VALUES ('51', '道德經四十三', '12', '道德經', '道德經', '道德經四十三', '2017-09/crai75DHxGFmWDzzJrbotiTK537NGFascIUXauTg.jpeg', '四十三', '1', '1', '1', '2017-09-16 15:08:52', '2017-09-16 15:00:49');
INSERT INTO `posts` VALUES ('52', '道德經四十四', '12', '道德經', '道德經', '道德經四十四', '2017-09/crai75DHxGFmWDzzJrbotiTK537NGFascIUXauTg.jpeg', '四十四', '1', '1', '1', '2017-09-16 15:08:52', '2017-09-16 15:00:49');
INSERT INTO `posts` VALUES ('53', '道德經四十五', '12', '道德經', '道德經', '道德經四十五', '2017-09/crai75DHxGFmWDzzJrbotiTK537NGFascIUXauTg.jpeg', '四十五', '1', '1', '1', '2017-09-16 15:08:52', '2017-09-16 15:00:49');
INSERT INTO `posts` VALUES ('54', '道德經四十六', '12', '道德經', '道德經', '道德經四十六', '2017-09/crai75DHxGFmWDzzJrbotiTK537NGFascIUXauTg.jpeg', '四十六', '1', '1', '1', '2017-09-16 15:08:52', '2017-09-16 15:00:49');
INSERT INTO `posts` VALUES ('55', '道德經四十七', '12', '道德經', '道德經', '道德經四十七', '2017-09/crai75DHxGFmWDzzJrbotiTK537NGFascIUXauTg.jpeg', '四十七', '1', '1', '1', '2017-09-16 15:08:52', '2017-09-16 15:00:49');
INSERT INTO `posts` VALUES ('56', '道德經四十八', '12', '道德經', '道德經', '道德經四十八', '2017-09/crai75DHxGFmWDzzJrbotiTK537NGFascIUXauTg.jpeg', '四十八', '1', '1', '1', '2017-09-16 15:08:52', '2017-09-16 15:00:49');
INSERT INTO `posts` VALUES ('57', '道德經四十九', '12', '道德經', '道德經', '道德經四十九', '2017-09/crai75DHxGFmWDzzJrbotiTK537NGFascIUXauTg.jpeg', '四十九', '1', '1', '1', '2017-09-16 15:08:52', '2017-09-16 15:00:49');
INSERT INTO `posts` VALUES ('58', '道德經五十', '12', '道德經', '道德經', '道德經五十', '2017-09/crai75DHxGFmWDzzJrbotiTK537NGFascIUXauTg.jpeg', '五十', '1', '1', '1', '2017-09-16 15:08:52', '2017-09-16 15:00:49');
INSERT INTO `posts` VALUES ('59', '道德經五十一', '12', '道德經', '道德經', '道德經五十一', '2017-09/crai75DHxGFmWDzzJrbotiTK537NGFascIUXauTg.jpeg', '五十一', '1', '1', '1', '2017-09-16 15:08:52', '2017-09-16 15:00:49');
INSERT INTO `posts` VALUES ('60', '道德經五十二', '12', '道德經', '道德經', '道德經五十二', '2017-09/crai75DHxGFmWDzzJrbotiTK537NGFascIUXauTg.jpeg', '五十二', '1', '1', '1', '2017-09-16 15:08:52', '2017-09-16 15:00:49');
INSERT INTO `posts` VALUES ('61', '道德經五十三', '12', '道德經', '道德經', '道德經五十三', '2017-09/crai75DHxGFmWDzzJrbotiTK537NGFascIUXauTg.jpeg', '五十三', '1', '1', '1', '2017-09-16 15:08:52', '2017-09-16 15:00:49');
INSERT INTO `posts` VALUES ('62', '道德經五十四', '12', '道德經', '道德經', '道德經五十四', '2017-09/crai75DHxGFmWDzzJrbotiTK537NGFascIUXauTg.jpeg', '五十四', '1', '1', '1', '2017-09-16 15:08:52', '2017-09-16 15:00:49');
INSERT INTO `posts` VALUES ('63', '道德經五十五', '12', '道德經', '道德經', '道德經五十五', '2017-09/crai75DHxGFmWDzzJrbotiTK537NGFascIUXauTg.jpeg', '五十五', '1', '1', '1', '2017-09-16 15:08:52', '2017-09-16 15:00:49');
INSERT INTO `posts` VALUES ('64', '道德經五十六', '12', '道德經', '道德經', '道德經五十六', '2017-09/crai75DHxGFmWDzzJrbotiTK537NGFascIUXauTg.jpeg', '五十六', '1', '1', '1', '2017-09-16 15:08:52', '2017-09-16 15:00:49');
INSERT INTO `posts` VALUES ('65', '道德經五十七', '12', '道德經', '道德經', '道德經五十七', '2017-09/crai75DHxGFmWDzzJrbotiTK537NGFascIUXauTg.jpeg', '五十七', '1', '1', '1', '2017-09-16 15:08:52', '2017-09-16 15:00:49');
INSERT INTO `posts` VALUES ('66', '道德經五十八', '12', '道德經', '道德經', '道德經五十八', '2017-09/crai75DHxGFmWDzzJrbotiTK537NGFascIUXauTg.jpeg', '五十八', '1', '1', '1', '2017-09-16 15:08:52', '2017-09-16 15:00:49');
INSERT INTO `posts` VALUES ('67', '道德經五十九', '12', '道德經', '道德經', '道德經五十九', '2017-09/crai75DHxGFmWDzzJrbotiTK537NGFascIUXauTg.jpeg', '五十九', '1', '1', '1', '2017-09-16 15:08:52', '2017-09-16 15:00:49');
INSERT INTO `posts` VALUES ('68', '道德經六十', '12', '道德經', '道德經', '道德經六十', '2017-09/crai75DHxGFmWDzzJrbotiTK537NGFascIUXauTg.jpeg', '六十', '1', '1', '1', '2017-09-16 15:08:52', '2017-09-16 15:00:49');
INSERT INTO `posts` VALUES ('69', '道德經六十一', '12', '道德經', '道德經', '道德經六十一', '2017-09/crai75DHxGFmWDzzJrbotiTK537NGFascIUXauTg.jpeg', '六十一', '1', '1', '1', '2017-09-16 15:08:52', '2017-09-16 15:00:49');
INSERT INTO `posts` VALUES ('70', '道德經六十二', '12', '道德經', '道德經', '道德經六十二', '2017-09/crai75DHxGFmWDzzJrbotiTK537NGFascIUXauTg.jpeg', '六十二', '1', '1', '1', '2017-09-16 15:08:52', '2017-09-16 15:00:49');
INSERT INTO `posts` VALUES ('71', '道德經六十三', '12', '道德經', '道德經', '道德經六十三', '2017-09/crai75DHxGFmWDzzJrbotiTK537NGFascIUXauTg.jpeg', '六十三', '1', '1', '1', '2017-09-16 15:08:52', '2017-09-16 15:00:49');
INSERT INTO `posts` VALUES ('72', '道德經六十四', '12', '道德經', '道德經', '道德經六十四', '2017-09/crai75DHxGFmWDzzJrbotiTK537NGFascIUXauTg.jpeg', '六十四', '1', '1', '1', '2017-09-16 15:08:52', '2017-09-16 15:00:49');
INSERT INTO `posts` VALUES ('73', '道德經六十五', '12', '道德經', '道德經', '道德經六十五', '2017-09/crai75DHxGFmWDzzJrbotiTK537NGFascIUXauTg.jpeg', '六十五', '1', '1', '1', '2017-09-16 15:08:52', '2017-09-16 15:00:49');
INSERT INTO `posts` VALUES ('74', '道德經六十六', '12', '道德經', '道德經', '道德經六十六', '2017-09/crai75DHxGFmWDzzJrbotiTK537NGFascIUXauTg.jpeg', '六十六', '1', '1', '1', '2017-09-16 15:08:52', '2017-09-16 15:00:49');
INSERT INTO `posts` VALUES ('75', '道德經六十七', '12', '道德經', '道德經', '道德經六十七', '2017-09/crai75DHxGFmWDzzJrbotiTK537NGFascIUXauTg.jpeg', '六十七', '1', '1', '1', '2017-09-16 15:08:52', '2017-09-16 15:00:49');
INSERT INTO `posts` VALUES ('76', '道德經六十八', '12', '道德經', '道德經', '道德經六十八', '2017-09/crai75DHxGFmWDzzJrbotiTK537NGFascIUXauTg.jpeg', '六十八', '1', '1', '1', '2017-09-16 15:08:52', '2017-09-16 15:00:49');
INSERT INTO `posts` VALUES ('77', '道德經六十九', '12', '道德經', '道德經', '道德經六十九', '2017-09/crai75DHxGFmWDzzJrbotiTK537NGFascIUXauTg.jpeg', '六十九', '1', '1', '1', '2017-09-16 15:08:52', '2017-09-16 15:00:49');
INSERT INTO `posts` VALUES ('78', '道德經七十', '12', '道德經', '道德經', '道德經七十', '2017-09/crai75DHxGFmWDzzJrbotiTK537NGFascIUXauTg.jpeg', '七十', '1', '1', '1', '2017-09-16 15:08:52', '2017-09-16 15:00:49');
INSERT INTO `posts` VALUES ('79', '道德經七十一', '12', '道德經', '道德經', '道德經七十一', '2017-09/crai75DHxGFmWDzzJrbotiTK537NGFascIUXauTg.jpeg', '七十一', '1', '1', '1', '2017-09-16 15:08:52', '2017-09-16 15:00:49');
INSERT INTO `posts` VALUES ('80', '道德經七十二', '12', '道德經', '道德經', '道德經七十二', '2017-09/crai75DHxGFmWDzzJrbotiTK537NGFascIUXauTg.jpeg', '七十二', '1', '1', '1', '2017-09-16 15:08:52', '2017-09-16 15:00:49');
INSERT INTO `posts` VALUES ('81', '道德經七十三', '12', '道德經', '道德經', '道德經七十三', '2017-09/crai75DHxGFmWDzzJrbotiTK537NGFascIUXauTg.jpeg', '七十三', '1', '1', '1', '2017-09-16 15:08:52', '2017-09-16 15:00:49');
INSERT INTO `posts` VALUES ('82', '道德經七十四', '12', '道德經', '道德經', '道德經七十四', '2017-09/crai75DHxGFmWDzzJrbotiTK537NGFascIUXauTg.jpeg', '七十四', '1', '1', '1', '2017-09-16 15:08:52', '2017-09-16 15:00:49');
INSERT INTO `posts` VALUES ('83', '道德經七十五', '12', '道德經', '道德經', '道德經七十五', '2017-09/crai75DHxGFmWDzzJrbotiTK537NGFascIUXauTg.jpeg', '七十五', '1', '1', '1', '2017-09-16 15:08:52', '2017-09-16 15:00:49');
INSERT INTO `posts` VALUES ('84', '道德經七十六', '12', '道德經', '道德經', '道德經七十六', '2017-09/crai75DHxGFmWDzzJrbotiTK537NGFascIUXauTg.jpeg', '七十六', '1', '1', '1', '2017-09-16 15:08:52', '2017-09-16 15:00:49');
INSERT INTO `posts` VALUES ('85', '道德經七十七', '12', '道德經', '道德經', '道德經七十七', '2017-09/crai75DHxGFmWDzzJrbotiTK537NGFascIUXauTg.jpeg', '七十七', '1', '1', '1', '2017-09-16 15:08:52', '2017-09-16 15:00:49');
INSERT INTO `posts` VALUES ('86', '道德經七十八', '12', '道德經', '道德經', '道德經七十八', '2017-09/crai75DHxGFmWDzzJrbotiTK537NGFascIUXauTg.jpeg', '七十八', '1', '1', '1', '2017-09-16 15:08:52', '2017-09-16 15:00:49');
INSERT INTO `posts` VALUES ('87', '道德經七十九', '12', '道德經', '道德經', '道德經七十九', '2017-09/crai75DHxGFmWDzzJrbotiTK537NGFascIUXauTg.jpeg', '七十九', '1', '1', '1', '2017-09-16 15:08:52', '2017-09-16 15:00:49');
INSERT INTO `posts` VALUES ('88', '道德經八十', '12', '道德經', '道德經', '道德經八十', '2017-09/crai75DHxGFmWDzzJrbotiTK537NGFascIUXauTg.jpeg', '八十', '1', '1', '1', '2017-09-16 15:08:52', '2017-09-16 15:00:49');
INSERT INTO `posts` VALUES ('89', '道德經八十一', '12', '道德經', '道德經', '道德經八十一', '2017-09/crai75DHxGFmWDzzJrbotiTK537NGFascIUXauTg.jpeg', '八十一', '1', '1', '1', '2017-09-16 15:08:52', '2017-09-16 15:00:49');

-- ----------------------------
-- Table structure for role_user
-- ----------------------------
DROP TABLE IF EXISTS `role_user`;
CREATE TABLE `role_user` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_user_role_id_foreign` (`role_id`),
  CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of role_user
-- ----------------------------

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of roles
-- ----------------------------

-- ----------------------------
-- Table structure for settings
-- ----------------------------
DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '网站名称',
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '网站logo',
  `bgimage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '网站头部背景图',
  `qq` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weixin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `weibo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `google` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '传真',
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '网站联系人',
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '网站位置详细地址',
  `position_x` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '网站位置X坐标',
  `position_y` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '网站位置Y坐标',
  `bstable_line_count` int(11) NOT NULL COMMENT 'bootstrap 显示行数',
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '网站描述',
  `copyright` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `info` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '其他补充信息',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of settings
-- ----------------------------
INSERT INTO `settings` VALUES ('1', '自得其乐', '1', '1', '954072637', '954072637@qq.com', '微信搜索\'zi得其乐\'', 'http://weibo.com/u/demo', 'http://plus.google.com/', 'https://www.facebook.com/', 'https://twitter.com/', '暂无', '水云阁主', '中原腹地周口太昊陵公园', '114.893517', '33.75399', '20', '欲刚，必以柔守之；欲强，必以弱保之。积于柔必刚，积于弱必强。观其所积，以知祸福之乡。', '© 2002－2018 all rights reserved 自得其乐文化有限公司 京ICP备17050770号', '做真实的自己', null, '2017-09-27 18:52:46');

-- ----------------------------
-- Table structure for single_pages
-- ----------------------------
DROP TABLE IF EXISTS `single_pages`;
CREATE TABLE `single_pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL COMMENT ' 1=> 免责声明,  2=>网站帮助, 3=>关于我们,  4=>商务合作, 5=>专题',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '专题名称',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of single_pages
-- ----------------------------
INSERT INTO `single_pages` VALUES ('1', '1', '免责声明', '<div style=\"padding:0 0 30px\">\n<div>\n<h3 class=\"title\">法律申明</h3>\n\n<p>1、本网站所载的文字图片等稿件均出于为公众传播有益资讯信息之目的，并不意味着赞同其观点或证实其内容的真实性，我们不对其科学性、严肃性等作任何形式的保证。如其他媒体、网络或个人从本网下载使用须自负版权等法律责任。</p>\n\n<p>2、本网站内凡注明&ldquo;来源：本网站&rdquo;的所有文字、图片、音频、视频稿件均属本网站原创内容，版权均属本网站所有，任何媒体、网站或个人未经本网站协议授权（需要提供《授权协议》）不得转载、链接、转贴或以其他方式复制发表。已经本网协议授权的媒体、网站，在下载使用时必须注明&ldquo;稿件来源：本网站&rdquo;，违者本网将依法追究责任。</p>\n\n<p>3、凡本网站转载的所有的文章、图片、音频、视频文件等资料的版权归版权所有人所有，本站采用的非本站原创文章及图片等内容无法一一和版权者联系，如果本网所选内容的文章作者及编辑认为其作品不宜上网供大家浏览，或不应无偿使用（涉及费用问题，需要删除&ldquo;不宜上网供大家浏览，或不应无偿使用&rdquo;）请及时用电子邮件或电话通知我们，以迅速采取适当措施，避免给双方造成不必要的经济损失。</p>\n\n<p>4、对于已经授权本站独家使用并提供给本站资料的版权所有人的文章、图片等资料，如需转载使用，需取得本站和版权所有人的同意。</p>\n</div>\n\n<div>\n<h3 class=\"title\">法律责任</h3>\n\n<p>（1）本网站包含子目录网站 使用者因为违反本声明的规定而触犯中华人民共和国法律的，一切后果自己负责，本网站 包含子目录网站 不承担任何责任。</p>\n\n<p>（2） 凡以任何方式登陆本网站包含子目录网站 或直接、间接使用本网站包含子目录网站 资料者，视为自愿接受本网站包含子目录网站 声明的约束。</p>\n\n<p>（3） 本声明未涉及的问题参见国家有关法律法规，当本声明与国家法律法规冲突时，以国家法律法规为准。 关于解释权本网站包含子目录网站 之声明以及其修改权、更新权及最终解释权均属本网站包含子目录网站 所有。</p>\n</div>\n</div>', '1', '2017-08-11 22:43:12', '2017-09-30 11:32:08');
INSERT INTO `single_pages` VALUES ('2', '2', '网站帮助', '<div style=\"padding:0 0 30px\">\n<div>\n<h3 class=\"title\">网站流程</h3>\n\n<p>暂无</p>\n\n<p>古人秉烛夜游；良有以也。</p>\n<img alt=\"Raised Image\" class=\"img-rounded img-responsive img-raised\" src=\"/uploads/ck/images/5372d0b64e163.jpg\" /></div>\n\n<div>\n<h3 class=\"title\">使用引导</h3>\n\n<p>暂无</p>\n<img alt=\"Raised Image\" class=\"img-rounded img-responsive img-raised\" src=\"/uploads/ck/images/beautiful.jpg\" /></div>\n</div>', '1', '2017-08-11 22:43:16', '2017-09-27 16:25:39');
INSERT INTO `single_pages` VALUES ('3', '3', '关于我们', '<div class=\"about-team\">\n<div class=\"row\">\n<div class=\"col-md-8 col-md-offset-2 text-center\">\n<h2 class=\"title\">我们的团队或证书</h2>\n\n<h5 class=\"description\">我就是随便拿点图片装装门面，(#^.^#)</h5>\n</div>\n</div>\n\n<div class=\"row\">\n<div class=\"col-sm-4\">\n<div class=\"card card-profile card-plain\">\n<div class=\"card-avatar\"><img alt=\"\" class=\"img\" height=\"675\" src=\"/uploads/ck/images/20170911090216-59b651182032f.png\" width=\"808\" /></div>\n\n<div class=\"content\">\n<h4 class=\"card-title\">元日</h4>\n\n<h6 class=\"category text-muted\">CEO&nbsp;</h6>\n\n<h6 class=\"category text-muted\">爆竹声中一岁除，春风送暖入屠苏。</h6>\n</div>\n</div>\n</div>\n\n<div class=\"col-sm-4\">\n<div class=\"card card-profile card-plain\">\n<div class=\"card-avatar\"><img alt=\"\" class=\"img\" height=\"660\" src=\"/uploads/ck/images/20170911090357-59b6517d86194.png\" width=\"665\" /></div>\n\n<div class=\"content\">\n<h4 class=\"card-title\">古典</h4>\n\n<h6 class=\"category text-muted\">CFO</h6>\n\n<h6 class=\"category text-muted\">只愿他日江水，只载春光不载愁。</h6>\n</div>\n</div>\n</div>\n\n<div class=\"col-sm-4\">\n<div class=\"card card-profile card-plain\">\n<div class=\"card-avatar\"><img alt=\"\" class=\"img\" height=\"455\" src=\"/uploads/ck/images/20170911090726-59b6524ee1f11.png\" width=\"671\" /></div>\n\n<div class=\"content\">\n<h4 class=\"card-title\">相思</h4>\n\n<h6 class=\"category text-muted\">CTO</h6>\n\n<h6 class=\"category text-muted\">最肯忘却古人诗，最不屑一顾是相思。</h6>\n</div>\n</div>\n</div>\n</div>\n</div>\n\n<div class=\"about-services\">\n<div class=\"row\">\n<div class=\"col-md-8 col-md-offset-2 text-center\">\n<h2 class=\"title\">我们的产品领域</h2>\n</div>\n</div>\n\n<div class=\"row\">\n<div class=\"col-sm-4\">\n<div class=\"info-horizontal\">\n<div class=\"icon icon-rose\"><i class=\"material-icons\">gesture</i></div>\n\n<div class=\"description\">\n<h4 class=\"info-title\">1. 产品设计</h4>\n\n<p>致力于用户体验的持续提升，以用户为中心，力求视觉设计与交互设计的完美契合。</p>\n</div>\n</div>\n</div>\n\n<div class=\"col-sm-4\">\n<div class=\"info-horizontal\">\n<div class=\"icon icon-rose\"><i class=\"material-icons\">build</i></div>\n\n<div class=\"description\">\n<h4 class=\"info-title\">2. 应用开发</h4>\n\n<p>科学规范的流程，实现出更优雅的网站。</p>\n</div>\n</div>\n</div>\n\n<div class=\"col-sm-4\">\n<div class=\"info-horizontal\">\n<div class=\"icon icon-rose\"><i class=\"material-icons\">mode_edit</i></div>\n\n<div class=\"description\">\n<h4 class=\"info-title\">3. 手机APP实现</h4>\n\n<p>平台是为了成就他人，客户永远是第一位，勤奋专注的态度，为客户提供全方位的设计服务。</p>\n</div>\n</div>\n</div>\n</div>\n</div>\n\n<div class=\"about-office\">\n<div class=\"row  text-center\">\n<div class=\"col-md-8 col-md-offset-2\">\n<h2 class=\"title\">我们的推荐或我们的环境</h2>\n</div>\n</div>\n\n<div class=\"row\">\n<div class=\"col-sm-4\"><img alt=\"\" class=\"img-rounded img-responsive img-raised\" src=\"/uploads/ck/images/20170810115605.png\" /></div>\n\n<div class=\"col-sm-4\"><img alt=\"\" class=\"img-rounded img-responsive img-raised\" src=\"/uploads/ck/images/201603111211189339.jpg\" /></div>\n\n<div class=\"col-sm-4\"><img alt=\"\" class=\"img-rounded img-responsive img-raised\" src=\"/uploads/ck/images/201603111211104365.jpg\" /></div>\n</div>\n</div>\n\n<p>&nbsp;你猜猜猜，你再猜是不是真的。</p>', '1', '2017-08-11 22:43:20', '2017-09-30 11:31:59');
INSERT INTO `single_pages` VALUES ('4', '4', '商务合作', '<h3>商务伙伴</h3>\n\n<div class=\"row\">\n<div class=\"col-sm-3\">\n<div class=\"card card-plain card-blog\">\n<div class=\"card-image\"><img alt=\"\" class=\"img img-raised\" src=\"/uploads/ck/images/5372d0b64e163.jpg\" /></div>\n\n<div class=\"card-content\">\n<h6><a class=\"text-info\" href=\"#pablo\">阿里云</a></h6>\n</div>\n</div>\n</div>\n\n<div class=\"col-sm-3\">\n<div class=\"card card-plain card-blog\">\n<div class=\"card-image\"><img alt=\"\" class=\"img img-raised\" src=\"/uploads/ck/images/5372d0b64e163.jpg\" /></div>\n\n<div class=\"card-content\">\n<h6><a class=\"text-success\" href=\"#pablo\">自得其乐</a></h6>\n</div>\n</div>\n</div>\n\n<div class=\"col-sm-3\">\n<div class=\"card card-plain card-blog\">\n<div class=\"card-image\"><img alt=\"\" class=\"img img-raised\" src=\"/uploads/ck/images/5372d0b64e163.jpg\" /></div>\n\n<div class=\"card-content\">\n<h6><a class=\"text-danger\" href=\"#\">Google+</a></h6>\n</div>\n</div>\n</div>\n\n<div class=\"col-sm-3\">\n<div class=\"card card-plain card-blog\">\n<div class=\"card-image\"><img alt=\"\" class=\"img img-raised\" src=\"/uploads/ck/images/5372d0b64e163.jpg\" /></div>\n\n<div class=\"card-content\">\n<h6><a class=\"text-gray\" href=\"#\" target=\"_blank\">Google</a></h6>\n</div>\n</div>\n</div>\n</div>', '1', '2017-08-11 22:43:25', '2017-09-30 11:31:50');
INSERT INTO `single_pages` VALUES ('5', '5', '月令24节气-专题1', '<p>月令七十二候集解　　元　崇仁吴澄伯清著<br />\n<br />\n　<br />\n<br />\n　夫七十二候，吕不韦载于《吕氏春秋》，汉儒入于《礼记?月令》，与六经同传不朽。后魏载之于历，欲民皆知，以验气序。然其禽兽草木，多出北方，盖以汉前之儒皆江北者也。故江南老师宿儒，亦难尽识。况陈澔之注，多为谬说，而康成、颖达，亦有讹处。予因是广取诸家之解，并《说文》《埤雅》等书，而又询之农牧，似得所归。然后并将二十四气什之于槁，以俟博识者鉴焉。<br />\n<br />\n　　○立春<br />\n<br />\n　　立春，正月节。立，建始也。五行之气往者过来者续于此。而春木之气始至，故谓之立也。立夏、秋、冬同。东风解冻。冻结于冬，遇春风而解散；不曰春而曰东者，《吕氏春秋》曰：东方属木，木，火母也。然气温，故解冻。蛰虫始振。蛰，藏也；振，动也。密藏之虫，因气至，而皆苏动之矣。鲍氏曰：动而未出，至二月，乃大惊而走也。鱼陟负冰。陟，升也。鱼当盛寒伏水底而遂暖，至正月阳气至，则上游而近冰，故曰负。<br />\n<br />\n　　○雨水<br />\n<br />\n　　雨【去声】水，正月中。天一生水，春始属木，然生木者，必水也，故立春后继之雨水，且东风既解冻，则散而为雨水矣。獭祭鱼。獭，一名水狗，贼鱼者也。祭鱼，取鱼以祭天也。所谓豺獭知报本，岁始而鱼上游，则獭初取以祭。徐氏曰：獭祭圆铺，圆者，水象也；豺祭方铺，方者，金象也。候雁北【《月令》、《汉书》作鸿雁北】。雁，知时之鸟。热归塞北，寒来江南，沙漠乃其居也。孟春阳气既达，候雁自彭蠡而北矣。草木萌动。天地之气交而为泰，故草木萌生发动矣。<br />\n<br />\n　　○惊蛰<br />\n<br />\n　　惊蛰，二月节。《夏小正》曰：正月启蛰，言发蛰也。万物出乎震，震为雷，故曰惊蛰。是蛰虫惊而出走矣。桃始华【《吕氏春秋》作桃李华】。桃，果名，花色红，是月始开。仓庚鸣，庚亦作鹒，黄鹂也。诗所谓&lsquo;有鸣仓庚&rsquo;是也。《章龟经》曰：仓，清也；庚，新也；感春阳清新之气而初出，故名。其名最多，《诗》曰黄鸟，齐人谓之搏黍，又谓之黄袍，僧家谓之金衣公子，其色鵹黑而黄，又名鵹黄。谚曰黄栗留、黄莺莺儿，皆一种也。鹰化为鸠。鹰，鸷鸟也，鹞鹯之属。鸠，即今之布谷，《章龟经》曰：仲春之时，林木茂盛，口啄尚柔，不能捕鸟，瞪目忍饥如痴而化，故名曰鸤鸠。《王制》曰鸠化为鹰，秋时也。此言鹰化为鸠，春时也。以生育肃杀气盛，故鸷鸟感之而变耳。孔氏曰：化者，反归旧形之谓。故鹰化为鸠，鸠复化为鹰，如田鼠化为鴽，则鴽又化为田鼠。若腐草为萤，鴙为蜃，爵为蛤，皆不言化，是不再复本形者也。<br />\n<br />\n　　○春分<br />\n<br />\n　　春分，二月中。分者，半也。此当九十日之半，故谓之分。秋同义。夏、冬不言分者，盖天地闲二气而已。方氏曰：阳生于子，终于午，至卯而中分，故春为阳中，而仲月之节为春分，正阴阳适中，故昼夜无长短云。元鸟至。元鸟，燕也。高诱曰：春分而来，秋分而去也。雷乃发声。阴阳相薄为雷，至此，四阳渐盛，犹有阴焉，则相薄乃发声矣。乃者，《韵会》曰：象气出之难也。注疏曰：发，犹出也。始电。电，阳光也，四阳盛长，值气泄时而光生焉，故《历解》曰：凡声阳也，光亦阳也。《易》曰：雷电合而章。《公羊传》曰：电者，雷光是也。《徐氏》曰：雷阳阴电，非也。盖盛夏无雷之时，电亦有之，可见矣。<br />\n<br />\n　　○清明<br />\n<br />\n　　清明，三月节。按《国语》曰：时有八风。历独指清明风为三月节，此风属巽故也。万物齐乎巽，物至此时皆以洁齐而清明矣。桐始华。桐，木名。有三种：华而不实者曰白桐，《尔雅》所谓荣桐木是也；皮青而结实者曰梧桐，一曰青桐，《淮南子》曰梧桐断角是也；生于山冈、子大而有油者曰油桐，毛诗所谓梧桐不生山冈者是也。今始华者，乃白桐耳。按《埤雅》：桐木知日月、闰年，每一枝生十二叶，闰则十三叶，与天地合气者也。今造琴瑟者，以花桐木，是知桐为白桐也。田鼠化为鴽【音如】。按《尔雅》注曰：鼫鼠，形大如鼠，头似兔，尾有毛，青黄色，好在田中食粟豆，谓之田鼠。《本草》《素问》曰：鴽，鹑也，似鸽而小。《尔雅?释鸟》：鴽，鴾母。郭注：{酓鸟}也，青州人呼为鴾母。鲍氏曰：鼠，阴类；鴽，阳类；阳气盛故化为鴽，盖阴为阳所化也。虹始见【去声】。虹，虹霓也，诗所谓?蝀，俗读去声也。注疏曰：是阴阳交会之气，故先儒以为云薄漏日，日照雨滴则虹生焉，今以水噀日，自剑视之则晕为虹。朱子曰：日与雨交，倏然成质，阴阳不当交而交者，天地淫气也。虹为雄，色赤白，霓为雌，色青白，然二字皆从虫。《说文》曰：似?蝀状。诸书又云：尝见虹入溪饮水，其首如驴。恐天地闲亦有此种物也，但虹气似之借名也。<br />\n<br />\n　　○谷雨<br />\n<br />\n　　谷雨【去声】，三月中。自雨水后，土膏脉动，今又雨其谷于水也。雨读作去声，如&lsquo;雨我公田&rsquo;之雨，盖谷以此时播种自上而下也。故《说文》云雨本去声，今风雨之雨在上声，雨下之雨在去声也。萍始生。萍，水草也，与水相平，故曰萍。漂流随风，故又曰漂。《历解》曰：萍阳物，静以承阳也。鸣鸠拂其羽。鸠，即鹰所化者，布谷也。拂，过击也；《本草》云：拂羽飞而翼拍其身，气使然也。盖当三月之时，趋农急矣，鸠乃追逐而鸣，鼓羽直刺上飞，故俗称布谷。戴胜降于桑。戴胜一名戴鵀，《尔雅注》曰：头上有胜毛。此时恒在于桑，盖蚕将生之候矣。言降者，重之若天而下，亦气使之然也。<br />\n<br />\n　　○立夏<br />\n<br />\n　　立夏，四月节。立字解见春。夏，假也。物至此时皆假大也。蝼蝈鸣。蝼蝈，小虫，生穴土中，好夜出，今人谓之土狗是也；一名蝼蛄，一名石鼠，一名螜【音斛】，各地方言之不同也。《淮南子》曰：蝼蝈鸣，邱蚓出，阴气始而二物应之。《夏小正》：三月螜则鸣是也。且有五能，不能成一技：飞不能过屋；缘不能穷木；泅不能渡谷；穴不能覆身；走不能先人。故《说文》称鼫为五技之鼠。《古今注》又以蝼名鼫，鼠可知。《埤雅》《本草》俱以为臭虫，陆德明、郑康成以为蛙，皆非也。蚯蚓出。蚯蚓即地龙也【一名曲蟺】，《历解》曰：阴而屈者，乘阳而伸见也。王瓜生。《图经》云：王瓜处处有之，生平野、田宅及墙垣，叶似栝楼、乌药，圆无丫缺，有毛如刺，蔓生，五月开黄花，花下结子如弹丸，生青熟赤，根似葛，细而多糁，又名土瓜，一名落鸦瓜，今药中所用也。《礼记》郑元注曰：即萆挈。《本草》作菝葜，陶隐居以辨其谬，谓菝葜自有本条，殊不知王瓜亦自有本条，先儒当时如不检书而谩言者，可笑。<br />\n<br />\n　　○小满<br />\n<br />\n　　小满，四月中。小满者，物至于此小得盈满。苦菜秀。《埤雅》以荼为苦菜，《毛诗》曰：谁谓荼苦【荼即茶也，故韵今茶注本作荼】。是也。鲍氏曰：感火之气而苦味成。《尔雅》曰：不荣而实，谓之秀，荣而不实，谓之英。此苦菜宜言英也。蔡邕《月令》以谓苦荬菜，非。靡草死。郑康成、鲍景翔皆云靡草葶苈之属，《礼记注》曰：草之枝叶而靡细者。方氏曰：凡物感阳而生者则强而立，感阴而生者则柔而靡，谓之靡草，则至阴之所生也，故不胜至阳而死。麦秋至。秋者，百谷成熟之期，此于时虽夏，于麦则秋，故云麦秋也。<br />\n<br />\n　　○芒种<br />\n<br />\n　　芒种【上声】，五月节。谓有芒之种谷可稼种【去声】矣。螳螂生。螳螂，草虫也，饮风食露，感一阴之气而生，能捕蝉而食，故又名杀虫；曰天马，言其飞捷如马也；曰斧虫，以前二足如斧也，尚名不一，各随其地而称之。深秋生子于林木闲，一壳百子，至此时则破壳而出，药中桑螵蛸是也。鵙【音局】始鸣。鵙，百劳也，《本草》作博劳；朱子《孟》注曰：博劳，恶声之鸟，盖枭类也。曹子建《恶鸟论》：百劳以五月鸣，其声鵙鵙然，故以之立名，似俗称浊温。故《埤雅》禽经注云：伯劳不能翺翔，直飞而已。《毛诗》曰：七月鸣鵙。盖周七月夏五月也。反舌无声。诸书以为百舌鸟，以其能反复其舌故名，特注疏以为虾蟆，盖蛙属之舌尖向内，故名之。今辨其非者，以其此时正鸣，不知失者也，《易通卦验》亦名为虾蟆无声，若以五月正鸣，殊不知初旬见形后，形亦藏矣。陈氏曰：螳螂、鵙皆阴类，感微阴而或生或鸣，反舌感阳而发，遇微阴而无声也。<br />\n<br />\n　　○夏至<br />\n<br />\n　　夏至，五月中。《韵会》曰：夏，假也；至，极也；万物于此皆假大而至极也。鹿角解【音骇】。鹿，形小山兽也，属阳，角支向前与黄牛一同；麋，形大泽兽也，属阴，角支向后与水牛一同。夏至一阴生，感阴气而鹿角解。解，角退落也。冬至一阳生，麋感阳气而角解矣，是夏至阳之极，冬至阴之极也。蜩【音调】始鸣【《月令》注疏作蝉始鸣】。蜩，蝉之大而黑色者，蜣螂脱壳而成，雄者能鸣，雌者无声，今俗称知了是也。按蝉乃总名，鸣于夏者曰蜩，即《庄子》云&lsquo;蟪蛄不知春秋者&rsquo;是也。盖蟪蛄夏蝉，故不知春秋。鸣于秋者曰寒蜩，即楚辞所谓寒螀也。故《风土记》曰：蟪蛄鸣朝，寒螀鸣夕。今秋初夕阳之际，小而绿色声急疾者俗称都了是也。故《埤雅》各释其义，然此物生于盛阳，感阴而鸣。半夏生。半夏，药名，居夏之半而生，故名。<br />\n<br />\n　　○小暑<br />\n<br />\n　　小暑，六月节。《说文》曰：暑，热也。就热之中，分为大小，月初为小，月中为大，今则热气犹小也。温风至。至，极也，温热之风至此而极矣。蟋【音悉】蟀【音率】居壁。一名蛬【音拱】，一名蜻蛚，即今之促织也。《礼记注》曰：生土中。此时羽翼稍成，居穴之壁，至七月则远飞而在野矣。盖肃杀之气初生则在穴，感之深则在野而鬬。鹰始击【《礼记》作鹰乃学习】。击，搏击也。应氏曰：杀气未肃，鸷猛之鸟始习于击，迎杀气也。<br />\n<br />\n　　○大暑<br />\n<br />\n　　大暑，六月中。解见小暑。腐草为萤。曰丹良，曰丹鸟，曰夜光，曰宵烛，皆萤之别名。离明之极，则幽阴至微之物亦化而为明也。《毛诗》曰：熠耀宵行。另一种也，形如米虫，尾亦有火，不言化者，不复原形，解见前。土润溽【音辱】暑。溽，湿也，土之气润，故蒸郁而为湿；暑，俗称龌龊，热是也。大雨时行。前候湿暑之气蒸郁，今候则大雨时行，以退暑也。<br />\n<br />\n　　○立秋<br />\n<br />\n　　立秋，七月节。立字解见春。秋，揪也。物于此而揪敛也。凉风至【礼记作盲风至】。西方凄清之风曰凉风，温变而凉气始肃也。《周语》曰火见而清风戒寒是也。白露降。大雨之后，清凉风来，而天气下降，茫茫而白者，尚未凝珠，故曰白露。降示秋金之白色也。寒蝉鸣。寒蝉，《尔雅》曰寒螀，蝉小而青紫者。马氏曰：物生于暑者，其声变之矣。<br />\n<br />\n　　○处暑<br />\n<br />\n　　处暑，七月中。处，止也。暑气至此而止矣。鹰乃祭鸟，鹰，义禽也。秋令属金，五行为义，金气肃杀，鹰感其气始捕击诸鸟，然必先祭之，犹人饮食祭先代为之者也。不击有胎之禽，故谓之义。天地始肃秋者，阴之始，故曰天地始肃。 禾乃登。禾者。谷连藁秸之总名。又，稻秫苽粱之属皆禾也。成热曰登。<br />\n<br />\n　　○白露<br />\n<br />\n　　白露，八月节。秋属金，金色白，阴气渐重，露凝而白也。鸿【淮南子作候】雁来。鸿大雁小，自北而来南也。不谓南乡，非其居耳。详见雨水节下。元鸟归。元鸟，解见前，此时自南而往北也。燕乃北方之鸟，故曰归。 群鸟养羞【淮南子作群鸟翔】。三人以上为众，三兽以上为群；群，众也。《礼记注》曰：羞者，所羹之食；养羞者，藏之以备冬月之养也。<br />\n<br />\n　　○秋分<br />\n<br />\n　　秋分，八月中。解见春分。 雷始收声。鲍氏曰：雷二月阳中发声，八月阴中收声入地，则万物随入也。蛰虫坏【音培】户。淘瓦之泥曰坏，细泥也。按《礼记注》曰：坏益其蛰穴之户，使通明处稍小，至寒甚乃墐塞之也。水始涸。《礼记注》曰：水本气之所为，春夏气至故长，秋冬气返故涸也。<br />\n<br />\n　　○寒露<br />\n<br />\n　　寒露，九月节。露气寒冷，将凝结也。 鸿雁来宾。雁以仲秋先至者为主，季秋后至者为宾。《通书》作来滨。滨，水际也，亦通。雀入大水为蛤。雀，小鸟也，其类不一，此为黄雀。大水，海也，《国语》云：雀入大海为蛤。盖寒风严肃，多入于海。变之为蛤，此飞物化为潜物也。蛤，蚌属，此小者也。菊有黄华。草木皆华于阳，独菊华于阴，故言有桃桐之华皆不言色，而独菊言者，其色正应季秋土旺之时也。<br />\n<br />\n　　○霜降<br />\n<br />\n　　霜降，九月中。气肃而凝露结为霜矣。《周语》曰：驷见而陨霜。豺祭兽【《月令》作豺乃祭兽戮禽】。祭兽，以兽而祭天，报本也。方铺而祭，秋金之义。 草木黄落。色黄而摇落也。蛰虫咸俯【淮南子作俛】。咸，皆也；俯，垂头也。此时寒气肃凛，虫皆垂头而不食矣。<br />\n<br />\n　　○立冬<br />\n<br />\n　　立冬，十月节。立字解见前。冬，终也，万物收藏也。 水始冰。水面初凝，未至于坚也。 地始冻。土气凝寒，未至于拆。雉入大水为蜃。雉，野鸡；郑康成、《淮南子》、高诱俱注蜃为大蛤。《玉篇》亦曰：蜃，大蛤也。《墨子》又曰：蚌，一名蜃，蚌非蛤类乎？《礼记之注》曰蛟属，《埤雅》又以蚌、蜃各释，似非蛤类。然按《本草》车螯之条曰：车螯，是大蛤，一名蜃，能吐气为楼台，又尝闻海旁蜃气成楼垣。《章龟经》曰：蜃大者为车轮岛屿，月闲吐气成楼，与蛟龙同也。则知此为蛤，明矣。况《尔雅翼》引周礼诸家，辩蜃为蛤甚明。《礼记之注》以谓雉，由于蛇化之说，故以雉子为蜃，《埤雅》既曰似蛇而大，腹下尽逆鳞，知之悉矣，然复疑之：一曰状似螭龙，有耳，有角，则亦闻而识之，不若《本草》、《章龟经》为是，即一物耳。大水，淮也，晋语曰：雉入于淮为蜃。<br />\n<br />\n　　○小雪<br />\n<br />\n　　小雪，十月中。雨下而为寒气所薄，故凝而为雪。小者，未盛之辞。虹藏不见。《礼记注》曰：阴阳气交而为虹，此时阴阳极乎辨，故虹伏。虹非有质，而曰藏，亦言其气之下伏耳。 天气上升，地气下降。闭塞而成冬。天地变而各正其位，不交则不通，不通则闭塞，而时之所以为冬也。<br />\n<br />\n　　○大雪<br />\n<br />\n　　大雪，十一月节。大者，盛也。至此而雪盛矣。鹖鴠不鸣。《禽经》曰：鹖，毅鸟也。似雉而大，有毛角，鬬死方休，古人取为勇士，冠名可知矣，《汉书音义》亦然。《埤雅》云：黄黑色，故名为鹖。据此，本阳鸟，感六阴之极不鸣矣。若郭璞《方言》：似鸡，冬无毛，昼夜鸣，即寒号虫。陈澔与方氏亦曰求旦之鸟，皆非也。夜既鸣，何为不鸣耶？《丹铅余录》作雁，亦恐不然。《淮南子》作鳱鴠，《诗》注作渴旦。虎始交。虎，猛兽。故《本草》曰能避恶魅，今感微阳气，益甚也，故相与而交。荔挺出。荔，《本草》谓之蠡，实即马薤也。郑康成、蔡邕、高诱皆云马薤，况《说文》云：荔似蒲而小，根可为刷，与《本草》同。但陈澔注为香草，附和者即以为零陵香，殊不知零陵香自生于三月也。<br />\n<br />\n　　○冬至<br />\n<br />\n　　冬至，十一月中。终藏之气至此而极也。 蚯蚓结。六阴寒极之时，蚯蚓交相结而如绳也。 麋角解。说见鹿角解下。水泉动。水者，天一之阳所生，阳生而动，今一阳初生故云耳。<br />\n<br />\n　　○小寒<br />\n<br />\n　　小寒，十二月节。月初寒尚小，故云。月半则大矣。雁北乡【去声】。乡，向导之义。二阳之候，雁将避热而回，今则乡北飞之，至立春后皆归矣，禽鸟得气之先故也。鹊始巢。喜鹊也，鹊巢之门每向太岁，冬至天元之始，至后二阳已得来年之节气，鹊遂可为巢，知所向也。雉雊【音姤】。雉，文明之禽，阳鸟也；雊，雌雄之同鸣也，感于阳而后有声。<br />\n<br />\n　　○大寒<br />\n<br />\n　　大寒，十二月中。解见前。 鸡乳。育也，马氏曰：鸡木畜，丽于阳而有形，故乳在立春节也。征鸟厉疾。征，伐也；杀伐之鸟，乃鹰隼之属；至此而猛厉迅疾也。水泽腹坚。陈氏曰：冰之初凝，水面而已，至此则彻，上下皆凝。故云腹坚。腹，犹内也。</p>', '1', '2017-08-11 14:32:42', '2017-08-14 07:50:12');
INSERT INTO `single_pages` VALUES ('6', '5', '月令24节气-专题2', '<p>&nbsp;附1：<br />\n二十四气：七十二候<br />\n<br />\n正月<br />\n立春：初候，东风解冻；阳和至而坚凝散也。 二候，蛰虫始振；振，动也。三侯，鱼陟负冰。 陟，言积，升也，高也。阳气已动，鱼渐上游而近于冰也。<br />\n雨水：初候，獭祭鱼。此时鱼肥而出，故獭而先祭而后食。二候，候雁北；自南而北也 三候，草木萌动。是为可耕之候。<br />\n<br />\n二月<br />\n惊蛰：初候，桃始华；阳和发生，自此渐盛。 二候，仓庚鸣；黄鹂也。 三候，鹰化为鸠。鹰鸷鸟也。此时鹰化为鸠，至秋则鸠复化为鹰。<br />\n春分：初候，玄鸟至；燕来也。 二候，雷乃发声：雷者阳之声，阳在阴内不得出，故奋激而为雷。 三候，始电。电者阳之光，阳气微则光不见，阳盛欲达而抑于阴。其光乃发，故云始电。<br />\n<br />\n三月<br />\n清明：初候，桐始华；二候，田鼠化为鴽，牡丹华；鴑音如，鹌鹑属，鼠阴类。阳气盛则鼠化为鴽，阴气盛则鴽复化为鼠。 三候，虹始见。虹，音洪，阴阳交会之气，纯阴纯阳则无，若云薄漏日，日穿雨影，则虹见。<br />\n谷雨：初候，萍始生，二候，鸣鸠拂其羽，飞而两翼相排，农急时也。 三候、戴胜降于桑，织网之鸟，一名戴鵀，阵于桑以示蚕妇也，故曰女功兴而戴鵀鸣。<br />\n<br />\n四月<br />\n立夏：初候，蝼蝈鸣；蝼蛄也，诸言蚓者非。 二候，蚯蚓出；蚯蚓阴物，感阳气而出。 三候，王瓜生；王瓜色赤，阳之盛也。<br />\n小满：初候，苦菜秀；火炎上而味苦，故苦菜秀。 二候，靡草死；葶苈之属。 三候，麦秋至。秋者，百谷成熟之期。此时麦熟，故曰麦秋。<br />\n<br />\n五月<br />\n芒种：初候，螳螂生；俗名刀螂，说文名拒斧。 二候，鹃始鸣；鹃，屠畜切，伯劳也。 三候，反舌无声。百舌鸟也。<br />\n夏至：初候，鹿角解；阳兽也，得阴气而解。 二候，蜩始鸣，蜩，音蜩，蝉也。 三候，半夏生，药名也，阳极阴生。<br />\n<br />\n六月<br />\n小暑：初候，温风至；二候，蟋蜂居壁；亦名促织，此时羽翼未成，故居壁。 三侯，鹰始挚。挚，言至.鹰感阴气，乃生杀心，学习击搏之事。<br />\n大暑：初候，腐草为萤；离明之极，故幽类化为明类。 二候，土润溽暑；溽，音辱，湿也。三候，大雨行时。<br />\n<br />\n七月<br />\n立秋：初候，凉风至，二候，白露降；三候，寒蝉鸣。蝉小而青赤色者。<br />\n处暑：初候，鹰乃祭鸟；鹰，杀鸟。不敢先尝，示报本也。 二候，天地始肃；清肃也，寨也。 三候，禾乃登。稷为五谷之长，首熟此时。<br />\n<br />\n八月<br />\n白露：初候，鸿雁来；自北而南也。 一曰：大曰鸿，小曰雁。二候，玄鸟归；燕去也。三候，群鸟养羞。羞，粮食也。养羞以备冬月。<br />\n秋分：初候，雷始收声；雷于二月阳中发生，八月阴中收声。 二候，蛰虫坯户；坯，昔培。坯户，培益其穴中之户窍而将蛰也。 三候，水始涸。国语曰：辰角见而雨毕，天根见而水涸，雨毕而除道，水涸而成梁。辰角者，角宿也。天根者，氐房之间也。见者，旦见于东方也。辰角见九月本，天根见九月末，本末相去二十一余。<br />\n<br />\n九月<br />\n寒露：初候，鸿雁来宾。宾，客也。先至者为主，后至者为宾，盖将尽之谓 二候，雀入大水为蛤；飞者化潜，阳变阴也。 三候，菊有黄花。诸花皆不言，而此独言之，以其华于阴而独盛于秋也。<br />\n霜降：初候，豺乃祭兽；孟秋鹰祭鸟，飞者形小而杀气方萌，季秋豺祭兽，走者形大而杀气乃盛也。二候， 草木黄落；阳气去也。 三侯，蛰虫咸俯。俯，蛰伏也<br />\n<br />\n十月<br />\n立冬：初候，水始冻；二候，地始冻；三侯，雉入大水为蜃。蜃，蚌属。<br />\n小雪：初候，虹藏不见，季春阳胜阴，故虹见；孟冬阴胜阳，故藏而不见。 二候，天气上升，地气下将；三侯， 闭塞而成冬。阳气下藏地中，阴气闭固而成冬。<br />\n<br />\n十一月<br />\n大雪：初候，鹖鴠不鸣，鹖鴠，音曷旦，夜鸣求旦之鸟，亦名寒号虫，乃阴类而求阳者，兹得一阳之生，故不鸣矣。 二候，虎始交；虎本阴类。感一阳而交也。三候，荔挺出。荔，一名马蔺叶似蒲而小，根可为刷。<br />\n冬至：初候，蚯蚓结；阳气未动，屈首下向，阳气已动，回首上向，故屈曲而结。 二候，麇角解；阴兽也。得阳气而解。 三侯，水泉动&middot;天一之阳生也。<br />\n<br />\n十二月<br />\n小寒：初候，雁北乡；一岁之气，雁凡四候。如十二月雁北乡者，乃大雁，雁之父母也。正月侯雁北者，乃小雁，雁之子也。盖先行者其大，随后者其小也。此说出晋&middot;干宝，宋人述之以为的论。 二候，鹊始巢；鹊知气至，故为来岁之巢。 三候，雉雊；雊，句姤二音，雉鸣也。雉火畜，感于阳而后有声。<br />\n大寒：初候，鸡乳，鸡，水畜也，得阳气而卵育，故云乳。 二候，征鸟厉疾；征鸟，鹰隼之属，杀气盛极，故猛厉迅疾而善于击也。 三候，水泽腹坚。阳气未达，东风未至，故水泽正结而坚。<br />\n<br />\n<br />\n<br />\n附2：<br />\n立春：立春之日东风解冻，又五日蛰虫始振，又五日鱼上冰（鱼陟负冰）。<br />\n雨水：雨水之日獭祭鱼，又五日鸿雁来（候雁北），又五日草木萌动。<br />\n惊蛰：惊鸷之日桃始华，又五日仓庚鸣，又五日鹰化为鸠。<br />\n春分：春分之日玄鸟至，又五日雷乃发声，又五日始电。<br />\n清明：清明之日桐始华，又五日田鼠化为鴽，又五日虹始见。<br />\n谷雨：榖雨之日萍始生，又五日鸣鸠拂奇羽，又五日戴胜降于桑。<br />\n立夏：立夏之日蝼蝈鸣，又五日蚯蚓出，又五日王瓜生。<br />\n小满：小满之日苦菜秀，又五日靡草死，又五日小暑至（麦秋生）。<br />\n芒种：芒种之日螳螂生，又五日鵙始鸣，又五日反舌无声。<br />\n夏至：夏至之日鹿角解，又五日蜩始鸣，又五日半夏生。<br />\n小暑：小暑之日温风至，又五日蟋蟀居辟，又五日鹰乃学习（鹰始挚）。<br />\n大暑：大暑之日腐草为蠲，又五日土润溽暑，又五日大雨时行。<br />\n立秋：立秋之日凉风至，又五日白露降，又五日寒蝉鸣。<br />\n处暑：处暑之日鹰乃祭鸟，又五日天地始肃，又五日禾乃登。<br />\n白露：白露之日鸿雁来，又五日玄鸟归，又五日群鸟养羞。<br />\n秋分：秋分之日雷始收声，又五日蛰虫培户，又五日水始涸。<br />\n寒露：寒露之日鸿雁来宾，又五日雀入大水为蛤，又五日菊有黄华。<br />\n霜降：霜降之日豺乃祭兽，又五日草木黄落，又五日蛰虫咸俯。<br />\n立冬：立冬之日水始冰，又五日地始冻，又五日雉入大水为蜃。<br />\n小雪：小雪之日虹藏不见，又五日天气上腾地气下降，又五日闭塞而成冬。<br />\n大雪：大雪之日鹖旦不鸣，又五日虎始交，又五日荔挺生。<br />\n冬至：冬至之日蚯蚓结，又五日麋角解，又五日水泉动。<br />\n小寒：小寒之日雁北乡，又五日鹊始巢，又五日雉始雊。<br />\n大寒：大寒之日鸡使乳，又五日鹫鸟厉疾，又五日水泽腹坚。<br />\n<br />\n<br />\n<br />\n附3：<br />\n七十二候 - 歌谣<br />\n<br />\n立春正月春气动，东风能解凝寒冻； 土底蛰虫始振摇，鱼陟负冰相戏泳；<br />\n<br />\n半月交得雨水后，獭祭鱼时随应候； 候雁时催归北乡，那堪草木萌芽透。<br />\n<br />\n惊蛰二月节气浮，桃始开花放树头； 鸧鹧鸣动无休歇，崔得胡鹰化作鸠；<br />\n<br />\n春色平分纔一半，向时玄鸟重相见； 雷乃发声天际头，闪闪云开始见电。<br />\n<br />\n芳菲三月报清明，梧桐枝上始含英； 田鼠化鴽人不觉，虹桥始见雨初晴；<br />\n<br />\n三月中时交谷雨，萍始生遍闲洲渚； 鸣鸠自拂其羽毛，戴胜降于桑树隅。<br />\n<br />\n立夏四月始相争，知他蝼蝈为谁鸣； 无端坵蚓纵横出，有意王瓜取次生；<br />\n<br />\n小满瞬时更叠至，闲寻苦菜争荣处； 靡草千村死欲枯，微看初暄麦秋至；<br />\n<br />\n芒种一番新换豆，不谓螳螂生如许； 鵙者鸣时声不休，反舌无声没半语。<br />\n<br />\n夏至纔交阴始生，鹿乃解角养新茸； 阴阴蜩始鸣长日，细细田间半夏生；<br />\n<br />\n小暑乍来浑未觉，温风时至褰帘幙； 蟋蟀纔居屋璧诸，天崖又见鹰始挚。<br />\n<br />\n大暑虽炎犹自好，且看腐草为萤秒； 匀匀土润散溽蒸，大雨时行苏枯槁。<br />\n<br />\n大火西流又立秋，凉风至透内房幽； 一庭白露微微降，几个寒蝉鸣树头；<br />\n<br />\n一瞬中间处暑至，鹰乃祭鸟谁教汝； 天地属金始肃清，禾乃登堂收几许；<br />\n<br />\n无可奈何白露秋，大鸿小雁来南洲； 旧石玄鸟都归去，教令诸禽各养羞。<br />\n<br />\n自入秋分八月中，雷始收声敛震宫； 蛰虫坏户先为御，水始涸兮势向东；<br />\n<br />\n寒露人言晚节佳，鸿雁来宾时不差； 雀入大水化为蛤，争看篱菊有黄花；<br />\n<br />\n休言霜降非天意，豺乃祭兽班时意； 草木皆黄落叶天，蛰虫咸俯迎寒气；<br />\n<br />\n谁看书来立冬信，水始成冰寒日进； 地始冻兮折裂开，雉入大水潜为蜃；<br />\n<br />\n逡巡小雪年华暮，虹藏不见知何处； 天升地降两不交，闭寒成冬如禁锢；<br />\n<br />\n纷飞大雪转凄迷，鹖旦不鸣马肯啼； 虎始交后风生壑，荔挺出时霜满溪。<br />\n<br />\n短日渐长冬至矣，蚯蚓结泉更不起； 渐渐林间麋角解，水泉摇动温井底；<br />\n<br />\n去岁小寒今岁又，雁声北乡春去旧； 鹊寻枝上始为巢，雉入寒烟时一雊。<br />\n<br />\n一年时尽大寒来，鸡始乳兮如乳孩； 征鸟当权飞厉疾，泽腹弥坚冻不开；<br />\n<br />\n五朝一候如麟次，一岁从头七十二； 达人观此发天机，多少乾坤无限事。<br />\n</p>', '1', '2017-08-11 14:45:43', '2017-08-14 07:51:13');
INSERT INTO `single_pages` VALUES ('7', '5', '汉字的基本概念', '<p>比如古代的&ldquo;行&rdquo;，相当于现在的&ldquo;走&rdquo;；古代的&ldquo;走&rdquo;，相当于现在的&ldquo;跑&rdquo;。&ldquo;沐浴&rdquo;现在为一个词，但在古代却是两个词，&ldquo;沐&rdquo;是洗头，&ldquo;浴&rdquo;是洗澡<br />\n许慎《说文解字》释&ldquo;洗&rdquo;为&ldquo;洒足也&rdquo;，释&ldquo;澡&rdquo;为&ldquo;洒手也&rdquo;。只有将许慎对&ldquo;沐浴&rdquo;的解释与&ldquo;洗澡&rdquo;合起来，才是完全意义上的洗澡，因为&ldquo;沐，濯发也&rdquo;，&ldquo;浴，洒身也&rdquo;。 &nbsp;</p>\n\n<h3>一、字形之重要：</h3>\n\n<p>汉字是属于表意体系的文字，字形和字义有着密切的关系。倘若我们能对汉字的形体结构作出正确的分析，那么对于我们了解和掌握汉字的本义和引申义，对我们有着极大的帮助。</p>\n\n<p>既然说表意文字与语音没有直接的联系，那么&ldquo;形声字&rdquo;中的&ldquo;声&rdquo;又应怎样解释呢？汉字是可以分为没有标音成分的象形、指事、会意的纯表意字和有标音成分的形声字这两大类。但即使是&ldquo;形声字&rdquo;的&ldquo;声符&rdquo;本身原来也是一个象形符号。比如：纹、云、洋、渔等都是形声字，它们的声符是文、云、羊、鱼。甲骨文中的&ldquo;文&rdquo;字就像一个人胸部刻的花纹(即为&ldquo;祝发文身&rdquo;的&ldquo;文&rdquo;)；&ldquo;云&rdquo;字就像一朵白云的形状；&ldquo;羊&rdquo;字像羊头；&ldquo;鱼&rdquo;字像鱼形【甲骨文(文)、(云)、（羊）、(鱼)】。这里的&ldquo;文&rdquo;、&ldquo;云&rdquo;、&ldquo;羊&rdquo;、&ldquo;鱼&rdquo;都是象形字，还是与语音不发生直接联系，所以在我们现行的方块字中，即使是有百分之九十的形声字，也不妨碍它属于表意文字体系。</p>\n\n<h3>二、六书的概念：</h3>\n\n<p>名称和次序：<strong>象形、指事、会意、形声、转注、假借</strong>。<br />\n因为汉字是起源于图画，象形、指事、会意都和图画有着密切的关系，所以图画在前；而有标音成分的形声字则是在象形的基础上发展起来的，所以形声字在后；假借则只是有读音上的联系，与字义毫不相干，所以放在最后。</p>\n\n<p><strong>(一)象形。</strong>&ldquo;象形&rdquo;就是像实物之形，也就是把客观事物的形体描绘出来的意思。许慎在《说文解字》中说得精湛：&ldquo;象形者，画成其物，随体诘诎，日月是也。&rdquo;</p>\n\n<p>如&ldquo;日&rdquo;、&ldquo;月&rdquo;就很像一轮红日和一弯新月高悬太空。<br />\n再看&ldquo;山&rdquo;的甲骨文字形，当中一峰突起，周围群岚环抱，颇有一点&ldquo;远近高低各不同&rdquo;的意味。<br />\n&ldquo;州&rdquo;字也很有意思：甲骨文和金文都是三条曲线，表示波涛汹涌的流水，其中间的小圆圈或小黑点，表示水中的一块陆地。<br />\n&ldquo;矢&rdquo;为什么当&ldquo;箭&rdquo;讲呢？请看甲骨文&ldquo;矢&rdquo;字的上部为锋利的箭镞，中为箭杆，下为搭弦的尾翎，可见&ldquo;矢&rdquo;就是&ldquo;箭&rdquo;的象形字。　　　　</p>\n\n<p><strong>(二)指事。</strong>对&ldquo;指事字&rdquo;的理解历来分歧很大，不过多数人认为，指事字就是在象形的基础上再加上个指事符号作标记的一种字。许慎在《说文解字&middot;叙》中说：&ldquo;指事者，视而可识，察而见意，&lsquo;上&rsquo;&lsquo;下&rsquo;是也。&rdquo;这就是说，初看起来可以认识，再细观察就能了解意义，如&ldquo;上&rdquo;、&ldquo;下&rdquo;二字就是指事字。</p>\n\n<p>比如，牛马之类都可以用象形体表现出来。可是&ldquo;甜&rdquo;的意思又怎样象形呢？于是我们的祖先创造了一个&ldquo;甘&rdquo;字，在甲骨文里就写成口中加一点，表示在舌头上感到甜味的地方，甜字就是从这里演化而来的。　　　　<br />\n再比如，在上古要表示树的根，就在&ldquo;木&rdquo;(树)的下部口一个&ldquo;点儿&rdquo;，这个&ldquo;点儿&rdquo;就表明根部所在处成为&ldquo;本&rdquo;字。要表示树的梢部，就在&ldquo;木&rdquo;的上部加一个&ldquo;点儿&rdquo;，这个&ldquo;点儿&rdquo;就表示树梢所在处成为&ldquo;末&rdquo;字。<br />\n可见&ldquo;本&rdquo;与&ldquo;末&rdquo;的含意正好相反，成语&ldquo;本末倒置&rdquo;也正由此而来。　　　　<br />\n&ldquo;甘&rdquo;、&ldquo;本&rdquo;、&ldquo;末&rdquo;等字都是在象形基础上再加指事符号的指事字。<br />\n另外还有纯符号指事字，比如&ldquo;上&rdquo;、&ldquo;下&rdquo;在甲骨文中都先画一横线，再在线上或线下加一个点，横线以上的&ldquo;点儿&rdquo;就表示这是上面，横线以下的&ldquo;点儿&rdquo;就表示这是下面。<strong>指事字在&ldquo;六书&rdquo;中是绝对少数。</strong></p>\n\n<p><strong>(三)会意。</strong>许慎给会意下了这样的定义：&ldquo;比类合谊，以见指，武、信，是也。&rdquo;意思就是把两个或两个以上的象形字组合在一起，表示一个新的意思，像&ldquo;武&rdquo;、&ldquo;信&rdquo;二字就是会意字。再比如&ldquo;步&rdquo;字，在甲骨文中是脚趾朝上的两只脚一前一后走路的形象。假若两脚要从水中通过则怎样表现呢？那就再把&ldquo;水&rdquo;加在两脚之间，这就是徒步过水的&ldquo;涉&rdquo;字。如果两脚要登高呢？则又把&ldquo;涉&rdquo;字的水旁换成&ldquo;阜&rdquo;(左，即土坡)，就成为两脚登山的样子，这又组成了新的会意字&ldquo;陟&rdquo;(zh&igrave;志)。如果两脚要从高山上下来又怎么办呢？则又可以把&ldquo;步&rdquo;倒过来，脚趾朝下，甲骨文的&ldquo;降&rdquo;字就像右面的两只脚从左面的山坡上下来的样子，这又组成一个新的会意字&ldquo;降&rdquo;。由此可见，步、涉、陟、降等都是与脚(止)有关的会意字。　　&nbsp;</p>\n\n<p>　　会意字的类型各家说法不一，我认为主要的不过五种：<br />\n　　1．同体会意。是由两个或两个以上同样的象形字所组成的会意字。比如&ldquo;众&rdquo;字，&ldquo;三人为众&rdquo;，表示人多的意思。&ldquo;森&rdquo;字，&ldquo;木多貌&rdquo;。(音琐)字，&ldquo;心疑也&rdquo;，三心二意怎能不疑？&ldquo;淼&rdquo;字，&ldquo;水大也&rdquo;，表示水多的意思。　</p>\n\n<p>　　2．异体会意。是由两个或两个以上不同的象形字所组成的会意字。这种会意字在整个会意字中占绝对的多数。比如&ldquo;莫&rdquo;字，就是&ldquo;暮&rdquo;字的本字，表示太阳落进草丛之中，天快黑了。再比如&ldquo;休&rdquo;字，甲骨文的结构左边是&ldquo;人&rdquo;，右边是&ldquo;木&rdquo;(树)，就是会&ldquo;人依树而息&rdquo;之意。　　　　　</p>\n\n<p>　　3．改变形体会意。这就是说，一个字可以通过它本身的增加笔画、减少笔画或改变形体来表示新的意思。如，&ldquo;家&rdquo;中空了一半，就是&ldquo;寂静&rdquo;的&ldquo;寂&rdquo;字的异体字。根据这种减笔的会意方法，广东人就造了一个方言字，把&ldquo;有&rdquo;字里面的两笔挖掉了，表示&ldquo;没有&rdquo;的意思。　　　　</p>\n\n<p>　　4．组合解释会意。也就是用两个或两个以上的非象形字，以象形方式组合来会意的方法。比如不&ldquo;上&rdquo;不&ldquo;下&rdquo;为&ldquo;卡&rdquo;；上&ldquo;小&rdquo;下&ldquo;大&rdquo;为&ldquo;尖&rdquo;；四、方、木为&ldquo;楞&rdquo;；山、高为&ldquo;嵩&rdquo;等。　　　　</p>\n\n<p>　　5．反文倒文会意。是把一个字或反写或倒写而产生新的意义。比如反&ldquo;从&rdquo;为&ldquo;比&rdquo;，反&ldquo;后&rdquo;为&ldquo;司&rdquo;。再如，甲骨文中画一个人站着即为&ldquo;大&rdquo;，而倒过来即为&ldquo;&rdquo;，也就是&ldquo;逆&rdquo;字的本字，是&ldquo;不顺&rdquo;的意思。　&ldquo;人&rdquo;的头朝下当然不顺了。</p>\n\n<p><br />\n<strong>(四)形声。</strong>&ldquo;形声&rdquo;又叫&ldquo;谐声&rdquo;。《说文解字》是这样下定义的：&ldquo;形声者，以事为名，取譬相成，江河是也。&rdquo;清朝着名文字学家段玉裁注解说：&ldquo;&lsquo;以事力名&rsquo;，为半义也；&lsquo;取譬相成&rsquo;，谓半声也。&lsquo;江&rsquo;、&lsquo;河，二字以&lsquo;水&rsquo;为名，譬其声为&lsquo;工&rsquo;、&lsquo;可&rsquo;，因取&lsquo;工&rsquo;&lsquo;可&rsquo;之声而成其名。其别于指事、象形独体，形声合体。&rdquo;这段话，不仅准确地解释了什么是形声字，而且还说明了形声字和象形字、指事字在结构上的不同。　　　　</p>\n\n<p>　　我们知道，象形法或者会意法是有很大的局限性的，世界上许多事物和抽象概念是很难用象形或会意来表示的。比如，&ldquo;鱼&rdquo;是整个鱼类的总称，但是鱼的种类却是成千上万，显然不能为每一种鱼造一个字。再说各种鱼的样子又很相似，文字毕竟不是图画，就是用象形字来表示的话，也是难以从字形上一一加以区别的。于是，就出现了&ldquo;形声&rdquo;法。用&ldquo;鱼&rdquo;字边表示鱼的总类，再借用原有的字作为读音来表示鱼的种类，如&ldquo;鲤&rdquo;、&ldquo;鲫&rdquo;、&ldquo;缮&rdquo;、&ldquo;鳗&rdquo;等。有&ldquo;形&rdquo;有&ldquo;声&rdquo;，这就产生了大量的形声字。　　　　</p>\n\n<p>　　形声字的形符本来是象形符号，可是由于汉字的不断发展，不仅看不出象形的样子，就连表类属的意义也有不少的改变。比如&ldquo;豹&rdquo;是兽类，它与昆虫没有一点相似之处，但它的形符却是&ldquo;豸&rdquo;(zh&igrave;志，是没有脚的虫子)。&ldquo;蝙蝠&rdquo;是老鼠一类的动物，可是又写成&ldquo;虫&rdquo;字旁。&ldquo;蛟&rdquo;和龙是同类，可是也加上了&ldquo;虫&rdquo;字边。这是同古人对自然界的认识和理解受到一定局限分不开的。　　　　</p>\n\n<p>　　形声字越到后世发展越快，据统计，汉代的《说文解字》共收字9353个，其中形声字7679个，约占总数的80％；宋代的《通志&middot;六书略》，共收字24235个，其中形声字21343个，约占总数的88％；清代的《康熙字典》，共收字47035个，其中形声字42300个，约占总数的90％。<strong>在现在通用的新简化字中，形声字也占绝对多数。</strong>　　　</p>\n\n<p><strong>(五)转注。</strong>许慎在《说文解字&middot;叙》里说：&ldquo;转注者，建类一首，同意相受，&lsquo;考&rsquo;&lsquo;老&rsquo;是也。&rdquo;这个定义不好理解，所以后人各有各的解释。笔者的看法是：所谓&ldquo;建类一首&rdquo;，就是指的同一个部首；&ldquo;同意相受&rdquo;，就是指几个部首相同的同义字可以互相解释。比如在《说文解字》里，&ldquo;老&rdquo;与&ldquo;考&rdquo;就是一对转注字，它们都属八卷上的&ldquo;老部&rdquo;。这就是&ldquo;建类一首&rdquo;的意思。再从意义上看，许慎的训释是&ldquo;老，考也&rdquo;，&ldquo;考，老也&rdquo;。这种互相注解就叫&ldquo;同意相受&rdquo;。再比如，&ldquo;绩&rdquo;与&ldquo;缉&rdquo;属于同一部首&ldquo;&rdquo;，读音相近，意义也相通，可以互相解释，所以这也是一对转注字。　　　　</p>\n\n<p><strong>(六)假借。</strong>许慎给假借字下的定义是：&ldquo;本无其字，依声托事，&lsquo;令&rsquo;&lsquo;长&rsquo;是也。&rdquo;也就是说，当某个新事物出现之后，在口语里已经有了这个词，但在笔下却没有代表它的字，需要借用和它的名称声音相同的字来代表(托事)，这就是假借。比如&ldquo;令&rdquo;字的本义是&ldquo;命令&rdquo;、&ldquo;号令&rdquo;等，但因其读音与&ldquo;县令&rdquo;之&ldquo;令&rdquo;相同，所以这就可以假借&ldquo;命令&rdquo;之&ldquo;令&rdquo;为&ldquo;县令&rdquo;之&ldquo;令&rdquo;。而&ldquo;长&rdquo;字的本义是&ldquo;年长&rdquo;，但因其读音与&ldquo;县长&rdquo;之&ldquo;长&rdquo;相同，所以这就可以假借&ldquo;年长&rdquo;之&ldquo;长&rdquo;为&ldquo;县长&rdquo;之&ldquo;长&rdquo;。假借，全取声音相同或相近，与字义毫不相干。以下略举几例：　　　　　　</p>\n\n<p>　　比如&ldquo;汝&rdquo;字，在《说文解字》中说：&ldquo;水出弘农卢氏，还归山东入淮，从水，女声。&rdquo;可见&ldquo;汝&rdquo;字的本义是水名。可是后来这个&ldquo;汝&rdquo;字就被假借为第二人称代词用了，相当于现在的&ldquo;你&rdquo;字。如《愚公移山》云：&ldquo;汝之不惠。&rdquo;这个第二人称代词的&ldquo;汝&rdquo;与原来当水名讲的&ldquo;汝&rdquo;在词义上毫无联系，仅仅是读音相同而已。所以，第二人称代词&ldquo;汝&rdquo;，就是个假借字。　　　　</p>\n\n<p>　　&ldquo;亦&rdquo;字甲骨文的写法是在&ldquo;大&rdquo;字中间的两边各加一个点，《说文解字》说：&ldquo;人之臂&lsquo;亦&rsquo;也，从大，像肋腋之形。&rdquo;从字形上看也很清楚，是站着的一个人，张开两臂，两臂下各有一个点，表示这里就是腋下，所以&ldquo;亦&rdquo;字的本义就是&ldquo;腋&rdquo;。但后来&ldquo;亦&rdquo;字因为读音关系，被假借为副词用了(当&ldquo;也&rdquo;讲)，所以只好另外造个&ldquo;腋&rdquo;字取代了&ldquo;亦&rdquo;字的本义。而当&ldquo;也&rdquo;讲的&ldquo;亦&rdquo;也就永借不还了。　　　　</p>\n\n<p>　　&ldquo;自&rdquo;字在甲骨文里像个鼻子，所以《说文解字》说：&ldquo;鼻也。像鼻形。&rdquo;这话是对的。&ldquo;自&rdquo;字本义就是鼻子，后来被假借为&ldquo;自己&rdquo;的&ldquo;自&rdquo;。于是另造了一个从&ldquo;自&rdquo;声&ldquo;畀&rdquo;的形声字&ldquo;鼻&rdquo;。而&ldquo;自&rdquo;字以后再不当&ldquo;鼻子&rdquo;讲了，也就只用其假借义了。　　　　</p>\n\n<p>　　&ldquo;骄&rdquo;字是从&ldquo;马&rdquo;声&ldquo;乔&rdquo;的形声字。在《说文》里说：&ldquo;马高六尺为骄。&rdquo;这就是&ldquo;骄&rdquo;字的本义。后来因为读音相同，就把&ldquo;骄&rdquo;字借过来，当&ldquo;骄傲&rdquo;的&ldquo;骄&rdquo;用了，所以现在就只用其假借义了。此后，也很少有人知道六尺高的马才叫&ldquo;骄&rdquo;了。　　　　</p>\n\n<p>　　假借法的出现，完全废掉了汉字的表意性，这对后世用同音以代替压缩汉字的字数有很大的启示。这里需要再说明两点：第一，假借字在上古时代普遍使用，这与当时的字少有关。在甲骨契文和钟鼎铭文中很多都是假借字，这对后世的阅读和理解带来很大困难。第二，&ldquo;本无其字&rdquo;就能出现假借，但有时在&ldquo;本有其字&rdquo;的情况下也出现假借。当然我们不能因为古有假借现象，我们现在就去随便假借。要知道文字有广泛的社会性，如果我们任意乱借(实为写别字)，只能损害文字的健康，造成使用上的混乱。　</p>\n\n<p><br />\n三、汉字的形体演变的七个阶段。　　　　</p>\n\n<p>(1)甲骨文。就是殷商时代刻在龟甲和兽骨上的文字。　　<br />\n(2)金文。金文是指铸刻在铜器上的文字。古代人称铜为&ldquo;吉金&rdquo;，故称铜器上的文字为&ldquo;金文&rdquo;。铜器中又以钟和鼎较着名，因此金文也叫&ldquo;钟鼎文&rdquo;。<br />\n(3)篆书。&ldquo;篆书&rdquo;是对&ldquo;隶书&rdquo;而言的。篆书可分为&ldquo;大篆&rdquo;和&ldquo;小篆&rdquo;两种：　　　　<br />\n(4)隶书。在秦朝初年，官书都是用小篆书写，而在民间通行的却是所谓不能登大雅之堂的&ldquo;草篆&rdquo;。这种草篆的特点是：笔势趋直，笔画趋简，书写方便，当时的帝王秦始皇却是鼓励人们写隶书的初成字&mdash;&mdash;&ldquo;草篆&rdquo;。隶书始于秦朝而盛于汉朝，所以隶书也称为&ldquo;汉隶&rdquo;。　　　<br />\n(5)草书。草书是跟汉隶并行的一种字体，是汉隶的潦草写法。　　<br />\n(6)楷书。楷书是代隶书而通行的一种字体。它是由隶书演变而来的。楷书也叫&ldquo;真书&rdquo;或&ldquo;正书&rdquo;，也有人叫它&ldquo;今隶&rdquo;。从东汉开始使用，一直沿用到现在，有一千八百多年的历史了。　　　　<br />\n(7)行书。行书是&ldquo;楷书的流动&rdquo;，它形成于魏晋。它说明行书是间于楷书和草书当中的一种形体，从魏晋起直到现在，行书用得最为普遍，最有群众基础。　　</p>', '1', '2017-09-30 11:35:19', '2017-09-30 16:10:44');
INSERT INTO `single_pages` VALUES ('8', '5', '假借字的规律', '<p><font size=\"3\"><font style=\"color: rgb(47, 47, 47); font-family: 微软雅黑, 宋体, 黑体, Arial, Helvetica, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"><big>&nbsp;(一)从汉字的形体结构来看，假借字主要有两个规律。</big><br />\n　　<strong>1.一个&ldquo;独立&rdquo;的字充当了另一个字的声符时，那么这两个字有时是能互相代替的。</strong>如：<br />\n　　(1)&ldquo;(元济)起，听于廷。&rdquo;(《李愬雪夜人蔡州》)<br />\n　　&mdash;&mdash;元济起床，在庭上细听。<br />\n　　(2)&ldquo;位尊而无功，奉厚而无劳。&rdquo;(《战国策&bull;赵策》)<br />\n　　&mdash;&mdash;地位很尊贵，但是没有一点功绩；俸禄很优厚，但是没有一点勋劳。<br />\n　　例(1)中的&ldquo;廷&rdquo;字本来就是一个独立的字，但它充当了&ldquo;庭&rdquo;这个形声字的声符，就成为&ldquo;庭&rdquo;的假借字了。例(2)中的&ldquo;奉&rdquo;字本来也是一个独立的字，但它充当了&ldquo;俸&rdquo;这个形声字的声符，就成为&ldquo;俸&rdquo;的假借字了。<br />\n　　<strong>2，两个形声字，由于声旁相同可以互相代替。</strong>如：<br />\n　　(1)&ldquo;为天下唱，宜多应者。&rdquo;(《史记&bull;陈涉世家》)<br />\n　　&mdash;&mdash;替天下人倡导，响应的人一定很多。<br />\n　　(2)&ldquo;将军身被坚执锐，伐无道，诛暴秦。&rdquo;(同上)<br />\n　　&mdash;&mdash;将军身披坚甲，拿着锐利的武器，攻打无道，诛灭暴秦。<br />\n　　(3)&ldquo;公输盘九设攻城之机变，子墨子九距之。&rdquo;(《墨子&bull;公输》)<br />\n　　&mdash;&mdash;公输盘变换了九次攻城之法，被墨子九次拒(挡)回去了。<br />\n　　例(1)的&ldquo;唱&rdquo;字，例(2)的&ldquo;被&rdquo;字，例(3)的&ldquo;距&rdquo;字，都是形声字。它们的声符和&ldquo;倡&rdquo;、&ldquo;披&rdquo;、&ldquo;拒&rdquo;等形声字的声符相同，所以&ldquo;倡&rdquo;、&ldquo;披&rdquo;、&ldquo;拒&rdquo;可以假借为&ldquo;唱&rdquo;、&ldquo;被&rdquo;、&ldquo;距&rdquo;。这样的假借现象在古书中是屡见不鲜的。<br />\n　　</font></font><br style=\"color:#2f2f2f; font-family:微软雅黑, 宋体, 黑体, Arial, Helvetica, sans-serif; font-size:16px; font-style:normal; font-variant-ligatures:normal; font-variant-caps:normal; font-weight:normal; letter-spacing:normal; orphans:2; text-align:left; text-transform:none; white-space:normal; widows:2; word-spacing:0px; -webkit-text-stroke-width:0px; background-color:#ffffff; text-decoration-style:initial; text-decoration-color:initial\" />\n<font size=\"3\"><font style=\"color: rgb(47, 47, 47); font-family: 微软雅黑, 宋体, 黑体, Arial, Helvetica, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">&nbsp;<big> &nbsp;&nbsp; &nbsp;(二)从汉字的读音上看，两个字由于音同或者音近，虽然形体上没有什么联系，有时也可以产生假借现象。如：</big><br />\n　　(1)&ldquo;公输盘之攻械尽，子墨子之守圉有余。&rdquo;(《墨子&bull;公输》)<br />\n　　&mdash;&mdash;公输盘攻城的器械用完了，但墨子的防御之法还多着呢。<br />\n　　(2)&ldquo;(白骨精)嘴唇往下别。&rdquo;(《西游记&bull;孙悟空&bull;三打白骨精》)<br />\n　　&mdash;&mdash;白骨精的嘴唇往下瘪。<br />\n　　(3)&ldquo;像你这尖嘴猴腮，也该撒抛尿自己照照!&rdquo;(《儒林外史&bull;范进中举》)<br />\n　　&mdash;&mdash;像你(范进)这个尖嘴猴腮的样子，也该撒泡尿照照自己。<br />\n　　例(1)的&ldquo;圉&rdquo;，例(2)的&ldquo;别&rdquo;，例(3)的&ldquo;抛&rdquo;，是和&ldquo;御&rdquo;、&ldquo;瘪&rdquo;、&ldquo;泡&rdquo;同音(或音近)。所以它们就充当了&ldquo;御&rdquo;、&ldquo;瘪&rdquo;、&ldquo;泡&rdquo;的假借字。<br />\n　　总之，不管从结构上看，还是从读音上看，都离不开音同或音近这条根本原则。如果在读音上没有任何联系的两个字，那它们就不能假借。</font></font><br />\n<br style=\"color:#2f2f2f; font-family:微软雅黑, 宋体, 黑体, Arial, Helvetica, sans-serif; font-size:16px; font-style:normal; font-variant-ligatures:normal; font-variant-caps:normal; font-weight:normal; letter-spacing:normal; orphans:2; text-align:left; text-transform:none; white-space:normal; widows:2; word-spacing:0px; -webkit-text-stroke-width:0px; background-color:#ffffff; text-decoration-style:initial; text-decoration-color:initial\" />\n<font size=\"3\"><font style=\"color: rgb(47, 47, 47); font-family: 微软雅黑, 宋体, 黑体, Arial, Helvetica, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">　　<big><ins>怎样才能辨别假借字呢?大概离不开以下两种办法。</ins></big><br />\n　　第一，看上下文的意思，再考虑其读音。如果根据字面的意思根本讲不通，但从读音上却能与另外一个能讲通意思的字联系起来，这就有可能是假借字。如&ldquo;弃私家之事，而必汗马之劳&hellip;&hellip;&rdquo;(《韩非子&bull;五蠢》)这当中的&ldquo;必&rdquo;字如果解为&ldquo;必须&rdquo;，则根本讲不通。从上下文的意思看，这里的&ldquo;必&rdquo;是&ldquo;尽&rdquo;的意思；那么有没有读&ldquo;必&rdquo;的音而又有&ldquo;尽&rdquo;的意思的字呢?有的。这就是&ldquo;毕&rdquo;字。所以&ldquo;必&rdquo;在这里就是&ldquo;毕&rdquo;的假借字。<br />\n　　第二，利用《玉篇》《类编》《康熙字典》《辞源》等工具书来辨别假借字。如《庄子&bull;逍遥游》中有&ldquo;立之塗，匠人不顾&rdquo;的话。这个&ldquo;塗&rdquo;字不好解释，一查《康熙字典》就发现其中有&ldquo;塗通途&rdquo;一条，&ldquo;涂&rdquo;就是&ldquo;途&rdquo;的假借字，问题解决了。<br />\n　　由上述可知，我们掌握了假借规律和辨认假借字的方法，对我们讲授古典文学、阅读古代典籍、理解古文的语义是有很大帮助的。</font></font></p>', '1', '2017-09-30 11:36:10', '2017-09-30 11:50:14');
INSERT INTO `single_pages` VALUES ('9', '5', '趣味汉字 --  北比臼舅', '<p>男女结婚时,有人题字:北比臼舅</p>\n\n<pre accuse=\"aContent\" id=\"best-content-5241286\">\n<strong>北</strong>字正如二人互不相识时背靠背的样子；\n<strong>比</strong>是一个向另一个开展追求的样子；\n<strong>臼</strong>是二人面对面互相倾谈的样子；\n<strong>舅</strong>字是二人合作生下一男的样子</pre>', '1', '2017-09-30 11:55:54', '2017-09-30 11:55:54');

-- ----------------------------
-- Table structure for taggables
-- ----------------------------
DROP TABLE IF EXISTS `taggables`;
CREATE TABLE `taggables` (
  `tag_id` int(10) unsigned NOT NULL,
  `taggable_id` int(10) unsigned NOT NULL,
  `taggable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  KEY `taggables_taggable_id_taggable_type_index` (`taggable_id`,`taggable_type`),
  KEY `taggables_tag_id_index` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of taggables
-- ----------------------------
INSERT INTO `taggables` VALUES ('9', '1', 'App\\Post');
INSERT INTO `taggables` VALUES ('11', '2', 'App\\Post');
INSERT INTO `taggables` VALUES ('5', '3', 'App\\Post');
INSERT INTO `taggables` VALUES ('11', '4', 'App\\Post');
INSERT INTO `taggables` VALUES ('5', '5', 'App\\Post');
INSERT INTO `taggables` VALUES ('11', '6', 'App\\Post');
INSERT INTO `taggables` VALUES ('11', '7', 'App\\Post');
INSERT INTO `taggables` VALUES ('5', '8', 'App\\Post');
INSERT INTO `taggables` VALUES ('9', '8', 'App\\Post');
INSERT INTO `taggables` VALUES ('6', '9', 'App\\Post');
INSERT INTO `taggables` VALUES ('6', '10', 'App\\Post');
INSERT INTO `taggables` VALUES ('6', '11', 'App\\Post');
INSERT INTO `taggables` VALUES ('6', '12', 'App\\Post');
INSERT INTO `taggables` VALUES ('6', '13', 'App\\Post');
INSERT INTO `taggables` VALUES ('6', '14', 'App\\Post');
INSERT INTO `taggables` VALUES ('6', '15', 'App\\Post');
INSERT INTO `taggables` VALUES ('6', '16', 'App\\Post');
INSERT INTO `taggables` VALUES ('6', '17', 'App\\Post');
INSERT INTO `taggables` VALUES ('6', '18', 'App\\Post');
INSERT INTO `taggables` VALUES ('6', '19', 'App\\Post');
INSERT INTO `taggables` VALUES ('6', '20', 'App\\Post');
INSERT INTO `taggables` VALUES ('6', '21', 'App\\Post');
INSERT INTO `taggables` VALUES ('6', '22', 'App\\Post');
INSERT INTO `taggables` VALUES ('6', '23', 'App\\Post');
INSERT INTO `taggables` VALUES ('6', '24', 'App\\Post');
INSERT INTO `taggables` VALUES ('6', '25', 'App\\Post');
INSERT INTO `taggables` VALUES ('6', '26', 'App\\Post');
INSERT INTO `taggables` VALUES ('6', '27', 'App\\Post');
INSERT INTO `taggables` VALUES ('6', '28', 'App\\Post');
INSERT INTO `taggables` VALUES ('6', '29', 'App\\Post');
INSERT INTO `taggables` VALUES ('6', '30', 'App\\Post');
INSERT INTO `taggables` VALUES ('6', '31', 'App\\Post');
INSERT INTO `taggables` VALUES ('6', '32', 'App\\Post');
INSERT INTO `taggables` VALUES ('6', '33', 'App\\Post');
INSERT INTO `taggables` VALUES ('6', '34', 'App\\Post');
INSERT INTO `taggables` VALUES ('6', '35', 'App\\Post');
INSERT INTO `taggables` VALUES ('6', '36', 'App\\Post');
INSERT INTO `taggables` VALUES ('6', '37', 'App\\Post');
INSERT INTO `taggables` VALUES ('6', '38', 'App\\Post');
INSERT INTO `taggables` VALUES ('6', '39', 'App\\Post');
INSERT INTO `taggables` VALUES ('6', '40', 'App\\Post');
INSERT INTO `taggables` VALUES ('6', '41', 'App\\Post');
INSERT INTO `taggables` VALUES ('6', '42', 'App\\Post');
INSERT INTO `taggables` VALUES ('6', '43', 'App\\Post');
INSERT INTO `taggables` VALUES ('6', '44', 'App\\Post');
INSERT INTO `taggables` VALUES ('6', '45', 'App\\Post');
INSERT INTO `taggables` VALUES ('6', '46', 'App\\Post');
INSERT INTO `taggables` VALUES ('6', '47', 'App\\Post');
INSERT INTO `taggables` VALUES ('6', '48', 'App\\Post');
INSERT INTO `taggables` VALUES ('6', '49', 'App\\Post');
INSERT INTO `taggables` VALUES ('6', '50', 'App\\Post');
INSERT INTO `taggables` VALUES ('6', '51', 'App\\Post');
INSERT INTO `taggables` VALUES ('6', '52', 'App\\Post');
INSERT INTO `taggables` VALUES ('6', '53', 'App\\Post');
INSERT INTO `taggables` VALUES ('6', '54', 'App\\Post');
INSERT INTO `taggables` VALUES ('6', '55', 'App\\Post');
INSERT INTO `taggables` VALUES ('6', '56', 'App\\Post');
INSERT INTO `taggables` VALUES ('6', '57', 'App\\Post');
INSERT INTO `taggables` VALUES ('6', '58', 'App\\Post');
INSERT INTO `taggables` VALUES ('6', '59', 'App\\Post');
INSERT INTO `taggables` VALUES ('6', '60', 'App\\Post');
INSERT INTO `taggables` VALUES ('6', '61', 'App\\Post');
INSERT INTO `taggables` VALUES ('6', '62', 'App\\Post');
INSERT INTO `taggables` VALUES ('6', '63', 'App\\Post');
INSERT INTO `taggables` VALUES ('6', '64', 'App\\Post');
INSERT INTO `taggables` VALUES ('6', '65', 'App\\Post');
INSERT INTO `taggables` VALUES ('6', '66', 'App\\Post');
INSERT INTO `taggables` VALUES ('6', '67', 'App\\Post');
INSERT INTO `taggables` VALUES ('6', '68', 'App\\Post');
INSERT INTO `taggables` VALUES ('6', '69', 'App\\Post');
INSERT INTO `taggables` VALUES ('6', '70', 'App\\Post');
INSERT INTO `taggables` VALUES ('6', '71', 'App\\Post');
INSERT INTO `taggables` VALUES ('6', '72', 'App\\Post');
INSERT INTO `taggables` VALUES ('6', '73', 'App\\Post');
INSERT INTO `taggables` VALUES ('6', '74', 'App\\Post');
INSERT INTO `taggables` VALUES ('6', '75', 'App\\Post');
INSERT INTO `taggables` VALUES ('6', '76', 'App\\Post');
INSERT INTO `taggables` VALUES ('6', '77', 'App\\Post');
INSERT INTO `taggables` VALUES ('6', '78', 'App\\Post');
INSERT INTO `taggables` VALUES ('6', '79', 'App\\Post');
INSERT INTO `taggables` VALUES ('6', '80', 'App\\Post');
INSERT INTO `taggables` VALUES ('6', '81', 'App\\Post');
INSERT INTO `taggables` VALUES ('6', '82', 'App\\Post');
INSERT INTO `taggables` VALUES ('6', '83', 'App\\Post');
INSERT INTO `taggables` VALUES ('6', '84', 'App\\Post');
INSERT INTO `taggables` VALUES ('6', '85', 'App\\Post');
INSERT INTO `taggables` VALUES ('6', '86', 'App\\Post');
INSERT INTO `taggables` VALUES ('6', '87', 'App\\Post');
INSERT INTO `taggables` VALUES ('6', '88', 'App\\Post');
INSERT INTO `taggables` VALUES ('6', '89', 'App\\Post');
INSERT INTO `taggables` VALUES ('1', '1', 'App\\Dict');
INSERT INTO `taggables` VALUES ('4', '1', 'App\\Dict');
INSERT INTO `taggables` VALUES ('9', '2', 'App\\Dict');
INSERT INTO `taggables` VALUES ('4', '2', 'App\\Dict');
INSERT INTO `taggables` VALUES ('5', '3', 'App\\Dict');
INSERT INTO `taggables` VALUES ('4', '3', 'App\\Dict');
INSERT INTO `taggables` VALUES ('7', '4', 'App\\Dict');
INSERT INTO `taggables` VALUES ('4', '4', 'App\\Dict');
INSERT INTO `taggables` VALUES ('7', '5', 'App\\Dict');
INSERT INTO `taggables` VALUES ('4', '5', 'App\\Dict');
INSERT INTO `taggables` VALUES ('9', '6', 'App\\Dict');
INSERT INTO `taggables` VALUES ('4', '6', 'App\\Dict');
INSERT INTO `taggables` VALUES ('9', '7', 'App\\Dict');
INSERT INTO `taggables` VALUES ('4', '7', 'App\\Dict');

-- ----------------------------
-- Table structure for tags
-- ----------------------------
DROP TABLE IF EXISTS `tags`;
CREATE TABLE `tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tags_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of tags
-- ----------------------------
INSERT INTO `tags` VALUES ('1', '天文', '1', '1', '1', '2017-08-11 09:02:45', '2017-08-11 09:02:45');
INSERT INTO `tags` VALUES ('2', '历法', '1', '1', '1', '2017-08-11 09:03:03', '2017-08-11 09:03:03');
INSERT INTO `tags` VALUES ('3', '中医', '1', '1', '1', '2017-08-11 09:03:17', '2017-08-11 09:03:17');
INSERT INTO `tags` VALUES ('4', '甲骨文', '1', '1', '1', '2017-08-11 09:04:10', '2017-08-11 09:04:10');
INSERT INTO `tags` VALUES ('5', '地理', '1', '1', '1', '2017-08-14 03:47:53', '2017-08-14 03:47:53');
INSERT INTO `tags` VALUES ('6', '老庄', '1', '1', '1', '2017-09-12 09:12:33', '2017-09-12 09:12:33');
INSERT INTO `tags` VALUES ('7', '动物', '1', '1', '1', '2017-09-12 09:12:39', '2017-09-12 09:40:42');
INSERT INTO `tags` VALUES ('8', '植物', '1', '1', '1', '2017-10-17 18:46:57', '2017-10-17 18:46:59');
INSERT INTO `tags` VALUES ('9', '人事', '1', '1', '1', '2017-09-12 09:12:39', '2017-09-12 09:40:42');
INSERT INTO `tags` VALUES ('10', '九流', '1', '1', '1', '2017-09-12 09:12:39', '2017-10-17 18:52:14');
INSERT INTO `tags` VALUES ('11', '文学', '1', '1', '1', '2017-10-17 19:10:59', '2017-10-17 19:10:59');

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL,
  `age` tinyint(4) NOT NULL,
  `sex` char(1) NOT NULL,
  `status` char(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `name` (`name`,`age`,`sex`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of test
-- ----------------------------
INSERT INTO `test` VALUES ('1', 'gg', '12', '男', '1');
INSERT INTO `test` VALUES ('2', 'mm', '10', '女', '1');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `oauth_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `oauth` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'innocence23', '654037450@qq.com', '', '5745078', 'github', 'https://avatars1.githubusercontent.com/u/5745078?v=4', '1', null, '2017-09-30 09:03:19', '2017-09-30 09:03:19');
