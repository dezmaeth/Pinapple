-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 22, 2012 at 10:11 
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pineaple`
--

-- --------------------------------------------------------

--
-- Table structure for table `bestseason`
--

CREATE TABLE IF NOT EXISTS `bestseason` (
  `DATE_START_BES` date NOT NULL,
  `END_DATE_BES` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bestseason`
--

INSERT INTO `bestseason` (`DATE_START_BES`, `END_DATE_BES`) VALUES
('2012-04-03', '2012-04-12'),
('2004-07-12', '2004-10-19'),
('2012-06-17', '2012-08-28');

-- --------------------------------------------------------

--
-- Table structure for table `cult`
--

CREATE TABLE IF NOT EXISTS `cult` (
  `ID_CUL` varchar(11) NOT NULL,
  `COMMODITY_CUL` varchar(32) NOT NULL,
  `ELEVATION_CUL` varchar(100) NOT NULL,
  `SOIL_TYPE_CUL` varchar(200) NOT NULL,
  `SOIL_PH_CUL` varchar(10) NOT NULL,
  `SUNLIGHT_CUL` varchar(100) NOT NULL,
  `PRECIPITATION_CUL` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cult`
--

INSERT INTO `cult` (`ID_CUL`, `COMMODITY_CUL`, `ELEVATION_CUL`, `SOIL_TYPE_CUL`, `SOIL_PH_CUL`, `SUNLIGHT_CUL`, `PRECIPITATION_CUL`) VALUES
('11', 'Mango', 'up to 3000 ft (915m), slightly elevated, slope towards drain, not in a basin', 'Good drainage critical. Rich, deep loam certainly contributes to maximum growth, but grows well in sand, gravel, and even oolitic limestone.Low tolerance for salts, boron and lawn herbicides . Like a ', '5.5-7.5', 'bright sunny days and moderate humidity during flowering', '30 to 100 in (75-250 cm) spread over 4 summer months, then 8 months dry season    '),
('22', 'Pineapple', 'sea level to 800m', 'Loamy, well drained (dark brown and  reddish brown balsaltic and sandy loams preferred), slightly acidic', '4.5-6.5', 'full sun, few clouds', '760-1100mm ave rainfall, high humidity, half in spring, half in fall'),
('20', 'Papaya', 'Slopes of less than 15 per cent are recommended for efficient labour and machinery management, safet', 'While doing best in light, porous soils rich in organic matterPapayas perform best on deep that are well drained. Heavy clay soils or acidic soils are not ideal. A topsoil depth of 1 m is preferable f', '5.5-6.7', 'Full sun to light shade', 'Annual rainfall should be well over 40 inches');

-- --------------------------------------------------------

--
-- Table structure for table `distric`
--

CREATE TABLE IF NOT EXISTS `distric` (
  `ID_DIS` varchar(12) NOT NULL,
  `LAT_1_DIS` float NOT NULL,
  `LAT_2_DIS` float NOT NULL,
  `DESCRIPTION_DIS` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `distric`
--

INSERT INTO `distric` (`ID_DIS`, `LAT_1_DIS`, `LAT_2_DIS`, `DESCRIPTION_DIS`) VALUES
('11', 25, -25, NULL),
('22', 30, -30, NULL),
('30', 32, -23, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id_use` varchar(12) NOT NULL,
  `name_use` varchar(20) NOT NULL,
  `password_use` text NOT NULL,
  PRIMARY KEY (`id_use`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

