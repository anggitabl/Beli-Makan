-- phpMyAdmin SQL Dump
-- version 5.3.0-dev+20220707.a5d60f5698
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 19, 2023 at 03:08 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbpemesanan`
--

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenisKelamin` enum('male','female') COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` bigint(12) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `Name`, `jenisKelamin`, `telephone`, `created_at`, `updated_at`) VALUES
(45, 'aaaaaa', 'male', 12345678, '2023-08-24 18:58:01', '2023-08-24 18:58:01');

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan`
--

CREATE TABLE `pemesanan` (
  `id_pemesanan` int(50) NOT NULL,
  `tanggal_pemesanan` date NOT NULL,
  `total_belanja` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pemesanan`
--

INSERT INTO `pemesanan` (`id_pemesanan`, `tanggal_pemesanan`, `total_belanja`) VALUES
(38, '2020-06-22', 17000),
(39, '2020-06-22', 25000),
(40, '2020-06-22', 22000),
(41, '2020-06-22', 56000),
(43, '2022-05-27', 25000);

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan_produk`
--

CREATE TABLE `pemesanan_produk` (
  `id_pemesanan_produk` int(50) NOT NULL,
  `id_pemesanan` int(50) NOT NULL,
  `id_menu` varchar(50) NOT NULL,
  `jumlah` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pemesanan_produk`
--

INSERT INTO `pemesanan_produk` (`id_pemesanan_produk`, `id_pemesanan`, `id_menu`, `jumlah`) VALUES
(7, 32, '9', 1),
(8, 32, '11', 1),
(9, 33, '16', 1),
(10, 33, '6', 1),
(11, 34, '13', 1),
(12, 34, '8', 1),
(13, 34, '9', 1),
(14, 34, '17', 1),
(15, 35, '9', 2),
(16, 35, '14', 1),
(17, 36, '8', 1),
(18, 37, '13', 1),
(19, 37, '16', 1),
(20, 38, '8', 1),
(21, 39, '9', 1),
(22, 39, '16', 1),
(23, 40, '10', 1),
(24, 40, '14', 1),
(25, 41, '17', 1),
(26, 41, '10', 1),
(27, 41, '9', 2),
(28, 42, '9', 1),
(29, 42, '14', 1),
(30, 42, '7', 1),
(31, 42, '17', 1),
(32, 43, '6', 1),
(33, 43, '7', 1);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_menu` int(50) NOT NULL,
  `nama_menu` varchar(50) NOT NULL,
  `jenis_menu` varchar(50) NOT NULL,
  `stok` int(50) NOT NULL,
  `harga` int(50) NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_menu`, `nama_menu`, `jenis_menu`, `stok`, `harga`, `gambar`) VALUES
(7, 'Menu 2', '', 1, 1, 'WeyM8.jpg'),
(8, 'Menu 3', '', 1, 1, 'WeyM8.jpg'),
(9, 'Menu 4', '', 1, 1, 'WeyM8.jpg'),
(10, 'Lele Bakar', '', 50, 12000, 'WeyM8.jpg'),
(11, 'Nasi Goreng', '', 78, 10000, 'WeyM8.jpg'),
(12, 'Nasi Putih', '', 100, 2000, 'WeyM8.jpg'),
(13, 'Es Jeruk', '', 55, 8000, 'WeyM8.jpg'),
(14, 'Jus Alpukat', 'Minuman', 50, 10000, 'juspukat.jpg'),
(15, 'Jus Mangga', 'Minuman', 50, 10000, 'jusmangga.jpg'),
(16, 'Teh Obeng', 'Minuman', 60, 5000, 'tehobeng.jpg'),
(17, 'Air Mineral', 'Minuman', 100, 4000, 'sanford.jpg'),
(21, 'Menu 1', 'Makanan', 1, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(25) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `nama_lengkap` varchar(25) NOT NULL,
  `jenis_kelamin` varchar(25) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `alamat` varchar(25) NOT NULL,
  `hp` varchar(25) NOT NULL,
  `status` enum('admin','user','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `nama_lengkap`, `jenis_kelamin`, `tanggal_lahir`, `alamat`, `hp`, `status`) VALUES
(1, 'daus', 'daus123', 'Alfirdaus Muhammad Farhan', 'Laki-Laki', '1998-05-14', 'Tanjung Piayu', '089560328673', 'admin'),
(2, 'rinaldo', 'rinaldo123', 'Rinaldo', 'Laki-Laki', '1999-01-11', 'Tanjung Uma', '085233748222', 'user'),
(3, 'admin', 'admin', 'Alfirdaus Muhammad Farhan', 'Laki-Laki', '1998-05-19', 'Tanjung Piayu', '089123614882', 'admin'),
(4, 'user', 'user', 'Rinaldo', 'Laki-Laki', '1998-10-22', 'Tanjung Uma', '089560328673', 'user'),
(5, 'rinaldo', 'rinaldo', 'Rinaldo', 'Laki-Laki', '1999-02-23', 'Tanjung Uma', '089123614882', 'user'),
(6, 'daus', 'daus123', 'Alfirdaus Muhammad Farhan', 'Laki-Laki', '1998-05-14', 'Tanjung Piayu', '085233748222', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`id_pemesanan`);

--
-- Indexes for table `pemesanan_produk`
--
ALTER TABLE `pemesanan_produk`
  ADD PRIMARY KEY (`id_pemesanan_produk`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `pemesanan`
--
ALTER TABLE `pemesanan`
  MODIFY `id_pemesanan` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `pemesanan_produk`
--
ALTER TABLE `pemesanan_produk`
  MODIFY `id_pemesanan_produk` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_menu` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



