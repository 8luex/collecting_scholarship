-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2022 at 02:18 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `collecting_scholarship`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE `activity` (
  `id` int(7) NOT NULL,
  `creator` int(7) NOT NULL,
  `name` varchar(50) NOT NULL,
  `detail` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(7) NOT NULL,
  `pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `major`
--

CREATE TABLE `major` (
  `id` varchar(2) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `major`
--

INSERT INTO `major` (`id`, `name`) VALUES
('01', 'คณะศิลปศาสตร์'),
('02', 'คณะบริหารธุรกิจ'),
('03', 'คณะพยาบาลศาสตร์'),
('04', 'วิทยาลัยนิเทศศาสตร์'),
('05', 'วิทยาลัยเภสัชศาสตร์'),
('06', 'วิทยาลัยการออกแบบ'),
('07', 'คณะกายภาพบำบัดและเวชศาสตร์การกีฬา'),
('08', 'คณะเทคนิคการแพทย์'),
('10', 'คณะสถาปัตยกรรมศาสตร์'),
('11', 'วิทยาลัยวิศวกรรมศาสตร์'),
('12', 'วิทยาลัยแพทยศาสตร์'),
('13', 'คณะวิทยาศาสตร์'),
('14', 'วิทยาลัยนวัตกรรมดิจิทัลเทคโนโลยี'),
('16', 'วิทยาลัยการท่องเที่ยว การบริการ และกีฬา'),
('17', 'คณะนิติศาสตร์'),
('18', 'สถาบันเศรษฐศาสตร์'),
('19', 'วิทยาลัยการแพทย์แผนตะวันออก'),
('20', 'วิทยาลัยดนตรี'),
('21', 'วิทยาลัยนวัตกรรมสังคม'),
('22', 'คณะบัญชี'),
('23', 'วิทยาลัยทันตแพทยศาสตร์'),
('25', 'ทัศนมาตรศาสตร์'),
('26', 'สถาบันการบิน'),
('34', 'คณะดิจิทัลอาร์ต'),
('35', 'สถาบันรัฐศาสตร์'),
('36', 'คณะนวัตกรรมเกษตร'),
('37', 'คณะเทคโนโลยีอาหาร'),
('39', 'คณะอาชญาวิทยาและการบริหารงานยุติธรรม'),
('40', 'คณะรังสีเทคนิค'),
('41', 'วิทยาลัยวิศวกรรมชีวการแพทย์');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(7) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `tel` varchar(10) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `birthday` date NOT NULL,
  `major` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `fname`, `lname`, `tel`, `pass`, `birthday`, `major`) VALUES
(6300195, 'รมิดา', 'วิสุทธิ์วัฒนศักดิ์', '0981954166', '6300195', '2001-10-17', '14');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `id` int(7) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`id`),
  ADD KEY `creator` (`creator`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `major`
--
ALTER TABLE `major`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`),
  ADD KEY `major` (`major`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activity`
--
ALTER TABLE `activity`
  ADD CONSTRAINT `activity_ibfk_1` FOREIGN KEY (`creator`) REFERENCES `teacher` (`id`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`major`) REFERENCES `major` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
