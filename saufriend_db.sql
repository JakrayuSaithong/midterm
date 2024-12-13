-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 13, 2024 at 02:27 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `saufriend_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `myfriend_tb`
--

CREATE TABLE `myfriend_tb` (
  `myfriendId` int(11) NOT NULL,
  `myfriendFullname` varchar(200) NOT NULL,
  `myfriendPhone` varchar(30) NOT NULL,
  `myfriendAge` varchar(30) NOT NULL,
  `myfriendMajor` varchar(20) NOT NULL,
  `userId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `myfriend_tb`
--

INSERT INTO `myfriend_tb` (`myfriendId`, `myfriendFullname`, `myfriendPhone`, `myfriendAge`, `myfriendMajor`, `userId`) VALUES
(1, 'usertest', '099999888', '25', 'test', 1),
(3, 'user123', '12345644', '12', 'test1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_tb`
--

CREATE TABLE `user_tb` (
  `userId` int(11) NOT NULL,
  `userFullname` varchar(100) NOT NULL,
  `userEmail` varchar(100) NOT NULL,
  `userName` varchar(50) NOT NULL,
  `userPassword` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_tb`
--

INSERT INTO `user_tb` (`userId`, `userFullname`, `userEmail`, `userName`, `userPassword`) VALUES
(1, 'จักรายุ สายทอง', 'dewsaithong@gmail.com', 'dew767789', 'dew7658910');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `myfriend_tb`
--
ALTER TABLE `myfriend_tb`
  ADD PRIMARY KEY (`myfriendId`);

--
-- Indexes for table `user_tb`
--
ALTER TABLE `user_tb`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `myfriend_tb`
--
ALTER TABLE `myfriend_tb`
  MODIFY `myfriendId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_tb`
--
ALTER TABLE `user_tb`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
