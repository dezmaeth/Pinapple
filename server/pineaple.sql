-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 22, 2012 at 09:56 
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
  `ID_CUL` int(11) NOT NULL AUTO_INCREMENT,
  `VARIETY_CUL` varchar(32) NOT NULL DEFAULT '''Data needed''',
  `COMMODITY_CUL` varchar(32) NOT NULL,
  `TLOW_CUL` float NOT NULL,
  `THIGH_CUL` float NOT NULL,
  `ELEVATION_LOW_CUL` int(11) NOT NULL,
  `ELEVATION_HIGH_CUL` int(11) NOT NULL,
  `SOIL_TYPE_CUL` varchar(200) NOT NULL,
  `SOIL_PH_MIN_CUL` float NOT NULL,
  `SOIL_PH_MAX_CUL` float NOT NULL,
  `SUNLIGHT_CUL` varchar(100) NOT NULL,
  `PRECIPITATION_MIN_CUL` int(11) NOT NULL,
  `PRECIPITATION_MAX_CUL` int(11) NOT NULL,
  PRIMARY KEY (`ID_CUL`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `cult`
--

INSERT INTO `cult` (`ID_CUL`, `VARIETY_CUL`, `COMMODITY_CUL`, `TLOW_CUL`, `THIGH_CUL`, `ELEVATION_LOW_CUL`, `ELEVATION_HIGH_CUL`, `SOIL_TYPE_CUL`, `SOIL_PH_MIN_CUL`, `SOIL_PH_MAX_CUL`, `SUNLIGHT_CUL`, `PRECIPITATION_MIN_CUL`, `PRECIPITATION_MAX_CUL`) VALUES
(1, 'Data needed', 'Maize', 16.7, 23.3, 0, 4000, 'well-drained loamy soils', 5, 8, '12.5 hours/day being suggested', 500, 700),
(2, 'Data needed', 'Mango', 23.9, 27, 0, 915, 'Good drainage critical. Rich, deep loam certainly contributes to maximum growth, but grows well in sand, gravel, and even oolitic limestone.Low tolerance for salts, boron and lawn herbicides . Like a ', 5, 7.5, 'bright sunny days and moderate humidity during flowering', 30, 0),
(3, 'Data needed', 'Papaya', 23, 27, 0, 1000, 'While doing best in light, porous soils rich in organic matterPapayas perform best on deep that are well drained. Heavy clay soils or acidic soils are not ideal. A topsoil depth of 1 m is preferable f', 5.5, 6.7, 'Full sun to light shade', 1500, 2000),
(4, 'Hawaiian', 'Pineapple', 18, 32, 0, 800, 'Loamy, well drained (dark brown and  reddish brown balsaltic and sandy loams preferred), slightly acidic', 4.5, 6.5, 'full sun, few clouds', 1000, 1100),
(5, '''Data needed''', 'Tamarind', 20, 29, 0, 1500, 'While doing best in light, porous soils rich in organic matter, Papayas perform best on deep that are well drained. Heavy clay soils or acidic soils are not ideal.', 4.5, 8.7, 'Likes direct sun, humidity', 500, 700),
(6, '''Data needed''', 'Yucca/Cassava', 25, 29, 0, 2000, 'Prefers soils with clay content < 18%.  Will not tolerate saline or waterlogged conditions. Under commercial conditions cassava extracts from the soil the following nutrients: 253 Kg N/Ha', 5.5, 7.5, 'Full sun, high humidity', 1900, 2000),
(7, '''Data needed''', 'Hibiscus (roselle)', 25, 35, 0, 900, 'Soil preparation should be deep, about 20 cm, and thorough. Roselle requires a permeable soil, a friable sandy loam with humus being preferable ', 4.5, 8, 'A sunny western or southern exposure that has  bright, direct light is best, hot dry, high humidity ', 1500, 2000),
(8, '''Data needed''', 'Banana', 27, 28, 0, 1800, 'Alluvial and volcanic soils. Rich organic soil', 6, 7.5, 'Full sunlight', 900, 1000),
(9, '''Data needed''', 'Coconut', 26, 27, 0, 700, 'Soil with proper drainage, good water-holding capacity.', 4, 8, 'Full sunlight', 1100, 1250),
(10, '''Data needed''', 'Rice', 21, 37, 0, 3000, 'good water retention capacity with good amount of clay and organic matter are ideal for rice cultivation', 5.5, 6.5, 'Full sunlight', 900, 1000),
(12, '''Data needed''', 'Sorghum', 26, 30, 0, 1500, 'Soils with clay loam or loam texture, having good water retention capacity', 6, 8.5, 'Full sunlight', 400, 750),
(13, '''Data needed''', 'Barley', 5, 27, 0, 3000, 'well drained, fertile loams and lighter clay soils. It tolerates loamy to heavy soils but will not do well in waterlogged Soils.', 6, 7.5, 'Full sunlight', 90, 430),
(14, '''Data needed''', 'Wheat', 20, 25, 0, 4000, 'Loam soil also soil with proper system of drainage', 5.8, 6.5, 'Full sunlight', 600, 800),
(15, '''Data needed''', 'Sweet potato', 15, 33, 1000, 1600, 'well-drained, light- and medium-textured soils ', 4.5, 7, 'full sunlight', 750, 1100),
(16, '''Data needed''', 'Taro', 21, 27, 0, 2400, 'fertile, friable soil that has a high water capacit and is rich in organic matte', 6, 6.8, 'Full sunlight', 1500, 1700),
(17, '''Data needed''', 'Millet', 12, 28, 800, 1800, 'It grows best in a well-drained fertile soil', 6, 7, 'Full sunlight', 250, 750),
(18, '''Data needed''', 'Yam', 17, 35, 0, 1400, 'Soil moisture at all depths. deep, fertile, well drained, loose, loams and sandy-loam soils with low levels of salinity', 5.5, 6.5, 'Full sunlight', 1200, 4000),
(19, '''Data needed''', 'Sugarcane', 20, 28, 0, 1700, 'The soil should be deep, humus-rich, well aerated and drained', 5, 7, 'Full sunlight', 1500, 1700),
(20, '''Data needed''', 'Soybeans', 21, 32, 0, 2000, 'Soybeans are sensitive to low pH', 6, 6.5, 'short-day plant', 400, 500),
(21, '''Data needed''', 'Guava', 3, 32, 0, 1500, 'Rich soils high in organic matter', 5, 7, 'Full sunlight', 1000, 2000),
(22, '''Data needed''', 'Cocoa', 25, 26, 400, 700, 'The soil on cocoa plantations should be deep, well-drained, and have sufficient water-retaining capacity', 4, 7.5, 'shade', 1000, 1100);

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
('2', 25, -25, NULL),
('4', 30, -30, NULL),
('3', 32, -23, NULL),
('1', 50, -40, NULL),
('6', 30, -30, NULL),
('7', 30, -30, NULL),
('8', 30, -30, NULL),
('5', 23, -23, NULL),
('9', 23, -60, NULL),
('10', 23, -23, NULL),
('12', 40, -40, NULL),
('13', 42, -70, NULL),
('14', 30, -25, NULL),
('15', 20, -40, NULL),
('16', 1, -1, NULL),
('17', 7, -9, NULL),
('18', 20, -20, NULL),
('19', 36, -31, NULL),
('20', 55, -55, NULL),
('21', 35, -35, NULL),
('22', 20, -20, NULL);

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

