-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 03, 2023 lúc 12:00 PM
-- Phiên bản máy phục vụ: 10.4.17-MariaDB
-- Phiên bản PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `medicalapp`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bacsi`
--

CREATE TABLE `bacsi` (
  `id` int(11) NOT NULL,
  `tenbacsi` varchar(100) NOT NULL,
  `anh` varchar(500) NOT NULL,
  `chuyennganh` varchar(200) NOT NULL,
  `idkhoa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `benh`
--

CREATE TABLE `benh` (
  `id` int(11) NOT NULL,
  `tenbenh` varchar(100) NOT NULL,
  `anh` varchar(500) NOT NULL,
  `gioithieu` text NOT NULL,
  `trieuchung` text NOT NULL,
  `ngay` datetime NOT NULL,
  `idkhoa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `benhnhan`
--

CREATE TABLE `benhnhan` (
  `id` int(11) NOT NULL,
  `tenbenhnhan` varchar(100) NOT NULL,
  `anh` varchar(500) NOT NULL,
  `ngay` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdh`
--

CREATE TABLE `chitietdh` (
  `iddh` int(11) NOT NULL,
  `idsp` int(11) NOT NULL,
  `tensanpham` varchar(500) DEFAULT NULL,
  `soluong` int(11) NOT NULL,
  `dongia` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `chitietdh`
--

INSERT INTO `chitietdh` (`iddh`, `idsp`, `tensanpham`, `soluong`, `dongia`) VALUES
(76, 64, NULL, 19, 4541000),
(76, 65, NULL, 13, 2795000),
(77, 64, NULL, 19, 4541000),
(77, 65, NULL, 13, 2795000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cuahang`
--

CREATE TABLE `cuahang` (
  `tenshop` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `diachi` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sodt` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `cuahang`
--

INSERT INTO `cuahang` (`tenshop`, `diachi`, `sodt`, `email`) VALUES
('ATF SHOP', '10 Nguyen Thi Thap', '0845195357', 'anhvstu@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhgia`
--

CREATE TABLE `danhgia` (
  `id` int(11) NOT NULL,
  `iduser` int(11) DEFAULT NULL,
  `idsp` int(11) DEFAULT NULL,
  `sao` int(11) DEFAULT NULL,
  `ngay` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `danhgia`
--

INSERT INTO `danhgia` (`id`, `iduser`, `idsp`, `sao`, `ngay`) VALUES
(1, 1, 2, 5, '2022-12-01 16:02:31'),
(2, 2, 3, 4, '2022-12-01 16:02:31'),
(3, 1, 5, 5, '2022-12-01 16:02:41'),
(4, 2, 4, 4, '2022-12-01 16:02:41'),
(5, 3, 4, 5, '2022-12-01 16:03:34'),
(6, 2, 5, 4, '2022-12-01 16:03:34'),
(7, 6, 4, 5, '2022-12-01 16:03:52'),
(8, 7, 4, 4, '2022-12-01 16:03:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` int(11) NOT NULL,
  `tendanhmuc` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `anh` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngay` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `tendanhmuc`, `anh`, `ngay`) VALUES
(1, 'Giảm đau, hạ sốt', 'https://nhathuocviet.vn/data/items/4981/thuoc-giam-dau-ha-sot-partamol-500mg.png', '2020-12-21 00:00:00'),
(2, 'Huyết áp, tim mạch', 'https://nhathuocviet.vn/data/items/3762/Thuoc-Zekof-80_10-1720.jpg', '2020-12-21 00:00:00'),
(3, 'Cơ xương khớp, gút', 'https://nhathuocviet.vn/data/items/1583/e9b0f8578_635406922655430000_HasThumb.jpg', '2020-12-21 00:00:00'),
(4, 'Da liễu, dị ứng', 'https://nhathuocviet.vn/data/items/4654/thuoc-dieu-tri-mun-trung-ca-nang-acnotin-20.jpg', '2020-12-21 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dichvu`
--

CREATE TABLE `dichvu` (
  `id` int(11) NOT NULL,
  `tendichvu` varchar(100) NOT NULL,
  `anh` varchar(500) NOT NULL,
  `mota` text NOT NULL,
  `thietbi` text NOT NULL,
  `quytrinh` text NOT NULL,
  `ngay` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `id` int(11) NOT NULL,
  `idkhachhang` int(11) DEFAULT NULL,
  `ngay` date DEFAULT current_timestamp(),
  `tenkhachhang` varchar(500) NOT NULL,
  `diachi` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sodt` int(11) NOT NULL,
  `email` varchar(5000) NOT NULL,
  `loinhan` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tongsanpham` int(11) DEFAULT NULL,
  `tongtien` double DEFAULT NULL,
  `trangthai` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`id`, `idkhachhang`, `ngay`, `tenkhachhang`, `diachi`, `sodt`, `email`, `loinhan`, `tongsanpham`, `tongtien`, `trangthai`) VALUES
(76, 4, '2023-01-10', 'aido', '999', 999, '999', NULL, 999, 10000, 0),
(77, 4, '2023-01-11', '999', '999', 999, '999', NULL, 999, 10000, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giohang`
--

CREATE TABLE `giohang` (
  `id` int(11) NOT NULL,
  `iduser` int(11) NOT NULL,
  `idsp` int(11) NOT NULL,
  `tenhang` varchar(30) DEFAULT NULL,
  `soluong` int(11) DEFAULT NULL,
  `soluongmua` int(11) NOT NULL,
  `anh` text DEFAULT NULL,
  `gia` int(11) DEFAULT NULL,
  `mota` varchar(1000) DEFAULT NULL,
  `ngay` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hanghoa`
--

CREATE TABLE `hanghoa` (
  `id` int(11) NOT NULL,
  `tenhang` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `soluong` int(11) NOT NULL,
  `dongia` double NOT NULL,
  `anh` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ngay` datetime DEFAULT current_timestamp(),
  `mota` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idkhoa` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `hanghoa`
--

INSERT INTO `hanghoa` (`id`, `tenhang`, `soluong`, `dongia`, `anh`, `ngay`, `mota`, `idkhoa`) VALUES
(42, '$Ráp tàu cướp biển chim cánh cụt 12405', 99, 125000, 'https://dochoitreem.com/wp-content/uploads/2022/04/Rap-tau-cuop-bien-hcim-canh-cut-1240-500x480.jpg', '2022-12-15 08:24:11', 'Ráp tàu cướp biển chim cánh cụt 1240\r\nSản phẩm được làm từ chất liệu an toàn cho trẻ nhỏ, nên quý phụ huynh hoàn toàn có thể yên tâm sẽ không gây ảnh hưởng đến sức khỏe của bé.', 2),
(43, 'Lắp ráp robot và xe 2 in 1 7019', 20, 185000, 'https://dochoitreem.com/wp-content/uploads/2022/07/Lap-rap-robot-va-xe-2-in-1-7019-500x480.jpg', '2022-11-30 00:00:00', 'Sản phẩm được làm từ chất liệu an toàn không gây độc hại cho trẻ nhỏ, nên quý phụ huynh hoàn toàn có thể yên tâm sẽ không gây ảnh hưởng đến sức khỏe của bé.', 1),
(44, 'Lắp ráp tàu chiến đấu 8 in 1 42022', 20, 185000, 'https://dochoitreem.com/wp-content/uploads/2022/01/Lap-rap-tau-chien-dau-8-in-1-42022-500x480.jpg', '2022-11-30 00:00:00', 'Sản phẩm được làm từ chất liệu an toàn không gây độc hại cho trẻ nhỏ, nên quý phụ huynh hoàn toàn có thể yên tâm sẽ không gây ảnh hưởng đến sức khỏe của bé.', 1),
(45, 'Lắp ráp cho bé D373', 20, 185000, 'https://dochoitreem.com/wp-content/uploads/2022/01/Lap-rap-cho-be-D373-500x480.jpg', '2022-11-30 00:00:00', 'Sản phẩm được làm từ chất liệu an toàn không gây độc hại cho trẻ nhỏ, nên quý phụ huynh hoàn toàn có thể yên tâm sẽ không gây ảnh hưởng đến sức khỏe của bé.', 1),
(46, 'Lắp ráp lâu đài Moira 20037Q', 20, 185000, 'https://dochoitreem.com/wp-content/uploads/2021/05/Lap-rap-lau-dai-Moira-20037Q-500x480.jpg', '2022-11-30 00:00:00', 'Sản phẩm được làm từ chất liệu an toàn không gây độc hại cho trẻ nhỏ, nên quý phụ huynh hoàn toàn có thể yên tâm sẽ không gây ảnh hưởng đến sức khỏe của bé.', 1),
(47, 'Xe tải đỏ 899-2H', 20, 185000, 'https://dochoitreem.com/wp-content/uploads/2022/09/Xe-tai-do-889-2H-500x480.jpg', '2022-11-30 00:00:00', 'Sản phẩm được làm từ chất liệu an toàn không gây độc hại cho trẻ nhỏ, nên quý phụ huynh hoàn toàn có thể yên tâm sẽ không gây ảnh hưởng đến sức khỏe của bé.', 1),
(48, 'Lắp ráp Dream 6645B', 20, 85000, 'https://dochoitreem.com/wp-content/uploads/2020/12/Lap-rap-Dream-6645B-500x480.jpg', '2022-12-01 00:00:00', 'Sản phẩm được làm từ chất liệu an toàn không gây độc hại cho trẻ nhỏ, nên quý phụ huynh hoàn toàn có thể yên tâm sẽ không gây ảnh hưởng đến sức khỏe của bé.', 1),
(54, '\r\nXe đẩy bán kem có nhạc 8822B', 100, 169000, 'https://dochoitreem.com/wp-content/uploads/2022/12/Xe-day-ban-kem-nhac-500x480.png', '2022-12-15 08:23:49', 'Sản phẩm được làm từ chất liệu an toàn cho trẻ nhỏ, nên quý phụ huynh hoàn toàn có thể yên tâm sẽ không gây ảnh hưởng đến sức khỏe của bé.', 2),
(55, 'Máy bán nước LOL không pin DN1020', 50, 210, 'https://dochoitreem.com/wp-content/uploads/2022/07/May-ban-nuoc-LOL-500x480.jpg', '2022-12-15 08:23:54', 'Máy bán nước LOL không pin DN1020\r\nSản phẩm được làm từ chất liệu nhựa an toàn cho trẻ nhỏ, nên quý phụ huynh hoàn toàn có thể yên tâm sẽ không gây ảnh hưởng đến sức khỏe của bé.\r\n\r\n', 2),
(56, 'Kệ đồ chơi nấu ăn 2 in 1 15R05\r\n', 60, 210000, 'https://dochoitreem.com/wp-content/uploads/2022/05/Ke-do-choi-nau-an-2-in-1-15R05-500x480.jpg', '2022-12-15 08:24:19', 'Kệ đồ chơi nấu ăn 2 in 1 15R05\r\nSản phẩm được làm từ chất liệu an toàn cho trẻ nhỏ, nên quý phụ huynh hoàn toàn có thể yên tâm sẽ không gây ảnh hưởng đến sức khỏe của bé.', 2),
(57, 'Đồ chơi nấu ăn bếp nướng xiên que cho bé 120453', 30, 179000, 'https://dochoitreem.com/wp-content/uploads/2022/05/Do-choi-nau-an-bep-nuong-xien-que-cho-be-120453-500x480.jpg', '2022-12-15 08:26:48', 'Đồ chơi nấu ăn bếp nướng xiên que cho bé 120453\r\nSản phẩm được làm từ chất liệu an toàn cho trẻ nhỏ, nên quý phụ huynh hoàn toàn có thể yên tâm sẽ không gây ảnh hưởng đến sức khỏe của bé.', 2),
(58, 'Bộ ghép chữ cái Puzzle cho bé GB6675-3', 40, 189, 'https://dochoitreem.com/wp-content/uploads/2022/08/Bo-ghep-chu-cai-puzzle-cho-be-GB6675-3-500x480.jpg', '2022-12-15 08:28:40', 'Bộ ghép chữ cái Puzzle cho bé GB6675-3\r\nSản phẩm được làm từ chất liệu an toàn cho trẻ nhỏ, nên quý phụ huynh hoàn toàn có thể yên tâm sẽ không gây ảnh hưởng đến sức khỏe của bé.', 3),
(59, 'Học liệu bóc dán thông minh dành cho các bé yêu', 70, 175000, 'https://dochoitreem.com/wp-content/uploads/2022/08/Hoc-lieu-boc-dan-thong-minh-danh-cho-cac-be-yeu-720x480.jpg', '2022-12-15 08:28:40', 'Học liệu bóc dán thông minh dành cho các bé yêu\r\nBộ học liệu bóc dán thông minh dành Cho cả bé trai và bé gái\r\n– Giáo cụ montessori phát triển khả năng toán học và khoa học tiếp nối bộ dành cho bé\r\n– Bộ 16 chủ đề gồm 22 trang và 163 sticker đi kèm với từng chủ đề\r\n\r\nƯU ĐIỂM SẢN PHẨM:\r\n– Học liệu bóc dán giấy ép cứng phủ bóng rất dày\r\n– Bền đẹp giúp bé chơi thoải mái không lo gãy gập.\r\n– Sticker được cắt laze đều mịn, đẹp, có kèm velcro cho bé tự hoàn thiện bộ đồ chơi bóc dán của mình.\r\n– Chủ đề đa dạng giúp giáo dục bé toàn diện và tăng độ thích thú cho bé\r\n– Dùng lại nhiều lần, khi dính gai velcro bị mòn mẹ có thể thay mới giúp bé và lại tiếp tục sử dụng như mới', 3),
(60, 'BỘ HỌC LIỆU BÓC DÁN 17 CHỦ ĐỀ CHO BÉ GB6675', 50, 175000, 'https://dochoitreem.com/wp-content/uploads/2022/06/Bo-boc-dan-17-chu-de-cho-be-GB6675-500x480.jpg', '2022-12-15 08:30:50', 'BỘ HỌC LIỆU BÓC DÁN 17 CHỦ ĐỀ CHO BÉ GB6675\r\nGiai đoạn đầu đời là giai đoạn nhạy cảm xé dán nhất là từ 18 tháng trở đi. Bé vô cùng thích thú việc xé ra rồi dán lại.\r\nHọc liệu bóc dán đem lại lợi ích vô cùng tuyệt vời trong sự phát triển 5 năm đầu đời của bé:\r\nGiúp con học và ghi nhớ nhanh thông qua hình ảnh\r\nTăng vốn từ cho bé chậm nói\r\nNâng cao khả năng tri giác, nhận thức học matching', 3),
(61, 'Ghép hình thay trang phục công chúa nam châm MWZ-966', 55, 185000, 'https://dochoitreem.com/wp-content/uploads/2021/07/Ghep-hinh-thay-trang-phuc-cong-chua-MWZ-966-500x480.jpg', '2022-12-15 08:30:50', 'Ghép hình thay trang phục công chúa nam châm MWZ-966\r\nSản phẩm được làm từ chất liệu an toàn không gây độc hại cho trẻ nhỏ, nên quý phụ huynh hoàn toàn có thể yên tâm sẽ không gây ảnh hưởng đến sức khỏe của bé.', 3),
(62, 'Búp bê cơ bản EVER AFTER HIGH có khớp chân DLB34C', 50, 349000, 'https://dochoitreem.com/wp-content/uploads/2016/10/Bup-be-Ever-After-high-DLB34C-1-500x480.jpg', '2022-12-15 08:32:13', 'EVER AFTER HIGH búp bê cơ bản DLB34CD\r\n\r\nDòng búp bê  EVER AFTER HIGH là dòng sản phẩm của Công ty Mattel . Sản phẩm đã dựa vào bộ phim ăn khách của cùng công ty , bộ phim tên EVER AFTER HIGH .\r\n\r\nBúp bê  EVER AFTER HIGH búp bê cơ bản DLB34C này có những trang phục lạ mắt và dáng đứng cũng như khuôn mặt và đầu tóc khá độc đáo !\r\n\r\nVới các bé đã xem qua bộ phim này thì đây là sản phẩm không thể bỏ qua !\r\n\r\nCác mẹ có thể an tâm rằng sản phẩm đã được kiểm định chất lượng tuyệt đối an toàn cho các bé yêu, hãy nhanh tay đặt mua để thêm vào bộ sưu tập đồ chơi của bé nhé. Hãy cùng dochoitrem.com dành cho con yêu những gì tốt đẹp nhất.', 4),
(63, 'Búp bê đầm đỏ, tóc dài, mắt thủy tinh LH124-B', 30, 199000, 'https://dochoitreem.com/wp-content/uploads/2022/08/Bup-be-dam-do-toc-dai-mat-thuy-tinh-LH124-B-500x480.jpg', '2022-12-15 08:32:13', 'Búp bê đầm đỏ, tóc dài, mắt thủy tinh LH124-B\r\nSản phẩm được làm từ chất liệu an toàn cho trẻ nhỏ, nên quý phụ huynh hoàn toàn có thể yên tâm sẽ không gây ảnh hưởng đến sức khỏe của bé.', 4),
(64, 'Búp bê Barbie nghề nghiệp đầu bếp FXN99/DVF50', 11, 239000, 'https://dochoitreem.com/wp-content/uploads/2020/12/bup-be-barbie-nghe-nghiep-dau-bep-DVF50_FXN99-230x240.jpg', '2022-12-15 08:33:50', 'Búp bê Barbie nghề nghiệp đầu bếp FXN99/DVF50\r\nSản phẩm được làm từ chất liệu nhựa và vải an toàn không gây độc hại cho trẻ nhỏ, nên quý phụ huynh hoàn toàn có thể yên tâm sẽ không gây ảnh hưởng đến sức khỏe của bé.', 4),
(65, 'Búp bê khớp mắt thủy tinh đầm xanh và tủ quần áo 01YBY195A', 37, 215000, 'https://dochoitreem.com/wp-content/uploads/2022/05/Bup-be-khop-mat-thuy-tinh-dam-xanh-va-tu-quan-ao-500x480.jpg', '2022-12-15 08:33:50', 'Búp bê khớp mắt thủy tinh đầm xanh và tủ quần áo 01YBY195A\r\nSản phẩm được làm từ chất liệu an toàn cho trẻ nhỏ, nên quý phụ huynh hoàn toàn có thể yên tâm sẽ không gây ảnh hưởng đến sức khỏe của bé.', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khoa`
--

CREATE TABLE `khoa` (
  `id` int(11) NOT NULL,
  `tenkhoa` varchar(100) NOT NULL,
  `anh` varchar(500) NOT NULL,
  `mota` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lichkham`
--

CREATE TABLE `lichkham` (
  `id` int(11) NOT NULL,
  `tenlich` varchar(600) NOT NULL,
  `idbenhnhan` int(11) NOT NULL,
  `idbacsi` int(11) NOT NULL,
  `trieuchung` varchar(500) NOT NULL,
  `idkhoa` int(11) NOT NULL,
  `ngaykham` datetime NOT NULL,
  `giokham` datetime NOT NULL,
  `ngay` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `id` int(11) NOT NULL,
  `tendn` varchar(500) NOT NULL,
  `matkhau` varchar(500) NOT NULL,
  `ngay` date DEFAULT current_timestamp(),
  `email` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sodt` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `diachi` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `anh` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'adn.jpg',
  `vaitro` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `trangthai` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`id`, `tendn`, `matkhau`, `ngay`, `email`, `sodt`, `diachi`, `anh`, `vaitro`, `trangthai`) VALUES
(1, 'admin', '123', '2020-12-22', 'tranxp34878@gmail.com', '1264607869', '26 Huỳnh Văn Nghệ', 'adn.jpg', '0', ''),
(2, 'anhtu', '123', '2020-12-22', 'tranxp34878@gmail.com', '1264607869', '26 Huỳnh Văn Nghệ', 'adn.jpg', '1', ''),
(3, 'anh', '123', '0000-00-00', 'dangleloi102@gmail.com', '1264607869', '100 Huỳnh Văn Nghệ', 'adn.jpg', '0', ''),
(4, 'tu1', '123', '0000-00-00', 'dangleloi102@gmail.com', '1264607869', '100 Huỳnh Văn Nghệ', 'adn.jpg', '1', ''),
(5, 'tu102', '123', '0000-00-00', 'trantuxp34878@gmail.com', '1264607869', '26 Huỳnh Văn Nghệ', 'adn.jpg', '1', ''),
(6, 'tqtu', '123', '0000-00-00', 'tqtu.19it2@vku.udn.vn', '1264607869', '26 Huỳnh Văn Nghệ', 'adn.jpg', '1', ''),
(7, 'admin1', '123', '0000-00-00', 'trantuxp34878@gmail.com', '1264607869', '26Huỳnh Văn Nghệ', 'adn.jpg', '1', ''),
(8, 'tuananh', '123', '2020-12-23', 'dangleloi102@gmail.com', '1264607869', '26 Huỳnh Văn Nghệ', 'adn.jpg', '1', ''),
(9, 'p', '123', '2020-12-23', 'dangleloi102@gmail.com', '1264607869', '26Huỳnh Văn Nghệ', 'adn.jpg', '1', ''),
(12, 'tranquoctu', '123', '2021-05-27', NULL, NULL, NULL, 'adn.jpg', '1', NULL),
(14, 'anhtuan', '123', '2021-05-30', NULL, NULL, NULL, 'adn.jpg', '1', NULL),
(17, 'tu', '123', '2022-12-24', NULL, NULL, NULL, 'adn.jpg', '1', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thuoc`
--

CREATE TABLE `thuoc` (
  `id` int(11) NOT NULL,
  `tenthuoc` varchar(300) NOT NULL,
  `anh` varchar(500) NOT NULL,
  `mota` text NOT NULL,
  `soluong` int(10) NOT NULL,
  `dongia` int(20) NOT NULL,
  `thanhphan` text NOT NULL,
  `congdung` text NOT NULL,
  `doituongsd` text NOT NULL,
  `cachdung` text NOT NULL,
  `ngay` datetime NOT NULL,
  `iddanhmuc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `thuoc`
--

INSERT INTO `thuoc` (`id`, `tenthuoc`, `anh`, `mota`, `soluong`, `dongia`, `thanhphan`, `congdung`, `doituongsd`, `cachdung`, `ngay`, `iddanhmuc`) VALUES
(1, 'Thuốc giảm đau, hạ sốt, kháng viêm Ibuprofen STADA 400mg', 'https://nhathuocviet.vn/data/items/5020/thuoc-giam-dau-ha-sot-khang-viem-ibuprofen-stada-400mg.png', 'Ibuprofen STADA 400mg được chỉ định cho các trường hợp: Hạ sốt hoặc giảm đau như: đau đầu, đau bụng kinh, cúm và đau răng. \r\nHộp 10 vỉ x 10 viên', 50, 17000, 'Dược chất: Ibuprofen 400 mg\r\nTá dược: Tinh bột ngô, tinh bột tiền hồ hóa, aerosil, magnesi stearat, acid stearic, opadry II white, opadry clear.', 'Hạ sốt hoặc giảm đau như: đau đầu, đau bụng kinh, cúm và đau răng.', 'Chống chỉ định\r\nTuyệt đối:\r\nMẫn cảm với ibuprofen và các chất tương tự.\r\nLoét dạ dày - tá tràng đang tiến triển.\r\nSuy tế bào gan nặng.\r\nSuy thận nặng.\r\nTrẻ em dưới 15 tuổi.\r\nPhụ nữ mang thai trong 3 tháng đầu và 3 tháng cuối thai kỳ.\r\nPhụ nữ cho con bú.', 'Giảm đau: Liều khởi đầu 200 - 400 mg, sau đó nếu cần có thể lặp lại mỗi 4 - 6 giờ, nhưng không được vượt quá 1200 mg/ngày.\r\n\r\nThấp khớp\r\nĐiều trị tấn công: 2 viên/lần x 3 lần/ngày.\r\nĐiều trị duy trì: 3 - 4 viên/ngày (chia 3 - 4 lần).\r\nThống kinh\r\n1 viên/lần x 3 lần/ngày.\r\nUống thuốc Ibuprofen Stada 400mg với nhiều nước, không được nhai, nên uống trong bữa ăn.', '2023-05-03 16:26:46', 0),
(2, 'Thuốc giảm đau, hạ sốt Panadol Extra hộp 180 viên', 'https://cdn.medigoapp.com/product/small_panadol_extra_254259431a_29289fcbea.webp', 'Thuốc Panadol Extra thuộc nhóm thuốc không cần kê đơn có tác dụng giảm đau hạ sốt. Thuốc được sử dụng rất phổ biến để trị các chứng đau và sốt thông thường. Tuy nhiên, để sử dụng thuốc đúng cách và phát huy hết tác dụng người dùng cần biết những thông tin dưới đây. ', 30, 23000, 'Dược chất: Ibuprofen 400 mg\r\nTá dược: Tinh bột ngô, tinh bột tiền hồ hóa, aerosil, magnesi stearat, acid stearic, opadry II white, opadry clear.', 'Hạ sốt hoặc giảm đau như: đau đầu, đau bụng kinh, cúm và đau răng.', 'Chống chỉ định\r\nTuyệt đối:\r\nMẫn cảm với ibuprofen và các chất tương tự.\r\nLoét dạ dày - tá tràng đang tiến triển.\r\nSuy tế bào gan nặng.\r\nSuy thận nặng.\r\nTrẻ em dưới 15 tuổi.\r\nPhụ nữ mang thai trong 3 tháng đầu và 3 tháng cuối thai kỳ.\r\nPhụ nữ cho con bú.', 'Giảm đau: Liều khởi đầu 200 - 400 mg, sau đó nếu cần có thể lặp lại mỗi 4 - 6 giờ, nhưng không được vượt quá 1200 mg/ngày.\r\n\r\nThấp khớp\r\nĐiều trị tấn công: 2 viên/lần x 3 lần/ngày.\r\nĐiều trị duy trì: 3 - 4 viên/ngày (chia 3 - 4 lần).\r\nThống kinh\r\n1 viên/lần x 3 lần/ngày.\r\nUống thuốc Ibuprofen Stada 400mg với nhiều nước, không được nhai, nên uống trong bữa ăn.', '2023-05-03 16:26:46', 2),
(3, 'Thuốc trị suy tim Panangin hộp 50 viên', 'https://cdn.medigoapp.com/product/f558d4da49614268855a52d075960506.jpg', 'Bổ sung kali và magnesi hỗ trợ trị suy tim', 90, 94160, '- Hoạt chất: Mỗi viên chứa 140 mg Magnesi aspartat khan (dưới dạng 175 mg Magnesi aspartat.4H2O) tương đương 11,8 mg Mg2+ và 158 mg Kali aspartat khan (dưới dạng 166,3 mg Kali aspartat.1/2H2O) tương đương 36,2 mg K+.\r\n- Tá dược:\r\nTrong viên nhân: Keo silica khan, Povidon, Magnesi Stearat, bột Talc, Tinh bột ngô, Tinh bột khoai tây.\r\nLớp bao: Macrogol 6000, Titan dioxid (E171), Eudragit E 100%, Talc.', 'Bổ sung kali và magnesi trong:\r\n- Một số bệnh tim mạn tính như suy tim hoặc tình trạng sau nhồi máu cơ tim với sự đồng ý của bác sĩ điều trị;\r\n- Một số tình trạng loạn nhịp tim (chủ yếu là loạn nhịp thất), với sự đồng ý của bác sĩ điều trị;\r\n- Các trường hợp không nạp đủ lượng ion hoặc mất điện giải, ví dụ khi sử dụng kéo dài các thuốc lợi tiểu làm mất kali như thuốc lợi tiểu thiazid (ví dụ: hydroclorothiazid, indapamid) hoặc thuốc lợi tiểu quai (ví dụ: furosemid).', 'Chống chỉ định khi dùng Panangin\r\nMẫn cảm với bất cứ thành phần nào của thuốc, suy thận cấp hoặc mạn tính, bệnh Addison (suy vỏ thượng thận), block nhĩ thất độ III, sốc tim (huyết áp dưới 90 mmHg).', 'Liều thông thường hàng ngày là 3 đến 6 viên mỗi ngày, chia 3 lần. Liều dùng hàng ngày có thể tăng lên đến 9 viên chia 3 lần.\r\nAcid dịch vị có thể làm giảm hiệu lực của thuốc Panangin, vì thế nên uống thuốc nguyên viên, không nhai và uống sau bữa ăn.', '2023-05-03 16:35:17', 2),
(4, 'Thuốc chống dị ứng Telfast HD 180mg hộp 10 viên', 'https://cdn.medigoapp.com/product/cfd1ad70678141e7975d28edfeec66db.jpg', 'Viêm mũi dị ứng: Telfast HD 180mg được chỉ định để điều trị viêm mũi dị ứng theo mùa ở người lớn và trẻ em từ 12 tuổi trở lên.\r\nMày đay vô căn mạn tính: Telfast HD 180mg được chỉ định để điều trị các biểu hiện ngoài da không biến chứng của mày đay vô căn mạn tính ở người lớn và trẻ em từ 12 tuổi trở lên. Thuốc làm giảm ngứa và số lượng dát mày đay một cách đáng kể.', 70, 9000, 'Hoạt chất: Fexofenadin hydroclorid 180mg.\r\nTá dược: microcrystalline cellulose (avicel PH 101, avicel PH 102), pregelatinised maize starch, croscarmellose natri, magnesi stearat, hypromellose E-5, hyprorhellose E-15, titan dioxyd, povidon, colloidal anhydrous silica, macrogol 400, hỗn hợp pink iron oxyd (PB1254), hỗn hợp yellow iron oxyd (PB1255).', 'Viêm mũi dị ứng: Telfast HD 180mg được chỉ định để điều trị viêm mũi dị ứng theo mùa ở người lớn và trẻ em từ 12 tuổi trở lên.\r\nMày đay vô căn mạn tính: Telfast HD 180mg được chỉ định để điều trị các biểu hiện ngoài da không biến chứng của mày đay vô căn mạn tính ở người lớn và trẻ em từ 12 tuổi trở lên. Thuốc làm giảm ngứa và số lượng dát mày đay một cách đáng kể.', 'Chống chỉ định khi dùng Telfast HD 180mg\r\nTelfast HD 180mg bị chống chỉ định trên bệnh nhân có tiền sử dị ứng với bất cứ thành phần nào của thuốc.', 'Liều dùng:\r\n- Người lớn và trẻ em từ 12 tuổi trở lên: Liều khuyên dùng của Telfast HD 180mg là 1 viên mỗi ngày.\r\n- Người suy thận: Liều khởi đầu được khuyên dùng là 1 viên fexofenadin 60mg mỗi ngày.\r\n- Người suy gan: Không cần điều chỉnh liều.\r\n- Người cao tuổi: Không cần điều chỉnh liều; ngoại trừ có suy giảm chức năng thận.\r\nCách dùng: Thuốc dùng đường uống với nước và trước bữa ăn. Không uống thuốc với nước hoa quả (như cam, bưởi, táo).', '2023-05-03 16:39:01', 4),
(5, 'Thuốc bổ sung Calcium + D (DP Thành Nam) hộp 100 viên', 'https://cdn.medigoapp.com/product/56344aa5065642f39a14e8944944ffe0.jpg', 'Điều trị hạ calci huyết mạn và thiếu calci, bệnh còi xương ở trẻ em.Chứng nhuyễn xương ở người lớn, hế độ ăn thiếu calci', 80, 5000, 'Mỗi viên chứa\r\nCalcium gluconat 500mg, Cholecalciferol 0.2mg (# 200UI)\r\nTá dược:Lactose, Silicon dioxyd, Tinh bột sắn, Natri starch glycolat, Erapac, Magnesi stearat, Talc, HPMC 2910, PEG 6000, Blue patente, Ponceau 4R, Tartrazin.', '- Điều trị hạ calci huyết mạn và thiếu calci.\r\n- Bệnh còi xương ở trẻ em.\r\n- Chứng nhuyễn xương ở người lớn.\r\n- Chế độ ăn thiếu calci, đặc biệt trong thời kỳ nhu cầu calci tăng: thời kỳ tăng trưởng, thời kỳ mang thai, thời kỳ cho con bú, người cao tuổi.', 'Chống chỉ định khi dùng Calcium + D (DP Thành Nam)\r\n- Quá mẫn với các thành phần của thuốc.\r\n- Rung thất trong hồi sức tim; bệnh tim và bệnh thận; tăng calci huyết; u ác tính phá hủy xương; calci niệu nặng và loãng xương do bất động; người bệnh đang dùng digitalis (vì nguy cơ ngộ độc digitalis).\r\n- Tăng calci máu hoặc nhiễm độc vitamin D.', '- Người lớn: 1 - 2 viên/lần, ngày uống 2 - 3 lần, uống cách 1 đến 1 giờ 30 sau bữa ăn.\r\n- Trẻ em: theo sự chỉ dẫn của thầy thuốc.', '2023-05-03 16:42:58', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tintuc`
--

CREATE TABLE `tintuc` (
  `id` int(11) NOT NULL,
  `tentt` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mota` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `anh` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tintuc`
--

INSERT INTO `tintuc` (`id`, `tentt`, `mota`, `anh`) VALUES
(1, 'CÂU CHUYỆN GIÁO DỤC TỪ CÁCH MUA ĐỒ CHƠI CHO CON', 'Mỗi năm một lần, chị Hoa (Hà Nội) đều đưa bé Nam đến làng trẻ Hữu Nghị để mang đồ chơi của mình tặng cho các bạn nhỏ khuyết tật, như một cách để giáo dục...\r\n      ', 'https://dochoitreem.com/wp-content/uploads/2016/02/5956x640.jpg'),
(2, 'LÀM THẾ NÀO ĐỂ DẠY TRẺ THÓI QUEN TỰ LẬP TỪ BÉ', 'Trẻ khi còn nhỏ nếu được ba mẹ nuông chiều sẽ nảy sinh tính ỷ lại, trở nên bướng bỉnh và không nghe lời. Vì vậy, để giáo dục trẻ một cách tốt...\r\n     ', 'https://dochoitreem.com/wp-content/uploads/2015/09/lam-the-nao-de-day-tre-tu-tap-tu-nho-1.jpg'),
(3, 'NHỮNG MẢNG SÁNG TRONG TÍNH CÁCH TRẺ QUA CHỌN ĐỒ CHƠI', 'Lựa chọn đúng loại đồ chơi có ích nhất cho bé thì cha mẹ nào cũng muốn nhưng không hẳn lúc nào cũng được như ý, thế nên đôi khi mua về mà bé còn nhỏ quá ...\r\n', 'https://dochoitreem.com/wp-content/uploads/2016/02/nhung-mang-sang-trong-tinh-cach-tre-qua-chon-do-choi-2.jpg');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bacsi`
--
ALTER TABLE `bacsi`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `benh`
--
ALTER TABLE `benh`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `benhnhan`
--
ALTER TABLE `benhnhan`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `chitietdh`
--
ALTER TABLE `chitietdh`
  ADD KEY `iddh` (`iddh`),
  ADD KEY `idsp` (`idsp`);

--
-- Chỉ mục cho bảng `danhgia`
--
ALTER TABLE `danhgia`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `dichvu`
--
ALTER TABLE `dichvu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idkhachhang` (`idkhachhang`);

--
-- Chỉ mục cho bảng `giohang`
--
ALTER TABLE `giohang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `hanghoa`
--
ALTER TABLE `hanghoa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `iddanhmuc` (`idkhoa`);

--
-- Chỉ mục cho bảng `khoa`
--
ALTER TABLE `khoa`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `lichkham`
--
ALTER TABLE `lichkham`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `thuoc`
--
ALTER TABLE `thuoc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bacsi`
--
ALTER TABLE `bacsi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `benh`
--
ALTER TABLE `benh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `benhnhan`
--
ALTER TABLE `benhnhan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `danhgia`
--
ALTER TABLE `danhgia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `dichvu`
--
ALTER TABLE `dichvu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT cho bảng `giohang`
--
ALTER TABLE `giohang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT cho bảng `hanghoa`
--
ALTER TABLE `hanghoa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT cho bảng `khoa`
--
ALTER TABLE `khoa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `lichkham`
--
ALTER TABLE `lichkham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `thuoc`
--
ALTER TABLE `thuoc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitietdh`
--
ALTER TABLE `chitietdh`
  ADD CONSTRAINT `chitietdh_ibfk_1` FOREIGN KEY (`iddh`) REFERENCES `donhang` (`id`),
  ADD CONSTRAINT `chitietdh_ibfk_2` FOREIGN KEY (`idsp`) REFERENCES `hanghoa` (`id`);

--
-- Các ràng buộc cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `donhang_ibfk_1` FOREIGN KEY (`idkhachhang`) REFERENCES `taikhoan` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
