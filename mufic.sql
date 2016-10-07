-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2016 at 05:40 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mufic`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `email` varchar(40) NOT NULL,
  `type` varchar(20) NOT NULL,
  `pass` varchar(30) NOT NULL,
  UNIQUE KEY `email` (`email`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`email`, `type`, `pass`) VALUES
('ahmed@gmail.com', 'Second', '123456789'),
('al_magic2030@yahoo.com', 'Third', '123456789'),
('mahmoud@gmail.com', 'General', '123456789'),
('mohamed@gmail.com', 'Fourth', '123456789'),
('nady@gmail.com', 'First', '123456789');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE IF NOT EXISTS `files` (
  `code` varchar(20) NOT NULL,
  `file_source` blob NOT NULL,
  `filename` varchar(50) NOT NULL,
  `upload_file` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lec_info`
--

CREATE TABLE IF NOT EXISTS `lec_info` (
  `code` varchar(20) NOT NULL,
  `project` varchar(30) NOT NULL,
  `instructor` varchar(50) NOT NULL,
  `time` bigint(20) NOT NULL,
  `place` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `material`
--

CREATE TABLE IF NOT EXISTS `material` (
  `code` varchar(30) NOT NULL,
  `subject_name` varchar(30) NOT NULL,
  `instructor` varchar(50) NOT NULL,
  `semester` int(11) NOT NULL,
  `dept` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `section_info`
--

CREATE TABLE IF NOT EXISTS `section_info` (
  `code` varchar(20) NOT NULL,
  `sec_id` int(11) NOT NULL,
  `demonstrator` varchar(50) NOT NULL,
  `time` bigint(20) NOT NULL,
  `place` varchar(50) NOT NULL,
  PRIMARY KEY (`sec_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `email` varchar(100) NOT NULL,
  `id` varchar(20) NOT NULL,
  `dept` varchar(10) NOT NULL,
  `year` varchar(20) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `country` varchar(30) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`,`phone_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`email`, `id`, `dept`, `year`, `first_name`, `last_name`, `pass`, `country`, `phone_number`) VALUES
('al_magic2030@yahoo.com', '12345', 'CS', 'Third', 'moaaz', 'mohamed', '123456789', 'Egypt', '0123456789'),
('kjcnjkc', 'cnckxnc', 'cxnkcnx', 'cxkncx', 'xcnknxc', 'ckznkzxc', 'cxkncx', 'ckxncn', 'cxknkcnx'),
('kmcxklmc', 'cxlkjnxckhjcxc', 'xcklncion', 'c;xmkcxmmc', ';lmklmkxzm', 'ckckxj', 'cxklnkcxnj', 'ckxkjckixj', 'kncxknkxnc'),
(';,;mcxklmcx', 'lpmcxmx', 'lcmxklmx', 'kckx,l,', ';mkcmk', 'cxklmckm', 'llmnxc,n', 'cx;lcxmlcx;l', 'cxplcmx');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
