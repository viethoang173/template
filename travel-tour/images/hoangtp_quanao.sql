-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th1 11, 2024 lúc 09:05 PM
-- Phiên bản máy phục vụ: 5.5.59
-- Phiên bản PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `hoangtp_quanao`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(32) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `fullname` varchar(34) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT '1',
  `customer_id` int(11) NOT NULL,
  `lft` int(11) DEFAULT NULL,
  `rght` int(11) DEFAULT NULL,
  `phone` varchar(64) DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 NOT NULL,
  `type` int(11) DEFAULT '2' COMMENT '1 admin, 2 nhan vien, 3 ctv	',
  `created` int(11) DEFAULT NULL,
  `role` text,
  `status` int(11) DEFAULT '1',
  `last_login` int(11) DEFAULT NULL,
  `chucvu` varchar(255) DEFAULT NULL,
  `gioithieu` text,
  `quatrinh` text,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `linked` varchar(255) DEFAULT NULL,
  `is_show_phone_cus` int(11) DEFAULT '1',
  `banner` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `is_admin` int(11) DEFAULT '0',
  `is_show_debt` int(11) DEFAULT '1',
  `is_show_phone_supp` int(11) DEFAULT '1',
  `token` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `admins`
--

INSERT INTO `admins` (`id`, `username`, `link`, `password`, `fullname`, `email`, `parent_id`, `group_id`, `customer_id`, `lft`, `rght`, `phone`, `address`, `type`, `created`, `role`, `status`, `last_login`, `chucvu`, `gioithieu`, `quatrinh`, `facebook`, `twitter`, `linked`, `is_show_phone_cus`, `banner`, `avatar`, `is_admin`, `is_show_debt`, `is_show_phone_supp`, `token`) VALUES
(1, 'admin', NULL, '21232f297a57a5a743894a0e4a801fc3', 'Administrator', 'kma@gmail.com', 0, 1, 1, NULL, NULL, '01123434556', '', 1, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', '', 1, 1, 1, 'WnBPNzIzamhDMVRkMC9Fenp4Rm1zb24waWdSbTdVMHFBV1M3Sms1OGlrYz0='),
(38, 'hoangkh', NULL, 'c4ca4238a0b923820dcc509a6f75849b', 'viet hoang', 'hoang@gmail.com', NULL, 3, 0, NULL, NULL, '0359698828', 'ha noi', 2, 1702302725, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 0, 1, 1, 'am5GL0w4OGZIQTA2Rzl3MWZibTNINXBESnJOMkhEaWYxSVk2YjJMVFVFND0='),
(39, 'haong1', NULL, 'c4ca4238a0b923820dcc509a6f75849b', '1', 'hoang@gmail.com', NULL, 3, 0, NULL, NULL, '0359698822', '1', 2, 1702304578, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 0, 1, 1, NULL),
(40, 'huong', NULL, 'ac62ed7e7335ff1d1a725a1388b153ec', '111', 'hoang111@gmail.com', NULL, 3, 0, NULL, NULL, '0344444444', 'ha noi', 2, 1702304661, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 0, 1, 1, NULL),
(41, 'ngoc1', NULL, '95799b29ab137a5ffab2d3133d66dadc', 'ngoc hehe', 'hoag@gmail.com', NULL, 3, 0, NULL, NULL, '0458688686', 'ha noi', 2, 1702304922, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 0, 1, 1, NULL),
(42, 'ng1', NULL, '96e79218965eb72c92a549dd5a330112', 'hangx', 'hoang!!!@gmail.com', NULL, 3, 0, NULL, NULL, '0359696969', 'hoang', 2, 1702305077, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 0, 1, 1, NULL),
(57, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, '', 2, 1703239306, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 0, 1, 1, NULL),
(58, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, '', 2, 1703239385, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 0, 1, 1, NULL),
(44, 'haiduong749', NULL, 'e10adc3949ba59abbe56e057f20f883e', 'LE', 'haiduong749@gmail.com', NULL, 3, 20, NULL, NULL, '0866791172', 'Đdd', 2, 1702307019, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 0, 1, 1, 'WGJnSHRsMDdCek8vdlI2L3lFSUJHaHZJUHRGZXQ4T0RiK0VPM1ZuNXhGMD0='),
(55, NULL, NULL, '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, '', 2, 1703239172, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 0, 1, 1, NULL),
(56, NULL, NULL, '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, '', 2, 1703239285, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 0, 1, 1, NULL),
(46, 'hangxw', NULL, '4297f44b13955235245b2497399d7a93', 'hoang hoang', 'hoang@gmail.com', NULL, 3, 22, NULL, NULL, '0359688882', 'hangx xs', 2, 1702568461, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 0, 1, 1, NULL),
(59, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, '', 2, 1703239391, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 0, 1, 1, NULL),
(60, 'haiduong7499', NULL, '18606036d35af97f3d40eb64042c5fc8', 'Duong', 'leduong@gmail.com', NULL, 3, 31, NULL, NULL, '0988666777', '137', 2, 1703694917, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 0, 1, 1, 'UlEvMXAyQU1xUWNqZy91eDllOUx0M2VaWThsL1RrTEQwbk9vZFBxUTZCRT0='),
(61, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, '', 2, 1703701579, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'https://hoangtp.webi.vn/app/webroot/uploads/images/2/2023/12/28/rn-image-picker-lib-temp-bc6a1e50-ebfc-4380-9238-d2e18cecb939.jpg', 0, 1, 1, NULL),
(54, 'hoangviet', NULL, '7269531eea1835597e3dafce2d066e02', 'Nguyen Viet Hoang', 'hoang@gmail.com', NULL, 3, 30, NULL, NULL, '0355074830', 'ha noi', 2, 1703238059, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 0, 1, 1, NULL),
(53, 'viethoanx', NULL, 'd2b9dc619e6f3dcf99db60d53309f7ff', 'Viet hoang ', 'hoang@gmail.com', NULL, 2, 29, NULL, NULL, '0359597777', 'ha noi', 2, 1703231223, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 0, 1, 1, NULL),
(62, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, '', 2, 1703701687, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'https://hoangtp.webi.vn/app/webroot/uploads/images/2/2023/12/28/rn-image-picker-lib-temp-f33cc8dc-7e34-4f75-aa32-998c3629afe5.jpg', 0, 1, 1, NULL),
(63, 'hoangnv', NULL, 'c4ca4238a0b923820dcc509a6f75849b', 'hoang n v', 'hoang@gmail.com', NULL, 2, 32, NULL, NULL, '0358886666', 'ha noi', 2, 1703733329, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 0, 1, 1, 'T2hyZTNQamlPempXY2U4b2xJTW9lWUk5TTZZVlducWxWT0QrUTJReFBuTT0='),
(64, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, '', 2, 1703733419, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '', 0, 1, 1, NULL),
(65, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, '', 2, 1703733939, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '', 0, 1, 1, NULL),
(66, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, '', 2, 1703734016, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '', 0, 1, 1, NULL),
(67, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, '', 2, 1703734101, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '', 0, 1, 1, NULL),
(68, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, '', 2, 1703734128, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '', 0, 1, 1, NULL),
(69, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, '', 2, 1703734188, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '', 0, 1, 1, NULL),
(70, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, '', 2, 1703734234, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '', 0, 1, 1, NULL),
(71, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, '', 2, 1703734306, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '', 0, 1, 1, NULL),
(72, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, '', 2, 1703734315, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '', 0, 1, 1, NULL),
(73, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, '', 2, 1703734386, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '', 0, 1, 1, NULL),
(74, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, '', 2, 1703734631, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '', 0, 1, 1, NULL),
(75, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, '', 2, 1703734685, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '', 0, 1, 1, NULL),
(76, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, '', 2, 1703734724, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '', 0, 1, 1, NULL),
(77, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, '', 2, 1703734791, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'test', 0, 1, 1, NULL),
(78, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, NULL, NULL, NULL, '', 2, 1703735077, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 0, 1, 1, NULL),
(79, 'hoangnv1', NULL, 'e19183ce8aaef3ab11636acb5fc2e019', 'hoang haong', 'hoang@gmail.com', NULL, 3, 33, NULL, NULL, '0359698877', 'ha noi', 2, 1703736425, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 0, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `advs`
--

CREATE TABLE `advs` (
  `id` int(11) NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  `num` varchar(255) DEFAULT NULL,
  `template` varchar(255) DEFAULT NULL,
  `reports` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT '0',
  `price2y` int(11) DEFAULT '0',
  `price3y` int(11) DEFAULT '0',
  `price4y` int(11) DEFAULT '0',
  `price5y` int(11) DEFAULT '0',
  `adv_category` varchar(255) DEFAULT NULL,
  `pos` int(11) DEFAULT '0',
  `node_id` int(11) DEFAULT NULL,
  `featured` int(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `agencies`
--

CREATE TABLE `agencies` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `title_en` varchar(255) DEFAULT NULL,
  `address_en` varchar(255) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `mien_id` int(11) DEFAULT '0',
  `image` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `map` varchar(255) DEFAULT NULL,
  `hotline` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banners`
--

CREATE TABLE `banners` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `title_en` varchar(255) DEFAULT NULL,
  `description` text,
  `image` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT '#',
  `type` varchar(32) DEFAULT NULL,
  `category_id` int(11) DEFAULT '0',
  `bosuutap_id` int(11) DEFAULT NULL,
  `pos` int(11) DEFAULT '0',
  `status` int(1) DEFAULT '0' COMMENT '0 cho duyet, 1 da duyet'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Baohangs`
--

CREATE TABLE `Baohangs` (
  `id` int(11) NOT NULL,
  `node_id` int(11) DEFAULT NULL,
  `name_kh` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `cuahang` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `tgbaohanh` int(11) DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  `expired` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '0' COMMENT '0: là chưa kích hoạt | 1: là đã kích hoạt'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bosuutaps`
--

CREATE TABLE `bosuutaps` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `title_en` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `home` int(11) DEFAULT '0',
  `pos` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `carts`
--

CREATE TABLE `carts` (
  `id` int(11) NOT NULL,
  `bill_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `size_id` int(11) DEFAULT NULL,
  `color_id` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT '0',
  `old_quantity` int(11) DEFAULT '0',
  `type` int(11) DEFAULT NULL COMMENT '1: giá gốc, 2: giá buôn, 3: giá lẻ, 4: giá CTV, 5: customized',
  `custom_price` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `u_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `carts`
--

INSERT INTO `carts` (`id`, `bill_id`, `order_id`, `size_id`, `color_id`, `price`, `quantity`, `old_quantity`, `type`, `custom_price`, `product_id`, `u_id`) VALUES
(57, 99, 39, 3, 10, 300000, 2, 0, 2, NULL, 8, 1),
(58, 99, 39, 2, 10, 300000, 2, 0, 2, NULL, 8, 1),
(59, 99, 39, 30, 10, 300000, 2, 0, 2, NULL, 8, 0),
(60, 99, 39, 32, 10, 300000, 2, 0, 2, NULL, 8, 0),
(61, 100, 43, 3, 10, 150000, 1, 0, 2, NULL, 8, 0),
(62, 100, 43, 2, 10, 150000, 1, 0, 2, NULL, 8, 0),
(63, 100, 43, 3, 11, 150000, 1, 0, 2, NULL, 8, 1),
(64, 100, 43, 2, 11, 150000, 1, 0, 2, NULL, 8, 0),
(65, 100, 44, 38, 25, 600000, 2, 0, 2, NULL, 10, 0),
(66, 100, 44, 37, 25, 600000, 2, 0, 2, NULL, 10, 0),
(67, 100, 44, 38, 27, 300000, 1, 0, 2, NULL, 10, 0),
(68, 100, 44, 37, 27, 300000, 1, 0, 2, NULL, 10, 0),
(69, 101, 45, 38, 25, 300000, 1, 0, 2, NULL, 10, 0),
(70, 101, 45, 37, 25, 300000, 1, 0, 2, NULL, 10, 0),
(95, 106, 60, 38, 25, 600000, 2, 0, 2, NULL, 10, 0),
(96, 106, 60, 37, 25, 600000, 2, 0, 2, NULL, 10, 0),
(97, 106, 61, 3, 10, 150000, 1, 0, 2, NULL, 8, 0),
(98, 106, 61, 2, 10, 150000, 1, 0, 2, NULL, 8, 0),
(99, 107, 62, 3, 10, 750000, 5, 0, 2, NULL, 8, 0),
(100, 107, 62, 2, 10, 750000, 5, 0, 2, NULL, 8, 0),
(103, 108, 64, 3, 10, 150000, 1, 0, 2, NULL, 8, 0),
(104, 108, 64, 2, 10, 150000, 1, 0, 2, NULL, 8, 0),
(105, 109, 70, 3, 10, 150000, 1, 0, 2, NULL, 8, 0),
(108, 111, NULL, 38, 25, 600000, 2, 0, 2, NULL, 10, 0),
(109, 111, NULL, 37, 25, 600000, 2, 0, 2, NULL, 10, 0),
(110, 111, 109, 3, 10, 150000, 1, 0, 2, NULL, 8, 0),
(111, 111, 109, 2, 10, 150000, 1, 0, 2, NULL, 8, 0),
(112, 112, NULL, 3, 10, 150000, 1, 0, 2, NULL, 8, 0),
(113, 112, NULL, 2, 10, 150000, 1, 0, 2, NULL, 8, 0),
(114, 113, NULL, 3, 10, 150000, 1, 0, 2, NULL, 8, 0),
(115, 113, NULL, 2, 10, 150000, 1, 0, 2, NULL, 8, 0),
(116, 114, NULL, 38, 25, 600000, 2, 0, 2, NULL, 10, 0),
(117, 114, NULL, 37, 25, 600000, 2, 0, 2, NULL, 10, 0),
(118, 114, 117, 3, 10, 150000, 1, 0, 2, NULL, 8, 0),
(119, 114, 117, 2, 10, 150000, 1, 0, 2, NULL, 8, 0),
(120, 115, 81, 3, 10, 50000000, 1, 0, 5, 50000000, 8, 0),
(121, 116, 82, 3, 10, 3000000, 20, 1, 2, NULL, 8, 0),
(122, 116, 82, 2, 10, 3000000, 20, 10, 2, NULL, 8, 0),
(123, 118, NULL, 38, 25, 600000, 2, 0, 2, NULL, 10, 0),
(124, 118, NULL, 37, 25, 600000, 2, 0, 2, NULL, 10, 0),
(125, 118, 124, 3, 10, 150000, 1, 0, 2, NULL, 8, 0),
(126, 118, 124, 2, 10, 150000, 1, 0, 2, NULL, 8, 0),
(127, 119, NULL, 38, 25, 600000, 2, 0, 2, NULL, 10, 0),
(128, 119, NULL, 37, 25, 600000, 2, 0, 2, NULL, 10, 0),
(129, 119, 128, 3, 10, 150000, 1, 0, 2, NULL, 8, 0),
(130, 119, 128, 2, 10, 150000, 1, 0, 2, NULL, 8, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `title` varchar(64) DEFAULT NULL,
  `description` text,
  `page_title` varchar(255) DEFAULT NULL,
  `content` text,
  `content_en` text,
  `node_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `images` text,
  `videos` text,
  `lft` int(11) DEFAULT NULL,
  `rght` int(11) DEFAULT NULL,
  `seo_title` varchar(255) DEFAULT NULL,
  `seo_keyword` varchar(255) DEFAULT NULL,
  `seo_description` text,
  `focus_keyword` varchar(255) DEFAULT NULL,
  `menu` int(1) DEFAULT '1',
  `menu_1` int(1) DEFAULT '0',
  `menu_2` int(1) DEFAULT '0',
  `menu_3` int(11) DEFAULT '0',
  `menu_4` int(11) DEFAULT '0',
  `sidebar` int(1) DEFAULT '0',
  `footer` int(11) DEFAULT '0',
  `footer_1` int(1) DEFAULT '0',
  `footer_2` int(1) DEFAULT '0',
  `footer_3` int(1) DEFAULT '0',
  `footer_4` int(1) DEFAULT '0',
  `footer_5` int(1) DEFAULT '0',
  `type` varchar(12) DEFAULT 'news',
  `navbar` int(1) DEFAULT '0',
  `home` int(1) DEFAULT '0',
  `word_count` int(11) DEFAULT '1',
  `template` varchar(32) DEFAULT NULL,
  `mobile` int(1) DEFAULT '1',
  `hang_id_list` text,
  `filter_id_list` text,
  `filter_price` text,
  `sub_type` int(1) DEFAULT NULL,
  `pos` int(11) DEFAULT '0',
  `status` int(11) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `title`, `description`, `page_title`, `content`, `content_en`, `node_id`, `parent_id`, `link`, `image`, `images`, `videos`, `lft`, `rght`, `seo_title`, `seo_keyword`, `seo_description`, `focus_keyword`, `menu`, `menu_1`, `menu_2`, `menu_3`, `menu_4`, `sidebar`, `footer`, `footer_1`, `footer_2`, `footer_3`, `footer_4`, `footer_5`, `type`, `navbar`, `home`, `word_count`, `template`, `mobile`, `hang_id_list`, `filter_id_list`, `filter_price`, `sub_type`, `pos`, `status`) VALUES
(1, 'Quần áo', '', '', '', NULL, 1, NULL, '', '', NULL, NULL, 1, 2, '', '', '', NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'product', 0, 0, 2, '', 1, '', '', NULL, NULL, 0, 1),
(2, 'Giày dép', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, 3, 4, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'product', 0, 0, 1, NULL, 1, NULL, NULL, NULL, NULL, 0, 1),
(3, 'Váy', NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, 5, 10, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'product', 0, 0, 1, NULL, 1, NULL, NULL, NULL, NULL, 0, 1),
(5, 'Váy ngắn', NULL, NULL, NULL, NULL, 5, 3, NULL, NULL, NULL, NULL, 6, 7, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'product', 0, 1, 1, NULL, 1, NULL, NULL, NULL, NULL, 0, 1),
(6, 'Váy dài', NULL, NULL, NULL, NULL, 9, 3, NULL, NULL, NULL, NULL, 8, 9, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'product', 0, 1, 1, NULL, 1, NULL, NULL, NULL, NULL, 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category_linkeds`
--

CREATE TABLE `category_linkeds` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `node_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `title` varchar(64) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `mien_id` int(11) DEFAULT '0',
  `type` int(11) DEFAULT NULL COMMENT '1.TP TW, 2. Tình',
  `pos` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `clouds`
--

CREATE TABLE `clouds` (
  `id` int(11) NOT NULL,
  `node_id` int(11) DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `cpu` varchar(255) DEFAULT NULL,
  `hdd` varchar(255) DEFAULT NULL,
  `ram` varchar(255) DEFAULT NULL,
  `bandwidth` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT '0',
  `price2y` int(11) DEFAULT '0',
  `price3y` int(11) DEFAULT '0',
  `price4y` int(11) DEFAULT '0',
  `price5y` int(11) DEFAULT '0',
  `cloud_category` varchar(255) DEFAULT NULL,
  `tab` varchar(255) DEFAULT NULL,
  `pos` int(11) DEFAULT '0',
  `featured` int(1) DEFAULT '0',
  `price_hide` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `collections`
--

CREATE TABLE `collections` (
  `id` int(11) NOT NULL,
  `description` text,
  `content` text,
  `description_en` text,
  `description_jp` text,
  `content_en` text,
  `content_jp` text,
  `node_id` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `image_single` varchar(255) DEFAULT NULL,
  `images` text,
  `seo_title` varchar(255) DEFAULT NULL,
  `seo_keyword` varchar(255) DEFAULT NULL,
  `seo_description` text,
  `focus_keyword` varchar(255) DEFAULT NULL,
  `chudautu` varchar(255) DEFAULT NULL,
  `loaihinh` varchar(255) DEFAULT NULL,
  `mattien` varchar(255) DEFAULT NULL,
  `congnang` varchar(255) DEFAULT NULL,
  `donvitk` varchar(255) DEFAULT NULL,
  `namthuchien` varchar(255) DEFAULT NULL,
  `diachi` varchar(255) DEFAULT NULL,
  `sotang` varchar(255) DEFAULT NULL,
  `dientich` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `colors`
--

CREATE TABLE `colors` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `title` varchar(64) DEFAULT NULL,
  `title_en` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` text,
  `description_en` text,
  `content` text,
  `content_en` text,
  `website` varchar(255) DEFAULT NULL,
  `featured` int(11) DEFAULT '0',
  `pos` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `colors`
--

INSERT INTO `colors` (`id`, `parent_id`, `title`, `title_en`, `slug`, `image`, `description`, `description_en`, `content`, `content_en`, `website`, `featured`, `pos`) VALUES
(1, NULL, 'White', NULL, NULL, NULL, NULL, NULL, '#ff0000', NULL, NULL, 0, 1),
(2, NULL, 'Blue', NULL, NULL, NULL, NULL, NULL, '#0000ff', NULL, NULL, 0, 1),
(3, NULL, 'Ping', NULL, NULL, NULL, NULL, NULL, '#ff00f6', NULL, NULL, 0, 1),
(4, NULL, 'Yellow', NULL, NULL, NULL, NULL, NULL, '#516a00', NULL, NULL, 0, 1),
(5, NULL, 'Balck', NULL, NULL, NULL, NULL, NULL, '#0a0a0a', NULL, NULL, 0, 1),
(7, NULL, 'Sky', NULL, NULL, NULL, NULL, NULL, '#00fafa', NULL, NULL, 0, 1),
(8, NULL, 'Brown', NULL, NULL, NULL, NULL, NULL, '#820000', NULL, NULL, 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `colos`
--

CREATE TABLE `colos` (
  `id` int(11) NOT NULL,
  `node_id` int(11) DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `khonggian` varchar(128) DEFAULT NULL,
  `ocam` varchar(128) DEFAULT NULL,
  `bandwidth` varchar(255) DEFAULT NULL,
  `bwtrongnc` varchar(128) DEFAULT NULL,
  `bwqte` varchar(128) DEFAULT NULL,
  `csnguon` varchar(128) DEFAULT NULL,
  `ip` varchar(128) DEFAULT NULL,
  `uptime` varchar(128) DEFAULT NULL,
  `price` int(11) DEFAULT '0',
  `price2y` int(11) DEFAULT '0',
  `price3y` int(11) DEFAULT '0',
  `price4y` int(11) DEFAULT '0',
  `price5y` int(11) DEFAULT '0',
  `colo_category` varchar(255) DEFAULT NULL,
  `tab` varchar(255) DEFAULT NULL,
  `pos` int(11) DEFAULT '0',
  `featured` int(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `node_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `fullname` varchar(64) DEFAULT NULL,
  `content` text,
  `phone` varchar(128) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `website` varchar(128) DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `title` text,
  `fullname` varchar(64) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(64) DEFAULT NULL,
  `content` text,
  `age` varchar(255) DEFAULT NULL,
  `khoahoc` varchar(255) DEFAULT NULL,
  `form` int(11) DEFAULT '0' COMMENT '0 - Liên hệ, 1 - Tư vấn kiểm tra (Trang chủ) 2- Tư vấn kiểm tra (Menu đăng ký học thử) 3- Đăng ký học thử (Trang chủ) 4- Menu đăng ký học thử (Trang chủ) 5- Đăng ký tư vấn (Trang khóa học) 6- Đăng ký khóa học (Landing Page) 7- Đăng ký tư vấn (Landing Page) 8- Kiểm tra trình độ miễn phí (Landing Page)',
  `status` int(1) DEFAULT '0',
  `created` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coupons`
--

CREATE TABLE `coupons` (
  `id` int(11) NOT NULL,
  `code` varchar(64) DEFAULT NULL,
  `price` int(11) DEFAULT '0',
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cuahangs`
--

CREATE TABLE `cuahangs` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `pos` int(11) DEFAULT '0',
  `bank_stk` varchar(20) CHARACTER SET utf8mb4 DEFAULT NULL,
  `bank_fullname` varchar(255) DEFAULT NULL,
  `bank_nganhang` varchar(255) DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `phone_name` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `qr_bank` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `qr_zalo` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `u_id` int(11) DEFAULT NULL,
  `chamngay` int(11) DEFAULT NULL,
  `chamdoanhthu` int(11) DEFAULT NULL,
  `lesize` int(11) DEFAULT NULL,
  `tudongtinhgia` int(11) DEFAULT NULL,
  `chenhgiale` int(11) DEFAULT NULL,
  `chenhgiactv` int(11) DEFAULT NULL,
  `image` text CHARACTER SET utf8mb4,
  `banner` text CHARACTER SET utf8mb4
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `cuahangs`
--

INSERT INTO `cuahangs` (`id`, `name`, `address`, `pos`, `bank_stk`, `bank_fullname`, `bank_nganhang`, `phone`, `phone_name`, `qr_bank`, `qr_zalo`, `u_id`, `chamngay`, `chamdoanhthu`, `lesize`, `tudongtinhgia`, `chenhgiale`, `chenhgiactv`, `image`, `banner`) VALUES
(1, 'DŨNG DOLCE', 'G40 - TTTM Sơn Long - Ninh Hiêp', 0, '', '', '', '012345678', '', '', '', NULL, 10, 50, 6, NULL, 100, 50, 'https://crmquanao.webi.vn/app/webroot/uploads/images/2/2023/09/24/rn-image-picker-lib-temp-cfeb18ef-6f05-4b95-93e2-e638061b034b.jpg', 'https://crmquanao.webi.vn/app/webroot/uploads/images/2/2023/09/24/rn-image-picker-lib-temp-135c6460-5c73-4110-b4b6-acb47557b528.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rght` int(11) DEFAULT NULL,
  `anhchi` varchar(64) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `username` varchar(32) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `recover_password` varchar(255) DEFAULT NULL,
  `phone` varchar(32) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `address_tp` varchar(255) DEFAULT NULL,
  `address_qh` varchar(255) DEFAULT NULL,
  `address_xa` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4,
  `created` int(11) DEFAULT NULL,
  `date` int(11) DEFAULT NULL,
  `image` text,
  `wishlist` longtext CHARACTER SET utf8mb4,
  `rate` int(11) DEFAULT '0',
  `content` text CHARACTER SET utf8mb4,
  `id_quanly` int(11) DEFAULT NULL,
  `chedohienthi` int(11) DEFAULT NULL,
  `gioitinh` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `u_id` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`id`, `parent_id`, `lft`, `rght`, `anhchi`, `fullname`, `username`, `password`, `recover_password`, `phone`, `email`, `address_tp`, `address_qh`, `address_xa`, `address`, `created`, `date`, `image`, `wishlist`, `rate`, `content`, `id_quanly`, `chedohienthi`, `gioitinh`, `u_id`) VALUES
(1, NULL, 1, 2, NULL, 'Administrator1', NULL, NULL, NULL, '0123456678', 'hehe@gmail.com', '221', NULL, NULL, 'hn1', 1693974590, NULL, 'https://hoangtp.webi.vn/app/webroot/uploads/images/2/2023/12/28/rn-image-picker-lib-temp-f33cc8dc-7e34-4f75-aa32-998c3629afe5.jpg', NULL, 3, '', 26, NULL, 'male', 1),
(2, NULL, 3, 4, NULL, 'khach 2', NULL, NULL, NULL, '0336665544', NULL, NULL, NULL, NULL, 'hn', 1693974617, NULL, 'https://crmquanao.webi.vn/app/webroot/uploads/images/2/2023/09/06/rn-image-picker-lib-temp-bff4d048-f457-47d9-9616-743ca7ed865c.jpg', NULL, 4, '', NULL, NULL, 'female', 1),
(3, NULL, 5, 6, NULL, 'khach 3', NULL, NULL, NULL, '0336668899', NULL, NULL, NULL, NULL, 'hn', 1693974642, NULL, 'https://crmquanao.webi.vn/app/webroot/uploads/images/2/2023/09/06/rn-image-picker-lib-temp-63163194-d7ad-4e8a-904b-919a48147882.jpg', NULL, 4, '', NULL, NULL, 'female', 1),
(4, NULL, 7, 8, NULL, 'Khách 4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1694061380, NULL, '', NULL, 0, '', 23, NULL, '', 1),
(22, NULL, 9, 10, NULL, 'hoang hoang', NULL, NULL, NULL, '0359688882', 'hoang@gmail.com', NULL, NULL, NULL, 'hangx xs', 1702568461, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0),
(29, NULL, 11, 12, NULL, 'Viet hoang nv', NULL, NULL, NULL, '0359597778', 'hoang@gmail.com1', '', NULL, NULL, 'ha noi1', 1703231223, NULL, '', NULL, 0, NULL, NULL, NULL, NULL, 1),
(30, NULL, 13, 14, NULL, 'Nguyen Viet Hoang x', NULL, NULL, NULL, '03550748391', 'hoang@gmail.com1', 'Chưa có thông tin', NULL, NULL, 'ha noi1', 1703238059, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1),
(31, NULL, 15, 16, NULL, 'Duongxxx', NULL, NULL, NULL, '0988666777', 'leduong@gmail.com', 'Chưa có thông tin', NULL, NULL, '137', 1703694917, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0),
(32, NULL, 17, 18, NULL, 'hoang n v', NULL, NULL, NULL, '0358886666', 'hoang@gmail.com', '', NULL, NULL, 'ha noi', 1703733329, NULL, '', NULL, 0, NULL, NULL, NULL, NULL, 0),
(33, NULL, 19, 20, NULL, 'hoang haong', NULL, NULL, NULL, '0359698877', 'hoang@gmail.com', NULL, NULL, NULL, 'ha noi', 1703736425, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer_banners`
--

CREATE TABLE `customer_banners` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `title_en` varchar(255) DEFAULT NULL,
  `description` text,
  `image` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT '#',
  `type` varchar(32) DEFAULT NULL,
  `category_id` int(11) DEFAULT '0',
  `bosuutap_id` int(11) DEFAULT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0' COMMENT '0 cho duyet, 1 da duyet',
  `pos` int(11) DEFAULT '0',
  `status` int(1) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer_sources`
--

CREATE TABLE `customer_sources` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `pos` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `customer_sources`
--

INSERT INTO `customer_sources` (`id`, `title`, `status`, `pos`) VALUES
(1, 'kk', 1, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `documents`
--

CREATE TABLE `documents` (
  `id` int(11) NOT NULL,
  `node_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT '#',
  `phone` varchar(255) DEFAULT NULL,
  `pos` int(11) DEFAULT '1',
  `featured` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `domains`
--

CREATE TABLE `domains` (
  `id` int(11) NOT NULL,
  `node_id` int(11) DEFAULT NULL,
  `name` text CHARACTER SET utf8,
  `price_setup` int(11) DEFAULT '0',
  `price_create` int(11) DEFAULT '0',
  `price_renew` int(11) DEFAULT '0',
  `price_transfer` int(11) DEFAULT '0',
  `domain_category` int(11) DEFAULT '0',
  `tab` varchar(255) CHARACTER SET utf8 NOT NULL,
  `pos` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `elements`
--

CREATE TABLE `elements` (
  `id` int(11) NOT NULL,
  `fields` longtext COMMENT '{ -title, -image, -link, -description, -content, -data:}',
  `type_tem` varchar(255) DEFAULT NULL COMMENT 'Loại tenplate'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `emails`
--

CREATE TABLE `emails` (
  `id` int(11) NOT NULL,
  `node_id` int(11) DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `space` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `forwarder` varchar(255) DEFAULT NULL,
  `mail_list` varchar(255) DEFAULT NULL,
  `park` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT '0',
  `price2y` int(11) DEFAULT '0',
  `price3y` int(11) DEFAULT '0',
  `price4y` int(11) DEFAULT '0',
  `price5y` int(11) DEFAULT '0',
  `email_category` varchar(255) DEFAULT NULL,
  `tab` varchar(255) DEFAULT NULL,
  `pos` int(11) DEFAULT '0',
  `featured` int(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `emails_bak`
--

CREATE TABLE `emails_bak` (
  `id` int(11) NOT NULL,
  `email` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `faqs`
--

CREATE TABLE `faqs` (
  `id` int(11) NOT NULL,
  `node_id` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `image2` varchar(255) DEFAULT NULL,
  `description` text,
  `content` text,
  `description_en` text,
  `content_en` text,
  `admin_id` int(11) DEFAULT '1',
  `seo_title` varchar(255) DEFAULT NULL,
  `seo_keyword` varchar(120) DEFAULT NULL,
  `seo_description` text,
  `focus_keyword` varchar(64) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `featured` int(1) DEFAULT '0',
  `created` int(11) DEFAULT NULL,
  `modified` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `filters`
--

CREATE TABLE `filters` (
  `id` int(11) NOT NULL,
  `title` varchar(64) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `pos` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `filter_items`
--

CREATE TABLE `filter_items` (
  `id` int(11) NOT NULL,
  `filter_id` int(11) DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `pos` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `filter_linkeds`
--

CREATE TABLE `filter_linkeds` (
  `id` int(11) NOT NULL,
  `node_id` int(11) DEFAULT NULL,
  `filter_item_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `role` text,
  `role_list` text CHARACTER SET utf8mb4
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `groups`
--

INSERT INTO `groups` (`id`, `title`, `role`, `role_list`) VALUES
(1, 'Quản lí cửa hàng', '1', 'admin'),
(2, 'Nhân viên', '2', 'nhanvien'),
(3, 'Khách hàng', '3', 'khach');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `node_id` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ketnois`
--

CREATE TABLE `ketnois` (
  `id` int(11) NOT NULL,
  `node_id` int(11) DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `des` text CHARACTER SET utf8,
  `loaihinh` text CHARACTER SET utf8,
  `diachi` text CHARACTER SET utf8,
  `dienthoai` text CHARACTER SET utf8,
  `email` text CHARACTER SET utf8,
  `nghanhnghe` text CHARACTER SET utf8,
  `category_id` int(11) DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `featured` int(11) DEFAULT '0',
  `pos` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `kiemkhos`
--

CREATE TABLE `kiemkhos` (
  `id` int(11) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `product_node_id` int(11) DEFAULT NULL,
  `data` text,
  `price_nhap` int(11) DEFAULT NULL,
  `price_buon` int(11) DEFAULT NULL,
  `price_ctv` int(11) DEFAULT NULL,
  `price_ban_le` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '0: kiểm hòa, <0: kiểm âm, >0: kiểm dương',
  `created` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `langs`
--

CREATE TABLE `langs` (
  `id` int(11) NOT NULL,
  `key` varchar(64) DEFAULT NULL,
  `vi` text,
  `en` text,
  `jp` text,
  `cn` text,
  `kr` text,
  `pos` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `msg` varchar(255) DEFAULT NULL,
  `referrer` varchar(255) DEFAULT NULL,
  `created` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menus`
--

CREATE TABLE `menus` (
  `id` int(11) NOT NULL,
  `node_id` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `description` text,
  `content` text,
  `description_en` text,
  `content_en` text,
  `seo_title` varchar(255) DEFAULT NULL,
  `seo_keyword` varchar(120) DEFAULT NULL,
  `seo_description` text,
  `focus_keyword` varchar(64) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `featured` int(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `miens`
--

CREATE TABLE `miens` (
  `id` int(11) NOT NULL,
  `title` varchar(64) DEFAULT NULL,
  `title_en` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `node_id` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `description` text,
  `content` longtext,
  `content_search` text,
  `description_en` text,
  `description_kr` text,
  `content_kr` text,
  `content_en` text,
  `content_jp` text,
  `content_cn` text,
  `description_jp` text,
  `description_cn` text,
  `source` varchar(255) DEFAULT NULL,
  `admin_id` int(11) DEFAULT '1',
  `seo_title` varchar(255) DEFAULT NULL,
  `seo_keyword` varchar(120) DEFAULT NULL,
  `seo_description` text,
  `focus_keyword` varchar(64) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `featured` int(1) DEFAULT '0',
  `expired` int(11) DEFAULT '0',
  `pr` int(11) DEFAULT '0',
  `tags` text,
  `resource` varchar(255) DEFAULT NULL,
  `vote` int(11) DEFAULT '0',
  `year_create` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhaps`
--

CREATE TABLE `nhaps` (
  `id` int(11) NOT NULL,
  `u_id` int(11) DEFAULT '0',
  `supplier_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `totle_price` int(11) DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '-1: phiếu nhập tạm, 0: là chưa xác nhận: 1 là đã xác nhận',
  `product_node_id` int(11) DEFAULT NULL COMMENT 'Trường này bỏ không có giá trị',
  `modified` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `nhaps`
--

INSERT INTO `nhaps` (`id`, `u_id`, `supplier_id`, `quantity`, `totle_price`, `created`, `status`, `product_node_id`, `modified`) VALUES
(1, 32, NULL, 20, 400, 1702186714, 1, 80, 1702186714),
(2, 32, NULL, 2, 2, 1702189257, 1, 81, 1702189257),
(3, 32, NULL, 2, 2, 1702189314, 1, 82, 1702189314),
(4, 32, NULL, 3, 0, 1702189397, 1, 83, 1702189397),
(5, 32, NULL, 2, 222, 1702193339, 1, 84, 1702193339),
(6, 32, NULL, 446, 495952, 1702274952, 1, 85, 1702657067),
(10, 0, NULL, 446, 495952, 1704980444, NULL, NULL, 1704980444),
(11, 0, NULL, 446, 495952, 1704980475, NULL, NULL, 1704980475),
(12, 0, NULL, 446, 495952, 1704980495, NULL, NULL, 1704980495),
(13, 0, NULL, 446, 495952, 1704981260, NULL, NULL, 1704981260),
(14, 0, NULL, 446, 495952, 1704981272, NULL, NULL, 1704981272),
(15, 0, NULL, 446, 495952, 1704981388, NULL, NULL, 1704981388),
(16, 0, NULL, 446, 495952, 1704981477, NULL, NULL, 1704981477),
(17, 0, NULL, 446, 495952, 1704981490, NULL, NULL, 1704981490),
(18, 0, NULL, 446, 495952, 1704981504, NULL, NULL, 1704981504),
(19, 0, NULL, 446, 495952, 1704981586, NULL, NULL, 1704981586),
(20, 0, NULL, 446, 495952, 1704981643, NULL, NULL, 1704981643);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nodes`
--

CREATE TABLE `nodes` (
  `id` int(11) NOT NULL,
  `source_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `title_en` varchar(255) DEFAULT NULL,
  `title_jp` varchar(255) DEFAULT NULL,
  `title_cn` varchar(255) DEFAULT NULL,
  `title_kr` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `category_id_bk` int(11) DEFAULT NULL,
  `type` varchar(12) DEFAULT NULL,
  `pos` int(11) DEFAULT '1',
  `robots` int(1) DEFAULT '1',
  `read` int(11) DEFAULT '0',
  `created` int(11) DEFAULT NULL,
  `modified` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT '1',
  `pr` int(11) DEFAULT '0',
  `city_id` int(11) DEFAULT NULL,
  `size_id` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `nodes`
--

INSERT INTO `nodes` (`id`, `source_id`, `title`, `title_en`, `title_jp`, `title_cn`, `title_kr`, `slug`, `link`, `category_id_bk`, `type`, `pos`, `robots`, `read`, `created`, `modified`, `status`, `pr`, `city_id`, `size_id`, `code`) VALUES
(1, NULL, 'Quần áo', NULL, NULL, NULL, NULL, 'quan-ao', NULL, NULL, 'category', 1, 1, 0, 1698201807, 1698201807, 1, 0, NULL, NULL, NULL),
(2, NULL, 'Giày dép', NULL, NULL, NULL, NULL, 'giay-dep', NULL, NULL, 'category', 1, 1, 0, 1698202116, 1698202116, 1, 0, NULL, NULL, NULL),
(3, NULL, 'Váy', NULL, NULL, NULL, NULL, 'vay', NULL, NULL, 'category', 1, 1, 0, 1698202129, 1698202129, 1, 0, NULL, NULL, NULL),
(4, NULL, 'Giày dora', NULL, NULL, NULL, NULL, 'giay-dora', NULL, NULL, 'category', 1, 1, 0, 1698202168, 1698202288, 1, 0, NULL, NULL, NULL),
(5, NULL, 'Váy ngắnad', NULL, NULL, NULL, NULL, 'vay-nganad', NULL, NULL, 'category', 1, 1, 0, 1698202207, 1701881307, 1, 0, NULL, NULL, NULL),
(7, NULL, 'hehessss', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'product', 1, 1, 0, 1698274397, 1704981643, 1, 0, NULL, NULL, 'Tesst1xsss'),
(9, NULL, 'Váy dài', NULL, NULL, NULL, NULL, 'vay-dai', NULL, NULL, 'category', 1, 1, 0, 1698285555, 1698285555, 1, 0, NULL, NULL, NULL),
(10, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'product', 1, 1, 0, 1698285643, 1698375424, 1, 0, NULL, NULL, 'Sp ao dai'),
(11, NULL, 'hoang', NULL, NULL, NULL, NULL, 'hoang', NULL, NULL, 'category', 1, 1, 0, 1701875888, 1701875888, 1, 0, NULL, NULL, NULL),
(12, NULL, 'ád', NULL, NULL, NULL, NULL, 'ad', NULL, NULL, 'category', 1, 1, 0, 1701876074, 1701876074, 1, 0, NULL, NULL, NULL),
(13, NULL, 'asdsa', NULL, NULL, NULL, NULL, 'asdsa', NULL, NULL, 'category', 1, 1, 0, 1701877092, 1701877092, 1, 0, NULL, NULL, NULL),
(14, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, 'category', 1, 1, 0, 1701877914, 1701877914, 1, 0, NULL, NULL, NULL),
(15, NULL, '', NULL, NULL, NULL, NULL, '-1701877919', NULL, NULL, 'category', 1, 1, 0, 1701877919, 1701877919, 1, 0, NULL, NULL, NULL),
(16, NULL, '', NULL, NULL, NULL, NULL, '-1701878375', NULL, NULL, 'category', 1, 1, 0, 1701878375, 1701878375, 1, 0, NULL, NULL, NULL),
(17, NULL, 'asdsa', NULL, NULL, NULL, NULL, 'asdsa-1701878381', NULL, NULL, 'category', 1, 1, 0, 1701878381, 1701878381, 1, 0, NULL, NULL, NULL),
(18, NULL, '', NULL, NULL, NULL, NULL, '-1701878937', NULL, NULL, 'category', 1, 1, 0, 1701878937, 1701878937, 1, 0, NULL, NULL, NULL),
(19, NULL, 'hoang', NULL, NULL, NULL, NULL, 'hoang-1701879575', NULL, NULL, 'category', 1, 1, 0, 1701879575, 1701879575, 1, 0, NULL, NULL, NULL),
(20, NULL, 'hoangs2', NULL, NULL, NULL, NULL, 'hoangs2', NULL, NULL, 'category', 1, 1, 0, 1701879850, 1701881218, 1, 0, NULL, NULL, NULL),
(21, NULL, 'hoang1', NULL, NULL, NULL, NULL, 'hoang1', NULL, NULL, 'category', 1, 1, 0, 1701881141, 1701881141, 1, 0, NULL, NULL, NULL),
(22, NULL, 'hoang1', NULL, NULL, NULL, NULL, 'hoang1-1701881174', NULL, NULL, 'category', 1, 1, 0, 1701881174, 1701881174, 1, 0, NULL, NULL, NULL),
(23, NULL, 'hoang12', NULL, NULL, NULL, NULL, 'hoang12', NULL, NULL, 'category', 1, 1, 0, 1701881183, 1701881183, 1, 0, NULL, NULL, NULL),
(24, NULL, 'hangx1', NULL, NULL, NULL, NULL, 'hangx1', NULL, NULL, 'category', 1, 1, 0, 1701881711, 1701882210, 1, 0, NULL, NULL, NULL),
(25, NULL, 'adu', NULL, NULL, NULL, NULL, 'adu', NULL, NULL, 'category', 1, 1, 0, 1701882519, 1701966206, 1, 0, NULL, NULL, NULL),
(26, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'product', 1, 1, 0, 1702140309, 1702140309, 1, 0, NULL, NULL, ''),
(27, NULL, 'hoang1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'product', 1, 1, 0, 1702140676, 1702140676, 1, 0, NULL, NULL, '111'),
(28, NULL, 'HoangTest', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'product', 1, 1, 0, 1702141029, 1702141029, 1, 0, NULL, NULL, 'hoangtest'),
(29, NULL, '11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'product', 1, 1, 0, 1702142308, 1702142308, 1, 0, NULL, NULL, '22'),
(30, NULL, '11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'product', 1, 1, 0, 1702142492, 1702142492, 1, 0, NULL, NULL, '221'),
(31, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'product', 1, 1, 0, 1702142526, 1702142526, 1, 0, NULL, NULL, '21'),
(32, NULL, '111 xx', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'product', 1, 1, 0, 1702142644, 1702142644, 1, 0, NULL, NULL, 'hoang dxx'),
(33, NULL, '44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'product', 1, 1, 0, 1702142892, 1702142892, 1, 0, NULL, NULL, '34'),
(34, NULL, 'goánd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'product', 1, 1, 0, 1702142910, 1702142910, 1, 0, NULL, NULL, 'sad a'),
(35, NULL, 'xx', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'product', 1, 1, 0, 1702143981, 1702143981, 1, 0, NULL, NULL, 'xxx'),
(36, NULL, 'xx', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'product', 1, 1, 0, 1702144080, 1702144080, 1, 0, NULL, NULL, 'xxx1'),
(37, NULL, 'Quan ao', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'product', 1, 1, 0, 1702178232, 1702178232, 1, 0, NULL, NULL, 'QA1'),
(38, NULL, 'xxtest', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'product', 1, 1, 0, 1702179443, 1702179443, 1, 0, NULL, NULL, 'xxa'),
(39, NULL, 'hoang txtxt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'product', 1, 1, 0, 1702179618, 1702179618, 1, 0, NULL, NULL, 'txta'),
(40, NULL, 'xin chao', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'product', 1, 1, 0, 1702180109, 1702180109, 1, 0, NULL, NULL, 'cinchao'),
(41, NULL, 'hoang xx1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'product', 1, 1, 0, 1702180906, 1702180906, 1, 0, NULL, NULL, 'xx1'),
(42, NULL, 'xxxa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'product', 1, 1, 0, 1702181380, 1702181380, 1, 0, NULL, NULL, 'xxxa'),
(43, NULL, 'xxxa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'product', 1, 1, 0, 1702181434, 1702181434, 1, 0, NULL, NULL, 'xxxa1'),
(44, NULL, 'xxxa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'product', 1, 1, 0, 1702181472, 1702181472, 1, 0, NULL, NULL, 'xxxa1a'),
(45, NULL, 'xxxaq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'product', 1, 1, 0, 1702181492, 1702181492, 1, 0, NULL, NULL, 'xxxa1a1'),
(46, NULL, '111s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'product', 1, 1, 0, 1702181539, 1702181539, 1, 0, NULL, NULL, 'sqsq'),
(47, NULL, 'sssss', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'product', 1, 1, 0, 1702181576, 1702181576, 1, 0, NULL, NULL, 'qqqq'),
(48, NULL, 'sss', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'product', 1, 1, 0, 1702181740, 1702181740, 1, 0, NULL, NULL, 'ssss'),
(49, NULL, 'Ao mua dong', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'product', 1, 1, 0, 1702181856, 1702181856, 1, 0, NULL, NULL, '1112'),
(50, NULL, 'hoangtaxt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'product', 1, 1, 0, 1702181984, 1702181984, 1, 0, NULL, NULL, 'tact'),
(51, NULL, 'ngoc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'product', 1, 1, 0, 1702182147, 1702182147, 1, 0, NULL, NULL, 'ngoc'),
(52, NULL, 'ngoc1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'product', 1, 1, 0, 1702182247, 1702182247, 1, 0, NULL, NULL, 'bgoc1'),
(53, NULL, 'ngoc11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'product', 1, 1, 0, 1702182572, 1702182572, 1, 0, NULL, NULL, '1121'),
(54, NULL, 'ngoc111', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'product', 1, 1, 0, 1702182799, 1702182799, 1, 0, NULL, NULL, 'ngoc111'),
(55, NULL, 'ngoc111', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'product', 1, 1, 0, 1702182945, 1702182945, 1, 0, NULL, NULL, 'ngoc1111'),
(56, NULL, 'ngoc111', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'product', 1, 1, 0, 1702182972, 1702182972, 1, 0, NULL, NULL, 'ngoc11111'),
(57, NULL, 'ngoc111', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'product', 1, 1, 0, 1702182994, 1702182994, 1, 0, NULL, NULL, 'ngoc11111a'),
(58, NULL, 'ngoc111', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'product', 1, 1, 0, 1702183086, 1702183086, 1, 0, NULL, NULL, 'ngoc11111a1'),
(59, NULL, 'ngoc111', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'product', 1, 1, 0, 1702183445, 1702183445, 1, 0, NULL, NULL, 'ngoc11111a12'),
(60, NULL, 'ngoc111', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'product', 1, 1, 0, 1702183800, 1702183800, 1, 0, NULL, NULL, 'ngoc11111a12x'),
(61, NULL, 'ngoc111', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'product', 1, 1, 0, 1702183912, 1702183912, 1, 0, NULL, NULL, 'ngoc11111a12xz'),
(62, NULL, 'ngoc111', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'product', 1, 1, 0, 1702184002, 1702184002, 1, 0, NULL, NULL, 'ngoc11111a12xz1'),
(63, NULL, 'ngoc111', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'product', 1, 1, 0, 1702184595, 1702184595, 1, 0, NULL, NULL, 'ngoc11111a12xz1x'),
(64, NULL, 'xx', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'product', 1, 1, 0, 1702184679, 1702184679, 1, 0, NULL, NULL, '11ss'),
(65, NULL, 'xx', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'product', 1, 1, 0, 1702185355, 1702185355, 1, 0, NULL, NULL, '11ss1'),
(66, NULL, 'xx', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'product', 1, 1, 0, 1702185380, 1702185380, 1, 0, NULL, NULL, '11ss11'),
(67, NULL, 'xx', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'product', 1, 1, 0, 1702185406, 1702185406, 1, 0, NULL, NULL, '11ss111'),
(68, NULL, 'ádx', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'product', 1, 1, 0, 1702185550, 1702185550, 1, 0, NULL, NULL, 'xxax12'),
(69, NULL, 'hangx', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'product', 1, 1, 0, 1702185705, 1702185705, 1, 0, NULL, NULL, 'haong222'),
(70, NULL, 'hangx', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'product', 1, 1, 0, 1702185807, 1702185807, 1, 0, NULL, NULL, 'haong2221'),
(71, NULL, '11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'product', 1, 1, 0, 1702185913, 1702185913, 1, 0, NULL, NULL, '1hoang'),
(72, NULL, '11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'product', 1, 1, 0, 1702185936, 1702185936, 1, 0, NULL, NULL, '1hoang1'),
(73, NULL, '11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'product', 1, 1, 0, 1702185962, 1702185962, 1, 0, NULL, NULL, '1hoang11'),
(74, NULL, '11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'product', 1, 1, 0, 1702186020, 1702186020, 1, 0, NULL, NULL, '1hoang111'),
(75, NULL, '11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'product', 1, 1, 0, 1702186189, 1702186189, 1, 0, NULL, NULL, '1hoang1111'),
(76, NULL, '11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'product', 1, 1, 0, 1702186287, 1702186287, 1, 0, NULL, NULL, '1hoang11111'),
(77, NULL, '11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'product', 1, 1, 0, 1702186304, 1702186304, 1, 0, NULL, NULL, '1hoang111111'),
(78, NULL, '11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'product', 1, 1, 0, 1702186315, 1702186315, 1, 0, NULL, NULL, '1hoang111111z'),
(79, NULL, 'ngoc1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'product', 1, 1, 0, 1702186470, 1702186470, 1, 0, NULL, NULL, 'ngoc1'),
(81, NULL, 'hoang1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'product', 1, 1, 0, 1702189257, 1702189257, 1, 0, NULL, NULL, 'hoang1'),
(85, NULL, 'hehe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'product', 1, 1, 0, 1702274952, 1702657067, 1, 0, NULL, NULL, 'Tesst1x'),
(86, NULL, 'Haiduong', NULL, NULL, NULL, NULL, 'haiduong', NULL, NULL, 'category', 1, 1, 0, 1702307089, 1702307089, 1, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `bill_id` int(11) DEFAULT NULL,
  `nhap_id` int(11) DEFAULT NULL,
  `trahang_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `customer_id` int(11) DEFAULT '0',
  `supplier_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `sum_price` int(11) DEFAULT '0',
  `created` int(11) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '0: Chưa thanh toán, 1: thanh toán  thành công, 2 Đã thanh toán qua VTCpay',
  `u_id` int(11) DEFAULT NULL,
  `p_type` int(11) DEFAULT NULL COMMENT '1: giá gốc, 2: giá buôn, 3: giá lẻ, 4: giá CTV, 5: customized	',
  `price` int(11) DEFAULT NULL,
  `custom_price` int(11) DEFAULT NULL,
  `modified` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `bill_id`, `nhap_id`, `trahang_id`, `title`, `image`, `customer_id`, `supplier_id`, `product_id`, `quantity`, `sum_price`, `created`, `status`, `u_id`, `p_type`, `price`, `custom_price`, `modified`) VALUES
(12, 120, NULL, NULL, NULL, NULL, 0, NULL, 7, 0, 0, 1703000617, 0, 1, NULL, 11112, NULL, 1703000617),
(13, 121, NULL, NULL, NULL, NULL, 0, NULL, 7, 0, 0, 1703000655, 0, 1, NULL, 11112, NULL, 1703000655),
(14, 123, NULL, NULL, NULL, NULL, 0, NULL, 7, 5, 55560, 1703001143, 0, 1, NULL, 11112, NULL, 1703001143),
(16, 125, NULL, NULL, NULL, NULL, 0, NULL, 81, 5, 55, 1703001842, 0, 1, NULL, 11, NULL, 1703001842),
(25, 134, NULL, NULL, NULL, NULL, 0, NULL, 3, 5, 55, 1703090317, 0, 1, NULL, 11, NULL, 1703090317),
(26, 135, NULL, NULL, NULL, NULL, 0, NULL, 7, 2, 22224, 1703605515, 0, 1, NULL, 11112, NULL, 1703605515),
(27, 136, NULL, NULL, NULL, NULL, 0, NULL, 7, 5, 55560, 1703607301, 0, 1, NULL, 11112, NULL, 1703659675),
(28, 137, NULL, NULL, NULL, NULL, 0, NULL, 7, 2, 22224, 1703607500, 0, 1, NULL, 11112, NULL, 1703607500),
(29, 138, NULL, NULL, NULL, NULL, 0, NULL, 7, 3, 33336, 1703607507, 0, 1, NULL, 11112, NULL, 1703607507),
(30, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 7, 77784, 1703653196, 0, NULL, NULL, NULL, NULL, 1703653196),
(31, 139, NULL, NULL, NULL, NULL, 0, NULL, 7, 34, 377808, 1703667150, 0, 1, NULL, 11112, NULL, 1703667502),
(32, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 446, 495952, 1704980444, 0, NULL, NULL, NULL, NULL, 1704980444),
(33, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 446, 495952, 1704980475, 0, NULL, NULL, NULL, NULL, 1704980475),
(34, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 446, 495952, 1704980495, 0, NULL, NULL, NULL, NULL, 1704980495),
(35, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 446, 495952, 1704981260, 0, NULL, NULL, NULL, NULL, 1704981260),
(36, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 446, 495952, 1704981272, 0, NULL, NULL, NULL, NULL, 1704981272),
(37, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 446, 495952, 1704981388, 0, NULL, NULL, NULL, NULL, 1704981388),
(38, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 446, 495952, 1704981477, 0, NULL, NULL, NULL, NULL, 1704981477),
(39, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 446, 495952, 1704981490, 0, NULL, NULL, NULL, NULL, 1704981490),
(40, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 446, 495952, 1704981504, 0, NULL, NULL, NULL, NULL, 1704981504),
(41, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 446, 495952, 1704981586, 0, NULL, NULL, NULL, NULL, 1704981586),
(42, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 446, 495952, 1704981643, 0, NULL, NULL, NULL, NULL, 1704981643);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_bills`
--

CREATE TABLE `order_bills` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT '0',
  `totle` int(11) DEFAULT NULL COMMENT 'tổng số giá của đơn hàng',
  `coupon_code` varchar(128) DEFAULT NULL,
  `coupon_discount` int(11) DEFAULT NULL,
  `paid_cart` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '0' COMMENT '-2: toa nhap: -1: giỏi hàng 0: mới tiếp nhận - chờ xác nhận, 1: bị hủy, 2: đang giao, 3: hoàn  thành',
  `nhat_lai` int(11) DEFAULT '0' COMMENT 'Nhặt lại khi chỉnh số lượng về và tăng lại số lượng',
  `nhat_tai_cua_hang` int(11) DEFAULT '0',
  `created` int(11) DEFAULT NULL,
  `modified` int(11) DEFAULT NULL,
  `points` int(11) DEFAULT '0',
  `bonus_points` int(11) DEFAULT '0',
  `content` text CHARACTER SET utf8mb4,
  `thanh_toan` varchar(156) DEFAULT NULL,
  `u_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `order_bills`
--

INSERT INTO `order_bills` (`id`, `customer_id`, `totle`, `coupon_code`, `coupon_discount`, `paid_cart`, `status`, `nhat_lai`, `nhat_tai_cua_hang`, `created`, `modified`, `points`, `bonus_points`, `content`, `thanh_toan`, `u_id`) VALUES
(125, 1, NULL, NULL, NULL, NULL, 0, 0, 0, 1703001842, 1703606376, 0, 0, NULL, NULL, 1),
(134, 1, NULL, NULL, NULL, NULL, 1, 0, 0, 1703090317, 1703666295, 0, 0, NULL, NULL, 1),
(135, 1, NULL, NULL, NULL, NULL, 0, 0, 0, 1703605515, 1703666546, 0, 0, NULL, NULL, 1),
(136, 1, NULL, NULL, NULL, NULL, -1, 0, 0, 1703607301, 1703607301, 0, 0, NULL, NULL, 1),
(137, 1, NULL, NULL, NULL, NULL, 2, 0, 0, 1703607500, 1703607688, 0, 0, NULL, NULL, 1),
(138, 1, NULL, NULL, NULL, NULL, 3, 0, 0, 1703607507, 1703732638, 0, 0, NULL, NULL, 1),
(139, 1, NULL, NULL, NULL, NULL, -1, 0, 0, 1703667150, 1703667150, 0, 0, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `bill_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `size_id` int(11) DEFAULT NULL,
  `color` char(11) CHARACTER SET utf8mb4 NOT NULL,
  `size` char(11) CHARACTER SET utf8mb4 NOT NULL,
  `color_id` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT '0',
  `old_quantity` int(11) DEFAULT '0',
  `type` int(11) DEFAULT NULL COMMENT '1: giá gốc, 2: giá buôn, 3: giá lẻ, 4: giá CTV, 5: customized',
  `custom_price` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `u_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`id`, `bill_id`, `order_id`, `size_id`, `color`, `size`, `color_id`, `price`, `quantity`, `old_quantity`, `type`, `custom_price`, `product_id`, `u_id`) VALUES
(133, 125, 16, NULL, 'White', 'L', NULL, 55, 5, 0, NULL, NULL, 3, 1),
(142, 134, 25, NULL, 'White', 'S', NULL, 110, 10, 0, NULL, NULL, 3, 1),
(143, 135, 26, NULL, 'White', 'M', NULL, 22224, 2, 0, NULL, NULL, 7, 1),
(144, 136, 27, NULL, 'Ping', 'XL', NULL, 55560, 5, 0, NULL, NULL, 7, 1),
(145, 137, 28, NULL, 'Blue', 'M', NULL, 22224, 2, 0, NULL, NULL, 7, 1),
(146, 138, 29, NULL, 'Blue', 'XL', NULL, 66672, 6, 0, NULL, NULL, 7, 1),
(147, 139, 31, NULL, 'White', 'XL', NULL, 377808, 34, 0, NULL, NULL, 7, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pictures`
--

CREATE TABLE `pictures` (
  `id` int(11) NOT NULL,
  `node_id` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` text,
  `content` text,
  `description_en` text,
  `content_en` text,
  `seo_title` varchar(255) DEFAULT NULL,
  `seo_keyword` varchar(120) DEFAULT NULL,
  `seo_description` text,
  `focus_keyword` varchar(64) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `featured` int(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `prices`
--

CREATE TABLE `prices` (
  `id` int(11) NOT NULL,
  `title` varchar(64) DEFAULT NULL,
  `title_en` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` text,
  `description_en` text,
  `content` text,
  `content_en` text,
  `website` varchar(255) DEFAULT NULL,
  `featured` int(11) DEFAULT '0',
  `pos` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `code` varchar(128) DEFAULT NULL,
  `price_nhap` int(11) DEFAULT NULL,
  `price_buon` int(11) DEFAULT NULL,
  `price_ctv` int(11) DEFAULT NULL,
  `price_le` int(11) DEFAULT NULL,
  `node_id` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `image2` varchar(255) DEFAULT NULL,
  `image3` varchar(255) DEFAULT NULL,
  `chatlieu` text NOT NULL,
  `huongdan` text NOT NULL,
  `dacdiem` text NOT NULL,
  `product_images` longtext,
  `content` text,
  `description` text,
  `description_en` text,
  `status` int(11) DEFAULT '1' COMMENT '1: Hàng mới, 2: Bán tiếp, 3: Gọi lại, 4: Giảm giá, 5: dứt mẫu, 6: Hàng lỗi',
  `seo_title` varchar(255) DEFAULT NULL,
  `seo_description` varchar(255) DEFAULT NULL,
  `seo_keyword` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT '0',
  `price_off` int(11) DEFAULT '0',
  `buys` int(11) DEFAULT '0',
  `selloff` varchar(128) DEFAULT NULL,
  `gender` varchar(128) DEFAULT NULL,
  `att1` text,
  `baohanh` int(11) DEFAULT '3' COMMENT 'tháng',
  `type` varchar(3) DEFAULT NULL,
  `hang_id` int(11) DEFAULT NULL,
  `nhasx` varchar(255) DEFAULT NULL,
  `agency_id` int(11) DEFAULT NULL,
  `home1` int(11) DEFAULT '0',
  `home2` int(11) DEFAULT '0',
  `home3` int(11) DEFAULT '0',
  `home4` int(11) DEFAULT '0',
  `khuyenmai` text,
  `tags` longtext,
  `supplier_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `dutmau` int(11) DEFAULT '0',
  `totlal_quantity` int(11) DEFAULT '0',
  `ban_chay` int(11) DEFAULT '0',
  `ban_cham` int(11) DEFAULT '0',
  `le_size` int(11) DEFAULT '0',
  `kiem_lai` int(11) DEFAULT '0',
  `dung_ban` int(11) NOT NULL DEFAULT '0' COMMENT '0: là đang bán, 1: là dừng bán',
  `u_id` int(11) DEFAULT '0',
  `created` int(11) DEFAULT NULL,
  `modified` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `code`, `price_nhap`, `price_buon`, `price_ctv`, `price_le`, `node_id`, `image`, `image2`, `image3`, `chatlieu`, `huongdan`, `dacdiem`, `product_images`, `content`, `description`, `description_en`, `status`, `seo_title`, `seo_description`, `seo_keyword`, `price`, `price_off`, `buys`, `selloff`, `gender`, `att1`, `baohanh`, `type`, `hang_id`, `nhasx`, `agency_id`, `home1`, `home2`, `home3`, `home4`, `khuyenmai`, `tags`, `supplier_id`, `category_id`, `dutmau`, `totlal_quantity`, `ban_chay`, `ban_cham`, `le_size`, `kiem_lai`, `dung_ban`, `u_id`, `created`, `modified`) VALUES
(3, 'hoang1', 1, NULL, NULL, 11, 81, NULL, NULL, NULL, '111', 'dd', 'dd', 'https://hoangtp.webi.vn/app/webroot/uploads/images/2/2023/12/10/rn-image-picker-lib-temp-b6004318-f505-48e9-b044-f3022528b4ca.jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, 6, 0, 0, 0, 0, 0, 0, 0, 32, 1702189257, 1702189257),
(7, 'Tesst1x', 1112, NULL, NULL, 11112, 85, NULL, NULL, NULL, '111112', '111112', '11112', 'https://hoangtp.webi.vn/app/webroot/uploads/images/2/2023/12/11/rn-image-picker-lib-temp-17b6dbda-93a6-4ab5-9d4b-89167eebde85.jpg,https://hoangtp.webi.vn/app/webroot/uploads/images/2/2023/12/11/rn-image-picker-lib-temp-f3175e88-f84b-4c33-8488-5c030d83addf.jpg,https://hoangtp.webi.vn/app/webroot/uploads/images/2/2023/12/15/rn-image-picker-lib-temp-603276db-cd25-4fde-8354-76a4c9544986.jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, 5, 0, 0, 0, 0, 0, 0, 0, 32, 1702274952, 1702657067);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rates`
--

CREATE TABLE `rates` (
  `id` int(11) NOT NULL,
  `node_id` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` text,
  `content` text,
  `description_en` text,
  `content_en` text,
  `admin_id` int(11) DEFAULT '1',
  `seo_title` varchar(255) DEFAULT NULL,
  `seo_keyword` varchar(120) DEFAULT NULL,
  `seo_description` text,
  `focus_keyword` varchar(64) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `featured` int(1) DEFAULT '0',
  `fullname` varchar(255) DEFAULT NULL,
  `age` varchar(128) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  `pos` int(11) DEFAULT '0',
  `nghenghiep` varchar(128) DEFAULT NULL,
  `customer_id` int(11) DEFAULT '0',
  `parent_id` int(11) DEFAULT '0',
  `rate` int(11) DEFAULT '0',
  `reate_hdv` int(11) DEFAULT '0',
  `rate_ptvc` int(11) DEFAULT '0',
  `rate_dv` int(11) DEFAULT '0',
  `rate_tc` int(11) DEFAULT '0',
  `title` text,
  `soluong` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `node_id` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` text,
  `content` text,
  `description_en` text,
  `content_en` text,
  `admin_id` int(11) DEFAULT '1',
  `seo_title` varchar(255) DEFAULT NULL,
  `seo_keyword` varchar(120) DEFAULT NULL,
  `seo_description` text,
  `focus_keyword` varchar(64) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `featured` int(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `servers`
--

CREATE TABLE `servers` (
  `id` int(11) NOT NULL,
  `node_id` int(11) DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `cpu` varchar(255) DEFAULT NULL,
  `hdd` varchar(255) DEFAULT NULL,
  `ram` varchar(255) DEFAULT NULL,
  `bandwidth` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT '0',
  `price2y` int(11) DEFAULT '0',
  `price3y` int(11) DEFAULT '0',
  `price4y` int(11) DEFAULT '0',
  `price5y` int(11) DEFAULT '0',
  `server_category` varchar(255) DEFAULT NULL,
  `tab` varchar(255) DEFAULT NULL,
  `pos` int(11) DEFAULT '0',
  `ip` varchar(128) DEFAULT NULL,
  `trongnc` varchar(255) DEFAULT NULL,
  `qte` varchar(255) DEFAULT NULL,
  `featured` int(1) DEFAULT '0',
  `price_hide` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `code` varchar(128) DEFAULT NULL,
  `node_id` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `image2` varchar(255) DEFAULT NULL,
  `image3` varchar(255) DEFAULT NULL,
  `image4` varchar(255) DEFAULT NULL,
  `product_images` longtext,
  `content` text,
  `content_en` text,
  `description` text,
  `description_en` text,
  `status` int(11) DEFAULT '1' COMMENT '0: hết hàng, 1: còn hàng',
  `featured` int(1) DEFAULT '0',
  `seo_title` varchar(255) DEFAULT NULL,
  `seo_description` varchar(255) DEFAULT NULL,
  `seo_keyword` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT '0',
  `price_off` int(11) DEFAULT '0',
  `buys` int(11) DEFAULT '0',
  `selloff` varchar(128) DEFAULT NULL,
  `gender` varchar(128) DEFAULT NULL,
  `att1` text,
  `att2` varchar(255) DEFAULT NULL,
  `att3` varchar(255) DEFAULT NULL,
  `baohanh` int(11) DEFAULT '3' COMMENT 'tháng',
  `type` varchar(3) DEFAULT NULL,
  `hang_id` int(11) DEFAULT NULL,
  `nhasx` varchar(255) DEFAULT NULL,
  `agency_id` int(11) DEFAULT NULL,
  `home1` int(11) DEFAULT '0',
  `home2` int(11) DEFAULT '0',
  `home3` int(11) DEFAULT '0',
  `home4` int(11) DEFAULT '0',
  `round_trip` text,
  `certified` text,
  `includes` text,
  `excludes` text,
  `adult` varchar(255) DEFAULT NULL,
  `youth` varchar(255) DEFAULT NULL,
  `infant` varchar(255) DEFAULT NULL,
  `adult_price` int(11) DEFAULT NULL,
  `youth_price` int(11) DEFAULT NULL,
  `infant_price` int(11) DEFAULT NULL,
  `highlights` text,
  `child_policy` text,
  `destination` text,
  `important_information` text,
  `meeting_point` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `label` varchar(64) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `value` text,
  `pos` int(11) DEFAULT '1',
  `type` varchar(32) DEFAULT 'text' COMMENT 'text, texteara, ckfinder, option: phục vụ cấu hình nâng cao',
  `classify` int(1) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `maxlength` int(3) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `settings`
--

INSERT INTO `settings` (`id`, `label`, `name`, `value`, `pos`, `type`, `classify`, `status`, `maxlength`) VALUES
(1, 'Tên website', 'title', 'Drphone', 2, 'text', 1, 1, 70),
(2, 'SEO description', 'description', 'alooo', 2, 'textarea', 1, 1, 160),
(3, 'SEO keyword', 'keyword', '', 2, 'textarea', 1, 1, 120),
(41, 'Theme Setting', 'theme_setting', '{\"s1\":{\"background\":\"#519fb8\",\"text\":\"#69a0c7\",\"link\":\"#e8d8d8\",\"hover\":\"#00d1ff\"},\"s2\":{\"background\":\"\",\"text\":\"\",\"link\":\"\",\"hover\":\"\"}}', 1, 'textarea', 1, 1, 0),
(4, 'Facebook', 'facebook', 'https://www.facebook.com/Drphone.com.vn', 3, 'text', 2, 1, 0),
(5, 'Google Plus', 'google_plus', 'https://www.facebook.com/duocmyphamchinhhangcongty', 1, 'text', 2, 0, 0),
(6, 'Youtube', 'youtube', 'https://www.youtube.com/', 3, 'text', 2, 1, 0),
(7, 'Twitter', 'twitter', 'https://www.Twitter.com/', 3, 'text', 2, 1, 0),
(8, 'Pinterest', 'pinterest', 'https://www.facebook.com/thucucspa.hn', 1, 'text', 2, 0, 0),
(9, 'Linkedin', 'linkedin', 'https://www.facebook.com/100001836910714', 1, 'text', 2, 0, 0),
(10, 'Tumblr', 'tumblr', 'https://www.facebook.com/thucucspa.hn', 1, 'text', 2, 0, 0),
(11, 'Instagram', 'instagram', 'https://www.Instagram.com/', 3, 'text', 2, 1, 0),
(12, 'Email', 'email', 'vuchithanh10102002@gmail.com', 1, 'text', 1, 1, 0),
(13, 'Skype', 'skype', 'dataonline2000', 1, 'text', 2, 0, 0),
(14, 'Yahoo', 'yahoo', 'dataonline2000', 1, 'text', 2, 0, 0),
(15, 'Google Map', 'google_map', '<iframe\r\n                                src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d14898.816483587754!2d105.81013510192045!3d21.004494340217317!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab7d1ce31707%3A0x61ac25b318a7a95e!2zTmcuIDEzMSBQLiBUaMOhaSBIw6AsIFRydW5nIExp4buHdCwgxJDhu5FuZyDEkGEsIEjDoCBO4buZaSwgVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1693149116081!5m2!1svi!2s\"\r\n                                style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" title=\"map\"\r\n                                referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 2, 'textarea', 1, 1, 0),
(16, 'JS Toàn trang <br />(trước thẻ đóng body)', 'analytics', '', -10, 'textarea', 1, 1, 0),
(18, 'Facebook Image', 'facebook_thumb', '/app/webroot/uploads/files/vindm/Screen2.jpg', 1, 'text', 2, 0, 0),
(35, 'Mức giá', 'price_range', 'Dưới 100.000 VNĐ | 0-100000\r\nTừ 100.000 - 500.000 VNĐ | 100000-500000\r\nTừ 500.000 - 1 triệu | 500000-1000000\r\nTừ 1 triệu - 2 triệu VNĐ | 1000000-2000000\r\nTừ 2 triệu - 3 triệu VNĐ | 2000000-3000000\r\nTrên 3 triệu | 3000000-999999999', 1, 'textarea', 1, 0, 0),
(44, 'buildPC', 'buildPC', '', 1, 'option', 1, 0, 0),
(42, 'continueAdd', 'continueAdd', 'add', 1, 'option', 1, 0, 0),
(43, 'continueAdd', 'continueEdit', 'edit', 1, 'option', 1, 0, 0),
(45, 'Theme Sử dụng', 'used_theme', 'Default', 1, 'option', 1, 0, 0),
(46, 'SMTP Email', 'smtp_email', 'kientructhanhphat.com.vn@gmail.com', 1, 'option', 1, 1, 0),
(47, 'SMTP Password', 'smtp_pass', 'wlftxkltgnifiiny', 1, 'option', 1, 1, 0),
(48, 'SMTP Host', 'smtp_host', 'smtp.gmail.com', 1, 'option', 1, 1, 0),
(49, 'SMTP Port', 'smtp_port', '587', 1, 'option', 1, 1, 0),
(50, 'SMTP Secure', 'smtp_secure', 'tls', 1, 'option', 1, 1, 0),
(51, 'Lĩnh vực hoạt động', 'linhvuc', 'Dưới 100.000 VNĐ | 0-100000\r\nTừ 100.000 - 500.000 VNĐ | 100000-500000\r\nTừ 500.000 - 1 triệu | 500000-1000000\r\nTừ 1 triệu - 2 triệu VNĐ | 1000000-2000000\r\nTừ 2 triệu - 3 triệu VNĐ | 2000000-3000000\r\nTrên 3 triệu | 3000000-999999999', 1, 'textarea', 1, 0, 0),
(52, 'Gallery fillter year', 'cat_bld', '2018\r\n2019\r\n2020\r\n2021\r\n2022\r\n2023\r\n', 4, 'textarea', 3, 1, 0),
(53, 'Destination Plan', 'cat_bcm', '- Hanoi \r\n- Sapa \r\n- Halong\r\n- Ninh Binh\r\n- Mai Chau \r\n- Puluong\r\n- Mu Cang Chai \r\n- Ha Giang \r\n- Ban Gioc Waterfall\r\n- Ba Be Lake\r\n- Dien Bien Phu\r\n- Moc Chau \r\n- Phong Nha\r\n- Hue \r\n- Da Nang \r\n- Hoi An \r\n- Quy Nhon\r\n- Nha Trang \r\n- Da Lat \r\n- Mui Ne\r\n- Ho Chi Minh \r\n- Mekong \r\n- Phu Quoc Island\r\n- Con Dao Island', 4, 'textarea', 3, 1, 0),
(54, 'Tour Package', 'cat_hv', 'Group Tour\r\nPrivate Tour', 4, 'textarea', 3, 1, 0),
(55, 'File giáo trình', 'file_bogiaotrinh', 'app/webroot/uploads/files/Basic-Hacker-IELTS-Mua-Sach.jpg', 1, 'file', 1, 0, 0),
(56, 'TikTok', 'tiktok', 'https://www.tiktok.com/', 3, 'text', 2, 1, 0),
(57, 'Talk', 'talk', '', 3, 'text', 2, 1, 0),
(58, 'Line', 'line', '', 3, 'text', 2, 1, 0),
(59, 'Messenger', 'messenger', 'https://www.messenger.com/', 3, 'text', 2, 1, 0),
(60, 'Country (Quốc gia)', 'country', 'Viet Nam\r\nLaos\r\nCampuchia\r\nBrunei\r\nIndonesia\r\nMalaysia\r\nMyanmar\r\nPhilippines\r\nSingapor\r\nThaiLan\r\nNhatBan\r\nHan Quoc\r\nTrung Quoc', 4, 'textarea', 3, 1, 0),
(61, 'Cities (Thành phố)', 'city', 'An Giang\r\nBà Rịa-Vũng Tàu\r\nBạc Liêu\r\nBắc Kạn\r\nBắc Giang\r\nBắc Ninh\r\nBến Tre\r\nBình Dương\r\nBình Định\r\nBình Phước\r\nBình Thuận\r\nCà Mau\r\nCao Bằng\r\nThành phố Cần Thơ \r\nThành phố Đà Nẵng \r\nĐắk Lắk \r\nĐắk Nông\r\nĐiện Biên\r\nĐồng Nai\r\nĐồng Tháp\r\nGia Lai\r\nHà Giang\r\nHà Nam\r\nThành phố Hà Nội (Thủ đô)\r\nHà Tây (đã sáp nhập)\r\nHà Tĩnh\r\nHải Dương\r\nThành phố Hải Phòng  \r\nHòa Bình\r\nThành phố Hồ Chí Minh\r\nHậu Giang\r\nHưng Yên\r\nKhánh Hòa\r\nKiên Giang\r\nKon Tum\r\nLai Châu\r\nLào Cai\r\nLạng Sơn\r\nLâm Đồng\r\nLong An\r\nNam Định\r\nNghệ An\r\nNinh Bình\r\nNinh Thuận\r\nPhú Thọ\r\nPhú Yên\r\nQuảng Bình\r\nQuảng Nam\r\nQuảng Ngãi\r\nQuảng Ninh\r\nQuảng Trị\r\nSóc Trăng\r\nSơn La\r\nTây Ninh\r\nThái Bình\r\nThái Nguyên\r\nThanh Hóa\r\nThừa Thiên Huế\r\nTiền Giang\r\nTrà Vinh\r\nTuyên Quang\r\nVĩnh Long\r\nVĩnh Phúc\r\nYên Bái', 1, 'textarea', 3, 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sizes`
--

CREATE TABLE `sizes` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `title` varchar(64) DEFAULT NULL,
  `title_en` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` text,
  `description_en` text,
  `content` text,
  `content_en` text,
  `website` varchar(255) DEFAULT NULL,
  `featured` int(11) DEFAULT '0',
  `pos` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `sizes`
--

INSERT INTO `sizes` (`id`, `parent_id`, `title`, `title_en`, `slug`, `image`, `description`, `description_en`, `content`, `content_en`, `website`, `featured`, `pos`) VALUES
(4, NULL, 'S', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(5, NULL, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(6, NULL, 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(7, NULL, 'XL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(8, NULL, '2XL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(9, NULL, '3XL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `storages`
--

CREATE TABLE `storages` (
  `id` int(11) NOT NULL,
  `nhap_id` int(11) DEFAULT NULL,
  `nhap_order_id` int(11) DEFAULT NULL,
  `product_node_id` int(11) DEFAULT NULL,
  `size_id` int(11) DEFAULT NULL,
  `color_id` int(11) DEFAULT NULL,
  `color` char(11) CHARACTER SET utf8mb4 NOT NULL,
  `size` char(11) CHARACTER SET utf8mb4 NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `kiemkho_id` int(11) DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  `modified` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '0: ko tinh vao ton: 1 la tinh vao ton',
  `price` int(11) DEFAULT NULL,
  `custom_price` int(11) DEFAULT NULL,
  `type` int(11) NOT NULL COMMENT '5: custom price'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `storages`
--

INSERT INTO `storages` (`id`, `nhap_id`, `nhap_order_id`, `product_node_id`, `size_id`, `color_id`, `color`, `size`, `quantity`, `kiemkho_id`, `created`, `modified`, `status`, `price`, `custom_price`, `type`) VALUES
(1, 1, 1, 80, NULL, NULL, 'White', 'S', 10, NULL, 1702186714, 1702186714, 1, NULL, NULL, 0),
(2, 1, 1, 80, NULL, NULL, 'White', 'M', 10, NULL, 1702186714, 1702186714, 1, NULL, NULL, 0),
(3, 2, 2, 81, NULL, NULL, 'White', 'S', 1, NULL, 1702189257, 1702189257, 1, NULL, NULL, 0),
(4, 2, 2, 81, NULL, NULL, 'White', 'L', 1, NULL, 1702189257, 1702189257, 1, NULL, NULL, 0),
(5, 3, 3, 82, NULL, NULL, 'White', 'S', 1, NULL, 1702189314, 1702189314, 1, NULL, NULL, 0),
(6, 3, 3, 82, NULL, NULL, 'White', 'L', 1, NULL, 1702189314, 1702189314, 1, NULL, NULL, 0),
(7, 4, 4, 83, NULL, NULL, 'White', 'S', 1, NULL, 1702189397, 1702189397, 1, NULL, NULL, 0),
(8, 4, 4, 83, NULL, NULL, 'White', 'L', 1, NULL, 1702189397, 1702189397, 1, NULL, NULL, 0),
(9, 4, 4, 83, NULL, NULL, 'Ping', 'S', 1, NULL, 1702189397, 1702189397, 1, NULL, NULL, 0),
(10, 5, 5, 84, NULL, NULL, 'White', 'S', 1, NULL, 1702193339, 1702193339, 1, NULL, NULL, 0),
(11, 5, 5, 84, NULL, NULL, 'White', 'M', 1, NULL, 1702193339, 1702193339, 1, NULL, NULL, 0),
(12, 6, 6, 85, NULL, NULL, 'White', 'S', 111, NULL, 1702274952, 1702657067, 1, NULL, NULL, 0),
(13, 6, 6, 85, NULL, NULL, 'White', 'M', 111, NULL, 1702274952, 1702657067, 1, NULL, NULL, 0),
(14, 6, 6, 85, NULL, NULL, 'Blue', 'M', 2, NULL, 1702274952, 1702657067, 1, NULL, NULL, 0),
(21, 6, 6, 85, NULL, NULL, 'Ping', 'S', 111, NULL, 1702289512, 1702657067, 1, NULL, NULL, 0),
(22, 6, 6, 85, NULL, NULL, 'White', 'XL', 111, NULL, 1702289802, 1702657067, 1, NULL, NULL, 0),
(23, NULL, NULL, 7, NULL, NULL, 'White', 'S', 111, NULL, 1704980444, 1704981643, 1, NULL, NULL, 0),
(24, NULL, NULL, 7, NULL, NULL, 'White', 'M', 111, NULL, 1704980444, 1704981643, 1, NULL, NULL, 0),
(25, NULL, NULL, 7, NULL, NULL, 'White', 'XL', 111, NULL, 1704980444, 1704981643, 1, NULL, NULL, 0),
(26, NULL, NULL, 7, NULL, NULL, 'Blue', 'M', 2, NULL, 1704980444, 1704981643, 1, NULL, NULL, 0),
(27, NULL, NULL, 7, NULL, NULL, 'Ping', 'S', 111, NULL, 1704980444, 1704981643, 1, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `subcribers`
--

CREATE TABLE `subcribers` (
  `id` int(11) NOT NULL,
  `email` varchar(64) DEFAULT NULL,
  `created` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `ngay_hentra` int(11) DEFAULT NULL,
  `images` text,
  `loaitien` int(11) DEFAULT '1' COMMENT '0: usd, 1: vnd, 2: rmb, 3: thb',
  `u_id` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `suppliers`
--

INSERT INTO `suppliers` (`id`, `title`, `address`, `phone`, `ngay_hentra`, `images`, `loaitien`, `u_id`) VALUES
(1, 'ncc3', '', '', NULL, '', 1, 1),
(2, 'ncc1', '', '', NULL, '', 1, 1),
(3, 'ncc1', 'hn', '0336665544', NULL, '', 1, 1),
(4, 'ncc2', '', '', NULL, '', 1, 1),
(5, 'ncc4', 'NH', '0339998866', NULL, '', 1, 1),
(6, 'ncc5', '', '', NULL, '', 1, 1),
(7, 'ncc6', '', '', NULL, '', 1, 1),
(8, 'ncc7', '', '', NULL, '', 1, 1),
(9, 'ncc8', '', '', NULL, '', 1, 1),
(10, 'ncc9', '', '', NULL, '', 1, 1),
(11, 'ncc10', '', '', NULL, '', 1, 1),
(12, 'ncc11', '', '', NULL, '', 1, 1),
(13, 'ncc12', '', '', NULL, '', 1, 1),
(14, 'Nc13', '', '', NULL, '', 1, 1),
(15, 'ncc14', '', '', NULL, '', 1, 1),
(16, 'NCC Hoang', 'Hà Nội', '0359698828', NULL, '', 1, 1),
(17, 'NCC 15', 'gn', '0339996655', NULL, '', 1, 1),
(18, 'ncc16', '', '', NULL, '', 1, 1),
(19, 'Ncc17', 'HN', '0123456789', NULL, '', 1, 1),
(20, 'ncc12', 'HN', '0123243258', NULL, '', 1, 1),
(21, 'NCC 18 giày da', 'hn', '0339996633', NULL, '', 1, 1),
(22, 'ncc moi 1', '', '0123434354', NULL, '', 1, 32),
(23, 'NCC việt quần đùi', '', '0999888888', NULL, '', 1, 1),
(24, 'Giày da việt', '', '0998887766', NULL, '', 1, 1),
(25, 'Tam Ban Hang', '', '0123344355', NULL, '', 1, 1),
(26, 'Hoàng dép lào', '', '0123456789', NULL, '', 1, 1),
(27, 'ncc10', '', '0233534545', NULL, '', 1, 30);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `system_status`
--

CREATE TABLE `system_status` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `val` varchar(255) DEFAULT NULL,
  `st_type` varchar(255) DEFAULT NULL,
  `pos` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thongbaos`
--

CREATE TABLE `thongbaos` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `group_name` varchar(32) DEFAULT NULL,
  `tb_type` varchar(32) DEFAULT NULL COMMENT 'hanghoa, trangthai, toahang, khachhang',
  `status` int(11) DEFAULT NULL,
  `foreign_id` int(11) DEFAULT NULL,
  `created` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `thongbaos`
--

INSERT INTO `thongbaos` (`id`, `title`, `group_name`, `tb_type`, `status`, `foreign_id`, `created`) VALUES
(1, 'Đơn hàng mới của khách Khách mới được tạo bởi Administrator', 'admin', 'toahang', 1, 356, 1698138978),
(2, 'Đơn hàng mới của khách Khách mới được tạo bởi Administrator', 'admin', 'toahang', 1, 356, 1698146830),
(3, 'Sản phẩm mới đã được tạo bởi Administrator', 'admin', 'hanghoa', 0, 6, 1698202582),
(4, 'Sản phẩm mới đã được tạo bởi Administrator', 'kho', 'hanghoa', 0, 6, 1698202582),
(5, 'Đơn hàng mới của khách Doradev được tạo bởi Administrator', 'admin', 'toahang', 0, 5, 1698202737),
(6, 'Đơn hàng mới của khách Tam nv được tạo bởi Administrator', 'admin', 'toahang', 0, 7, 1698203130),
(7, 'Đơn hàng mới của khách Ng Tam được tạo bởi Administrator', 'admin', 'toahang', 0, 9, 1698203222),
(8, 'Đơn hàng mới của khách Tam được tạo bởi Administrator', 'admin', 'toahang', 0, 11, 1698203511),
(9, 'Đơn hàng mới của khách Khách mới được tạo bởi Administrator', 'admin', 'toahang', 0, 13, 1698203906),
(10, 'Đơn hàng mới của khách Việt Ninh Bình được tạo bởi Administrator', 'admin', 'toahang', 0, 14, 1698203999),
(11, 'Đơn hàng mới của khách Khách mới được tạo bởi Administrator', 'admin', 'toahang', 0, 16, 1698204501),
(12, 'Đơn hàng mới của khách Khách 6 được tạo bởi Administrator', 'admin', 'toahang', 0, 17, 1698204728),
(13, 'Đơn hàng mới của khách Khach moi 2 được tạo bởi Administrator', 'admin', 'toahang', 0, 18, 1698204775),
(14, 'Đơn hàng mới của khách Khách 6 được tạo bởi Administrator', 'admin', 'toahang', 0, 17, 1698204797),
(15, 'Đơn hàng mới của khách Ng Tam được tạo bởi Administrator', 'admin', 'toahang', 0, 20, 1698205524),
(16, 'Đơn hàng mới của khách Tam khach được tạo bởi Administrator', 'admin', 'toahang', 0, 21, 1698206746),
(17, 'Đơn hàng mới của khách Việt Ninh Bình được tạo bởi Administrator', 'admin', 'toahang', 0, 23, 1698206788),
(18, 'Đơn hàng mới của khách Khách mới được tạo bởi Administrator', 'admin', 'toahang', 0, 29, 1698206946),
(19, 'Đơn hàng mới của khách Khách mới được tạo bởi Administrator', 'admin', 'toahang', 0, 31, 1698207007),
(20, 'Đơn hàng mới của khách Khách mới được tạo bởi Administrator', 'admin', 'toahang', 0, 35, 1698207049),
(21, 'Đơn hàng mới của khách Khách mới được tạo bởi Administrator', 'admin', 'toahang', 0, 37, 1698207084),
(22, 'đơn hàng của khách Khách mới(tạo bởi Administrator) đã nhặt xong', 'admin', 'hanghoa', 0, 31, 1698210264),
(23, 'đơn hàng của khách Khách mới(tạo bởi Administrator) đang được nhặt tại cửa hàng', 'admin', 'hanghoa', 0, 31, 1698210281),
(24, 'đơn hàng của khách Khách mới(tạo bởi Administrator) đã nhặt xong', 'admin', 'hanghoa', 0, 31, 1698210622),
(25, 'đơn hàng của khách Khách mới(tạo bởi Administrator) đã nhặt xong', 'admin', 'hanghoa', 0, 29, 1698210698),
(26, 'đơn hàng của khách Khách 6(tạo bởi Administrator) đã nhặt xong', 'admin', 'hanghoa', 0, 17, 1698219415),
(27, 'đơn hàng của khách Tam nv(tạo bởi Administrator) đã nhặt xong', 'admin', 'hanghoa', 0, 7, 1698219803),
(28, 'đơn hàng của khách Khách mới(tạo bởi Administrator) đã nhặt xong', 'admin', 'hanghoa', 0, 16, 1698220082),
(29, 'đơn hàng của khách Doradev(tạo bởi Administrator) đã nhặt xong', 'admin', 'hanghoa', 0, 5, 1698220148),
(30, 'đơn hàng của khách Việt Ninh Bình(tạo bởi Administrator) đã nhặt xong', 'admin', 'hanghoa', 0, 14, 1698220271),
(31, 'đơn hàng của khách Mai ánh(tạo bởi Administrator) đã nhặt xong', 'admin', 'hanghoa', 0, 13, 1698220588),
(32, 'đơn hàng của khách Ng Tam(tạo bởi Administrator) đã nhặt xong', 'admin', 'hanghoa', 0, 9, 1698221200),
(33, 'đơn hàng của khách Ng Tam(tạo bởi Administrator) đang được nhặt tại cửa hàng', 'admin', 'hanghoa', 0, 9, 1698221952),
(34, 'đơn hàng của khách Ng Tam(tạo bởi Administrator) đã nhặt xong', 'admin', 'hanghoa', 0, 9, 1698221957),
(35, 'Đơn hàng mới của khách Khách mới được tạo bởi admin', 'admin', 'toahang', 0, 48, 1698223505),
(36, 'Đơn hàng mới của khách Khách mới được tạo bởi Administrator', 'admin', 'toahang', 0, 50, 1698224437),
(37, 'Đơn hàng mới của khách Khách mới được tạo bởi Administrator', 'admin', 'toahang', 0, 53, 1698224506),
(38, 'Đơn hàng mới của khách Khách mới được tạo bởi Administrator', 'admin', 'toahang', 0, 55, 1698224593),
(39, 'Đơn hàng mới của khách Việt Ninh Bình được tạo bởi Administrator', 'admin', 'toahang', 0, 74, 1698273086),
(40, 'Đơn hàng mới của khách Tam khach được tạo bởi Administrator', 'admin', 'toahang', 0, 98, 1698273416),
(41, 'Sản phẩm mới đã được tạo bởi Administrator', 'admin', 'hanghoa', 0, 7, 1698274027),
(42, 'Sản phẩm mới đã được tạo bởi Administrator', 'kho', 'hanghoa', 0, 7, 1698274027),
(43, 'Sản phẩm mới đã được tạo bởi Administrator', 'admin', 'hanghoa', 0, 8, 1698274397),
(44, 'Sản phẩm mới đã được tạo bởi Administrator', 'kho', 'hanghoa', 0, 8, 1698274397),
(45, 'Đơn hàng mới của khách Ng Tam được tạo bởi Administrator', 'admin', 'toahang', 0, 99, 1698274541),
(46, 'đơn hàng của khách Ng Tam(tạo bởi Administrator) đã nhặt xong', 'admin', 'hanghoa', 0, 99, 1698275348),
(47, 'Sản phẩm mới đã được tạo bởi Administrator', 'admin', 'hanghoa', 0, 10, 1698285643),
(48, 'Sản phẩm mới đã được tạo bởi Administrator', 'kho', 'hanghoa', 0, 10, 1698285643),
(49, 'Đơn hàng mới của khách Khách mới được tạo bởi Administrator', 'admin', 'toahang', 0, 100, 1698285718),
(50, 'Đơn hàng mới của khách Khách mới được tạo bởi Administrator', 'admin', 'toahang', 0, 101, 1698286541),
(51, 'Đơn hàng của khách Ng Tam mới được tạo bởi Administrator', 'admin', 'hanghoa', 0, 102, 1698286716),
(52, 'Đơn hàng của khách Ng Tam mới được tạo bởi Administrator', 'admin', 'hanghoa', 0, 102, 1698286717),
(53, 'Đơn hàng mới của khách Khách mới được tạo bởi Tâm(nvbangang)', 'admin', 'toahang', 0, 104, 1698288391),
(54, 'đơn hàng của khách Khách mới(tạo bởi Administrator) đã nhặt xong', 'admin', 'hanghoa', 0, 104, 1698289009),
(55, 'Đơn hàng của khách Khách mới mới được tạo bởi Administrator', 'admin', 'hanghoa', 0, 104, 1698290070),
(56, 'đơn hàng của khách Ng Tam(tạo bởi Administrator) đã nhặt xong', 'admin', 'hanghoa', 0, 104, 1698290172),
(57, 'đơn hàng của khách Ng Tam(tạo bởi Administrator) đã nhặt xong', 'admin', 'hanghoa', 0, 104, 1698290183),
(58, 'đơn hàng của khách Ng Tam(tạo bởi Administrator) đang được nhặt tại cửa hàng', 'admin', 'hanghoa', 0, 104, 1698290660),
(59, 'đơn hàng của khách Ng Tam(tạo bởi Administrator) đang được nhặt tại cửa hàng', 'admin', 'hanghoa', 0, 104, 1698290679),
(60, 'đơn hàng của khách Ng Tam(tạo bởi Administrator) đã nhặt xong', 'admin', 'hanghoa', 0, 104, 1698290682),
(61, 'đơn hàng của khách Ng Tam(tạo bởi Administrator) đang được nhặt tại cửa hàng', 'admin', 'hanghoa', 0, 104, 1698290694),
(62, 'đơn hàng của khách Ng Tam(tạo bởi Administrator) đang được nhặt tại cửa hàng', 'admin', 'hanghoa', 0, 104, 1698290697),
(63, 'đơn hàng của khách Ng Tam(tạo bởi Administrator) đã nhặt xong', 'admin', 'hanghoa', 0, 104, 1698290703),
(64, 'đơn hàng của khách Khách mới(tạo bởi Administrator) đang được nhặt tại cửa hàng', 'admin', 'hanghoa', 0, 100, 1698292086),
(65, 'Đơn hàng mới của khách Khách mới được tạo bởi Administrator', 'admin', 'toahang', 0, 106, 1698292326),
(66, 'Đơn hàng mới của khách Khách mới được tạo bởi Administrator', 'admin', 'toahang', 0, 107, 1698293408),
(67, 'Đơn hàng mới của khách Khách mới được tạo bởi Administrator', 'admin', 'toahang', 0, 108, 1698294142),
(68, 'đơn hàng của khách Ng Tam(tạo bởi Administrator) đã nhặt xong', 'admin', 'hanghoa', 0, 107, 1698374881),
(69, 'đơn hàng của khách Ng Tam(tạo bởi Administrator) đã nhặt xong', 'admin', 'hanghoa', 0, 106, 1698374990),
(70, 'Đơn hàng mới của khách Khách mới được tạo bởi Administrator', 'admin', 'toahang', 0, 115, 1698376794),
(71, 'Sản phẩm mới đã được tạo bởi nvkho', 'admin', 'hanghoa', 0, 375, 1698834959),
(72, 'Sản phẩm mới đã được tạo bởi nvkho', 'kho', 'hanghoa', 0, 375, 1698834961),
(73, 'Sản phẩm mới đã được tạo bởi ', 'admin', 'hanghoa', 0, 35, 1702143981),
(74, 'Sản phẩm mới đã được tạo bởi ', 'kho', 'hanghoa', 0, 35, 1702143981),
(75, NULL, 'admin', 'hanghoa', 0, 42, 1702181380),
(76, NULL, 'kho', 'hanghoa', 0, 42, 1702181380),
(77, NULL, 'admin', 'hanghoa', 0, 43, 1702181434),
(78, NULL, 'kho', 'hanghoa', 0, 43, 1702181434),
(79, 'Sản phẩm mới đã được tạo bởi ', 'admin', 'hanghoa', 0, 44, 1702181472),
(80, 'Sản phẩm mới đã được tạo bởi ', 'kho', 'hanghoa', 0, 44, 1702181472),
(81, 'Sản phẩm mới đã được tạo bởi ', 'admin', 'hanghoa', 0, 45, 1702181492),
(82, 'Sản phẩm mới đã được tạo bởi ', 'kho', 'hanghoa', 0, 45, 1702181492),
(83, 'Sản phẩm mới đã được tạo bởi ', 'admin', 'hanghoa', 0, 47, 1702181576),
(84, 'Sản phẩm mới đã được tạo bởi ', 'kho', 'hanghoa', 0, 47, 1702181576),
(85, 'Sản phẩm mới đã được tạo bởi ', 'admin', 'hanghoa', 0, 48, 1702181740),
(86, 'Sản phẩm mới đã được tạo bởi ', 'kho', 'hanghoa', 0, 48, 1702181740),
(87, 'Sản phẩm mới đã được tạo bởi ', 'admin', 'hanghoa', 0, 54, 1702182799),
(88, 'Sản phẩm mới đã được tạo bởi ', 'kho', 'hanghoa', 0, 54, 1702182799),
(89, 'Sản phẩm mới đã được tạo bởi ', 'admin', 'hanghoa', 0, 55, 1702182945),
(90, 'Sản phẩm mới đã được tạo bởi ', 'kho', 'hanghoa', 0, 55, 1702182945),
(91, 'Sản phẩm mới đã được tạo bởi ', 'admin', 'hanghoa', 0, 57, 1702182994),
(92, 'Sản phẩm mới đã được tạo bởi ', 'kho', 'hanghoa', 0, 57, 1702182994),
(93, 'Sản phẩm mới đã được tạo bởi ', 'admin', 'hanghoa', 0, 65, 1702185355),
(94, 'Sản phẩm mới đã được tạo bởi ', 'kho', 'hanghoa', 0, 65, 1702185355),
(95, 'Sản phẩm mới đã được tạo bởi ', 'admin', 'hanghoa', 0, 66, 1702185380),
(96, 'Sản phẩm mới đã được tạo bởi ', 'kho', 'hanghoa', 0, 66, 1702185380),
(97, 'Sản phẩm mới đã được tạo bởi ', 'admin', 'hanghoa', 0, 67, 1702185406),
(98, 'Sản phẩm mới đã được tạo bởi ', 'kho', 'hanghoa', 0, 67, 1702185406),
(99, 'Sản phẩm mới đã được tạo bởi ', 'admin', 'hanghoa', 0, 69, 1702185705),
(100, 'Sản phẩm mới đã được tạo bởi ', 'kho', 'hanghoa', 0, 69, 1702185705),
(101, 'Sản phẩm mới đã được tạo bởi ', 'admin', 'hanghoa', 0, 70, 1702185807),
(102, 'Sản phẩm mới đã được tạo bởi ', 'kho', 'hanghoa', 0, 70, 1702185807),
(103, 'Sản phẩm mới đã được tạo bởi ', 'admin', 'hanghoa', 0, 71, 1702185914),
(104, 'Sản phẩm mới đã được tạo bởi ', 'kho', 'hanghoa', 0, 71, 1702185914);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thuchis`
--

CREATE TABLE `thuchis` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT '0' COMMENT 'người lập',
  `customer_id` int(11) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `source_id` int(11) DEFAULT NULL,
  `bill_id` int(11) DEFAULT NULL,
  `nhap_id` int(11) DEFAULT NULL,
  `trahang_id` int(11) DEFAULT NULL,
  `ghi_chu` text,
  `images` text,
  `created` int(11) DEFAULT NULL,
  `type` varchar(16) DEFAULT '1' COMMENT '1: phiếu thu, 2: phiếu chi',
  `c_type` int(11) DEFAULT '3' COMMENT '1: Ra lộc || 2: Đặt cọc || 3: Nợ lại || 4: loại thanh toan',
  `status` int(11) DEFAULT '0' COMMENT '0: ko tính vào phiếu chi thu: 1 là tính vào phiếu thu chi',
  `phuthu` int(11) DEFAULT '0',
  `phuchi` int(11) DEFAULT '0',
  `tienmat` int(11) DEFAULT '0',
  `chuyenkhoan` int(11) DEFAULT '0',
  `debt` int(11) DEFAULT '0',
  `datcoc` int(11) DEFAULT '0',
  `ngaytrano` int(11) DEFAULT NULL,
  `tienloc` int(11) DEFAULT '0',
  `order_price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `thuchis`
--

INSERT INTO `thuchis` (`id`, `user_id`, `customer_id`, `supplier_id`, `source_id`, `bill_id`, `nhap_id`, `trahang_id`, `ghi_chu`, `images`, `created`, `type`, `c_type`, `status`, `phuthu`, `phuchi`, `tienmat`, `chuyenkhoan`, `debt`, `datcoc`, `ngaytrano`, `tienloc`, `order_price`) VALUES
(36, 0, NULL, 27, NULL, NULL, 3, NULL, NULL, NULL, 1698274397, '2', 3, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL),
(37, 1, 18, NULL, NULL, 99, NULL, NULL, '', NULL, 1698274541, '1', 3, 1, 150000, 100000, 1250000, 0, 0, 0, NULL, 0, NULL),
(38, 1, NULL, NULL, NULL, NULL, NULL, 9, NULL, NULL, 1698276684, '1', 3, 1, 300000, 250000, 0, 0, 0, 0, NULL, 0, NULL),
(39, 32, 0, NULL, NULL, NULL, NULL, 10, NULL, NULL, 1698285264, '2', 3, 1, 0, 0, 0, 0, 0, 0, NULL, 0, NULL),
(40, 0, NULL, 27, NULL, NULL, 4, NULL, NULL, NULL, 1698285643, '2', 3, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL),
(41, 1, 0, NULL, NULL, 100, NULL, NULL, '', NULL, 1698285718, '1', 3, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL),
(42, 1, 18, NULL, NULL, 101, NULL, NULL, '', NULL, 1698286541, '1', 3, 1, 0, 0, 0, 0, 0, 0, NULL, 0, NULL),
(43, 1, NULL, 27, NULL, NULL, 5, NULL, '', NULL, 1698287023, '2', 3, 1, 0, 100000, 0, 0, 200000, 0, NULL, 0, NULL),
(44, 1, NULL, 27, NULL, NULL, 6, NULL, NULL, NULL, 1698287031, '2', 3, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL),
(45, 1, NULL, 27, NULL, NULL, 7, NULL, NULL, NULL, 1698287414, '2', 3, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL),
(46, 1, NULL, 27, NULL, NULL, 8, NULL, NULL, NULL, 1698287423, '2', 3, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL),
(47, 1, NULL, 27, NULL, NULL, 9, NULL, NULL, NULL, 1698287443, '2', 3, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL),
(48, 1, NULL, 27, NULL, NULL, 10, NULL, NULL, NULL, 1698287834, '2', 3, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL),
(49, 32, 0, NULL, NULL, NULL, NULL, 11, NULL, NULL, 1698288061, '2', 3, 0, NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL),
(51, 1, NULL, NULL, NULL, NULL, NULL, 12, NULL, NULL, 1698289016, '1', 3, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL),
(52, 1, NULL, NULL, NULL, NULL, NULL, 13, NULL, NULL, 1698290737, '1', 3, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL),
(53, 1, NULL, NULL, NULL, NULL, NULL, 14, NULL, NULL, 1698290812, '1', 3, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL),
(54, 1, 0, NULL, NULL, 106, NULL, NULL, '', NULL, 1698292326, '1', 3, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL),
(55, 1, 0, NULL, NULL, 107, NULL, NULL, '', NULL, 1698293407, '1', 3, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL),
(56, 1, 0, NULL, NULL, 108, NULL, NULL, '', NULL, 1698294142, '1', 3, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL),
(57, 37, NULL, 27, NULL, NULL, 11, NULL, NULL, NULL, 1698294892, '2', 3, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL),
(58, 37, NULL, 27, NULL, NULL, 12, NULL, NULL, NULL, 1698294900, '2', 3, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL),
(59, 37, NULL, 27, NULL, NULL, NULL, 15, NULL, NULL, 1698295631, '1', 3, 1, NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL),
(60, 37, NULL, 27, NULL, NULL, NULL, 17, NULL, NULL, 1698295852, '1', 3, 0, NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL),
(61, 37, NULL, 27, NULL, NULL, NULL, 18, NULL, NULL, 1698295877, '1', 3, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL),
(62, 37, NULL, 27, NULL, NULL, NULL, 19, NULL, NULL, 1698296766, '1', 3, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL),
(63, 1, NULL, NULL, NULL, NULL, NULL, 20, NULL, NULL, 1698374889, '1', 3, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL),
(64, 1, NULL, 27, NULL, NULL, 13, NULL, NULL, NULL, 1698375331, '2', 3, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL),
(65, 1, NULL, 27, NULL, NULL, 14, NULL, NULL, NULL, 1698375337, '2', 3, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL),
(66, 1, NULL, 27, NULL, NULL, 15, NULL, NULL, NULL, 1698375377, '2', 3, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL),
(67, 1, NULL, 27, NULL, NULL, 16, NULL, NULL, NULL, 1698375414, '2', 3, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL),
(68, 1, NULL, 27, NULL, NULL, 17, NULL, NULL, NULL, 1698375438, '2', 3, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL),
(69, 1, 0, NULL, NULL, 115, NULL, NULL, '', NULL, 1698376794, '1', 3, 1, 0, 1000000, 19000000, 10000000, 0, 0, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tiendos`
--

CREATE TABLE `tiendos` (
  `id` int(11) NOT NULL,
  `node_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `image` varchar(255) DEFAULT NULL,
  `content` text,
  `seo_title` varchar(255) DEFAULT NULL,
  `seo_keyword` varchar(255) DEFAULT NULL,
  `seo_description` text,
  `pos` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tonkhos`
--

CREATE TABLE `tonkhos` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `from` int(11) DEFAULT NULL,
  `to` int(11) DEFAULT NULL,
  `tondau` int(11) DEFAULT NULL,
  `gianhap` int(11) DEFAULT NULL,
  `giaban` int(11) DEFAULT NULL,
  `slban` int(11) DEFAULT NULL,
  `tienban` int(11) DEFAULT NULL,
  `tiennhap` int(11) DEFAULT NULL,
  `laiuoctinh` int(11) DEFAULT NULL,
  `slton` int(11) DEFAULT NULL,
  `tienton` int(11) DEFAULT NULL,
  `product_node_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `trahangs`
--

CREATE TABLE `trahangs` (
  `id` int(11) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '-1: nhap : 0: là chờ kiểm hàng; 1 là đã kiểm hàngm 2: hoàn tất',
  `auto` int(11) DEFAULT '0' COMMENT 'Nếu xóa ở bên toa hàng auto = 1',
  `type` int(11) DEFAULT NULL COMMENT '1: là khach hàng trả: 2 là trả xưởng',
  `product_node_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `u_id` int(11) DEFAULT NULL,
  `bill_refer` int(11) DEFAULT '0',
  `ghi_chu` text CHARACTER SET utf8,
  `modified` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `trahangs`
--

INSERT INTO `trahangs` (`id`, `supplier_id`, `quantity`, `total`, `created`, `status`, `auto`, `type`, `product_node_id`, `customer_id`, `u_id`, `bill_refer`, `ghi_chu`, `modified`) VALUES
(9, NULL, NULL, NULL, 1698276684, 2, 0, 1, NULL, 18, 1, 99, 'Sao chép từ toa bán #TP_DH99', 1698277118),
(10, 0, 2, NULL, 1698285251, 2, 0, 1, NULL, 0, 32, 0, '', 1698285312),
(11, 0, 2, NULL, 1698288044, 0, 0, 1, NULL, 0, 32, 0, '', 1698288064),
(12, NULL, NULL, NULL, 1698289016, 0, 1, 1, NULL, 0, 1, 0, 'Tự động tạo từ toa bán đã nhặt có chỉnh sửa giảm số lượng', 1698289016),
(13, NULL, NULL, NULL, 1698290737, 1, 1, 1, NULL, 18, 1, 0, 'Tự động tạo từ toa bán đã bị xóa', 1698296413),
(14, NULL, NULL, NULL, 1698290812, 1, 0, 1, NULL, 18, 1, 101, 'Sao chép từ toa bán #TP_DH101', 1698295382),
(15, 27, 2, NULL, 1698295625, 2, 0, 2, NULL, 0, 37, 0, '', 1698295633),
(17, 27, 1, NULL, 1698295848, 0, 0, 2, NULL, 0, 37, 0, '', 1698295854),
(18, 27, 4, NULL, 1698295865, 1, 0, 2, NULL, 0, 37, 0, '', 1698297285),
(19, 27, 2, NULL, 1698296760, 1, 0, 2, NULL, 0, 37, 0, '', 1698297171),
(20, NULL, NULL, NULL, 1698374889, 0, 1, 1, NULL, 18, 1, 0, 'Tự động tạo từ toa bán đã nhặt có chỉnh sửa giảm số lượng', 1698374889);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `trahang_details`
--

CREATE TABLE `trahang_details` (
  `id` int(11) NOT NULL,
  `trahang_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `size_id` int(11) DEFAULT NULL,
  `color_id` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL COMMENT '1: khách hàng trả, 2: trả xưởng: 5: custom price',
  `custom_price` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `created` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `trahang_details`
--

INSERT INTO `trahang_details` (`id`, `trahang_id`, `order_id`, `size_id`, `color_id`, `price`, `quantity`, `type`, `custom_price`, `product_id`, `created`) VALUES
(16, 9, 40, 3, 10, 300000, 2, NULL, NULL, 8, 1698276684),
(17, 9, 40, 2, 10, 300000, 2, NULL, NULL, 8, 1698276684),
(18, 9, 40, 30, 10, 300000, 2, NULL, NULL, 8, 1698276684),
(19, 9, 40, 32, 10, 300000, 2, NULL, NULL, 8, 1698276684),
(20, 10, 41, 3, 10, NULL, 1, NULL, NULL, 8, 1698285264),
(21, 10, 41, 2, 10, NULL, 1, NULL, NULL, 8, 1698285264),
(22, 11, 50, 3, 10, NULL, 1, NULL, NULL, 8, 1698288061),
(23, 11, 50, 2, 10, NULL, 1, NULL, NULL, 8, 1698288061),
(24, 12, 52, 3, 10, 150000, 1, NULL, NULL, 8, 1698289016),
(25, 12, 52, 2, 10, 150000, 1, NULL, NULL, 8, 1698289016),
(26, 13, 55, 3, 10, 300000, 2, NULL, NULL, 8, 1698290737),
(27, 13, 55, 2, 10, 300000, 2, NULL, NULL, 8, 1698290737),
(28, 13, 56, 38, 25, 1500000, 5, NULL, NULL, 10, 1698290737),
(29, 13, 56, 37, 25, 1500000, 5, NULL, NULL, 10, 1698290737),
(30, 14, 57, 38, 25, 300000, 1, NULL, NULL, 10, 1698290812),
(31, 14, 57, 37, 25, 300000, 1, NULL, NULL, 10, 1698290812),
(32, 15, 66, 38, 25, NULL, 1, NULL, NULL, 10, 1698295631),
(33, 15, 66, 37, 25, NULL, 1, NULL, NULL, 10, 1698295631),
(34, 17, 67, 37, 25, NULL, 1, NULL, NULL, 10, 1698295852),
(35, 18, 68, 3, 10, NULL, 1, NULL, NULL, 8, 1698295877),
(36, 18, 68, 2, 10, NULL, 3, NULL, NULL, 8, 1698295877),
(37, 19, 69, 38, 25, NULL, 1, NULL, NULL, 10, 1698296766),
(38, 19, 69, 37, 25, NULL, 1, NULL, NULL, 10, 1698296766),
(39, 20, 71, 38, 25, 1800000, 6, NULL, NULL, 10, 1698374889),
(40, 20, 71, 37, 25, 2100000, 7, NULL, NULL, 10, 1698374889);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(32) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `fullname` varchar(34) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Chỉ mục cho bảng `advs`
--
ALTER TABLE `advs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `agencies`
--
ALTER TABLE `agencies`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `Baohangs`
--
ALTER TABLE `Baohangs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `bosuutaps`
--
ALTER TABLE `bosuutaps`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category_linkeds`
--
ALTER TABLE `category_linkeds`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `clouds`
--
ALTER TABLE `clouds`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `collections`
--
ALTER TABLE `collections`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `colos`
--
ALTER TABLE `colos`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cuahangs`
--
ALTER TABLE `cuahangs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `customer_banners`
--
ALTER TABLE `customer_banners`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `customer_sources`
--
ALTER TABLE `customer_sources`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `domains`
--
ALTER TABLE `domains`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `elements`
--
ALTER TABLE `elements`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `emails`
--
ALTER TABLE `emails`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `emails_bak`
--
ALTER TABLE `emails_bak`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `filters`
--
ALTER TABLE `filters`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `filter_items`
--
ALTER TABLE `filter_items`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `filter_linkeds`
--
ALTER TABLE `filter_linkeds`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `ketnois`
--
ALTER TABLE `ketnois`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `kiemkhos`
--
ALTER TABLE `kiemkhos`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `langs`
--
ALTER TABLE `langs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `key` (`key`);

--
-- Chỉ mục cho bảng `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `miens`
--
ALTER TABLE `miens`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nhaps`
--
ALTER TABLE `nhaps`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nodes`
--
ALTER TABLE `nodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slug` (`slug`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_bills`
--
ALTER TABLE `order_bills`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `pictures`
--
ALTER TABLE `pictures`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `prices`
--
ALTER TABLE `prices`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `rates`
--
ALTER TABLE `rates`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `servers`
--
ALTER TABLE `servers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `name_2` (`name`);

--
-- Chỉ mục cho bảng `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `storages`
--
ALTER TABLE `storages`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `subcribers`
--
ALTER TABLE `subcribers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `system_status`
--
ALTER TABLE `system_status`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `thongbaos`
--
ALTER TABLE `thongbaos`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `thuchis`
--
ALTER TABLE `thuchis`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tiendos`
--
ALTER TABLE `tiendos`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tonkhos`
--
ALTER TABLE `tonkhos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_node_id` (`product_node_id`);

--
-- Chỉ mục cho bảng `trahangs`
--
ALTER TABLE `trahangs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `trahang_details`
--
ALTER TABLE `trahang_details`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT cho bảng `advs`
--
ALTER TABLE `advs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `agencies`
--
ALTER TABLE `agencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `Baohangs`
--
ALTER TABLE `Baohangs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `bosuutaps`
--
ALTER TABLE `bosuutaps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `category_linkeds`
--
ALTER TABLE `category_linkeds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `clouds`
--
ALTER TABLE `clouds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `collections`
--
ALTER TABLE `collections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `colos`
--
ALTER TABLE `colos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `cuahangs`
--
ALTER TABLE `cuahangs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `customer_banners`
--
ALTER TABLE `customer_banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `customer_sources`
--
ALTER TABLE `customer_sources`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `domains`
--
ALTER TABLE `domains`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `elements`
--
ALTER TABLE `elements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `emails`
--
ALTER TABLE `emails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `emails_bak`
--
ALTER TABLE `emails_bak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `filters`
--
ALTER TABLE `filters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `filter_items`
--
ALTER TABLE `filter_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `filter_linkeds`
--
ALTER TABLE `filter_linkeds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `ketnois`
--
ALTER TABLE `ketnois`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `kiemkhos`
--
ALTER TABLE `kiemkhos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `langs`
--
ALTER TABLE `langs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `miens`
--
ALTER TABLE `miens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nhaps`
--
ALTER TABLE `nhaps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `nodes`
--
ALTER TABLE `nodes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT cho bảng `order_bills`
--
ALTER TABLE `order_bills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- AUTO_INCREMENT cho bảng `pictures`
--
ALTER TABLE `pictures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `prices`
--
ALTER TABLE `prices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `rates`
--
ALTER TABLE `rates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `servers`
--
ALTER TABLE `servers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT cho bảng `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT cho bảng `storages`
--
ALTER TABLE `storages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `subcribers`
--
ALTER TABLE `subcribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `system_status`
--
ALTER TABLE `system_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `thongbaos`
--
ALTER TABLE `thongbaos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT cho bảng `thuchis`
--
ALTER TABLE `thuchis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT cho bảng `tiendos`
--
ALTER TABLE `tiendos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tonkhos`
--
ALTER TABLE `tonkhos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `trahangs`
--
ALTER TABLE `trahangs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `trahang_details`
--
ALTER TABLE `trahang_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
