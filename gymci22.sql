-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2022 at 05:44 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gymci22`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `admin_id` int(11) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_password` varchar(100) NOT NULL,
  `shift` varchar(10) NOT NULL,
  `access_level` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`admin_id`, `first_name`, `last_name`, `admin_email`, `admin_password`, `shift`, `access_level`) VALUES
(40, 'Lambert ', 'Machete', 'Trebmalistic@gmail.com', '$2y$10$U3ZFOKjRosNN8pmZ/FQMo.cmJd9ommUkxpW6QtIv/tPm268F6mQ72', 'Morning', 1),
(41, 'GK', 'Moran', 'gk@gmail.com', '$2y$10$BLdPl0MTqtkdW01In.bq1.1Ozb0xUSDYI3z9zHsML2wezQuw5Serq', 'Morning', 1);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_password` varchar(100) NOT NULL,
  `shift` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bar`
--

CREATE TABLE `bar` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bar`
--

INSERT INTO `bar` (`id`, `name`, `price`) VALUES
(1, 'Orange Juice', '50'),
(4, 'Grape Fruit Juice Large', '170'),
(5, 'Knee Support', '300'),
(6, 'Water', '30'),
(7, 'Fruit Smoothie', '150'),
(8, 'Milk Pack Small', '20'),
(9, 'Green Tea', '150'),
(12, 'Banana', '20'),
(13, 'Pineapple Juice', '75'),
(14, 'Mix Fresh Juice', '100'),
(15, 'Greek Yogurt Smoothie', '200'),
(18, 'Apple Juice Extra Large', '150'),
(25, 'Black Coffee', '30'),
(26, 'Milk Coffee', '35'),
(28, 'Chocolate Milk', '45'),
(32, 'Wrist Band', '175'),
(35, 'Elbow Support', '250'),
(58, 'Test Item', '100'),
(63, 'Supplement and Banana', '300'),
(64, 'Protein Shake', '150'),
(65, 'Carrot Juice ', '50'),
(68, 'Supplement and Apple', '300');

-- --------------------------------------------------------

--
-- Table structure for table `bin`
--

CREATE TABLE `bin` (
  `id` int(11) NOT NULL,
  `report_id` int(11) DEFAULT NULL,
  `membership_no` varchar(11) DEFAULT NULL,
  `member_name` varchar(20) DEFAULT NULL,
  `member_type` varchar(10) DEFAULT NULL,
  `packages` varchar(50) DEFAULT NULL,
  `total_amount` varchar(15) DEFAULT NULL,
  `cashier` varchar(20) DEFAULT NULL,
  `fee_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `balance` varchar(11) DEFAULT NULL,
  `payment_type` varchar(15) DEFAULT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `discount` varchar(15) DEFAULT NULL,
  `remarks` text NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bin`
--

INSERT INTO `bin` (`id`, `report_id`, `membership_no`, `member_name`, `member_type`, `packages`, `total_amount`, `cashier`, `fee_date`, `end_date`, `balance`, `payment_type`, `time_stamp`, `discount`, `remarks`, `type`) VALUES
(12, 2, NULL, 'Juice Bar', 'Items/Juic', ',Orange Juice s,Knee Support', '400', 'Liam', NULL, NULL, '', 'Cash', '2022-04-21 16:59:47', NULL, 'Test', ''),
(13, 1, NULL, 'Juice Bar', 'Items/Juic', ',Orange Juice s,Grape Fruit Juice Large,Knee Suppo', '850', 'hanzala', NULL, NULL, '', 'Cash', '2022-04-21 17:01:51', NULL, 'none', ''),
(14, 12, NULL, 'Juice Bar', 'Items/Juic', ',Knee Support', '18', 'admin@mail.com', NULL, NULL, '', 'Cash', '2022-04-21 17:33:03', NULL, 'Demo Test', ''),
(15, 3, '787', 'Christine', 'Monthly', '6 Months Zumba\n', '36500', 'Liam', '2022-04-18', '2022-10-15', '11292', 'Cash', '2022-05-21 12:16:57', NULL, '', ''),
(16, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-21 12:16:59', NULL, 'asd', ''),
(17, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-21 12:17:11', NULL, 'asd', ''),
(18, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-21 12:17:26', NULL, 'asdshfbsf', ''),
(19, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-21 12:17:57', NULL, 'asdshfbsf', ''),
(20, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-21 12:18:09', NULL, 'asdshfbsf', ''),
(21, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-21 12:19:15', NULL, 'done', ''),
(22, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-21 12:19:57', NULL, 'done', ''),
(23, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-21 12:20:49', NULL, 'Reason', ''),
(24, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-21 12:22:56', NULL, 'None', ''),
(25, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-21 12:23:33', NULL, 'membership no', ''),
(26, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-21 12:32:12', NULL, 'Demo Test', ''),
(27, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-21 12:32:24', NULL, 'Demo Test', ''),
(28, 4, NULL, 'Juice Bar', 'Items/Juic', ',Grape Fruit Juice Large', '250', 'Liam', NULL, NULL, '', 'Cash', '2022-05-21 12:36:37', NULL, 'test', ''),
(29, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-21 12:36:54', NULL, 'nothing', ''),
(30, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-21 12:37:00', NULL, 'test', ''),
(31, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-21 12:37:09', NULL, 'Test', ''),
(32, 5, '101', 'Rodney K. Jackson', 'Monthly', '6 Months Cardio\n', '412.88', 'Liam', '2022-04-20', '2022-10-17', '0', 'Cash', '2022-05-21 12:37:25', NULL, 'Test', ''),
(33, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-21 12:37:34', NULL, 'Test', ''),
(34, 6, '110', 'Charles E. King', 'Monthly', '1 Months Aerobatics/Yoga\n', '0', 'Liam', '2022-04-20', '2022-05-20', '0', 'Cash', '2022-05-21 12:37:48', NULL, 'None', ''),
(35, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-21 12:37:51', NULL, 'None', ''),
(36, 7, '188', 'Margaret H. Stradfor', 'Monthly', '6 Months Aerobatics/Yoga\nZumba\n', '456', 'admin@mail.com', '2022-04-21', '2022-10-18', '0', 'Card', '2022-05-21 12:38:05', NULL, '', ''),
(37, 8, NULL, 'Test Visitor', 'Daily', 'Suana/Steam\n', '0', 'admin@mail.com', '2022-04-21', NULL, '0', 'Card', '2022-05-21 12:38:21', NULL, '', ''),
(38, 9, '200', 'Melanie R. Haynes', 'Monthly', '1 Months Cardio\n', '151', 'admin@mail.com', '2022-04-21', '2022-05-21', '0', 'Cash', '2022-05-21 12:38:30', NULL, '', ''),
(39, 10, '302', 'Antonio M. Hayes', 'Monthly', '12 Months Aerobatics/Yoga\nCardio\n', '743', 'admin@mail.com', '2022-04-21', '2023-04-16', '0', 'Cheque', '2022-05-21 12:38:34', NULL, '', ''),
(40, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-21 12:38:38', NULL, '', ''),
(41, 11, NULL, 'Juice Bar', 'Items/Juic', ',Fruit Smoothie,Chocolate Milk', '8', 'admin@mail.com', NULL, NULL, '', 'Cash', '2022-05-21 12:38:52', NULL, '', ''),
(42, 12, '111', 'Lambert Machete', 'Monthly', '6 Months ', '3', 'admin@mail.com', '2022-05-21', '2022-11-17', '0', 'Cash', '2022-05-26 02:18:58', NULL, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `daily_members`
--

CREATE TABLE `daily_members` (
  `user_id` int(20) NOT NULL,
  `user_name` text DEFAULT NULL,
  `user_address` varchar(50) DEFAULT NULL,
  `user_cellnumber` varchar(20) DEFAULT NULL,
  `user_nic` varchar(20) DEFAULT NULL,
  `balance_status` varchar(6) DEFAULT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daily_members`
