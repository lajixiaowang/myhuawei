-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2019-06-04 06:10:59
-- 服务器版本： 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `product`
--

-- --------------------------------------------------------

--
-- 表的结构 `huawei`
--

CREATE TABLE `huawei` (
  `id` int(20) NOT NULL COMMENT '商品id',
  `title` varchar(255) NOT NULL COMMENT '商品标题',
  `price` float NOT NULL COMMENT '商品价格',
  `num` int(6) NOT NULL COMMENT '库存数量',
  `pic` varchar(255) NOT NULL COMMENT '商品图片',
  `details` varchar(255) NOT NULL COMMENT '商品细节描述',
  `details1` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `huawei`
--

INSERT INTO `huawei` (`id`, `title`, `price`, `num`, `pic`, `details`, `details1`) VALUES
(1, '荣耀V20', 2699, 33, '[{"src":"img/data1.png"},{"src":"img/b1.jpg"}]', '限时优惠600元  ', '荣耀V20 麒麟980 魅眼全视屏 4800万AI超清摄影 全网通6GB+128GB 标配版 幻夜黑'),
(2, 'HUAWEI Mate 20', 3499, 33, '[{"src":"img/data2.png"},{"src":"img/b1.jpg"}]', '领券减200+6期免息  ', '\r\n\r\n HUAWEI Mate 20 6GB+64GB 全网通版（亮黑色）\r\n'),
(3, '荣耀8X', 1199, 33, '[{"src":"img/data3.png"},{"src":"img/b1.jpg"}]', '优惠200元', '荣耀8X 千元屏霸 高屏占比 2000万AI双摄 全网通 4GB+64GB（魅海蓝）'),
(4, '华为畅享 9e', 999, 33, '[{"src":"img/data4.png"},{"src":"img/b1.jpg"}]', '32G版下单立减50  ', '华为畅享 9e 千元珍珠屏 3GB+32GB 全网通标配版（幻夜黑）'),
(5, '荣耀10青春版', 1299, 33, '[{"src":"img/data5.png"},{"src":"img/b1.jpg"}]', '最高优惠200元', '荣耀10青春版 幻彩渐变 2400万AI自拍 6.21英寸高屏占比珍珠屏 全网通 4GB+64GB（渐变蓝）'),
(6, 'HUAWEI nova 4', 2499, 33, '[{"src":"img/data6.png"},{"src":"img/b1.jpg"}]', '最高直降300元', 'HUAWEI nova 4 4800万超广角三摄 自拍极点全面屏 高配 8GB+128GB 全网通版（贝母白）'),
(7, '荣耀 10', 1799, 33, '[{"src":"img/data7.png"},{"src":"img/b1.jpg"}]', '最高优惠600元', '荣耀10 GT游戏加速 AIS手持夜景 AI摄影手机 6GB+64GB 幻影紫 全网通 双卡双待 荣耀10GT'),
(8, '荣耀MagicBook 2019 锐龙版', 9999, 44, '[{"src":"img/data8.png"},{"src":"img/b1.jpg"}]', '最高直降200元 享分期免息 ', '【新品】荣耀MagicBook 2019 锐龙版 14英寸轻薄笔记本电脑 Ryzen 5 3500U 8GB 512GB（冰河银）');

-- --------------------------------------------------------

--
-- 表的结构 `product`
--

CREATE TABLE `product` (
  `id` int(20) NOT NULL COMMENT '商品id',
  `title` varchar(255) NOT NULL COMMENT '商品标题',
  `price` float NOT NULL COMMENT '商品价格',
  `num` int(16) NOT NULL COMMENT '库存数量',
  `pic` varchar(255) NOT NULL COMMENT '商品价格',
  `details` varchar(255) NOT NULL COMMENT '商品细节描述'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `product`
--

INSERT INTO `product` (`id`, `title`, `price`, `num`, `pic`, `details`) VALUES
(1, '8848 钛金手机M5祥龙系列智能商务加密轻奢手机双卡双待全网通4G 8核6G+256G内存 玄黑色蜥蜴皮\r\nM5祥龙版限量发售、钛合金精雕图腾、镶嵌天然宝石、6期白条免息【M4尊享版预售立省7100元】5月20日-31日，点击预定', 29999, 33, '[{src="//img14.360buyimg.com/n1/s450x450_jfs/t1/7040/7/9872/104883/5c1b37c8Eef1ee824/786b7382e75b9361.jpg"}]', '商品名称：8848 钛金手机M5祥龙系列智能商务加密轻奢手机双卡双待全网通4G 8核6G+256G内存 玄黑色蜥蜴皮商品编号：40045575194店铺： 8848手机官方旗舰店商品毛重：1.94kg系统：安卓（Android）拍照特点：光学变焦网络制式：4G LTE LTE-TDD/LTE-FDD移动联通双4G4G LTE网络特性：其他'),
(2, '韩国进口火鸡面超辣鸡肉味拌面双倍辣方便面核弹火鸡面10袋 1份\r\n开始发货咯~韩国泡菜辣白菜~买2送1同款、平均每袋4.6元，性价比超高', 48.5, 44, '[{src="//img14.360buyimg.com/n1/jfs/t11965/54/468171745/560508/4584305/59f1713aNc5113800.jpg"}]', '商品名称：韩国进口火鸡面超辣鸡肉味拌面双倍辣方便面核弹火鸡面10袋 1份商品编号：18720768609店铺： 盛源来食品专营店'),
(3, '【动漫城】宅电舍动漫周边咸鱼王毛绒公仔玩具靠枕抱枕舰队collection舰 咸鱼抱枕 90厘米*30厘米', 55, 123, '[{src="//img14.360buyimg.com/n1/jfs/t5962/273/2666385047/77433/f0658a2b/594344c9N1a94e7f7.jpg"}]', '商品名称：【动漫城】宅电舍动漫周边咸鱼王毛绒公仔玩具靠枕抱枕舰队collection舰 咸鱼抱枕 90厘米*30厘米商品编号：13206313634店铺： 宅电舍旗舰店'),
(4, '欧米茄(OMEGA)手表 碟飞系列机械男表424.13.40.20.03.003', 16599, 56, '[{src="//img11.360buyimg.com/n1/jfs/t19336/76/940946068/198239/3f3dfb4f/5ab07403N779be365.jpg"}]', '商品名称：欧米茄424.13.40.20.03.003商品编号：6455626商品毛重：2.42kg'),
(5, '程序员的自我修养 写给程序员的思考书 程序员职业生涯', 35.2, 100, '[{src="//img13.360buyimg.com/n1/jfs/t4132/131/3755865630/39843/7a30ce07/58e7194cN926b1228.jpg"}]', '店铺： 蓝墨水图书专营店出版社： 清华大学出版社'),
(6, '\r\n绝地求生刺激战场大逃杀吃鸡游戏周边三级头盔三级包背包三级腰包三级甲', 137, 88, '[{src="//img13.360buyimg.com/n1/jfs/t21055/159/664344655/146042/efd7a2f2/5b14fbc4Na897add2.jpg"}]', '商品名称：绝地求生刺激战场大逃杀吃鸡游戏周边三级头盔三级包背包三级腰包三级甲cosplay道具军迷护具抖音同款 3级头 初代版 均码商品编号：28896173568店铺： 弹痕旗舰店');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `huawei`
--
ALTER TABLE `huawei`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `huawei`
--
ALTER TABLE `huawei`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '商品id', AUTO_INCREMENT=9;
--
-- 使用表AUTO_INCREMENT `product`
--
ALTER TABLE `product`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '商品id', AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
