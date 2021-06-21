-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 21, 2021 at 01:43 PM
-- Server version: 8.0.25-0ubuntu0.20.04.1
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `QLHH`
--

-- --------------------------------------------------------

--
-- Table structure for table `itemLine`
--

CREATE TABLE `itemLine` (
  `iID` int NOT NULL,
  `Classify` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `itemLine`
--

INSERT INTO `itemLine` (`iID`, `Classify`) VALUES
(1, 'Điện Thoại'),
(2, 'Tủ Lạnh'),
(3, 'Điều Hòa');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `ID` int NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `ProductType` int DEFAULT NULL,
  `Price` int DEFAULT NULL,
  `Amount` int DEFAULT NULL,
  `DateCreated` date DEFAULT NULL,
  `ProductDescription` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`ID`, `Name`, `ProductType`, `Price`, `Amount`, `DateCreated`, `ProductDescription`) VALUES
(2, 'Samsung Galaxy S7', 1, 900, 1500, '2021-06-21', NULL),
(3, 'Vinsmart Pro', 1, 700, 5000, '2021-06-21', NULL),
(4, 'Daikin Inverter', 3, 500, 600, '2021-04-18', NULL),
(5, 'Panasonic Inverter', 2, 550, 600, '2021-03-17', NULL),
(6, 'Samsung Galaxy J3', 1, 300, 8000, '2021-06-21', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `itemLine`
--
ALTER TABLE `itemLine`
  ADD PRIMARY KEY (`iID`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ProductType` (`ProductType`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `itemLine`
--
ALTER TABLE `itemLine`
  MODIFY `iID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_ibfk_1` FOREIGN KEY (`ProductType`) REFERENCES `itemLine` (`iID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
