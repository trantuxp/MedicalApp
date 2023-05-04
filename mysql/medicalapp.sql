-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 04, 2023 lúc 07:57 PM
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
  `chucvu` varchar(200) NOT NULL,
  `mota` text NOT NULL,
  `ngay` datetime NOT NULL DEFAULT current_timestamp(),
  `idkhoa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `bacsi`
--

INSERT INTO `bacsi` (`id`, `tenbacsi`, `anh`, `chucvu`, `mota`, `ngay`, `idkhoa`) VALUES
(1, 'THS.BS NGUYỄN MINH TRÍ VIÊN', 'https://tamanhhospital.vn/wp-content/uploads/2021/03/nguyen-minh-tri-vien-detail1.png', 'Cố vấn Phẫu thuật tim, Trung tâm Tim mạch', 'ThS.BS Nguyễn Minh Trí Viên là chuyên gia phẫu thuật tim hàng đầu Việt Nam. Ông là một trong số ít chuyên gia được đào tạo bài bản chuyên sâu về phẫu thuật tim ở nước ngoài: Bác sĩ nội trú Bệnh viện Broussais, Bệnh viện Marie Lannelongue, Paris năm 1992 – 1993, Bác sĩ thường trú Bệnh viện Royal Children, Melbourne năm 2002.', '2023-05-03 21:53:23', 1),
(2, 'PGS.TS.BSCC ĐẶNG HỒNG HOA', 'https://tamanhhospital.vn/wp-content/uploads/2011/01/dang-hong-hoa-detail.png', 'Trưởng khoa Khoa Cơ xương khớp', 'Với hơn 30 năm nghiên cứu và khám chữa bệnh thành công cho nhiều bệnh nhân cơ xương khớp, PGS.TS.BSCC Đặng Hồng Hoa, Trưởng khoa Nội – Cơ xương khớp, Bệnh viện Đa khoa Tâm Anh, Hà Nội.được mệnh danh là “Nữ anh hùng áo trắng của ngành Nội – Cơ xương khớp”.', '2023-05-03 21:56:50', 2),
(3, 'TS.BS ĐẶNG THỊ NGỌC BÍCH', 'https://tamanhhospital.vn/wp-content/uploads/2015/07/detail-dang-thi-ngoc-bich.png', 'Bác sĩ chuyên khoa Da liễu, Khoa Khám bệnh', 'Năm 1996, bác sĩ Đặng Thị Ngọc Bích tốt nghiệp bác sĩ đa khoa thực hành tại trường Đại học Y Dược TPHCM. Chứng kiến nhiều bệnh nhân bị ghẻ lở, phong cùi,… đơn độc do còn nhiều định kiến xã hội, chị quyết định theo chuyên ngành Da liễu. Chị phụ trách điều trị các bệnh về da, bệnh liễu (bệnh xã hội) và bệnh phong. ', '2023-05-03 21:57:33', 3),
(4, 'TTND.TS.BS.CKII PHAN THỊ XUÂN', 'https://tamanhhospital.vn/wp-content/uploads/2021/09/phan-thi-xuan-detail.png', 'Trưởng khoa: Khoa Hồi sức tích cực - Chống độc\r\nTrưởng khoa: Khoa Cấp cứu', 'Thầy thuốc Nhân dân, TS.BS CKII Phan Thị Xuân – Trưởng khoa Hồi sức tích cực & Chống độc và Trưởng khoa Cấp cứu BVĐK Tâm Anh TP HCM là một trong những chuyên gia hồi sức hàng đầu tại Việt Nam với hơn 30 năm kinh nghiệm.', '2023-05-03 21:58:58', 4);

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
  `ngay` datetime NOT NULL DEFAULT current_timestamp(),
  `idkhoa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `benh`
--

