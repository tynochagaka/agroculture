-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2024 at 04:11 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE DATABASE agroculture;
USE agroculture;


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `agroculture`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogdata`
--

CREATE TABLE `blogdata` (
  `blogId` int(10) NOT NULL,
  `blogUser` varchar(256) NOT NULL,
  `blogTitle` varchar(256) NOT NULL,
  `blogContent` longtext NOT NULL,
  `blogTime` timestamp NOT NULL DEFAULT current_timestamp(),
  `likes` int(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `blogdata`
--

INSERT INTO `blogdata` (`blogId`, `blogUser`, `blogTitle`, `blogContent`, `blogTime`, `likes`) VALUES
(19, 'Tinotenda Chagaka', 'First Blog', 'Lets push Agroforestry\r\n', '2024-03-18 13:09:41', 4),
(20, 'tynochagaka', 'AgroForestry', '<p>Agroforestry is a land management approach that combines the practices of agriculture and forestry. It involves intentionally integrating trees and shrubs with crops, livestock, or other agricultural systems on the same piece of land. Agroforestry systems are designed to provide multiple benefits, including ecological, economic, and social advantages.</p>\r\n\r\n<p>In agroforestry, trees are strategically planted or preserved in agricultural landscapes to enhance productivity, sustainability, and resilience. The trees can be planted in rows, scattered throughout the fields, or as windbreaks and shelterbelts. The specific design of agroforestry systems depends on the local climate, soil conditions, available land, and the goals of the landowner or farmer.</p>\r\n\r\n<p>There are several types of agroforestry systems, including:</p>\r\n\r\n<p>1. Alley Cropping: In this system, rows of trees or shrubs are planted alongside agricultural crops. The trees provide shade, reduce wind and water erosion, and contribute organic matter to the soil. The crops benefit from the microclimate created by the trees and can be harvested without removing the trees.</p>\r\n\r\n<p>2. Silvopasture: Silvopasture combines trees with livestock grazing. Trees provide shade for animals, improve forage quality, and offer shelter from harsh weather conditions. Livestock, in turn, can provide manure to nourish the soil and enhance tree growth.</p>\r\n\r\n<p>3. Forest Farming: Forest farming involves growing high-value specialty crops, such as medicinal plants, mushrooms, or fruits, under the canopy of trees. The trees provide shade, create a favorable microclimate, and can serve as a source of additional income alongside the agricultural crops.</p>\r\n\r\n<p>4. Windbreaks and Shelterbelts: These are linear plantings of trees and shrubs that act as barriers to reduce wind speed and protect crops and livestock from wind erosion and extreme weather events. They help create microclimates that are more suitable for agriculture.</p>\r\n\r\n<p>Agroforestry offers numerous benefits, including increased biodiversity, improved soil health and fertility, enhanced water quality, carbon sequestration, and diversified income streams for farmers. It promotes sustainable land use practices and can contribute to climate change mitigation and adaptation efforts.</p>\r\n\r\n<p>By integrating trees into agricultural systems, agroforestry provides a pathway for achieving both environmental and economic sustainability while supporting local communities and improving resilience in the face of environmental challenges.</p>\r\n', '2024-03-21 12:18:07', 2);

-- --------------------------------------------------------

--
-- Table structure for table `blogfeedback`
--

CREATE TABLE `blogfeedback` (
  `blogId` int(10) NOT NULL,
  `comment` varchar(256) NOT NULL,
  `commentUser` varchar(256) NOT NULL,
  `commentPic` varchar(256) NOT NULL DEFAULT 'profile0.png',
  `commentTime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `blogfeedback`
--

INSERT INTO `blogfeedback` (`blogId`, `comment`, `commentUser`, `commentPic`, `commentTime`) VALUES
(20, 'nn', 'Baba', 'profile0.png', '2024-03-21 13:32:55');

-- --------------------------------------------------------

--
-- Table structure for table `farmer`
--

