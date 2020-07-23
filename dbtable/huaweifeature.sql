-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2018 at 10:36 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shoppingmall`
--

-- --------------------------------------------------------

--
-- Table structure for table `huaweifeature`
--

CREATE TABLE `huaweifeature` (
  `submitDate` text NOT NULL,
  `battery` tinyint(1) NOT NULL,
  `storage` tinyint(1) NOT NULL,
  `look` tinyint(1) NOT NULL,
  `hardware` tinyint(1) NOT NULL,
  `camera` tinyint(1) NOT NULL,
  `gui` tinyint(1) NOT NULL,
  `warranty` tinyint(1) NOT NULL,
  `part` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `huaweifeature`
--

INSERT INTO `huaweifeature` (`submitDate`, `battery`, `storage`, `look`, `hardware`, `camera`, `gui`, `warranty`, `part`) VALUES
('9/17/2018 14:14', 1, 1, 0, 0, 1, 0, 1, 0),
('9/17/2018 14:32', 0, 0, 1, 1, 0, 0, 0, 0),
('9/18/2018 10:45', 1, 1, 1, 1, 1, 1, 1, 1),
('9/26/2018 20:35', 1, 1, 1, 1, 1, 1, 0, 0),
('9/30/2018 19:17', 1, 1, 1, 1, 1, 1, 1, 1),
('9/30/2018 19:23', 1, 1, 0, 1, 1, 1, 0, 0),
('10/3/2018 14:49', 0, 0, 0, 0, 0, 0, 1, 0),
('10/3/2018 20:02', 1, 1, 0, 0, 1, 1, 0, 0),
('10/8/2018 20:12', 0, 1, 1, 0, 1, 0, 0, 0),
('10/9/2018 21:18', 1, 0, 1, 1, 0, 1, 1, 1),
('10/10/2018 17:28', 1, 1, 1, 0, 1, 0, 0, 0),
('10/11/2018 7:17', 0, 0, 1, 0, 1, 0, 0, 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
