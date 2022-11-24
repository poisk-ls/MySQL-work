-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2022 at 12:29 PM
-- Server version: 10.9.2-MariaDB-log
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `promo`
--

-- --------------------------------------------------------

--
-- Table structure for table `Sony`
--

CREATE TABLE `Sony` (
  `sony_id` int(11) NOT NULL DEFAULT 0,
  `Model` varchar(70) NOT NULL DEFAULT '',
  `Suggested_Cash_Prize` varchar(70) NOT NULL DEFAULT '',
  `Total_Cashback` varchar(70) NOT NULL DEFAULT '',
  `Suggested_Retail_Promo_Prize` varchar(70) NOT NULL DEFAULT '',
  `Current_Installment_Support` varchar(70) NOT NULL DEFAULT '-'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Sony`
--

INSERT INTO `Sony` (`sony_id`, `Model`, `Suggested_Cash_Prize`, `Total_Cashback`, `Suggested_Retail_Promo_Prize`, `Current_Installment_Support`) VALUES
(1, 'SEL50F12GM', '120,900', '12,000', '108,900', '-'),
(2, 'SEL14F18GM', '86,900', '9,000', '77,900', '-'),
(3, 'SEL1635GM', '122,106', '12,000', '177,900', '6 months 0% interest'),
(4, 'SEL2470GM2', '117,500', '12,000', '105,500', '-'),
(5, 'SEL200600G', '110,990', '11,000', '99,990', '-'),
(6, 'HVL-F60RM2', '26,500', '8,000', '18,500', '-'),
(7, 'HVL-F46RM', '26,800', '6,000', '14,800', '-'),
(8, 'CEA-G16OT', '28,900', '9,000', '19,900', '-'),
(9, 'CEA-G320T', '41,990', '13,000', '28,990', '-');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Sony`
--
ALTER TABLE `Sony`
  ADD PRIMARY KEY (`sony_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
