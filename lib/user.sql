-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2019-06-04 06:13:24
-- 服务器版本： 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wzm`
--

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `user_id` int(20) NOT NULL COMMENT '用戶id',
  `user_name` varchar(20) NOT NULL COMMENT '用戶名',
  `user_password` varchar(20) NOT NULL COMMENT '用戶密碼',
  `user_email` varchar(20) NOT NULL COMMENT '用戶郵箱',
  `user_sex` tinyint(2) NOT NULL COMMENT '用戶性別',
  `user_age` int(4) NOT NULL COMMENT '用戶年齡'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_password`, `user_email`, `user_sex`, `user_age`) VALUES
(1, '李志聪', '123456', '123456@qq.com', 1, 28),
(2, '刘主任', '123456', '123@qq.com', 1, 18),
(29, '王先生sa', '121808', '2073893883@qq.com', 1, 23),
(5, 'fubecome', '666666', '4238@qq.com', 1, 30),
(6, '豪哥', '24567', '37772@qq.com', 1, 60),
(13, 'zhangsandege', '111', '2073893883@qq.com', 1, 23),
(20, '优秀的小王', '121808', '2073893883@qq.com', 1, 34),
(15, '傅经理', '11', '2073893883@qq.com', 1, 23),
(28, '王先生eryg', '121808', '2073893883@qq.com', 1, 23),
(27, '王先生aaa', '121808', '2073893883@qq.com', 1, 23),
(26, '王先生a', '121808', '2073893883@qq.com', 1, 23),
(25, '王先生', '121808', '2073893883@qq.com', 1, 23),
(32, '傅经理s', 'aaaaaaa', '2073893883@qq.com', 1, 23),
(33, '王先生67u', '121808', '2073893883@qq.com', 1, 23),
(34, '王先生e', '121', '2073893883@qq.com', 1, 23),
(35, '王先生ii', '1218', '2073893883@qq.com', 1, 23),
(36, '傅经理safs', '121808', '2073893883@qq.com', 1, 23),
(37, '其', '121808', '2073893883@qq.com', 1, 23),
(38, '任基佬', '121808', '2073893883@qq.com', 1, 77),
(39, '扬基佬', '121808', '2073893883@qq.com', 1, 34),
(40, '好几老', '121808', '2073893883@qq.com', 1, 18),
(41, '老学长', '121808', '2073893883@qq.com', 1, 30),
(42, '任基佬的养鸡佬', '121808', '2073893880@qq.com', 1, 77),
(46, '法制给', '121808', '2073893883@qq.com', 1, 34),
(45, '郝基佬', '121808', '2073893883@qq.com', 1, 77);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(20) NOT NULL AUTO_INCREMENT COMMENT '用戶id', AUTO_INCREMENT=47;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
