/*
Navicat MySQL Data Transfer

Source Server         : dushu
Source Server Version : 50518
Source Host           : www.aiwangxiao.net:3306
Source Database       : dushu

Target Server Type    : MYSQL
Target Server Version : 50518
File Encoding         : 65001

Date: 2016-11-23 16:46:41
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `t_books`
-- ----------------------------
DROP TABLE IF EXISTS `t_books`;
CREATE TABLE `t_books` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `bookid` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(64) NOT NULL DEFAULT '',
  `image` varchar(512) NOT NULL DEFAULT '',
  `tag` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_books
-- ----------------------------
INSERT INTO `t_books` VALUES ('1', 'id_1007305', '八达岭长城', '\\/micomo\\/dushu\\/imag\\/badalingchangcheng.png', '古建筑');
INSERT INTO `t_books` VALUES ('2', 'id_1077847', '白帝城', '\\/micomo\\/dushu\\/imag\\/baidicheng.png', '古建筑');
INSERT INTO `t_books` VALUES ('3', 'id_5299764', '包公祠', '\\/micomo\\/dushu\\/imag\\/baogongci.png', '寺庙');
INSERT INTO `t_books` VALUES ('4', 'id_1464203', '珠穆朗玛峰', '\\/micomo\\/dushu\\/imag\\/zhumulangmafeng.png', '名山大川');
INSERT INTO `t_books` VALUES ('5', 'id_4913064', '余荫山房', '\\/micomo\\/dushu\\/imag\\/yuyinshanfang.png', '园林');
INSERT INTO `t_books` VALUES ('6', 'id_6710437', '中山陵', '\\/micomo\\/dushu\\/imag\\/zhongshanling.png', '寺庙');
INSERT INTO `t_books` VALUES ('7', 'id_3808982', '丙灵寺石窟', '\\/micomo\\/dushu\\/imag\\/binglingsishiku.png', '石刻');
INSERT INTO `t_books` VALUES ('8', 'id_25985021', '布达拉宫', '\\/micomo\\/dushu\\/imag\\/budalagong.png', '古建筑');
INSERT INTO `t_books` VALUES ('9', 'id_6082808', '沧浪亭', '\\/micomo\\/dushu\\/imag\\/canglangting.png', '园林');
INSERT INTO `t_books` VALUES ('10', 'id_3066477', '柴达木盆地', '\\/micomo\\/dushu\\/imag\\/chaidamupendi.png', '自然');
INSERT INTO `t_books` VALUES ('11', 'id_1019568', '茶卡盐湖', '\\/micomo\\/dushu\\/imag\\/chakayanhu.png', '湖泊河流');
INSERT INTO `t_books` VALUES ('12', 'id_1040211', '川西高寒草原', '\\/micomo\\/dushu\\/imag\\/chuanxigaohancaoyuan.png', '草原');
INSERT INTO `t_books` VALUES ('13', 'id_10554308', '大理', '\\/micomo\\/dushu\\/imag\\/dali.png', '古城');
INSERT INTO `t_books` VALUES ('14', 'id_4123116', '大昭寺', '\\/micomo\\/dushu\\/imag\\/dazhaosi].png', '寺庙');
INSERT INTO `t_books` VALUES ('15', 'id_4934332', '东方明珠', '\\/micomo\\/dushu\\/imag\\/dongfangmianzhu].png', '现代建筑');
INSERT INTO `t_books` VALUES ('16', 'id_11622283', '都江堰', '\\/micomo\\/dushu\\/imag\\/dujiangyan.png', '现代建筑');
INSERT INTO `t_books` VALUES ('17', 'id_7163250', '鄂尔多斯大草原', '\\/micomo\\/dushu\\/imag\\/eerduosidacaoyuan.png', '草原');
INSERT INTO `t_books` VALUES ('18', 'id_20440644', '峨眉山', '\\/micomo\\/dushu\\/imag\\/emeishan.png', '名山大川');
INSERT INTO `t_books` VALUES ('19', 'id_3523041', '洱海', '\\/micomo\\/dushu\\/imag\\/erhai.png', '湖泊河流');
INSERT INTO `t_books` VALUES ('20', 'id_1467022', '凤凰古城', '\\/micomo\\/dushu\\/imag\\/fenghuanggucheng.png', '古城');
INSERT INTO `t_books` VALUES ('21', 'id_1003078', '夫子庙', '\\/micomo\\/dushu\\/imag\\/fuzimiao.png', '寺庙');
INSERT INTO `t_books` VALUES ('22', 'id_1046209', '甘南玛曲草原', '\\/micomo\\/dushu\\/imag\\/gannanmaqucaoyuan.png', '草原');
INSERT INTO `t_books` VALUES ('23', 'id_1829226', '格尔木', '\\/micomo\\/dushu\\/imag\\/geermu.png', '自然');
INSERT INTO `t_books` VALUES ('24', 'id_1002898', '歌乐山', '\\/micomo\\/dushu\\/imag\\/geleshan.png', '名山大川');
INSERT INTO `t_books` VALUES ('25', 'id_1003479', '葛洲坝', '\\/micomo\\/dushu\\/imag\\/gezhouba.png', '现代建筑');
INSERT INTO `t_books` VALUES ('26', 'id_6709783', '故宫', '\\/micomo\\/dushu\\/imag\\/gugong.png', '古建筑');
INSERT INTO `t_books` VALUES ('27', 'id_1855364', '桂林山水', '\\/micomo\\/dushu\\/imag\\/guilinshanshui.png', '自然');
INSERT INTO `t_books` VALUES ('28', 'id_1119839', '寒山寺', '\\/micomo\\/dushu\\/imag\\/hanshansi.png', '寺庙');
INSERT INTO `t_books` VALUES ('29', 'id_3239549', '黄河源', '\\/micomo\\/dushu\\/imag\\/huangheyuan.png', '自然');
INSERT INTO `t_books` VALUES ('30', 'id_1041007', '华山', '\\/micomo\\/dushu\\/imag\\/huashan.png', '名山大川');
INSERT INTO `t_books` VALUES ('31', 'id_1255625', '火焰山', '\\/micomo\\/dushu\\/imag\\/huoyanshan.png', '名山大川');
INSERT INTO `t_books` VALUES ('32', 'id_10594787', '虎丘', '\\/micomo\\/dushu\\/imag\\/huqiu.png', '园林');
INSERT INTO `t_books` VALUES ('33', 'id_1054685', '井冈山', '\\/micomo\\/dushu\\/imag\\/jinggangshan.png', '名山大川');
INSERT INTO `t_books` VALUES ('34', 'id_1827374', '金茂大厦', '\\/micomo\\/dushu\\/imag\\/jinmaodasha.png', '现代建筑');
INSERT INTO `t_books` VALUES ('35', 'id_4117922', '金银滩大草原', '\\/micomo\\/dushu\\/imag\\/jinyintandacaoyuan.png', '草原');
INSERT INTO `t_books` VALUES ('36', 'id_5414391', '九寨沟', '\\/micomo\\/dushu\\/imag\\/jiuzhaigou.png', '自然');
INSERT INTO `t_books` VALUES ('37', 'id_1027191', '康西草原——京郊延庆县康庄镇新西区十巷5号', '\\/micomo\\/dushu\\/imag\\/kangxicaoyuan.png', '草原');
INSERT INTO `t_books` VALUES ('38', 'id_3554154', '孔庙', '\\/micomo\\/dushu\\/imag\\/kongmiao.png', '寺庙');
INSERT INTO `t_books` VALUES ('39', 'id_1401841', '郎木寺', '\\/micomo\\/dushu\\/imag\\/langmusi.png', '寺庙');
INSERT INTO `t_books` VALUES ('40', 'id_2035162', '阆中古城', '\\/micomo\\/dushu\\/imag\\/langzhonggucheng.png', '古城');
INSERT INTO `t_books` VALUES ('41', 'id_3665874', '乐山大佛', '\\/micomo\\/dushu\\/imag\\/leshandafo.png', '石刻');
INSERT INTO `t_books` VALUES ('42', 'id_7060185', '丽江', '\\/micomo\\/dushu\\/imag\\/lijiang.png', '古城');
INSERT INTO `t_books` VALUES ('43', 'id_1014578', '灵山大佛', '\\/micomo\\/dushu\\/imag\\/lingshandafo.png', '古建筑');
INSERT INTO `t_books` VALUES ('44', 'id_4908885', '灵隐寺', '\\/micomo\\/dushu\\/imag\\/lingyinsi.png', '寺庙');
INSERT INTO `t_books` VALUES ('45', 'id_20470917', '骊山', '\\/micomo\\/dushu\\/imag\\/lishan.png', '名山大川');
INSERT INTO `t_books` VALUES ('46', 'id_1209899', '留园', '\\/micomo\\/dushu\\/imag\\/liuyuan.png', '园林');
INSERT INTO `t_books` VALUES ('47', 'id_1203426', '龙门石窟', '\\/micomo\\/dushu\\/imag\\/longmenshiku.png', '石刻');
INSERT INTO `t_books` VALUES ('48', 'id_1803022', '楼兰古城', '\\/micomo\\/dushu\\/imag\\/loulangucheng.png', '古城');
INSERT INTO `t_books` VALUES ('49', 'id_1858410', '泸沽湖', '\\/micomo\\/dushu\\/imag\\/luguhu.png', '湖泊河流');
INSERT INTO `t_books` VALUES ('50', 'id_1789837', '庐山', '\\/micomo\\/dushu\\/imag\\/lushan.png', '名山大川');
INSERT INTO `t_books` VALUES ('51', 'id_1028842', '麦积山石窟', '\\/micomo\\/dushu\\/imag\\/maijishanshiku.png', '石刻');
INSERT INTO `t_books` VALUES ('52', 'id_1014825', '明孝陵', '\\/micomo\\/dushu\\/imag\\/mianxiaoling.png', '古建筑');
INSERT INTO `t_books` VALUES ('53', 'id_3406401', '莫高窟', '\\/micomo\\/dushu\\/imag\\/mogaoku.png', '石刻');
INSERT INTO `t_books` VALUES ('54', 'id_2035171', '墨脱', '\\/micomo\\/dushu\\/imag\\/motuo.png', '自然');
INSERT INTO `t_books` VALUES ('55', 'id_1071241', '纳木错', '\\/micomo\\/dushu\\/imag\\/namucuo.png', '自然');
INSERT INTO `t_books` VALUES ('56', 'id_1009257', '内蒙古大草原', '\\/micomo\\/dushu\\/imag\\/neimenggudacaoyuan.png', '草原');
INSERT INTO `t_books` VALUES ('57', 'id_2295163', '内蒙古呼伦贝尔大草原', '\\/micomo\\/dushu\\/imag\\/neimengguhulunbeierdacaoyuan.png', '草原');
INSERT INTO `t_books` VALUES ('58', 'id_1085860', '鸟巢', '\\/micomo\\/dushu\\/imag\\/niaochao.png', '现代建筑');
INSERT INTO `t_books` VALUES ('59', 'id_1002299', '潘阳湖', '\\/micomo\\/dushu\\/imag\\/panyanghu.png', '湖泊河流');
INSERT INTO `t_books` VALUES ('60', 'id_3006581', '普陀寺', '\\/micomo\\/dushu\\/imag\\/putuosi.png', '寺庙');
INSERT INTO `t_books` VALUES ('61', 'id_1029111', '青海湖', '\\/micomo\\/dushu\\/imag\\/qinghaihu.png', '湖泊河流');
INSERT INTO `t_books` VALUES ('62', 'id_1043008', '清晖园', '\\/micomo\\/dushu\\/imag\\/qinghuiyuan.png', '园林');
INSERT INTO `t_books` VALUES ('63', 'id_1205054', '秦始皇陵', '\\/micomo\\/dushu\\/imag\\/qinshihuangling.png', '古建筑');
INSERT INTO `t_books` VALUES ('64', 'id_1254588', '日喀则', '\\/micomo\\/dushu\\/imag\\/rikeze.png', '自然');
INSERT INTO `t_books` VALUES ('65', 'id_1011754', '赛里木湖', '\\/micomo\\/dushu\\/imag\\/sailimuhu.png', '湖泊河流');
INSERT INTO `t_books` VALUES ('66', 'id_1092335', '三峡大坝', '\\/micomo\\/dushu\\/imag\\/sanxiadaba.png', '现代建筑');
INSERT INTO `t_books` VALUES ('67', 'id_1807516', '中原福塔', '\\/micomo\\/dushu\\/imag\\/zhongyuanfuta.png', '现代建筑');
INSERT INTO `t_books` VALUES ('68', 'id_1018577', '周庄', '\\/micomo\\/dushu\\/imag\\/zhouzhuang.png', '古城');
INSERT INTO `t_books` VALUES ('69', 'id_2380307', '上海外滩', '\\/micomo\\/dushu\\/imag\\/shanghaiwaitan.png', '现代建筑');
INSERT INTO `t_books` VALUES ('70', 'id_1088581', '山海关', '\\/micomo\\/dushu\\/imag\\/shanhaiguan.png', '古建筑');
INSERT INTO `t_books` VALUES ('71', 'id_1088022', '神农架', '\\/micomo\\/dushu\\/imag\\/shennongjia.png', '自然');
INSERT INTO `t_books` VALUES ('72', 'id_4729583', '沈阳故宫', '\\/micomo\\/dushu\\/imag\\/shenyanggugong.png', '古建筑');
INSERT INTO `t_books` VALUES ('73', 'id_1431779', '狮子园', '\\/micomo\\/dushu\\/imag\\/shiziyuan.png', '园林');
INSERT INTO `t_books` VALUES ('74', 'id_1225977', '瘦西湖', '\\/micomo\\/dushu\\/imag\\/shouzihu.png', '湖泊河流');
INSERT INTO `t_books` VALUES ('75', 'id_1770782', '束河古镇', '\\/micomo\\/dushu\\/imag\\/shuheguzhen.png', '古城');
INSERT INTO `t_books` VALUES ('76', 'id_20427187', '水立方', '\\/micomo\\/dushu\\/imag\\/shuilifang.png', '现代建筑');
INSERT INTO `t_books` VALUES ('77', 'id_1039487', '太湖', '\\/micomo\\/dushu\\/imag\\/taihu.png', '湖泊河流');
INSERT INTO `t_books` VALUES ('78', 'id_1432596', '天安门', '\\/micomo\\/dushu\\/imag\\/tiananmen.png', '古建筑');
INSERT INTO `t_books` VALUES ('79', 'id_1082406', '天池', '\\/micomo\\/dushu\\/imag\\/tianchi.png', '湖泊河流');
INSERT INTO `t_books` VALUES ('80', 'id_1255624', '同里', '\\/micomo\\/dushu\\/imag\\/tongli.png', '古城');
INSERT INTO `t_books` VALUES ('81', 'id_6388661', '武当山', '\\/micomo\\/dushu\\/imag\\/wudangshan.png', '名山大川');
INSERT INTO `t_books` VALUES ('82', 'id_1449351', '武侯祠', '\\/micomo\\/dushu\\/imag\\/wuhouci.png', '寺庙');
INSERT INTO `t_books` VALUES ('83', 'id_26591331', '五台山', '\\/micomo\\/dushu\\/imag\\/wutaishan.png', '名山大川');
INSERT INTO `t_books` VALUES ('84', 'id_1863930', '乌镇', '\\/micomo\\/dushu\\/imag\\/wuzhen.png', '古城');
INSERT INTO `t_books` VALUES ('85', 'id_3071717', '香港迪士尼', '\\/micomo\\/dushu\\/imag\\/xianggangdishini.png', '现代建筑');
INSERT INTO `t_books` VALUES ('86', 'id_1212893', '响堂寺石窟', '\\/micomo\\/dushu\\/imag\\/xiangtangsishiku.png', '石刻');
INSERT INTO `t_books` VALUES ('87', 'id_2070844', '西双版纳', '\\/micomo\\/dushu\\/imag\\/xihuangbanna.png', '自然');
INSERT INTO `t_books` VALUES ('88', 'id_1767945', '锡林郭勒大草原', '\\/micomo\\/dushu\\/imag\\/xilinguoledacaoyuan.png', '草原');
INSERT INTO `t_books` VALUES ('89', 'id_4207781', '新疆伊犁新源那拉提草原', '\\/micomo\\/dushu\\/imag\\/xinjiangyilixinyuannalaticaoyuan.png', '草原');
INSERT INTO `t_books` VALUES ('90', 'id_1034282', '西园', '\\/micomo\\/dushu\\/imag\\/xiyuan.png', '园林');
INSERT INTO `t_books` VALUES ('91', 'id_4920007', '阳朔', '\\/micomo\\/dushu\\/imag\\/yangshuo.png', '古城');
INSERT INTO `t_books` VALUES ('92', 'id_4187411', '羊卓雍湖', '\\/micomo\\/dushu\\/imag\\/yangzhuoyonghu.png', '湖泊河流');
INSERT INTO `t_books` VALUES ('93', 'id_1056315', '颐和园', '\\/micomo\\/dushu\\/imag\\/yiheyuan.png', '园林');
INSERT INTO `t_books` VALUES ('94', 'id_24754316', '永定土楼', '\\/micomo\\/dushu\\/imag\\/yongdingtulou.png', '石刻');
INSERT INTO `t_books` VALUES ('95', 'id_1036490', '雍和宫', '\\/micomo\\/dushu\\/imag\\/yonghegong.png', '古建筑');
INSERT INTO `t_books` VALUES ('96', 'id_1394364', '圆明园', '\\/micomo\\/dushu\\/imag\\/yuanmingyuan.png', '园林');
INSERT INTO `t_books` VALUES ('97', 'id_1034329', '榆林窟', '\\/micomo\\/dushu\\/imag\\/yulinku.png', '石刻');
INSERT INTO `t_books` VALUES ('98', 'id_3026879', '拙政园', '\\/micomo\\/dushu\\/imag\\/zhuozhengyuan.png', '园林');
INSERT INTO `t_books` VALUES ('99', 'id_6021440', '云冈石窟', '\\/micomo\\/dushu\\/imag\\/yungangsishiku.png', '石刻');
INSERT INTO `t_books` VALUES ('100', 'id_1068920', '巴音布鲁克大草原', '\\/micomo\\/dushu\\/imag\\/bayinbulukedacaoyuan.png', '草原');

-- ----------------------------
-- Table structure for `t_num`
-- ----------------------------
DROP TABLE IF EXISTS `t_num`;
CREATE TABLE `t_num` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `num` int(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_num
-- ----------------------------
INSERT INTO `t_num` VALUES ('1', '6');

-- ----------------------------
-- Table structure for `t_result`
-- ----------------------------
DROP TABLE IF EXISTS `t_result`;
CREATE TABLE `t_result` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openId` varchar(50) NOT NULL,
  `code` varchar(20) NOT NULL,
  `timeStr` varchar(30) NOT NULL,
  `status` int(2) NOT NULL COMMENT '0 待开奖 1 中奖 2 未中奖',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_result
-- ----------------------------
INSERT INTO `t_result` VALUES ('104', 'oHbQRwX2WKRT0pdNvFKLUErVjjWg', '4901140442', '20161026140442', '1');
INSERT INTO `t_result` VALUES ('105', 'oHbQRwX2WKRT0pdNvFKLUErVjjWg', '4824140442', '20161026140442', '2');
INSERT INTO `t_result` VALUES ('106', 'oHbQRwX2WKRT0pdNvFKLUErVjjWg', '2083140442', '20161026140442', '0');
