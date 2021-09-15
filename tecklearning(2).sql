-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 15, 2021 at 05:25 AM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tecklearning`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_sendstaff_links`
--

CREATE TABLE `admin_sendstaff_links` (
  `asid` int(10) NOT NULL,
  `title` varchar(2000) NOT NULL,
  `email` varchar(2000) NOT NULL,
  `message` text NOT NULL,
  `about` int(3) NOT NULL DEFAULT '0',
  `personal` int(3) NOT NULL DEFAULT '0',
  `educational` int(3) NOT NULL DEFAULT '0',
  `bank` int(3) NOT NULL DEFAULT '0',
  `sndtme` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_sendstaff_links`
--

INSERT INTO `admin_sendstaff_links` (`asid`, `title`, `email`, `message`, `about`, `personal`, `educational`, `bank`, `sndtme`) VALUES
(7, 'sdsds', 'hlrinfotech@gmail.com', 'dsds\n Click this url to fill your Profile :http://18.217.120.86:8080/TeckStaffs/SubmitTeacherProfile.jsp', 0, 0, 0, 0, '2020-09-11 04:26:56'),
(8, 'ldmsdsm', 'hlrinfotech@gmail.com', 'dms.mds dsfmd\n Click this url to fill your Profile :http://18.217.120.86:8080/TeckStaffs/SubmitTeacherProfile.jsp', 0, 0, 0, 0, '2020-09-11 04:26:56'),
(9, 'fdlkfdlk fdlkfjd', 'hlrinfostech@gmail.com', 'fdlfdlfkd fldkfjdl\n Click this url to fill your Profile :http://18.217.120.86:8080/TeckStaffs/SubmitTeacherProfile.jsp', 0, 0, 0, 0, '2020-09-11 04:26:56');

-- --------------------------------------------------------

--
-- Table structure for table `careers`
--

CREATE TABLE `careers` (
  `cid` int(10) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `laname` varchar(50) NOT NULL,
  `email` varchar(2000) NOT NULL,
  `mobno` varchar(20) NOT NULL,
  `resume` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `careers`
--

INSERT INTO `careers` (`cid`, `fname`, `laname`, `email`, `mobno`, `resume`) VALUES
(1, 'rajesh', 'kumar', 'hlrinfotech@gmail.com', '9876543210', 'myresume'),
(2, 'ram', '', 'ramk@gmail.com', '9876654232', 'Jellyfish.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `contactas`
--

CREATE TABLE `contactas` (
  `cid` int(10) NOT NULL,
  `stud_name` varchar(100) NOT NULL,
  `parent_name` varchar(100) NOT NULL,
  `email` varchar(2000) NOT NULL,
  `mobno` varchar(20) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contactas`
--

INSERT INTO `contactas` (`cid`, `stud_name`, `parent_name`, `email`, `mobno`, `message`) VALUES
(1, 'Iniya', 'Rajesh', 'rajesh@teckwhiz.com', '9876543210', 'nkjxncxkcnx,cmnx ccxnm,cxn'),
(2, 'ram', 'Guru', 'ram@gmail.com', '9843258126', 'ncmnvcmvnc fdm fndfnd fdngff gnfgfgnf');

-- --------------------------------------------------------

--
-- Table structure for table `counselling`
--

CREATE TABLE `counselling` (
  `cid` int(10) NOT NULL,
  `mobilenumber` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `counselling`
--

INSERT INTO `counselling` (`cid`, `mobilenumber`) VALUES
(2, '9087654321'),
(3, '9876543210'),
(5, '6382556797'),
(6, '6382556797'),
(7, '6382556797'),
(8, '6382556797');

-- --------------------------------------------------------

--
-- Table structure for table `cousellingreport`
--

CREATE TABLE `cousellingreport` (
  `cid` int(10) NOT NULL,
  `cdate` date NOT NULL,
  `contnum` varchar(50) NOT NULL,
  `status` varchar(500) NOT NULL,
  `remarks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cousellingreport`
--

INSERT INTO `cousellingreport` (`cid`, `cdate`, `contnum`, `status`, `remarks`) VALUES
(6, '2021-01-08', '6382556797', 'Not Intrested', 'jkkh');

-- --------------------------------------------------------

--
-- Table structure for table `downloadapp`
--

CREATE TABLE `downloadapp` (
  `dis` int(10) NOT NULL,
  `mobile` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `emailsetting`
--

CREATE TABLE `emailsetting` (
  `eid` int(10) NOT NULL,
  `email` varchar(2000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `enrolltuition`
--

CREATE TABLE `enrolltuition` (
  `eid` int(10) NOT NULL,
  `uname` varchar(1000) NOT NULL,
  `email` varchar(2000) NOT NULL,
  `mobile` varchar(200) NOT NULL,
  `standard` varchar(2000) NOT NULL,
  `board` varchar(2000) NOT NULL,
  `subjects` text NOT NULL,
  `payment` varchar(2000) NOT NULL,
  `st` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enrolltuition`
--

INSERT INTO `enrolltuition` (`eid`, `uname`, `email`, `mobile`, `standard`, `board`, `subjects`, `payment`, `st`) VALUES
(1, 'rajesh', 'hlrinfotech@gmail.com', '6382556797', 'class 2', 'CBSE', 'English,Mathematics', 'Not sure, just want to look at option', 0),
(2, 'senthil', 'wishtopia.in@gmail.com', '6382556797', 'Class 6', 'null', '[Ljava.lang.String;@1971241', 'Within a month', 0),
(3, 'ari', 'rajubhai@gmail.com', '6382556797', 'Class 6', 'NIOS', 'Science,Physical Education,Hindi,Computers,Spanish,', 'Within a month', 0),
(4, 'admin', 'demo@android.com', '2', 'Class 7', 'ICSE', 'French,', 'Not sure, just want to look at options', 0);

-- --------------------------------------------------------

--
-- Table structure for table `enrolltuitionreport`
--

CREATE TABLE `enrolltuitionreport` (
  `cid` int(10) NOT NULL,
  `cdate` date NOT NULL,
  `contnum` varchar(50) NOT NULL,
  `status` varchar(500) NOT NULL,
  `remarks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enrolltuitionreport`
--

INSERT INTO `enrolltuitionreport` (`cid`, `cdate`, `contnum`, `status`, `remarks`) VALUES
(3, '2021-01-08', '6382556797', 'Not Intrested', 'jkkh');

-- --------------------------------------------------------

--
-- Table structure for table `filesharing`
--

CREATE TABLE `filesharing` (
  `fid` int(10) NOT NULL,
  `filename` varchar(2000) NOT NULL,
  `stud` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `filesharing`
--

INSERT INTO `filesharing` (`fid`, `filename`, `stud`, `created_at`) VALUES
(1, 'kola.jpg', 'all', '2020-09-22 16:00:27'),
(2, '', 'jack', '2020-09-22 16:13:33'),
(3, '', 'jack', '2020-09-22 16:14:14'),
(4, '', 'jack', '2020-09-22 16:15:50'),
(5, '', 'jack', '2020-09-22 16:17:00'),
(6, 'Jellyfish.jpg', 'all', '2020-09-22 16:18:25');

-- --------------------------------------------------------

--
-- Table structure for table `findtutor`
--

CREATE TABLE `findtutor` (
  `fid` int(10) NOT NULL,
  `studentname` varchar(100) NOT NULL,
  `mno` varchar(100) NOT NULL,
  `frmtme` varchar(100) NOT NULL,
  `totme` varchar(100) NOT NULL,
  `sub` varchar(100) NOT NULL,
  `staffid` varchar(100) NOT NULL DEFAULT ' ',
  `tuttype` int(10) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `findtutor`
--

INSERT INTO `findtutor` (`fid`, `studentname`, `mno`, `frmtme`, `totme`, `sub`, `staffid`, `tuttype`) VALUES
(3, 'rajesh', '9876543210', '04:57', '04:57', 'Botany', '2', 1);

-- --------------------------------------------------------

--
-- Table structure for table `fwd_ques`
--

CREATE TABLE `fwd_ques` (
  `fid` int(10) NOT NULL,
  `staffid` varchar(100) NOT NULL,
  `qid` varchar(100) NOT NULL,
  `sname` varchar(100) NOT NULL,
  `sub` varchar(100) NOT NULL,
  `start` varchar(100) NOT NULL,
  `end` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fwd_ques`
--

INSERT INTO `fwd_ques` (`fid`, `staffid`, `qid`, `sname`, `sub`, `start`, `end`) VALUES
(1, '31', '1', 'raj', 'Maths', '23-09-2020 5:00:00 PM', '23-09-2020 6:00:00 PM'),
(2, '31', '1', 'jack', 'Computer Science', '2020-09-24 16:00', '2020-09-25 06:00'),
(3, '31', '2', 'jack', 'Computer Science', '2020-09-24 16:00', '2020-09-25 06:00'),
(4, '31', '1', 'iniya', 'Computer Science', '2020-09-24 16:00', '2020-09-25 06:00'),
(5, '31', '2', 'iniya', 'Computer Science', '2020-09-24 16:00', '2020-09-25 06:00'),
(6, '31', '1', 'jack', 'Tamil', '09/26/2020 03:23', '09/26/2020 15:23'),
(7, '31', '1', 'jack', 'Tamil', '09/26/2020 03:23', '09/26/2020 15:23'),
(8, '31', '1', 'iniya', 'Tamil', '09/25/2020 07:35', '09/26/2020 19:35'),
(9, '31', '1', 'iniya', 'Tamil', '09/25/2020 07:35', '09/26/2020 19:35'),
(10, '31', '1', 'iniya', 'Tamil', '09/25/2020 07:35', '09/26/2020 19:35'),
(11, '31', '1', 'iniya', 'Tamil', '09/25/2020 07:35', '09/26/2020 19:35');

-- --------------------------------------------------------

--
-- Table structure for table `sms`
--

CREATE TABLE `sms` (
  `sid` int(10) NOT NULL,
  `url` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `staffs_educational`
--

CREATE TABLE `staffs_educational` (
  `eid` int(10) NOT NULL,
  `staffid` int(20) NOT NULL,
  `instution_name` varchar(3000) NOT NULL,
  `degree` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staffs_educational`
--

INSERT INTO `staffs_educational` (`eid`, `staffid`, `instution_name`, `degree`) VALUES
(29, 29, '', ''),
(35, 35, 'ewew', 'ewe'),
(36, 36, 'ewew', 'ewe'),
(37, 37, 'ewew', 'ewe'),
(38, 38, 'kln', 'mca'),
(39, 31, 'NGO college', 'MBA'),
(40, 32, 'wkf', 'MBA');

-- --------------------------------------------------------

--
-- Table structure for table `staffs_profile`
--

CREATE TABLE `staffs_profile` (
  `staffid` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(3000) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `gender` varchar(200) NOT NULL,
  `dob` varchar(200) NOT NULL,
  `subject` varchar(2000) NOT NULL,
  `address` text NOT NULL,
  `fathers_name` varchar(2000) NOT NULL,
  `alternatecon_num` varchar(20) NOT NULL,
  `pan_num` varchar(100) NOT NULL,
  `pan_img` varchar(3000) NOT NULL,
  `adhar_num` varchar(20) NOT NULL,
  `adhar_frnt_img` varchar(3000) NOT NULL,
  `adhar_bck_img` varchar(3000) NOT NULL,
  `happies` text NOT NULL,
  `abt` text NOT NULL,
  `bankname` varchar(100) NOT NULL,
  `ifsc` varchar(100) NOT NULL,
  `mirc` varchar(100) NOT NULL,
  `bnkimg` varchar(3000) NOT NULL,
  `bankaddres` varchar(3000) NOT NULL,
  `st` int(2) NOT NULL DEFAULT '0',
  `pwd` varchar(20) DEFAULT '123456',
  `llo` varchar(100) NOT NULL DEFAULT 'NO',
  `ll` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staffs_profile`
--

INSERT INTO `staffs_profile` (`staffid`, `first_name`, `last_name`, `email`, `phone`, `gender`, `dob`, `subject`, `address`, `fathers_name`, `alternatecon_num`, `pan_num`, `pan_img`, `adhar_num`, `adhar_frnt_img`, `adhar_bck_img`, `happies`, `abt`, `bankname`, `ifsc`, `mirc`, `bnkimg`, `bankaddres`, `st`, `pwd`, `llo`, `ll`) VALUES
(29, 'PRANAV', 'M', 'IAMMOHAN@GMAIL.COM', '9843258126', 'male', '1985-10-07', '', 'COIMB ATORE', 'COIMBATORE', '9894594962', 'BQHPMFGFG', 'Chrysanthemum.jpg', '123456789', 'Penguins.jpg', 'Jellyfish.jpg', '', '', 'MJHVGHJM', 'JUGVMHJVGMJ', '', 'Tulips.jpg', '', 0, '123456', 'NO', ''),
(31, 'aa', 'bb', 'hlrinfotech@gmail.com', '6382556797', 'male', '2020-10-10', 'TAMIL', 'dsd', 'dsd', '9876543210', 'fdfd', 'Jellyfish.jpg', '123456789', 'Hydrangeas.jpg', 'Koala.jpg', '', 'well knowledge about  teaching', 'sbi', 'sbi1003', '2323', 'Hydrangeas.jpg', 'ewe', 0, '123456', 'NO', ''),
(32, 'ram', 'kumar', 'wishtopia.in@gmail.com', '9876543210', 'male', '2021-01-03', '', 'coimbatore 635001', 'thangavel', '9876543210', '1212', 'Desert.jpg', '2121', 'Jellyfish.jpg', 'Penguins.jpg', 'wewe', 'wewew', '', '', '', '', '', 0, '123456', 'YES', 'Tamil');

-- --------------------------------------------------------

--
-- Table structure for table `staffs_school`
--

CREATE TABLE `staffs_school` (
  `schooid` int(10) NOT NULL,
  `staffid` int(10) NOT NULL,
  `schoolname` varchar(3000) NOT NULL,
  `wrkexp` int(10) NOT NULL,
  `board` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staffs_school`
--

INSERT INTO `staffs_school` (`schooid`, `staffid`, `schoolname`, `wrkexp`, `board`) VALUES
(30, 35, 'MOHAN', 1, 'CBSE'),
(31, 38, 'ee', 2, 'CBSE'),
(32, 31, 'brito', 2, 'ICSE'),
(33, 32, 'st james', 1, 'CBSE');

-- --------------------------------------------------------

--
-- Table structure for table `staffs_tution`
--

CREATE TABLE `staffs_tution` (
  `tutid` int(10) NOT NULL,
  `staffid` int(20) NOT NULL,
  `subject_name` varchar(2000) NOT NULL,
  `start_time` varchar(200) NOT NULL,
  `end_time` varchar(200) NOT NULL,
  `std` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staffs_tution`
--

INSERT INTO `staffs_tution` (`tutid`, `staffid`, `subject_name`, `start_time`, `end_time`, `std`) VALUES
(10, 29, '', '00:00', '00:00', ''),
(31, 35, 'cs', '11:22', '03:22', 'Nursery'),
(32, 35, 'cs', '11:22', '03:22', 'Juniorkg'),
(33, 35, 'cs', '11:22', '03:22', 'Seniorkg'),
(34, 35, 'cs', '11:22', '03:22', '1'),
(35, 35, 'cs', '11:22', '03:22', '2'),
(36, 35, 'cs', '11:22', '03:22', 'Nursery'),
(37, 36, 'cs', '11:22', '03:22', 'Nursery'),
(38, 36, 'cs', '11:22', '03:22', 'Juniorkg'),
(39, 36, 'cs', '11:22', '03:22', 'Seniorkg'),
(40, 36, 'cs', '11:22', '03:22', '1'),
(41, 36, 'cs', '11:22', '03:22', '2'),
(42, 36, 'cs', '11:22', '03:22', 'Nursery'),
(43, 37, 'cs', '11:22', '03:22', 'Nursery'),
(44, 37, 'cs', '11:22', '03:22', 'Juniorkg'),
(45, 37, 'cs', '11:22', '03:22', 'Seniorkg'),
(46, 37, 'cs', '11:22', '03:22', '1'),
(47, 37, 'cs', '11:22', '03:22', '2'),
(48, 37, 'cs', '11:22', '03:22', 'Nursery'),
(49, 31, 'maths', '11:26', '00:26', 'Nursery'),
(50, 32, 'maths', '11:06', '11:06', 'Nursery'),
(51, 32, 'maths', '11:06', '11:06', 'Juniorkg');

-- --------------------------------------------------------

--
-- Table structure for table `staff_abount`
--

CREATE TABLE `staff_abount` (
  `staffid` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(2000) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `dob` varchar(100) NOT NULL,
  `subject` varchar(1000) NOT NULL,
  `address` varchar(3000) NOT NULL,
  `st` int(10) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `staff_attendance`
--

CREATE TABLE `staff_attendance` (
  `aid` int(10) NOT NULL,
  `staffid` varchar(20) NOT NULL,
  `attend_date` varchar(100) NOT NULL,
  `logintime` varchar(50) NOT NULL,
  `logouttime` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff_attendance`
--

INSERT INTO `staff_attendance` (`aid`, `staffid`, `attend_date`, `logintime`, `logouttime`) VALUES
(1, '31', '25-09-2020', '11:20 PM', '12:20 AM'),
(2, '31', '26-09-2020', '00:20:54 AM', '00:22:00AM'),
(3, '31', '26-09-2020', '00:35:18 AM', '00:36:29 AM'),
(4, '31', '26-09-2020', '01:13:31 AM', '-'),
(5, '31', '24-09-2020', '01:14:52 AM', '-'),
(6, '31', '24-09-2020', '01:30:30 AM', '-'),
(7, '31', '23-09-2020', '01:32:06 AM', '-'),
(8, '31', '23-09-2020', '01:34:47 AM', '-'),
(9, '51', '25-09-2020', '11:20 PM', '12:20 AM'),
(10, '51', '26-09-2020', '00:20:54 AM', '00:22:00AM'),
(11, '51', '26-09-2020', '00:35:18 AM', '00:36:29 AM'),
(12, '51', '26-09-2020', '01:13:31 AM', '-'),
(13, '51', '24-09-2020', '01:14:52 AM', '-'),
(14, '51', '24-09-2020', '01:30:30 AM', '-'),
(15, '51', '23-09-2020', '01:32:06 AM', '-'),
(16, '51', '23-09-2020', '01:34:47 AM', '-'),
(17, '31', '26-09-2020', '22:50:31 PM', '-'),
(18, '31', '26-09-2020', '22:52:53 PM', '-'),
(19, '31', '26-09-2020', '22:59:54 PM', '-'),
(20, '31', '26-09-2020', '23:01:28 PM', '-'),
(21, '31', '26-09-2020', '23:04:20 PM', '-'),
(22, '31', '26-09-2020', '23:11:48 PM', '23:12:49 PM'),
(23, '31', '26-09-2020', '23:14:05 PM', '23:30:48 PM'),
(24, '31', '27-09-2020', '12:10:41 PM', '12:10:57 PM'),
(25, '31', '02-10-2020', '08:56:14 AM', '09:03:30 AM'),
(26, '31', '05-10-2020', '17:32:59 PM', '-'),
(27, '31', '09-10-2020', '00:26:06 AM', '-'),
(28, '31', '25-12-2020', '22:54:42 PM', '22:54:48 PM'),
(29, '31', '25-12-2020', '22:55:44 PM', '22:59:08 PM'),
(30, '31', '28-12-2020', '19:26:10 PM', '19:40:31 PM'),
(31, '31', '28-12-2020', '21:21:56 PM', '21:23:44 PM'),
(32, '31', '28-12-2020', '21:27:57 PM', '-'),
(33, '31', '28-12-2020', '23:21:20 PM', '-'),
(34, '31', '28-12-2020', '23:22:01 PM', '-'),
(35, '31', '28-12-2020', '23:24:04 PM', '-'),
(36, '31', '28-12-2020', '23:25:33 PM', '-'),
(37, '31', '28-12-2020', '23:59:44 PM', '-'),
(38, '31', '29-12-2020', '00:00:30 AM', '-'),
(39, '31', '29-12-2020', '20:05:50 PM', '-'),
(40, '31', '29-12-2020', '20:07:12 PM', '-'),
(41, '31', '29-12-2020', '20:07:45 PM', '-'),
(42, '31', '29-12-2020', '20:08:04 PM', '-'),
(43, '31', '29-12-2020', '22:59:42 PM', '23:00:55 PM'),
(44, '31', '30-12-2020', '23:14:08 PM', '23:23:49 PM'),
(45, '31', '03-01-2021', '23:53:21 PM', '01:47:42 AM'),
(46, '31', '04-01-2021', '18:58:33 PM', '-'),
(47, '29', '04-01-2021', '19:21:14 PM', '19:24:23 PM');

-- --------------------------------------------------------

--
-- Table structure for table `staff_chat`
--

CREATE TABLE `staff_chat` (
  `cid` int(10) NOT NULL,
  `staffid` varchar(100) NOT NULL,
  `query` text NOT NULL,
  `status` int(5) NOT NULL DEFAULT '0',
  `supportmsgdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `staff_question`
--

CREATE TABLE `staff_question` (
  `qid` int(10) NOT NULL,
  `staffid` varchar(20) NOT NULL,
  `question` text NOT NULL,
  `opt1` text NOT NULL,
  `opt2` text NOT NULL,
  `opt3` text NOT NULL,
  `opt4` text NOT NULL,
  `ans` text NOT NULL,
  `st` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff_question`
--

INSERT INTO `staff_question` (`qid`, `staffid`, `question`, `opt1`, `opt2`, `opt3`, `opt4`, `ans`, `st`) VALUES
(1, '31', 'who is father of computer', 'bill gates', 'lorry page', 'charless babbage', 'tin cook', 'option3', 1),
(2, '31', 'test q1', 't1', 't2', 't2', 't3', 'Option2', 1);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `stud_id` int(10) NOT NULL,
  `stud_name` varchar(200) NOT NULL,
  `stud_mobno` varchar(20) NOT NULL,
  `stud_pincode` varchar(10) NOT NULL,
  `stud_cls` varchar(20) NOT NULL,
  `stud_email` varchar(3000) NOT NULL DEFAULT 'nil',
  `stud_parents` varchar(1000) NOT NULL DEFAULT 'nil',
  `stud_school` varchar(3000) NOT NULL DEFAULT 'nil',
  `stud_image` varchar(3000) NOT NULL DEFAULT 'nil',
  `password` varchar(20) NOT NULL,
  `login_count` int(10) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`stud_id`, `stud_name`, `stud_mobno`, `stud_pincode`, `stud_cls`, `stud_email`, `stud_parents`, `stud_school`, `stud_image`, `password`, `login_count`) VALUES
(34, 'jack', '6382556797', '625020', 'nur', 'hlrinfotech@gmail.com', 'nil', 'nil', 'nil', '123', 1),
(39, 'rk', '9843258126', '625001', 'Class 1', 'raj@gmail.com', 'nil', 'nil', 'nil', '6se7iC', 1),
(36, 'iniya', '9965043035', '123456', 'nur', 'hlrinfotech@gmail.com', 'nil', 'nil', 'nil', '6223', 1),
(40, 'rajii', '8667748543', '123456', 'Class 5', 'raji@gmail.com', 'nil', 'nil', 'nil', 'kvpaGY', 1),
(41, 'rajii', '8667748543', '123456', 'Class 5', 'raji@gmail.com', 'nil', 'nil', 'nil', 'EKiB1r', 1),
(42, 'rajii', '8667748543', '123456', 'Class 5', 'raji@gmail.com', 'nil', 'nil', 'nil', 'yBbQrx', 1),
(43, 'rajesh', '6382556797', '625001', 'nur', 'rajesh@gmail.com', 'nil', 'nil', 'nil', '123456', 1);

-- --------------------------------------------------------

--
-- Table structure for table `student_attendance`
--

CREATE TABLE `student_attendance` (
  `aid` int(10) NOT NULL,
  `studid` varchar(20) NOT NULL,
  `attend_date` varchar(100) NOT NULL,
  `logintime` varchar(50) NOT NULL,
  `logouttime` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_attendance`
--

INSERT INTO `student_attendance` (`aid`, `studid`, `attend_date`, `logintime`, `logouttime`) VALUES
(1, '1', '25-09-2020', '11:20:00 PM', '12:20:00 PM'),
(2, '35', '02-10-2020', '08:32:52 AM', '-'),
(3, '35', '30-12-2020', '22:39:30 PM', '-'),
(4, '35', '31-12-2020', '14:40:40 PM', '15:18:59 PM'),
(5, '38', '31-12-2020', '19:29:31 PM', '-'),
(6, '35', '01-01-2021', '17:34:18 PM', '-'),
(7, '35', '01-01-2021', '17:43:31 PM', '-'),
(8, '35', '01-01-2021', '17:44:44 PM', '-'),
(9, '35', '01-01-2021', '17:47:44 PM', '-'),
(10, '35', '01-01-2021', '17:49:09 PM', '-'),
(11, '35', '01-01-2021', '17:51:38 PM', '-'),
(12, '35', '01-01-2021', '17:55:40 PM', '-'),
(13, '35', '01-01-2021', '18:00:11 PM', '-'),
(14, '35', '01-01-2021', '18:27:00 PM', '-'),
(15, '34', '01-01-2021', '23:48:03 PM', '-'),
(16, '34', '01-01-2021', '23:48:29 PM', '-'),
(17, '34', '01-01-2021', '23:48:55 PM', '-'),
(18, '34', '01-01-2021', '23:50:02 PM', '-'),
(19, '34', '01-01-2021', '23:52:22 PM', '-'),
(20, '39', '01-01-2021', '23:56:05 PM', '-'),
(21, '34', '02-01-2021', '00:10:08 AM', '-'),
(22, '34', '03-01-2021', '13:05:04 PM', '-'),
(23, '34', '03-01-2021', '13:27:20 PM', '-'),
(24, '34', '04-01-2021', '16:48:15 PM', '-'),
(25, '40', '04-01-2021', '23:50:28 PM', '-'),
(26, '40', '04-01-2021', '23:57:35 PM', '-'),
(27, '40', '04-01-2021', '23:58:20 PM', '-'),
(28, '34', '16-05-2021', '10:38:51 AM', '-'),
(29, '2', '12-09-2021', '10:02:13 AM', '-'),
(30, '2', '12-09-2021', '14:54:01 PM', '-'),
(31, '2', '12-09-2021', '14:54:29 PM', '-'),
(32, '2', '12-09-2021', '18:36:31 PM', '-');

-- --------------------------------------------------------

--
-- Table structure for table `student_onlinetest_res`
--

CREATE TABLE `student_onlinetest_res` (
  `rid` int(10) NOT NULL,
  `studid` varchar(100) NOT NULL,
  `staffid` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `mark` int(10) NOT NULL,
  `curdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_onlinetest_res`
--

INSERT INTO `student_onlinetest_res` (`rid`, `studid`, `staffid`, `subject`, `mark`, `curdate`) VALUES
(1, '1', '31', 'computer science', 4, '2020-10-02 03:14:12');

-- --------------------------------------------------------

--
-- Table structure for table `tekytale`
--

CREATE TABLE `tekytale` (
  `sid` int(11) NOT NULL,
  `stud_name` varchar(100) NOT NULL,
  `schoolname` text NOT NULL,
  `stud_class` varchar(200) NOT NULL,
  `dob` varchar(100) NOT NULL,
  `pincode` varchar(10) NOT NULL,
  `title` text NOT NULL,
  `ttfile` text NOT NULL,
  `ttdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tekytale`
--

INSERT INTO `tekytale` (`sid`, `stud_name`, `schoolname`, `stud_class`, `dob`, `pincode`, `title`, `ttfile`, `ttdate`) VALUES
(1, 'Rajesh', 'de brito hr sec school', 'KG', '2018-05-23', '625001', 'test', 'test.doc', '2020-07-22 04:03:23'),
(17, 'RAMKUMAR', 'brito', 'Class 1', '2018-02-20', '2455', 'kg', 'Koala.jpg', '2020-07-22 04:56:24'),
(20, 'RAJESH', 'Jrrjrj', 'kg', '2020-07-07', '4948158', '4747', 'IMG-20200727-WA0000.jpg', '2020-07-27 08:51:23');

-- --------------------------------------------------------

--
-- Table structure for table `tution`
--

CREATE TABLE `tution` (
  `tutid` int(10) NOT NULL,
  `studentname` varchar(100) NOT NULL,
  `contnum` varchar(20) NOT NULL,
  `pincode` varchar(10) NOT NULL,
  `email` varchar(1000) NOT NULL DEFAULT 'nil',
  `board` varchar(100) NOT NULL,
  `tut_time` varchar(50) NOT NULL,
  `endtme` varchar(100) NOT NULL,
  `standard` varchar(50) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `txtsub` varchar(500) NOT NULL DEFAULT 'nil'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tution`
--

INSERT INTO `tution` (`tutid`, `studentname`, `contnum`, `pincode`, `email`, `board`, `tut_time`, `endtme`, `standard`, `subject`, `txtsub`) VALUES
(6, 'sas', '9876543210', '654321', 'sasasas@do.com', 'sasasas@do.com', '10:30', '11:30', 'Class 7', 'Zoology', '');

-- --------------------------------------------------------

--
-- Table structure for table `videoclassmapping`
--

CREATE TABLE `videoclassmapping` (
  `mapid` int(10) NOT NULL,
  `staffid` varchar(100) NOT NULL,
  `studentid` varchar(100) NOT NULL,
  `cdate` date NOT NULL,
  `ctime` varchar(100) NOT NULL,
  `todate` date NOT NULL,
  `totime` varchar(100) NOT NULL,
  `st` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videoclassmapping`
--

INSERT INTO `videoclassmapping` (`mapid`, `staffid`, `studentid`, `cdate`, `ctime`, `todate`, `totime`, `st`) VALUES
(17, '29', '39', '2021-01-05', '02:12', '2021-01-05', '04:25', 0),
(18, '29', '36', '2021-01-05', '02:12', '2021-01-05', '04:25', 0);

-- --------------------------------------------------------

--
-- Table structure for table `web_askdoubts`
--

CREATE TABLE `web_askdoubts` (
  `aid` int(10) NOT NULL,
  `mobno` varchar(20) NOT NULL,
  `stadard` varchar(1000) NOT NULL,
  `subject` varchar(1000) NOT NULL,
  `questions` text,
  `clrdbts` varchar(20) NOT NULL,
  `uploadimg` varchar(2000) DEFAULT NULL,
  `uploadattach` varchar(2000) DEFAULT NULL,
  `ans` text,
  `st` int(2) NOT NULL DEFAULT '1',
  `txtsub` varchar(100) DEFAULT NULL,
  `txtcall` varchar(100) DEFAULT NULL,
  `qdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ansdate` varchar(100) DEFAULT NULL,
  `comments` text,
  `ansfile` varchar(2000) NOT NULL DEFAULT '-',
  `rating` int(5) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `web_askdoubts`
--

INSERT INTO `web_askdoubts` (`aid`, `mobno`, `stadard`, `subject`, `questions`, `clrdbts`, `uploadimg`, `uploadattach`, `ans`, `st`, `txtsub`, `txtcall`, `qdate`, `ansdate`, `comments`, `ansfile`, `rating`) VALUES
(1, '6382556797', 'class1', 'english', 'djsld', 'no', 'kola.jpg', 'kola.jpg', 'ans', 1, 'nilsub', 'hlrinfotech@gmail.com', '2020-09-17 19:12:47', '2020-09-18', '', '-', 0),
(2, '6382556797', 'nur', 'Tamil', '', 'no', 'Jellyfish.jpg', '6382556797', ' ', 1, '', 'hlrinfotech@gmail.com', '2020-09-17 19:47:37', ' ', '', '-', 0),
(3, '6382556797', 'nur', 'Tamil', '', 'no', 'Jellyfish.jpg', '6382556797', ' ', 1, '', 'hlrinfotech@gmail.com', '2020-09-17 19:48:30', ' ', '', '-', 0),
(4, '8667748543', 'NURSERY', 'Tamil', 'test question1?', 'yes', 'Chrysanthemum.jpg', '6382556797', ' ', 1, '', 'hlrinfotech@gmail.com', '2021-09-12 04:41:08', ' ', '', '-', 0),
(5, '6382556797', 'Class 12', 'Tamil', 'test 2 question?', 'yes', 'Desert.jpg', '6382556797', ' ', 1, '', 'hlrinfotech@gmail.com', '2021-09-12 04:48:19', ' ', '', '-', 0),
(6, '6382556797', 'Class 10', 'Tamil', 'dsdsds', 'yes', 'Desert.jpg', '6382556797', ' ', 1, '', 'hlrinfotech@gmail.com', '2021-09-12 09:25:27', ' ', '', '-', 0),
(7, '6382556797', 'Class 10', 'Tamil', 'dsdsds', 'yes', 'Desert.jpg', '6382556797', ' ', 1, '', 'hlrinfotech@gmail.com', '2021-09-12 09:38:28', ' ', '', '-', 0),
(8, '6382556797', 'Class 12', 'Chemistry', 'cxc,xcx', 'no', 'Hydrangeas.jpg', '6382556797', 'test ans', 1, '', 'rajesh@gmail.com', '2021-09-12 13:06:56', ' ', '', 'testfile', 0);

-- --------------------------------------------------------

--
-- Table structure for table `web_tech_staffs`
--

CREATE TABLE `web_tech_staffs` (
  `tid` int(10) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `phoneNumber` varchar(11) NOT NULL,
  `gender` varchar(11) NOT NULL,
  `subject_export` varchar(50) NOT NULL,
  `email` varchar(1000) NOT NULL,
  `dob` varchar(50) NOT NULL,
  `martial_status` varchar(50) NOT NULL,
  `referal_code` varchar(50) NOT NULL,
  `degree` varchar(50) NOT NULL,
  `pincode` varchar(50) NOT NULL,
  `st` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `web_tech_staffs`
--

INSERT INTO `web_tech_staffs` (`tid`, `fullname`, `phoneNumber`, `gender`, `subject_export`, `email`, `dob`, `martial_status`, `referal_code`, `degree`, `pincode`, `st`) VALUES
(8, 'rajesh', '9876543210', 'MALE', 'Tamil', 'hlrinfotech@gmail.com', '', 'Married', 'nil', 'Bachelor Degree', '625010', 1),
(9, 'sdsdsd', '9876', 'MALE', 'Tamil', 'gm@chakkraresidency.com', '2020-09-07', 'Married', '1212', 'Bachelor Degree', '625010', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_sendstaff_links`
--
ALTER TABLE `admin_sendstaff_links`
  ADD PRIMARY KEY (`asid`);

--
-- Indexes for table `careers`
--
ALTER TABLE `careers`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `contactas`
--
ALTER TABLE `contactas`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `counselling`
--
ALTER TABLE `counselling`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `cousellingreport`
--
ALTER TABLE `cousellingreport`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `downloadapp`
--
ALTER TABLE `downloadapp`
  ADD PRIMARY KEY (`dis`);

--
-- Indexes for table `emailsetting`
--
ALTER TABLE `emailsetting`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `enrolltuition`
--
ALTER TABLE `enrolltuition`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `enrolltuitionreport`
--
ALTER TABLE `enrolltuitionreport`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `filesharing`
--
ALTER TABLE `filesharing`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `findtutor`
--
ALTER TABLE `findtutor`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `fwd_ques`
--
ALTER TABLE `fwd_ques`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `sms`
--
ALTER TABLE `sms`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `staffs_educational`
--
ALTER TABLE `staffs_educational`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `staffs_profile`
--
ALTER TABLE `staffs_profile`
  ADD PRIMARY KEY (`staffid`);

--
-- Indexes for table `staffs_school`
--
ALTER TABLE `staffs_school`
  ADD PRIMARY KEY (`schooid`);

--
-- Indexes for table `staffs_tution`
--
ALTER TABLE `staffs_tution`
  ADD PRIMARY KEY (`tutid`);

--
-- Indexes for table `staff_abount`
--
ALTER TABLE `staff_abount`
  ADD PRIMARY KEY (`staffid`);

--
-- Indexes for table `staff_attendance`
--
ALTER TABLE `staff_attendance`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `staff_chat`
--
ALTER TABLE `staff_chat`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `staff_question`
--
ALTER TABLE `staff_question`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`stud_id`);

--
-- Indexes for table `student_attendance`
--
ALTER TABLE `student_attendance`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `student_onlinetest_res`
--
ALTER TABLE `student_onlinetest_res`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `tution`
--
ALTER TABLE `tution`
  ADD PRIMARY KEY (`tutid`);

--
-- Indexes for table `videoclassmapping`
--
ALTER TABLE `videoclassmapping`
  ADD PRIMARY KEY (`mapid`);

--
-- Indexes for table `web_askdoubts`
--
ALTER TABLE `web_askdoubts`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `web_tech_staffs`
--
ALTER TABLE `web_tech_staffs`
  ADD PRIMARY KEY (`tid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_sendstaff_links`
--
ALTER TABLE `admin_sendstaff_links`
  MODIFY `asid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `careers`
--
ALTER TABLE `careers`
  MODIFY `cid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contactas`
--
ALTER TABLE `contactas`
  MODIFY `cid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `counselling`
--
ALTER TABLE `counselling`
  MODIFY `cid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cousellingreport`
--
ALTER TABLE `cousellingreport`
  MODIFY `cid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `downloadapp`
--
ALTER TABLE `downloadapp`
  MODIFY `dis` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emailsetting`
--
ALTER TABLE `emailsetting`
  MODIFY `eid` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `enrolltuition`
--
ALTER TABLE `enrolltuition`
  MODIFY `eid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `enrolltuitionreport`
--
ALTER TABLE `enrolltuitionreport`
  MODIFY `cid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `filesharing`
--
ALTER TABLE `filesharing`
  MODIFY `fid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `findtutor`
--
ALTER TABLE `findtutor`
  MODIFY `fid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `fwd_ques`
--
ALTER TABLE `fwd_ques`
  MODIFY `fid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `sms`
--
ALTER TABLE `sms`
  MODIFY `sid` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staffs_educational`
--
ALTER TABLE `staffs_educational`
  MODIFY `eid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `staffs_profile`
--
ALTER TABLE `staffs_profile`
  MODIFY `staffid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `staffs_school`
--
ALTER TABLE `staffs_school`
  MODIFY `schooid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `staffs_tution`
--
ALTER TABLE `staffs_tution`
  MODIFY `tutid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `staff_abount`
--
ALTER TABLE `staff_abount`
  MODIFY `staffid` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff_attendance`
--
ALTER TABLE `staff_attendance`
  MODIFY `aid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `staff_chat`
--
ALTER TABLE `staff_chat`
  MODIFY `cid` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff_question`
--
ALTER TABLE `staff_question`
  MODIFY `qid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `stud_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `student_attendance`
--
ALTER TABLE `student_attendance`
  MODIFY `aid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `student_onlinetest_res`
--
ALTER TABLE `student_onlinetest_res`
  MODIFY `rid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tution`
--
ALTER TABLE `tution`
  MODIFY `tutid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `videoclassmapping`
--
ALTER TABLE `videoclassmapping`
  MODIFY `mapid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `web_askdoubts`
--
ALTER TABLE `web_askdoubts`
  MODIFY `aid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `web_tech_staffs`
--
ALTER TABLE `web_tech_staffs`
  MODIFY `tid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
