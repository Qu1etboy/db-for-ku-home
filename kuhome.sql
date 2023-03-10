-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 07, 2023 at 08:51 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kuhome`
--

-- --------------------------------------------------------

--
-- Table structure for table `Bill`
--

CREATE TABLE `Bill` (
  `invoice_id` int(4) NOT NULL,
  `uid_card` char(13) NOT NULL,
  `booking_id` int(4) NOT NULL,
  `payment_date` timestamp NULL DEFAULT current_timestamp(),
  `if_late_payment` tinyint(1) NOT NULL DEFAULT 0,
  `expire_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `discount_amount` float NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Bill`
--

INSERT INTO `Bill` (`invoice_id`, `uid_card`, `booking_id`, `payment_date`, `if_late_payment`, `expire_date`, `discount_amount`) VALUES
(1, '1010406232401', 1, '2021-06-25 10:29:32', 0, '2021-06-25 10:51:28', 0),
(2, '1103406860811', 2, NULL, 1, '2021-04-12 05:50:41', 200),
(3, '1210336865902', 3, '2022-02-01 07:58:12', 0, '2022-02-01 08:55:34', 300),
(4, '1410406860001', 4, '2021-12-26 15:33:10', 0, '2021-12-26 16:31:10', 0),
(5, '6410406878000', 5, '2021-01-06 04:08:47', 0, '2021-01-06 04:11:47', 200),
(6, '1010406232401', 6, NULL, 1, '2021-05-24 15:58:39', 0),
(7, '1103406860811', 7, '2020-10-13 00:01:23', 0, '2020-10-13 00:56:23', 200),
(8, '1210336865902', 8, '2021-02-25 21:40:58', 0, '2021-02-25 21:43:58', 200),
(9, '1410406860001', 9, '2021-08-06 00:30:21', 0, '2021-08-06 01:02:21', 0),
(10, '6410406878000', 10, '2020-12-18 02:59:25', 0, '2020-12-18 03:43:25', 200);

-- --------------------------------------------------------

--
-- Table structure for table `Booking`
--

CREATE TABLE `Booking` (
  `booking_id` int(4) NOT NULL,
  `room_id` int(4) NOT NULL,
  `uid_card` char(13) NOT NULL,
  `booking_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `check_in_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `check_out_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `number_of_resident` int(11) NOT NULL,
  `booking_status` varchar(20) DEFAULT NULL
) ;

--
-- Dumping data for table `Booking`
--

INSERT INTO `Booking` (`booking_id`, `room_id`, `uid_card`, `booking_date`, `check_in_date`, `check_out_date`, `number_of_resident`, `booking_status`) VALUES
(1, 1, '1010406232401', '2021-06-25 09:51:28', '2021-07-08 23:15:36', '2021-08-06 20:28:54', 2, 'Success'),
(2, 2, '1103406860811', '2021-04-12 04:50:41', '2021-04-21 00:34:05', '2021-05-11 07:17:13', 1, 'Failed'),
(3, 3, '1210336865902', '2022-02-01 07:55:34', '2022-02-15 01:16:20', '2022-03-08 06:17:59', 1, 'Success'),
(4, 4, '1410406860001', '2021-12-26 15:31:10', '2022-01-06 23:10:18', '2022-02-02 08:23:45', 2, 'Success'),
(5, 5, '6410406878000', '2021-01-06 03:11:47', '2021-01-19 20:44:20', '2021-02-16 19:48:09', 2, 'Success'),
(6, 6, '1010406232401', '2021-05-24 14:58:39', '2021-06-06 09:36:33', '2021-07-01 02:05:16', 1, 'Failed'),
(7, 7, '1103406860811', '2020-10-12 23:56:23', '2020-10-22 21:49:05', '2020-11-15 18:51:12', 2, 'Success'),
(8, 8, '1210336865902', '2021-02-25 20:43:58', '2021-03-10 03:53:20', '2021-04-01 02:46:39', 2, 'Success'),
(9, 9, '1410406860001', '2021-08-06 00:02:21', '2021-08-18 20:56:34', '2021-09-08 22:48:17', 1, 'Success'),
(10, 10, '6410406878000', '2020-12-18 02:43:25', '2020-12-31 16:27:23', '2021-01-28 09:54:28', 2, 'Failed');