--

INSERT INTO `daily_members` (`user_id`, `user_name`, `user_address`, `user_cellnumber`, `user_nic`, `balance_status`, `time_stamp`) VALUES
(23, 'Test Visitor', 'Test Address', '7774444545', '1245785457854', '46', '2022-04-21 16:17:42');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `type` varchar(30) NOT NULL,
  `remarks` text NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `operation` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `type`, `remarks`, `time_stamp`, `operation`) VALUES
(141, 'Member', 'New Member (No:333 Name: Test) was added by Admin: Trebmalistic@gmail.com', '2022-05-26 01:26:14', 'Insert'),
(142, 'Daily Package', ' Record of Daily Package(Name: Suana/Steam) Updated by Admin: GK@gmail.com', '2022-05-26 02:11:12', 'Update'),
(143, 'Monthly Package', 'Record of Monthly Package(Duration: 1) Updated By Admin: GK@gmail.com', '2022-05-26 02:15:11', 'Update'),
(144, 'Monthly Package', 'Record of Monthly Package(Duration: 12) Updated By Admin: GK@gmail.com', '2022-05-26 02:15:25', 'Update'),
(145, 'Monthly Package', 'Record of Monthly Package(Duration: 1) Updated By Admin: GK@gmail.com', '2022-05-26 02:15:40', 'Update'),
(146, 'Monthly Package', 'Record of Monthly Package(Duration: 12) Updated By Admin: GK@gmail.com', '2022-05-26 02:15:52', 'Update'),
(147, 'Monthly Package', 'Record of Monthly Package(Duration: 6) Updated By Admin: GK@gmail.com', '2022-05-26 02:16:07', 'Update'),
(148, 'Monthly Package', 'Record of Monthly Package(Duration: 6Month/s) was Deleted by Admin: GK@gmail.com', '2022-05-26 02:16:22', 'Delete'),
(149, 'T/M Package', 'Record of Therapy/Massage Packages (Name: Deep Tissue Back Massage 20 Minutes) was updated by Admin: GK@gmail.com', '2022-05-26 02:16:44', 'Update'),
(150, 'T/M Package', 'Record of Therapy/Massage Packages (Name: Full Body Massage) was updated by Admin: GK@gmail.com', '2022-05-26 02:16:56', 'Update'),
(151, 'T/M Package', 'Record of Therapy/Massage Packages (Name: Head And Shoulder Massage 30 Minutes) was updated by Admin: GK@gmail.com', '2022-05-26 02:17:05', 'Update'),
(152, 'T/M Package', 'Record of Therapy/Massage Packages (Name: Swedish Massage) was updated by Admin: GK@gmail.com', '2022-05-26 02:17:16', 'Update'),
(153, 'T/M Package', 'Record of Therapy/Massage Packages (Name: Ventosa Cupping Therapy 90 Minutes) was updated by Admin: GK@gmail.com', '2022-05-26 02:17:26', 'Update'),
(154, 'Workout Package', 'Record of Workout Package (Name: Aerobatics/Yoga, ID: 15) was updated by Admin GK@gmail.com', '2022-05-26 02:17:42', 'Update'),
(155, 'Workout Package', 'Record of Workout Package (Name: Cardio, ID: 38) was updated by Admin GK@gmail.com', '2022-05-26 02:17:52', 'Update'),
(156, 'Workout Package', 'Record of Workout Package (Name: Gynasium, ID: 34) was updated by Admin GK@gmail.com', '2022-05-26 02:18:00', 'Update'),
(157, 'Workout Package', 'Record of Workout Package (Name: Test Gym, ID: 37) was updated by Admin GK@gmail.com', '2022-05-26 02:18:21', 'Update'),
(158, 'Workout Package', 'Record of Workout Package (Name: Zumba, ID: 35) was updated by Admin GK@gmail.com', '2022-05-26 02:18:31', 'Update');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `member_no` int(11) DEFAULT NULL,
  `member_name` varchar(25) NOT NULL,
  `member_father_name` varchar(25) NOT NULL,
  `member_dob` varchar(20) NOT NULL,
  `member_nic` varchar(20) NOT NULL,
  `member_gender` varchar(10) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `member_bloodpressure` varchar(20) DEFAULT NULL,
  `member_heart_disease` varchar(20) DEFAULT NULL,
  `member_diabetes` varchar(20) DEFAULT NULL,
  `member_hepatitis` varchar(20) DEFAULT NULL,
  `member_asthma` varchar(15) DEFAULT NULL,
  `member_arthritis` varchar(20) DEFAULT NULL,
  `member_others` varchar(25) DEFAULT NULL,
  `member_resident` varchar(50) NOT NULL,
  `member_address` varchar(50) NOT NULL,
  `member_telephone` varchar(20) NOT NULL,
  `member_fax_no` varchar(20) DEFAULT NULL,
  `member_email` varchar(20) NOT NULL,
  `member_emergency_no` varchar(20) DEFAULT NULL,
  `member_aerobics` varchar(20) DEFAULT NULL,
  `member_gymnasium` varchar(20) DEFAULT NULL,
  `member_zumba` varchar(20) DEFAULT NULL,
  `member_personal_training` varchar(20) DEFAULT NULL,
  `member_gym_time` varchar(15) NOT NULL,
  `status` varchar(15) NOT NULL,
  `freeze_by` varchar(15) DEFAULT NULL,
  `freeze_date` date DEFAULT NULL,
  `activate_date` date DEFAULT NULL,
  `monthlyfee_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `fee_status` varchar(6) DEFAULT NULL,
  `balance_status` varchar(6) DEFAULT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updateby` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `member_no`, `member_name`, `member_father_name`, `member_dob`, `member_nic`, `member_gender`, `image`, `member_bloodpressure`, `member_heart_disease`, `member_diabetes`, `member_hepatitis`, `member_asthma`, `member_arthritis`, `member_others`, `member_resident`, `member_address`, `member_telephone`, `member_fax_no`, `member_email`, `member_emergency_no`, `member_aerobics`, `member_gymnasium`, `member_zumba`, `member_personal_training`, `member_gym_time`, `status`, `freeze_by`, `freeze_date`, `activate_date`, `monthlyfee_date`, `end_date`, `fee_status`, `balance_status`, `time_stamp`, `updateby`) VALUES
