-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 09, 2025 at 09:03 PM
-- Server version: 8.0.42
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fraternity_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `grade_levels`
--

CREATE TABLE `grade_levels` (
  `grade_id` int NOT NULL,
  `label` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `grade_levels`
--

INSERT INTO `grade_levels` (`grade_id`, `label`) VALUES
(1, 'Freshman'),
(2, 'Sophomore'),
(3, 'Junior'),
(4, 'Senior'),
(5, 'Alumni');

-- --------------------------------------------------------

--
-- Table structure for table `majors`
--

CREATE TABLE `majors` (
  `major_id` int NOT NULL,
  `major_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `majors`
--

INSERT INTO `majors` (`major_id`, `major_name`) VALUES
(1, 'Business'),
(2, 'Communications'),
(3, 'Computer Science'),
(4, 'Economics'),
(5, 'Engineering'),
(6, 'Finance'),
(7, 'History'),
(8, 'Marketing'),
(9, 'Political Science'),
(10, 'Psychology'),
(11, 'Sociology'),
(12, 'Sports Management');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `member_id` int NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`member_id`, `first_name`, `last_name`, `email`, `password`) VALUES
(1, 'Dylan', 'Moore', 'dylan.moore602@topper.wku.edu', ''),
(2, 'Kyle', 'Johnson', 'kyle.johnson998@topper.wku.edu', ''),
(3, 'Tyler', 'Thomas', 'tyler.thomas359@topper.wku.edu', ''),
(4, 'Josh', 'Johnson', 'josh.johnson331@topper.wku.edu', ''),
(5, 'Jake', 'Martinez', 'jake.martinez882@topper.wku.edu', ''),
(6, 'Ethan', 'Garcia', 'ethan.garcia360@topper.wku.edu', ''),
(7, 'Blake', 'Moore', 'blake.moore544@topper.wku.edu', ''),
(8, 'Zach', 'Thomas', 'zach.thomas673@topper.wku.edu', ''),
(9, 'Dylan', 'Johnson', 'dylan.johnson228@topper.wku.edu', ''),
(10, 'Hunter', 'Martin', 'hunter.martin328@topper.wku.edu', ''),
(11, 'Austin', 'Jones', 'austin.jones974@topper.wku.edu', ''),
(12, 'Ethan', 'Martinez', 'ethan.martinez849@topper.wku.edu', ''),
(13, 'Blake', 'Martin', 'blake.martin823@topper.wku.edu', ''),
(14, 'Cameron', 'Moore', 'cameron.moore589@topper.wku.edu', ''),
(15, 'Cameron', 'Taylor', 'cameron.taylor260@topper.wku.edu', ''),
(16, 'Ethan', 'Davis', 'ethan.davis661@topper.wku.edu', ''),
(17, 'Zach', 'Jones', 'zach.jones659@topper.wku.edu', ''),
(18, 'Chad', 'Davis', 'chad.davis276@topper.wku.edu', ''),
(19, 'Logan', 'Johnson', 'logan.johnson814@topper.wku.edu', ''),
(20, 'Josh', 'Anderson', 'josh.anderson729@topper.wku.edu', ''),
(21, 'Cole', 'Garcia', 'cole.garcia428@topper.wku.edu', ''),
(22, 'Blake', 'Taylor', 'blake.taylor256@topper.wku.edu', ''),
(23, 'Blake', 'Brown', 'blake.brown136@topper.wku.edu', ''),
(24, 'Bryce', 'Thompson', 'bryce.thompson991@topper.wku.edu', ''),
(25, 'Kyle', 'Taylor', 'kyle.taylor535@topper.wku.edu', ''),
(26, 'Dylan', 'Johnson', 'dylan.johnson237@topper.wku.edu', ''),
(27, 'Ethan', 'Thompson', 'ethan.thompson860@topper.wku.edu', ''),
(28, 'Jake', 'Brown', 'jake.brown942@topper.wku.edu', ''),
(29, 'Ryan', 'Johnson', 'ryan.johnson380@topper.wku.edu', ''),
(30, 'Bryce', 'Moore', 'bryce.moore355@topper.wku.edu', ''),
(31, 'Jake', 'Brown', 'jake.brown626@topper.wku.edu', ''),
(32, 'Ethan', 'Thomas', 'ethan.thomas846@topper.wku.edu', ''),
(33, 'Connor', 'Thomas', 'connor.thomas927@topper.wku.edu', ''),
(34, 'Dylan', 'Anderson', 'dylan.anderson739@topper.wku.edu', ''),
(35, 'Ethan', 'Harris', 'ethan.harris133@topper.wku.edu', ''),
(36, 'Chad', 'Moore', 'chad.moore790@topper.wku.edu', ''),
(37, 'Cameron', 'Brown', 'cameron.brown269@topper.wku.edu', ''),
(38, 'Ryan', 'Garcia', 'ryan.garcia126@topper.wku.edu', ''),
(39, 'Blake', 'Thomas', 'blake.thomas189@topper.wku.edu', ''),
(40, 'Dylan', 'Taylor', 'dylan.taylor233@topper.wku.edu', ''),
(41, 'Kyle', 'Moore', 'kyle.moore957@topper.wku.edu', ''),
(42, 'Jake', 'Harris', 'jake.harris292@topper.wku.edu', ''),
(43, 'Brandon', 'Davis', 'brandon.davis784@topper.wku.edu', ''),
(44, 'Cole', 'Taylor', 'cole.taylor153@topper.wku.edu', ''),
(45, 'Josh', 'Miller', 'josh.miller856@topper.wku.edu', ''),
(46, 'Blake', 'Miller', 'blake.miller113@topper.wku.edu', ''),
(47, 'Cameron', 'Anderson', 'cameron.anderson190@topper.wku.edu', ''),
(48, 'Cameron', 'Smith', 'cameron.smith141@topper.wku.edu', ''),
(49, 'Dylan', 'Wilson', 'dylan.wilson972@topper.wku.edu', ''),
(50, 'Josh', 'Johnson', 'josh.johnson389@topper.wku.edu', ''),
(51, 'Josh', 'Martin', 'josh.martin523@topper.wku.edu', ''),
(52, 'Cameron', 'Smith', 'cameron.smith601@topper.wku.edu', ''),
(53, 'Cameron', 'Wilson', 'cameron.wilson289@topper.wku.edu', ''),
(54, 'Logan', 'Smith', 'logan.smith108@topper.wku.edu', ''),
(55, 'Hunter', 'Martinez', 'hunter.martinez456@topper.wku.edu', ''),
(56, 'Shane', 'Davis', 'shane.davis457@topper.wku.edu', ''),
(57, 'Chad', 'White', 'chad.white269@topper.wku.edu', ''),
(58, 'Ryan', 'White', 'ryan.white504@topper.wku.edu', ''),
(59, 'Shane', 'Davis', 'shane.davis973@topper.wku.edu', ''),
(60, 'Jake', 'Taylor', 'jake.taylor116@topper.wku.edu', ''),
(61, 'Hunter', 'Brown', 'hunter.brown859@topper.wku.edu', ''),
(62, 'Hunter', 'Miller', 'hunter.miller360@topper.wku.edu', ''),
(63, 'Ethan', 'Martinez', 'ethan.martinez677@topper.wku.edu', ''),
(64, 'Ethan', 'Miller', 'ethan.miller328@topper.wku.edu', ''),
(65, 'Dylan', 'Thompson', 'dylan.thompson138@topper.wku.edu', ''),
(66, 'Zach', 'Thomas', 'zach.thomas778@topper.wku.edu', ''),
(67, 'Hunter', 'Smith', 'hunter.smith133@topper.wku.edu', ''),
(68, 'Austin', 'Miller', 'austin.miller549@topper.wku.edu', ''),
(69, 'Austin', 'Brown', 'austin.brown570@topper.wku.edu', ''),
(70, 'Chad', 'Martinez', 'chad.martinez431@topper.wku.edu', ''),
(71, 'Matt', 'Jones', 'matt.jones402@topper.wku.edu', ''),
(72, 'Cole', 'Garcia', 'cole.garcia941@topper.wku.edu', ''),
(73, 'Cameron', 'Robinson', 'cameron.robinson321@topper.wku.edu', ''),
(74, 'Austin', 'Miller', 'austin.miller799@topper.wku.edu', ''),
(75, 'Bryce', 'Harris', 'bryce.harris436@topper.wku.edu', ''),
(76, 'Ryan', 'Smith', 'ryan.smith246@topper.wku.edu', ''),
(77, 'Cole', 'Wilson', 'cole.wilson315@topper.wku.edu', '');

-- --------------------------------------------------------

--
-- Table structure for table `member_profiles`
--

CREATE TABLE `member_profiles` (
  `id` int NOT NULL,
  `member_id` int NOT NULL,
  `wku_id` varchar(50) DEFAULT NULL,
  `active_years` varchar(50) DEFAULT NULL,
  `hometown` varchar(100) DEFAULT NULL,
  `grade_id` int DEFAULT NULL,
  `major_id` int DEFAULT NULL,
  `grad_year` varchar(50) DEFAULT NULL,
  `role` enum('user','admin') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `member_profiles`
--

INSERT INTO `member_profiles` (`id`, `member_id`, `wku_id`, `active_years`, `hometown`, `grade_id`, `major_id`, `grad_year`, `role`) VALUES
(1, 1, '376746294', '3', 'Jeffersontown, KY', 3, 1, '2026', 'user'),
(2, 2, '514647627', '3', 'Bowling Green, KY', 3, 1, '2026', 'user'),
(3, 3, '980707799', '2', 'Brentwood, TN', 2, 2, '2027', 'user'),
(4, 4, '988123106', '2', 'Louisville, KY', 2, 2, '2027', 'user'),
(5, 5, '416215592', '3', 'Clarksville, TN', 3, 2, '2026', 'user'),
(6, 6, '781013648', '2', 'Murfreesboro, TN', 2, 2, '2027', 'user'),
(7, 7, '228504198', '3', 'Murfreesboro, TN', 3, 2, '2026', 'user'),
(8, 8, '378439664', '4', 'Bowling Green, KY', 4, 2, '2025', 'user'),
(9, 9, '240348888', '2', 'Jeffersontown, KY', 2, 2, '2027', 'user'),
(10, 10, '822503663', '1', 'Jeffersontown, KY', 1, 2, '2028', 'user'),
(11, 11, '596692649', '1', 'Bowling Green, KY', 1, 2, '2028', 'user'),
(12, 12, '474564364', '3', 'Franklin, TN', 3, 3, '2026', 'user'),
(13, 13, '414978967', '4', 'Jeffersontown, KY', 4, 3, '2025', 'user'),
(14, 14, '837727837', '4', 'Jeffersontown, KY', 4, 3, '2025', 'user'),
(15, 15, '861840155', '3', 'Mount Juliet, TN', 3, 3, '2026', 'user'),
(16, 16, '811613224', '2', 'Louisville, KY', 2, 3, '2027', 'user'),
(17, 17, '848935274', '1', 'Hendersonville, TN', 1, 3, '2028', 'user'),
(18, 18, '815446060', '3', 'Bowling Green, KY', 3, 3, '2026', 'user'),
(19, 19, '660168855', '2', 'Nashville, TN', 2, 4, '2027', 'user'),
(20, 20, '287087503', '1', 'Murfreesboro, TN', 1, 4, '2028', 'user'),
(21, 21, '526315167', '4', 'Hendersonville, TN', 4, 4, '2025', 'user'),
(22, 22, '535040789', '1', 'Louisville, KY', 1, 4, '2028', 'user'),
(23, 23, '398629640', '1', 'Murfreesboro, TN', 1, 4, '2028', 'user'),
(24, 24, '729587416', '1', 'Franklin, TN', 1, 4, '2028', 'user'),
(25, 25, '417652429', '1', 'Murfreesboro, TN', 1, 4, '2028', 'user'),
(26, 26, '509301728', '2', 'Hendersonville, TN', 2, 4, '2027', 'user'),
(27, 27, '522843447', '2', 'Murfreesboro, TN', 2, 5, '2027', 'user'),
(28, 28, '575404666', '1', 'Bowling Green, KY', 1, 5, '2028', 'user'),
(29, 29, '786162031', '4', 'Jeffersontown, KY', 4, 5, '2025', 'user'),
(30, 30, '492159694', '1', 'Hendersonville, TN', 1, 5, '2028', 'user'),
(31, 31, '623323561', '4', 'Bowling Green, KY', 4, 5, '2025', 'user'),
(32, 32, '307719696', '2', 'Jeffersontown, KY', 2, 5, '2027', 'user'),
(33, 33, '567927257', '4', 'Nashville, TN', 4, 5, '2025', 'user'),
(34, 34, '683822750', '3', 'Louisville, KY', 3, 5, '2026', 'user'),
(35, 35, '597161611', '2', 'Murfreesboro, TN', 2, 6, '2027', 'user'),
(36, 36, '766901413', '4', 'Clarksville, TN', 4, 6, '2025', 'user'),
(37, 37, '272801804', '4', 'Clarksville, TN', 4, 6, '2025', 'user'),
(38, 38, '477470043', '2', 'Mount Juliet, TN', 2, 6, '2027', 'user'),
(39, 39, '916330092', '1', 'Brentwood, TN', 1, 6, '2028', 'user'),
(40, 40, '716574507', '2', 'Hendersonville, TN', 2, 7, '2027', 'user'),
(41, 41, '365344489', '1', 'Jeffersontown, KY', 1, 7, '2028', 'user'),
(42, 42, '304097367', '1', 'Louisville, KY', 1, 7, '2028', 'user'),
(43, 43, '907257188', '1', 'Mount Juliet, TN', 1, 7, '2028', 'user'),
(44, 44, '311069901', '3', 'Bowling Green, KY', 3, 7, '2026', 'user'),
(45, 45, '360995272', '1', 'Mount Juliet, TN', 1, 7, '2028', 'user'),
(46, 46, '215327417', '4', 'Clarksville, TN', 4, 8, '2025', 'user'),
(47, 47, '314961405', '2', 'Murfreesboro, TN', 2, 8, '2027', 'user'),
(48, 48, '201294940', '4', 'Clarksville, TN', 4, 8, '2025', 'user'),
(49, 49, '247425696', '4', 'Louisville, KY', 4, 8, '2025', 'user'),
(50, 50, '416527742', '2', 'Murfreesboro, TN', 2, 8, '2027', 'user'),
(51, 51, '813019715', '1', 'Bowling Green, KY', 1, 8, '2028', 'user'),
(52, 52, '617257113', '4', 'Jeffersontown, KY', 4, 8, '2025', 'user'),
(53, 53, '615320096', '3', 'Franklin, TN', 3, 8, '2026', 'user'),
(54, 54, '550924090', '4', 'Jeffersontown, KY', 4, 9, '2025', 'user'),
(55, 55, '659857506', '4', 'Clarksville, TN', 4, 9, '2025', 'user'),
(56, 56, '223364599', '1', 'Louisville, KY', 1, 9, '2028', 'user'),
(57, 57, '582006785', '4', 'Nashville, TN', 4, 9, '2025', 'user'),
(58, 58, '831610602', '3', 'Franklin, TN', 3, 9, '2026', 'user'),
(59, 59, '401886823', '1', 'Hendersonville, TN', 1, 10, '2028', 'user'),
(60, 60, '155902977', '4', 'Mount Juliet, TN', 4, 10, '2025', 'user'),
(61, 61, '748813575', '3', 'Nashville, TN', 3, 11, '2026', 'user'),
(62, 62, '291686807', '2', 'Jeffersontown, KY', 2, 11, '2027', 'user'),
(63, 63, '616122253', '3', 'Mount Juliet, TN', 3, 11, '2026', 'user'),
(64, 64, '901504976', '3', 'Hendersonville, TN', 3, 11, '2026', 'user'),
(65, 65, '410347630', '1', 'Bowling Green, KY', 1, 11, '2028', 'user'),
(66, 66, '341253811', '1', 'Mount Juliet, TN', 1, 11, '2028', 'user'),
(67, 67, '656682233', '3', 'Murfreesboro, TN', 3, 12, '2026', 'user'),
(68, 68, '805643040', '4', 'Mount Juliet, TN', 4, 12, '2025', 'user'),
(69, 69, '579818955', '1', 'Franklin, TN', 1, 12, '2028', 'user'),
(70, 70, '733544167', '4', 'Hendersonville, TN', 4, 12, '2025', 'user'),
(71, 71, '307993143', '4', 'Bowling Green, KY', 4, 12, '2025', 'user'),
(72, 72, '212422081', '4', 'Clarksville, TN', 4, 12, '2025', 'user'),
(73, 73, '330831088', '4', 'Nashville, TN', 4, 12, '2025', 'user'),
(74, 74, '253128616', '3', 'Mount Juliet, TN', 3, 12, '2026', 'user'),
(75, 75, '353459768', '4', 'Jeffersontown, KY', 4, 12, '2025', 'user'),
(76, 76, '374959041', '3', 'Hendersonville, TN', 3, 12, '2026', 'user'),
(77, 77, '645424893', '3', 'Clarksville, TN', 3, 12, '2026', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `temp_import`
--

CREATE TABLE `temp_import` (
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `major` varchar(50) DEFAULT NULL,
  `grade` varchar(50) DEFAULT NULL,
  `grad_year` int DEFAULT NULL,
  `active_years` int DEFAULT NULL,
  `hometown` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `wku_id` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `temp_import`
--

INSERT INTO `temp_import` (`first_name`, `last_name`, `major`, `grade`, `grad_year`, `active_years`, `hometown`, `email`, `wku_id`) VALUES
('Dylan', 'Johnson', 'Economics', 'Sophomore', 2027, 2, 'Hendersonville, TN', 'dylan.johnson237@topper.wku.edu', '509301728'),
('Jake', 'Taylor', 'Psychology', 'Senior', 2025, 4, 'Mount Juliet, TN', 'jake.taylor116@topper.wku.edu', '155902977'),
('Josh', 'Miller', 'History', 'Freshman', 2028, 1, 'Mount Juliet, TN', 'josh.miller856@topper.wku.edu', '360995272'),
('Kyle', 'Johnson', 'Business', 'Junior', 2026, 3, 'Bowling Green, KY', 'kyle.johnson998@topper.wku.edu', '514647627'),
('Chad', 'Davis', 'Computer Science', 'Junior', 2026, 3, 'Bowling Green, KY', 'chad.davis276@topper.wku.edu', '815446060'),
('Zach', 'Thomas', 'Sociology', 'Freshman', 2028, 1, 'Mount Juliet, TN', 'zach.thomas778@topper.wku.edu', '341253811'),
('Dylan', 'Thompson', 'Sociology', 'Freshman', 2028, 1, 'Bowling Green, KY', 'dylan.thompson138@topper.wku.edu', '410347630'),
('Zach', 'Jones', 'Computer Science', 'Freshman', 2028, 1, 'Hendersonville, TN', 'zach.jones659@topper.wku.edu', '848935274'),
('Cole', 'Wilson', 'Sports Management', 'Junior', 2026, 3, 'Clarksville, TN', 'cole.wilson315@topper.wku.edu', '645424893'),
('Austin', 'Jones', 'Communications', 'Freshman', 2028, 1, 'Bowling Green, KY', 'austin.jones974@topper.wku.edu', '596692649'),
('Ryan', 'Smith', 'Sports Management', 'Junior', 2026, 3, 'Hendersonville, TN', 'ryan.smith246@topper.wku.edu', '374959041'),
('Cameron', 'Wilson', 'Marketing', 'Junior', 2026, 3, 'Franklin, TN', 'cameron.wilson289@topper.wku.edu', '615320096'),
('Cameron', 'Smith', 'Marketing', 'Senior', 2025, 4, 'Jeffersontown, KY', 'cameron.smith601@topper.wku.edu', '617257113'),
('Dylan', 'Anderson', 'Engineering', 'Junior', 2026, 3, 'Louisville, KY', 'dylan.anderson739@topper.wku.edu', '683822750'),
('Cole', 'Taylor', 'History', 'Junior', 2026, 3, 'Bowling Green, KY', 'cole.taylor153@topper.wku.edu', '311069901'),
('Josh', 'Martin', 'Marketing', 'Freshman', 2028, 1, 'Bowling Green, KY', 'josh.martin523@topper.wku.edu', '813019715'),
('Blake', 'Thomas', 'Finance', 'Freshman', 2028, 1, 'Brentwood, TN', 'blake.thomas189@topper.wku.edu', '916330092'),
('Bryce', 'Harris', 'Sports Management', 'Senior', 2025, 4, 'Jeffersontown, KY', 'bryce.harris436@topper.wku.edu', '353459768'),
('Hunter', 'Martin', 'Communications', 'Freshman', 2028, 1, 'Jeffersontown, KY', 'hunter.martin328@topper.wku.edu', '822503663'),
('Ryan', 'Garcia', 'Finance', 'Sophomore', 2027, 2, 'Mount Juliet, TN', 'ryan.garcia126@topper.wku.edu', '477470043'),
('Connor', 'Thomas', 'Engineering', 'Senior', 2025, 4, 'Nashville, TN', 'connor.thomas927@topper.wku.edu', '567927257'),
('Ethan', 'Thomas', 'Engineering', 'Sophomore', 2027, 2, 'Jeffersontown, KY', 'ethan.thomas846@topper.wku.edu', '307719696'),
('Kyle', 'Taylor', 'Economics', 'Freshman', 2028, 1, 'Murfreesboro, TN', 'kyle.taylor535@topper.wku.edu', '417652429'),
('Dylan', 'Moore', 'Business', 'Junior', 2026, 3, 'Jeffersontown, KY', 'dylan.moore602@topper.wku.edu', '376746294'),
('Brandon', 'Davis', 'History', 'Freshman', 2028, 1, 'Mount Juliet, TN', 'brandon.davis784@topper.wku.edu', '907257188'),
('Jake', 'Brown', 'Engineering', 'Senior', 2025, 4, 'Bowling Green, KY', 'jake.brown626@topper.wku.edu', '623323561'),
('Jake', 'Harris', 'History', 'Freshman', 2028, 1, 'Louisville, KY', 'jake.harris292@topper.wku.edu', '304097367'),
('Ethan', 'Davis', 'Computer Science', 'Sophomore', 2027, 2, 'Louisville, KY', 'ethan.davis661@topper.wku.edu', '811613224'),
('Dylan', 'Johnson', 'Communications', 'Sophomore', 2027, 2, 'Jeffersontown, KY', 'dylan.johnson228@topper.wku.edu', '240348888'),
('Bryce', 'Thompson', 'Economics', 'Freshman', 2028, 1, 'Franklin, TN', 'bryce.thompson991@topper.wku.edu', '729587416'),
('Austin', 'Miller', 'Sports Management', 'Junior', 2026, 3, 'Mount Juliet, TN', 'austin.miller799@topper.wku.edu', '253128616'),
('Josh', 'Johnson', 'Marketing', 'Sophomore', 2027, 2, 'Murfreesboro, TN', 'josh.johnson389@topper.wku.edu', '416527742'),
('Ethan', 'Miller', 'Sociology', 'Junior', 2026, 3, 'Hendersonville, TN', 'ethan.miller328@topper.wku.edu', '901504976'),
('Blake', 'Brown', 'Economics', 'Freshman', 2028, 1, 'Murfreesboro, TN', 'blake.brown136@topper.wku.edu', '398629640'),
('Bryce', 'Moore', 'Engineering', 'Freshman', 2028, 1, 'Hendersonville, TN', 'bryce.moore355@topper.wku.edu', '492159694'),
('Blake', 'Taylor', 'Economics', 'Freshman', 2028, 1, 'Louisville, KY', 'blake.taylor256@topper.wku.edu', '535040789'),
('Ryan', 'Johnson', 'Engineering', 'Senior', 2025, 4, 'Jeffersontown, KY', 'ryan.johnson380@topper.wku.edu', '786162031'),
('Zach', 'Thomas', 'Communications', 'Senior', 2025, 4, 'Bowling Green, KY', 'zach.thomas673@topper.wku.edu', '378439664'),
('Dylan', 'Wilson', 'Marketing', 'Senior', 2025, 4, 'Louisville, KY', 'dylan.wilson972@topper.wku.edu', '247425696'),
('Ryan', 'White', 'Political Science', 'Junior', 2026, 3, 'Franklin, TN', 'ryan.white504@topper.wku.edu', '831610602'),
('Cameron', 'Taylor', 'Computer Science', 'Junior', 2026, 3, 'Mount Juliet, TN', 'cameron.taylor260@topper.wku.edu', '861840155'),
('Jake', 'Brown', 'Engineering', 'Freshman', 2028, 1, 'Bowling Green, KY', 'jake.brown942@topper.wku.edu', '575404666'),
('Ethan', 'Martinez', 'Sociology', 'Junior', 2026, 3, 'Mount Juliet, TN', 'ethan.martinez677@topper.wku.edu', '616122253'),
('Cameron', 'Smith', 'Marketing', 'Senior', 2025, 4, 'Clarksville, TN', 'cameron.smith141@topper.wku.edu', '201294940'),
('Shane', 'Davis', 'Psychology', 'Freshman', 2028, 1, 'Hendersonville, TN', 'shane.davis973@topper.wku.edu', '401886823'),
('Blake', 'Moore', 'Communications', 'Junior', 2026, 3, 'Murfreesboro, TN', 'blake.moore544@topper.wku.edu', '228504198'),
('Cole', 'Garcia', 'Economics', 'Senior', 2025, 4, 'Hendersonville, TN', 'cole.garcia428@topper.wku.edu', '526315167'),
('Cameron', 'Brown', 'Finance', 'Senior', 2025, 4, 'Clarksville, TN', 'cameron.brown269@topper.wku.edu', '272801804'),
('Ethan', 'Garcia', 'Communications', 'Sophomore', 2027, 2, 'Murfreesboro, TN', 'ethan.garcia360@topper.wku.edu', '781013648'),
('Jake', 'Martinez', 'Communications', 'Junior', 2026, 3, 'Clarksville, TN', 'jake.martinez882@topper.wku.edu', '416215592'),
('Cameron', 'Robinson', 'Sports Management', 'Senior', 2025, 4, 'Nashville, TN', 'cameron.robinson321@topper.wku.edu', '330831088'),
('Cameron', 'Moore', 'Computer Science', 'Senior', 2025, 4, 'Jeffersontown, KY', 'cameron.moore589@topper.wku.edu', '837727837'),
('Blake', 'Martin', 'Computer Science', 'Senior', 2025, 4, 'Jeffersontown, KY', 'blake.martin823@topper.wku.edu', '414978967'),
('Chad', 'White', 'Political Science', 'Senior', 2025, 4, 'Nashville, TN', 'chad.white269@topper.wku.edu', '582006785'),
('Cole', 'Garcia', 'Sports Management', 'Senior', 2025, 4, 'Clarksville, TN', 'cole.garcia941@topper.wku.edu', '212422081'),
('Chad', 'Moore', 'Finance', 'Senior', 2025, 4, 'Clarksville, TN', 'chad.moore790@topper.wku.edu', '766901413'),
('Hunter', 'Miller', 'Sociology', 'Sophomore', 2027, 2, 'Jeffersontown, KY', 'hunter.miller360@topper.wku.edu', '291686807'),
('Josh', 'Anderson', 'Economics', 'Freshman', 2028, 1, 'Murfreesboro, TN', 'josh.anderson729@topper.wku.edu', '287087503'),
('Shane', 'Davis', 'Political Science', 'Freshman', 2028, 1, 'Louisville, KY', 'shane.davis457@topper.wku.edu', '223364599'),
('Matt', 'Jones', 'Sports Management', 'Senior', 2025, 4, 'Bowling Green, KY', 'matt.jones402@topper.wku.edu', '307993143'),
('Chad', 'Martinez', 'Sports Management', 'Senior', 2025, 4, 'Hendersonville, TN', 'chad.martinez431@topper.wku.edu', '733544167'),
('Hunter', 'Martinez', 'Political Science', 'Senior', 2025, 4, 'Clarksville, TN', 'hunter.martinez456@topper.wku.edu', '659857506'),
('Logan', 'Smith', 'Political Science', 'Senior', 2025, 4, 'Jeffersontown, KY', 'logan.smith108@topper.wku.edu', '550924090'),
('Josh', 'Johnson', 'Communications', 'Sophomore', 2027, 2, 'Louisville, KY', 'josh.johnson331@topper.wku.edu', '988123106'),
('Austin', 'Brown', 'Sports Management', 'Freshman', 2028, 1, 'Franklin, TN', 'austin.brown570@topper.wku.edu', '579818955'),
('Tyler', 'Thomas', 'Communications', 'Sophomore', 2027, 2, 'Brentwood, TN', 'tyler.thomas359@topper.wku.edu', '980707799'),
('Cameron', 'Anderson', 'Marketing', 'Sophomore', 2027, 2, 'Murfreesboro, TN', 'cameron.anderson190@topper.wku.edu', '314961405'),
('Austin', 'Miller', 'Sports Management', 'Senior', 2025, 4, 'Mount Juliet, TN', 'austin.miller549@topper.wku.edu', '805643040'),
('Ethan', 'Martinez', 'Computer Science', 'Junior', 2026, 3, 'Franklin, TN', 'ethan.martinez849@topper.wku.edu', '474564364'),
('Kyle', 'Moore', 'History', 'Freshman', 2028, 1, 'Jeffersontown, KY', 'kyle.moore957@topper.wku.edu', '365344489'),
('Ethan', 'Harris', 'Finance', 'Sophomore', 2027, 2, 'Murfreesboro, TN', 'ethan.harris133@topper.wku.edu', '597161611'),
('Hunter', 'Brown', 'Sociology', 'Junior', 2026, 3, 'Nashville, TN', 'hunter.brown859@topper.wku.edu', '748813575'),
('Logan', 'Johnson', 'Economics', 'Sophomore', 2027, 2, 'Nashville, TN', 'logan.johnson814@topper.wku.edu', '660168855'),
('Blake', 'Miller', 'Marketing', 'Senior', 2025, 4, 'Clarksville, TN', 'blake.miller113@topper.wku.edu', '215327417'),
('Ethan', 'Thompson', 'Engineering', 'Sophomore', 2027, 2, 'Murfreesboro, TN', 'ethan.thompson860@topper.wku.edu', '522843447'),
('Hunter', 'Smith', 'Sports Management', 'Junior', 2026, 3, 'Murfreesboro, TN', 'hunter.smith133@topper.wku.edu', '656682233'),
('Dylan', 'Taylor', 'History', 'Sophomore', 2027, 2, 'Hendersonville, TN', 'dylan.taylor233@topper.wku.edu', '716574507');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `grade_levels`
--
ALTER TABLE `grade_levels`
  ADD PRIMARY KEY (`grade_id`);

--
-- Indexes for table `majors`
--
ALTER TABLE `majors`
  ADD PRIMARY KEY (`major_id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`member_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `member_profiles`
--
ALTER TABLE `member_profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `member_id` (`member_id`),
  ADD KEY `fk_major_id` (`major_id`),
  ADD KEY `fk_grade_id` (`grade_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `majors`
--
ALTER TABLE `majors`
  MODIFY `major_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `member_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `member_profiles`
--
ALTER TABLE `member_profiles`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `member_profiles`
--
ALTER TABLE `member_profiles`
  ADD CONSTRAINT `fk_grade_id` FOREIGN KEY (`grade_id`) REFERENCES `grade_levels` (`grade_id`),
  ADD CONSTRAINT `fk_major_id` FOREIGN KEY (`major_id`) REFERENCES `majors` (`major_id`),
  ADD CONSTRAINT `member_profiles_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `members` (`member_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
