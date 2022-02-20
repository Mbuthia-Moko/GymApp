-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 13, 2021 at 07:24 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gymdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `coachtbl`
--

CREATE TABLE `coachtbl` (
  `CId` int(11) NOT NULL,
  `CName` varchar(25) NOT NULL,
  `Cphone` varchar(12) NOT NULL,
  `CAge` int(11) NOT NULL,
  `Caddress` varchar(40) NOT NULL,
  `CGen` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `coachtbl`
--

INSERT INTO `coachtbl` (`CId`, `CName`, `Cphone`, `CAge`, `Caddress`, `CGen`) VALUES
(1, 'Harun', '0705186789', 22, 'Kenyin', 'Male'),
(2, 'Core', '23456', 25, 'kows', 'Male'),
(3, 'Corel', '567899', 56, 'ufgudc', 'Female');

-- --------------------------------------------------------

--
-- Table structure for table `financetb`
--

CREATE TABLE `financetb` (
  `PId` int(11) NOT NULL,
  `Pperiod` varchar(50) NOT NULL,
  `PMember` varchar(50) NOT NULL,
  `pAmount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `financetb`
--

INSERT INTO `financetb` (`PId`, `Pperiod`, `PMember`, `pAmount`) VALUES
(1, 'Thu Sep 09 00:00:00 EAT 2021', 'Xore', 1234),
(2, 'Wed Sep 08 00:00:00 EAT 2021', 'KIngCore', 2000),
(3, 'Tue Sep 14 00:00:00 EAT 2021', 'Xore', 2000),
(4, 'Tue Sep 14 00:00:00 EAT 2021', 'Xore', 1234),
(5, 'Thu Sep 09 00:00:00 EAT 2021', 'KIngCore', 3000);

-- --------------------------------------------------------

--
-- Table structure for table `membertbl`
--

CREATE TABLE `membertbl` (
  `MId` int(11) NOT NULL,
  `MName` varchar(20) NOT NULL,
  `MPhone` varchar(15) NOT NULL,
  `MAge` int(11) NOT NULL,
  `MAmount` int(11) NOT NULL,
  `MTiming` varchar(20) NOT NULL,
  `MCoach` varchar(20) NOT NULL,
  `MGen` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `membertbl`
--

INSERT INTO `membertbl` (`MId`, `MName`, `MPhone`, `MAge`, `MAmount`, `MTiming`, `MCoach`, `MGen`) VALUES
(1, 'KIngCore', '2345678', 20, 1000, '4PM-6PM', 'Corel', 'Male'),
(2, 'Xore', '123456', 20, 2000, '6PM-8PM', 'Core', 'Male');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `coachtbl`
--
ALTER TABLE `coachtbl`
  ADD PRIMARY KEY (`CId`);

--
-- Indexes for table `financetb`
--
ALTER TABLE `financetb`
  ADD PRIMARY KEY (`PId`);

--
-- Indexes for table `membertbl`
--
ALTER TABLE `membertbl`
  ADD PRIMARY KEY (`MId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
