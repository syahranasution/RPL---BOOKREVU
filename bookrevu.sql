-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 11, 2025 at 04:13 PM
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
-- Database: `bookrevu`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `nama_lengkap`) VALUES
(1, 'syahra', '123', 'Syahra Rizky Ramadhani Nasution');

-- --------------------------------------------------------

--
-- Table structure for table `ongkir`
--

CREATE TABLE `ongkir` (
  `id_ongkir` int(11) NOT NULL,
  `nama_kota` varchar(100) NOT NULL,
  `nama_kecamatan` varchar(100) NOT NULL,
  `tarif` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ongkir`
--

INSERT INTO `ongkir` (`id_ongkir`, `nama_kota`, `nama_kecamatan`, `tarif`) VALUES
(1, 'Jakarta Barat', 'Cengkareng', 12000),
(2, 'jakarta_barat', 'grogol', 14000),
(3, 'jakarta_barat', 'kalideres', 20000),
(5, 'jakarta_barat', 'kb_jeruk', 15000),
(6, 'jakarta_barat', 'kembangan', 13000),
(7, 'jakarta_barat', 'palmerah', 17000),
(8, 'jakarta_barat', 'taman_sari', 20000),
(9, 'jakarta_barat', 'tambora', 25000),
(10, 'pulau_seribu', 'seribu_selatan', 50000),
(11, 'pulau_seribu', 'seribu_utara', 60000),
(12, 'pulau_seribu', 'pramuka', 55000),
(13, 'jakarta_pusat', 'cempaka_putih', 10000),
(14, 'jakarta_pusat', 'gambir', 23000),
(15, 'jakarta_pusat', 'johar_baru', 21000),
(16, 'jakarta_pusat', 'kemayoran', 20000),
(17, 'jakarta_pusat', 'menteng', 28000),
(18, 'jakarta_pusat', 'sawah_besar', 25000),
(19, 'jakarta_pusat', 'senen', 22000),
(20, 'jakarta_pusat', 'tanah_abang', 25000),
(21, 'jakarta_selatan', 'cilandak', 20000),
(22, 'jakarta_selatan', 'jagakarsa', 23000),
(23, 'jakarta_selatan', 'kebayoran_baru', 21000),
(24, 'jakarta_selatan', 'kebayoran_lama', 20000),
(25, 'jakarta_selatan', 'mampang_prapatan', 28000),
(26, 'jakarta_selatan', 'pancoran', 25000),
(27, 'jakarta_selatan', 'ps_minggu', 22000),
(28, 'jakarta_selatan', 'pesanggrahan', 25000),
(29, 'jakarta_selatan', 'setia_budi', 22000),
(30, 'jakarta_selatan', 'tebet', 25000),
(31, 'jakarta_timur', 'cakung', 20000),
(32, 'jakarta_timur', 'cipayung', 23000),
(33, 'jakarta_timur', 'ciracas', 21000),
(34, 'jakarta_timur', 'duren_sawit', 20000),
(35, 'jakarta_timur', 'jatinegara', 28000),
(36, 'jakarta_timur', 'kramat_jati', 25000),
(37, 'jakarta_timur', 'makasar', 22000),
(38, 'jakarta_timur', 'matraman', 25000),
(39, 'jakarta_timur', 'ps_rebo', 22000),
(40, 'jakarta_timur', 'pulo_gadung', 25000),
(41, 'jakarta_utara', 'cilincing', 12000),
(42, 'jakarta_utara', 'kelapa_gading', 23000),
(43, 'jakarta_utara', 'koja', 14000),
(44, 'jakarta_utara', 'pademangan', 15000),
(45, 'jakarta_utara', 'penjaringan', 15000);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `email_pelanggan` varchar(100) NOT NULL,
  `password_pelanggan` varchar(100) NOT NULL,
  `nama_pelanggan` varchar(100) NOT NULL,
  `telpon_pelanggan` varchar(100) NOT NULL,
  `level` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `email_pelanggan`, `password_pelanggan`, `nama_pelanggan`, `telpon_pelanggan`, `level`) VALUES
(7, 'syahranasution281@gmail.com', '123', 'syahra', '08765544', 'customer'),
(8, 'syahranasution281@gmail.com', '1122', 'rara', '09877656788', 'customer'),
(9, 'syahranasution281@gmail.com', '1234', 'syahra', '089766554', 'customer'),
(10, 'syahranasution281@gmail.com', '123', 'lifia', '08976544', 'customer'),
(11, 'rafi@gmail.com', '1234', 'rafi', '08976665544', 'customer'),
(12, 'syahranasution281@gmail.com', '345', 'syahra', '08976665544', 'customer');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` int(11) NOT NULL,
  `id_pembelian` int(11) NOT NULL,
  `nama` varchar(256) NOT NULL,
  `bank` varchar(256) NOT NULL,
  `no_rek` varchar(50) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `bukti` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`id_pembayaran`, `id_pembelian`, `nama`, `bank`, `no_rek`, `jumlah`, `tanggal`, `bukti`) VALUES
