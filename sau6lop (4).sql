-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2016 at 05:29 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sau6lop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `name`) VALUES
(1, 'admin', '96e79218965eb72c92a549dd5a330112', 'Phú Cường');

-- --------------------------------------------------------

--
-- Table structure for table `chinhanh`
--

CREATE TABLE `chinhanh` (
  `id` int(11) NOT NULL,
  `username` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CMND` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngay_thang_nam_sinh` date NOT NULL,
  `dia_chi_HKTT` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dia_chi_giao_hang` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sdt` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chinhanh`
--

INSERT INTO `chinhanh` (`id`, `username`, `password`, `name`, `CMND`, `ngay_thang_nam_sinh`, `dia_chi_HKTT`, `dia_chi_giao_hang`, `sdt`, `sub_id`) VALUES
(1, 'chinhanh1', '11111111', 'Chi nhánh 1', '11111111', '1984-09-09', '11111111111111', '111111111111111', '111111111', 1);

-- --------------------------------------------------------

--
-- Table structure for table `daily`
--

CREATE TABLE `daily` (
  `id` int(11) NOT NULL,
  `username` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CMND` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngay_thang_nam_sinh` date NOT NULL,
  `dia_chi_HKTT` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dia_chi_giao_hang` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sdt` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `daily`
--

INSERT INTO `daily` (`id`, `username`, `password`, `name`, `CMND`, `ngay_thang_nam_sinh`, `dia_chi_HKTT`, `dia_chi_giao_hang`, `sdt`, `sub_id`) VALUES
(1, 'daily1', '111111', 'Đại lý 1', '1111111111', '1984-09-09', '11111111111111', '111111111111111111', '11111111111111', 1);

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

CREATE TABLE `donhang` (
  `id` int(22) NOT NULL,
  `table_seller` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seller_id` int(11) NOT NULL,
  `table_buyer` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `buyer_id` int(11) NOT NULL,
  `sub_id` int(11) NOT NULL,
  `ngay_giao_dich` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `donhang`
--

INSERT INTO `donhang` (`id`, `table_seller`, `seller_id`, `table_buyer`, `buyer_id`, `sub_id`, `ngay_giao_dich`) VALUES
(3, 'admin', 1, 'tongdaily', 1, 0, '2016-11-15'),
(4, 'admin', 1, 'daily', 1, 0, '2016-11-15'),
(5, 'admin', 1, 'chinhanh', 1, 0, '2016-11-15');

-- --------------------------------------------------------

--
-- Table structure for table `donhang_dong`
--

CREATE TABLE `donhang_dong` (
  `id` int(22) NOT NULL,
  `donhang_id` int(22) NOT NULL,
  `tensanpham` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `soluong` int(11) NOT NULL,
  `giadonvi` decimal(15,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `donhang_dong`
--

INSERT INTO `donhang_dong` (`id`, `donhang_id`, `tensanpham`, `soluong`, `giadonvi`) VALUES
(1, 3, 'kem mặt-1', 8, '9000'),
(2, 3, 'phấn thoa mặt-2', 8, '9000'),
(3, 4, 'kem mặt-1', 9, '8000'),
(4, 4, 'phấn thoa mặt-2', 8, '9000'),
(5, 5, 'kem mặt-1', 8, '9000'),
(6, 5, 'phấn thoa mặt-2', 9, '7000');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `created`) VALUES
(1, 'kem mặt', 1478685880),
(2, 'phấn thoa mặt', 1478686158),
(3, 'son môi', 1478686446);

-- --------------------------------------------------------

--
-- Table structure for table `sub`
--

CREATE TABLE `sub` (
  `id` int(11) NOT NULL,
  `username` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CMND` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngay_thang_nam_sinh` date NOT NULL,
  `dia_chi_HKTT` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sdt` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub`
--

INSERT INTO `sub` (`id`, `username`, `password`, `name`, `CMND`, `ngay_thang_nam_sinh`, `dia_chi_HKTT`, `sdt`) VALUES
(1, 'sub1', '96e79218965eb72c92a549dd5a330112', 'Sub 1 - abcd', '012398555', '1984-09-09', 'số 100 đường 200 kdc ba trăm p400 q500 tp.600', '01774534879');

-- --------------------------------------------------------

--
-- Table structure for table `tongdaily`
--

CREATE TABLE `tongdaily` (
  `id` int(11) NOT NULL,
  `username` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CMND` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngay_thang_nam_sinh` date NOT NULL,
  `dia_chi_HKTT` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dia_chi_giao_hang` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sdt` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tongdaily`
--

INSERT INTO `tongdaily` (`id`, `username`, `password`, `name`, `CMND`, `ngay_thang_nam_sinh`, `dia_chi_HKTT`, `dia_chi_giao_hang`, `sdt`, `sub_id`) VALUES
(1, 'tongdaily1', '96e79218965eb72c92a549dd5a330112', 'Tổng đại lý 1', '023870761', '1984-09-09', 'số 100 đường 200 kdc ba trăm p400 q500 tp.600', 'như đc HKTT', '01774534879', 1),
(2, 'tongdaily2', '96e79218965eb72c92a549dd5a330112', 'Tổng đại lý 2', '02265478', '1984-09-09', 'nb', 'như đc HKTT', '01774534879', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chinhanh`
--
ALTER TABLE `chinhanh`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `daily`
--
ALTER TABLE `daily`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donhang_dong`
--
ALTER TABLE `donhang_dong`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub`
--
ALTER TABLE `sub`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tongdaily`
--
ALTER TABLE `tongdaily`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `chinhanh`
--
ALTER TABLE `chinhanh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `daily`
--
ALTER TABLE `daily`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `donhang_dong`
--
ALTER TABLE `donhang_dong`
  MODIFY `id` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `sub`
--
ALTER TABLE `sub`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tongdaily`
--
ALTER TABLE `tongdaily`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