(12, 1, 'bert', 'bert', '16/08/00', '123123242', 'Male', NULL, '', '', '', NULL, '', NULL, '', 'ada', 'asdad', '09121231211', NULL, 'sfewf@gmail.com', NULL, NULL, NULL, NULL, NULL, 'Morning', 'Active', NULL, NULL, NULL, '2022-05-21', '2022-06-20', 'Paid', '10', '2022-05-21 11:31:30', NULL),
(13, 123, 'bert', 'bert', '16/08/00', '11111111111', 'Male', NULL, 'bloodpressure', '', '', NULL, '', NULL, '', 'sdg', 'sdds', '09667803970', NULL, 'email@gmail.com', NULL, NULL, NULL, NULL, NULL, 'Morning', 'Active', NULL, NULL, NULL, '2022-05-21', '2022-11-17', 'Paid', '50', '2022-05-21 12:15:24', NULL),
(14, 333, 'Test', 'Langpo', '12/12/12', '12312312', 'Male', NULL, '', '', '', NULL, '', NULL, '', 'xcc', 'ssd', '0911111111', NULL, 'qwe@fef.com', NULL, NULL, NULL, NULL, NULL, 'Morning', 'Active', NULL, NULL, NULL, '2022-05-26', '2022-11-22', 'Paid', '303', '2022-05-26 01:26:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `type` varchar(11) NOT NULL,
  `duration` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `name`, `price`, `type`, `duration`) VALUES
