-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Jun 2021 pada 00.23
-- Versi server: 10.4.19-MariaDB
-- Versi PHP: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci4`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `komik`
--

CREATE TABLE `komik` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `sampul` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `komik`
--

INSERT INTO `komik` (`id`, `judul`, `slug`, `penulis`, `penerbit`, `sampul`, `created_at`, `updated_at`) VALUES
(2, 'yang berubah judul', 'yang-berubah-judul', 'Echiro Oda', 'Merbabu', '1623488893_b1192e2cefaf7183463a.jpg', NULL, '2021-06-12 04:08:13'),
(10, 'Naruto', 'naruto', 'BA', 'baa', '1623488913_2c5be97943451685d366.jpg', '2021-06-11 23:41:33', '2021-06-12 04:08:33'),
(16, 'sewww', 'sewww', 'sssss', 'sasas', 'SS_1.jpeg', '2021-06-12 02:59:27', '2021-06-12 02:59:27'),
(18, 'aaaa', 'aaaa', 'aaaa', 'aaa', '1623485013_158832c350e8dd7a5c99.jpeg', '2021-06-12 03:03:33', '2021-06-12 03:03:33'),
(20, 'coba coba aja', 'coba-coba-aja', 'jika ', 'laiu', '1623566436_a6e647e75ff2f9794526.jpg', '2021-06-13 01:40:36', '2021-06-13 01:40:36');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2021-06-13-021344', 'App\\Database\\Migrations\\Orang', 'default', 'App', 1623566476, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orang`
--

