-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主机： 127.0.0.1
-- 生成日期： 2023-05-27 11:45:32
-- 服务器版本： 10.4.28-MariaDB
-- PHP 版本： 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `sourcecodester_healthcaredb`
--

-- --------------------------------------------------------

--
-- 表的结构 `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `email` varchar(500) NOT NULL,
  `admin_pswd` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 转存表中的数据 `admin`
--

INSERT INTO `admin` (`admin_id`, `email`, `admin_pswd`) VALUES
(1, 'admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- 表的结构 `appointment`
--

CREATE TABLE `appointment` (
  `app_id` int(11) NOT NULL,
  `booking_date` varchar(500) NOT NULL,
  `booking_time` varchar(500) NOT NULL,
  `permission` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `pid` int(11) NOT NULL,
  `sid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 转存表中的数据 `appointment`
--

INSERT INTO `appointment` (`app_id`, `booking_date`, `booking_time`, `permission`, `date`, `pid`, `sid`) VALUES
(35, '2023-05-12', '8:00 PM To 8:30 PM', 'Deleted', '2023-05-08', 6, 22),
(36, '2023-05-13', '8:30 PM To 9:00 PM', 'Pending', '2023-05-08', 7, 22),
(37, '2023-05-14', '2:00 PM To 2:30 PM', 'Pending', '2023-05-08', 13, 22),
(38, '2023-05-15', '8:00 PM To 8:30 PM', 'Pending', '2023-05-08', 8, 22),
(39, '2023-05-16', '8:00 PM To 8:30 PM', 'Pending', '2023-05-08', 14, 22),
(40, '2023-05-18', '8:00 PM To 8:30 PM', 'Pending', '2023-05-08', 15, 22),
(41, '2023-05-17', '3:30 PM To 4:00 PM', 'Pending', '2023-05-08', 16, 22),
(42, '2023-05-19', '2:00 PM To 2:30 PM', 'Pending', '2023-05-08', 17, 22),
(43, '2023-05-21', '7:30 PM To 8:00 PM', 'Approved', '2023-05-08', 18, 22),
(44, '2023-05-23', '2:30 PM To 3:30 PM', 'Approved', '2023-05-08', 19, 22),
(45, '2023-05-30', '9:00  AM To 9:30 AM', 'Approved', '2023-05-08', 20, 22),
(47, '2023-05-20', '7:30 PM To 8:00 PM', 'Pending', '2023-05-08', 12, 34),
(48, '2023-05-10', '8:30 PM To 9:00 PM', 'Pending', '2023-05-08', 12, 24),
(49, '2023-05-12', '7:30 PM To 8:00 PM', 'Canceled', '2023-05-08', 12, 26),
(50, '2023-05-21', '8:00 PM To 8:30 PM', 'Approved', '2023-05-08', 12, 36),
(51, '2023-05-23', '8:00 PM To 8:30 PM', 'Approved', '2023-05-08', 12, 37),
(52, '2023-05-30', '8:30 PM To 9:00 PM', 'Deleted', '2023-05-08', 12, 25),
(53, '2023-05-10', '8:00 PM To 8:30 PM', 'Canceled', '2023-05-20', 12, 22),
(54, '2023-05-27', '8:00 PM To 8:30 PM', 'Canceled', '2023-05-20', 12, 22),
(55, '2023-05-27', '8:00 PM To 8:30 PM', 'Canceled', '2023-05-20', 12, 22),
(57, '2023-05-11', '8:30 PM To 9:00 PM', 'Canceled', '2023-05-20', 12, 22),
(58, '2023-05-25', '9:00  AM To 9:30 AM', 'Deleted', '2023-05-24', 6, 22),
(59, '2023-05-27', '9:00  AM To 9:30 AM', 'Deleted', '2023-05-24', 6, 22),
(60, '2023-05-31', '9:00  AM To 9:30 AM', 'Pending', '2023-05-24', 6, 22);

-- --------------------------------------------------------

--
-- 表的结构 `comment`
--