(11, 27, 'syahra', 'mandiri', '5677268', 122000, '2024-11-22', '20241122093410logo.jpg'),
(12, 29, 'rara', 'bca', '12238263', 120250, '2024-11-22', '20241122132129Usecase.drawio.png'),
(13, 32, 'syahra', 'bca', '121324', 9000, '2024-12-02', '20241202135934admin.png'),
(14, 35, 'lifia', 'bca', '123456', 202000, '2024-12-12', '20241212100143UML-Page-3.drawio.png'),
(15, 36, 'rafi', 'mandiri', '123456', 110000, '2024-12-13', '20241213134754Screenshot 2024-04-27 133338.png'),
(16, 37, 'syahra', 'bca', '34567', 195000, '2025-01-09', '20250109074330UML-Page-3.drawio (1).png');

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE `pembelian` (
  `id_pembelian` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `id_ongkir` int(11) NOT NULL,
  `tanggal_pembelian` date NOT NULL,
  `total_pembelian` int(11) NOT NULL,
  `nama_kota` varchar(50) NOT NULL,
  `tarif` int(11) NOT NULL,
  `alamat_pengiriman` text NOT NULL,
  `status_pembelian` varchar(100) NOT NULL DEFAULT 'pending',
  `resi_pengiriman` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pembelian`
--

INSERT INTO `pembelian` (`id_pembelian`, `id_pelanggan`, `id_ongkir`, `tanggal_pembelian`, `total_pembelian`, `nama_kota`, `tarif`, `alamat_pengiriman`, `status_pembelian`, `resi_pengiriman`) VALUES
(27, 7, 27, '2024-11-22', 122000, 'jakarta_selatan', 22000, 'jalan merdeka', 'barang dikirim', '13123123'),
(29, 8, 40, '2024-11-22', 120250, 'jakarta_timur', 25000, 'jl. bojongsoang', 'barang dikirim', '67890'),
(32, 9, 2, '2024-12-02', 109000, 'jakarta_barat', 14000, 'JALAN RAYAA', 'lunas', '6790907'),
(35, 10, 29, '2024-12-12', 202000, 'jakarta_selatan', 22000, 'jalan baru', 'barang dikirim', '7890'),
(36, 11, 28, '2024-12-13', 110000, 'jakarta_selatan', 25000, 'jalan baru', 'barang dikirim', '6789077'),
(37, 12, 28, '2025-01-09', 195000, 'jakarta_selatan', 25000, 'jl.baru no 12', 'barang dikirim', '7878787'),
(38, 12, 27, '2025-01-09', 122000, 'jakarta_selatan', 22000, 'jalan baru 1111', 'pending', '');

-- --------------------------------------------------------

--
-- Table structure for table `pembelian_produk`
--

CREATE TABLE `pembelian_produk` (
  `id_pembelian_produk` int(11) NOT NULL,
  `id_pembelian` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `subharga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pembelian_produk`
--

INSERT INTO `pembelian_produk` (`id_pembelian_produk`, `id_pembelian`, `id_produk`, `jumlah`, `nama`, `harga`, `subharga`) VALUES
(32, 27, 2, 1, 'A World Away From You Forever', 100000, 100000),
(34, 29, 1, 1, 'When We First Meet', 95000, 95000),
(35, 29, 3, 5, 'Different World', 50, 250),
(38, 32, 1, 1, 'When We First Meet', 95000, 95000),
(41, 35, 1, 1, 'When We First Meet', 95000, 95000),
(42, 35, 3, 1, 'Different World', 85000, 85000),
(43, 36, 3, 1, 'Different World', 85000, 85000),
(44, 37, 3, 2, 'Different World', 85000, 170000),
(45, 38, 2, 1, 'A World Away From You Forever', 100000, 100000);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `id` int(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(13) NOT NULL,
  `pesan` varchar(500) NOT NULL,
  `level` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_contact`
--

INSERT INTO `tbl_contact` (`id`, `nama`, `email`, `phone`, `pesan`, `level`) VALUES
(4, 'syahra', 'syahra.aja28@gmail.com', '081288400995', 'ada yg gurih ga?', 'customer'),
(5, 'rafi', 'rafi@gmail.com', '085218646233', 'ubah no telp saya', 'penulis'),
(6, 'syahra', 'syahranasution281@gmail.com', '085218646233', 'barang cacat', 'penulis'),
(7, 'syahra', 'syahranasution281@gmail.com', '085218646233', 'barang cacat', 'penulis'),
(8, 'syahra', 'syahranasution281@gmail.com', '085218646233', 'barang cacat', 'penulis'),
(9, 'syahra', 'syahranasution281@gmail.com', '085218646233', 'buku saya cari tidak ada', 'penulis');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_produk`
--

CREATE TABLE `tbl_produk` (
  `id_produk` int(11) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `harga_produk` int(11) NOT NULL,
  `foto_produk` varchar(100) NOT NULL,
  `deskripsi_produk` varchar(5000) NOT NULL,
  `stok_produk` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_produk`
--

INSERT INTO `tbl_produk` (`id_produk`, `nama_produk`, `harga_produk`, `foto_produk`, `deskripsi_produk`, `stok_produk`) VALUES
(1, 'When We First Meet', 95000, 'book1.jpg', 'Pertemuan pertama mereka tampak biasa saja, tetapi ternyata membawa perubahan besar dalam hidup masing-masing. Novel ini mengisahkan perjalanan dua tokoh utama, yang dipertemukan secara tak terduga dalam situasi sederhana namun penuh makna. Mereka mulai berbagi cerita, impian, dan luka masa lalu yang selama ini tertutup rapat.\r\n\r\nSeiring berjalannya waktu, hubungan mereka berkembang menjadi sesuatu yang lebih dari sekadar pertemuan kebetulan. Namun, berbagai rintangan datang menguji kepercayaan, cinta, dan keputusan yang harus mereka ambil. Apakah mereka mampu bertahan bersama, ataukah pertemuan itu hanya menjadi kenangan yang singkat namun indah?\r\n\r\n\"When We First Meet\" adalah kisah romantis yang menyentuh hati, penuh dengan emosi, pelajaran hidup, dan pesan tentang keberanian membuka diri untuk cinta yang baru.\r\n', 100),
(2, 'A World Away From You Forever', 100000, 'book2.jpg', 'Melalui surat, pesan singkat, dan kenangan, keduanya berjuang untuk tetap terhubung. Tetapi perbedaan waktu, prioritas, dan kejadian tak terduga membuat mereka semakin menjauh. Ketika sebuah tragedi menghantam, Eleanor dan Gabriel dipaksa menghadapi kenyataan pahit yang memaksa mereka untuk bertanya: apakah cinta cukup untuk mengatasi segala hal?', 98),
(3, 'Different World', 85000, 'book3.jpg', 'Alaric segera menyadari bahwa ia bukan sekadar pengunjung biasa. Sebuah ramalan kuno menyebutkan tentang seorang \"Pendatang dari Dunia Lain\" yang akan menentukan nasib Eryndale—apakah dunia itu akan diselamatkan atau dihancurkan. Terjebak dalam intrik politik, perang antar kerajaan, dan kekuatan gelap yang mengancam dunia, Alaric harus belajar menggunakan kekuatan magis yang mulai bangkit dalam dirinya.', 96),
(4, 'The True Love Story', 90000, 'book4.jpg', 'Kisah ini mengeksplorasi arti cinta sejati melalui serangkaian momen manis, pahit, dan penuh perjuangan. Di tengah cobaan yang terus datang, Sophie dan Daniel harus menjawab pertanyaan besar: apakah cinta sejati hanya tentang kebahagiaan bersama, atau tentang pengorbanan demi kebahagiaan orang yang kita cintai?', 100),
(5, 'Desure', 120000, 'book5.jpg', 'Suatu hari, Lila bertemu dengan Zane, seorang pria misterius yang memiliki kemampuan untuk melihat ke dalam jiwa seseorang dan mengungkapkan keinginan terdalam mereka. Zane menjadi perwujudan dari apa yang selama ini Lila cari—sebuah kesempatan untuk mewujudkan impian dan hasratnya yang terpendam. Namun, hubungan mereka segera terjebak dalam dunia keinginan yang semakin rumit dan penuh konsekuensi.', 100),
(6, 'LOVE', 99000, 'book6.jpg', 'Melalui narasi yang puitis dan emosional, \"Love\" menghadirkan cerita tentang perjuangan, pengampunan, dan penyembuhan. Novel ini mengajarkan bahwa cinta bukan hanya tentang kebahagiaan, tetapi juga tentang tumbuh bersama, saling mendukung, dan menemukan kedamaian di tengah ketidaksempurnaan.', 100);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `ongkir`
--
ALTER TABLE `ongkir`
  ADD PRIMARY KEY (`id_ongkir`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`),
  ADD KEY `fk_pembayaran_pembelian` (`id_pembelian`);

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`id_pembelian`),
  ADD KEY `fk_pembelian_ongkir` (`id_ongkir`),
  ADD KEY `fk_pembelian_pelanggan` (`id_pelanggan`);

--
-- Indexes for table `pembelian_produk`
--
ALTER TABLE `pembelian_produk`
  ADD PRIMARY KEY (`id_pembelian_produk`),
  ADD KEY `fk_detail_pembelian` (`id_pembelian`),
  ADD KEY `fk_detail_produk` (`id_produk`);

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_produk`
--
ALTER TABLE `tbl_produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ongkir`
--
ALTER TABLE `ongkir`
  MODIFY `id_ongkir` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `id_pembelian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `pembelian_produk`
--
ALTER TABLE `pembelian_produk`
  MODIFY `id_pembelian_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_produk`
--
ALTER TABLE `tbl_produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `fk_pembayaran_pembelian` FOREIGN KEY (`id_pembelian`) REFERENCES `pembelian` (`id_pembelian`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD CONSTRAINT `fk_pembelian_ongkir` FOREIGN KEY (`id_ongkir`) REFERENCES `ongkir` (`id_ongkir`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_pembelian_pelanggan` FOREIGN KEY (`id_pelanggan`) REFERENCES `pelanggan` (`id_pelanggan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pembelian_produk`
--
ALTER TABLE `pembelian_produk`
  ADD CONSTRAINT `fk_detail_pembelian` FOREIGN KEY (`id_pembelian`) REFERENCES `pembelian` (`id_pembelian`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_detail_produk` FOREIGN KEY (`id_produk`) REFERENCES `tbl_produk` (`id_produk`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
