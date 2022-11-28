-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2022 at 01:04 AM
-- Server version: 10.9.4-MariaDB-log
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `enrollment`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblcity`
--

CREATE TABLE `tblcity` (
  `id` int(11) NOT NULL DEFAULT 0,
  `city` varchar(50) NOT NULL DEFAULT '',
  `provid` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcity`
--

INSERT INTO `tblcity` (`id`, `city`, `provid`) VALUES
(1, 'Bantayan', 1),
(2, 'Madridejos', 1),
(3, 'Sta Fe', 1),
(4, 'Cebu City', 1),
(5, 'Danao City', 1),
(6, 'Bogo City', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblgrade`
--

CREATE TABLE `tblgrade` (
  `id` int(11) NOT NULL DEFAULT 0,
  `grade` decimal(5,2) NOT NULL DEFAULT 0.00,
  `percentage` int(11) NOT NULL DEFAULT 0,
  `sid` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblgrade`
--

INSERT INTO `tblgrade` (`id`, `grade`, `percentage`, `sid`) VALUES
(1, '1.20', 96, 1),
(2, '1.30', 95, 2),
(3, '1.50', 93, 3),
(4, '1.75', 90, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tblprovince`
--

CREATE TABLE `tblprovince` (
  `id` int(11) NOT NULL DEFAULT 0,
  `province` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblprovince`
--

INSERT INTO `tblprovince` (`id`, `province`) VALUES
(1, 'Cebu'),
(2, 'NCR'),
(3, 'Batangas'),
(4, 'Negros Occidental'),
(5, 'Bulacan');

-- --------------------------------------------------------

--
-- Table structure for table `tblstudent`
--

CREATE TABLE `tblstudent` (
  `id` int(11) NOT NULL DEFAULT 0,
  `fname` varchar(50) NOT NULL DEFAULT '',
  `lname` varchar(50) NOT NULL DEFAULT '',
  `studentid` varchar(50) NOT NULL DEFAULT '0000-0000',
  `address` varchar(50) NOT NULL DEFAULT '',
  `cityid` int(11) NOT NULL DEFAULT 0,
  `stateid` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblstudent`
--

INSERT INTO `tblstudent` (`id`, `fname`, `lname`, `studentid`, `address`, `cityid`, `stateid`) VALUES
(1, 'Edgar', 'Mata', '2021-0531', 'Bunakan', 2, 1),
(2, 'Jeffrey', 'Santos', '2020-1004', 'Malbago', 2, 1),
(3, 'Bea', 'Alonzo', '2019-0998', 'Kaongkod', 2, 1),
(4, 'Leah', 'Caballes', '2020-1004', 'San Agustin', 2, 1),
(5, 'Conie', 'Reyes', '2022-1440', 'Mancilang', 2, 1),
(6, 'Alfred', 'Tinga', '2022-1441', 'Poblacion', 2, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblcity`
--
ALTER TABLE `tblcity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblgrade`
--
ALTER TABLE `tblgrade`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sid` (`sid`);

--
-- Indexes for table `tblprovince`
--
ALTER TABLE `tblprovince`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstudent`
--
ALTER TABLE `tblstudent`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cityid` (`cityid`),
  ADD KEY `stateid` (`stateid`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblgrade`
--
ALTER TABLE `tblgrade`
  ADD CONSTRAINT `tblgrade_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `tblgrade` (`id`),
  ADD CONSTRAINT `tblgrade_ibfk_2` FOREIGN KEY (`sid`) REFERENCES `tblgrade` (`id`),
  ADD CONSTRAINT `tblgrade_ibfk_3` FOREIGN KEY (`sid`) REFERENCES `tblstudent` (`id`),
  ADD CONSTRAINT `tblgrade_ibfk_4` FOREIGN KEY (`sid`) REFERENCES `tblstudent` (`id`),
  ADD CONSTRAINT `tblgrade_ibfk_5` FOREIGN KEY (`sid`) REFERENCES `tblstudent` (`id`);

--
-- Constraints for table `tblstudent`
--
ALTER TABLE `tblstudent`
  ADD CONSTRAINT `adding_forkey` FOREIGN KEY (`id`) REFERENCES `tblcity` (`id`),
  ADD CONSTRAINT `tblstudent_ibfk_1` FOREIGN KEY (`cityid`) REFERENCES `tblstudent` (`id`),
  ADD CONSTRAINT `tblstudent_ibfk_2` FOREIGN KEY (`cityid`) REFERENCES `tblstudent` (`id`),
  ADD CONSTRAINT `tblstudent_ibfk_3` FOREIGN KEY (`stateid`) REFERENCES `tblstudent` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
