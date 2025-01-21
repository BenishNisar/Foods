-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 21, 2025 at 07:34 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodies`
--

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `role_name` varchar(900) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(900) NOT NULL,
  `password` varchar(900) NOT NULL,
  `dob` date DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `firstname` varchar(900) NOT NULL,
  `lastname` varchar(900) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `dob`, `role`, `created_at`, `updated_at`, `firstname`, `lastname`) VALUES
(1, 'benish@gmail.com', '$2y$10$JhKceTtdG6ktvq01P1RnYet8pt6gVmt1n0PxmUIOF6AEjDfSUMPbe', '2025-01-14', 1, '2025-01-21 10:40:45', '2025-01-21 09:31:36', 'benish', 'benish'),
(2, 'noman@gmail.com', '$2y$10$7AKEkm5eJRSyMsVr8Hikc.8sMt3nrPQ/w1gqPjxogtdcRgPcvOVkW', NULL, 1, '2025-01-22 02:01:28', '2025-01-22 02:01:28', 'noman', NULL),
(3, 'dua@gmail.com', '$2y$10$d0f/IyB4AirPlLnU0atwse.jN0q5U8Qs4vEjmlIkz0JzC68mBHsfO', NULL, 1, '2025-01-22 02:23:40', '2025-01-22 02:23:40', 'dua', NULL),
(4, 'dua@gmail.com', '$2y$10$JiX4bRrISDGz9Oq6fYnvBejBbF3tW0fq1W4n5vhHAUW/CDp12tK5S', NULL, 1, '2025-01-22 02:24:41', '2025-01-22 02:24:41', 'dua', NULL),
(5, 'dua@gmail.com', '$2y$10$uMO98VFv76xKSMKMi0J7EuJuhkOF183YIKXrQDjqlLcDvmF41PQHO', NULL, 1, '2025-01-22 02:25:19', '2025-01-22 02:25:19', 'dua', NULL),
(6, 'testing@gmail.com', '$2y$10$bV9q7rlfJ3uHcrAkYQX0q.k/RuHT.z3I4HnyVa43pd8FcBCOLW0WG', NULL, 1, '2025-01-22 02:27:09', '2025-01-22 02:27:09', 'testing', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
