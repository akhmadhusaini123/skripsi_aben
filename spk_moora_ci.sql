-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 15 Agu 2022 pada 17.01
-- Versi Server: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `spk_moora_ci`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `alternatif`
--

CREATE TABLE IF NOT EXISTS `alternatif` (
`id_alternatif` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jenis` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `alternatif`
--

INSERT INTO `alternatif` (`id_alternatif`, `nama`, `jenis`) VALUES
(40, 'WISSANGGENI', 'Komposit'),
(41, 'BISMA', 'Komposit'),
(42, 'LAGALIGO', 'Komposit'),
(43, 'GUMARANG', 'Komposit'),
(44, 'LAMURU', 'Komposit'),
(45, 'KRESNA', 'Komposit'),
(46, 'PALAKKA', 'Komposit'),
(47, 'SUKMARAGA', 'Komposit'),
(48, 'SRIKANDI PUTIH-1 (QPM)', 'Komposit'),
(49, 'SRIKANDI KUNING-1 (QPM)', 'Komposit'),
(50, 'ANOMAN-1', 'Komposit'),
(51, 'PROVIT A1', 'Komposit'),
(52, 'PROVIT A2', 'Komposit'),
(53, 'PULUT URI-1', 'Komposit'),
(54, 'PULUT URI-2', 'Komposit'),
(55, 'PULUT URI-4', 'Komposit'),
(56, 'SRIKANDI DEPU-1', 'Komposit'),
(57, 'SRIKANDI UNGU-1', 'Komposit'),
(58, 'SEMAR-3', 'Hibrida'),
(59, 'SEMAR-4', 'Hibrida'),
(60, 'SEMAR-5', 'Hibrida'),
(61, 'SEMAR-6', 'Hibrida'),
(62, 'SEMAR-7', 'Hibrida'),
(63, 'SEMAR-8', 'Hibrida'),
(64, 'SEMAR-9', 'Hibrida'),
(65, 'SEMAR-10', 'Hibrida'),
(66, 'BIMA-1', 'Hibrida'),
(67, 'BIMA-2 BANTIMURUNG', 'Hibrida'),
(68, 'BIMA-3 BANTIMURUNG', 'Hibrida'),
(69, 'BIMA-4', 'Hibrida'),
(70, 'BIMA-5', 'Hibrida'),
(71, 'BIMA-6', 'Hibrida'),
(72, 'BIMA-7', 'Hibrida'),
(73, 'BIMA-8', 'Hibrida'),
(74, 'BIMA-9', 'Hibrida'),
(75, 'BIMA-10', 'Hibrida'),
(76, 'BIMA-11', 'Hibrida'),
(77, 'BIMA-12Q', 'Hibrida'),
(78, 'BIMA-13Q', 'Hibrida'),
(79, 'BIMA-14 BATARA', 'Hibrida'),
(80, 'BIMA-15 SAYANG', 'Hibrida'),
(81, 'BIMA-16', 'Hibrida'),
(82, 'BIMA-17', 'Hibrida'),
(83, 'BIMA-18', 'Hibrida'),
(84, 'BIMA-19', 'Hibrida'),
(85, 'BIMA 20-URI', 'Hibrida'),
(86, 'BIMA-PUTIH-1', 'Hibrida'),
(87, 'BIMA-PUTIH-2', 'Hibrida'),
(88, 'HJ 21 AGRITAN', 'Hibrida'),
(89, 'HJ 22 AGRITAN', 'Hibrida'),
(90, 'PULUT URI 3 H', 'Hibrida'),
(91, 'JH 234', 'Hibrida'),
(92, 'JH 27', 'Hibrida'),
(93, 'HJ 28', 'Hibrida'),
(94, 'NAKULA SADEWA 29', 'Hibrida'),
(95, 'JH 29', 'Hibrida'),
(96, 'JH 30', 'Hibrida'),
(97, 'JH 31', 'Hibrida'),
(98, 'JH 32', 'Hibrida'),
(99, 'JH 35', 'Hibrida'),
(100, 'JH 36', 'Hibrida'),
(101, 'JH 37', 'Hibrida'),
(102, 'JH 45', 'Hibrida'),
(103, 'JH 47', 'Hibrida'),
(104, 'JHARING 1', 'Hibrida'),
(105, 'JAKARIN 1', 'Hibrida'),
(106, 'JHANA 1', 'Hibrida');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hasil_moora`
--

CREATE TABLE IF NOT EXISTS `hasil_moora` (
`id_hasil_moora` int(11) NOT NULL,
  `id_alternatif` int(11) NOT NULL,
  `nilai` float NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `hasil_moora`
--

INSERT INTO `hasil_moora` (`id_hasil_moora`, `id_alternatif`, `nilai`) VALUES
(1, 40, 0.0353),
(2, 41, 0.0661),
(3, 42, 0.0457),
(4, 43, 0.0237),
(5, 44, 0.0324),
(6, 45, 0.0324),
(7, 46, 0.0514),
(8, 47, 0.066),
(9, 48, 0.0827),
(10, 49, 0.0687),
(11, 50, 0.0689),
(12, 51, 0.0319),
(13, 52, 0.0532),
(14, 53, 0.0379),
(15, 54, 0.0377),
(16, 55, 0.0268),
(17, 56, 0.0714),
(18, 57, 0.0464),
(19, 58, 0.0514),
(20, 59, 0.0537),
(21, 60, 0.063),
(22, 61, 0.063),
(23, 62, 0.0739),
(24, 63, 0.0514),
(25, 64, 0.0652),
(26, 65, 0.0666),
(27, 66, 0.0557),
(28, 67, 0.0778),
(29, 68, 0.0882),
(30, 69, 0.0831),
(31, 70, 0.0831),
(32, 71, 0.0831),
(33, 72, 0.0684),
(34, 73, 0.0678),
(35, 74, 0.0874),
(36, 75, 0.0708),
(37, 76, 0.0592),
(38, 77, 0.0606),
(39, 78, 0.0692),
(40, 79, 0.0905),
(41, 80, 0.0917),
(42, 81, 0.099),
(43, 82, 0.0903),
(44, 83, 0.0903),
(45, 84, 0.1076),
(46, 85, 0.1076),
(47, 86, 0.0536),
(48, 87, 0.0671),
(49, 88, 0.0651),
(50, 89, 0.0622),
(51, 90, 0.0487),
(52, 91, 0.099),
(53, 92, 0.099),
(54, 93, 0.0848),
(55, 94, 0.1076),
(56, 95, 0.1045),
(57, 96, 0.0941),
(58, 97, 0.1076),
(59, 98, 0.1076),
(60, 99, 0.0855),
(61, 100, 0.0817),
(62, 101, 0.1094),
(63, 102, 0.0886),
(64, 103, 0.0917),
(65, 104, 0.1107),
(66, 105, 0.0741),
(67, 106, 0.1107);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria`
--

CREATE TABLE IF NOT EXISTS `kriteria` (
`id_kriteria` int(11) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `kode_kriteria` varchar(100) NOT NULL,
  `bobot` float NOT NULL,
  `jenis` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kriteria`
--

INSERT INTO `kriteria` (`id_kriteria`, `keterangan`, `kode_kriteria`, `bobot`, `jenis`) VALUES
(38, 'Potensi Hasil Produksi', 'C1', 0.35, 'Benefit'),
(39, 'Ketahanan Terhadap Penyakit', 'C2', 0.3, 'Benefit'),
(40, 'Waktu Panen', 'C3', 0.2, 'Cost'),
(41, 'Bobot 1000 biji', 'C4', 0.1, 'Benefit'),
(42, 'Tinggi Tanaman', 'C5', 0.05, 'Benefit');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penilaian`
--

CREATE TABLE IF NOT EXISTS `penilaian` (
`id_penilaian` int(11) NOT NULL,
  `id_alternatif` int(11) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `nilai` int(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=444 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penilaian`
--

INSERT INTO `penilaian` (`id_penilaian`, `id_alternatif`, `id_kriteria`, `nilai`) VALUES
(74, 40, 38, 52),
(75, 40, 39, 58),
(76, 40, 40, 60),
(77, 40, 41, 64),
(78, 40, 42, 67),
(80, 41, 38, 52),
(81, 41, 39, 57),
(82, 41, 40, 72),
(83, 41, 41, 63),
(84, 41, 42, 67),
(86, 42, 38, 52),
(87, 42, 39, 57),
(88, 42, 40, 60),
(89, 42, 41, 64),
(90, 42, 42, 67),
(92, 43, 38, 52),
(93, 43, 39, 58),
(94, 43, 40, 59),
(95, 43, 41, 64),
(96, 43, 42, 68),
(98, 44, 38, 52),
(99, 44, 39, 58),
(100, 44, 40, 60),
(101, 44, 41, 64),
(102, 44, 42, 68),
(104, 45, 38, 52),
(105, 45, 39, 58),
(106, 45, 40, 60),
(107, 45, 41, 64),
(108, 45, 42, 68),
(110, 46, 38, 52),
(111, 46, 39, 57),
(112, 46, 40, 61),
(113, 46, 41, 64),
(114, 46, 42, 68),
(116, 47, 38, 54),
(117, 47, 39, 58),
(118, 47, 40, 73),
(119, 47, 41, 65),
(120, 47, 42, 68),
(122, 48, 38, 54),
(123, 48, 39, 57),
(124, 48, 40, 73),
(125, 48, 41, 63),
(126, 48, 42, 68),
(128, 49, 38, 52),
(129, 49, 39, 57),
(130, 49, 40, 73),
(131, 49, 41, 64),
(132, 49, 42, 68),
(134, 50, 38, 52),
(135, 50, 39, 57),
(136, 50, 40, 73),
(137, 50, 41, 63),
(138, 50, 42, 74),
(139, 51, 38, 52),
(140, 51, 39, 71),
(141, 51, 40, 72),
(142, 51, 41, 63),
(143, 51, 42, 68),
(144, 52, 38, 54),
(145, 52, 39, 70),
(146, 52, 40, 72),
(147, 52, 41, 63),
(148, 52, 42, 68),
(149, 53, 38, 54),
(150, 53, 39, 58),
(151, 53, 40, 59),
(152, 53, 41, 62),
(153, 53, 42, 74),
(154, 54, 38, 54),
(155, 54, 39, 58),
(156, 54, 40, 59),
(157, 54, 41, 63),
(158, 54, 42, 68),
(159, 55, 38, 52),
(160, 55, 39, 58),
(161, 55, 40, 59),
(162, 55, 41, 63),
(163, 55, 42, 68),
(164, 56, 38, 54),
(165, 56, 39, 57),
(166, 56, 40, 61),
(167, 56, 41, 62),
(168, 56, 42, 67),
(169, 57, 38, 54),
(170, 57, 39, 58),
(171, 57, 40, 60),
(172, 57, 41, 63),
(173, 57, 42, 68),
(174, 58, 38, 52),
(175, 58, 39, 57),
(176, 58, 40, 61),
(177, 58, 41, 64),
(178, 58, 42, 68),
(179, 104, 38, 53),
(180, 104, 39, 57),
(181, 104, 40, 73),
(182, 104, 41, 62),
(183, 104, 42, 67),
(184, 59, 38, 54),
(185, 59, 39, 57),
(186, 59, 40, 60),
(187, 59, 41, 64),
(188, 59, 42, 68),
(189, 60, 38, 52),
(190, 60, 39, 57),
(191, 60, 40, 72),
(192, 60, 41, 64),
(193, 60, 42, 67),
(194, 61, 38, 52),
(195, 61, 39, 57),
(196, 61, 40, 72),
(197, 61, 41, 64),
(198, 61, 42, 67),
(199, 62, 38, 54),
(200, 62, 39, 57),
(201, 62, 40, 72),
(202, 62, 41, 64),
(203, 62, 42, 67),
(204, 63, 38, 52),
(205, 63, 39, 57),
(206, 63, 40, 61),
(207, 63, 41, 64),
(208, 63, 42, 68),
(209, 64, 38, 54),
(210, 64, 39, 57),
(211, 64, 40, 61),
(212, 64, 41, 64),
(213, 64, 42, 67),
(214, 65, 38, 54),
(215, 65, 39, 58),
(216, 65, 40, 72),
(217, 65, 41, 63),
(218, 65, 42, 67),
(219, 66, 38, 52),
(220, 66, 39, 58),
(221, 66, 40, 72),
(222, 66, 41, 63),
(223, 66, 42, 67),
(224, 67, 38, 55),
(225, 67, 39, 58),
(226, 67, 40, 72),
(227, 67, 41, 62),
(228, 67, 42, 68),
(229, 68, 38, 55),
(230, 68, 39, 57),
(231, 68, 40, 72),
(232, 68, 41, 62),
(233, 68, 42, 68),
(234, 69, 38, 55),
(235, 69, 39, 58),
(236, 69, 40, 73),
(237, 69, 41, 64),
(238, 69, 42, 67),
(239, 70, 38, 55),
(240, 70, 39, 58),
(241, 70, 40, 73),
(242, 70, 41, 64),
(243, 70, 42, 67),
(244, 71, 38, 55),
(245, 71, 39, 58),
(246, 71, 40, 73),
(247, 71, 41, 64),
(248, 71, 42, 67),
(249, 72, 38, 53),
(250, 72, 39, 58),
(251, 72, 40, 60),
(252, 72, 41, 63),
(253, 72, 42, 68),
(254, 73, 38, 55),
(255, 73, 39, 57),
(256, 73, 40, 60),
(257, 73, 41, 63),
(258, 73, 42, 68),
(259, 74, 38, 53),
(260, 74, 39, 57),
(261, 74, 40, 61),
(262, 74, 41, 63),
(263, 74, 42, 68),
(264, 75, 38, 53),
(265, 75, 39, 71),
(266, 75, 40, 72),
(267, 75, 41, 62),
(268, 75, 42, 67),
(269, 76, 38, 53),
(270, 76, 39, 71),
(271, 76, 40, 61),
(272, 76, 41, 62),
(273, 76, 42, 68),
(274, 77, 38, 54),
(275, 77, 39, 58),
(276, 77, 40, 72),
(277, 77, 41, 64),
(278, 77, 42, 68),
(279, 78, 38, 54),
(280, 78, 39, 58),
(281, 78, 40, 73),
(282, 78, 41, 64),
(283, 78, 42, 68),
(284, 79, 38, 53),
(285, 79, 39, 57),
(286, 79, 40, 61),
(287, 79, 41, 62),
(288, 79, 42, 68),
(289, 80, 38, 53),
(290, 80, 39, 58),
(291, 80, 40, 72),
(292, 80, 41, 62),
(293, 80, 42, 67),
(294, 81, 38, 53),
(295, 81, 39, 57),
(296, 81, 40, 72),
(297, 81, 41, 63),
(298, 81, 42, 67),
(299, 82, 38, 53),
(300, 82, 39, 57),
(301, 82, 40, 61),
(302, 82, 41, 63),
(303, 82, 42, 67),
(304, 83, 38, 53),
(305, 83, 39, 57),
(306, 83, 40, 61),
(307, 83, 41, 63),
(308, 83, 42, 67),
(309, 84, 38, 53),
(310, 84, 39, 57),
(311, 84, 40, 73),
(312, 84, 41, 63),
(313, 84, 42, 67),
(314, 85, 38, 53),
(315, 85, 39, 57),
(316, 85, 40, 73),
(317, 85, 41, 63),
(318, 85, 42, 67),
(319, 86, 38, 55),
(320, 86, 39, 71),
(321, 86, 40, 72),
(322, 86, 41, 64),
(323, 86, 42, 67),
(324, 87, 38, 55),
(325, 87, 39, 70),
(326, 87, 40, 72),
(327, 87, 41, 63),
(328, 87, 42, 67),
(329, 88, 38, 55),
(330, 88, 39, 57),
(331, 88, 40, 59),
(332, 88, 41, 62),
(333, 88, 42, 67),
(334, 89, 38, 55),
(335, 89, 39, 57),
(336, 89, 40, 59),
(337, 89, 41, 62),
(338, 89, 42, 68),
(339, 90, 38, 55),
(340, 90, 39, 58),
(341, 90, 40, 59),
(342, 90, 41, 63),
(343, 90, 42, 68),
(344, 91, 38, 53),
(345, 91, 39, 57),
(346, 91, 40, 72),
(347, 91, 41, 63),
(348, 91, 42, 67),
(349, 92, 38, 53),
(350, 92, 39, 57),
(351, 92, 40, 72),
(352, 92, 41, 63),
(353, 92, 42, 67),
(354, 93, 38, 53),
(355, 93, 39, 57),
(356, 93, 40, 60),
(357, 93, 41, 62),
(358, 93, 42, 67),
(359, 94, 38, 53),
(360, 94, 39, 57),
(361, 94, 40, 73),
(362, 94, 41, 63),
(363, 94, 42, 67),
(364, 94, 38, 53),
(365, 94, 39, 57),
(366, 94, 40, 73),
(367, 94, 41, 63),
(368, 94, 42, 67),
(369, 94, 38, 53),
(370, 94, 39, 57),
(371, 94, 40, 73),
(372, 94, 41, 63),
(373, 94, 42, 67),
(374, 95, 38, 53),
(375, 95, 39, 57),
(376, 95, 40, 73),
(377, 95, 41, 64),
(378, 95, 42, 67),
(379, 96, 38, 53),
(380, 96, 39, 58),
(381, 96, 40, 73),
(382, 96, 41, 64),
(383, 96, 42, 67),
(384, 97, 38, 53),
(385, 97, 39, 57),
(386, 97, 40, 73),
(387, 97, 41, 63),
(388, 97, 42, 67),
(389, 98, 38, 53),
(390, 98, 39, 57),
(391, 98, 40, 73),
(392, 98, 41, 63),
(393, 98, 42, 67),
(394, 99, 38, 53),
(395, 99, 39, 58),
(396, 99, 40, 72),
(397, 99, 41, 64),
(398, 99, 42, 67),
(399, 99, 38, 53),
(400, 99, 39, 58),
(401, 99, 40, 72),
(402, 99, 41, 64),
(403, 99, 42, 67),
(404, 100, 38, 53),
(405, 100, 39, 57),
(406, 100, 40, 60),
(407, 100, 41, 63),
(408, 100, 42, 67),
(409, 101, 38, 53),
(410, 101, 39, 56),
(411, 101, 40, 72),
(412, 101, 41, 63),
(413, 101, 42, 67),
(414, 102, 38, 53),
(415, 102, 39, 58),
(416, 102, 40, 72),
(417, 102, 41, 63),
(418, 102, 42, 67),
(419, 103, 38, 53),
(420, 103, 39, 58),
(421, 103, 40, 72),
(422, 103, 41, 62),
(423, 103, 42, 67),
(424, 103, 38, 53),
(425, 103, 39, 58),
(426, 103, 40, 72),
(427, 103, 41, 62),
(428, 103, 42, 67),
(429, 105, 38, 54),
(430, 105, 39, 57),
(431, 105, 40, 72),
(432, 105, 41, 63),
(433, 105, 42, 68),
(434, 105, 38, 54),
(435, 105, 39, 57),
(436, 105, 40, 72),
(437, 105, 41, 63),
(438, 105, 42, 68),
(439, 106, 38, 53),
(440, 106, 39, 57),
(441, 106, 40, 73),
(442, 106, 41, 62),
(443, 106, 42, 67);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sub_kriteria`
--

CREATE TABLE IF NOT EXISTS `sub_kriteria` (
`id_sub_kriteria` int(11) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `deskripsi` varchar(200) NOT NULL,
  `nilai` int(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sub_kriteria`
--

INSERT INTO `sub_kriteria` (`id_sub_kriteria`, `id_kriteria`, `deskripsi`, `nilai`) VALUES
(51, 38, '< 6 ton', 1),
(52, 38, '6.1 - 8 ton', 2),
(53, 38, '> 12 ton', 5),
(54, 38, '8.1 - 10 ton', 3),
(55, 38, '10.1 - 12 ton', 4),
(56, 39, 'Sangat Kuat', 5),
(57, 39, 'Kuat', 4),
(58, 39, 'Cukup Kuat', 3),
(59, 40, '80 - 85 hari', 5),
(60, 40, '86 - 90 hari', 4),
(61, 40, '91 - 95 hari', 3),
(62, 41, '> 350 gram', 5),
(63, 41, '301 - 350 gram', 4),
(64, 41, '251 - 300.9 gram', 3),
(65, 41, '200 - 250.9 gram', 2),
(66, 41, '< 200 gram', 1),
(67, 42, '> 200 cm', 5),
(68, 42, '180 - 200 cm', 3),
(70, 39, 'Lemah', 2),
(71, 39, 'Sangat Lemah', 1),
(72, 40, '96 - 100 hari', 2),
(73, 40, '> 100 hari', 1),
(74, 42, '< 180 cm', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`id_user` int(11) NOT NULL,
  `id_user_level` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `id_user_level`, `nama`, `email`, `username`, `password`) VALUES
(1, 1, 'Admin', 'admin@gmail.com', 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(7, 2, 'User', 'user@gmail.com', 'user', 'ee11cbb19052e40b07aac0ca060c23ee');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_level`
--

CREATE TABLE IF NOT EXISTS `user_level` (
`id_user_level` int(11) NOT NULL,
  `user_level` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_level`
--

INSERT INTO `user_level` (`id_user_level`, `user_level`) VALUES
(1, 'Administrator'),
(2, 'User');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alternatif`
--
ALTER TABLE `alternatif`
 ADD PRIMARY KEY (`id_alternatif`);

--
-- Indexes for table `hasil_moora`
--
ALTER TABLE `hasil_moora`
 ADD PRIMARY KEY (`id_hasil_moora`), ADD KEY `id_alternatif` (`id_alternatif`);

--
-- Indexes for table `kriteria`
--
ALTER TABLE `kriteria`
 ADD PRIMARY KEY (`id_kriteria`);

--
-- Indexes for table `penilaian`
--
ALTER TABLE `penilaian`
 ADD PRIMARY KEY (`id_penilaian`), ADD KEY `id_alternatif` (`id_alternatif`), ADD KEY `id_kriteria` (`id_kriteria`), ADD KEY `nilai` (`nilai`);

--
-- Indexes for table `sub_kriteria`
--
ALTER TABLE `sub_kriteria`
 ADD PRIMARY KEY (`id_sub_kriteria`), ADD KEY `id_kriteria` (`id_kriteria`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`id_user`), ADD KEY `id_user_level` (`id_user_level`);

--
-- Indexes for table `user_level`
--
ALTER TABLE `user_level`
 ADD PRIMARY KEY (`id_user_level`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alternatif`
--
ALTER TABLE `alternatif`
MODIFY `id_alternatif` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=107;
--
-- AUTO_INCREMENT for table `hasil_moora`
--
ALTER TABLE `hasil_moora`
MODIFY `id_hasil_moora` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=68;
--
-- AUTO_INCREMENT for table `kriteria`
--
ALTER TABLE `kriteria`
MODIFY `id_kriteria` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `penilaian`
--
ALTER TABLE `penilaian`
MODIFY `id_penilaian` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=444;
--
-- AUTO_INCREMENT for table `sub_kriteria`
--
ALTER TABLE `sub_kriteria`
MODIFY `id_sub_kriteria` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `user_level`
--
ALTER TABLE `user_level`
MODIFY `id_user_level` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `hasil_moora`
--
ALTER TABLE `hasil_moora`
ADD CONSTRAINT `hasil_moora_ibfk_1` FOREIGN KEY (`id_alternatif`) REFERENCES `alternatif` (`id_alternatif`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `penilaian`
--
ALTER TABLE `penilaian`
ADD CONSTRAINT `penilaian_ibfk_1` FOREIGN KEY (`id_alternatif`) REFERENCES `alternatif` (`id_alternatif`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `penilaian_ibfk_2` FOREIGN KEY (`id_kriteria`) REFERENCES `kriteria` (`id_kriteria`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `penilaian_ibfk_3` FOREIGN KEY (`nilai`) REFERENCES `sub_kriteria` (`id_sub_kriteria`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `sub_kriteria`
--
ALTER TABLE `sub_kriteria`
ADD CONSTRAINT `sub_kriteria_ibfk_1` FOREIGN KEY (`id_kriteria`) REFERENCES `kriteria` (`id_kriteria`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `user`
--
ALTER TABLE `user`
ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`id_user_level`) REFERENCES `user_level` (`id_user_level`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
