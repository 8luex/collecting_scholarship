-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 26, 2023 at 11:04 PM
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
  `eventDate` date NOT NULL,
  `timeStart` time NOT NULL,
  `timeEnd` time NOT NULL,
  `hoursToReceive` int(11) NOT NULL,
  `image` text NOT NULL,
  `year` varchar(50) NOT NULL,
  `semester` int(1) NOT NULL,
  `max` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `activity`
--

INSERT INTO `activity` (`id`, `creator`, `name`, `detail`, `createdAt`, `location`, `eventDate`, `timeStart`, `timeEnd`, `hoursToReceive`, `image`, `year`, `semester`, `max`) VALUES
(1, 5000199, 'Cyber Team Heroes', 'ฝึกอบรมอาสาสมัครเยาวชนคนรุ่นใหม่ ป้องกันภัยทางไซเบอร์ (Cyber Team Heroes) เพื่อเป็นการสร้างช่องทางการประชาสัมพันธ์ การเผยแพร่ข้อมูล ขยายเครือข่ายอาสาสมัคร ผ่านนักศึกษาซึ่งเป็นกลุ่มที่มีความรู้และทักษะในการใช้เทคโนโลยีที่ดี', '2023-01-15 07:06:51', 'ตึก 11 ห้อง 904', '2022-12-08', '08:30:00', '12:30:00', 3, 'https://www2.rsu.ac.th/Upload/images/mk/2019/GENED/Polic/Cyber%20Team%20Heroes%20(4).jpg', '2565', 1, 100),
(2, 5000199, 'งานการแข่งขันรังสิตวิชาการ', 'ฝ่ายวิชาการและหน่อยงานที่เกี่ยวข้อง มหาวิทยาลัยรังสิต ได้จัดงานการแข่งขันรังสิตวิชาการ (รอบ Grand Champion) ประจำปีการศึกษา 2565 ซึ่งเป็นการแข่งขันเกี่ยวกับการเสนอแนวความคิดในการแก้ปัญหาของประเทศในรูปแบบสหวิทยาการของชั้นระดับมัธยมศึกษาปีที่ 4 - 6 ขึ้น', '2023-01-26 20:39:25', 'ตึก 17 ศาลาดนตรีสุริยเทพ มหาวิทยาลัยรังสิต ', '2023-01-20', '08:30:00', '12:30:00', 3, 'https://www2.rsu.ac.th/Success/images/04112565162155_Success_Wasin-rsu.jpg', '2565', 1, 10),
(3, 5000197, 'RSU Counseling & Psychological Services', 'สำนักงานสวัสดิการสุขภาพ มหาวิทยาลัยรังสิต ขอเชิญนักศึกษามหาวิทยาลัยรังสิต รวมถึงท่านผู้สนใจทุกท่าน เข้าร่วมโครงการพัฒนาทักษะชีวิตในหัวข้อ \"เรื่องซึมเศร้า เข้าใจได้”', '2023-01-26 20:39:40', 'ห้อง Auditorium ชั้น 1 อาคารรัตนคุณากร (ตึก11)  มหาวิทยาลัยรังสิต', '2023-01-09', '13:00:00', '16:00:00', 3, 'https://www2.rsu.ac.th/Success/images/15072562160038_Success_SarnrangsitOnline_Photo-Head_Template.jpg', '2565', 1, 10);

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
(2, 6300195, '2023-01-26 20:40:21', 'ช่วยงานอาจารย์', 'จัดเอกสาร พิมพ์เอกสาร', 'ตึก 11 ห้อง 904', '2023-01-14 11:19:16', 'https://www2.rsu.ac.th/Success/images/03112565120611_Success_erwin-2.jpg', 2565, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `activity_status`
--

CREATE TABLE `activity_status` (
  `activityID` int(10) NOT NULL,
  `studentID` int(7) NOT NULL,
  `status` varchar(50) NOT NULL,
  `timeEnroll` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `timeJoin` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `activity_status`
--

INSERT INTO `activity_status` (`activityID`, `studentID`, `status`, `timeEnroll`, `timeJoin`) VALUES
(1, 6300195, '0', '2023-01-15 07:17:50', NULL),
(3, 6300195, '0', '2023-01-15 07:18:01', NULL),
(2, 6300195, '1', '2023-01-15 07:24:20', '2023-01-20 08:30:00'),
(2, 6300196, '1', '2023-01-15 07:24:20', '2023-01-20 09:00:00');

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
(6300195, 'รมิดา', 'วิสุทธิ์วัฒนศักดิ์', '6300195', '14'),
(6300196, 'ดุสิต', 'บริสุทธิ์', '6300196', '02'),
(6300197, 'ธนกฤต', 'ขันธจิตต์', '6300197', '02');

-- --------------------------------------------------------

--
-- Table structure for table `student_connect`
--

CREATE TABLE `student_connect` (
  `lineID` varchar(255) NOT NULL,
  `studentID` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(5000197, 'วัชราภรณ์', 'จิตรชุ่ม', '5000197', '17'),
(5000198, 'สุธีราภรณ์', 'แสงจันทร์ศรี', '5000198', '17'),
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
-- Indexes for table `student_connect`
--
ALTER TABLE `student_connect`
  ADD PRIMARY KEY (`lineID`),
  ADD KEY `studentID` (`studentID`);

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
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `activity_self`
--
ALTER TABLE `activity_self`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6300198;

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
-- Constraints for table `student_connect`
--
ALTER TABLE `student_connect`
  ADD CONSTRAINT `student_connect_ibfk_1` FOREIGN KEY (`studentID`) REFERENCES `student` (`id`);

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
