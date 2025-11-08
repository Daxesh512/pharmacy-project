-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 23, 2024 at 08:32 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Dorixona`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int NOT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2024-03-10 10:30:57');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int NOT NULL,
  `fullName` text COLLATE utf8mb4_general_ci,
  `email` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone_number` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `message` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `fullName`, `email`, `phone_number`, `message`) VALUES
(6, 'Rinah Mcintosh', 'doxohe@mailinator.com', '+1 (124) 904-6763', 'Minima nostrum volup'),
(8, 'Behruz', 'behruz@gmail.com', '+998335472415', 'salom paracetamol dorisi qanchadan'),
(9, 'djjdfg', 'fjskdfh@gmail.com', '5454', 'khjsdshdfjsd'),
(10, 'Drew Conrad', 'pivykynal@mailinator.com', '+1 (833) 187-7082', 'Non placeat est do');

-- --------------------------------------------------------

--
-- Table structure for table `medicines`
--

CREATE TABLE `medicines` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `price` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `quantity` int NOT NULL,
  `pharmacy_id` int DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medicines`
--

INSERT INTO `medicines` (`id`, `name`, `price`, `quantity`, `pharmacy_id`, `image`) VALUES
(1, 'Ibufen', '30.000', 3, 1, 'images/ibufen.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `pharmacies`
--

CREATE TABLE `pharmacies` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone_number` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pharmacies`
--

INSERT INTO `pharmacies` (`id`, `name`, `address`, `phone_number`) VALUES
(1, 'Toshkent dorixonasi', 'toshkent chilonzor', '+998335472415');

-- --------------------------------------------------------

--
-- Table structure for table `tblimageadd`
--

CREATE TABLE `tblimageadd` (
  `image_id` int NOT NULL,
  `header_image` varchar(150) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblimageadd`
--

INSERT INTO `tblimageadd` (`image_id`, `header_image`) VALUES
(9, 'uploads/062eb84ed7ea9aa1702520b84cf8dd08.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tblnotice`
--

CREATE TABLE `tblnotice` (
  `id` int NOT NULL,
  `noticeTitle` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `noticeDetails` mediumtext COLLATE utf8mb4_general_ci,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblnotice`
--

INSERT INTO `tblnotice` (`id`, `noticeTitle`, `noticeDetails`, `postingDate`) VALUES
(10, 'Parasetamol', 'bu og‘riqni kamaytirish va tana haroratini tushirish uchun keng qo‘llaniladigan dorilardan biri. U quyidagicha ishlatiladi:\r\nQo‘llanilishi:\r\nOg‘riqni kamaytirish: bosh og‘rig‘i, tish og‘rig‘i, mushak og‘rig‘i, va boshqa turdagi o‘rtacha darajadagi og‘riqlarni yengillashtiradi.\r\nTana haroratini tushirish: isitma ko‘tarilganda samarali bo‘ladi (masalan, gripp yoki shamollashda)', '2024-12-01 12:03:52'),
(11, 'Ibuprofen', 'bu og‘riqni kamaytiruvchi, yallig‘lanishga qarshi va tana haroratini tushiruvchi dorilar guruhiga kiradi. U ko‘pincha o‘rtacha darajadagi og‘riqlarni bartaraf qilish va yallig‘lanishni davolash uchun ishlatiladi.', '2024-12-01 12:58:40'),
(14, 'Kyupen', 'Tanadagi og\'riqlarni qoldirish uchun ajoyib dori', '2024-12-05 13:04:57'),
(15, 'Consequuntur alias v', 'Quis architecto volu', '2024-12-10 05:18:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicines`
--
ALTER TABLE `medicines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pharmacy_id` (`pharmacy_id`);

--
-- Indexes for table `pharmacies`
--
ALTER TABLE `pharmacies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblimageadd`
--
ALTER TABLE `tblimageadd`
  ADD PRIMARY KEY (`image_id`);

--
-- Indexes for table `tblnotice`
--
ALTER TABLE `tblnotice`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `medicines`
--
ALTER TABLE `medicines`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pharmacies`
--
ALTER TABLE `pharmacies`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblimageadd`
--
ALTER TABLE `tblimageadd`
  MODIFY `image_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblnotice`
--
ALTER TABLE `tblnotice`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `medicines`
--
ALTER TABLE `medicines`
  ADD CONSTRAINT `medicines_ibfk_1` FOREIGN KEY (`pharmacy_id`) REFERENCES `pharmacies` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