CREATE TABLE `orang` (
  `id` int(11) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `orang`
--

INSERT INTO `orang` (`id`, `nama`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'Anastasia Febi Laksmiwati', 'Kpg. Ters. Buah Batu No. 37, Ternate 35021, Sulut', '2007-07-28 18:58:50', '2021-06-13 02:06:14'),
(2, 'Rina Aryani', 'Gg. Agus Salim No. 86, Administrasi Jakarta Utara 91264, Sulbar', '2019-01-24 20:16:36', '2021-06-13 02:06:14'),
(3, 'Usyi Riyanti M.Farm', 'Jr. Nanas No. 365, Kupang 60126, Kaltim', '1996-12-30 23:08:52', '2021-06-13 02:06:14'),
(4, 'Prakosa Maulana', 'Ki. Bagis Utama No. 791, Sukabumi 82211, Jambi', '1994-04-03 20:35:20', '2021-06-13 02:06:14'),
(5, 'Reza Kuswoyo', 'Jr. Salatiga No. 814, Tual 90282, Kaltara', '2014-01-07 03:33:36', '2021-06-13 02:06:14'),
(6, 'Dina Mardhiyah', 'Dk. Banda No. 929, Administrasi Jakarta Timur 47675, Kepri', '1984-07-31 19:37:31', '2021-06-13 02:06:14'),
(7, 'Raditya Saragih S.E.', 'Jln. Agus Salim No. 495, Bima 13822, DIY', '1981-06-28 19:02:56', '2021-06-13 02:06:14'),
(8, 'Yuliana Sari Nuraini S.Ked', 'Jr. Padang No. 363, Tual 69912, Kalbar', '2011-02-05 13:40:32', '2021-06-13 02:06:14'),
(9, 'Upik Maras Adriansyah S.I.Kom', 'Gg. Yohanes No. 851, Tasikmalaya 27781, Lampung', '2021-05-10 14:01:58', '2021-06-13 02:06:14'),
(10, 'Bakiman Ihsan Waskita', 'Psr. Sukajadi No. 346, Tanjungbalai 32131, Jambi', '1988-04-26 00:21:22', '2021-06-13 02:06:14'),
(11, 'Nrima Maulana', 'Gg. B.Agam Dlm No. 780, Semarang 67573, Kalteng', '1985-04-08 04:05:34', '2021-06-13 02:06:14'),
(12, 'Candrakanta Ramadan S.Pt', 'Psr. Banal No. 325, Administrasi Jakarta Pusat 68232, Kalbar', '1977-02-14 12:24:57', '2021-06-13 02:06:14'),
(13, 'Adikara Bajragin Setiawan', 'Psr. W.R. Supratman No. 613, Ternate 25702, Gorontalo', '1987-07-30 04:18:32', '2021-06-13 02:06:14'),
(14, 'Putri Rina Permata', 'Dk. Badak No. 903, Palembang 83089, Gorontalo', '2008-08-20 11:28:31', '2021-06-13 02:06:14'),
(15, 'Tira Novitasari', 'Ki. Tentara Pelajar No. 88, Serang 74797, Malut', '2005-06-30 15:17:51', '2021-06-13 02:06:14'),
(16, 'Dewi Gilda Prastuti', 'Psr. Kartini No. 410, Kupang 50732, Jabar', '2013-12-16 13:43:11', '2021-06-13 02:06:14'),
(17, 'Kiandra Suartini', 'Psr. Imam No. 860, Ambon 29186, Lampung', '1986-03-17 19:10:05', '2021-06-13 02:06:14'),
(18, 'Gawati Laksita', 'Ds. Nangka No. 39, Tual 45193, NTT', '1989-10-06 20:19:14', '2021-06-13 02:06:14'),
(19, 'Tira Safitri', 'Jr. Nanas No. 185, Tangerang Selatan 28882, Maluku', '1993-03-28 02:00:13', '2021-06-13 02:06:14'),
(20, 'Vivi Farida', 'Ki. Bhayangkara No. 917, Kendari 94474, Kepri', '1985-03-18 12:58:28', '2021-06-13 02:06:14'),
(21, 'Darmaji Rafid Wahyudin', 'Jr. Rumah Sakit No. 573, Lubuklinggau 22098, Pabar', '2010-12-22 03:27:33', '2021-06-13 02:06:14'),
(22, 'Marsudi Simanjuntak S.I.Kom', 'Jr. Jend. Sudirman No. 455, Sabang 52792, DKI', '1991-02-08 13:01:35', '2021-06-13 02:06:14'),
(23, 'Bajragin Hutapea', 'Ds. Kartini No. 663, Tanjung Pinang 42737, Maluku', '1976-08-26 08:22:48', '2021-06-13 02:06:14'),
(24, 'Oskar Rajata', 'Jr. Jaksa No. 141, Pontianak 82414, Maluku', '1978-07-07 09:19:20', '2021-06-13 02:06:14'),
(25, 'Ami Mayasari', 'Ds. Wora Wari No. 910, Blitar 89918, Kepri', '1979-11-12 13:12:32', '2021-06-13 02:06:14'),
(26, 'Luwes Mahendra', 'Kpg. Sentot Alibasa No. 436, Gorontalo 46813, Bengkulu', '1987-07-02 07:59:57', '2021-06-13 02:06:14'),
(27, 'Hamima Padmasari', 'Psr. Yogyakarta No. 209, Padang 32619, Sulbar', '2011-01-25 15:16:48', '2021-06-13 02:06:14'),
(28, 'Mustika Hardiansyah', 'Dk. Bambu No. 281, Kediri 23427, Kalbar', '2013-09-13 22:04:02', '2021-06-13 02:06:14'),
(29, 'Eli Kezia Agustina', 'Psr. Ir. H. Juanda No. 967, Pontianak 16767, Kalbar', '1974-05-27 05:09:52', '2021-06-13 02:06:14'),
(30, 'Zulfa Uyainah', 'Kpg. Abdullah No. 233, Denpasar 11643, Kalsel', '1977-09-19 08:47:10', '2021-06-13 02:06:14'),
(31, 'Baktiono Wacana', 'Jr. Bata Putih No. 97, Tasikmalaya 65687, Jatim', '2010-06-11 19:39:40', '2021-06-13 02:06:14'),
(32, 'Kamaria Nuraini', 'Psr. Wahidin No. 38, Metro 38175, Bengkulu', '2012-06-10 15:54:42', '2021-06-13 02:06:14'),
(33, 'Aswani Anggriawan', 'Gg. Ujung No. 350, Banjarbaru 58107, Pabar', '1978-03-18 19:35:03', '2021-06-13 02:06:14'),
(34, 'Prabawa Maryadi', 'Ds. Gardujati No. 694, Lubuklinggau 65674, Sumut', '2003-01-24 15:01:18', '2021-06-13 02:06:14'),
(35, 'Julia Rini Nasyiah S.T.', 'Ds. Basoka No. 847, Administrasi Jakarta Utara 45587, Malut', '2004-07-19 23:11:06', '2021-06-13 02:06:14'),
(36, 'Puji Jessica Halimah', 'Jln. Dahlia No. 489, Pagar Alam 74573, Lampung', '1970-10-27 12:41:36', '2021-06-13 02:06:14'),
(37, 'Najam Marpaung', 'Dk. Baranang No. 445, Langsa 90278, Sulsel', '2018-07-12 15:55:34', '2021-06-13 02:06:14'),
(38, 'Wawan Rajata', 'Jr. Muwardi No. 635, Serang 74958, Gorontalo', '1990-06-03 13:21:03', '2021-06-13 02:06:14'),
(39, 'Uli Prastuti', 'Psr. Yoga No. 691, Tidore Kepulauan 20703, Sumut', '1991-05-04 02:50:11', '2021-06-13 02:06:14'),
(40, 'Dartono Indra Wibisono', 'Ds. Sadang Serang No. 731, Bau-Bau 89085, Sumut', '1993-11-16 09:03:09', '2021-06-13 02:06:14'),
(41, 'Vanya Yunita Maryati', 'Jr. Baha No. 556, Batu 10807, Babel', '1979-10-17 23:04:40', '2021-06-13 02:06:14'),
(42, 'Patricia Dinda Wulandari M.Farm', 'Jr. Banal No. 443, Batu 53458, Sulbar', '1978-01-07 17:45:01', '2021-06-13 02:06:14'),
(43, 'Ifa Titi Agustina S.Farm', 'Gg. Jayawijaya No. 472, Salatiga 68626, Sulbar', '2016-01-19 09:50:28', '2021-06-13 02:06:14'),
(44, 'Siska Nurdiyanti', 'Dk. Arifin No. 530, Samarinda 41437, Sumbar', '2013-07-12 06:20:09', '2021-06-13 02:06:14'),
(45, 'Maya Rahayu', 'Kpg. Sadang Serang No. 868, Pekanbaru 32331, Aceh', '1979-09-19 23:11:16', '2021-06-13 02:06:14'),
(46, 'Pranawa Prayoga S.Farm', 'Jln. Bata Putih No. 477, Palopo 44455, Malut', '2014-01-22 07:46:12', '2021-06-13 02:06:14'),
(47, 'Koko Suryono', 'Ds. Mulyadi No. 384, Bau-Bau 99087, DIY', '2009-01-31 10:10:07', '2021-06-13 02:06:14'),
(48, 'Uda Pratama M.Farm', 'Ki. Sampangan No. 709, Tangerang Selatan 60503, Riau', '2015-01-11 09:01:56', '2021-06-13 02:06:14'),
(49, 'Nova Agustina S.Psi', 'Ki. Kartini No. 996, Palangka Raya 53362, Jambi', '1986-06-11 02:58:18', '2021-06-13 02:06:14'),
(50, 'Salsabila Permata', 'Psr. Dahlia No. 372, Padangsidempuan 52187, NTB', '2016-04-11 01:14:09', '2021-06-13 02:06:14'),
(51, 'Hilda Maryati', 'Kpg. Tambun No. 684, Bengkulu 79300, Sulteng', '2009-10-14 14:50:52', '2021-06-13 02:06:14'),
(52, 'Paris Kuswandari', 'Gg. Tubagus Ismail No. 517, Depok 81638, DIY', '2008-02-01 23:19:24', '2021-06-13 02:06:14'),
(53, 'Rosman Utama', 'Gg. Baha No. 632, Banda Aceh 13935, NTB', '2016-03-23 11:38:34', '2021-06-13 02:06:14'),
(54, 'Salimah Utami', 'Kpg. Antapani Lama No. 370, Samarinda 51822, Kalteng', '2002-02-26 16:58:19', '2021-06-13 02:06:14'),
(55, 'Heryanto Waskita S.IP', 'Dk. Pelajar Pejuang 45 No. 753, Palembang 27435, Jatim', '2013-06-14 02:07:33', '2021-06-13 02:06:14'),
(56, 'Olivia Riyanti', 'Ds. Bagis Utama No. 897, Payakumbuh 90481, Bengkulu', '1973-12-03 05:26:27', '2021-06-13 02:06:14'),
(57, 'Mahesa Kurniawan', 'Kpg. Pattimura No. 213, Cimahi 29276, Kalsel', '2012-10-26 17:17:43', '2021-06-13 02:06:14'),
(58, 'Yusuf Warsa Prabowo', 'Kpg. Untung Suropati No. 570, Tanjungbalai 16303, Pabar', '1987-03-15 06:06:47', '2021-06-13 02:06:14'),
(59, 'Puspa Namaga', 'Gg. Panjaitan No. 578, Palu 39344, Pabar', '1978-10-25 07:13:28', '2021-06-13 02:06:14'),
(60, 'Rahmi Puspita', 'Ds. Qrisdoren No. 887, Banjarmasin 56178, Sultra', '1998-06-16 23:16:52', '2021-06-13 02:06:14'),
(61, 'Danuja Emin Pranowo S.E.', 'Jln. Agus Salim No. 565, Tanjungbalai 19179, Bengkulu', '2014-02-18 23:06:11', '2021-06-13 02:06:14'),
(62, 'Nadia Laksmiwati S.T.', 'Ki. Baha No. 935, Cilegon 55809, DIY', '1985-10-20 07:53:31', '2021-06-13 02:06:14'),
(63, 'Janet Clara Kusmawati', 'Gg. Nangka No. 837, Bandung 30522, Papua', '1984-12-25 13:25:58', '2021-06-13 02:06:14'),
(64, 'Ian Prakasa S.Pt', 'Ki. Bakit  No. 240, Salatiga 62048, DIY', '2000-11-13 17:14:10', '2021-06-13 02:06:14'),
(65, 'Diana Wastuti', 'Psr. Baranangsiang No. 406, Palu 23945, Jateng', '1989-09-03 03:33:43', '2021-06-13 02:06:14'),
(66, 'Darmaji Sabri Rajasa', 'Jr. Basket No. 426, Pariaman 20021, Sumbar', '2016-05-27 01:01:52', '2021-06-13 02:06:14'),
(67, 'Gada Cahyanto Narpati', 'Gg. Basoka Raya No. 80, Cilegon 43607, Aceh', '1985-08-13 03:01:19', '2021-06-13 02:06:14'),
(68, 'Iriana Laksita', 'Kpg. R.E. Martadinata No. 580, Bengkulu 17296, Lampung', '2001-11-22 02:49:04', '2021-06-13 02:06:15'),
(69, 'Zahra Fathonah Usamah', 'Gg. Batako No. 118, Solok 51779, Jabar', '1984-02-16 17:47:56', '2021-06-13 02:06:15'),
(70, 'Siti Titi Utami S.E.', 'Kpg. K.H. Wahid Hasyim (Kopo) No. 617, Prabumulih 77019, Sulsel', '2010-07-16 20:59:44', '2021-06-13 02:06:15'),
(71, 'Ina Suartini', 'Ki. Wora Wari No. 876, Binjai 13075, Kepri', '1979-03-17 13:37:41', '2021-06-13 02:06:15'),
(72, 'Paulin Usyi Laksmiwati', 'Kpg. Agus Salim No. 144, Ternate 56134, NTB', '1972-02-08 13:25:47', '2021-06-13 02:06:15'),
(73, 'Paiman Hakim S.Pt', 'Ds. Baja Raya No. 399, Tual 94015, Maluku', '1998-04-30 00:58:13', '2021-06-13 02:06:15'),
(74, 'Gaduh Hidayat', 'Ds. Abdul No. 769, Bontang 46038, Papua', '2009-05-10 01:51:16', '2021-06-13 02:06:15'),
(75, 'Atmaja Pangestu S.Pt', 'Ki. Babah No. 852, Balikpapan 80902, Sumbar', '2012-05-25 16:53:43', '2021-06-13 02:06:15'),
(76, 'Ulva Sakura Winarsih S.E.', 'Gg. Sutarjo No. 743, Samarinda 25450, Sumut', '1991-04-23 16:44:21', '2021-06-13 02:06:15'),
(77, 'Putri Hartati', 'Psr. Abdul Muis No. 901, Subulussalam 88671, Sulteng', '2005-08-29 15:42:44', '2021-06-13 02:06:15'),
(78, 'Najwa Pratiwi', 'Gg. Mulyadi No. 865, Solok 40866, Sulsel', '1982-07-19 08:57:38', '2021-06-13 02:06:15'),
(79, 'Radit Latupono', 'Jr. Cikutra Timur No. 234, Palu 93592, DIY', '2007-10-11 12:16:55', '2021-06-13 02:06:15'),
(80, 'Nabila Purwanti M.Pd', 'Jln. Gedebage Selatan No. 310, Singkawang 67564, NTB', '2007-05-19 06:21:53', '2021-06-13 02:06:15'),
(81, 'Salsabila Eli Pratiwi S.T.', 'Psr. Kalimantan No. 261, Sungai Penuh 78987, Sulut', '1991-03-03 23:55:25', '2021-06-13 02:06:15'),
(82, 'Estiawan Mahdi Ramadan M.Farm', 'Jr. Padang No. 948, Padangpanjang 64710, Kalteng', '1975-09-18 13:40:13', '2021-06-13 02:06:15'),
(83, 'Rizki Adikara Mahendra', 'Psr. Pasirkoja No. 727, Denpasar 24986, Gorontalo', '1982-01-23 16:13:23', '2021-06-13 02:06:15'),
(84, 'Narji Wakiman Budiyanto M.M.', 'Kpg. Bakaru No. 539, Semarang 92162, DIY', '2003-06-27 23:11:14', '2021-06-13 02:06:15'),
(85, 'Zamira Susanti', 'Kpg. Pattimura No. 88, Blitar 28673, Sumbar', '2005-10-13 08:39:53', '2021-06-13 02:06:15'),
(86, 'Prasetyo Sihombing', 'Dk. Dr. Junjunan No. 784, Manado 40237, Kalbar', '1980-02-26 03:26:02', '2021-06-13 02:06:15'),
(87, 'Naradi Marpaung', 'Ds. Rajawali No. 608, Palu 61727, Lampung', '1988-02-14 16:28:18', '2021-06-13 02:06:15'),
(88, 'Harja Karna Nainggolan S.Pt', 'Kpg. Lumban Tobing No. 552, Jambi 22042, Gorontalo', '1972-08-29 00:44:06', '2021-06-13 02:06:15'),
(89, 'Syahrini Pertiwi', 'Gg. Jambu No. 859, Palembang 31067, Sultra', '1998-04-09 03:35:20', '2021-06-13 02:06:15'),
(90, 'Eli Pratiwi', 'Jln. Uluwatu No. 238, Dumai 92444, Sulsel', '1999-05-27 19:56:30', '2021-06-13 02:06:15'),
(91, 'Kariman Kuswoyo', 'Ds. Peta No. 179, Payakumbuh 66977, Babel', '1999-12-26 21:30:07', '2021-06-13 02:06:15'),
(92, 'Gara Kala Setiawan M.M.', 'Ki. Ujung No. 728, Madiun 93196, Malut', '2004-08-27 02:51:59', '2021-06-13 02:06:15'),
(93, 'Taufan Budiman', 'Dk. Gambang No. 637, Lubuklinggau 86355, Sumbar', '2017-01-08 14:26:42', '2021-06-13 02:06:15'),
(94, 'Putri Lailasari', 'Gg. B.Agam 1 No. 791, Tarakan 78915, Sulteng', '2010-07-09 15:04:23', '2021-06-13 02:06:15'),
(95, 'Uchita Wijayanti', 'Ds. Ikan No. 569, Tanjungbalai 79727, Sumbar', '1987-05-06 11:49:36', '2021-06-13 02:06:15'),
(96, 'Genta Rahmawati', 'Jln. Baha No. 756, Palu 54203, Sulbar', '2001-05-28 11:50:17', '2021-06-13 02:06:15'),
(97, 'Hardana Hutapea', 'Jr. K.H. Maskur No. 47, Denpasar 36393, Sulbar', '1994-12-24 08:39:37', '2021-06-13 02:06:15'),
(98, 'Kuncara Sitorus S.Gz', 'Ki. Cikutra Timur No. 196, Banjarbaru 29087, Kepri', '1987-07-25 17:52:56', '2021-06-13 02:06:15'),
(99, 'Hardi Kadir Latupono M.TI.', 'Ki. Nangka No. 218, Sungai Penuh 90980, Lampung', '2004-04-09 10:03:43', '2021-06-13 02:06:15'),
(100, 'Raharja Waskita', 'Gg. Bakit  No. 111, Pasuruan 44225, Lampung', '1990-02-01 00:16:25', '2021-06-13 02:06:15');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `komik`
--
ALTER TABLE `komik`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `orang`
--
ALTER TABLE `orang`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `komik`
--
ALTER TABLE `komik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `orang`
--
ALTER TABLE `orang`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
