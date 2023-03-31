-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2023 at 10:00 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `insert`
--

-- --------------------------------------------------------

--
-- Table structure for table `choices`
--

CREATE TABLE `choices` (
  `id` int(11) NOT NULL,
  `Item_Choice` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `choices`
--

INSERT INTO `choices` (`id`, `Item_Choice`) VALUES
(1, 'JERECHO'),
(2, 'LOKLOK'),
(3, 'sir erwin'),
(5, 'FASFAFAFA');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `item_id` int(11) NOT NULL,
  `Choice_id` int(11) NOT NULL,
  `items` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`item_id`, `Choice_id`, `items`) VALUES
(1, 1, 'JERECHO'),
(2, 1, 'JERECHO'),
(3, 1, 'LOKLOK'),
(4, 1, 'LOKLOK'),
(5, 1, 'LOKLOK'),
(6, 1, 'JERECHO'),
(7, 2, 'LOKLOK'),
(8, 1, 'JERECHO'),
(9, 2, 'LOKLOK'),
(10, 1, 'JERECHO'),
(11, 2, 'LOKLOK'),
(12, 3, 'sir erwin'),
(13, 1, 'JERECHO'),
(14, 2, 'LOKLOK'),
(15, 3, 'sir erwin'),
(16, 1, 'JERECHO'),
(17, 2, 'LOKLOK'),
(18, 3, 'sir erwin'),
(19, 1, 'JERECHO'),
(20, 2, 'LOKLOK'),
(21, 3, 'sir erwin'),
(22, 5, 'FASFAFAFA'),
(23, 1, 'JERECHO'),
(24, 2, 'LOKLOK'),
(25, 3, 'sir erwin'),
(26, 1, 'JERECHO'),
(27, 2, 'LOKLOK'),
(28, 3, 'sir erwin'),
(29, 5, 'FASFAFAFA'),
(30, 1, 'JERECHO'),
(31, 2, 'LOKLOK'),
(32, 3, 'sir erwin'),
(33, 5, 'FASFAFAFA'),
(34, 1, 'JERECHO'),
(35, 2, 'LOKLOK'),
(36, 3, 'sir erwin'),
(37, 5, 'FASFAFAFA');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `choices`
--
ALTER TABLE `choices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`item_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `choices`
--
ALTER TABLE `choices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
