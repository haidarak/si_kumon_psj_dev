-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 29, 2017 at 09:55 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kumon-psj`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kelas`
--

CREATE TABLE `tbl_kelas` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kelas`
--

INSERT INTO `tbl_kelas` (`id`, `nama`) VALUES
(1, 'Matematika'),
(2, 'Bahasa Inggris');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_murid`
--

CREATE TABLE `tbl_murid` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `kelamin` varchar(10) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `nama_sekolah` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `kodepos` int(11) NOT NULL,
  `no_anggota` int(11) NOT NULL,
  `no_kursus` int(11) NOT NULL,
  `pegawai_id` int(11) DEFAULT NULL,
  `motivasi` text NOT NULL,
  `catatan_khusus` text NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `tanggal_selesai` date DEFAULT NULL,
  `tingkatan_biaya_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_murid`
--

INSERT INTO `tbl_murid` (`id`, `nama`, `kelamin`, `tanggal_lahir`, `nama_sekolah`, `alamat`, `kodepos`, `no_anggota`, `no_kursus`, `pegawai_id`, `motivasi`, `catatan_khusus`, `tanggal_masuk`, `tanggal_selesai`, `tingkatan_biaya_id`) VALUES
(1, 'Anak Budi', 'Laki-Laki', '2012-01-01', 'TK Alam Jaya', 'Jalan Rantai', 4578, 12215151, 124522, 1, 'Ingin seperti bapak', '-', '2017-01-29', NULL, 1),
(4, 'Alam Jaya', 'Laki-Laki', '2001-01-02', 'SD Bukit Lawang', 'Bubutan Raya', 12564, 1111, 127381, 1, '-', '-', '2017-01-30', NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_murid_cuti`
--

CREATE TABLE `tbl_murid_cuti` (
  `id` int(11) NOT NULL,
  `murid_id` int(11) NOT NULL,
  `tanggal_mulai` date NOT NULL,
  `tanggal_selesai` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_murid_initialtest`
--

CREATE TABLE `tbl_murid_initialtest` (
  `id` int(11) NOT NULL,
  `murid_id` int(11) NOT NULL,
  `jenis` varchar(100) NOT NULL,
  `waktu` date NOT NULL,
  `jawaban_benar` int(11) NOT NULL,
  `titik_pangkal` int(11) NOT NULL,
  `kelompok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_murid_kelas`
--

CREATE TABLE `tbl_murid_kelas` (
  `id` int(11) NOT NULL,
  `murid_id` int(11) NOT NULL,
  `kelas_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_murid_kontak`
--

CREATE TABLE `tbl_murid_kontak` (
  `id` int(11) NOT NULL,
  `murid_id` int(11) NOT NULL,
  `peranan` varchar(100) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `usia` int(11) NOT NULL,
  `pekerjaan` varchar(100) NOT NULL,
  `telepon` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_murid_pembayaran`
--

CREATE TABLE `tbl_murid_pembayaran` (
  `id` int(11) NOT NULL,
  `murid_id` int(11) NOT NULL,
  `kelas_id` int(11) DEFAULT NULL,
  `tanggal_bayar` date NOT NULL,
  `tagihan` double NOT NULL,
  `pembayaran` double NOT NULL,
  `bulan_tagihan` int(11) NOT NULL,
  `tahun_tagihan` int(11) NOT NULL,
  `bukti_bayar` text,
  `keterangan` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_murid_sejarah`
--

CREATE TABLE `tbl_murid_sejarah` (
  `id` int(11) NOT NULL,
  `murid_id` int(11) NOT NULL,
  `no_kursus_sebelum` varchar(20) NOT NULL,
  `pembimbing_sebelum` varchar(150) NOT NULL,
  `tipang_sebelum` varchar(50) NOT NULL,
  `kemajuan_sebelum` varchar(50) NOT NULL,
  `tanggal_masuk_sebelum` date NOT NULL,
  `tanggal_keluar_sebelum` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_murid_status_log`
--

CREATE TABLE `tbl_murid_status_log` (
  `id` int(11) NOT NULL,
  `murid_id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pegawai`
--

CREATE TABLE `tbl_pegawai` (
  `id` int(11) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `nomor_pegawai` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pegawai`
--

INSERT INTO `tbl_pegawai` (`id`, `nama`, `nomor_pegawai`) VALUES
(1, 'Budi Santosa island', 'PSJ0001');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_status`
--

CREATE TABLE `tbl_status` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_status`
--

INSERT INTO `tbl_status` (`id`, `nama`) VALUES
(1, 'aktif'),
(2, 'keluar'),
(3, 'cuti'),
(4, 'pindah'),
(5, 'selesai');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tingkatan_biaya`
--

CREATE TABLE `tbl_tingkatan_biaya` (
  `id` int(11) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `biaya` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_tingkatan_biaya`
--

INSERT INTO `tbl_tingkatan_biaya` (`id`, `nama`, `biaya`) VALUES
(1, 'Taman Kanak Kanak', 320000),
(2, 'Sekolah Dasar', 320000),
(3, 'Sekolah Menengah Pertama', 370000),
(4, 'Sekolah Menengah Atas', 370000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_murid`
--
ALTER TABLE `tbl_murid`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `no_anggota` (`no_anggota`);

--
-- Indexes for table `tbl_murid_cuti`
--
ALTER TABLE `tbl_murid_cuti`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_murid_initialtest`
--
ALTER TABLE `tbl_murid_initialtest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_murid_kelas`
--
ALTER TABLE `tbl_murid_kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_murid_kontak`
--
ALTER TABLE `tbl_murid_kontak`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_murid_pembayaran`
--
ALTER TABLE `tbl_murid_pembayaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_murid_sejarah`
--
ALTER TABLE `tbl_murid_sejarah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_murid_status_log`
--
ALTER TABLE `tbl_murid_status_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_pegawai`
--
ALTER TABLE `tbl_pegawai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_status`
--
ALTER TABLE `tbl_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_tingkatan_biaya`
--
ALTER TABLE `tbl_tingkatan_biaya`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_murid`
--
ALTER TABLE `tbl_murid`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_murid_cuti`
--
ALTER TABLE `tbl_murid_cuti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_murid_initialtest`
--
ALTER TABLE `tbl_murid_initialtest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_murid_kelas`
--
ALTER TABLE `tbl_murid_kelas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_murid_kontak`
--
ALTER TABLE `tbl_murid_kontak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_murid_pembayaran`
--
ALTER TABLE `tbl_murid_pembayaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_murid_sejarah`
--
ALTER TABLE `tbl_murid_sejarah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_murid_status_log`
--
ALTER TABLE `tbl_murid_status_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_pegawai`
--
ALTER TABLE `tbl_pegawai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_status`
--
ALTER TABLE `tbl_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_tingkatan_biaya`
--
ALTER TABLE `tbl_tingkatan_biaya`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
