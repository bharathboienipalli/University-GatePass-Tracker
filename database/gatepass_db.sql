CREATE DATABASE gatepass_db;
USE gatepass_db;


CREATE TABLE `admins` (
  `admin_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO `admins` (`admin_id`, `name`, `password`) VALUES
(1, 'admin', 'admin123');


CREATE TABLE `gatepasses` (
  `gatepass_id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `erp` int(11) DEFAULT NULL,
  `reason` varchar(200) DEFAULT NULL,
  `entry_date` date DEFAULT NULL,
  `entry_time` time DEFAULT NULL,
  `exit_date` date DEFAULT NULL,
  `exit_time` time DEFAULT NULL,
  `status` varchar(20) DEFAULT 'PENDING'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO `gatepasses` (`gatepass_id`, `student_id`, `name`, `erp`, `reason`, `entry_date`, `entry_time`, `exit_date`, `exit_time`, `status`) VALUES
(2, 1, 'Bharath Reddy', 10002, 'Vacation', '2024-07-20', '11:00:00', '2024-07-16', '07:00:00', 'APPROVED'),
(3, 1, 'Bharath Reddy', 10002, 'Medical', '2024-07-30', '05:00:00', '2024-07-18', '12:00:00', 'APPROVED'),
(5, 1, 'Bharath Reddy', 10002, 'Movie', '2024-09-06', '22:05:00', '2024-09-06', '22:03:00', 'REJECTED');


CREATE TABLE `rectors` (
  `rector_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO `rectors` (`rector_id`, `name`, `password`) VALUES
(1, 'floor3', 'rector123');


CREATE TABLE `students` (
  `student_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `erp` int(15) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO `students` (`student_id`, `name`, `erp`, `password`) VALUES
(1, 'Bharath Reddy', 10002, 'user123');