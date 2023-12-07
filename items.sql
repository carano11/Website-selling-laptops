-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 12, 2023 lúc 12:03 PM
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
(202, 'laptop HP 14S-FQ1066AU', 4.8, '[hp,  laptop gaming]', 15990000, '[4]', '[white,  black]', 'HP 14S-FQ1066AU sử dụng bộ vi xử lý AMD Ryzen 5 5500U và đồ họa AMD Radeon nổi tiếng về sức mạnh hỗ trợ xử lý đa nhiệm và game online mượt mà, kết hợp 8GB RAM và dung lượng 256GB đáp ứng nhu cầu lưu trữ tối thiểu. Màn hình 14\" HD 1366 x 768 viền mỏng mở ra theo chiều rộng cho tầm nhìn thoáng, bàn phím nhôm phay xước với các phím full size và bước phím ngắn cho trải nghiệm đánh máy nhanh và êm, tích hợp touchpad cảm ứng đa điểm. Hệ thống loa kép trên nền tảng âm thanh của B&O mang đến chất âm sống động để thưởng thức âm nhạc và chơi game.', 'https://i.imgur.com/11dcSQh.jpg'),
(208, 'laptop 114', 4.6, '[hp, ]', 10990000, '[11]', '[black,gray]', 'Sản phẩm tạm thời hết hàng, mời các bạn tham khảo thêm các sản phẩm máy tính xách tay/ laptop chất lượng nhất hiện nay:\r\n\r\nLaptop Hp sang trọng, thời thượng. Cam kết giá luôn tốt nhất, BH dài lâu, nhiều quà tặng\r\n\r\nHP 114 cao cấp, thiết kế bền đẹp, hiệu năng ổn định để làm việc và giải trí.', 'https://i.imgur.com/fbCBTfd.jpg'),
(209, 'Asus Zenbook Pro 14', 5, '[Asus,  Zenbook ,  core i9-12900H]', 53990000, '[a]', '[red,  black,  white]', 'Xin giới thiệu sản phẩm Zenbook Pro 14 Duo OLED siêu mạnh mới,một cỗ máy đạt chứng nhận Intel® Evo™ cho phép bạn thỏa sức phát huy khả năng sáng tạo của mình. CPU Intel cao cấp và GPU NVIDIA® đẳng cấp sáng tạo chuyên nghiệp được tản nhiệt hiệu quả để đảm bảo hiệu năng đỉnh cao nhờ công nghệ ASUS IceCool Plus, cùng sự hỗ trợ từ cơ chế AAS Ultra hoàn toàn mới, cho phép thoát khí trong khung máy đồng thời nghiêng màn hình cảm ứng thứ hai ScreenPad™ Plus thế hệ mới tới một góc phù hợp để đem lại trải nghiệm xem đắm chìm và mượt mà nhất. Để có được màn hình đạt chuẩn studio, màn hình cảm ứng chính 2.8K OLED HDR 16:102 có tần số làm mới 120 Hz, độ chính xác màu chuẩn PANTONE® Validated và dải màu sắc DCI-P3 100% đẳng cấp điện ảnh. Zenbook Pro 14 Duo OLED bỏ xa mọi đối thủ, khiến sản phẩm này trở thành chiếc máy tính xách tay màn hình OLED nhỏ gọn tối thượng cho nhà sáng tạo am hiểu.', 'https://i.imgur.com/iLlaxof.jpg'),
(210, 'Asus Vivobook S 14 Flip', 4.3, '[Asus,  Vivobook,  16 GB,  Window 11]', 17990000, '[s]', '[blue,  gray]', 'Hãy sẵn sàng cho cuộc phiêu lưu kỳ thú với Vivobook S 14 Flip, máy tính xách tay xoay gập với bản lề 360° cho phép bạn tự do làm việc hay giải trí theo cách mình muốn. Tận hưởng hiệu năng mượt mà của bộ vi xử lý AMD Ryzen™ 7 5800H và ổ lưu trữ SSD siêu nhanh, đồng thời thỏa mãn đôi mắt của bạn với màn hình cảm ứng NanoEdge 14-inch 2K tuyệt vời. Đây là lựa chọn hoàn hảo cho các tác vụ hàng ngày hoặc giải trí thật phong cách với nhiều cổng kết nối bao gồm các cổng USB 3.2 Gen 2 Type-C® thuận tiện, thật dễ dàng kết nối với mọi thiết bị, ở khắp mọi nơi. Với tùy chọn màu Xanh dương trầm hoặc Bạc xám thời thượng, hãy biến Vivobook S 14 Flip trở thành một phần trong thế giới của bạn!', 'https://i.imgur.com/1NyS2Z9.jpg'),
(212, 'DELL Latitude', 4.5, '[Dell,I5 1135G7, 8GB, 56GB SSD]', 17500000, '[xx]', '[black]', 'DELL vừa tung ra thị trường một sản phẩm mang đậm phong cách hiện đại nhỏ gọn hướng đến đại đa số người dùng và đặc biệt tập trung vào bộ phận người dùng là nhân viên văn phòng, doanh nhân. Chiếc máy vừa được kể trên không gì khác chính là Dell Latitude 7420 2 in 1 , hứa hẹn sẽ đem đến những điều bất ngờ cho người dùng và các tín đồ yêu công nghệ trên toàn thế giới.\r\n\r\nThiết kế của Dell Latitude 7420 2 in 1\r\n\r\nMột con máy hướng đến bộ phận là nhân viên văn phòng và doanh nhân chắc hẳn DELL sẽ rất chăm chuốt cho vẻ bề ngoài của Dell Latitude 7420- và thật sự Dell Latitude 7420 đã không làm người dùng phải thất vọng.', 'https://i.imgur.com/Pi5ADVh.jpg'),
(213, 'Dell Inspiron', 4.4, '[Dell, RAM 4GB, SSD 128GB]', 10990000, '[x]', '[black, white]', 'Dell tiếp tục cho ra mắt dòng laptop văn phòng tầm trung Dell Inspiron 3511 với hiệu năng vô cùng ấn tượng. Sở hữu con chip Intel thế hệ thứ 11 mới nhất, giúp nó đáp ứng mọi nhu cầu học tập, làm việc của người dùng. Hãy cùng Lapvip đánh giá chi tiết về sản phẩm này trong bài viết dưới đây bạn nhé.', 'https://i.imgur.com/4f9CQ2R.png');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`item_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `items`
--
ALTER TABLE `items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=214;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
