-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: May 13, 2023 at 02:22 PM
-- Server version: 5.7.34
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `healthcare`
--

-- --------------------------------------------------------

--
-- Table structure for table `ambulan`
--

CREATE TABLE `ambulan` (
  `id_ambulan` int(11) NOT NULL,
  `nama_pasien` varchar(100) NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `alamat_pasien` varchar(250) NOT NULL,
  `location` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `homecare`
--

CREATE TABLE `homecare` (
  `id_hc` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `no_hp` varchar(14) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `homecare`
--

INSERT INTO `homecare` (`id_hc`, `nama`, `tempat_lahir`, `tanggal_lahir`, `no_hp`, `alamat`) VALUES
(3, 'Coba Dari Anonim', 'Banjarbaru', '2023-03-08', '08231237812', 'Jl Banjar Baru Utara No 26');

-- --------------------------------------------------------

--
-- Table structure for table `pendaftar`
--

CREATE TABLE `pendaftar` (
  `id_daftar` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `alamat` varchar(250) NOT NULL,
  `hari` varchar(6) NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jaminan` varchar(150) NOT NULL,
  `kartu_jaminan` varchar(150) NOT NULL,
  `poli` varchar(100) NOT NULL,
  `dokter` varchar(100) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pendaftar`
--

INSERT INTO `pendaftar` (`id_daftar`, `nama`, `no_hp`, `alamat`, `hari`, `tempat_lahir`, `tanggal_lahir`, `jaminan`, `kartu_jaminan`, `poli`, `dokter`, `tanggal`) VALUES
(1, 'Andi Malarangen', '0123871237123', 'Kota Baru', 'Rabu', 'Blitar', '2022-12-27', 'BPJS', '1238912739821', 'Mata', 'Dr. Mirna Rizki ', '2023-05-17');

-- --------------------------------------------------------

--
-- Table structure for table `pengaduan`
--

CREATE TABLE `pengaduan` (
  `id` int(11) NOT NULL,
  `judul` varchar(250) NOT NULL,
  `isi` text NOT NULL,
  `tanggal_kejadian` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lokasi` varchar(250) DEFAULT NULL,
  `instansi` varchar(100) NOT NULL,
  `asal_pelapor` varchar(100) DEFAULT NULL,
  `kategori` varchar(250) NOT NULL,
  `lampiran` varchar(100) DEFAULT NULL,
  `type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pengaduan`
--

INSERT INTO `pengaduan` (`id`, `judul`, `isi`, `tanggal_kejadian`, `lokasi`, `instansi`, `asal_pelapor`, `kategori`, `lampiran`, `type`) VALUES
(2, 'COba Pengaduan 2', 'as a d asdas dasdnasdnasnd asdjasdknasd askdnjas dkjasndjkasndjnasjkdnasjkdnajskndkjas dkjasdkj askjdnskd jasd', '2023-05-02 00:00:00', 'Banjarmasin', 'Kejaksaan', NULL, 'Sosial Dan Kesejahteraan', NULL, 'Pengaduan'),
(3, 'Laporan percobaan ke 3', 'Kasda sdsd asldmaldm lamsdl masld aslkdmakldml asdlkasmdlk askldasd asdm alsmdlasm d', '2023-05-23 00:00:00', 'Banjarbaru', 'RDUD', NULL, 'Pendidikan Dan Kebudayaan', '1683337094BeRu0eXAP9.jpg', 'Pengaduan'),
(4, 'Penyampaian Aspirasi Mahasiswa Tentang BPJS Kesehatan', 'Many web applications require users to verify their email addresses before using the application. Rather than forcing you to re-implement this on each application, Laravel provides convenient methods for sending and verifying email verification requests. Many web applications require users to verify their email addresses before using the application. Rather than forcing you to re-implement this on each application, Laravel provides convenient methods for sending and verifying email verification requests. Many web applications require users to verify their email addresses before using the application. Rather than forcing you to re-implement this on each application, Laravel provides convenient methods for sending and verifying email verification requests.', '2023-05-06 08:40:22', NULL, 'Banjarbaru', 'Jakarta Barat', 'Energi Dan Sumber Daya Alam', '1683337222P6VsG1JTrY.jpg', 'Aspirasi'),
(5, 'Permintaan Informasi Daftar Pasien', 'asdn asjdnasd asdjkasn djkns dasd', '2023-05-06 08:51:16', NULL, 'RSUD', 'Jakarta Selatan', 'Kesehatan', NULL, 'Permintaan Informasi');

-- --------------------------------------------------------

--
-- Table structure for table `praktek`
--

CREATE TABLE `praktek` (
  `id_praktek` int(11) NOT NULL,
  `nama_dokter` varchar(250) NOT NULL,
  `hari` varchar(10) NOT NULL,
  `dari_jam` varchar(6) NOT NULL,
  `sampai_jam` varchar(6) NOT NULL,
  `img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `praktek`
--

INSERT INTO `praktek` (`id_praktek`, `nama_dokter`, `hari`, `dari_jam`, `sampai_jam`, `img`) VALUES
(1, 'Dr. Indra Lee', 'Senin', '08:10', '15:20', '1682988236PFCq1BhXSf.jpg'),
(2, 'Dr Samsudin Sh . Mh', 'Selasa', '08:30', '14:30', '1682988566Aoe7tptLn0.jpg'),
(3, 'Dr. Mirna Rizki ', 'Rabu', '07:30', '12:30', '1682988596uPhei7Vg3S.jpg'),
(4, 'Dr. Uchiha Bayu', 'Kamis', '09:00', '15:00', '1682988634SQOeHYiplQ.jpg'),
(5, 'Dr. Uchiha Bayu 2', 'Kamis', '09:00', '15:00', '1682988634SQOeHYiplQ.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` varchar(10) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `username`, `password`, `role`, `nama`) VALUES
(1, 'admin', '202cb962ac59075b964b07152d234b70', 'admin', 'Administrator');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ambulan`
--
ALTER TABLE `ambulan`
  ADD PRIMARY KEY (`id_ambulan`);

--
-- Indexes for table `homecare`
--
ALTER TABLE `homecare`
  ADD PRIMARY KEY (`id_hc`);

--
-- Indexes for table `pendaftar`
--
ALTER TABLE `pendaftar`
  ADD PRIMARY KEY (`id_daftar`);

--
-- Indexes for table `pengaduan`
--
ALTER TABLE `pengaduan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `praktek`
--
ALTER TABLE `praktek`
  ADD PRIMARY KEY (`id_praktek`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ambulan`
--
ALTER TABLE `ambulan`
  MODIFY `id_ambulan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `homecare`
--
ALTER TABLE `homecare`
  MODIFY `id_hc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pendaftar`
--
ALTER TABLE `pendaftar`
  MODIFY `id_daftar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pengaduan`
--
ALTER TABLE `pengaduan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `praktek`
--
ALTER TABLE `praktek`
  MODIFY `id_praktek` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