INSERT INTO `benh` (`id`, `tenbenh`, `anh`, `gioithieu`, `trieuchung`, `ngay`, `idkhoa`) VALUES
(1, ' Bệnh mạch vành', 'https://careplusvn.com/files/benh-tim-mach-thuong-gap.jpg', 'Bệnh tim mạch vành là bệnh do mạch máu vành tim bị nghẽn bởi các mảng xơ vữa. Tình trạng này khiến cơ tim bị thiếu dưỡng khí và gây ra các cơn đau thắt ngực. Đặc biệt, nếu tần suất cơn đau ngày càng tăng, cường độ càng nặng có thể dẫn đến nhồi máu cơ tim và các tổn thương vĩnh viễn ở tim. ', 'Cảm giác nặng ngực, khó thở. \r\nXuất hiện cơn đau thắt ngực bên trái khi xúc động, gắng sức. Cơn đau thường xuất hiện vào buổi sáng. \r\nNhức đầu, chóng mặt.', '2023-05-04 14:26:29', 1),
(2, 'Thiếu máu cơ tim', 'https://careplusvn.com/files/benh-tim-mach-thuong-gap-2.jpg', 'Thiếu máu cơ tim (thiếu máu cơ tim cục bộ) là bệnh lý xảy ra khi lưu lượng máu đến tim bị giảm. Lúc này, tim sẽ không nhận đủ lượng oxy cần thiết cho hoạt động co bóp máu đi nuôi cơ thể. Bệnh làm giảm khả năng bơm của tim, gây tổn thương cho tim, loạn tim và nhồi máu cơ tim.', 'Xuất hiện cơn đau vùng ngực. \r\nNhịp tim nhanh. \r\nKhó thở khi vận động', '2023-05-04 14:27:33', 1),
(3, 'Thoái hóa khớp', 'https://tamanhhospital.vn/wp-content/uploads/2022/04/he-thong-co-xuong.jpg', 'Thoái hóa khớp là bệnh lý xương khớp xảy ra khi phần sụn khớp và xương dưới sụn ở khớp bị tổn thương, dẫn đến các phản ứng viêm và tình trạng tràn dịch khớp. Nguyên nhân phổ biến của thoái hóa khớp là tuổi tác và một số yếu tố khác như di truyền, tình trạng béo phì, chấn thương xảy ra thường xuyên tại khớp, tai nạn thể thao, tai nạn lao động, các bệnh lý khớp viêm như viêm khớp dạng thấp, gút hay nhiễm trùng khớp…', 'Khớp bị ảnh hưởng, Đau khớp, Cứng khớp, Lạo xạo khi cử động khớp, Tầm vận động suy giảm, Biến dạng khớp', '2023-05-04 14:31:30', 2),
(4, 'SUY HÔ HẤP (CẤP)', 'https://tamanhhospital.vn/wp-content/uploads/2020/10/suy-ho-hap-1024x536.jpg', 'Suy hô hấp (hội chứng suy phổi) nếu không được điều trị kịp thời có thể dẫn đến thiếu oxy trầm trọng, ảnh hưởng đến hệ tuần hoàn, gây ra các tổn thương ở não, thậm chí đe dọa tính mạng người bệnh. ', 'Trường hợp do thiếu oxy, người bệnh có thể gặp các triệu chứng:\r\n\r\nCơ thể mệt mỏi, gặp khó khăn trong các hoạt động sinh hoạt hàng ngày như mặc quần áo, lên xuống cầu thang…\r\nKhó thở, luôn có cảm giác thiếu không khí để hít thở;\r\nLuôn trong trạng thái buồn ngủ;\r\nNgón tay, ngón chân và môi xanh xao, nhợt nhạt.\r\nKhi nồng độ carbon dioxide trong máu tăng cao, người bệnh có thể có các triệu chứng:\r\n\r\nNhìn mờ, thị lực giảm sút;\r\nĐau đầu, lú lẫn;\r\nNhịp tim nhanh, thở nhanh.', '2023-05-04 14:34:06', 4),
(5, 'Sẹo rỗ ', 'https://tamanhhospital.vn/wp-content/uploads/2023/05/seo-ro.jpg', 'Sẹo rỗ là trình trạng da xuất hiện các vết lõm sâu có kích thước, hình dạng không đồng đều trên bề mặt da nên còn được gọi là sẹo lõm. Khi tổ chức nguyên bào sợi ở trung bì bị tổn thương, đứt gãy, không sản xuất collagen, elastin làm mất khả năng tái tạo da, không thể lấp đầy vết thương nên khi vết thương lành để lại những vết lõm trên da.', 'Sẹo rỗ là những vết lõm trên bề mặt da được hình thành khi tổn thương đã phục hồi\r\nDa bạn trở nên lồi lõm, khô nhám và sần sùi.', '2023-05-04 14:37:28', 3);

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
  `ngay` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `dichvu`
--

