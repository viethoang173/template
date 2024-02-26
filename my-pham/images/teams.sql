-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th1 31, 2024 lúc 11:28 AM
-- Phiên bản máy phục vụ: 10.6.14-MariaDB
-- Phiên bản PHP: 8.1.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webi_lsquang`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `teams`
--

CREATE TABLE `teams` (
  `id` int(11) NOT NULL,
  `fullname` varchar(128) DEFAULT NULL,
  `team_position` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `content` text DEFAULT NULL,
  `featured` int(11) DEFAULT NULL,
  `pos` int(11) DEFAULT 1,
  `status` int(11) DEFAULT 1,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `teams`
--

INSERT INTO `teams` (`id`, `fullname`, `team_position`, `image`, `description`, `content`, `featured`, `pos`, `status`, `facebook`, `twitter`, `linkedin`) VALUES
(2, 'Brandon Copperfield', NULL, 'https://img.webi.vn/app/webroot/uploads/images/1/2023/12/16/staff-1-350x250.jpg', 'Người sáng lập &amp; CEO', '<p>Là người sáng lập của chúng tôi, ông đã là thuyền trưởng của con tàu này ngay từ đầu và đã đưa nó trở thành người khổng lồ thành công như ngày nay. Anh ấy được biết...</p>\n', NULL, 6, 1, NULL, NULL, NULL),
(3, 'Clark Roberts', NULL, 'https://img.webi.vn/app/webroot/uploads/images/1/2023/12/16/staff-2-350x250.jpg', 'Giám đốc tài chính', '<p>Trở thành Giám đốc tài chính trong Ngành Tài chính là một nhiệm vụ khó khăn, rất may là anh ấy đã ở đây để lãnh đạo và dẫn dắt công ty đến nơi cần đến. Anh được biết đến với...</p>\n', NULL, 5, 1, NULL, NULL, NULL),
(4, 'Ashley Hardy', NULL, 'https://img.webi.vn/app/webroot/uploads/images/1/2023/12/16/staff-3-350x250.jpg', 'Phó Giám đốc Bán hàng và Tiếp thị', '<p><span style=\"color:rgb(119,119,119);font-family:\'roboto slab\', serif;\">Cô ấy là một nhà phát triển kinh doanh thành đạt. Kỹ năng tạo mối quan hệ với khách hàng của cô ấy quả là huyền thoại; những cú ném của cô ấy thật tuyệt vời và kiến ​​thức kỹ thuật của cô ấy...</span></p>\n', NULL, 4, 1, NULL, NULL, NULL),
(5, 'Dennis Norris', NULL, 'https://img.webi.vn/app/webroot/uploads/images/1/2023/12/16/staff-6-350x250.jpg', 'Trưởng phòng Marketing', '<p><span style=\"color:rgb(119,119,119);font-family:\'roboto slab\', serif;\">Anh ấy đã giúp Chủ đề WordPress dành cho doanh nghiệp đạt đến tầm cao mới và thâm nhập các thị trường mới. Kỹ năng hiểu biết nhận thức thị trường của anh ấy là vô song, và anh ấy đã định vị...</span></p>\n', NULL, 3, 1, NULL, NULL, NULL),
(6, 'Gina Kennedy', NULL, 'https://img.webi.vn/app/webroot/uploads/images/1/2023/12/16/staff-5-350x250.jpg', 'Người quản lý', '<p><span style=\"color:rgb(119,119,119);font-family:\'roboto slab\', serif;\">Khi chúng tôi giúp các công ty khác phát triển, cô ấy cũng giúp chúng tôi phát triển. Cô ấy xử lý tất cả các công việc nội bộ tại công ty tư vấn WP và đảm bảo rằng nhân viên và các bên liên quan đều hài lòng....</span></p>\n', NULL, 2, 1, NULL, NULL, NULL),
(7, 'Fernando Torres', NULL, 'https://img.webi.vn/app/webroot/uploads/images/1/2023/12/16/staff-4-350x250.jpg', 'Tư vấn thuế', '<p><span style=\"color:rgb(119,119,119);font-family:\'roboto slab\', serif;\">Luật và quy định về thuế là một trong những phần phức tạp và khó chịu nhất của ngành tài chính. Đó là lý do tại sao chúng ta may mắn có được Ngài là đầu của mình...</span></p>\n', NULL, 1, 1, NULL, NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `teams`
--
ALTER TABLE `teams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
