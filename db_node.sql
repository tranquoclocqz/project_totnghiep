-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2017 at 04:09 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_node`
--

-- --------------------------------------------------------

--
-- Table structure for table `danhmuccha`
--

CREATE TABLE IF NOT EXISTS `danhmuccha` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tendanhmuccha` longtext COLLATE utf8_unicode_ci,
  `slug` longtext COLLATE utf8_unicode_ci,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=33 ;

--
-- Dumping data for table `danhmuccha`
--

INSERT INTO `danhmuccha` (`id`, `tendanhmuccha`, `slug`, `createdAt`, `updatedAt`) VALUES
(4, 'Case máy tính', 'case-may-tinh', '2017-05-21 22:09:31', '2017-05-21 22:09:31'),
(5, 'Case máy tính', 'case-may-tinh', '2017-05-21 22:10:35', '2017-05-21 22:10:35'),
(6, 'RAM', 'ram', '2017-05-21 22:12:09', '2017-05-21 22:12:09'),
(7, 'RAM', 'ram', '2017-05-21 22:12:19', '2017-05-21 22:12:19'),
(8, 'RAM', 'ram', '2017-05-21 22:12:20', '2017-05-21 22:12:20'),
(9, 'RAM', 'ram', '2017-05-21 22:13:37', '2017-05-21 22:13:37'),
(10, 'Chuột máy tính', 'chuot-may-tinh', '2017-05-21 22:14:44', '2017-05-21 22:14:44'),
(11, 'pad', 'pad', '2017-05-21 22:19:33', '2017-05-21 22:19:33'),
(12, 'mousepad', 'mousepad', '2017-05-21 22:20:31', '2017-05-21 22:20:31'),
(13, 'headphone', 'headphone', '2017-05-21 22:25:30', '2017-05-21 22:25:30'),
(14, 'headphone2', 'headphone2', '2017-05-21 22:26:57', '2017-05-21 22:26:57'),
(15, 'headphone3', 'headphone3', '2017-05-21 22:29:35', '2017-05-21 22:29:35'),
(16, 'headphone4', 'headphone4', '2017-05-21 22:30:33', '2017-05-21 22:30:33'),
(17, 'headphone5', 'headphone5', '2017-05-21 22:34:12', '2017-05-21 22:34:12'),
(18, 'headphone56', 'headphone56', '2017-05-21 22:34:50', '2017-05-21 22:34:50'),
(19, 'headphone7', 'headphone7', '2017-05-21 22:36:21', '2017-05-21 22:36:21'),
(20, 'headphone9', 'headphone9', '2017-05-21 22:37:47', '2017-05-21 22:37:47'),
(21, 'RAM1', 'ram1', '2017-05-21 22:41:38', '2017-05-21 22:41:38'),
(22, 'Chuột máy tính1', 'chuot-may-tinh1', '2017-05-21 22:42:31', '2017-05-21 22:42:31'),
(23, 'Case máy tính12', 'case-may-tinh12', '2017-05-22 14:40:37', '2017-05-22 14:40:37'),
(24, 'Case máy tính13', 'case-may-tinh13', '2017-05-22 14:41:10', '2017-05-22 14:41:10'),
(25, 'Case máy tính14', 'case-may-tinh14', '2017-05-22 14:43:08', '2017-05-22 14:43:08'),
(26, 'Case máy tính15', 'case-may-tinh15', '2017-05-22 14:43:54', '2017-05-22 14:43:54'),
(27, 'RAM1 23', 'ram1-23', '2017-05-22 14:45:11', '2017-05-22 14:45:11'),
(28, 'Case máy tính123', 'case-may-tinh123', '2017-05-22 14:45:29', '2017-05-22 14:45:29'),
(29, 'RAM', 'ram', '2017-05-22 14:45:56', '2017-05-22 14:45:56'),
(30, 'Chuột máy tính123', 'chuot-may-tinh123', '2017-05-22 14:46:04', '2017-05-22 14:46:04'),
(31, '1233534', '1233534', '2017-05-22 14:46:22', '2017-05-22 14:46:22'),
(32, 'RAM35', 'ram35', '2017-05-22 14:46:54', '2017-05-22 14:46:54');

-- --------------------------------------------------------

--
-- Table structure for table `danhmuccon`
--

CREATE TABLE IF NOT EXISTS `danhmuccon` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `iddanhmuccha` int(11) DEFAULT NULL,
  `tendanhmuccon` longtext COLLATE utf8_unicode_ci,
  `slug` longtext COLLATE utf8_unicode_ci,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `danhmuccon`
--

INSERT INTO `danhmuccon` (`id`, `iddanhmuccha`, `tendanhmuccon`, `slug`, `createdAt`, `updatedAt`) VALUES
(1, 1, 'co1', 'co1', '2017-05-19 00:00:00', '2017-05-19 00:00:00'),
(2, 2, 'co2', 'co2', '2017-05-19 00:00:00', '2017-05-19 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `hinhsanpham`
--

CREATE TABLE IF NOT EXISTS `hinhsanpham` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `url` longtext COLLATE utf8_unicode_ci,
  `idsanpham` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `hoadon`
--

CREATE TABLE IF NOT EXISTS `hoadon` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE IF NOT EXISTS `khachhang` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE IF NOT EXISTS `sanpham` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tensanpham` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `anhdaidien` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `soluong` int(11) DEFAULT NULL,
  `gia` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `khuyenmai` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cauhinh` longtext COLLATE utf8_unicode_ci,
  `iddanhmuccon` int(11) DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`id`, `tensanpham`, `anhdaidien`, `soluong`, `gia`, `khuyenmai`, `cauhinh`, `iddanhmuccon`, `slug`, `createdAt`, `updatedAt`) VALUES
(1, 'sa1', 'sa1', 1, '1', '1', 'sa1', 1, 'sa1', '2017-05-19 00:00:00', '2017-05-19 00:00:00'),
(2, 'sa2', 'sa2', 2, '2', '2', 'sa2', 2, 'sa2', '2017-05-19 00:00:00', '2017-05-19 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tintuc`
--

CREATE TABLE IF NOT EXISTS `tintuc` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tieude` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `noidung` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `anhdaidien` longtext COLLATE utf8_unicode_ci,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `iddanhmuc` int(11) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `tennguoidung` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
