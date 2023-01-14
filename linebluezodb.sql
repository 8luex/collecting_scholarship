-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 14, 2023 at 11:22 AM
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
-- Database: `linebluezodb`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE `activity` (
  `id` int(10) NOT NULL,
  `creator` int(7) NOT NULL,
  `name` varchar(50) NOT NULL,
  `detail` text NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `location` text NOT NULL,
  `eventDate` int(11) NOT NULL,
  `timeStart` time NOT NULL,
  `timeEnd` time NOT NULL,
  `hoursToReceive` int(11) NOT NULL,
  `image` text NOT NULL,
  `year` varchar(50) NOT NULL,
  `semester` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `activity_self`
--

CREATE TABLE `activity_self` (
  `id` int(10) NOT NULL,
  `studentID` int(7) NOT NULL,
  `createAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `name` varchar(50) NOT NULL,
  `detial` text NOT NULL,
  `location` text NOT NULL,
  `eventDate` datetime NOT NULL,
  `image` text NOT NULL,
  `year` int(50) NOT NULL,
  `semester` int(1) NOT NULL,
  `hoursToReceive` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `activity_self`
--

INSERT INTO `activity_self` (`id`, `studentID`, `createAt`, `name`, `detial`, `location`, `eventDate`, `image`, `year`, `semester`, `hoursToReceive`) VALUES
(2, 6300195, '2023-01-14 10:20:40', 'ช่วยงานอาจารย์', 'จัดเอกสาร พิมพ์เอกสาร', 'ตึก 11 ห้อง 904', '2023-01-14 11:19:16', '', 2565, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `activity_status`
--

CREATE TABLE `activity_status` (
  `activityID` int(10) NOT NULL,
  `studentID` int(7) NOT NULL,
  `status` varchar(50) NOT NULL,
  `timeEnroll` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `timeJoin` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `id` varchar(2) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`id`, `name`) VALUES
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
  `pass` varchar(50) NOT NULL,
  `faculty` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `fname`, `lname`, `pass`, `faculty`) VALUES
(6300195, 'รมิดา', 'วิสุทธิ์วัฒนศักดิ์', '6300195', '14');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `id` int(7) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `faculty` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`id`, `fname`, `lname`, `pass`, `faculty`) VALUES
(5000199, 'อรุชา', 'พัฒนานุกูล', '5000199', '14');

-- --------------------------------------------------------

--
-- Table structure for table `verify_self`
--

CREATE TABLE `verify_self` (
  `activity_self` int(10) NOT NULL,
  `status` varchar(50) NOT NULL,
  `teacherID` int(7) NOT NULL,
  `timeVerify` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `verify_self`
--

INSERT INTO `verify_self` (`activity_self`, `status`, `teacherID`, `timeVerify`) VALUES
(2, '1', 5000199, '2023-01-14 10:21:21');

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
-- Indexes for table `activity_self`
--
ALTER TABLE `activity_self`
  ADD PRIMARY KEY (`id`),
  ADD KEY `studentID` (`studentID`);

--
-- Indexes for table `activity_status`
--
ALTER TABLE `activity_status`
  ADD KEY `activityID` (`activityID`,`studentID`),
  ADD KEY `studentID` (`studentID`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`),
  ADD KEY `faculty` (`faculty`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`),
  ADD KEY `faculty` (`faculty`);

--
-- Indexes for table `verify_self`
--
ALTER TABLE `verify_self`
  ADD KEY `activity_self` (`activity_self`,`teacherID`),
  ADD KEY `teacherID` (`teacherID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity`
--
ALTER TABLE `activity`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `activity_self`
--
ALTER TABLE `activity_self`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6300196;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5000200;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activity`
--
ALTER TABLE `activity`
  ADD CONSTRAINT `activity_ibfk_1` FOREIGN KEY (`creator`) REFERENCES `teacher` (`id`);

--
-- Constraints for table `activity_self`
--
ALTER TABLE `activity_self`
  ADD CONSTRAINT `activity_self_ibfk_1` FOREIGN KEY (`studentID`) REFERENCES `student` (`id`);

--
-- Constraints for table `activity_status`
--
ALTER TABLE `activity_status`
  ADD CONSTRAINT `activity_status_ibfk_1` FOREIGN KEY (`studentID`) REFERENCES `student` (`id`),
  ADD CONSTRAINT `activity_status_ibfk_2` FOREIGN KEY (`activityID`) REFERENCES `activity` (`id`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`faculty`) REFERENCES `faculty` (`id`);

--
-- Constraints for table `teacher`
--
ALTER TABLE `teacher`
  ADD CONSTRAINT `teacher_ibfk_1` FOREIGN KEY (`faculty`) REFERENCES `faculty` (`id`);

--
-- Constraints for table `verify_self`
--
ALTER TABLE `verify_self`
  ADD CONSTRAINT `verify_self_ibfk_1` FOREIGN KEY (`teacherID`) REFERENCES `teacher` (`id`),
  ADD CONSTRAINT `verify_self_ibfk_2` FOREIGN KEY (`activity_self`) REFERENCES `activity_self` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
