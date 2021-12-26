-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 21, 2021 lúc 10:55 AM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `twitter`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_users`
--

CREATE TABLE `tb_users` (
  `user_id` int(11) NOT NULL,
  `user_firstName` varchar(100) NOT NULL,
  `user_lastName` varchar(100) NOT NULL,
  `user_userName` varchar(150) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_profileImage` varchar(255) NOT NULL,
  `user_profileCover` varchar(255) NOT NULL,
  `user_following` int(11) NOT NULL,
  `user_followers` int(11) NOT NULL,
  `user_bio` text NOT NULL,
  `user_country` varchar(255) NOT NULL,
  `user_website` varchar(255) NOT NULL,
  `user_signUpDate` datetime NOT NULL DEFAULT current_timestamp(),
  `user_profileEdit` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tb_users`
--

INSERT INTO `tb_users` (`user_id`, `user_firstName`, `user_lastName`, `user_userName`, `user_email`, `user_password`, `user_profileImage`, `user_profileCover`, `user_following`, `user_followers`, `user_bio`, `user_country`, `user_website`, `user_signUpDate`, `user_profileEdit`) VALUES
(25, '12312', '312312', '12312312312', 'wilsonkylerkl@gmail.com', '$2y$10$kSCOm9pRI/h8e.p5uL7ANOpEQ5adak0pYw/DsVhn.rFQunD.t3mey', 'frontend/assets/image/profilePic.jpeg', 'frontend/assets/image/backgroundCoverPic.png', 0, 0, '', '', '', '2021-12-21 01:19:45', '0'),
(26, '3213123', '3123', '32131233123', '312312@gmail.com', '$2y$10$SFK1xGdROkbuj1QtW/tdXuWCbeZnqrayXpzqxe4KB86W0zTFNAegS', 'frontend/assets/image/profilePic.jpeg', 'frontend/assets/image/backgroundCoverPic.png', 0, 0, '', '', '', '2021-12-21 09:52:07', '0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_verification`
--

CREATE TABLE `tb_verification` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `status` enum('0','1') NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tb_verification`
--

INSERT INTO `tb_verification` (`id`, `user_id`, `code`, `status`, `createdAt`) VALUES
(51, 25, '947e4cf7d2f16354325b79de4', '1', '2021-12-21 01:19:49'),
(52, 25, '947e4cf7d2f16354325b79de4', '1', '2021-12-21 01:20:04'),
(53, 25, 'eda59cc3741dfcce9437d8d00', '0', '2021-12-21 01:20:17'),
(54, 26, 'b005f92c1653ca92f11752f00', '0', '2021-12-21 09:52:12');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tb_users`
--
ALTER TABLE `tb_users`
  ADD PRIMARY KEY (`user_id`);

--
-- Chỉ mục cho bảng `tb_verification`
--
ALTER TABLE `tb_verification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_foreign_verify` (`user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tb_users`
--
ALTER TABLE `tb_users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `tb_verification`
--
ALTER TABLE `tb_verification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tb_verification`
--
ALTER TABLE `tb_verification`
  ADD CONSTRAINT `fk_foreign_verify` FOREIGN KEY (`user_id`) REFERENCES `tb_users` (`user_id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
