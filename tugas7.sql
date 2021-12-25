-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 25, 2021 at 07:30 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tugas7`
--

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `berat` int(11) DEFAULT NULL,
  `stok` int(11) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `id_user`, `nama`, `harga`, `berat`, `stok`, `deskripsi`, `created_at`, `updated_at`) VALUES
(17, NULL, '1', 1, 1, 1, '1', '2021-12-23 02:05:46', '2021-12-23 02:05:46'),
(18, NULL, 'aria', 1, 1, 1, '1', '2021-12-23 02:15:40', '2021-12-23 02:15:40'),
(19, 1, 'qw', 12, 12, 231, 'adasd', '2021-12-23 02:19:03', '2021-12-23 02:19:03'),
(20, 1, 'ASUS ROG ZEPHYRUS G15 GA503QM 165Hz RTX3060 RYZEN 9 5900HS 16GB 1TBssd - Abu-abu', 12, 12, 12, 'asdasd', '2021-12-23 02:19:26', '2021-12-23 02:19:26'),
(23, 6, 'ASUS ROG ZEPHYRUS G15 GA503QM 165Hz RTX3060 RYZEN 9 5900HS 16GB 1TBssd - Abu-abu', 6000, 6000, 10, 'laptop', '2021-12-23 02:30:54', '2021-12-23 02:30:54'),
(25, 7, 'jam saiko', 150000, 200, 13, 'jam tangan modern', '2021-12-24 23:25:12', '2021-12-24 23:25:12'),
(26, 7, 'jam alexandre christie', 595000, 100, 10, 'jam tangan kekinian', '2021-12-24 23:26:42', '2021-12-24 23:26:42');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `nama`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(7, 'dea', 'deamarwan@gmail.com', 'dea', '$2y$10$0jwtfLjBuuIcOTl0AIuER.IWJjHKbL4jgULpqof466lKcy8mxE.4S', NULL, '2021-12-24 23:14:43', '2021-12-24 23:14:43'),
(8, 'dea 2', 'dea2@gmail.com', 'dea 2', '$2y$10$uicyZ71v3UbfJc2WjQn5rOcKIfwHiLknE.JlOVUR0k7qE5wwbeqOS', NULL, '2021-12-24 23:27:15', '2021-12-24 23:27:15');

-- --------------------------------------------------------

--
-- Table structure for table `user_detail`
--

CREATE TABLE `user_detail` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `no_handphone` varchar(15) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_detail`
--

INSERT INTO `user_detail` (`id`, `id_user`, `no_handphone`, `created_at`, `updated_at`) VALUES
(1, 4, '089689203086', '2021-10-29 08:41:22', '2021-10-29 08:41:22'),
(2, 5, '089689203086', '2021-12-23 02:19:58', '2021-12-23 02:19:58'),
(3, 6, '089689203086', '2021-12-23 02:30:23', '2021-12-23 02:30:23'),
(4, 7, '089689203086', '2021-12-24 23:14:43', '2021-12-24 23:14:43'),
(5, 8, '08968929333', '2021-12-24 23:27:15', '2021-12-24 23:27:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_detail`
--
ALTER TABLE `user_detail`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_detail`
--
ALTER TABLE `user_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
