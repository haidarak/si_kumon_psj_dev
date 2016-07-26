-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2016 at 04:16 PM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `kumonreport`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kelas`
--

CREATE TABLE IF NOT EXISTS `tbl_kelas` (
  `id` int(11) NOT NULL,
  `nama_kelas` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kelas`
--

INSERT INTO `tbl_kelas` (`id`, `nama_kelas`) VALUES
(1, 'Melati'),
(2, 'Mawar'),
(3, 'Kenanga'),
(4, 'Kamboja'),
(5, 'Rafflesia'),
(6, 'Sepatu'),
(7, 'Bulan');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_murid`
--

CREATE TABLE IF NOT EXISTS `tbl_murid` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `kelamin` varchar(9) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `sekolah` varchar(100) NOT NULL,
  `kelas` int(11) NOT NULL,
  `alamat` text NOT NULL,
  `kodepos` int(11) NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `tanggal_selesai` date DEFAULT NULL,
  `no_anggota` int(11) NOT NULL,
  `no_kursus` int(11) NOT NULL,
  `pegawai_id` int(11) NOT NULL,
  `motivasi` text NOT NULL,
  `catatan_khusus` text NOT NULL,
  `status_id` int(11) NOT NULL,
  `tingkatan_id` int(11) NOT NULL,
  `kelas_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_murid`
--

INSERT INTO `tbl_murid` (`id`, `nama`, `kelamin`, `tanggal_lahir`, `sekolah`, `kelas`, `alamat`, `kodepos`, `tanggal_masuk`, `tanggal_selesai`, `no_anggota`, `no_kursus`, `pegawai_id`, `motivasi`, `catatan_khusus`, `status_id`, `tingkatan_id`, `kelas_id`) VALUES
(1, 'Seymour Dullahan', 'Laki-laki', '2001-05-18', 'SMAN Belerak 2', 11, 'Jalan Buleleng Utara no 25', 12835, '2015-11-03', NULL, 1516012, 1204, 1, 'Mencari jati diri ke-2', 'Tiada mengerti cinta', 1, 3, 2),
(2, 'Master Potato', 'Laki-laki', '2015-12-31', 'Unown', 69, 'Don''t ask', 10000, '2015-12-30', '2016-01-31', 1111111, 1111, 2, 'hehehehe?', 'hohohoho?', 3, 4, 3),
(12, 'potato', 'Laki-laki', '1990-01-01', 'Mbuh', 0, 'ulalala', 10000, '1999-01-02', '2016-07-22', 111222, 12121, 5, 'Lapar Sekali', 'RASAMBALADOS', 3, 4, 7),
(15, 'Potato the 3rd', 'Laki-laki', '1990-01-01', 'Mbuh', 9, 'ulalala', 10000, '1999-01-01', NULL, 111223, 12121, 5, 'Mencari jati diri ke-2', 'RASAMBALADOS', 1, 2, 6);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_murid_cuti`
--

