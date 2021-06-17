-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2021 at 07:38 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phpdasar`
--

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `id` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `nip` int(100) NOT NULL,
  `email` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`id`, `nama`, `nip`, `email`) VALUES
(1, 'Alam Rahmatulloh', 111111111, 'alamraya@gmail.com'),
(2, 'Aradea', 222222222, 'aradea@gmail.com'),
(3, 'Rahmi Nur Shofa', 33333333, 'rahmi@gmail.com'),
(4, 'Acep Irham Gufroni', 444444444, 'acep@gmail.com'),
(5, 'Aldy Putra', 555555555, 'aldy@gmail.com'),
(6, 'Husni Mubarak', 66666666, 'husni@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `nim` int(11) NOT NULL,
  `jurusan` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nama`, `nim`, `jurusan`, `email`, `gambar`) VALUES
(1, 'Mohammad Rizal Ramli', 187006028, 'Informatika', 'rizalramlijr@gmail.com', '5f8580df3357b.jpg'),
(2, 'Dimas Pratama', 187006047, 'Informatika', 'dimaspratama@gmail.com', 'dimas.jpg'),
(3, 'Yuda Maulana', 187006011, 'Informatika', 'yudmaul@gmail.com', 'yuda.jpg'),
(4, 'Alif Yuril', 187006012, 'Informatika', 'alif@gmail.com', 'alif.jpg'),
(5, 'Luthfi Farhan', 187006111, 'Informatika', 'luthfi@gmail.com', 'luthfi.jpg'),
(6, 'Rangga Arya', 187006023, 'Informatika', 'rangga@gmail.com', 'rangga.jpg'),
(7, 'Tedi Maulana', 187006033, 'Informatika', 'tediwar@gmail.com', 'tedi.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'rizal', '$2y$10$WchzxpHQCWteFf8JaxVYI.KzT23YwQ2KmvGdR.BZW5W9wW9qdQg1u'),
(4, 'admin', '$2y$10$ONfN1axOT6GeuUTwL4kKm.wMNAVcVxC96G/4nfiN9FTn5C9UnUhFS');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
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
-- AUTO_INCREMENT for table `dosen`
--
ALTER TABLE `dosen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
