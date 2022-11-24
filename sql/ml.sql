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
-- Database: `ml`
--

-- --------------------------------------------------------

--
-- Table structure for table `heroes`
--

CREATE TABLE `heroes` (
  `id` int(11) NOT NULL DEFAULT 0,
  `Tank` varchar(30) NOT NULL DEFAULT '',
  `Fighter` varchar(30) NOT NULL DEFAULT '',
  `Assassin` varchar(30) NOT NULL DEFAULT '',
  `Marksman` varchar(30) NOT NULL DEFAULT '',
  `Mage` varchar(30) NOT NULL DEFAULT '',
  `Support` varchar(30) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `heroes`
--

INSERT INTO `heroes` (`id`, `Tank`, `Fighter`, `Assassin`, `Marksman`, `Mage`, `Support`) VALUES
(1, 'Alice', 'Balmond', 'Saber', 'Miya', 'Alice', 'Nana'),
(2, 'Tigreal', 'Alucard', 'Alucard', 'Bruno', 'Nana', 'Tigreal'),
(3, 'Akai', 'Bane', 'Karina', 'Clint', 'Bane', 'Akai'),
(4, 'Franco', 'Zilong', 'Zilong', 'Layla', 'Eudora', 'Franco'),
(5, 'Minotour', 'Freya', 'Fanny', 'Yi Shun-shin', 'Gord', 'Rafaela'),
(6, 'Lolita', 'Chou', 'Hayabusa', 'Moskov', 'Kagura', 'Minotour'),
(7, 'Ruby', 'Sun', 'Natalia', 'Roger', 'Cyclops', 'Lolita'),
(8, 'Johnson', 'Alpha', 'Yi Shun-shin', 'Karrie', 'Aurora', 'Estes'),
(9, 'Hilda', 'Ruby', 'Harley', 'Iritel', 'Vexana', 'Diggie'),
(10, 'Gatotaca', 'Hilda', 'Lancelot', 'Lesley', 'Harley', 'Angela'),
(11, 'Grock', 'Lapu-Lapu', 'Helcurt', 'Hanabi', 'Odette', 'Kaja'),
(12, 'Hylos', 'Roger', 'Gusion', 'Kimmy', 'Pharsa', 'Khufra'),
(13, 'Uranos', 'Gatotaca', 'Selena', 'Granger', 'Valir', 'Camillap'),
(14, 'Belerick', 'Argus', 'Hanzo', 'Wanwan', 'Chang e', 'Atlas'),
(15, 'Khufra', 'Jawhead', 'Kadita', 'Popol and Kupa', 'Selena', 'Mathilda'),
(16, 'Esmeralda', 'Martis', 'Ling', 'Brody', 'Vale', 'Floryn'),
(17, 'Baxia', 'Kaja', 'Benedetta', 'Beatrix', 'Lunox', ''),
(18, 'Masha', 'Aldous', 'Mathilda', 'Natan', 'Kimmy', ''),
(19, 'Atlas', 'Leomord', 'Aamon', 'Edith', 'Harith', ''),
(20, 'Barats', 'Thamuz', 'Joy', 'Melissa', 'Kadita', ''),
(21, 'Gloo', 'Minsitthar', '', '', 'Faramis', ''),
(22, 'Edith', 'Badang', '', '', 'Esmeralda', ''),
(23, 'Fredrinn', 'Guinevere', '', '', 'Lylia', ''),
(24, '', 'Terizla', '', '', 'Cecilion', ''),
(25, '', 'X.Borg', '', '', 'Lou Yi', ''),
(26, '', 'Dyrroth', '', '', 'Yve', ''),
(27, '', 'Masha', '', '', 'Valentina', ''),
(28, '', 'Silvanna', '', '', 'Xavier', ''),
(29, '', 'Yu Zhong', '', '', 'Julian', ''),
(31, '', 'Khaleed', '', '', '', ''),
(32, '', 'Barats', '', '', '', ''),
(33, '', 'Paquito', '', '', '', ''),
(34, '', 'Phoveus', '', '', '', ''),
(35, '', 'Aulus', '', '', '', ''),
(36, '', 'Julian', '', '', '', ''),
(37, '', 'Fredrinn', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `heroes`
--
ALTER TABLE `heroes`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
