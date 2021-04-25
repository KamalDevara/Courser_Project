-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.2
-- Generation Time: Mar 05, 2020 at 10:26 AM
-- Server version: 5.7.25-28-log
-- PHP Version: 7.3.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coursere_loginsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `reg_id` int(5) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Email` varchar(40) NOT NULL,
  `password` varchar(35) NOT NULL,
  `Question` tinytext NOT NULL,
  `Answer` tinytext NOT NULL,
  `userStatus` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`reg_id`, `Name`, `Email`, `password`, `Question`, `Answer`, `userStatus`) VALUES
(1, 'miku', 'miku@gmail.com', '26d1ebd4ec8c55cc69f190d0d37f6dac', 'In what town was your first job?', '26d1ebd4ec8c55cc69f190d0d37f6dac', 1),
(2, 'Mike Taviah', 'mike@gmail.com', '18126e7bd3f84b3f3e4df094def5b7de', 'What is your petâ€™s name?', '06d80eb0c50b49a509b49f2424e8c805', 0),
(3, 'Morwin Case', 'Morwin@gmail.com', '339e0ea10626d2804848a7e1b75ccdcf', 'What is your favorite color?', '9f27410725ab8cc8854a2769c7a516b8', 1),
(4, 'D Kamal', 'kamal2305@gmail.com', 'aa63b0d5d950361c05012235ab520512', 'What is your favorite color?', '4a0b0dcedd48f780778d1cd1bb8f9877', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `username`, `password`) VALUES
(1, 'Admin', '4c13ea22afdddb8d9e7eaaecc72dcee6');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `user_first` varchar(256) DEFAULT NULL,
  `user_last` varchar(200) DEFAULT NULL,
  `user_email` varchar(256) DEFAULT NULL,
  `user_uid` varchar(256) DEFAULT NULL,
  `user_pwd` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_first`, `user_last`, `user_email`, `user_uid`, `user_pwd`) VALUES
(1, 'kamal', 'd', 'd.kamal2305@gmail.com', 'kamal23', 'aa63b0d5d950361c05012235ab520512'),
(2, 'uday', 'kumar', 'd.uday1703@gmail.com', 'uday12', 'd35d93606499d921d9e892466772ca93');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`reg_id`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `reg_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
