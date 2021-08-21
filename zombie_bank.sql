-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2021 at 02:03 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zombie bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(1, 'sakshi', 'ashu', 200, '2021-04-17 18:58:27'),
(2, 'ashu', 'ashu', 200, '2021-04-17 19:00:31'),
(3, 'dhiraj', 'pinky', 5000, '2021-04-17 19:01:32'),
(4, 'pratik', 'pinky', 5000, '2021-04-17 19:06:15'),
(5, 'pruthvi', 'ashu', 500, '2021-04-17 19:28:24'),
(6, 'akash', 'ashu', 500, '2021-04-17 19:30:31'),
(7, 'ashish', 'ashu', 200, '2021-04-17 19:31:22'),
(8, 'deepak', 'Aman', 520, '2021-04-18 07:39:58'),
(9, 'pratap', 'sakshi', 500, '2021-04-18 09:37:08'),
(10, 'pinky', 'dhiraj', 100, '2021-04-18 11:52:18');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(108, 'Sakshi', 'shah@gmail.com', 46600),
(264, 'Ashu', 'ahujaa@gmail.com', 30620),
(324, 'Dheeraj', 'mallu@gmail.com', 40000),
(452, 'Pratik', 'asrani@gmail.com', 48800),
(535, 'Pruthvi', 'chauhan@gmail.com', 35000),
(545, 'Aakash', 'punjabi@gmail.com', 49500),
(654, 'Ashish', 'bhoir@gmail.com', 40000),
(785, 'Deepak', 'lakhani@gmail.com', 49480),
(877, 'Pratap', 'singh@gmail.com', 40000),
(945, 'pinky', 'pinky@gmail.com', 30000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--f
ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54655;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