(3, 'Full Body Massage', 1000, 'TM', '90'),
(9, '', 20000, 'Monthly', '6'),
(10, 'Swedish Massage', 800, 'TM', ''),
(12, 'Head And Shoulder Massage 30 Minutes', 700, 'TM', ''),
(13, 'Ventosa Cupping Therapy 90 Minutes', 500, 'TM', ''),
(15, 'Aerobatics/Yoga', 500, 'Workout', ''),
(20, 'Suana/Steam', 400, 'Daily', ''),
(22, 'Deep Tissue Back Massage 20 Minutes', 500, 'TM', ''),
(24, 'Apple Juice', 9009, 'juice', NULL),
(25, 'Mango Juice', 100, 'juice', NULL),
(26, 'Orange Juice', 200, 'juice', NULL),
(28, 'test by develoepr', 666, 'Juice', ''),
(31, '', 3000, 'Monthly', '1'),
(33, 'Test Juice', 199, 'Juice', ''),
(34, 'Gynasium', 300, 'Workout', ''),
(35, 'Zumba', 200, 'Workout', ''),
(36, 'Personal Trainer', 4650, 'Workout', ''),
(37, 'Test Gym', 200, 'Workout', ''),
(38, 'Cardio', 1000, 'Workout', ''),
(39, '12 Months', 30000, 'Monthly', '12');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id_r` int(11) NOT NULL,
  `membership_no` varchar(15) DEFAULT NULL,
  `member_name` varchar(20) NOT NULL,
  `member_type` varchar(10) NOT NULL,
  `packages` varchar(50) NOT NULL,
  `total_amount` varchar(15) NOT NULL,
  `cashier` varchar(20) NOT NULL,
  `fee_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `balance` varchar(11) NOT NULL,
  `payment_type` varchar(15) NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `discount` varchar(15) NOT NULL,
  `fee` int(11) NOT NULL,
  `tax` int(11) NOT NULL,
  `amount_paid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`id_r`, `membership_no`, `member_name`, `member_type`, `packages`, `total_amount`, `cashier`, `fee_date`, `end_date`, `balance`, `payment_type`, `time_stamp`, `discount`, `fee`, `tax`, `amount_paid`) VALUES
(13, '1', 'bert', 'Monthly', '1 Months Zumba\n', '10', 'admin@mail.com', '2022-05-21', '2022-06-20', '0', 'Cash', '2022-05-24 04:08:09', '3', 159, 5, NULL),
(14, NULL, 'Juice Bar', 'Items/Juic', ',Orange Juice,Grape Fruit Juice Large', '24', 'admin@mail.com', NULL, NULL, '', 'Cash', '2022-05-21 12:11:44', '0', 0, 0, 24),
(15, NULL, 'Juice Bar', 'Items/Juic', ',Orange Juice,Grape Fruit Juice Large', '30', 'admin@mail.com', NULL, NULL, '', 'Cash', '2022-05-21 12:12:27', '0', 0, 0, 30),
(16, '123', 'bert', 'Monthly', '6 Months Aerobatics/Yoga\n', '50', 'admin@mail.com', '2022-05-21', '2022-11-17', '0', 'Cash', '2022-05-24 04:08:15', '8', 216, 6, NULL),
(17, '110', 'Charles E. King', 'Monthly', '1 Months Aerobatics/Yoga\n', '159', 'admin@mail.com', '2022-05-21', '2022-05-20', '0', 'Cash', '2022-05-21 12:33:57', '0', 153, 6, NULL),
(18, NULL, 'Test Visitor', 'Daily', 'Suana/Steam\n', '46', 'admin@mail.com', '2022-05-21', NULL, '0', 'Card', '2022-05-21 12:34:03', '0', 44, 3, NULL),
(19, '111', 'Lambert Machete', 'Monthly', '6 Months ', '182', 'Trebmalistic@gmail.c', '2022-05-24', '2022-11-17', '0', 'Cash', '2022-05-24 04:08:02', '200', 178, 7, NULL),
(20, '1', 'bert', 'Monthly', '1 Months Zumba\n', '153', 'Trebmalistic@gmail.c', '2022-05-24', '2022-06-20', '0', 'Cash', '2022-05-24 04:08:10', '3', 159, 5, NULL),
(21, '123', 'bert', 'Monthly', '6 Months Aerobatics/Yoga\n', '172', 'Trebmalistic@gmail.c', '2022-05-24', '2022-11-17', '0', 'Cash', '2022-05-24 04:08:15', '8', 216, 6, NULL),
(22, NULL, 'Juice Bar', 'Items/Juic', ',Orange Juice', '30', 'Trebmalistic@gmail.c', NULL, NULL, '', 'Cash', '2022-05-24 09:25:44', '0', 0, 0, 30),
(23, '333', 'Test', 'Monthly', '6 Months Personal Trainer\n', '303', 'Trebmalistic@gmail.c', '2022-05-26', '2022-11-22', '4848', 'Cash', '2022-05-26 01:26:14', '0', 4953, 198, NULL),
(24, NULL, 'Juice Bar', 'Items/Juic', ',Protein Shake,Supplement and Banana,Test Item', '28', 'Trebmalistic@gmail.c', NULL, NULL, '', 'Cash', '2022-05-26 01:27:33', '0', 0, 0, 28),
(25, NULL, 'Juice Bar', 'Items/Juic', ',Grape Fruit Juice Large,Water', '6', 'Trebmalistic@gmail.c', NULL, NULL, '', 'Cash', '2022-05-26 01:49:43', '0', 0, 0, 6),
(26, NULL, 'Juice Bar', 'Items/Juic', ',Orange Juice,Grape Fruit Juice Large,Knee Support', '20', 'GK@gmail.com', NULL, NULL, '', 'Cash', '2022-05-26 02:01:45', '0', 0, 0, 20);

-- --------------------------------------------------------

--
-- Table structure for table `therapy_pkgs`
--

CREATE TABLE `therapy_pkgs` (
  `id` int(11) NOT NULL,
  `pkg_name` varchar(50) NOT NULL,
  `pkg_price` int(11) NOT NULL,
  `pkg_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `therapy_pkgs`
--

INSERT INTO `therapy_pkgs` (`id`, `pkg_name`, `pkg_price`, `pkg_time`) VALUES
(1, 'Full Body Massage', 6000, 90),
(2, 'Swedish Massage', 4000, 60),
(3, 'Deep Tissue Back Massage', 3000, 30),
(4, 'Head And Shoulde Massage', 2000, 30),
(5, 'Ventosa Cuppping Therapy', 6000, 90),
(6, 'Deep Tissue Therapy', 2000, 30);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `bar`
--
ALTER TABLE `bar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bin`
--
ALTER TABLE `bin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `daily_members`
--
ALTER TABLE `daily_members`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id_r`);

--
-- Indexes for table `therapy_pkgs`
--
ALTER TABLE `therapy_pkgs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bar`
--
ALTER TABLE `bar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `bin`
--
ALTER TABLE `bin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `daily_members`
--
ALTER TABLE `daily_members`
  MODIFY `user_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id_r` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `therapy_pkgs`
--
ALTER TABLE `therapy_pkgs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