CREATE TABLE `comment` (
  `c_id` int(11) NOT NULL,
  `name` varchar(5000) NOT NULL,
  `gmail` varchar(500) NOT NULL,
  `text` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 转存表中的数据 `comment`
--

INSERT INTO `comment` (`c_id`, `name`, `gmail`, `text`, `date`) VALUES
(28, 'merina', 'merina@gmail.com', 'i want to read more articles', '2023-05-19 07:46:36'),
(29, 'anika', 'anika@gmail.com', 'i want to know more', '2023-05-19 02:47:11'),
(30, 'anika', 'anika@gmail.com', 'i want to know more', '2023-05-19 07:04:23'),
(31, 'akira', 'akira@gmail.com', 'soman', '2023-05-19 01:57:21'),
(33, 's', 'akira@gmail.com', 'sonam kapoore', '2023-05-21 05:14:16'),
(34, 's', 'akira@gmail.com', 'sonam kapoore', '2023-05-21 06:44:04'),
(35, 'qqq', 'akira@gmail.com', 'hm', '2023-05-22 07:03:22'),
(36, 'qqq', 'akira@gmail.com', 'hm', '2023-05-21 07:40:36'),
(37, 'qqq', 'akira@gmail.com', 'hm', '2023-05-23 08:41:07'),
(38, 'qqq', 'akira@gmail.com', 'hm', '2023-05-21 07:55:00');

-- --------------------------------------------------------

--
-- 表的结构 `consulting_schedule`
--

CREATE TABLE `consulting_schedule` (
  `consulting_id` int(11) NOT NULL,
  `Day_Time1` text NOT NULL,
  `Day_Time2` text NOT NULL,
  `Day_Time3` text NOT NULL,
  `Day_Time4` text NOT NULL,
  `Day_Time5` text NOT NULL,
  `Day_Time6` text NOT NULL,
  `Day_Time7` text NOT NULL,
  `d_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 转存表中的数据 `consulting_schedule`
--

INSERT INTO `consulting_schedule` (`consulting_id`, `Day_Time1`, `Day_Time2`, `Day_Time3`, `Day_Time4`, `Day_Time5`, `Day_Time6`, `Day_Time7`, `d_id`) VALUES
(33, 'Saturday 6:30 PM To 12:00 PMSaturday 12:30 AM To 5:30 AM', 'Sunday 6:30 PM To 12:00 PMSunday 12:30 AM To 5:30 AM', 'Monday 6:30 PM To 12:00 PMMonday 12:30 AM To 5:30 AM', 'Tuesday 6:30 PM To 12:00 PMTuesday 12:30 AM To 5:30 AM', 'Wednesday 6:30 PM To 12:00 PMWednesday 12:30 AM To 5:30 AM', 'Thursday 6:30 PM To 12:00 PMThursday 12:30 AM To 5:30 AM', 'Friday 6:30 PM To 12:00 PMFriday 12:30 AM To 5:30 AM', 1234017),
(34, 'Saturday 6:30 PM To 12:00 PMSaturday 12:30 AM To 5:30 AM', 'Sunday 6:30 PM To 12:00 PMSunday 12:30 AM To 5:30 AM', 'Monday 6:30 PM To 12:00 PMMonday 12:30 AM To 5:30 AM', 'Tuesday 6:30 PM To 12:00 PMTuesday 12:30 AM To 5:30 AM', 'Wednesday 6:30 PM To 12:00 PMWednesday 12:30 AM To 5:30 AM', 'Thursday 6:30 PM To 12:00 PMThursday 12:30 AM To 5:30 AM', 'Friday 6:30 PM To 12:00 PMFriday 12:30 AM To 5:30 AM', 1234018),
(35, 'Saturday 6:30 PM To 12:00 PMSaturday 12:30 AM To 5:30 AM', 'Sunday 6:30 PM To 12:00 PMSunday 12:30 AM To 5:30 AM', 'Monday 6:30 PM To 12:00 PMMonday 12:30 AM To 5:30 AM', 'Tuesday 6:30 PM To 12:00 PMTuesday 12:30 AM To 5:30 AM', 'Wednesday 6:30 PM To 12:00 PMWednesday 12:30 AM To 5:30 AM', 'Thursday 6:30 PM To 12:00 PMThursday 12:30 AM To 5:30 AM', 'Friday 6:30 PM To 12:00 PMFriday 12:30 AM To 5:30 AM', 1234019);

-- --------------------------------------------------------

--
-- 表的结构 `doctor`
--

CREATE TABLE `doctor` (
  `id` int(11) NOT NULL,
  `f_name` varchar(500) NOT NULL,
  `l_name` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `contact` varchar(500) NOT NULL,
  `specialist` varchar(500) NOT NULL,
  `qualification` varchar(500) NOT NULL,
  `DOB` date NOT NULL,
  `gender` varchar(500) NOT NULL,
  `bmdc_reg_num` int(11) NOT NULL,
  `address` text NOT NULL,
  `pswd` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `permission` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 转存表中的数据 `doctor`
--

INSERT INTO `doctor` (`id`, `f_name`, `l_name`, `email`, `contact`, `specialist`, `qualification`, `DOB`, `gender`, `bmdc_reg_num`, `address`, `pswd`, `date`, `permission`) VALUES
(1, 'janobe', 'test', 'janobe@gmail.com', '12345678900', 'medicine', 'MBBS, MRCP ( UK ) , ECFMG ( USA ) ,', '1981-05-13', 'male', 56867, 'Outram Rd', 'janobe', '2023-05-20', 'Approved'),
(1234017, 'Dr. Chuanao', 'Zhou', 'chuanao@gmail.com', '11111111111', 'medicine', 'MBBS, DTCD, FCPS Associate Professor & Head of Department', '2001-07-13', 'male', 56766, 'The Medical Centre Location: House # 84, Road # 7/A, ShaMasjid Road Dhanmondi, Dhaka', 'chuanao', '2023-05-01', 'Approved'),
(1234018, 'Dr. Sohel Mahmud', 'Arafat', 'Arafat@gmail.com', '01717351631', 'medicine', 'MBBS, FCPS Associate Professor', '1966-06-23', 'male', 56767, 'Ibn Sina Diagnostic & Imaging Center Location: House # 48, Road # 9/A, Satmasjid Road', '123456789', '2023-05-08', 'Approved'),
(1234019, 'Dr. Muhammad Jahir', 'Uddin', 'Uddin@gmail.com', '01717351631', 'medicine', 'MBBS, FCPS ( Medicine ), MD ( Internal Medicine ), MACP ( USA ) Associate Professor', '1968-09-28', 'male', 56768, 'Ibn Sina Diagnostic & Imaging Center House # 48, Road # 9/A, Dhanmondi, SAtmasjid Road', '123456789', '2023-05-08', 'Approved'),
(1234020, 'Dr. Md. Abul Kalam ', 'Azad', 'Azad@gmail.com', '01729350383', 'medicine', 'MBBS, FCPS Associate Professor', '1969-09-29', 'male', 56769, 'Padma Diagnostic Center Ltd 245/2, New Circular Road, Malibagh, Dhaka, Bangladesh', '123456789', '2023-05-08', 'Approved'),
(1234021, 'Dr. Mohammad Hyder', 'Ali', 'Ali@gmail.com', '01715024100', 'medicine', 'MBBS, FCPS Associate Professor', '1970-09-01', 'male', 56770, 'City Hospital Ltd. 1/8, Block-E, Lalmatia, Satmosjid Road, Mohammadpur, Dhaka â€“ 1207, Bangladesh', '123456789', '2023-05-08', 'Approved'),
(1234022, 'Dr. Amit', 'Kapoor', 'Kapoor@gmail.com', '01728401661', 'Orthopedic', 'MBBS, MS (Ortho.), DNB (Ortho.),Consultant', '1970-09-02', 'male', 56771, 'Apolo Hospital,Location: Plot # 81, Block # E, Bashundhara R/A, Dhaka - 1229, Bangladesh', '123456789', '2023-05-08', 'Approved'),
(1234023, 'Dr. Abu Jafar', 'Chowdhury', 'Chowdhury@gmail.com', '01711701234', 'Orthopedic', 'MBBS, MS ( Ortho ),Assistant Professor', '1972-09-03', 'male', 56772, 'Chamber: Labaid Specialized Hospital Location: House # 6, Road # 4, Dhanmondi, Dhaka - 1205', '123456789', '2023-05-08', 'Approved'),
(1234024, 'Professor Dr. Kh. Abdul', 'Awal', 'Awal@gmail.com', '01711701234', 'Orthopedic', 'Qualification : MBBS, MS, FICS Designation: Professor & Director', '1973-09-08', 'male', 56772, 'Chamber: Green Life Medical College & Hospital Location: 32 Green Road ( Biruttom K. M Shafiullah Sarak ) , Dhanmondi,', '123456789', '2023-05-08', 'Approved'),
(1234026, 'Dr. Shyamal', 'Debnath', 'Debnath@gmail.com', '01711701234', 'Orthopedic', 'MBBS,.MS(Ortho) Designation : Associate Professor', '1977-09-15', 'male', 56778, 'Chamber: Green Life Hospital Limited Location: 25 A, Green Road, Dhanmondi Dhaka-1205', '123456789', '2023-05-08', 'Approved'),
(1234027, 'Dr. Maliha', 'Rashid', 'Rashid@gmail.com', '01711701234', 'gynecologist', 'MBBS, FCPS (Gynae & Obs) Professor of Obstetrics & Gynaecology and Academic Coordinator', '1980-09-02', 'female', 56773, 'Central Hospital Ltd. Chamber: Dhanmondi, Dhaka, Bangladesh', '123456789', '2023-05-08', 'Approved'),
(1234028, 'Dr. Nasima', 'Shaheen', 'Shaheen@gmail.com', '01711701234', 'gynecologist', 'MBBS, DGO, MCPS, FCPS Consultant', '1981-09-28', 'female', 56775, 'Square Hospital Limited Address: 18/F West, Bir Uttam Qazi, Nuruzzaman Road, Panthapath, Dhaka 1205, Bangladesh', '123456789', '2023-05-08', 'Approved'),
(1234029, 'Dr. Nasrin', 'Zulfiqar', 'Zulfiqar@gmail.com', '01711701234', 'gynecologist', 'MBBS, DGO, FCPS, Fellow Reproductive Medicine & Assisted Reproductive Techniques (KKIV, Singapore) Coordinator & Senior Consultant', '1982-09-24', 'female', 567780, 'Apollo Hospital, Dhaka Plot # 81, Block # E, Basudhara R/A, Dhaka â€“ 1229', '123456789', '2023-05-08', 'Approved'),
(1234030, 'Dr. Gulshan', 'Ara', 'Ara@gmail.com', '01711701234', 'gynecologist', 'MBBS,MCPS,  FCPS (BCPS), MS(Gynae&Obs.), Trained in Advanced Laparoscopic Surgery(India) Coordinator & Senior Consultant', '1983-09-10', 'female', 56781, 'Apollo Hospitals Dhaka Plot # 81, Block # E, Basudhara R/A, Dhaka â€“ 1229', '123456789', '2023-05-08', 'Pending'),
(1234031, 'Dr. Amreen Sadika', 'Sayeed', 'Sayeed@gmail.com', '01711701234', 'gynecologist', 'MBBS, DGO ( DU ) Consultant', '1983-09-23', 'female', 56782, 'Ibrahim General Hospital & DCEC â€“ Dhanmondi Location: House # 42, Road # 10/A, Dhanmondi R/A, Dhaka â€“ 1209, Bangladesh', '123456789', '2023-05-08', 'Pending'),
(1234032, 'Dr. Md. Abdullah', 'Khan', 'Khan@gmail.com', '01711701234', 'dentist', 'Qualification : BDS, PGT ( Japan ) Designation : Consultant', '1981-09-01', 'male', 56783, 'Chamber: Metropolitan Dental Location: Sel Green Center, 30, Green Road, Dhaka - 1205, Bangladesh', '123456789', '2023-05-08', 'Approved'),
(1234033, 'Dr. M. A.', 'Sikder', 'Sikder@gmail.com', '01711701234', 'dentist', 'Qualification : BDS, Ph.D ( Japan ) Designation : Consultant', '1983-09-28', 'male', 56785, 'Chamber: Smile Specialised Dental & Research Center Location: 12 Gaznabi Road, College Gate, Mohammadpur, Dhaka - 1207, Bangladesh', '123456789', '2023-05-08', 'Approved'),
(1234034, 'Dr. Mohammed Shafi', 'Ullah', 'Ullah@gmail.com', '01711701234', 'dentist', 'Qualification : MBBS, MS, BDS, MCPS, MDRA(USA) Designation : Associate Professor & Head of Department', '1983-09-21', 'male', 56786, 'Chamber: Islami Bank Central Hospital Location: 30, Anjuman Mafidul Islam Road, Kakrail , Dhaka-1000', '123456789', '2023-05-08', 'Approved'),
(1234035, ' Dr. Nurul', 'Amin', 'DrNurulAmin@gmail.com', '01711701234', 'dentist', 'Qualification : BDS, PhD ( Japan ) Designation : Associate Professor & Head, Department of Oral & Maxillofacial Surgery', '1983-09-29', 'male', 56787, 'Chamber: Smile Specialised Dental & Research Center Location: 75, Satmasjid Road, Dhanmondi R/A, Dhaka - 1209', '123456789', '2023-05-08', 'Pending'),
(1234036, 'Dr. Salahuddin ', 'Swapon', 'Swapon@gmail.com', '01711701234', 'dentist', 'Qualification : B.D.S, FCPS Designation : Assistant Professor & Head of Department ( CIDCH )', '1981-09-28', 'male', 56789, 'Chamber: Sudeen Dental Care Location: 20, Green Road, Rangs Taz tower, Dhanmondi, Dhaka - 1205', '123456789', '2023-05-08', 'Pending'),
(1234037, 'Dr. Golam Haider', 'Rasul', 'Rasul@gmail.com', '01711701234', 'cardiologist', 'FCPS, FRCS (Glasgow) Consultant', '1983-09-28', 'male', 56790, 'United Hospital Limited Plot #15,Road #71,Gulshan, Dhaka-1212, Bangladesh', '123456789', '2023-05-08', 'Approved'),
(1234038, 'Dr. Sajal Krishna', 'Banerjee', 'Banerjee@gmail.com', '01711701234', 'dentist', 'MBBS, MD (Cardiology), FACC, FESC Professor of Cardiology', '1983-09-28', 'male', 56791, 'Holding no-11, Popular Tower, Popular Diagnostic Center Limited, Shantinagar-Dhaka', '123456789', '2023-05-08', 'Approved'),
(1234039, 'Dr. Lutfor ', 'Rahman', 'Rahman@gmail.com', '01711701234', 'cardiologist', 'MBBS, MS (CTS) Chief Cardiac Surgeon, Labiad Cardiac Hospital', '1991-09-28', 'male', 56792, 'Labiad Cardiac Hospital House#1, Road # 4, Dhanmondi, Dhaka-1205', '123456789', '2023-05-08', 'Approved'),
(1234040, 'Dr. Fazlur', 'Rahman', 'DrFazlurRahman@gmail.com', '01711701234', 'cardiologist', 'MBBS, MCPS ( Medicine ), Dcard, MD ( Card ) Cardiology /Heart Specialist', '1983-09-22', 'male', 56793, 'hamber: Anwer Khan Modern Hospital Ltd. House # 17, Road # 8, Dhanmondi, Dhaka â€“ 1205, Bangladesh', '123456789', '2023-05-08', 'Approved'),
(1234041, 'Dr. Md. Abdul Kader', 'Mollah', 'Mollah@gmail.com', '01711701234', 'cardiologist', 'MBBS, FCPS ( Medicine ) , MD ( Cardiology ) Professor', '1983-09-28', 'male', 56795, 'Labaid Specialized Hospital House # 6, Road # 4, Dhanmondi, Dhaka â€“ 1205', '123456789', '2023-05-08', 'Approved');

-- --------------------------------------------------------

--
-- 表的结构 `doc_message`
--

CREATE TABLE `doc_message` (
  `m_d_id` int(11) NOT NULL,
  `d_text` text NOT NULL,
  `u_text` text NOT NULL,
  `pid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- 表的结构 `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `text` text NOT NULL,
  `d_text` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 转存表中的数据 `message`
--

INSERT INTO `message` (`id`, `pid`, `sid`, `text`, `d_text`, `date`) VALUES
(1, 12, 22, 'hello', 'gcngc', '2023-05-19 08:40:24');

-- --------------------------------------------------------

--
-- 表的结构 `schedule`
--

CREATE TABLE `schedule` (
  `s_id` int(11) NOT NULL,
  `Day_Time1` varchar(500) NOT NULL,
  `Day_Time2` varchar(500) NOT NULL,
  `Day_Time3` varchar(500) NOT NULL,
  `Day_Time4` varchar(500) NOT NULL,
  `Day_Time5` varchar(5000) NOT NULL,
  `Day_Time6` varchar(5000) NOT NULL,
  `Day_Time7` varchar(5000) NOT NULL,
  `d_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 转存表中的数据 `schedule`
--

INSERT INTO `schedule` (`s_id`, `Day_Time1`, `Day_Time2`, `Day_Time3`, `Day_Time4`, `Day_Time5`, `Day_Time6`, `Day_Time7`, `d_id`) VALUES
(22, 'Saturday 6:00 AM To 12:00 AM', '', '', '', '', '', '', 1234017),
(23, 'Saturday 9:00 AM To 9:00 PM', 'Sunday 9:00 AM To 9:00 PM', 'Monday 9:00 AM To 9:00 PM', 'Tuesday 9:00 AM To 9:00 PM', 'Wednesday 9:00 AM To 9:00 PM', 'Thursday 9:00 AM To 9:00 PM', 'Friday 9:00 AM To 9:00 PM', 1234018),
(24, 'Saturday 9:00 AM To 9:00 PM', 'Sunday 9:00 AM To 9:00 PM', 'Monday 9:00 AM To 9:00 PM', 'Tuesday 9:00 AM To 9:00 PM', 'Wednesday 9:00 AM To 9:00 PM', 'Thursday 9:00 AM To 9:00 PM', 'Friday 9:00 AM To 9:00 PM', 1234019),
(25, 'Saturday 9:00 AM To 9:00 PM', 'Sunday 9:00 AM To 9:00 PM', 'Monday 9:00 AM To 9:00 PM', 'Tuesday 9:00 AM To 9:00 PM', 'Wednesday 9:00 AM To 9:00 PM', 'Thursday 9:00 AM To 9:00 PM', 'Friday 9:00 AM To 9:00 PM', 1234022),
(26, 'Saturday 9:00 AM To 9:00 PM', 'Sunday 9:00 AM To 9:00 PM', 'Monday 9:00 AM To 9:00 PM', 'Tuesday 9:00 AM To 9:00 PM', 'Wednesday 9:00 AM To 9:00 PM', 'Thursday 9:00 AM To 9:00 PM', 'Friday 9:00 AM To 9:00 PM', 1234023),
(27, 'Saturday 9:00 AM To 9:00 PM', 'Sunday 9:00 AM To 9:00 PM', 'Monday 9:00 AM To 9:00 PM', 'Tuesday 9:00 AM To 9:00 PM', 'Wednesday 9:00 AM To 9:00 PM', 'Thursday 9:00 AM To 9:00 PM', 'Friday 9:00 AM To 9:00 PM', 1234024),
(28, 'Saturday 9:00 AM To 9:00 PM', 'Sunday 9:00 AM To 9:00 PM', 'Monday 9:00 AM To 9:00 PM', 'Tuesday 9:00 AM To 9:00 PM', 'Wednesday 9:00 AM To 9:00 PM', 'Thursday 9:00 AM To 9:00 PM', 'Friday 9:00 AM To 9:00 PM', 1234027),
(29, 'Saturday 9:00 AM To 9:00 PM', 'Sunday 9:00 AM To 9:00 PM', 'Monday 9:00 AM To 9:00 PM', 'Tuesday 9:00 AM To 9:00 PM', 'Wednesday 9:00 AM To 9:00 PM', 'Thursday 9:00 AM To 9:00 PM', 'Friday 9:00 AM To 9:00 PM', 1234028),
(30, 'Saturday 9:00 AM To 9:00 PM', 'Sunday 9:00 AM To 9:00 PM', 'Monday 9:00 AM To 9:00 PM', 'Tuesday 9:00 AM To 9:00 PM', 'Wednesday 9:00 AM To 9:00 PM', 'Thursday 9:00 AM To 9:00 PM', 'Friday 9:00 AM To 9:00 PM', 1234029),
(31, 'Saturday 9:00 AM To 9:00 PM', 'Sunday 9:00 AM To 9:00 PM', 'Monday 9:00 AM To 9:00 PM', 'Tuesday 9:00 AM To 9:00 PM', 'Wednesday 9:00 AM To 9:00 PM', 'Thursday 9:00 AM To 9:00 PM', 'Friday 9:00 AM To 9:00 PM', 1234032),
(32, 'Saturday 9:00 AM To 9:00 PM', 'Sunday 9:00 AM To 9:00 PM', 'Monday 9:00 AM To 9:00 PM', 'Tuesday 9:00 AM To 9:00 PM', 'Wednesday 9:00 AM To 9:00 PM', 'Thursday 9:00 AM To 9:00 PM', 'Friday 9:00 AM To 9:00 PM', 1234033),
(33, 'Saturday 9:00 AM To 9:00 PM', 'Sunday 9:00 AM To 9:00 PM', 'Monday 9:00 AM To 9:00 PM', 'Tuesday 9:00 AM To 9:00 PM', 'Wednesday 9:00 AM To 9:00 PM', 'Thursday 9:00 AM To 9:00 PM', 'Friday 9:00 AM To 9:00 PM', 1234034),
(34, 'Saturday 9:00 AM To 9:00 PM', 'Sunday 9:00 AM To 9:00 PM', 'Monday 9:00 AM To 9:00 PM', 'Tuesday 9:00 AM To 9:00 PM', 'Wednesday 9:00 AM To 9:00 PM', 'Thursday 9:00 AM To 9:00 PM', 'Friday 9:00 AM To 9:00 PM', 1234037),
(35, 'Saturday 9:00 AM To 9:00 PM', 'Sunday 9:00 AM To 9:00 PM', 'Monday 9:00 AM To 9:00 PM', 'Tuesday 9:00 AM To 9:00 PM', 'Wednesday 9:00 AM To 9:00 PM', 'Thursday 9:00 AM To 9:00 PM', 'Friday 9:00 AM To 9:00 PM', 1234038),
(36, 'Saturday 9:00 AM To 9:00 PM', 'Sunday 9:00 AM To 9:00 PM', 'Monday 9:00 AM To 9:00 PM', 'Tuesday 9:00 AM To 9:00 PM', 'Wednesday 9:00 AM To 9:00 PM', 'Thursday 9:00 AM To 9:00 PM', 'Friday 9:00 AM To 9:00 PM', 1234039),
(37, 'Saturday 9:00 AM To 9:00 PM', 'Sunday 9:00 AM To 9:00 PM', 'Monday 9:00 AM To 9:00 PM', 'Tuesday 9:00 AM To 9:00 PM', 'Wednesday 9:00 AM To 9:00 PM', 'Thursday 9:00 AM To 9:00 PM', 'Friday 9:00 AM To 9:00 PM', 1234040);

-- --------------------------------------------------------

--
-- 表的结构 `tbl_comment`
--

CREATE TABLE `tbl_comment` (
  `comment_id` int(11) NOT NULL,
  `parent_comment_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `comment_sender_name` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 转存表中的数据 `tbl_comment`
--

INSERT INTO `tbl_comment` (`comment_id`, `parent_comment_id`, `comment`, `comment_sender_name`, `date`) VALUES
(5, 0, 'very nice', 'monika@gmail.com', '2023-05-08 04:58:06'),
(6, 0, 'good one', 'anika@gmail.com', '2023-05-08 04:08:40'),
(7, 0, 'nice', 'rabby@gmail.com', '2023-05-08 06:09:40');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `f_name` varchar(500) NOT NULL,
  `l_name` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `contact` varchar(500) NOT NULL,
  `address` text NOT NULL,
  `DOB` date NOT NULL,
  `gender` varchar(500) NOT NULL,
  `maritialstatus` varchar(500) NOT NULL,
  `pswd` varchar(500) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `f_name`, `l_name`, `email`, `contact`, `address`, `DOB`, `gender`, `maritialstatus`, `pswd`, `date`) VALUES
(6, 'Yujian', 'Ao', 'yujian@gmail.com', '00000000000', 'Aljunied', '1999-08-18', 'male', 'single', 'yujian', '2023-05-10'),
(7, 'onika', 'hossain', 'onika@gmail.com', '01867785022', 'null', '1995-08-26', 'female', 'single', '123456789', '2023-05-03'),
(8, 'rabby', 'shaon', 'rabby@gmail.com', '1', 'null', '1995-08-25', 'male', 'single', '123456789', '2023-05-06'),
(12, 'monika', 'monika', 'merina@gmail.com', '01711701234', 'moghbazar', '1996-04-04', 'female', '', '123456789', '2023-05-24'),
(13, 'Sharmin', 'Prysly', 'sharmin@gmail.com', '01711701212', '', '1996-04-04', 'female', '', '123456789', '2023-05-04'),
(14, 'Niamul', 'kabir', 'niamul@gmail.com', '01711701212', '', '1995-09-13', 'male', '', '123456789', '2023-05-08'),
(15, 'Sudipto', 'Majumdar', 'sudipto@gmail.com', '01711701212', '', '1995-08-28', 'male', '', '123456789', '2023-05-20'),
(16, 'Sohanur', 'Rahman', 'sohan@gmail.com', '01711701212', '', '1995-09-01', 'male', '', '123456789', '2023-05-13'),
(17, 'Nishat', 'tasnim', 'nishat@gmail.com', '01711701212', '', '1996-09-14', 'female', '', '123456789', '2023-05-15'),
(18, 'Jinia', 'Islam', 'jinia@gmail.com', '01711701212', '', '1996-09-07', 'female', '', '123456789', '2023-05-23'),
(19, 'Rupa', 'Ahmed', 'rupa@gmail.com', '01711701212', '', '1996-07-06', 'female', '', '123456789', '2023-05-17'),
(20, 'juena', 'akhter', 'juena@gmail.com', '01711701212', '', '1996-06-07', 'female', '', '123456789', '2023-05-22');

--
-- 转储表的索引
--

--
-- 表的索引 `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- 表的索引 `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`app_id`),
  ADD KEY `pid` (`pid`),
  ADD KEY `sid` (`sid`);

--
-- 表的索引 `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`c_id`);

--
-- 表的索引 `consulting_schedule`
--
ALTER TABLE `consulting_schedule`
  ADD PRIMARY KEY (`consulting_id`),
  ADD KEY `d_id` (`d_id`);

--
-- 表的索引 `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `doc_message`
--
ALTER TABLE `doc_message`
  ADD PRIMARY KEY (`m_d_id`),
  ADD KEY `pid` (`pid`),
  ADD KEY `sid` (`sid`);

--
-- 表的索引 `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`),
  ADD KEY `sid` (`sid`);

--
-- 表的索引 `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`s_id`),
  ADD KEY `d_id` (`d_id`);

--
-- 表的索引 `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- 表的索引 `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `appointment`
--
ALTER TABLE `appointment`
  MODIFY `app_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- 使用表AUTO_INCREMENT `comment`
--
ALTER TABLE `comment`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- 使用表AUTO_INCREMENT `consulting_schedule`
--
ALTER TABLE `consulting_schedule`
  MODIFY `consulting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- 使用表AUTO_INCREMENT `doctor`
--
ALTER TABLE `doctor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1234044;

--
-- 使用表AUTO_INCREMENT `doc_message`
--
ALTER TABLE `doc_message`
  MODIFY `m_d_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `schedule`
--
ALTER TABLE `schedule`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- 使用表AUTO_INCREMENT `tbl_comment`
--
ALTER TABLE `tbl_comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- 限制导出的表
--

--
-- 限制表 `appointment`
--
ALTER TABLE `appointment`
  ADD CONSTRAINT `appointment_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `appointment_ibfk_2` FOREIGN KEY (`sid`) REFERENCES `schedule` (`s_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `consulting_schedule`
--
ALTER TABLE `consulting_schedule`
  ADD CONSTRAINT `consulting_schedule_ibfk_1` FOREIGN KEY (`d_id`) REFERENCES `doctor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `doc_message`
--
ALTER TABLE `doc_message`
  ADD CONSTRAINT `doc_message_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `schedule` (`s_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `doc_message_ibfk_2` FOREIGN KEY (`pid`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `message_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `message_ibfk_2` FOREIGN KEY (`sid`) REFERENCES `schedule` (`s_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `schedule`
--
ALTER TABLE `schedule`
  ADD CONSTRAINT `schedule_ibfk_1` FOREIGN KEY (`d_id`) REFERENCES `doctor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