-- --------------------------------------------------------

--
-- Table structure for table `Employee`
--

CREATE TABLE `Employee` (
  `empid_card` char(13) NOT NULL,
  `role_id` int(4) NOT NULL,
  `emp_phone_number` char(10) NOT NULL,
  `emp_first_name` varchar(255) NOT NULL,
  `emp_last_name` varchar(255) NOT NULL,
  `emp_email` varchar(255) NOT NULL,
  `emp_password` varchar(255) NOT NULL,
  `income` float NOT NULL
) ;

--
-- Dumping data for table `Employee`
--

INSERT INTO `Employee` (`empid_card`, `role_id`, `emp_phone_number`, `emp_first_name`, `emp_last_name`, `emp_email`, `emp_password`, `income`) VALUES
('5410401000100', 1, '1234567890', 'John', 'Doe', 'john@gmail.com', '123456', 10000),
('5410401000101', 2, '2345678901', 'Alice', 'Zhang', 'alice@gmail.com', '123456', 9000),
('5410401000102', 3, '3456789012', 'Bob', 'Smith', 'bob@gmail.com', '123456', 15000),
('5410401000103', 4, '4567890123', 'Ong', 'Sittipong', 'ong22280@gmail.com', '123456', 23500),
('5410401000104', 5, '5678901234', 'Kittipong', 'Sittipong', 'kit@gmail.com', '123456', 62300),
('5410401000105', 6, '6789012345', 'James', 'Cameron', 'jame@gmail.com', '123456', 65300),
('5410401000106', 7, '7890123456', 'Art', 'anon', 'art@gmail.com', '123456', 70800),
('5410401000107', 8, '8901234567', 'Vee', 'Huang', 'vee@gmail.com', '123456', 50999),
('5410401000108', 9, '9012345678', 'ton', 'anon', 'ton@gmail.com', '123456', 30000),
('5410401000109', 10, '0123456789', 'Pong', 'Rattanaporn', 'pong@gmail.com', '123456', 45000);

-- --------------------------------------------------------

--
-- Table structure for table `Review`
--

