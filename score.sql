-- phpMyAdmin SQL Dump
-- version 3.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 09, 2014 at 08:13 PM
-- Server version: 5.5.25a
-- PHP Version: 5.4.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `code_tri`
--

-- --------------------------------------------------------

--
-- Table structure for table `score`
--

CREATE TABLE IF NOT EXISTS `score` (
  `pid1` varchar(8) NOT NULL,
  `pid2` varchar(8) DEFAULT NULL,
  `pid3` varchar(8) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  UNIQUE KEY `pid1_2` (`pid1`,`pid2`,`pid3`),
  UNIQUE KEY `pid1_3` (`pid1`,`pid2`,`pid3`),
  UNIQUE KEY `pid1_4` (`pid1`,`pid2`,`pid3`),
  KEY `pid1` (`pid1`),
  KEY `pid2` (`pid2`),
  KEY `pid3` (`pid3`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `score`
--

INSERT INTO `score` (`pid1`, `pid2`, `pid3`, `score`) VALUES
('NTF00000', '', '', NULL),
('NTF00001', '', '', NULL),
('', 'NTF00001', '', NULL),
('', '', 'NTF00001', NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
