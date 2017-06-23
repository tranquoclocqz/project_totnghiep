-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 23, 2017 lúc 05:34 SA
-- Phiên bản máy phục vụ: 10.1.21-MariaDB
-- Phiên bản PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db_node`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `idhoadon` int(11) DEFAULT NULL,
  `idsanpham` int(11) DEFAULT NULL,
  `soluong` int(11) DEFAULT NULL,
  `id` int(10) UNSIGNED NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`idhoadon`, `idsanpham`, `soluong`, `id`, `createdAt`, `updatedAt`) VALUES
(2, 1, 2, 1, '2017-06-23 00:22:33', '2017-06-23 00:22:33'),
(2, 2, 2, 2, '2017-06-23 00:22:33', '2017-06-23 00:22:33'),
(3, 2, 1, 3, '2017-06-23 00:25:06', '2017-06-23 00:25:06'),
(3, 1, 1, 4, '2017-06-23 00:25:06', '2017-06-23 00:25:06'),
(4, 1, 1, 5, '2017-06-23 00:26:34', '2017-06-23 00:26:34'),
(5, 1, 1, 6, '2017-06-23 00:27:36', '2017-06-23 00:27:36'),
(5, 2, 1, 7, '2017-06-23 00:27:36', '2017-06-23 00:27:36'),
(6, 1, 1, 8, '2017-06-23 00:29:03', '2017-06-23 00:29:03'),
(6, 2, 1, 9, '2017-06-23 00:29:03', '2017-06-23 00:29:03'),
(7, 2, 1, 10, '2017-06-23 00:31:32', '2017-06-23 00:31:32'),
(7, 1, 1, 11, '2017-06-23 00:31:32', '2017-06-23 00:31:32'),
(8, 1, 1, 12, '2017-06-23 00:32:19', '2017-06-23 00:32:19'),
(9, 1, 1, 13, '2017-06-23 00:37:22', '2017-06-23 00:37:22'),
(10, 1, 1, 14, '2017-06-23 00:37:39', '2017-06-23 00:37:39'),
(11, 1, 1, 15, '2017-06-23 00:43:40', '2017-06-23 00:43:40'),
(12, 1, 1, 16, '2017-06-23 00:45:13', '2017-06-23 00:45:13'),
(13, 1, 1, 17, '2017-06-23 00:47:02', '2017-06-23 00:47:02'),
(14, 1, 1, 18, '2017-06-23 00:48:36', '2017-06-23 00:48:36'),
(15, 1, 1, 19, '2017-06-23 00:52:38', '2017-06-23 00:52:38'),
(16, 1, 1, 20, '2017-06-23 00:56:01', '2017-06-23 00:56:01'),
(17, 1, 1, 21, '2017-06-23 00:59:40', '2017-06-23 00:59:40'),
(18, 1, 1, 22, '2017-06-23 01:01:38', '2017-06-23 01:01:38');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hinhsanpham`
--