INSERT INTO `dichvu` (`id`, `tendichvu`, `anh`, `mota`, `thietbi`, `quytrinh`, `ngay`) VALUES
(1, 'Vật lý trị liệu', 'https://tamanhhospital.vn/wp-content/uploads/2020/11/dvdb_coxuongkhop.png', 'Với hệ thống trang thiết bị hiện đại cùng đội ngũ chuyên gia lành nghề, Trung tâm Phẫu thuật khớp – Y học Thể thao, Trung tâm Chấn thương Chỉnh hình và chuyên khoa Nội cơ xương khớp nhằm hỗ trợ điều trị xương khớp', 'Máy Điện trị liệu – Điện xung – Kích thích thần kinh cơ ...\r\nMáy Siêu âm trị liệu. ...\r\nMáy Kéo cột sống – kéo giãn cột sống cổ – kéo giãn cột sống lưng. ...\r\nMáy Nén ép áp lực hơi – dẫn lưu bạch huyết. ...\r\nMáy sóng ngắn trị liệu. ...\r\nSiêu âm kết hợp điện xung trị liệu.', 'Để đặt lịch khám tại Trung tâm Phẫu thuật khớp – Y học Thể thao, Trung tâm Chấn thương Chỉnh hình và chuyên khoa Nội cơ xương khớp, quý khách vui lòng gọi hotline 1800 6858 (Hà Nội), sau đó đến khám theo giờ hẹn.\r\n\r\nTại buổi thăm khám, bác sĩ sẽ khám tổng quát cho bạn dựa trên các triệu chứng bệnh, sau đó chỉ định làm các kiểm tra cận lâm sàng để chẩn đoán chính xác bệnh.\r\n\r\nCuối buổi khám, bạn được bác sĩ kê toa thuốc, hướng dẫn các bài tập vật lý trị liệu; đồng thời tư vấn về chế độ ăn uống, sinh hoạt, nghỉ ngơi hợp lý và hẹn tái khám lần sau.', '2023-05-03 22:11:15'),
(2, 'Khu khám VIP', 'https://tamanhhospital.vn/wp-content/uploads/2021/07/icon-dv-tim-mach-nguoi-lon.png', 'Ngày 15/07/2022, khu khám VIP chính thức đưa vào hoạt động nhằm mang đến sự phục vụ chuyên nghiệp, đẳng cấp tiêu chuẩn quốc tế cho quý khách hàng.', 'Khu khám VIP được đầu tư và xây dựng với tổng diện tích hơn 2.000m2, bao gồm 4 tầng lầu với khu khám Sản – Nhi VIP, khu Nội soi VIP cùng gần 40 phòng khám cận lâm sàng cho các chuyên khoa như tim mạch, nhi khoa, tai mũi họng, chấn thương chỉnh hình, cơ xương khớp, hô hấp, tiết niệu, nam khoa, thần kinh, đái tháo thường, da liễu,…\r\n\r\nTrong đó tầng trệt và tầng 1 dành cho các dịch vụ chẩn đoán hình ảnh; tầng 2 là khu dịch vụ nội soi tiêu hóa; tầng 3 là khám và điều trị chuyên khoa; tầng 4 là khu vực ngoại trú dành riêng cho Sản – Nhi.', 'Đến Khu khám VIP – khách hàng có thể vào cổng A1, B1 tòa nhà Khoa khám bệnh, BVĐK Tâm Anh TP.HCM – 2B Phổ Quang, Tân Bình\r\nTiếp nhận và làm hồ sơ khám tại tầng 3 hoặc tầng 4.\r\nKhám bệnh với bác sĩ có lịch đặt.\r\nThực hiện cận lâm sàng theo sự hướng dẫn của nhân viên.\r\nTrở lại phòng khám khi có kết quả lâm sàng.\r\nNhận toa thuốc và thuốc (có thể nhận thuốc tại nhà) hoặc nhập viện điều trị theo chỉ định từ bác sĩ.', '2023-05-03 22:16:05'),
(3, 'Xét nghiệm', 'https://tamanhhospital.vn/wp-content/uploads/2020/12/khoa_xetnghiem.png', 'Trong quá trình khám và điều trị, tùy theo tình trạng của từng bệnh nhân, bác sĩ có thể yêu cầu thực hiện thêm một số xét nghiệm cần thiết để củng cố chẩn đoán bệnh lý, góp phần cho quá trình điều trị hiệu quả. Kết quả các xét nghiệm được ví như “dữ liệu biết nói”, là chỉ dấu “lên tiếng” về những bất ổn bên trong cơ thể, giúp bác sĩ có thêm dữ liệu chẩn đoán bệnh lý chính xác nhất, từ đó có phương pháp can thiệp điều trị hiệu quả cao.', 'Máy xét nghiệm điện giải.\r\nMáy xét nghiệm sinh hóa.\r\nMáy xét nghiệm huyết học.\r\nMáy xét nghiệm nước tiểu.\r\nMáy xét nghiệm miễn dịch.\r\nMáy xét nghiệm đông máu.', 'Bước 1: Khách hàng đăng ký dịch vụ Xét nghiệm tại Bệnh viện Đa khoa Tâm Anh bằng cách đến trực tiếp, đặt lịch hẹn qua tổng đài 1800 6858 (Hà Nội), website, fanpage Bệnh viện Đa khoa Tâm Anh.\r\nBước 2: Bác sĩ thăm khám, tư vấn và chỉ định các xét nghiệm thích hợp.\r\nBước 3: Khách hàng tiến hành thực hiện các dịch vụ xét nghiệm dưới sự hỗ trợ của các chuyên gia hàng đầu Trung tâm Xét Nghiệm, Bệnh viện Đa khoa Tâm Anh.\r\nBước 4: Khách hàng nhận kết quả xét nghiệm và gặp bác sĩ để được tư vấn và đưa ra các chỉ định tiếp theo (nếu có).', '2023-05-03 22:17:48');

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

--
-- Đang đổ dữ liệu cho bảng `giohang`
--

INSERT INTO `giohang` (`id`, `iduser`, `idsp`, `tenhang`, `soluong`, `soluongmua`, `anh`, `gia`, `mota`, `ngay`) VALUES
(88, 17, 4, 'Thuốc chống dị ứng Telfast HD ', 70, 1, 'https://cdn.medigoapp.com/product/cfd1ad70678141e7975d28edfeec66db.jpg', 9000, 'Viêm mũi dị ứng: Telfast HD 180mg được chỉ định để điều trị viêm mũi dị ứng theo mùa ở người lớn và trẻ em từ 12 tuổi trở lên.\r\nMày đay vô căn mạn tính: Telfast HD 180mg được chỉ định để điều trị các biểu hiện ngoài da không biến chứng của mày đay vô căn mạn tính ở người lớn và trẻ em từ 12 tuổi trở lên. Thuốc làm giảm ngứa và số lượng dát mày đay một cách đáng kể.', '2023-05-03 18:09:17'),
(89, 17, 3, 'Thuốc trị suy tim Panangin hộp', 90, 14, 'https://cdn.medigoapp.com/product/f558d4da49614268855a52d075960506.jpg', 94160, 'Bổ sung kali và magnesi hỗ trợ trị suy tim', '2023-05-04 15:56:47');

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
  `iddanhmuc` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `hanghoa`