CREATE TABLE IF NOT EXISTS `tbl_murid_cuti` (
  `id` int(11) NOT NULL,
  `murid_id` int(11) NOT NULL,
  `tanggal_mulai` date NOT NULL,
  `tanggal_selesai` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_murid_initialtest`
--

CREATE TABLE IF NOT EXISTS `tbl_murid_initialtest` (
  `id` int(11) NOT NULL,
  `murid_id` int(11) NOT NULL,
  `jenis` varchar(100) NOT NULL,
  `waktu` date NOT NULL,
  `jaw_benar` int(11) NOT NULL,
  `titik_pangkal` int(11) NOT NULL,
  `kelompok` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_murid_initialtest`
--

INSERT INTO `tbl_murid_initialtest` (`id`, `murid_id`, `jenis`, `waktu`, `jaw_benar`, `titik_pangkal`, `kelompok`) VALUES
(1, 1, 'Tes Masuk', '2015-10-28', 14, 1, 2),
(2, 15, 'Tes Masuk', '2016-01-13', 9, 9, 9);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_murid_kontak`
--

CREATE TABLE IF NOT EXISTS `tbl_murid_kontak` (
  `id` int(11) NOT NULL,
  `murid_id` int(11) NOT NULL,
  `peranan` varchar(100) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `usia` int(11) NOT NULL,
  `pekerjaan` varchar(100) NOT NULL,
  `telepon` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_murid_kontak`
--

INSERT INTO `tbl_murid_kontak` (`id`, `murid_id`, `peranan`, `nama`, `usia`, `pekerjaan`, `telepon`) VALUES
(0, 13, 'Wali', 'potato pro version', 0, 'da best potato', '+62-pota-pota-pota'),
(1, 1, 'Ayah', 'Siahaan', 44, 'Bapak Rumah Tangga Full Time', '+628905754356'),
(2, 2, '-', 'potato', -99, 'potato', 'potato.tomato.salad'),
(4, 12, 'Wali', 'potato pro version 2.0', -69, 'da best potato 5/7', '+62-pota-pota'),
(5, 13, 'Wali', 'potato pro version 0.9', -69, 'da bez g8 potato', '+62-pota-pota-pota'),
(6, 14, 'Wali', 'potato pro version 0.9', -69, 'da bez g8 potato', '+62-pota-pota-pota'),
(7, 15, 'Wali', 'potato pro version 0.9', -69, 'da bez g8 potato', '+62-pota-pota-pota');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_murid_pelajaran`
--

CREATE TABLE IF NOT EXISTS `tbl_murid_pelajaran` (
  `id` int(11) NOT NULL,
  `murid_id` int(11) NOT NULL,
  `pelajaran_id` int(11) NOT NULL,
  `mulai_belajar` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_murid_pelajaran`
--

INSERT INTO `tbl_murid_pelajaran` (`id`, `murid_id`, `pelajaran_id`, `mulai_belajar`) VALUES
(1, 1, 2, '2015-11-18'),
(5, 1, 5, '2016-01-26'),
(6, 1, 3, '2016-01-30'),
(7, 1, 4, '2016-01-19'),
(8, 15, 4, '2016-01-01'),
(9, 2, 5, '2016-01-08');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_murid_pembayaran`
--

CREATE TABLE IF NOT EXISTS `tbl_murid_pembayaran` (
  `id` int(11) NOT NULL,
  `murid_id` int(11) NOT NULL,
  `tanggal_bayar` date NOT NULL,
  `tagihan` double NOT NULL,
  `pembayaran` double NOT NULL,
  `bulan_tagihan` int(11) NOT NULL,
  `tahun_tagihan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_murid_pembayaran`
--

INSERT INTO `tbl_murid_pembayaran` (`id`, `murid_id`, `tanggal_bayar`, `tagihan`, `pembayaran`, `bulan_tagihan`, `tahun_tagihan`) VALUES
(1, 1, '2015-11-11', 150000, 150000, 11, 2015);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_murid_sejarah`
--

CREATE TABLE IF NOT EXISTS `tbl_murid_sejarah` (
  `id` int(11) NOT NULL,
  `murid_id` int(11) NOT NULL,
  `no_kursus_sebelum` int(11) NOT NULL,
  `pembimbing_sebelum` varchar(150) NOT NULL,
  `tipang_sebelum` varchar(50) NOT NULL,
  `kemajuan_sebelum` varchar(50) NOT NULL,
  `tanggal_masuk_sebelum` date NOT NULL,
  `tanggal_keluar_setelah` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pegawai`
--

CREATE TABLE IF NOT EXISTS `tbl_pegawai` (
  `id` int(11) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `nomor_pegawai` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pegawai`
--

INSERT INTO `tbl_pegawai` (`id`, `nama`, `nomor_pegawai`) VALUES
(1, 'Budi Sentosa', 141518),
(2, 'Setyawan Hendarto', 1415119),
(3, 'Muhammad Yasin', 1415120),
(5, 'LORD POTATO 13', 1234567890);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pelajaran`
--

CREATE TABLE IF NOT EXISTS `tbl_pelajaran` (
  `id` int(11) NOT NULL,
  `nama` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pelajaran`
--

INSERT INTO `tbl_pelajaran` (`id`, `nama`) VALUES
(1, 'Matematika Dasar'),
(2, 'Matematika Diskrit'),
(3, 'Bahasa Inggris'),
(4, 'Cao Ni Ma'),
(5, 'Street Food 101');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_status`
--

CREATE TABLE IF NOT EXISTS `tbl_status` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_status`
--

INSERT INTO `tbl_status` (`id`, `nama`) VALUES
(1, 'Aktif'),
(2, 'Cuti'),
(3, 'Selesai');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tingkatan`
--

CREATE TABLE IF NOT EXISTS `tbl_tingkatan` (
  `id` int(11) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `biaya` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_tingkatan`
--

INSERT INTO `tbl_tingkatan` (`id`, `nama`, `biaya`) VALUES
(1, 'Sekolah Dasar', 150000),
(2, 'Sekolah Menengah Pertama', 200000),
(3, 'Sekolah Menengah Atas', 350000),
(4, 'Perguruan Tinggi', 400000);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE IF NOT EXISTS `tbl_user` (
  `id` int(255) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `authKey` varchar(255) NOT NULL,
  `accessToken` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `username`, `password`, `authKey`, `accessToken`) VALUES
(1, 'potato', '815a2cca39c370bdcbe508b88fdc9de2f0289b75', 'testpotakey', 'pota-key');

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
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `no_anggota` (`no_anggota`);

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
-- Indexes for table `tbl_murid_kontak`
--
ALTER TABLE `tbl_murid_kontak`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_murid_pelajaran`
--
ALTER TABLE `tbl_murid_pelajaran`
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
-- Indexes for table `tbl_pegawai`
--
ALTER TABLE `tbl_pegawai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_pelajaran`
--
ALTER TABLE `tbl_pelajaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_status`
--
ALTER TABLE `tbl_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_tingkatan`
--
ALTER TABLE `tbl_tingkatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tbl_murid`
--
ALTER TABLE `tbl_murid`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `tbl_murid_cuti`
--
ALTER TABLE `tbl_murid_cuti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_murid_initialtest`
--
ALTER TABLE `tbl_murid_initialtest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_murid_kontak`
--
ALTER TABLE `tbl_murid_kontak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tbl_murid_pelajaran`
--
ALTER TABLE `tbl_murid_pelajaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `tbl_pegawai`
--
ALTER TABLE `tbl_pegawai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