CREATE TABLE `hinhsanpham` (
  `id` int(10) UNSIGNED NOT NULL,
  `url` longtext COLLATE utf8_unicode_ci,
  `idsanpham` int(11) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hinhsanpham`
--

INSERT INTO `hinhsanpham` (`id`, `url`, `idsanpham`, `createdAt`, `updatedAt`) VALUES
(1, '15792e36-72e2-4379-b968-362463f975c0.png', 1, '2017-06-22 10:58:07', '2017-06-22 10:58:07'),
(2, 'b6272d88-f76b-428b-af47-5c37ed5995db.jpg', 1, '2017-06-22 10:58:07', '2017-06-22 10:58:07'),
(3, 'a3dc2e89-b71a-4df9-bdda-17e66adcaa17.jpg', 1, '2017-06-22 10:58:07', '2017-06-22 10:58:07'),
(4, '11a249d8-18cd-4991-9d98-23110b18ad25.jpg', 2, '2017-06-22 10:58:40', '2017-06-22 10:58:40'),
(5, '18fc5e21-f5f8-4e48-a5c5-4e8033debe35.jpg', 2, '2017-06-22 10:58:40', '2017-06-22 10:58:40'),
(6, '7f391d2a-e85c-47e7-8b28-2526a58fd093.png', 2, '2017-06-22 10:58:40', '2017-06-22 10:58:40'),
(7, 'a0c18fca-c039-4d26-8fc7-5cf1b764ece5.jpg', 3, '2017-06-22 11:23:55', '2017-06-22 11:23:55');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `id` int(10) UNSIGNED NOT NULL,
  `donhang` longtext COLLATE utf8_unicode_ci,
  `khachhang` longtext COLLATE utf8_unicode_ci,
  `sodienthoai` longtext COLLATE utf8_unicode_ci,
  `diachi` longtext COLLATE utf8_unicode_ci,
  `trangthai` int(11) DEFAULT NULL,
  `giatri` longtext COLLATE utf8_unicode_ci,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`id`, `donhang`, `khachhang`, `sodienthoai`, `diachi`, `trangthai`, `giatri`, `createdAt`, `updatedAt`) VALUES
(1, 'dt9x9', 'tran quoc loc r', '0909090909 r', 'tay ninh r', 1, '30000000', '2017-06-22 10:59:39', '2017-06-22 10:59:39'),
(2, '7x5th', 'tran quoc loc 2', '0909090909 2', 'tay ninh 4', 1, '11111112', '2017-06-23 00:22:32', '2017-06-23 00:22:32'),
(3, 'inh0d', 'tran quoc loc 4', '0909090909', 'tay ninh 6', 1, '11111112', '2017-06-23 00:25:06', '2017-06-23 00:25:06'),
(4, 'jsjqe', 'tran quoc loc 5', '0909090909 2', 'tay ninh 2', 1, '1', '2017-06-23 00:26:34', '2017-06-23 00:26:34'),
(5, 'am75l', 'tran quoc loc 5', '0909090909 4', 'tay ninh 6', 1, '11111112', '2017-06-23 00:27:36', '2017-06-23 00:27:36'),
(6, 'bt89e', 'tran quoc loc', '0909090909 2', 'tay ninh 4', 1, '11111112', '2017-06-23 00:29:03', '2017-06-23 00:29:03'),
(7, 'x6h45', 'tran quoc loc 5', '0909090909 2', 'tay ninh 6', 1, '11111112', '2017-06-23 00:31:32', '2017-06-23 00:31:32'),
(8, 'ykl8h', '', '', '', 1, '1', '2017-06-23 00:32:18', '2017-06-23 00:32:18'),
(9, '26kbi', 'tran quoc loc 2', '0909090909 4', 'tay ninh 2', 1, '1', '2017-06-23 00:37:22', '2017-06-23 00:37:22'),
(10, 'w962o', '', '', '', 1, '1', '2017-06-23 00:37:39', '2017-06-23 00:37:39'),
(11, 'lwbpr', NULL, NULL, NULL, 1, '1', '2017-06-23 00:43:40', '2017-06-23 00:43:40'),
(12, 'wcgvn', NULL, NULL, NULL, 1, '1', '2017-06-23 00:45:12', '2017-06-23 00:45:12'),
(13, '1wex3', NULL, NULL, NULL, 1, '1', '2017-06-23 00:47:02', '2017-06-23 00:47:02'),
(14, 'ha50k', NULL, NULL, NULL, 1, '1', '2017-06-23 00:48:36', '2017-06-23 00:48:36'),
(15, '3yu9l', NULL, NULL, NULL, 1, '1', '2017-06-23 00:52:38', '2017-06-23 00:52:38'),
(16, 'q05aw', NULL, NULL, NULL, 1, '1', '2017-06-23 00:56:01', '2017-06-23 00:56:01'),
(17, 'oooaf', NULL, NULL, NULL, 1, '1', '2017-06-23 00:59:40', '2017-06-23 00:59:40'),
(18, 'i0mvb', NULL, NULL, NULL, 1, '1', '2017-06-23 01:01:38', '2017-06-23 01:01:38');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `trangthai` int(11) DEFAULT NULL,
  `id` int(10) UNSIGNED NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhasanxuat`
--

CREATE TABLE `nhasanxuat` (
  `id` int(10) UNSIGNED NOT NULL,
  `idthietbi` int(11) DEFAULT NULL,
  `tennhasanxuat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` longtext COLLATE utf8_unicode_ci,
  `trangthai` int(11) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhasanxuat`
--

INSERT INTO `nhasanxuat` (`id`, `idthietbi`, `tennhasanxuat`, `slug`, `trangthai`, `createdAt`, `updatedAt`) VALUES
(1, 1, 'Samsung', 'samsung', 1, '2017-06-23 09:31:08', '2017-06-23 09:31:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(10) UNSIGNED NOT NULL,
  `tensanpham` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `anhdaidien` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `soluong` int(11) DEFAULT NULL,
  `gia` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `khuyenmai` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cauhinh` longtext COLLATE utf8_unicode_ci,
  `mota` longtext COLLATE utf8_unicode_ci,
  `idnhasanxuat` int(11) DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `trangthai` int(11) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `tensanpham`, `anhdaidien`, `soluong`, `gia`, `khuyenmai`, `cauhinh`, `mota`, `idnhasanxuat`, `slug`, `trangthai`, `createdAt`, `updatedAt`) VALUES
(1, 'wpe31', 'wpe31-rfk44.png', 93, '111', '1', '', '', NULL, 'wpe31', 1, '2017-06-22 22:00:44', '2017-06-23 01:01:39'),
(2, 'qwerdf', 'qwerdf-i8gkb.png', 105, '11111111', '0', '<p>123</p>\r\n', '<p>123</p>\r\n', NULL, 'qwerdf', 1, '2017-06-22 22:09:29', '2017-06-23 00:31:32'),
(3, 'Samsung Galaxy J7 Prime', 'samsung-galaxy-j7-prime-nkwok.png', 100, '5990000', '0', '<div class=\"detail-col-left53 left\">\r\n<h3>Th&ocirc;ng số kỹ thuật</h3>\r\n\r\n<ul>\r\n	<li>Th&ocirc;ng số cơ bản</li>\r\n	<li>M&agrave;n h&igrave;nh : 5.5 inch (1080 x 1920 pixels)</li>\r\n	<li>Camera : Ch&iacute;nh: 13.0 MP, Phụ: 8.0 MP</li>\r\n	<li>RAM : 3 GB</li>\r\n	<li>Bộ nhớ trong : 32 GB</li>\r\n	<li>Hệ điều h&agrave;nh : Android Marshmallow 6.0.1</li>\r\n	<li>Chipset : Exynos 7870 8 nh&acirc;n 64-bit</li>\r\n	<li>CPU : Octa-Core 1.60GHz</li>\r\n	<li>K&iacute;ch thước : 151.5 x 74.9 x 8.1 mm</li>\r\n	<li>GPU : Mali-T830</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>M&agrave;n h&igrave;nh</li>\r\n	<li>C&ocirc;ng nghệ m&agrave;n h&igrave;nh : PLS</li>\r\n	<li>M&agrave;u m&agrave;n h&igrave;nh : 16 Triệu m&agrave;u</li>\r\n	<li>Chuẩn m&agrave;n h&igrave;nh : Full HD</li>\r\n	<li>Độ ph&acirc;n giải m&agrave;n h&igrave;nh : 1920 x 1080 pixels</li>\r\n	<li>C&ocirc;ng nghệ cảm ứng : Đa điểm</li>\r\n	<li>Mặt k&iacute;nh m&agrave;n h&igrave;nh : K&iacute;nh cường lực Gorilla Glass 4</li>\r\n	<li>Camera Sau</li>\r\n	<li>Độ ph&acirc;n giải : 13.0 MP</li>\r\n	<li>Quay phim : Full HD 1080p@30fps</li>\r\n	<li>Đ&egrave;n Flash : C&oacute;</li>\r\n	<li>Chụp ảnh n&acirc;ng cao : Tự động lấy n&eacute;t, Chạm lấy n&eacute;t, Nhận diện khu&ocirc;n mặt, HDR, Panorama, Chế độ chụp chuy&ecirc;n nghiệp</li>\r\n	<li>Camera Trước</li>\r\n	<li>Video Call : C&oacute;</li>\r\n	<li>Độ ph&acirc;n giải : 8.0 MP</li>\r\n	<li>Th&ocirc;ng tin kh&aacute;c : Camera g&oacute;c rộng, Chế độ l&agrave;m đẹp, Nhận diện khu&ocirc;n mặt, Selfie bằng cử chỉ</li>\r\n	<li>Cấu h&igrave;nh phần cứng</li>\r\n	<li>Tốc độ CPU : 1.60 GHz</li>\r\n	<li>Số nh&acirc;n : 8 Nh&acirc;n</li>\r\n	<li>Chipset : Exynos 7870</li>\r\n	<li>RAM : 3 GB</li>\r\n	<li>Chip đồ họa (GPU) : Mali-T830</li>\r\n	<li>Bộ nhớ &amp; Lưu trữ</li>\r\n	<li>Danh bạ lưu trữ : Kh&ocirc;ng giới hạn</li>\r\n	<li>ROM : 32 GB</li>\r\n	<li>Bộ nhớ c&ograve;n lại : ~25 GB</li>\r\n	<li>Thẻ nhớ ngo&agrave;i : MicroSD (T-Flash)</li>\r\n	<li>Hỗ trợ thẻ nhớ tối đa : 256 GB</li>\r\n	<li>Thiết kế &amp; Trọng lượng</li>\r\n	<li>Kiểu d&aacute;ng : Thanh (thẳng) + Cảm ứng</li>\r\n	<li>Chất liệu : Hợp kim nh&ocirc;m nguy&ecirc;n khối (mặt k&iacute;nh cong 2,5D)</li>\r\n	<li>K&iacute;ch thước : 151.5 x 74.9 x 8.1 mm</li>\r\n	<li>Trọng lượng : 167g</li>\r\n	<li>Khả năng chống nước : Kh&ocirc;ng</li>\r\n	<li>Th&ocirc;ng tin pin</li>\r\n	<li>Loại pin : Li-Ion</li>\r\n	<li>Dung lượng pin : 3300 mAh</li>\r\n	<li>Pin c&oacute; thể th&aacute;o rời : Kh&ocirc;ng</li>\r\n	<li>Chế độ sạc nhanh : Kh&ocirc;ng</li>\r\n	<li>Kết nối &amp; Cổng giao tiếp</li>\r\n	<li>Băng tần 2G : GSM 850 / 900 / 1800 / 1900</li>\r\n	<li>Băng tần 3G : WCDMA 850/ 2100 GHz</li>\r\n	<li>Băng tần 4G : LTE Cat 4</li>\r\n	<li>Hỗ trợ SIM : Nano Sim</li>\r\n	<li>Khe cắm sim : 2 Khe</li>\r\n	<li>Wifi : WiFi b/g/n, Wi-Fi Direct</li>\r\n	<li>GPS : A-GPS, GLONASS</li>\r\n	<li>Bluetooth : v4.1</li>\r\n	<li>GPRS/EDGE : C&oacute;</li>\r\n	<li>NFC : Kh&ocirc;ng</li>\r\n	<li>Kết nối USB : Micro USB</li>\r\n	<li>Cổng kết nối kh&aacute;c : Hỗ trợ OTG</li>\r\n	<li>Cổng sạc : Micro USB</li>\r\n	<li>Jack (Input &amp; Output) : 3.5 mm</li>\r\n	<li>Giải tr&iacute; &amp; Ứng dụng</li>\r\n	<li>Xem phim : H.265, 3GP, MP4, AVI, WMV, H.264(MPEG4-AVC), DivX, WMV9, Xvid</li>\r\n	<li>Nghe nhạc : Lossless, MP3, WAV, WMA</li>\r\n	<li>Ghi &acirc;m : C&oacute;</li>\r\n	<li>FM radio : C&oacute;</li>\r\n</ul>\r\n</div>\r\n', '<p>undefined</p>\r\n', 1, 'samsung-galaxy-j7-prime', 1, '2017-06-23 09:43:17', '2017-06-23 09:45:06'),
(4, 'rể e erer ', 're-e-erer-luyf5.png', 1111, '111', '111', '<p>&lt;div class=&quot;left detail-col-left53&quot;&gt; &lt;h3 class=&quot;detail-title&quot;&gt;Th&ocirc;ng số kỹ thuật&lt;/h3&gt; &lt;ul class=&quot;detail-main-specification&quot;&gt; &lt;li class=&quot;specificationheader&quot;&gt; Th&ocirc;ng số cơ bản &lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;M&agrave;n h&igrave;nh :&lt;/label&gt; &lt;span&gt;5.5 inch (1080 x 1920 pixels)&lt;/span&gt; &lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;Camera :&lt;/label&gt; &lt;span&gt;Ch&iacute;nh: 13.0 MP, Phụ: 8.0 MP&lt;/span&gt; &lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;RAM :&lt;/label&gt; &lt;span&gt;&nbsp;&nbsp; &nbsp;3 GB&lt;/span&gt; &lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;Bộ nhớ trong :&lt;/label&gt; &lt;span&gt;32 GB&lt;/span&gt; &lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;Hệ điều h&agrave;nh :&lt;/label&gt; &lt;span&gt;Android Marshmallow 6.0.1&lt;/span&gt; &lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;Chipset :&lt;/label&gt; &lt;span&gt;Exynos 7870 8 nh&acirc;n 64-bit&lt;/span&gt; &lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;CPU :&lt;/label&gt; &lt;span&gt;Octa-Core 1.60GHz&lt;/span&gt; &lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;K&iacute;ch thước :&lt;/label&gt; &lt;span&gt;151.5 x 74.9 x 8.1 mm&lt;/span&gt; &lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;GPU :&lt;/label&gt; &lt;span&gt;Mali-T830&lt;/span&gt; &lt;/li&gt; &nbsp;&lt;/ul&gt; &nbsp;&lt;ul class=&quot;more-specification active&quot;&gt; &nbsp;&lt;li class=&quot;specificationheader&quot;&gt;M&agrave;n h&igrave;nh&lt;/li&gt; &nbsp; &lt;li&gt; &lt;label&gt;C&ocirc;ng nghệ m&agrave;n h&igrave;nh :&lt;/label&gt; &nbsp;&lt;span&gt;PLS&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;M&agrave;u m&agrave;n h&igrave;nh :&lt;/label&gt; &nbsp;&lt;span&gt;16 Triệu m&agrave;u&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;Chuẩn m&agrave;n h&igrave;nh :&lt;/label&gt; &nbsp;&lt;span&gt;Full HD&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;Độ ph&acirc;n giải m&agrave;n h&igrave;nh :&lt;/label&gt; &nbsp;&lt;span&gt;1920 x 1080 pixels&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;C&ocirc;ng nghệ cảm ứng :&lt;/label&gt; &nbsp;&lt;span&gt; Đa điểm&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;Mặt k&iacute;nh m&agrave;n h&igrave;nh :&lt;/label&gt; &nbsp;&lt;span&gt;&nbsp;&nbsp; &nbsp;K&iacute;nh cường lực Gorilla Glass 4&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li class=&quot;specificationheader&quot;&gt;Camera Sau&lt;/li&gt; &nbsp; &lt;li&gt; &lt;label&gt;Độ ph&acirc;n giải :&lt;/label&gt; &nbsp;&lt;span&gt;13.0 MP&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;Quay phim :&lt;/label&gt; &nbsp;&lt;span&gt;Full HD 1080p@30fps&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;Đ&egrave;n Flash :&lt;/label&gt; &nbsp;&lt;span&gt;C&oacute;&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;Chụp ảnh n&acirc;ng cao :&lt;/label&gt; &nbsp;&lt;span&gt;Tự động lấy n&eacute;t, Chạm lấy n&eacute;t, Nhận diện khu&ocirc;n mặt, HDR, Panorama, Chế độ chụp chuy&ecirc;n nghiệp&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li class=&quot;specificationheader&quot;&gt;Camera Trước&lt;/li&gt; &nbsp; &lt;li&gt; &lt;label&gt;Video Call :&lt;/label&gt; &nbsp;&lt;span&gt;C&oacute;&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;Độ ph&acirc;n giải :&lt;/label&gt; &nbsp;&lt;span&gt;8.0 MP&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;Th&ocirc;ng tin kh&aacute;c :&lt;/label&gt; &nbsp;&lt;span&gt;Camera g&oacute;c rộng, Chế độ l&agrave;m đẹp, Nhận diện khu&ocirc;n mặt, Selfie bằng cử chỉ&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li class=&quot;specificationheader&quot;&gt;Cấu h&igrave;nh phần cứng&lt;/li&gt; &nbsp; &lt;li&gt; &lt;label&gt;Tốc độ CPU :&lt;/label&gt; &nbsp;&lt;span&gt;1.60 GHz&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;Số nh&acirc;n :&lt;/label&gt; &nbsp;&lt;span&gt;8 Nh&acirc;n&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;Chipset :&lt;/label&gt; &nbsp;&lt;span&gt;Exynos 7870&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;RAM :&lt;/label&gt; &nbsp;&lt;span&gt;3 GB&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;Chip đồ họa (GPU) :&lt;/label&gt; &nbsp;&lt;span&gt;Mali-T830&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li class=&quot;specificationheader&quot;&gt;Bộ nhớ &amp;amp; Lưu trữ&lt;/li&gt; &nbsp; &lt;li&gt; &lt;label&gt;Danh bạ lưu trữ :&lt;/label&gt; &nbsp;&lt;span&gt;Kh&ocirc;ng giới hạn&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;ROM :&lt;/label&gt; &nbsp;&lt;span&gt;32 GB&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;Bộ nhớ c&ograve;n lại :&lt;/label&gt; &nbsp;&lt;span&gt;~25 GB&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;Thẻ nhớ ngo&agrave;i :&lt;/label&gt; &nbsp;&lt;span&gt;&nbsp;&nbsp; &nbsp;MicroSD (T-Flash)&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;Hỗ trợ thẻ nhớ tối đa :&lt;/label&gt; &nbsp;&lt;span&gt;256 GB&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li class=&quot;specificationheader&quot;&gt;Thiết kế &amp;amp; Trọng lượng&lt;/li&gt; &nbsp; &lt;li&gt; &lt;label&gt;Kiểu d&aacute;ng :&lt;/label&gt; &nbsp;&lt;span&gt;Thanh (thẳng) + Cảm ứng &lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;Chất liệu :&lt;/label&gt; &nbsp;&lt;span&gt;Hợp kim nh&ocirc;m nguy&ecirc;n khối (mặt k&iacute;nh cong 2,5D)&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;K&iacute;ch thước :&lt;/label&gt; &nbsp;&lt;span&gt;151.5 x 74.9 x 8.1 mm&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;Trọng lượng &nbsp;:&lt;/label&gt; &nbsp;&lt;span&gt;167g&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;Khả năng chống nước :&lt;/label&gt; &nbsp;&lt;span&gt;Kh&ocirc;ng&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li class=&quot;specificationheader&quot;&gt;Th&ocirc;ng tin pin&lt;/li&gt; &nbsp; &lt;li&gt; &lt;label&gt;Loại pin :&lt;/label&gt; &nbsp;&lt;span&gt;&nbsp;&nbsp; &nbsp;Li-Ion&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;Dung lượng pin :&lt;/label&gt; &nbsp;&lt;span&gt;3300 mAh&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;Pin c&oacute; thể th&aacute;o rời :&lt;/label&gt; &nbsp;&lt;span&gt;Kh&ocirc;ng&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;Chế độ sạc nhanh &nbsp;:&lt;/label&gt; &nbsp;&lt;span&gt;Kh&ocirc;ng&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li class=&quot;specificationheader&quot;&gt;Kết nối &amp;amp; Cổng giao tiếp&lt;/li&gt; &nbsp; &lt;li&gt; &lt;label&gt;Băng tần 2G :&lt;/label&gt; &nbsp;&lt;span&gt;GSM 850 / 900 / 1800 / 1900&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;Băng tần 3G :&lt;/label&gt; &nbsp;&lt;span&gt; WCDMA 850/ 2100 GHz&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;Băng tần 4G :&lt;/label&gt; &nbsp;&lt;span&gt;LTE Cat 4&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;Hỗ trợ SIM :&lt;/label&gt; &nbsp;&lt;span&gt;Nano Sim&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;Khe cắm sim :&lt;/label&gt; &nbsp;&lt;span&gt;2 Khe&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;Wifi :&lt;/label&gt; &nbsp;&lt;span&gt; WiFi b/g/n, Wi-Fi Direct &lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;GPS :&lt;/label&gt; &nbsp;&lt;span&gt;A-GPS, GLONASS&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;Bluetooth :&lt;/label&gt; &nbsp;&lt;span&gt;v4.1&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;GPRS/EDGE :&lt;/label&gt; &nbsp;&lt;span&gt;&nbsp;&nbsp; &nbsp;C&oacute;&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;NFC :&lt;/label&gt; &nbsp;&lt;span&gt;Kh&ocirc;ng&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;Kết nối USB :&lt;/label&gt; &nbsp;&lt;span&gt;Micro USB&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;Cổng kết nối kh&aacute;c :&lt;/label&gt; &nbsp;&lt;span&gt;Hỗ trợ OTG&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;Cổng sạc :&lt;/label&gt; &nbsp;&lt;span&gt;&nbsp;&nbsp; &nbsp;Micro USB&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;Jack (Input &amp;amp; Output) :&lt;/label&gt; &nbsp;&lt;span&gt;&nbsp;&nbsp; &nbsp;3.5 mm&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li class=&quot;specificationheader&quot;&gt;Giải tr&iacute; &amp;amp; Ứng dụng&lt;/li&gt; &nbsp; &lt;li&gt; &lt;label&gt;Xem phim :&lt;/label&gt; &nbsp;&lt;span&gt;H.265, 3GP, MP4, AVI, WMV, H.264(MPEG4-AVC), DivX, WMV9, Xvid&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;Nghe nhạc :&lt;/label&gt; &nbsp;&lt;span&gt;Lossless, MP3, WAV, WMA&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;Ghi &acirc;m :&lt;/label&gt; &nbsp;&lt;span&gt;&nbsp;&nbsp; &nbsp;C&oacute;&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;FM radio :&lt;/label&gt; &nbsp;&lt;span&gt;&nbsp;&nbsp; &nbsp;C&oacute;&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;/ul&gt; &lt;a class=&quot;detail-specific-more active&quot;&gt; &lt;i class=&quot;icons blue-arrow-down-icon&quot;&gt;&lt;/i&gt;&lt;/a&gt; &nbsp;&lt;/div&gt;</p>\r\n', '', 1, 're-e-erer', 1, '2017-06-23 09:47:27', '2017-06-23 09:47:27'),
(5, 'ẻt', 'et-u8x6g.png', 111, '1111', '111', '<p>&lt;div class=&quot;left detail-col-left53&quot;&gt; &lt;h3 class=&quot;detail-title&quot;&gt;Th&ocirc;ng số kỹ thuật&lt;/h3&gt; &lt;ul class=&quot;detail-main-specification&quot;&gt; &lt;li class=&quot;specificationheader&quot;&gt; Th&ocirc;ng số cơ bản &lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;M&agrave;n h&igrave;nh :&lt;/label&gt; &lt;span&gt;5.5 inch (1080 x 1920 pixels)&lt;/span&gt; &lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;Camera :&lt;/label&gt; &lt;span&gt;Ch&iacute;nh: 13.0 MP, Phụ: 8.0 MP&lt;/span&gt; &lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;RAM :&lt;/label&gt; &lt;span&gt;&nbsp;&nbsp; &nbsp;3 GB&lt;/span&gt; &lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;Bộ nhớ trong :&lt;/label&gt; &lt;span&gt;32 GB&lt;/span&gt; &lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;Hệ điều h&agrave;nh :&lt;/label&gt; &lt;span&gt;Android Marshmallow 6.0.1&lt;/span&gt; &lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;Chipset :&lt;/label&gt; &lt;span&gt;Exynos 7870 8 nh&acirc;n 64-bit&lt;/span&gt; &lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;CPU :&lt;/label&gt; &lt;span&gt;Octa-Core 1.60GHz&lt;/span&gt; &lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;K&iacute;ch thước :&lt;/label&gt; &lt;span&gt;151.5 x 74.9 x 8.1 mm&lt;/span&gt; &lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;GPU :&lt;/label&gt; &lt;span&gt;Mali-T830&lt;/span&gt; &lt;/li&gt; &nbsp;&lt;/ul&gt; &nbsp;&lt;ul class=&quot;more-specification active&quot;&gt; &nbsp;&lt;li class=&quot;specificationheader&quot;&gt;M&agrave;n h&igrave;nh&lt;/li&gt; &nbsp; &lt;li&gt; &lt;label&gt;C&ocirc;ng nghệ m&agrave;n h&igrave;nh :&lt;/label&gt; &nbsp;&lt;span&gt;PLS&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;M&agrave;u m&agrave;n h&igrave;nh :&lt;/label&gt; &nbsp;&lt;span&gt;16 Triệu m&agrave;u&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;Chuẩn m&agrave;n h&igrave;nh :&lt;/label&gt; &nbsp;&lt;span&gt;Full HD&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;Độ ph&acirc;n giải m&agrave;n h&igrave;nh :&lt;/label&gt; &nbsp;&lt;span&gt;1920 x 1080 pixels&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;C&ocirc;ng nghệ cảm ứng :&lt;/label&gt; &nbsp;&lt;span&gt; Đa điểm&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;Mặt k&iacute;nh m&agrave;n h&igrave;nh :&lt;/label&gt; &nbsp;&lt;span&gt;&nbsp;&nbsp; &nbsp;K&iacute;nh cường lực Gorilla Glass 4&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li class=&quot;specificationheader&quot;&gt;Camera Sau&lt;/li&gt; &nbsp; &lt;li&gt; &lt;label&gt;Độ ph&acirc;n giải :&lt;/label&gt; &nbsp;&lt;span&gt;13.0 MP&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;Quay phim :&lt;/label&gt; &nbsp;&lt;span&gt;Full HD 1080p@30fps&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;Đ&egrave;n Flash :&lt;/label&gt; &nbsp;&lt;span&gt;C&oacute;&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;Chụp ảnh n&acirc;ng cao :&lt;/label&gt; &nbsp;&lt;span&gt;Tự động lấy n&eacute;t, Chạm lấy n&eacute;t, Nhận diện khu&ocirc;n mặt, HDR, Panorama, Chế độ chụp chuy&ecirc;n nghiệp&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li class=&quot;specificationheader&quot;&gt;Camera Trước&lt;/li&gt; &nbsp; &lt;li&gt; &lt;label&gt;Video Call :&lt;/label&gt; &nbsp;&lt;span&gt;C&oacute;&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;Độ ph&acirc;n giải :&lt;/label&gt; &nbsp;&lt;span&gt;8.0 MP&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;Th&ocirc;ng tin kh&aacute;c :&lt;/label&gt; &nbsp;&lt;span&gt;Camera g&oacute;c rộng, Chế độ l&agrave;m đẹp, Nhận diện khu&ocirc;n mặt, Selfie bằng cử chỉ&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li class=&quot;specificationheader&quot;&gt;Cấu h&igrave;nh phần cứng&lt;/li&gt; &nbsp; &lt;li&gt; &lt;label&gt;Tốc độ CPU :&lt;/label&gt; &nbsp;&lt;span&gt;1.60 GHz&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;Số nh&acirc;n :&lt;/label&gt; &nbsp;&lt;span&gt;8 Nh&acirc;n&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;Chipset :&lt;/label&gt; &nbsp;&lt;span&gt;Exynos 7870&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;RAM :&lt;/label&gt; &nbsp;&lt;span&gt;3 GB&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;Chip đồ họa (GPU) :&lt;/label&gt; &nbsp;&lt;span&gt;Mali-T830&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li class=&quot;specificationheader&quot;&gt;Bộ nhớ &amp;amp; Lưu trữ&lt;/li&gt; &nbsp; &lt;li&gt; &lt;label&gt;Danh bạ lưu trữ :&lt;/label&gt; &nbsp;&lt;span&gt;Kh&ocirc;ng giới hạn&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;ROM :&lt;/label&gt; &nbsp;&lt;span&gt;32 GB&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;Bộ nhớ c&ograve;n lại :&lt;/label&gt; &nbsp;&lt;span&gt;~25 GB&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;Thẻ nhớ ngo&agrave;i :&lt;/label&gt; &nbsp;&lt;span&gt;&nbsp;&nbsp; &nbsp;MicroSD (T-Flash)&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;Hỗ trợ thẻ nhớ tối đa :&lt;/label&gt; &nbsp;&lt;span&gt;256 GB&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li class=&quot;specificationheader&quot;&gt;Thiết kế &amp;amp; Trọng lượng&lt;/li&gt; &nbsp; &lt;li&gt; &lt;label&gt;Kiểu d&aacute;ng :&lt;/label&gt; &nbsp;&lt;span&gt;Thanh (thẳng) + Cảm ứng &lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;Chất liệu :&lt;/label&gt; &nbsp;&lt;span&gt;Hợp kim nh&ocirc;m nguy&ecirc;n khối (mặt k&iacute;nh cong 2,5D)&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;K&iacute;ch thước :&lt;/label&gt; &nbsp;&lt;span&gt;151.5 x 74.9 x 8.1 mm&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;Trọng lượng &nbsp;:&lt;/label&gt; &nbsp;&lt;span&gt;167g&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;Khả năng chống nước :&lt;/label&gt; &nbsp;&lt;span&gt;Kh&ocirc;ng&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li class=&quot;specificationheader&quot;&gt;Th&ocirc;ng tin pin&lt;/li&gt; &nbsp; &lt;li&gt; &lt;label&gt;Loại pin :&lt;/label&gt; &nbsp;&lt;span&gt;&nbsp;&nbsp; &nbsp;Li-Ion&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;Dung lượng pin :&lt;/label&gt; &nbsp;&lt;span&gt;3300 mAh&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;Pin c&oacute; thể th&aacute;o rời :&lt;/label&gt; &nbsp;&lt;span&gt;Kh&ocirc;ng&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;Chế độ sạc nhanh &nbsp;:&lt;/label&gt; &nbsp;&lt;span&gt;Kh&ocirc;ng&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li class=&quot;specificationheader&quot;&gt;Kết nối &amp;amp; Cổng giao tiếp&lt;/li&gt; &nbsp; &lt;li&gt; &lt;label&gt;Băng tần 2G :&lt;/label&gt; &nbsp;&lt;span&gt;GSM 850 / 900 / 1800 / 1900&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;Băng tần 3G :&lt;/label&gt; &nbsp;&lt;span&gt; WCDMA 850/ 2100 GHz&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;Băng tần 4G :&lt;/label&gt; &nbsp;&lt;span&gt;LTE Cat 4&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;Hỗ trợ SIM :&lt;/label&gt; &nbsp;&lt;span&gt;Nano Sim&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;Khe cắm sim :&lt;/label&gt; &nbsp;&lt;span&gt;2 Khe&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;Wifi :&lt;/label&gt; &nbsp;&lt;span&gt; WiFi b/g/n, Wi-Fi Direct &lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;GPS :&lt;/label&gt; &nbsp;&lt;span&gt;A-GPS, GLONASS&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;Bluetooth :&lt;/label&gt; &nbsp;&lt;span&gt;v4.1&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;GPRS/EDGE :&lt;/label&gt; &nbsp;&lt;span&gt;&nbsp;&nbsp; &nbsp;C&oacute;&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;NFC :&lt;/label&gt; &nbsp;&lt;span&gt;Kh&ocirc;ng&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;Kết nối USB :&lt;/label&gt; &nbsp;&lt;span&gt;Micro USB&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;Cổng kết nối kh&aacute;c :&lt;/label&gt; &nbsp;&lt;span&gt;Hỗ trợ OTG&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;Cổng sạc :&lt;/label&gt; &nbsp;&lt;span&gt;&nbsp;&nbsp; &nbsp;Micro USB&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;Jack (Input &amp;amp; Output) :&lt;/label&gt; &nbsp;&lt;span&gt;&nbsp;&nbsp; &nbsp;3.5 mm&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li class=&quot;specificationheader&quot;&gt;Giải tr&iacute; &amp;amp; Ứng dụng&lt;/li&gt; &nbsp; &lt;li&gt; &lt;label&gt;Xem phim :&lt;/label&gt; &nbsp;&lt;span&gt;H.265, 3GP, MP4, AVI, WMV, H.264(MPEG4-AVC), DivX, WMV9, Xvid&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;Nghe nhạc :&lt;/label&gt; &nbsp;&lt;span&gt;Lossless, MP3, WAV, WMA&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;Ghi &acirc;m :&lt;/label&gt; &nbsp;&lt;span&gt;&nbsp;&nbsp; &nbsp;C&oacute;&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;li&gt; &lt;label&gt;FM radio :&lt;/label&gt; &nbsp;&lt;span&gt;&nbsp;&nbsp; &nbsp;C&oacute;&lt;/span&gt; &nbsp;&lt;/li&gt; &nbsp;&lt;/ul&gt; &lt;a class=&quot;detail-specific-more active&quot;&gt; &lt;i class=&quot;icons blue-arrow-down-icon&quot;&gt;&lt;/i&gt;&lt;/a&gt; &nbsp;&lt;/div&gt;</p>\r\n', '', 1, 'et', 1, '2017-06-23 09:48:17', '2017-06-23 09:48:17'),
(6, 'Sa ', 'sa-ly9qp.png', 111, '111', '111', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:180px\">Hỗ trợ 4G:</td>\r\n			<td>LTE Cat.16</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:180px\">Thiết kế:</td>\r\n			<td>Nguy&ecirc;n khối</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:180px\">Chất liệu:</td>\r\n			<td>Khung kim loại, mặt k&iacute;nh cường lực</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:180px\">M&agrave;n h&igrave;nh:</td>\r\n			<td>6.2&rdquo; QHD Super AMOLED, 2K (1440 x 2960 Pixels)</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:180px\">CPU:</td>\r\n			<td>Exynos 8895 8 nh&acirc;n 64-bit</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:180px\">RAM:</td>\r\n			<td>4GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:180px\">Camera ch&iacute;nh:</td>\r\n			<td>C&ocirc;ng nghệ Dual Pixel 12MP (F1.7),</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:180px\">Camera phụ:</td>\r\n			<td>8MP AF (F1.7)</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:180px\">Bộ nhớ trong:</td>\r\n			<td>64GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:180px\">Thẻ nhớ:</td>\r\n			<td>MicroSD, 256GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:180px\">Hỗ trợ đa sim:</td>\r\n			<td>Hỗ trợ 2 SIM (hoặc 1 SIM &amp; 1 thẻ nhớ)</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:180px\">Hỗ trợ 3G:</td>\r\n			<td>C&oacute;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:180px\">Wifi:</td>\r\n			<td>WiFi 802.11 a/b/g/n/ac 2.4G+5GHz, VHT80 MU-MIMO</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:180px\">Danh bạ:</td>\r\n			<td>Kh&ocirc;ng giới hạn</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:180px\">Quay phim:</td>\r\n			<td>Quay phim 4K 2160p@60fps</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:180px\">K&iacute;ch cỡ:</td>\r\n			<td>159.5 x 73.4 x 8.1mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:180px\">Trọng lượng:</td>\r\n			<td>173g</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:180px\">Pin:</td>\r\n			<td>Li-Ion, 3500mAh</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:180px\">T&iacute;nh năng đặc biệt:</td>\r\n			<td>Qu&eacute;t mống mắt, qu&eacute;t v&acirc;n tay, nhận diện khu&ocirc;n mặt</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 1, 'sa', 1, '2017-06-23 09:52:35', '2017-06-23 09:52:35');
INSERT INTO `sanpham` (`id`, `tensanpham`, `anhdaidien`, `soluong`, `gia`, `khuyenmai`, `cauhinh`, `mota`, `idnhasanxuat`, `slug`, `trangthai`, `createdAt`, `updatedAt`) VALUES
(7, 'Samsung Galaxy S8 Plus', 'samsung-galaxy-s8-plus-wu7bn.png', 111, '20490000', '0', '<div class=\"digital row\">\r\n<h4>Th&ocirc;ng số kỹ thuật</h4>\r\n\r\n<table cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:180px\">Hỗ trợ 4G:</td>\r\n			<td>LTE Cat.16</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:180px\">Thiết kế:</td>\r\n			<td>Nguy&ecirc;n khối</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:180px\">Chất liệu:</td>\r\n			<td>Khung kim loại, mặt k&iacute;nh cường lực</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:180px\">M&agrave;n h&igrave;nh:</td>\r\n			<td>6.2&rdquo; QHD Super AMOLED, 2K (1440 x 2960 Pixels)</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:180px\">CPU:</td>\r\n			<td>Exynos 8895 8 nh&acirc;n 64-bit</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:180px\">RAM:</td>\r\n			<td>4GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:180px\">Camera ch&iacute;nh:</td>\r\n			<td>C&ocirc;ng nghệ Dual Pixel 12MP (F1.7),</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:180px\">Camera phụ:</td>\r\n			<td>8MP AF (F1.7)</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:180px\">Bộ nhớ trong:</td>\r\n			<td>64GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:180px\">Thẻ nhớ:</td>\r\n			<td>MicroSD, 256GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:180px\">Hỗ trợ đa sim:</td>\r\n			<td>Hỗ trợ 2 SIM (hoặc 1 SIM &amp; 1 thẻ nhớ)</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:180px\">Hỗ trợ 3G:</td>\r\n			<td>C&oacute;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:180px\">Wifi:</td>\r\n			<td>WiFi 802.11 a/b/g/n/ac 2.4G+5GHz, VHT80 MU-MIMO</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:180px\">Danh bạ:</td>\r\n			<td>Kh&ocirc;ng giới hạn</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:180px\">Quay phim:</td>\r\n			<td>Quay phim 4K 2160p@60fps</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:180px\">K&iacute;ch cỡ:</td>\r\n			<td>159.5 x 73.4 x 8.1mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:180px\">Trọng lượng:</td>\r\n			<td>173g</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:180px\">Pin:</td>\r\n			<td>Li-Ion, 3500mAh</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:180px\">T&iacute;nh năng đặc biệt:</td>\r\n			<td>Qu&eacute;t mống mắt, qu&eacute;t v&acirc;n tay, nhận diện khu&ocirc;n mặt</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<div>\r\n<div class=\"detail\" id=\"navcau-hinh\" style=\"border-radius:5px; border:1px solid #f83015; color:#f83015; cursor:pointer; font-size:12px; margin-bottom:10px; padding:7px 10px 5px; width:140px\">Ẩn cấu h&igrave;nh chi tiết</div>\r\n<input type=\"hidden\" value=\"1\" />\r\n<div id=\"panel-cau-hinh\" style=\"display:block\">\r\n<table cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<div style=\"background-color:#f2f2f2; height:40px; line-height:40px; margin-bottom:-1px; margin-left:-20px; margin-right:-20px; margin-top:-1px; padding-left:20px\"><strong>M&agrave;n h&igrave;nh</strong></div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại màn hình</td>\r\n			<td>Super AMOLED</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đ&ocirc;̣ ph&acirc;n giải</td>\r\n			<td>2K (1440 x 2960 Pixels)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kích thước m&agrave;n h&igrave;nh</td>\r\n			<td>6.2&quot;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>C&ocirc;ng ngh&ecirc;̣ cảm ứng</td>\r\n			<td>Cảm ứng điện dung đa điểm</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<div style=\"background-color:#f2f2f2; height:40px; line-height:40px; margin-bottom:-1px; margin-left:-20px; margin-right:-20px; margin-top:-1px; padding-left:20px\"><strong>CPU &amp; RAM</strong></div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chipset</td>\r\n			<td>Exynos 8895</td>\r\n		</tr>\r\n		<tr>\r\n			<td>S&ocirc;́ nh&acirc;n CPU</td>\r\n			<td>L&otilde;i T&aacute;m (l&otilde;i Tứ 2.3GHz + l&otilde;i Tứ 1.7GHz), 64 bit, vi xử l&yacute; 10nm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>RAM</td>\r\n			<td>4GB LPDDR4</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<div style=\"background-color:#f2f2f2; height:40px; line-height:40px; margin-bottom:-1px; margin-left:-20px; margin-right:-20px; margin-top:-1px; padding-left:20px\"><strong>Hệ điều h&agrave;nh</strong></div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Hệ điều h&agrave;nh</td>\r\n			<td>Android 7.0</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<div style=\"background-color:#f2f2f2; height:40px; line-height:40px; margin-bottom:-1px; margin-left:-20px; margin-right:-20px; margin-top:-1px; padding-left:20px\"><strong>Camera</strong></div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera ch&iacute;nh</td>\r\n			<td>C&ocirc;ng nghệ Dual Pixel 12MP (F1.7)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera phụ</td>\r\n			<td>8MP AF (F1.7)</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<div style=\"background-color:#f2f2f2; height:40px; line-height:40px; margin-bottom:-1px; margin-left:-20px; margin-right:-20px; margin-top:-1px; padding-left:20px\"><strong>Bộ nhớ, Lưu trữ</strong></div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Danh bạ</td>\r\n			<td>Kh&ocirc;ng giới hạn</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bộ nhớ trong</td>\r\n			<td>64GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Thẻ nhớ ngo&agrave;i</td>\r\n			<td>MicroSD</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Hỗ trợ thẻ nhớ tối đa</td>\r\n			<td>256GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<div style=\"background-color:#f2f2f2; height:40px; line-height:40px; margin-bottom:-1px; margin-left:-20px; margin-right:-20px; margin-top:-1px; padding-left:20px\"><strong>SIM</strong></div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại Sim</td>\r\n			<td>Nano Sim</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Số khe cắm sim</td>\r\n			<td>Hỗ trợ 2 SIM (hoặc 1 SIM &amp; 1 thẻ nhớ)</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<div style=\"background-color:#f2f2f2; height:40px; line-height:40px; margin-bottom:-1px; margin-left:-20px; margin-right:-20px; margin-top:-1px; padding-left:20px\"><strong>Kết nối</strong></div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3G</td>\r\n			<td>C&oacute;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4G</td>\r\n			<td>LTE Cat.16</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Wifi</td>\r\n			<td>WiFi 802.11 a/b/g/n/ac 2.4G+5GHz, VHT80 MU-MIMO</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GPS</td>\r\n			<td>A-GPS, GLONASS</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bluetooth</td>\r\n			<td>v5.0, apt-X, A2DP, LE, EDR</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&ecirc;́t n&ocirc;́i USB</td>\r\n			<td>USB Type C, Smart Switch + thiết bị chuyển đổi dữ liệu di động (OTG) k&egrave;m m&aacute;y</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<div style=\"background-color:#f2f2f2; height:40px; line-height:40px; margin-bottom:-1px; margin-left:-20px; margin-right:-20px; margin-top:-1px; padding-left:20px\"><strong>Giải tr&iacute; &amp; Ứng dụng</strong></div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Xem phim</td>\r\n			<td>H.265, 3GP, MP4, AVI, WMV</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Nghe nhạc</td>\r\n			<td>Lossless, Midi, MP3, WAV, WMA</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Ghi &acirc;m</td>\r\n			<td>C&oacute;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<div style=\"background-color:#f2f2f2; height:40px; line-height:40px; margin-bottom:-1px; margin-left:-20px; margin-right:-20px; margin-top:-1px; padding-left:20px\"><strong>Kích thước</strong></div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kích thước</td>\r\n			<td>159.5 x 73.4 x 8.1mm,</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<div style=\"background-color:#f2f2f2; height:40px; line-height:40px; margin-bottom:-1px; margin-left:-20px; margin-right:-20px; margin-top:-1px; padding-left:20px\"><strong>Trọng lượng</strong></div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Trọng lượng</td>\r\n			<td>173g</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<div style=\"background-color:#f2f2f2; height:40px; line-height:40px; margin-bottom:-1px; margin-left:-20px; margin-right:-20px; margin-top:-1px; padding-left:20px\"><strong>PIN</strong></div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Dung lượng Pin</td>\r\n			<td>3500mAh</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại pin</td>\r\n			<td>Li-Ion</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n</div>\r\n', '<div id=\"owl-feature\">\r\n<p style=\"text-align:center\"><span style=\"font-family:Arial\"><strong><span style=\"font-size:14px\">Galaxy S8 Plus &ndash; tuyệt phẩm c&ocirc;ng nghệ vượt ngo&agrave;i sức tưởng tưởng</span></strong></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Arial; font-size:14px\"><strong>Galaxy S8 Plus - mẫu phablet m&agrave;n h&igrave;nh v&ocirc; cực đ&atilde; ch&iacute;nh thức được tr&igrave;nh l&agrave;ng h&agrave;ng loạt đột ph&aacute; đỉnh cao. M&aacute;y t&iacute;ch hợp nhiều t&iacute;nh năng v&agrave; c&ocirc;ng nghệ ti&ecirc;n tiến bậc nhất, vượt qua giới hạn m&agrave; mọi người từng biết tới. C&ugrave;ng kh&aacute;m ph&aacute; nh&eacute;!</strong></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-family:Arial; font-size:14px\"><iframe frameborder=\"0\" height=\"338\" src=\"https://www.youtube.com/embed/D8Ert5yjMV4\" width=\"600\"></iframe></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-family:Arial; font-size:14px\"><em><span style=\"font-size:14px\">Clip giới thiệu những t&iacute;nh năng cực đỉnh của si&ecirc;u phẩm Galaxy S8 Plus</span></em></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Arial; font-size:14px\"><strong>&nbsp;</strong></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Arial; font-size:14px\"><strong>Tuyệt t&aacute;c thiết kế ở th&igrave; tương lai</strong></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Arial; font-size:14px\"><a href=\"/samsung-mid3.html?categoryId=010001\"><u><strong>Samsung</strong></u></a> đ&atilde; mạnh dạn đem c&ocirc;ng nghệ m&agrave;n h&igrave;nh v&ocirc; cực (Infinity Display) với k&iacute;ch thước 6,2 inch l&ecirc;n Galaxy S8 Plus. M&agrave;n h&igrave;nh của m&aacute;y được thiết kế với đường viền cực mỏng, kh&ocirc;ng n&uacute;t bấm vật l&yacute; hoặc chi tiết gồ ghề, tạo n&ecirc;n một m&agrave;n h&igrave;nh liền mạch, trơn l&aacute;ng, h&uacute;t mắt người d&ugrave;ng.</span></p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"font-family:Arial; font-size:14px\">Bạn c&oacute; biết: <a href=\"https://viettelstore.vn/tin-tuc/day-la-ly-do-vi-sao-ban-nen-chon-viettel-store-de-mua-galaxy-s8-nid9024.html\" rel=\"nofollow\"><u><strong>Mua Galaxy S8 Plus tại Viettel Store nhận được ưu đ&atilde;i đặc biệt</strong></u></a></span></li>\r\n</ul>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-family:Arial; font-size:14px\"><em><img alt=\"\" src=\"https://cdn.viettelstore.vn/Images/Product/ProductImage/%C4%90i%E1%BB%87n%20tho%E1%BA%A1i/Samsung/Galaxy%20S8%20Plus/samsung-galaxy-s8-plus-1.png\" style=\"display:inline\" /></em> </span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-family:Arial; font-size:14px\"><em>C&ocirc;ng nghệ m&agrave;n h&igrave;nh v&ocirc; cực Infinity mở ra khả năng trải nghiệm v&ocirc; hạn của hệ sinh th&aacute;i Galaxy.</em></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Arial; font-size:14px\">Với <strong>Galaxy S8 Plus</strong>, Samsung tiếp tục sử dụng tấm nền Super AMOLED với độ ph&acirc;n giải 2960x1440. Đ&aacute;ng ch&uacute; &yacute;, tỉ lệ m&agrave;n h&igrave;nh của bộ đ&ocirc;i n&agrave;y l&agrave; 18,5:9 - Đ&acirc;y l&agrave; tỉ lệ được dự b&aacute;o l&agrave; xu hướng trong năm 2017. Kh&ocirc;ng chỉ vậy, Samsung c&ograve;n cho biết, Galaxy S8 Plus c&ograve;n được chứng nhận chuẩn Mobile HDR PremiumTM bởi tổ chức UHD Alliance. Nhờ vậy, Galaxy S8 Plus cho ph&eacute;p người d&ugrave;ng tận hưởng c&aacute;c h&igrave;nh ảnh c&oacute; m&agrave;u sắc rực rỡ v&agrave; độ tương phản cao.</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-family:Arial; font-size:14px\">&nbsp;<img alt=\"\" src=\"https://cdn.viettelstore.vn/Images/Product/ProductImage/%C4%90i%E1%BB%87n%20tho%E1%BA%A1i/Samsung/Galaxy%20S8%20Plus/samsung-galaxy-s8-plus-2.png\" style=\"display:inline\" />&nbsp;</span></p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-family:Arial; font-size:14px\"><em>Chuẩn kh&aacute;ng bụi, kh&aacute;ng nước IP68 gi&uacute;p bảo vệ Galaxy S8 Plus trong mọi m&ocirc;i trường khắc nghiệt</em></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Arial; font-size:14px\">Đặc biệt, để c&oacute; được một thiết kế vừa vặn với một m&agrave;n h&igrave;nh cực lớn, Samsung đ&atilde; loại bỏ hệ thống ph&iacute;m cứng v&agrave; ph&iacute;m cảm ứng b&ecirc;n dưới m&agrave;n h&igrave;nh, thay thế bằng c&aacute;c n&uacute;t v&agrave; cảm ứng lực ngay tr&ecirc;n panel cảm ứng. &nbsp;D&ugrave; vậy, trải nghiệm sử dụng tr&ecirc;n Galaxy S8 hứa hẹn vẫn thoải m&aacute;i, tạo ra cảm gi&aacute;c sử dụng như ph&iacute;m vật l&yacute; d&ugrave; nằm trong m&agrave;n h&igrave;nh v&agrave; c&oacute; thể hoạt động khi m&agrave;n h&igrave;nh tắt.</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-family:Arial; font-size:14px\"><img alt=\"\" src=\"https://cdn.viettelstore.vn/Images/Product/ProductImage/%C4%90i%E1%BB%87n%20tho%E1%BA%A1i/Samsung/Galaxy%20S8%20Plus/samsung-galaxy-s8-plus-3.png\" style=\"display:inline\" /></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-family:Arial; font-size:14px\"><em>Tuyệt t&aacute;c thiết kế <strong>Galaxy S8 Plus</strong></em></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Arial; font-size:14px\">Vẫn giữ phong c&aacute;ch thiết kế b&oacute;ng bẩy với chất liệu kim loại v&agrave; k&iacute;nh, nhưng thế hệ mới c&oacute; tới 5 lựa chọn m&agrave;u sắc kh&aacute;c nhau. Ngo&agrave;i ra, tương tự như đ&agrave;n anh Galaxy S7/S7 Edge, Galaxy S8 Plus cũng hỗ trợ chuẩn kh&aacute;ng bụi, kh&aacute;ng nước IP68 cao nhất với khả năng &ldquo;lặn&rdquo; dưới độ s&acirc;u 1,5m trong thời gian tối đa 30 ph&uacute;t.</span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Arial; font-size:14px\"><strong>Cấu h&igrave;nh cực đỉnh với bộ đ&ocirc;i chipset Snapdragon 835 v&agrave; Exynos 8895</strong></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Arial; font-size:14px\">Galaxy S8 Plus l&agrave; một trong hai chiếc <a href=\"/danh-muc/dien-thoai-010001.html\"><u><strong>smartphone</strong></u></a> đầu ti&ecirc;n hỗ trợ LTE tốc độ 1Gbs nhờ hai chipset Snapdragon 835 v&agrave; Exynos 8895, đảm bảo một hiệu suất hoạt động ấn tượng. M&aacute;y sẽ c&oacute; 4GB RAM ở hầu hết c&aacute;c quốc gia tr&ecirc;n thế giới đi k&egrave;m bộ nhớ trong 64GB. </span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-family:Arial; font-size:14px\"><img alt=\"\" src=\"https://cdn.viettelstore.vn/Images/Product/ProductImage/%C4%90i%E1%BB%87n%20tho%E1%BA%A1i/Samsung/Galaxy%20S8%20Plus/samsung-galaxy-s8-plus-4.png\" style=\"display:inline\" /></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-family:Arial; font-size:14px\"><em>Hiệu năng CPU tăng 10%, trong khi GPU l&agrave; 21%</em></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Arial; font-size:14px\">Galaxy S8 Plus sở hữu vi&ecirc;n pin 3.500mAh c&ugrave;ng chuẩn kiểm tra pin 8 bước an to&agrave;n tuyệt đối của Samsung. C&ocirc;ng ty cho biết chiếc điện thoại sẽ được kiểm tra nhiều lần, bao gồm bằng X-quang v&agrave; c&aacute;c b&agrave;i kiểm tra căng thẳng ở nhiệt độ khắc nghiệt. Ngo&agrave;i ra, Galaxy S8 Plus c&ograve;n có tính năng sạc nhanh Adaptive Fast Charging. Hỗ trợ sạc kh&ocirc;ng d&acirc;y, cả chu&acirc;̉n WPC l&acirc;̃n PMA. Samsung cho biết những cải tiến về phần mềm v&agrave; chip sẽ cho ph&eacute;p pin của điện thoại mới c&oacute; thể l&agrave;m việc suốt cả ng&agrave;y.</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-family:Arial; font-size:14px\"><img alt=\"\" src=\"https://cdn.viettelstore.vn/Images/Product/ProductImage/%C4%90i%E1%BB%87n%20tho%E1%BA%A1i/Samsung/Galaxy%20S8%20Plus/samsung-galaxy-s8-plus-5.png\" style=\"display:inline\" /></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-family:Arial; font-size:14px\"><em>Galaxy S8 Plus c&ugrave;ng Galaxy S8 l&agrave; hai chiếc smartphone đầu ti&ecirc;n hỗ trợ LTE tốc độ 1Gbs</em></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Arial; font-size:14px\">Galaxy S8 Plus sử dụng chuẩn kết nối USB Typce-C với tố độ USB 3.1 v&agrave; hỗ trợ DisplayPort. Đặc biệt, Samsung cũng tr&igrave;nh l&agrave;ng Samsung Dex, chiếc dock biến S8 trở th&agrave;nh một m&aacute;y t&iacute;nh để b&agrave;n thực thụ.</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-family:Arial; font-size:14px\">&nbsp;<img alt=\"\" src=\"https://cdn.viettelstore.vn/Images/Product/ProductImage/%C4%90i%E1%BB%87n%20tho%E1%BA%A1i/Samsung/Galaxy%20S8%20Plus/samsung-galaxy-s8-plus-6.png\" style=\"display:inline\" /></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-family:Arial; font-size:14px\"><em>Galaxy S8 c&oacute; khả năng biến h&igrave;nh th&agrave;nh một chiếc m&aacute;y t&iacute;nh để b&agrave;n thực thụ nhờ phụ kiện Samsung Dex</em></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Arial; font-size:14px\"><em>&nbsp;</em></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Arial; font-size:14px\"><strong>Bảo mật đỉnh cao với 5 phương thức ti&ecirc;n tiến nhất</strong></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Arial; font-size:14px\">Về khả năng bảo mật, Galaxy S8 Plus được trang bị đầy đủ 5 t&ugrave;y chọn bảo mật đỉnh cao nhất hiện nay, bao gồm mống mắt, v&acirc;n tay, nhận diện khu&ocirc;n mặt, mật khẩu v&agrave; mẫu h&igrave;nh.</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-family:Arial; font-size:14px\"><img alt=\"\" src=\"https://cdn.viettelstore.vn/Images/Product/ProductImage/%C4%90i%E1%BB%87n%20tho%E1%BA%A1i/Samsung/Galaxy%20S8%20Plus/samsung-galaxy-s8-plus-7.png\" style=\"display:inline\" /></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-family:Arial; font-size:14px\"><em>Khả năng bảo mật ho&agrave;n hảo với 5 phương thức bảo mật ti&ecirc;n tiến nhất</em></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Arial; font-size:14px\"><strong>&nbsp;</strong></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Arial; font-size:14px\"><strong>Camera cải tiến với phần mềm th&ocirc;ng minh hơn, chụp ảnh xuất sắc hơn</strong></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Arial; font-size:14px\">Galaxy S8 Plus được trang bị cảm biến tương tự như đ&agrave;n anh Galaxy S7/ S7 Edge với độ ph&acirc;n giải 12MP, khẩu độ lớn f/1.7, c&ocirc;ng nghệ Dual Pixel trứ danh nhưng được cải tiến kh&aacute; nhiều phần mềm, chụp nhiều lần để n&acirc;ng cao chất lượng h&igrave;nh ảnh (tương tự như t&iacute;nh năng Google HDR+).&nbsp;<span style=\"font-family:Arial; font-size:14px\">Trong khi đ&oacute;, Camera selfie được n&acirc;ng cấp l&ecirc;n mức 8MP, khẩu độ f/1.7 đi k&egrave;m t&iacute;nh năng tự động lấy n&eacute;t v&agrave; nhận diện khu&ocirc;n mặt th&ocirc;ng minh hơn.</span></span></p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"font-family:Arial; font-size:14px\">Xem ngay: <a href=\"/tin-tuc/day-la-ly-do-vi-sao-ban-nen-chon-viettel-store-de-mua-galaxy-s8-nid9024.html\" rel=\"nofollow\"><u><strong>Đ&acirc;y l&agrave; l&yacute; do bạn n&ecirc;n mua Galaxy S8 Plus tại Viettel Store - Đừng bỏ lỡ</strong></u></a></span></li>\r\n</ul>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-family:Arial; font-size:14px\"><em><img alt=\"\" src=\"https://cdn.viettelstore.vn/Images/Product/ProductImage/%C4%90i%E1%BB%87n%20tho%E1%BA%A1i/Samsung/Galaxy%20S8%20Plus/samsung-galaxy-s8-plus-8.png\" style=\"display:inline\" /></em></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-family:Arial; font-size:14px\"><em>Camera ch&iacute;nh c&oacute; phần cứng tương tự S7 nhưng được cải tiến về phần mềm để chụp ảnh đẹp hơn</em></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Arial; font-size:14px\"><strong>Trợ l&yacute; ảo th&ocirc;ng minh Bixby &ndash; vũ kh&iacute; chiến lược của Samsung</strong></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Arial; font-size:14px\">Tr&ecirc;n th&acirc;n m&aacute;y của <a href=\"/dien-thoai/samsung-galaxy-s8-pid111779.html\"><u><strong>Galaxy S8</strong></u></a> v&agrave; S8 Plus, Samsung đ&atilde; bổ sung th&ecirc;m một n&uacute;t cứng để khởi động Bixby, trợ l&yacute; kỹ thuật số mới nhất của h&atilde;ng. Bixby c&oacute; ba nhiệm vụ ch&iacute;nh v&agrave; một trong số đ&oacute; l&agrave; trả lời c&aacute;c c&acirc;u hỏi thoại. Bixby c&oacute; thể nhận diện thế giới xung quanh, lắng nghe &acirc;m thanh v&agrave; t&igrave;m kiếm c&aacute;c sản phẩm tr&ecirc;n Amazon. Giao diện ch&iacute;nh của Bixby kh&aacute; giống với Google Now, đồng thời hỗ trợ n&ecirc;n tảng IoT của Samsung.</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-family:Arial; font-size:14px\">&nbsp;<img alt=\"\" src=\"https://cdn.viettelstore.vn/Images/Product/ProductImage/%C4%90i%E1%BB%87n%20tho%E1%BA%A1i/Samsung/Galaxy%20S8%20Plus/samsung-galaxy-s8-plus-9.png\" style=\"display:inline\" /></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-family:Arial; font-size:14px\"><em>Trợ l&yacute; ảo Bixby với những t&iacute;nh năng cực th&ocirc;ng minh</em></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Arial; font-size:14px\">Bixby sẽ l&agrave; t&acirc;m điểm vận h&agrave;nh hệ sinh th&aacute;i IoT của Samsung. C&ocirc;ng ty n&agrave;y kỳ vọng đến năm 2020, hầu hết sản phẩm th&ocirc;ng minh của họ sẽ kết nối v&agrave; vận h&agrave;nh dưới sự điều khiển của Bixby.</span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Arial; font-size:14px\"><strong>M&agrave;u sắc v&agrave; chương tr&igrave;nh ưu đ&atilde;i hấp dẫn tại Viettel Store</strong></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-family:Arial; font-size:14px\"><em>&nbsp;<img alt=\"\" src=\"https://cdn.viettelstore.vn/Images/Product/ProductImage/%C4%90i%E1%BB%87n%20tho%E1%BA%A1i/Samsung/Galaxy%20S8%20Plus/samsung-galaxy-s8-plus-10.png\" style=\"display:inline\" /></em></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-family:Arial; font-size:14px\"><em><strong>Samsung Galaxy S8 Plus</strong> l&ecirc;n kệ với 5 m&agrave;u sắc đen, x&aacute;m, bạc, xanh v&agrave; v&agrave;ng</em></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-family:Arial; font-size:14px\"><img alt=\"\" src=\"https://cdn.viettelstore.vn/Images/Product/ProductImage/%C4%90i%E1%BB%87n%20tho%E1%BA%A1i/Samsung/Galaxy%20S8%20Plus/samsung-galaxy-s8-plus-11.png\" style=\"display:inline\" /></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-family:Arial; font-size:14px\"><em>Chương tr&igrave;nh ưu đ&atilde;i đặc biệt d&agrave;nh cho sản phẩm Galaxy S8 v&agrave; S8 Plus tại Viettel Store</em></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Arial; font-size:14px\">Với h&agrave;ng loạt những trang bị si&ecirc;u hấp dẫn kể tr&ecirc;n, chắc chắn Galaxy S8 Plus sẽ trở th&agrave;nh chiếc phablet n&oacute;ng nhất trong thời gian tới. <span style=\"font-size:14px\">Ngo&agrave;i ra, Viettel Store lu&ocirc;n c&oacute; chế độ tốt nhất d&agrave;nh cho Kh&aacute;ch h&agrave;ng khi mua Galaxy S8 / S8+, cụ thể:</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Arial; font-size:14px\">Trong thời gian từ <strong>05/05 đến 31/05/2017</strong>, khi mua sản phẩm Galaxy S8 v&agrave; Galaxy S8 Plus tại Viettel Store, kh&aacute;ch h&agrave;ng sẽ được lựa chọn 1 trong 3 ưu đ&atilde;i &ldquo;khủng&rdquo; :</span></p>\r\n\r\n<div><em>Ưu đ&atilde;i 1: Trả g&oacute;p l&atilde;i suất 0%.&nbsp;</em></div>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Arial; font-size:14px\">Với phương ch&acirc;m mang tới nhiều cơ hội sở hữu sản phẩm Samsung Galaxy S8/S8+ d&agrave;nh cho tất cả những kh&aacute;ch h&agrave;ng chưa rủng rỉnh về hầu bao, Viettel Store mang đến ưu đ&atilde;i trả g&oacute;p 0% tr&ecirc;n nhiều đối t&aacute;c FE Credit v&agrave; Home Credit để kh&aacute;ch h&agrave;ng chọn lựa. Đ&acirc;y l&agrave; ưu thế gi&uacute;p Viettel Store trở th&agrave;nh sự lựa chọn h&agrave;ng đầu của nhiều kh&aacute;ch h&agrave;ng</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Arial; font-size:14px\"><em>Ưu đ&atilde;i 2: Phiếu mua h&agrave;ng phụ kiện 500.000 đồng + 2 năm bảo h&agrave;nh.</em></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Arial; font-size:14px\">Đối với lựa chọn n&agrave;y, kh&aacute;ch h&agrave;ng sẽ c&oacute; th&ecirc;m 1 năm bảo h&agrave;nh với ch&iacute;nh s&aacute;ch thay mới, sửa chữa Galaxy S8/S8+ trong những trường hợp tai nạn bất ngờ m&agrave; kh&ocirc;ng phải mất bất kỳ một khoản chi ph&iacute; n&agrave;o kh&aacute;c.&nbsp;</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Arial; font-size:14px\"><em>Ưu đ&atilde;i 3: Phiếu mua h&agrave;ng phụ kiện 200.000 đồng + sim 4G Viettel với 1.000 ph&uacute;t gọi nội mạng v&agrave; 10 GB data 4G.</em></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Arial; font-size:14px\">Với g&oacute;i cước n&agrave;y, Qu&yacute; kh&aacute;ch c&oacute; thể thoải m&aacute;i tr&ograve; chuyện với 1000 ph&uacute;t thoại, trải nghiệm live stream, xem video, nghe nhạc trực tuyến&hellip;với mạng 4G si&ecirc;u tốc độ. Đặc biệt, Viettel Store miễn ph&iacute; cước th&aacute;ng đầu ti&ecirc;n, ph&iacute; duy tr&igrave; g&oacute;i cước 11 th&aacute;ng tiếp theo, Qu&yacute; kh&aacute;ch chỉ phải trả 300.000 đồng/th&aacute;ng.</span></p>\r\n\r\n<div style=\"background:#eef9ff; border:1px dashed #a3a3a3; padding:5px 10px 5px 20px\">\r\n<p>B&agrave;i viết li&ecirc;n quan:</p>\r\n\r\n<ul>\r\n	<li><a href=\"/tin-tuc/6-ung-dung-cho-thiet-bi-android-hay-nhat-trong-tuan-nid6072.html\"><u><strong>Top 6 ứng dụng cho Android phổ biến nhất</strong></u></a></li>\r\n	<li><a href=\"/dien-thoai/samsung-galaxy-j7-prime-pid108322.html\"><u><strong>Samsung Galaxy J7 Prime - Kẻ hủy diệt ph&acirc;n kh&uacute;c tầm trung</strong></u></a></li>\r\n</ul>\r\n</div>\r\n</div>\r\n', 1, 'samsung-galaxy-s8-plus', 1, '2017-06-23 09:57:32', '2017-06-23 09:57:32');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thietbi`
--

CREATE TABLE `thietbi` (
  `id` int(10) UNSIGNED NOT NULL,
  `tenthietbi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` longtext COLLATE utf8_unicode_ci,
  `trangthai` int(11) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tintuc`
--

CREATE TABLE `tintuc` (
  `id` int(10) UNSIGNED NOT NULL,
  `tieude` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `noidung` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `anhdaidien` longtext COLLATE utf8_unicode_ci,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `iddanhmuc` int(11) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tennguoidung` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `trangthai` int(11) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `hinhsanpham`
--
ALTER TABLE `hinhsanpham`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nhasanxuat`
--
ALTER TABLE `nhasanxuat`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `thietbi`
--
ALTER TABLE `thietbi`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT cho bảng `hinhsanpham`
--
ALTER TABLE `hinhsanpham`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `nhasanxuat`
--
ALTER TABLE `nhasanxuat`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT cho bảng `thietbi`
--
ALTER TABLE `thietbi`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