CREATE TABLE `farmer` (
  `fid` int(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `fusername` varchar(255) NOT NULL,
  `fpassword` varchar(255) NOT NULL,
  `fhash` varchar(255) NOT NULL,
  `femail` varchar(255) NOT NULL,
  `fmobile` varchar(255) NOT NULL,
  `faddress` text NOT NULL,
  `factive` int(255) NOT NULL DEFAULT 0,
  `frating` int(11) NOT NULL DEFAULT 0,
  `picExt` varchar(255) NOT NULL DEFAULT 'png',
  `picStatus` int(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `farmer`
--

INSERT INTO `farmer` (`fid`, `fname`, `fusername`, `fpassword`, `fhash`, `femail`, `fmobile`, `faddress`, `factive`, `frating`, `picExt`, `picStatus`) VALUES
(5, 'Tinotenda Chagaka', 'tynochagaka', '$2y$10$e8IZ.v9nck01YpLHm4Dn2.Zhu.0vKv8goM7WYv6KMl0ps4LrpSCMG', '6c524f9d5d7027454a783c841250ba71', 'tynochagaka@gmail.com', '0780660853', '17 Churchill', 0, 0, 'png', 0),
(6, 'bob', 'Baba', '$2y$10$wjrVExpyP7EOfKtMozMZ.OE5gKGsSD2SvYUDjr00E4eZ3zleHLH2i', '4b6538a44a1dfdc2b83477cd76dee98e', 'bob@gmail.com', '0780660854', '34 Street', 0, 0, 'png', 0),
(8, 'Tafara', 'Muono', '$2y$10$WaO//4L.SgOm.vTbzrObp.W3y83jHizN/OcdTPlMCzHab5X8vDyny', 'c3c59e5f8b3e9753913f4d435b53c308', 'muono@gmail.com', '0716879775', '34 Harae', 0, 0, 'png', 0),
(9, 'Tafff', 'Tenn', '$2y$10$sFbwEADaUtfKHqtz9hUD0.ZQrte/neo3Ma7FfAlR01LC50L9koUGy', '82f2b308c3b01637c607ce05f52a2fed', 'taffy@gmail.com', '0780660853', '17 Churchill', 0, 0, 'png', 0),
(10, 'Man', 'People', '$2y$10$25xs7CyU6mWX9eQBPBv6ae04bGeeMDzETFyzaEVkTK3zxi7tNIOyC', '35cf8659cfcb13224cbd47863a34fc58', 'manyaka@gmail.com', '0780660853', '17 Churchill', 0, 0, 'png', 0),
(11, 'Andrew', 'Davies', '$2y$10$UeLhKGj26Kd116SrMIacFuybzk1CDSmuZLG4Hw/KmAikYqxW50OWC', 'a01a0380ca3c61428c26a231f0e49a09', 'andrewc@gmail.com', '0719567567', '17 Churchill', 0, 0, 'png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `fproduct`
--

CREATE TABLE `fproduct` (
  `fid` int(255) NOT NULL,
  `pid` int(255) NOT NULL,
  `product` varchar(255) NOT NULL,
  `pcat` varchar(255) NOT NULL,
  `pinfo` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `pimage` varchar(255) NOT NULL DEFAULT 'blank.png',
  `picStatus` int(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `fproduct`
--

INSERT INTO `fproduct` (`fid`, `pid`, `product`, `pcat`, `pinfo`, `price`, `pimage`, `picStatus`) VALUES
(6, 34, 'AgroForestry Design', 'Service', '<p>We assess the specific needs and goals of farmers or landowners and design customized agroforestry systems. They consider factors such as soil type, climate, available space, and desired products to create a plan that maximizes the benefits of integrat', 0, 'AgroForestry Design6.png', 1),
(5, 35, '', '', '', 0, 'blank.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `likedata`
--

CREATE TABLE `likedata` (
  `blogId` int(10) NOT NULL,
  `blogUserId` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `likedata`
--

INSERT INTO `likedata` (`blogId`, `blogUserId`) VALUES
(19, 3),
(19, 5),
(20, 5),
(20, 11),
(19, 11),
(19, 13);

-- --------------------------------------------------------

--
-- Table structure for table `mycart`
--

CREATE TABLE `mycart` (
  `bid` int(10) NOT NULL,
  `pid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `mycart`
--

INSERT INTO `mycart` (`bid`, `pid`) VALUES
(6, 34),
(5, 34);

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `pid` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `rating` int(10) NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`pid`, `name`, `rating`, `comment`) VALUES
(31, 'Tinotenda Chagaka', 0, ''),
(31, 'Tinotenda Chagaka', 8, ''),
(31, 'bob', 9, 'good'),
(34, 'Tinotenda Chagaka', 0, ''),
(34, 'Tinotenda Chagaka', 10, '');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `tid` int(10) NOT NULL,
  `bid` int(10) NOT NULL,
  `pid` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pincode` varchar(255) NOT NULL,
  `addr` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`tid`, `bid`, `pid`, `name`, `city`, `mobile`, `email`, `pincode`, `addr`) VALUES
(2, 6, 31, 'Tinotenda Chagaka', 'Harare', '0780660853', 'tynochagaka@gmail.com', 'SW1W 0NY', '17 Churchill'),
(4, 6, 31, 'Tinotenda Chagaka', 'Harare', '0780660853', 'tynochagaka@gmail.com', 'SW1W 0NY', '17 Churchill'),
(5, 5, 34, 'Tinotenda Chagaka', 'Harare', '780660853', 'tynochagaka@gmail.com', 'SW1W 0NY', '17 Churchill');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogdata`
--
ALTER TABLE `blogdata`
  ADD PRIMARY KEY (`blogId`);

--
-- Indexes for table `farmer`
--
ALTER TABLE `farmer`
  ADD PRIMARY KEY (`fid`),
  ADD UNIQUE KEY `fid` (`fid`);

--
-- Indexes for table `fproduct`
--
ALTER TABLE `fproduct`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `likedata`
--
ALTER TABLE `likedata`
  ADD KEY `blogId` (`blogId`),
  ADD KEY `blogUserId` (`blogUserId`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`tid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogdata`
--
ALTER TABLE `blogdata`
  MODIFY `blogId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `farmer`
--
ALTER TABLE `farmer`
  MODIFY `fid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `fproduct`
--
ALTER TABLE `fproduct`
  MODIFY `pid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `tid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `likedata`
--
ALTER TABLE `likedata`
  ADD CONSTRAINT `likedata_ibfk_1` FOREIGN KEY (`blogId`) REFERENCES `blogdata` (`blogId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