CREATE TABLE `Review` (
  `uid_card` char(13) NOT NULL,
  `room_id` int(4) NOT NULL,
  `rating` float NOT NULL,
  `comment` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Review`
--

INSERT INTO `Review` (`uid_card`, `room_id`, `rating`, `comment`) VALUES
('1010406232401', 1, 5, 'ห้องพักกว้าง สะอาด ที่ตั้งเหมาะสำหรับคนที่จะเดินทางมาทำธุระที่ม.เกษตรศาสตร์'),
('1010406232401', 4, 2.9, 'ห้องน้ำมีขนาดเล็ก อาหารเช้ามีน้อยอย่าง พนักงานบริการในห้องอาหารน้อย'),
('1010406232401', 6, 2, 'ทำเลที่พักดี ผ้าเช็ดตัวค่อนข้างเก่า และผ้าปูเตียงสกปรก'),
('1103406860811', 1, 5, 'ห้องพักกว้าง สะดวกสบาย'),
('1103406860811', 7, 1, 'ข้อเสีย โรงแรมเก่าแล้ว มีคราบตะไคร่ในห้องน้ำ พื้นระเบียงมีฝุ่นเยอะ ราคาสูง เมื่อเทียบกับที่พักบริเวณใกล้เคียง ค่าซักรีดแพง ข้อดี อยู๋ใน ม เกษตร เดินทางง่าย พนักงานต้อนรับดี อาหารอร่อย'),
('1210336865902', 2, 4.5, 'หัองกว้างมาก สะอาด สิ่งอำนวยความสะดวกพร้อม'),
('1210336865902', 3, 3.2, 'สะดวก แต่ราคาสูงเกินไป แก้ไขห้องน้ำผ้าม่านเก่ามาก'),
('1210336865902', 4, 3, 'หากมาทำธุระในมหาวิทยาลัยถือว่าสะดวก แต่อาจตั้งบริการตัวเอง ยกกระเป๋าเอง หาที่จอดรถเอง ถ้าพอรับได้ก็โอเคเพราะราคาถือว่าไม่แพง หากเทียบราคาที่พักในระแวกนั้น'),
('1210336865902', 8, 1, 'ห้องนํ้าสกปรก แถมราคายังแพงอีก'),
('1410406860001', 2, 4.3, 'ห้องพักกว้าง สะอาด เดินทางสะดวก'),
('1410406860001', 3, 4, 'การเดินทางสะดวก อาหารอร่อย'),
('1410406860001', 9, 1, 'ห้องพักเก่าและอับมาก'),
('1410406860001', 10, 0.5, 'ผ้าปูที่นอน และผ้าห่มเก่ามากและสกปรก'),
('6410406878000', 2, 2.4, 'พนักงานที่เคาเตอร์พูดจาแย่มาก'),
('6410406878000', 5, 2.6, 'ทำเลดีอย่างเดียวในห้องน้ำมีผมคน');

-- --------------------------------------------------------

--
-- Table structure for table `Role`
--

CREATE TABLE `Role` (
  `role_id` int(4) NOT NULL,
  `role_title` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Role`
--

INSERT INTO `Role` (`role_id`, `role_title`) VALUES
(10, 'Accountant'),
(1, 'Admin'),
(2, 'Conciege'),
(9, 'Contractor'),
(4, 'Front desk agent'),
(5, 'Housekeeping'),
(6, 'Maintenance'),
(7, 'Manager'),
(3, 'Reservations agent'),
(8, 'Vendor');

-- --------------------------------------------------------

--
-- Table structure for table `Room`
--

CREATE TABLE `Room` (
  `room_id` int(4) NOT NULL,
  `room_type_id` int(4) NOT NULL,
  `room_number` int(4) NOT NULL,
  `room_status` varchar(20) NOT NULL
) ;

--
-- Dumping data for table `Room`
--

INSERT INTO `Room` (`room_id`, `room_type_id`, `room_number`, `room_status`) VALUES
(1, 1, 101, 'Available'),
(2, 2, 102, 'Unavailable'),
(3, 3, 103, 'Available'),
(4, 1, 201, 'Unavailable'),
(5, 2, 202, 'Available'),
(6, 3, 203, 'Unavailable'),
(7, 1, 301, 'Available'),
(8, 2, 302, 'Unavailable'),
(9, 3, 303, 'Available'),
(10, 1, 401, 'Unavailable');

-- --------------------------------------------------------

--
-- Table structure for table `RoomType`
--

CREATE TABLE `RoomType` (
  `room_type_id` int(4) NOT NULL,
  `room_type` varchar(31) NOT NULL,
  `room_price` float NOT NULL,
  `room_image` varchar(255) DEFAULT NULL,
  `room_description` varchar(255) DEFAULT NULL
) ;

--
-- Dumping data for table `RoomType`
--

INSERT INTO `RoomType` (`room_type_id`, `room_type`, `room_price`, `room_image`, `room_description`) VALUES
(1, 'Superior', 1000, 'https://www.kuhome.ku.ac.th/images/roomtype/640x480/superior/cover.jpg', 'สะดวกสบายและตกแต่งอย่างดีพร้อมสิ่งอำนวยความสะดวกที่ทันสมัย'),
(2, 'Deluxe', 1200, 'https://www.kuhome.ku.ac.th/images/roomtype/640x480/deluxe/cover.jpg', 'เฟอร์นิเจอร์หรูหราพร้อม มอบความสะดวกสบายและสิ่งอำนวยความสะดวกในระดับที่สูงขึ้นเมื่อเทียบกับห้องซูพีเรียร์'),
(3, 'Suite', 1800, 'https://www.kuhome.ku.ac.th/images/roomtype/640x480/suite/cover.jpg', 'กว้างขวางและหรูหรา การตกแต่งระดับไฮเอนด์ พื้นที่นั่งเล่นแยกเป็นสัดส่วน และสิ่งอำนวยความสะดวกเพิ่มเติม');

-- --------------------------------------------------------

--
-- Table structure for table `User`
--

CREATE TABLE `User` (
  `uid_card` char(13) NOT NULL,
  `u_phone_number` char(10) NOT NULL,
  `u_first_name` varchar(50) NOT NULL,
  `u_last_name` varchar(50) NOT NULL,
  `u_email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `is_ku_member` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `User`
--

INSERT INTO `User` (`uid_card`, `u_phone_number`, `u_first_name`, `u_last_name`, `u_email`, `password`, `is_ku_member`) VALUES
('1010406232401', '0639764384', 'พจมาน', 'สว่างส่องแสง', 'nuPodSavang2012@hotmail.com', 'Bansaitong44', NULL),
('1103406860811', '0897718884', 'ดาวพระศุกร์', 'วงศ์ผู้ดีกว่า', 'daoprasuk.V@ku.th', 'Dy_089771884', 'yes'),
('1210336865902', '0953267949', 'ระวีโชติช่วง', 'มีเกิบ', 'KUravi.s@ku.th', 'Admin#123', 'yes'),
('1410406860001', '0899947785', 'ศรชัย', 'สมบูรณ์', 'sornchaiSB@gmail.com', '#SIlover2023', NULL),
('6410406878000', '0948576867', 'ศรันย์ภวัต', '	โพธิ์สร้อย', 'sarunpawat.p@ku.th', '#Icekung52', 'yes');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Bill`
--
ALTER TABLE `Bill`
  ADD PRIMARY KEY (`invoice_id`),
  ADD UNIQUE KEY `booking_id` (`booking_id`),
  ADD KEY `uid_card` (`uid_card`);

--
-- Indexes for table `Booking`
--
ALTER TABLE `Booking`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `room_id` (`room_id`),
  ADD KEY `uid_card` (`uid_card`);

--
-- Indexes for table `Employee`
--
ALTER TABLE `Employee`
  ADD PRIMARY KEY (`empid_card`),
  ADD UNIQUE KEY `emp_email` (`emp_email`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `Review`
--
ALTER TABLE `Review`
  ADD PRIMARY KEY (`uid_card`,`room_id`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `Role`
--
ALTER TABLE `Role`
  ADD PRIMARY KEY (`role_id`),
  ADD UNIQUE KEY `role_title` (`role_title`);

--
-- Indexes for table `Room`
--
ALTER TABLE `Room`
  ADD PRIMARY KEY (`room_id`),
  ADD UNIQUE KEY `room_number` (`room_number`),
  ADD KEY `room_type_id` (`room_type_id`);

--
-- Indexes for table `RoomType`
--
ALTER TABLE `RoomType`
  ADD PRIMARY KEY (`room_type_id`);

--
-- Indexes for table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`uid_card`),
  ADD UNIQUE KEY `u_email` (`u_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Bill`
--
ALTER TABLE `Bill`
  MODIFY `invoice_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `Booking`
--
ALTER TABLE `Booking`
  MODIFY `booking_id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Role`
--
ALTER TABLE `Role`
  MODIFY `role_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `Room`
--
ALTER TABLE `Room`
  MODIFY `room_id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `RoomType`
--
ALTER TABLE `RoomType`
  MODIFY `room_type_id` int(4) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Bill`
--
ALTER TABLE `Bill`
  ADD CONSTRAINT `bill_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `Booking` (`booking_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bill_ibfk_2` FOREIGN KEY (`uid_card`) REFERENCES `Booking` (`uid_card`) ON DELETE CASCADE;

--
-- Constraints for table `Booking`
--
ALTER TABLE `Booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `Room` (`room_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`uid_card`) REFERENCES `User` (`uid_card`) ON DELETE CASCADE;

--
-- Constraints for table `Employee`
--
ALTER TABLE `Employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `Role` (`role_id`);

--
-- Constraints for table `Review`
--
ALTER TABLE `Review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`uid_card`) REFERENCES `User` (`uid_card`) ON DELETE CASCADE,
  ADD CONSTRAINT `review_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `Room` (`room_id`) ON DELETE CASCADE;

--
-- Constraints for table `Room`
--
ALTER TABLE `Room`
  ADD CONSTRAINT `room_ibfk_1` FOREIGN KEY (`room_type_id`) REFERENCES `RoomType` (`room_type_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
