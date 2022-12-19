-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2022 at 01:47 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `post_data`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `Id` int(10) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `body` text DEFAULT NULL,
  `author` varchar(200) DEFAULT NULL,
  `postdate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`Id`, `title`, `body`, `author`, `postdate`) VALUES
(1, 'My coding journey', 'I started coding when i was just a kid and since then it has been a great journey and I am looking forward to making it the best one. ', 'sharif2', '2022-12-19 12:34:01');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `Id` int(10) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Username` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Password` varchar(150) DEFAULT NULL,
  `createdate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Id`, `Name`, `Username`, `Email`, `Password`, `createdate`) VALUES
(1, 'Ali Sina Raisi', 'ali2', 'sinaraisi79@gmail.co', '12345', '2022-12-12 11:38:07'),
(2, 'Ali Sina Raisi', 'ali23', 'sinaraisi79@gmail.co', '$5$rounds=535000$L/GeGTf3eXSXxTO7$yIENDkJjOKT2XAZLd9wNSEENvuaiS9b2l0RK.RYw3O0', '2022-12-12 11:53:49'),
(3, 'reza sharifi', 'reza45', 'reza@gmail.com', '$5$rounds=535000$wpGFq3/zeLDZXzVL$p6HVqMSZJNeiXgymk0Ru8vzBqwubE1SLGygF0HWUWH/', '2022-12-12 12:07:15'),
(4, 'reza sharifi', 'reza2000', 'sinaraisi79@gmail.co', '$5$rounds=535000$Mv//Ja456po3ATA4$YBJo57BAPJma0AOJL3hmVqMTHHSaLsQPnVV4ZBzzh0/', '2022-12-12 12:46:43'),
(5, 'reza', 'sharif2', 'sharifi@gmai.com', '$5$rounds=535000$shX.t6QdCg2L7V2j$7B0sWKYk4/DtSSozbTLhXgNjZ0IlZ1ofzkkEJgWZ3J/', '2022-12-19 11:51:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