--

INSERT INTO `hanghoa` (`id`, `tenhang`, `soluong`, `dongia`, `anh`, `ngay`, `mota`, `iddanhmuc`) VALUES
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

--
-- Đang đổ dữ liệu cho bảng `khoa`
--

INSERT INTO `khoa` (`id`, `tenkhoa`, `anh`, `mota`) VALUES
(1, 'TRUNG TÂM TIM MẠCH', 'https://tamanhhospital.vn/wp-content/uploads/2020/12/khoa_noitimmach.png', 'Theo Tổ chức Y tế thế giới (WHO), bệnh tim mạch đang là nguyên nhân tử vong hàng đầu trên toàn thế giới. Mỗi năm, số người chết do bệnh tim và đột quỵ nhiều hơn cả ung thư, lao, sốt rét và HIV cộng lại. Theo thống kê của Hội tim mạch năm 2015, tại Việt Nam, cứ 3 người trưởng thành có 1 người có nguy cơ mắc bệnh tim mạch, chủ yếu là bệnh mach vành. Mỗi năm, các bệnh lý về tim mạch cướp đi khoảng 200.000 người, chiếm 1/4 tổng số trường hợp tử vong tại Việt Nam.'),
(2, 'KHOA CƠ XƯƠNG KHỚP', 'https://tamanhhospital.vn/wp-content/uploads/2021/03/khoa-noi-co-xuong-khop.png', 'Nếu các bệnh lý tim mạch là nguyên nhân hàng đầu gây tử vong thì bệnh lý cơ xương khớp đứng đầu trong một loạt nguyên nhân dẫn đến tàn phế. Xã hội càng hiện đại, số ca mắc các bệnh lý này càng cao. Chẳng những vậy, bệnh xương khớp giờ đây đã không còn là căn bệnh của riêng người già mà có xu hướng ngày càng trẻ hóa.'),
(3, 'KHOA DA LIỄU – THẪM MỸ DA', 'https://tamanhhospital.vn/wp-content/uploads/2023/04/khoa-da-lieu.png', 'Chuyên khoa Da liễu – Thẩm mỹ Da, Bệnh viện Đa khoa Tâm Anh TP.HCM quy tụ đội ngũ chuyên gia, bác sĩ giỏi chuyên môn, giàu kinh nghiệm trong điều trị các bệnh về da lẫn lĩnh vực làm đẹp – thẩm mỹ. '),
(4, 'KHOA HỒI SỨC CẤP CỨU', 'https://tamanhhospital.vn/wp-content/uploads/2022/10/icon-khoa-hoi-suc-cap-cuu-icu.png', 'Khoa Hồi sức cấp cứu (còn gọi là khoa Hồi sức tích cực & Chống độc, viết tắt ICU) là đơn vị cấp cứu, hồi sức và chăm sóc tích cực cho những bệnh nhân nguy kịch, giữa lằn ranh sự sống – cái chết như: Sốc, suy hô hấp, suy đa cơ quan, suy thận, suy gan, hôn mê, nhiễm trùng huyết nặng, ngộ độc cấp,… hoặc bệnh nhân phẫu thuật có nguy cơ cao suy hô hấp, sốc, chảy máu sau mổ,….');

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
  `ngaykham` date NOT NULL,
  `giokham` time NOT NULL,
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
  `ngay` datetime NOT NULL DEFAULT current_timestamp(),
  `iddanhmuc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `thuoc`
--

INSERT INTO `thuoc` (`id`, `tenthuoc`, `anh`, `mota`, `soluong`, `dongia`, `thanhphan`, `congdung`, `doituongsd`, `cachdung`, `ngay`, `iddanhmuc`) VALUES
(1, 'Thuốc giảm đau, hạ sốt, kháng viêm Ibuprofen STADA 400mg', 'https://nhathuocviet.vn/data/items/5020/thuoc-giam-dau-ha-sot-khang-viem-ibuprofen-stada-400mg.png', 'Ibuprofen STADA 400mg được chỉ định cho các trường hợp: Hạ sốt hoặc giảm đau như: đau đầu, đau bụng kinh, cúm và đau răng. \r\nHộp 10 vỉ x 10 viên', 50, 17000, 'Dược chất: Ibuprofen 400 mg\r\nTá dược: Tinh bột ngô, tinh bột tiền hồ hóa, aerosil, magnesi stearat, acid stearic, opadry II white, opadry clear.', 'Hạ sốt hoặc giảm đau như: đau đầu, đau bụng kinh, cúm và đau răng.', 'Chống chỉ định\r\nTuyệt đối:\r\nMẫn cảm với ibuprofen và các chất tương tự.\r\nLoét dạ dày - tá tràng đang tiến triển.\r\nSuy tế bào gan nặng.\r\nSuy thận nặng.\r\nTrẻ em dưới 15 tuổi.\r\nPhụ nữ mang thai trong 3 tháng đầu và 3 tháng cuối thai kỳ.\r\nPhụ nữ cho con bú.', 'Giảm đau: Liều khởi đầu 200 - 400 mg, sau đó nếu cần có thể lặp lại mỗi 4 - 6 giờ, nhưng không được vượt quá 1200 mg/ngày.\r\n\r\nThấp khớp\r\nĐiều trị tấn công: 2 viên/lần x 3 lần/ngày.\r\nĐiều trị duy trì: 3 - 4 viên/ngày (chia 3 - 4 lần).\r\nThống kinh\r\n1 viên/lần x 3 lần/ngày.\r\nUống thuốc Ibuprofen Stada 400mg với nhiều nước, không được nhai, nên uống trong bữa ăn.', '2023-05-03 16:26:46', 1),
(2, 'Thuốc giảm đau, hạ sốt Panadol Extra hộp 180 viên', 'https://cdn.medigoapp.com/product/small_panadol_extra_254259431a_29289fcbea.webp', 'Thuốc Panadol Extra thuộc nhóm thuốc không cần kê đơn có tác dụng giảm đau hạ sốt. Thuốc được sử dụng rất phổ biến để trị các chứng đau và sốt thông thường. Tuy nhiên, để sử dụng thuốc đúng cách và phát huy hết tác dụng người dùng cần biết những thông tin dưới đây. ', 30, 23000, 'Dược chất: Ibuprofen 400 mg\r\nTá dược: Tinh bột ngô, tinh bột tiền hồ hóa, aerosil, magnesi stearat, acid stearic, opadry II white, opadry clear.', 'Hạ sốt hoặc giảm đau như: đau đầu, đau bụng kinh, cúm và đau răng.', 'Chống chỉ định\r\nTuyệt đối:\r\nMẫn cảm với ibuprofen và các chất tương tự.\r\nLoét dạ dày - tá tràng đang tiến triển.\r\nSuy tế bào gan nặng.\r\nSuy thận nặng.\r\nTrẻ em dưới 15 tuổi.\r\nPhụ nữ mang thai trong 3 tháng đầu và 3 tháng cuối thai kỳ.\r\nPhụ nữ cho con bú.', 'Giảm đau: Liều khởi đầu 200 - 400 mg, sau đó nếu cần có thể lặp lại mỗi 4 - 6 giờ, nhưng không được vượt quá 1200 mg/ngày.\r\n\r\nThấp khớp\r\nĐiều trị tấn công: 2 viên/lần x 3 lần/ngày.\r\nĐiều trị duy trì: 3 - 4 viên/ngày (chia 3 - 4 lần).\r\nThống kinh\r\n1 viên/lần x 3 lần/ngày.\r\nUống thuốc Ibuprofen Stada 400mg với nhiều nước, không được nhai, nên uống trong bữa ăn.', '2023-05-03 16:26:46', 1),
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
(1, '5 BÀI TẬP CẢI THIỆN CHÓNG MẶT DO RỐI LOẠN TIỀN ĐÌNH NGOẠI BIÊN', 'Bài tập cải thiện chóng mặt do bị rối loạn tiền đình ngoại biên\r\n1. Bài tập Epley\r\nBài tập Epley\r\n\r\nBước 1: Xoay đầu sang PHẢI 45º, sau đó nằm xuống.\r\n\r\nBước 2: Nằm đầu vẫn giữ 45º nghiêng sang phải, giữ tư thế này 60 giây.\r\n\r\nBước 3: Xoay đầu sang TRÁI 90º, giữ tư thế này 60 giây.\r\n\r\nBước 4: Lăn tiếp người sang TRÁI, lưng vuông góc với mặt giường. Giữ tư thế này 60 giây.\r\n\r\nBước 5: Ngồi dậy\r\n\r\n2. Bài tập Semont\r\nBước 1: Ngồi trên mép giường và quay đầu 45 độ so với bên tổn thương.\r\n\r\nBước 2: Từ từ nằm xuống ở tư thế nằm nghiêng sao cho đầu, cổ và thân tạo thành một đường thẳng, đầu hướng lên trần nhà. Giữ nguyên tư thế này từ 30-60 giây để mọi cơn chóng mặt có thể giảm bớt.\r\n\r\nBước 3: Xoay người trở lại, một lần nữa giữ cho cổ thẳng với sống lưng nhưng mặt hướng xuống dưới sàn. Giữ tư thế này trong 30-60 giây, đợi cho hết chóng mặt rồi từ từ đứng dậy trở lại tư thế ngồi.\r\n\r\nBài tập Semont\r\n\r\n3. Bài tập Yacovino\r\nBài tập Yacovino\r\n\r\nbài tập Yacovino\r\n\r\nBước 1: Ngồi thẳng trên giường, đầu và thân trên một trục thẳng (hình 1), canh khoảng cách đến mép giường sao cho khi nằm xuống vai sát mép giường (hình 2).\r\nBước 2: Nằm ngửa xuống giường, đầu đưa ra khỏi thành giường và ngửa đầu ra sau dưới mặt phẳng ngang khoảng 30 độ. Giữ yên tư thế cho đến khi hết chóng mặt và tiếp tục thêm 30 giây (hình 2).\r\nBước 3: Cúi đầu về trước. Nhanh chóng kê gối dưới đầu nhưng cẩn thận chỉ di chuyển đầu nhẹ nhàng. Lúc này, đầu của bạn đang gập nhẹ về phía ngực và giữ yên tư thế này thêm 30 giây cho đến khi hết chóng mặt (hình 3).\r\nBước 4: Đầu vẫn giữ yên tư thế gập, ngồi dậy một cách chậm rãi. Giữ tư thế cúi đầu trong 30 giây (hình 4).\r\nBước 5: Trở về tư thế ban đầu và ngồi yên trong 15 phút (hình 5).\r\n\r\n4. Bài tập BBQ Roll\r\nBước 1: Nằm ngửa, có hoặc không kê gối.\r\nBước 2: Nghiêng người sang bên trái và giữ nguyên tư thế trong 30 giây (hình 2).\r\n\r\nBài tập BBQ Roll 1\r\n\r\nBước 3: Xoay người trở về tư thế nằm ngửa và nằm yên trong 30 giây. Tiếp tục xoay người nghiêng sang phải (hình 3) và giữ nguyên tư thế trong 30 giây.\r\nBước 4: Dùng cùi chỏ để tựa và xoay úp người xuống giường, cằm hơi cúi xuống. Giữ tư thế trong 30 giây (hình 4).\r\n\r\nBài tập BBQ Roll 2\r\nBước 5: Xoay người sang bên phải và giữ tư thế trong 30 giây (hình 5).\r\nBước 6: Từ từ trở về tư thế ngồi, giữ cằm hơi cúi trong 10 phút (hình 6).\r\n\r\nBài tập BBQ Roll 3\r\n\r\n5. Bài tập Gufoni\r\nBài tập Gufoni\r\n\r\nBước 1: Tư thế ngồi thẳng một bên giường như hình.\r\nBước 2: Ngã nhanh người sang phải, giữ tư thế trong 60 giây.\r\nBước 3: Xoay đầu 45 độ hướng xuống giường và tiếp tục giữ yên trong 60 giây. Sau đó, trở về tư thế chuẩn bị ban đầu.\r\n\r\nBác sĩ Hằng cho biết, tùy vào từng nguyên nhân, việc điều trị rối loạn chức năng tiền đình có thể có các lựa chọn khác nhau. Nhưng hầu hết người bệnh cần được kiểm soát các triệu chứng, điều trị có thể dùng thuốc ức chế tiền đình. Đối với chứng đau nửa đầu tiền đình, có thể kiểm soát bằng thuốc dự phòng và/hoặc thuốc điều trị.\r\n\r\nChóng mặt là triệu chứng điển hình của bệnh rối loạn tiền đình do tổn thương trong não hoặc trong tai, nhưng cũng có thể là biểu hiện không phải chóng mặt thực sự như hoa mắt, choáng váng do các bệnh lý khác như tim mạch, thiếu máu, hạ đường huyết, đột quỵ… Bác sĩ Hằng khuyên, người bệnh cần đến bệnh viện thăm khám để bác sĩ chẩn đoán chính xác nguyên nhân gây rối loạn tiền đình để điều trị trúng đích, hiệu quả.', 'https://tamanhhospital.vn/wp-content/uploads/2023/04/bai-tap-dieu-tri-tien-dinh-ngoai-bien.jpg'),
(2, 'VƯỢT HÀNG TRĂM CÂY SỐ ĐI XÓA NÁM CÔNG NGHỆ MỸ', 'TP.HCM đang vào mùa nắng nóng, mỗi tuần BVĐK Tâm Anh đón hàng chục khách hàng từ nhiều tỉnh thành, Việt kiều Mỹ, Canada, Úc… đến xóa nám, tàn nhang, đồi mồi…\r\n\r\nxóa nám công nghệ mỹ\r\n\r\nTrị liệu giúp da sáng bừng\r\nSáng thứ Bảy, tại khu vực Thủ thuật da ở lầu 2 khu D, BVĐK Tâm Anh TP.HCM có nhiều khách hàng được tẩy trang, rửa mặt, tẩy tế bào chết, xông hơi trước khi soi da và bắn laser trị nám.\r\n\r\nquá trình thực hiện\r\nChị Đ.B.A được điều dưỡng chăm sóc da sau khi laser điều trị nám.\r\nSau 30 phút ủ tê, chị Đ.B.A. (44 tuổi, Bình Phước) bắt đầu được đeo kính bảo vệ mắt chuyên dụng và chính tay thạc sĩ bác sĩ Vũ Thị Thùy Trang, chuyên khoa Da liễu – Thẩm mỹ Da thực hiện bắn laser trị nám và đồi mồi bằng công nghệ cao cấp của Mỹ.\r\n\r\nỞ những vùng da nám đậm phát ra tiếng kêu lụp bụp, bác sĩ Trang giải thích do sắc tố melanin bị tia laser phá hủy với bước sóng 532nm. Máy phát ra tia laser hình lục giác cùng với xung pico trong nano có khả năng phá hủy sắc tố melanin mà không ảnh hưởng đến cấu trúc da.\r\n\r\ntrước và sau\r\nDa mặt chị Đ.B.A. trước và sau 45 phút laser điều trị nám.\r\nChưa đầy 15 phút bắn laser, nám ở mặt của chị A. đã mờ rõ rệt. Chị được đắp mặt nạ làm mát da và thoa kem chống nắng trước khi ra về. Chị A. cho biết bị đốm nâu gần 2 năm nay. Lúc đầu, các đốm nâu xuất hiện ở da tay và lan dần khắp cánh tay tới mặt.\r\n\r\n“Tôi không dám soi gương, nhìn vào buồn lắm, thà một ít thì không sao nhưng nổi nhiều quá thấy không còn tự tin” chị A. nhớ lại. Gần 2 năm đấu tranh tâm lý, phần sợ bị biến chứng khi không tìm được cơ sở điều trị uy tín, phần ngại do tuổi không còn trẻ; cuối cùng khi nhận được “cái gật đầu” của chồng và các con, chị A. quyết định tới Bệnh viện Đa khoa Tâm Anh TP.HCM.\r\n\r\nNgày cuối tuần, chuyên khoa Da liễu – Thẩm mỹ Da, BVĐK Tâm Anh TP.HCM còn có nhiều khách hàng nam đến trị liệu da. Anh P.V.B. (40 tuổi, quận Bình Tân, TP.HCM) chia sẻ: “Hai gò má xuất hiện mảng da nâu hơn 1 năm nay. Lúc đầu, tôi không quan tâm nhiều nhưng nám càng ngày càng nhiều và màu sẫm. Da mặt có 2 màu lốm đốm khó chịu.”\r\n\r\nVì nám nhẹ, anh B. không cần ủ tê và được tiến sĩ bác sĩ Đặng Thị Ngọc Bích, khoa Da liễu – Thẩm mỹ Da tư vấn điều trị nám bằng máy laser của Mỹ, không đau. Khoảng 20 phút bắn laser, anh B. tự tin hẳn khi thấy da sáng lên rõ rệt, các mảng nám mờ hẳn. Chuyên khoa Da liễu – Thẩm mỹ Da, BVĐK Tâm Anh TP.HCM không chỉ tiếp nhận khách hàng ở các tỉnh, thành tìm đến mà còn thường xuyên điều trị nám, đồi mồi, rụng tóc, trẻ hóa da, trị mụn, xóa nếp nhăn… cho Việt kiều Mỹ, Úc, Pháp, Đức, Canada, Campuchia…', 'https://tamanhhospital.vn/wp-content/uploads/2023/04/xoa-nam-cong-nghe-my-ca-benh.jpg'),
(3, 'ĐIỀU TRỊ SUY GIÃN TĨNH MẠCH KHÔNG GÂY MÊ CHO BỆNH NHÂN HEN SUYỄN', 'Bệnh nhân có tiền sử hen suyễn nặng không thích hợp gây mê, được gây tê tại chỗ để bơm keo sinh học điều trị suy tĩnh mạch chi dưới.\r\n\r\nSau 1 giờ bơm keo sinh học qua đường tĩnh mạch điều trị suy giãn tĩnh mạch chi dưới mạn tính, chị Vân Khuê (45 tuổi, Q. Phú Nhuận TP HCM) đã đi lại bình thường và xuất viện ngay trong ngày.\r\n“Tôi như trút được gánh nặng trên đôi chân suốt nhiều năm qua. Hai chân bây giờ nhẹ hẳn, không còn căng tức, chuột rút, phù nhiều như trước nên bước đi cũng tự tin hơn”, chị Khuê chia sẻ.\r\nHơn 8 năm trước, chị Khuê được chẩn đoán suy tĩnh mạch chi dưới nhưng điều trị nhiều nơi, uống nhiều loại thuốc, mang vớ tĩnh mạch… nhưng không cải thiện.\r\n\r\nđiều trị suy tĩnh mạch cho bệnh nhân hen suyễn\r\n\r\nBác sĩ có tư vấn chị đốt laser tĩnh mạch, nhưng quá trình thực hiện phải gây mê hoặc gây tê tủy sống sẽ kích hoạt cơn hen suyễn nguy hiểm. Do đó, chị chần chừ chưa đi làm và cố chịu đựng. Gần đây chân đau nhức, sưng phù nhiều, nổi từng đám tĩnh mạch mạng nhện li ti từ cẳng chân lên đến đùi, chị tìm đến Bệnh viện Tâm Anh TP.HCM để điều trị triệt để.\r\n\r\nBS.CKI Trần Quốc Hoài, khoa Ngoại Tim mạch – Lồng ngực cho biết, sau khi loại trừ các nguyên nhân gây phù khác, chị Khuê được chẩn đoán suy giãn tĩnh mạch chi dưới mức độ 3 có phù chân, triệu chứng vẫn còn dù đã điều trị nội khoa tích cực. Chị cần can thiệp bằng các phương pháp ngoại khoa chuyên sâu hơn như đốt laser nội tĩnh mạch, đốt sóng cao tần, bơm keo sinh học… Do chị có bệnh nền hen suyễn, để đảm bảo an toàn trong quá trình can thiệp, bác sĩ chọn phương pháp bơm keo sinh học, vốn chỉ cần gây tê tại chỗ.\r\n\r\nBác sĩ sử dụng thuốc tê tại chỗ để đưa catheter vào lòng tĩnh mạch. Dưới sự trợ giúp của hệ thống siêu âm hiện đại, một ống thông được đưa vào lòng mạch máu đúng vị trí tĩnh mạch bị giãn, sau đó bác sĩ tiến hành bơm keo sinh học và đè ép để thành tĩnh mạch dính lại chắc chắn. Trước khi kết thúc thủ thuật, bác sĩ tiến hành siêu âm kiểm tra lại để đảm bảo hệ thống tĩnh mạch suy giãn được bít hoàn toàn.\r\n\r\nDưới hướng dẫn của siêu âm, keo sinh học được bơm vào lòng tĩnh mạch, bít chính xác vị trí tĩnh mạch suy giãn, nhanh chóng cải thiện tình trạng phù chân, đau nhức cho bệnh nhân. Ảnh: Bệnh viện Tâm Anh\r\n\r\nBơm keo sinh học (VenaSeal) được Cục quản lý Thực phẩm và Dược phẩm Hoa Kỳ chấp thuận sử dụng từ năm 2015 sau nhiều nghiên cứu chứng minh có tác dụng điều trị hiệu quả suy tĩnh mạch chi dưới. VenaSeal thường được chỉ định cho các trường hợp giãn tĩnh mạch mức độ trung bình đến nặng.\r\n\r\nKeo sinh học được sản xuất phù hợp với cơ thể người, bơm vào lòng tĩnh mạch dưới hướng dẫn của siêu âm, sẽ làm kết dính lòng mạch tĩnh mạch, khiến tĩnh mạch bị ép lại thành một khối dẹt và vô hiệu hóa chức năng, không gây ứ máu ngăn bệnh tiến triển. Dòng máu ở chân sẽ được định hướng đến các tĩnh mạch khỏe mạnh khác để về tim.\r\n\r\nTheo bác sĩ Hoài, trong quá trình thực hiện, keo gặp máu sẽ kết dính thành một khối chắc và không thể tự tiêu hủy được. Nếu xác định sai vị trí bơm như vào tĩnh mạch sâu ở đùi, bụng thì sẽ dẫn đến nhiều biến chứng nguy hiểm như viêm tắc tĩnh mạch chi dưới, thuyên tắc huyết khối… Vì thế, để thực hiện thủ thuật này, bác sĩ cần hiểu rõ về siêu âm can thiệp để có thể kiểm soát các dụng cụ trong lòng mạch một cách chính xác nhất, tránh xảy ra biến chứng nguy hiểm.\r\n\r\nSo với thủ thuật đốt laser hoặc sóng cao tần, bơm keo sinh học có nhiều ưu điểm vượt trội như: không gây tổn thương dọc theo tĩnh mạch do đốt, ít đau hơn, thực hiện nhanh chóng, phù hợp với người bệnh ngoại trú. Đặc biệt, hiệu quả điều trị sau 5 năm lên tới 94.6 – 98%. Người bệnh hồi phục nhanh và có thể đi lại sớm sau thủ thuật.\r\n\r\nNhờ ưu điểm gây tê tại chỗ, kỹ thuật bơm keo sinh học đặc biệt phù hợp với các bệnh nhân nguy cơ gây mê cao như bệnh tim mạch, hô hấp, chuyển hóa.\r\n\r\nSuy tĩnh mạch chi dưới là bệnh lý phổ biến và ngày càng trẻ hóa, thường gặp ở người thừa cân béo phì hoặc người có đặc thù công việc phải ngồi hay đứng trong thời gian dài như giáo viên, tiếp viên hàng không, nhân viên văn phòng, bảo vệ…\r\n\r\nĐể phòng ngừa bệnh, cần tuân giữ cân nặng hợp lý, tập thể dục đều đặn, không ngồi hoặc đứng quá lâu, tránh mặc quần áo bó sát hay đeo thắt lưng quá chặt, hạn chế mang giày cao gót… Với những người đã trải qua thủ thuật loại bỏ tĩnh mạch suy, cần có chế độ ăn uống tốt cho sức khỏe tim mạch, mang vớ tĩnh mạch và tuân thủ lịch tái khám định kỳ để phòng nguy cơ tái phát.', 'https://tamanhhospital.vn/wp-content/uploads/2023/04/dieu-tri-suy-tinh-mach-cho-benh-nhan-hen-suyen.jpg');

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `idkhoa` (`idkhoa`);

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
  ADD KEY `iddanhmuc` (`iddanhmuc`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `iddanhmuc` (`iddanhmuc`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `benh`
--
ALTER TABLE `benh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT cho bảng `giohang`
--
ALTER TABLE `giohang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT cho bảng `hanghoa`
--
ALTER TABLE `hanghoa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT cho bảng `khoa`
--
ALTER TABLE `khoa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `lichkham`
--
ALTER TABLE `lichkham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
-- Các ràng buộc cho bảng `benh`
--
ALTER TABLE `benh`
  ADD CONSTRAINT `benh_ibfk_1` FOREIGN KEY (`idkhoa`) REFERENCES `khoa` (`id`);

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

--
-- Các ràng buộc cho bảng `thuoc`
--
ALTER TABLE `thuoc`
  ADD CONSTRAINT `thuoc_ibfk_1` FOREIGN KEY (`iddanhmuc`) REFERENCES `danhmuc` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
