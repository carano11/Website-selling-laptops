-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 11, 2023 lúc 03:18 PM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `app_shop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `admin_email` varchar(100) NOT NULL,
  `admin_password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `admin_name`, `admin_email`, `admin_password`) VALUES
(999, 'Admin Bi', 'admin@gmail.com', '123456'),
(1000, 'Admin App', 'app@gmail.com', '123456');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `color` varchar(100) NOT NULL,
  `size` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`cart_id`, `user_id`, `item_id`, `quantity`, `color`, `size`) VALUES
(4, 2, 202, 2, '[white', '[4]'),
(5, 2, 206, 1, '[white]', '[16]');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `favorite_table`
--

CREATE TABLE `favorite_table` (
  `favorite_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `favorite_table`
--

INSERT INTO `favorite_table` (`favorite_id`, `user_id`, `item_id`) VALUES
(3, 1, 202),
(4, 1, 208),
(5, 1, 199);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `items`
--

CREATE TABLE `items` (
  `item_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `rating` double NOT NULL,
  `tags` varchar(100) NOT NULL,
  `price` double NOT NULL,
  `sizes` varchar(100) NOT NULL,
  `colors` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `items`
--

INSERT INTO `items` (`item_id`, `name`, `rating`, `tags`, `price`, `sizes`, `colors`, `description`, `image`) VALUES
(199, 'test', 4.4, '[acer,  laptop gaming]', 111, '[12, 13, 14]', '[black, white]', 'eghif qwirfjiwi wijfji', 'https://i.imgur.com/1o1uCPF.jpg'),
(202, 'laptop 88', 3.2, '[hp,  laptop gaming]', 123, '[4]', '[white,  black]', 'ifiwhfh quhf huwuuh', 'https://i.imgur.com/11dcSQh.jpg'),
(206, 'laptop ss', 4.5, '[hp]', 221, '[16]', '[white]', 'wuhih hiwfhi', 'https://i.imgur.com/kGhAhjF.jpg'),
(208, 'laptop 114', 4.6, '[hp]', 333, '[11]', '[black]', 'eue wufuh wuhwf', 'https://i.imgur.com/fbCBTfd.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders_table`
--

CREATE TABLE `orders_table` (
  `order_id` int(20) NOT NULL,
  `user_id` int(20) NOT NULL,
  `selectedItems` text NOT NULL,
  `deliverySystem` varchar(100) NOT NULL,
  `paymentSystem` varchar(100) NOT NULL,
  `note` text NOT NULL,
  `totalAmount` double NOT NULL,
  `image` text NOT NULL,
  `status` varchar(100) NOT NULL,
  `dateTime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `shipmentAddress` text NOT NULL,
  `phoneNumber` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `orders_table`
--

INSERT INTO `orders_table` (`order_id`, `user_id`, `selectedItems`, `deliverySystem`, `paymentSystem`, `note`, `totalAmount`, `image`, `status`, `dateTime`, `shipmentAddress`, `phoneNumber`) VALUES
(1, 1, '{\"item_id\":208,\"name\":\"laptop 114\",\"image\":\"https://i.imgur.com/fbCBTfd.jpg\",\"color\":\"[black]\",\"size\":\"[11]\",\"quantity\":1,\"totalAmount\":333.0,\"price\":333.0}||{\"item_id\":202,\"name\":\"laptop 88\",\"image\":\"https://i.imgur.com/11dcSQh.jpg\",\"color\":\"[white\",\"size\":\"[4]\",\"quantity\":2,\"totalAmount\":246.0,\"price\":123.0}', 'VNPost', 'Apple Pay', 'thank', 579, '1673371278315-image_picker442227151238009371.jpg', 'new', '2023-01-10 17:21:13', 'Da Nang', '0706097692'),
(2, 1, '{\"item_id\":199,\"name\":\"test\",\"image\":\"https://i.imgur.com/1o1uCPF.jpg\",\"color\":\"[black\",\"size\":\" 13\",\"quantity\":3,\"totalAmount\":333.0,\"price\":111.0}||{\"item_id\":202,\"name\":\"laptop 88\",\"image\":\"https://i.imgur.com/11dcSQh.jpg\",\"color\":\"[white\",\"size\":\"[4]\",\"quantity\":2,\"totalAmount\":246.0,\"price\":123.0}', 'VNPost', 'Apple Pay', 'thank', 579, '1673371514994-image_picker8714847748156070071.jpg', 'new', '2023-01-10 17:25:10', 'Ha Noi', '1223456679');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_email`, `user_password`) VALUES
(1, 'Bi', 'dvbi@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(2, 'Hoa', 'anhhoa@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(3, 'Anh Hoa', 'anhhoa11@gmail.com', 'e10adc3949ba59abbe56e057f20f883e');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Chỉ mục cho bảng `favorite_table`
--
ALTER TABLE `favorite_table`
  ADD PRIMARY KEY (`favorite_id`);

--
-- Chỉ mục cho bảng `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`item_id`);

--
-- Chỉ mục cho bảng `orders_table`
--
ALTER TABLE `orders_table`
  ADD PRIMARY KEY (`order_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1001;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `favorite_table`
--
ALTER TABLE `favorite_table`
  MODIFY `favorite_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `items`
--
ALTER TABLE `items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=209;

--
-- AUTO_INCREMENT cho bảng `orders_table`
--
ALTER TABLE `orders_table`
  MODIFY `order_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
