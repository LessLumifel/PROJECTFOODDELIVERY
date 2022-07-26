-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 26, 2022 at 09:16 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `androidh_edumall`
--

-- --------------------------------------------------------

--
-- Table structure for table `Project_Lui`
--

CREATE TABLE `Project_Lui` (
  `id` int(11) NOT NULL,
  `ChooseType` text COLLATE utf8_unicode_ci NOT NULL,
  `Name` text COLLATE utf8_unicode_ci NOT NULL,
  `User` text COLLATE utf8_unicode_ci NOT NULL,
  `Password` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Project_Lui`
--

INSERT INTO `Project_Lui` (`id`, `ChooseType`, `Name`, `User`, `Password`) VALUES
(1, 'User', 'พนากาญจน์', 'panakan', '1234'),
(24, '', '123', '123', '1234'),
(25, 'Shop', 'user1234', 'user1234', '1234'),
(26, 'Shop', '1234', '12345', '1234'),
(27, 'User', 'user', 'user', '1234'),
(28, 'Shop', 'shop', 'shop', '1234'),
(29, 'Rider', 'rider', 'rider', '1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Project_Lui`
--
ALTER TABLE `Project_Lui`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Project_Lui`
--
ALTER TABLE `Project_Lui`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
