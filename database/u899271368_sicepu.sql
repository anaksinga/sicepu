-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 19, 2024 at 03:14 AM
-- Server version: 10.11.7-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u899271368_sicepu`
--

-- --------------------------------------------------------

--
-- Table structure for table `agama`
--

CREATE TABLE `agama` (
  `id_agama` int(10) NOT NULL,
  `agama` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `agama`
--

INSERT INTO `agama` (`id_agama`, `agama`) VALUES
(1, 'Islam'),
(2, 'Kristen'),
(3, 'Katolik'),
(4, 'Protestan'),
(5, 'Hindu'),
(6, 'Budha');

-- --------------------------------------------------------

--
-- Table structure for table `ahli_waris`
--

CREATE TABLE `ahli_waris` (
  `id_ahli_waris` int(11) NOT NULL,
  `tgl_permohonan` date NOT NULL,
  `nomor_pendaftaran` varchar(10) NOT NULL,
  `kelurahan` varchar(50) NOT NULL,
  `nama_kk` varchar(50) NOT NULL,
  `kartu_keluarga` bigint(25) NOT NULL,
  `nama_pemohon` varchar(50) NOT NULL,
  `nomor_ktp` bigint(25) NOT NULL,
  `nama_pengantar_berkas` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `pengajuan` varchar(50) NOT NULL,
  `pengajuan1` varchar(100) NOT NULL,
  `pengajuan2` varchar(100) NOT NULL,
  `pengajuan3` varchar(100) NOT NULL,
  `pengajuan4` varchar(100) NOT NULL,
  `berkas` varchar(50) NOT NULL,
  `keterangan` text DEFAULT NULL,
  `tgl_selesai` date DEFAULT NULL,
  `id_posisi` int(11) DEFAULT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ahli_waris`
--

INSERT INTO `ahli_waris` (`id_ahli_waris`, `tgl_permohonan`, `nomor_pendaftaran`, `kelurahan`, `nama_kk`, `kartu_keluarga`, `nama_pemohon`, `nomor_ktp`, `nama_pengantar_berkas`, `alamat`, `no_telp`, `pengajuan`, `pengajuan1`, `pengajuan2`, `pengajuan3`, `pengajuan4`, `berkas`, `keterangan`, `tgl_selesai`, `id_posisi`, `status`) VALUES
(336, '2024-06-03', 'L9E3D', 'KELURAHAN HADIMULYO TIMUR', 'HARI WIBOWO', 1872010906060001, 'HARI WIBOWO', 1872011507710002, 'HARI WIBOWO', 'JL. DOMBA, KEL HADIMULYO BARAT', '089636457475', '1. PERUBAHAN BIODATA', '', '', '', '', 'PENGAJUAN PERTAMA', '', NULL, 4, 'selesai'),
(337, '2024-06-03', '804AE', 'HADIMULYO TIMUR', 'KAMALHAKIM', 1872011905220005, 'KAMAL HAKIM', 3201282707910002, 'KAMAL HAKIM', 'JL. DOMBA NO 54 KEL. HADIMULYO TIMUR', '085863236838', 'PENAMBAHAN ANGGOTA KELUARGA', '', '', '', '', 'PENGAJUAN PERTAMA', 'LAMPIRKAN SURAT KETERANGAN PERUBAHAN PEKERJAAN DARI KELURAHAN', NULL, 4, 'selesai'),
(338, '2024-06-03', 'HLB65', 'KELURAHAN YOSOMULYO', 'JIMUN', 1872012008070022, 'JIMUN', 1872013005580001, 'JIMUN', 'JL. SAWO KEL, YOSOMULYO', '085212807939', '8. PERUBAHAN LAINNYA', '', '', '', '', 'PENGAJUAN PERTAMA', '', NULL, 4, 'selesai'),
(339, '2024-06-03', 'KL8BC', 'KELURAHAN YOSOMULYO', 'ZAINUDDIN', 1872010304080013, 'ZAINUDDIN', 1872010407650002, 'NOVITA SONIA', 'JL SALAK NO26 KEL YOSOMULYO', '082134634868', '5. PINDAH DATANG (ANTAR KECAMATAN/DAERAH)', '', '', '', '', 'BERKAS KEMBALI', '', NULL, 4, 'selesai'),
(340, '2024-06-03', 'F6G71', 'HADIMULYO BARAT', 'ADI SUSENO', 1872012509060064, 'ADI SUSENO', 1872010505750009, 'ADI SUSENO', 'JL. KEBUN CENGKEH KEL. HADIMULYO BARAT', '081379995709', 'PERUBAHAN BIODATA', '', '', '', '', 'PENGAJUAN PERTAMA', 'LAMPIRKAN AKTE ASLI M. AL FATTIH ', NULL, 2, 'berkas_kurang_lengkap'),
(341, '2024-06-03', 'JK813', 'KELURAHAN HADIMULYO TIMUR', 'WARYATMI', 0, 'WARYATMI', 1872014303740009, 'WARYATMI', 'JL. WR SUPRATMAN KEL. HADIMULYO BARAT', '085369046995', '1. PERUBAHAN BIODATA', '', '', '', '', 'PENGAJUAN PERTAMA', '', NULL, 4, 'selesai'),
(342, '2024-06-03', 'GB0JA', 'KELURAHAN HADIMULYO BARAT', 'YUNANI', 1872010706110002, 'YUNANI', 1872015008420001, 'YUNANI', 'JL. IMAMBONJOL NO 61 KEL HADIMULYO BARAT', '085269000316', '1. PERUBAHAN BIODATA', '', '', '', '', 'PENGAJUAN PERTAMA', '', NULL, 4, 'selesai'),
(343, '2024-06-03', '4F2I1', 'KELURAHAN METRO', 'GEMURUH YUPITER', 1872012703120009, 'GEMURUH YUPITER', 1872041512680003, 'GEMURUH YUPITER', 'GG SUMUR BANDUNG', '082184188334', '1. PERUBAHAN BIODATA', '', '', '', '1. PERUBAHAN BIODATA', 'PENGAJUAN PERTAMA', '', NULL, 4, 'selesai'),
(344, '2024-06-03', 'JJ7F6', 'KELURAHAN METRO', 'DWI KRISTIAWAN', 1872012202080011, 'DWI KRISTIAWAN', 1872010703640002, 'DWI KRISTIAWAN', 'JL. VETERAN NO 59 KEL. METRO', '085266324917', '2. PERUBAHAN ALAMAT', '', '', '', '', 'BERKAS KEMBALI', '', NULL, 4, 'selesai'),
(345, '2024-06-03', 'FI29E', 'KELURAHAN HADIMULYO BARAT', 'WIJAYA ', 1872012311150001, 'WIJAYA ', 1872050708760043, 'WIJAYA ', 'JL. BAMBU KUNING KEL. HADIMULYO BARAT', '08984270427', '4. PENGURANGAN ANGGOTA KELUARGA', '', '', '', '', 'PENGAJUAN PERTAMA', '', NULL, 4, 'selesai'),
(347, '2024-06-03', 'ACH2F', 'KELURAHAN HADIMULYO BARAT', 'NUR HASAN', 1872012302150001, 'NUR HASAN', 1872011707850003, 'NUR HASAN', 'JL. BAMBU KUNING, KEL HADIMULYO BARAT', '08984270427', '3. PENAMBAHAN ANGGOTA KELUARGA', '', '', '', '', 'PENGAJUAN PERTAMA', '', NULL, 4, 'selesai'),
(349, '2024-06-03', '75K47', 'KELURAHAN METRO', 'SRI MESTIAWATI', 1872013105240004, 'SRI MESTIAWATI', 1872016804660001, 'SRI MESTIAWATI', 'JL. SAKURA NO 36 KEL. METRO', '085266324917', '1. PERUBAHAN BIODATA', '', '', '', '', 'BERKAS KEMBALI', '', NULL, 4, 'selesai'),
(350, '2024-06-03', '1D63D', 'KELURAHAN YOSOMULYO', 'MEIRE IQBAL IBNU ZIAD', 0, 'MEIRE IQBAL IBNU ZIAD', 1872012705940003, 'MEIRE IQBAL IBNU ZIAD', 'JL. SALAK NO 26 KEL. YOSOMULYO', '082134634868', '8. PERUBAHAN LAINNYA', '', '', '', '', 'BERKAS KEMBALI', '', NULL, 4, 'selesai'),
(351, '2024-06-03', 'G6606', 'HADIMULYO BARAT', 'YOCKI AGUS SETIAWAN', 0, 'YOCKI AGUS SETIAWAN', 1872012008840003, 'YOCKI AGUS SETIAWAN', 'JL. JAWA NO. 15 KEL, HADIMULYO BARAT', '085267586938', 'KK BARU', '', '', '', '', 'BERKAS KEMBALI', 'LAMPIRKAN AKTE KELAHIRAN SARI SUNDARI', NULL, 4, 'selesai'),
(352, '2024-06-03', '4L2H0', 'HADIMULYO BARAT', 'RUSTAM PANJI NEGARA', 1872010901070018, 'RUSTAM PANJI NEGARA', 1872011308420001, 'RUSTAM PANJI NEGARA', 'JL DIPONEGORO', '082183295551', 'KK BARU', '', '', '', '', 'PENGAJUAN PERTAMA', 'LAMPIRKAN FC. BUKU NIKAH DAN FC SK PENSIUN PNS', NULL, 4, 'berkas_kurang_lengkap'),
(353, '2024-06-04', 'CGCG2', ' IMOPURO', 'UBAD', 1872010512060018, 'UBAD', 1872011012630010, 'UBAD', '15 BARAT. KEL, IMOPURO', '082180490149', 'PENAMBAHAN ANGGOTA KELUARGA', '', '', '', '', 'BERKAS KEMBALI', 'SITI MAU BERDIRI SENDIRI ATAU NUMPANG KK UBAD ATAU MAU SAMA YAYAH ATAU GIMNA ? KURANG FORMULIR DARI KELURAHAN ( F1.01). HARAP DATANG KE KECAMATAN TRIMAKSIH.', NULL, 4, 'selesai'),
(354, '2024-06-04', 'J2BFI', 'KELURAHAN METRO', 'POLTAK SIMANTUTAK', 187201190710011, 'POLTAK SIMANTUTAK', 1805270112770004, 'POLTAK SIMANTUTAK', 'JL. AR PRAWIRA NEGARA PERUM METRO REGENCY KEL, METRO', '081295380787', '4. PENGURANGAN ANGGOTA KELUARGA', '', '', '', '', 'PENGAJUAN PERTAMA', '', NULL, 4, 'berkas_kurang_lengkap'),
(355, '2024-06-04', '9HA0F', 'METRO', 'PEBRI HARATUA SIMANJUTAK', 0, 'PEBRI HARATUA SIMANJUTAK', 1212226802880001, 'PEBRI HARATUA SIMANJUTAK', 'JL. AR PRAWIRA NEGARA PERUM METRO REGENCY, KEL METRO', '081295380787', 'KK BARU', '', '', '', '', 'PENGAJUAN PERTAMA', 'LAMPIRKAN S. KETERANGAN PINDAH AGAMA DARI KUA', NULL, 4, 'berkas_kurang_lengkap'),
(356, '2024-06-04', 'GEKIB', 'HADIMULYO BARAT', 'WAWAN SUTANTO', 1872011806200001, 'WAWAN SUTANTO', 1872022008790002, 'WAWAN SUTANTO', 'JL. BANGKA, KEL HADIMULYO BARAT', '082185369432', 'PERUBAHAN BIODATA', '', '', '', '', 'PENGAJUAN PERTAMA', 'CERAI HIDUP TIDAK BISA MENJADI CERAI MATI', NULL, 4, 'selesai'),
(357, '2024-06-04', '738B2', 'KELURAHAN METRO', 'PARMAN', 1872012009060095, 'PARMAN', 1872011010720007, 'PARMAN', 'JL. MANUNGGAL 1 GG WAHYU KEL, METRO', '083172903003', 'PENGURANGAN ANGGOTA KELUARGA', '', '', '', '', 'PENGAJUAN PERTAMA', '', NULL, 4, 'selesai'),
(358, '2024-06-04', '5G9BJ', 'KELURAHAN METRO', 'THOBY RAMANDA', 0, 'THOBY RAMANDA', 1872012212980001, 'THOBY RAMANDA', 'JL. MANUNGGAL 1 GG. WAHYU KEL, METRO', '083172903003', 'KK BARU', '', '', '', '', 'PENGAJUAN PERTAMA', '', NULL, 4, 'selesai'),
(359, '2024-06-04', 'AHJBJ', 'HADIMULYO TIMUR', 'ERNA', 0, 'ERNA', 1807014806820006, 'ERNA', 'JL. BUAY SELAGI KEL, HADIMULYO TIMUR', '085783339522', 'KK BARU', '', '', '', '', 'PENGAJUAN PERTAMA', 'GOLONGAN DARAH BELUM DIISI', NULL, 4, 'selesai'),
(360, '2024-06-04', '0D74C', 'KELURAHAN HADIMULYO BARAT', 'SYAEFULLAH', 0, 'SYAEFULLAH', 3604130206960003, 'FEBRIA MAHARANI KEL HD. BARAT', 'JL. CUCAK ROWO, KEL. HADIMULYO BARAT', '082175211716', 'KK BARU', 'KK BARU', '', '', '', 'PENGAJUAN PERTAMA', '', NULL, 4, 'selesai'),
(361, '2024-06-04', 'LC0J5', 'KELURAHAN HADIMULYO BARAT', 'HERMANTO', 1872010608055992, 'HERMANTO', 1872012711710002, 'FEBRIA MAHARANI KEL HD. BARAT', 'JL. POKSAI KEL, HADIMULYO BARAT ', '082175211716', 'PENGURANGAN ANGGOTA KELUARGA', '', '', '', '', 'PENGAJUAN PERTAMA', '', NULL, 4, 'selesai'),
(362, '2024-06-04', '0D7BC', 'HADIMULYO BARAT', 'MOZART NANGGOMI RAGANI HERMANTO', 0, 'MOZART NANGGOMI RAGANI HERMANTO', 1872010703040001, 'FEBRIA MAHARANI KEL HD. BARAT', 'JL. POKSAI, KEL. HADIMULYO BARAT', '082175211716', 'KK BARU', '', '', '', '', 'PENGAJUAN PERTAMA', 'LAMPIRKAN FC. BUKU NIKAH ', NULL, 4, 'selesai'),
(363, '2024-06-06', '32137', 'HADIMULYO BARAT', 'KARTIYEM', 1872011701070024, 'KARTIYEM', 1872014706400001, 'RASYIDI', 'JL IMAM BONJOL GG MERDEKA', '082175173033', 'PERUBAHAN LAINNYA', '', '', '', '', 'PENGAJUAN PERTAMA', '', NULL, 4, 'selesai'),
(364, '2024-06-06', '5F07G', 'HADIMULYO BARAT', 'A KHAIRUDIN MR', 0, 'A KHAIRUDIN MR', 1872011205800002, 'RASYIDI', 'JL IMAM BONJOL GG MERDEKA', '082175173033', 'KK BARU', '', '', '', '', 'PENGAJUAN PERTAMA', '', NULL, 4, 'selesai'),
(365, '2024-06-06', 'CJ843', ' IMOPURO', 'ZAINUDIN/ ALIDAR', 1872011711060012, 'ALIDAR', 1872016104490004, 'ALIDAR', 'Jl. Teuku Umar No 63', '081278722388', 'PERUBAHAN BIODATA', '', '', '', '', 'PENGAJUAN PERTAMA', '', NULL, 4, 'selesai'),
(366, '2024-06-06', '2AJKF', ' IMOPURO', 'HERLIN', 1872012804080002, 'HERLIN', 1872011507810003, 'HERLIN', 'JL CUT NYAK DIEN NO 193', '08982024111', 'PERUBAHAN BIODATA', '', '', '', '', 'BERKAS KEMBALI', '', NULL, 4, 'selesai'),
(367, '2024-06-06', 'CK3A0', 'HADIMULYO BARAT', 'MUHAMMAD RICHARDO', 1872011005120008, 'MUHAMMAD RICHARDO', 1872010805810009, 'CUBUAN SOFA SEPNAWATI', 'JL IMAM BONJOL GG SUBUR', '081273476168', 'PENAMBAHAN ANGGOTA KELUARGA', '', '', '', '', 'PENGAJUAN PERTAMA', '', NULL, 4, 'selesai'),
(368, '2024-06-06', '5CCEC', ' IMOPURO', 'UBAD', 1872010512060018, 'UBAD', 1872011012630010, 'UBAD', '15 BARAT', '082180490149', 'PENAMBAHAN ANGGOTA KELUARGA', '', '', '', '', 'BERKAS KEMBALI', '', NULL, 4, 'selesai'),
(369, '2024-06-07', '614DG', 'YOSOMULYO', 'A MUSLIMAH', 1872010411140003, 'A MUSLIMAH', 1872031703780000, 'A MUSLIMAH', 'JL. JAMBU KEL, YOSOMULYO', '085658883784', 'PERUBAHAN BIODATA', '', '', '', '', 'PENGAJUAN PERTAMA', '', NULL, 4, 'selesai'),
(370, '2024-06-07', 'IB9LI', 'HADIMULYO TIMUR', 'MUHAMAD ISNAENI', 18720111512060011, 'MUHAMAD ISNAENI', 1872011508780004, 'MUHAMAD ISNAENI', 'JL. KANCIL, KEL. HADIMULYO TIMUR', '088274404930', 'PENGURANGAN ANGGOTA KELUARGA', '', '', '', '', 'PENGAJUAN PERTAMA', '', NULL, 4, 'selesai'),
(371, '2024-06-07', '9I1CE', 'HADIMULYO TIMUR', 'SAHAFUDINNAYO AMIRA', 0, 'SAHAFUDINNAYO AMIRA', 1802051609920010, 'SAHAFUDINNAYO AMIRA', 'JL. KANCIL, KEL. HADIMULYO TIMUR', '088274404930', 'KK BARU', '', '', '', '', 'PENGAJUAN PERTAMA', '', NULL, 4, 'selesai'),
(373, '2024-06-07', '072KK', ' IMOPURO', 'HENDRI OKTARIAWAN', 1872011804160002, 'HENDRI OKTARIAWAN', 1872012010830001, 'HENDRI OKTARIAWAN', 'JL GOTONG ROYONG NO.14', '089618050803', 'PERUBAHAN BIODATA', '', '', '', '', 'PENGAJUAN PERTAMA', '', NULL, 4, 'selesai'),
(374, '2024-06-10', 'A858B', 'HADIMULYO TIMUR', 'SUPIYATI', 0, 'SUPIYATI', 1802116501500001, 'SUPIYATI', 'JL WR SUPRATMAN GG.SRITI', '089518746133', 'KK BARU', '', '', '', '', 'PENGAJUAN PERTAMA', '', NULL, 4, 'selesai'),
(375, '2024-06-10', 'D9LJK', 'YOSOMULYO', 'BASUKI', 1872013008070001, 'BASUKI', 1872010406670003, 'BASUKI', 'JL KELENGKENG', '082374757511', 'PENAMBAHAN ANGGOTA KELUARGA', '', '', '', '', 'BERKAS KEMBALI', '', NULL, 4, 'selesai'),
(376, '2024-06-10', '14A3J', 'YOSOMULYO', 'SRI SUWARTI', 1872010403190006, 'SRI SUWARTI', 1872015506470006, 'SRI SUWARTI', 'JL. HASANUDIN NO. 214', '085269066829', 'PENGURANGAN ANGGOTA KELUARGA', '', '', '', '', 'PENGAJUAN PERTAMA', '', NULL, 4, 'selesai'),
(377, '2024-06-10', 'BD1KK', 'YOSOMULYO', 'SITI ERLINA', 0, 'SITI ERLINA', 1872024303680002, 'SITI ERLINA', 'JL. HASANUDIN. KEL YOSOMULYO', '085269066829', 'KK BARU', '', '', '', '', 'PENGAJUAN PERTAMA', '', NULL, 4, 'selesai'),
(378, '2024-06-10', 'ACAGB', 'HADIMULYO TIMUR', 'WIBI ISTIAWAN', 1872010309140004, 'WIBI ISTIAWAN', 1872010510890008, 'WIBI ISTIAWAN', 'JL. KANGURU KEL. HADIMULYO TIMUR', '085669983267', 'PERUBAHAN BIODATA', '', '', '', '', 'PENGAJUAN PERTAMA', '', NULL, 4, 'selesai'),
(379, '2024-06-10', '733FI', 'METRO', 'TRI WAHYUDI DOYO', 1872012411110005, 'TRI WAHYUDI DOYO', 1872010611760002, 'TRI WAHYUDI DOYO', 'JL. DAHLIA KEL. METRO', '089628757544', 'PENGURANGAN ANGGOTA KELUARGA', '', '', '', '', 'PENGAJUAN PERTAMA', '', NULL, 4, 'selesai'),
(380, '2024-06-10', 'G55ED', 'YOSOMULYO', 'SURATMAN', 0, 'SURATMAN', 1805082206660004, 'SURATMAN', 'JL. SERI, KEL. YOSOMULYO', '085769701052', 'KK BARU', '', '', '', '', 'PENGAJUAN PERTAMA', 'GOLONGAN DARAH BELUM DI ISI', NULL, 4, 'berkas_kurang_lengkap'),
(381, '2024-06-10', 'J592A', ' IMOPURO', 'EMA WATI', 1872012808150001, 'EMA WATI', 1807116404680002, 'EMA WATI', 'JL. SUTRISNO KEL. IMOPURO', '081368231900', 'PERUBAHAN BIODATA', '', '', '', '', 'PENGAJUAN PERTAMA', '', NULL, 4, 'selesai'),
(382, '2024-06-10', 'DGH18', 'HADIMULYO TIMUR', 'DENI SUDIRMAN', 18720125100160011, 'DENI SUDIRMAN', 1872012705940006, 'DENI SUDIRMAN', 'JL BULAK SARI', '083847356530', 'PERUBAHAN ALAMAT', '', '', '', '', 'PENGAJUAN PERTAMA', '', NULL, 4, 'selesai'),
(383, '2024-06-10', 'K2BJF', 'METRO', 'NUR WANTO', 1872011103080028, 'NUR WANTO', 1872012605850004, 'NUR WANTO', 'JL DAHLIA  TIMUR', '085369585653', 'PERUBAHAN BIODATA', '', '', '', '', 'PENGAJUAN PERTAMA', 'LAMPIRKAN AKTE NABILA', NULL, 4, 'berkas_kurang_lengkap'),
(384, '2024-06-10', '6E1I3', 'METRO', 'ANI ROHANI', 0, 'ANI ROHANI', 1872037007840002, 'ANI ROHANI', 'KOMPLEK B.1 NO.14', '089508744152', 'KK BARU', '', '', '', '', 'PENGAJUAN PERTAMA', '', NULL, 4, 'selesai'),
(385, '2024-06-10', 'H28J3', 'HADIMULYO BARAT', 'HARSONO', 187201260310002, 'HARSONO', 1872021005940003, 'HARSONO', 'GG MULIA', '085839048743', 'PERUBAHAN LAINNYA', '', '', '', '', 'PENGAJUAN PERTAMA', '', NULL, 4, 'selesai'),
(386, '2024-06-10', '63872', 'HADIMULYO BARAT', 'ANITA PURNAMA SARI', 0, 'ANITA PURNAMA SARI', 1872014903930002, 'ANITA PURNAMA SARI', '22 HADIMULYO BARAT', '085839048743', 'KK BARU', '', '', '', '', 'PENGAJUAN PERTAMA', '', NULL, 4, 'selesai'),
(387, '2024-06-10', 'B5HHE', 'HADIMULYO TIMUR', 'LILI SETIOWATI', 1872012212080003, 'LILI SETIOWATI', 1872015403670003, 'LILI SETIOWATI', 'JL.KANCIL', '082249280495', 'PERUBAHAN LAINNYA', '', '', '', '', 'PENGAJUAN PERTAMA', '', NULL, 4, 'selesai'),
(388, '2024-06-10', '43EF4', 'HADIMULYO TIMUR', 'RIAN DWI SAPUTRA', 0, 'RIAN DWI SAPUTRA', 1806030601930005, 'RIAN DWI SAPUTRA', 'JL.KELINCI', '082249280495', 'KK BARU', '', '', '', '', 'PENGAJUAN PERTAMA', '', NULL, 4, 'selesai'),
(389, '2024-06-11', 'LFBC7', 'HADIMULYO BARAT', 'RUSTAM PANJI NEGARA/TUSSIYAH SRI ASIH', 1872010406240001, 'TUSSIYAH SRI ASIH', 1872017012570003, 'TUSSIYAH SRI ASIH', 'JL. DIPONEGORO KEL, HADIMULYO BARAT', '082183295551', 'PENGURANGAN ANGGOTA KELUARGA', '', '', '', '', 'BERKAS KEMBALI', 'Era.jani49@gmail.com', NULL, 4, 'selesai'),
(390, '2024-06-11', '6JBK4', ' IMOPURO', 'SUHARDI', 1872010503080045, 'SUHARDI', 1872012104770002, 'SUHARDI', 'JL.AM.BANGSAWAN NO.10 LK.V', '081278568988', 'PERUBAHAN BIODATA', '', '', '', '', 'PENGAJUAN PERTAMA', '', NULL, 4, 'selesai'),
(391, '2024-06-11', '562E9', 'HADIMULYO TIMUR', 'KAMAL HAKIM', 1872011905220005, 'KAMAL HAKIM', 3201282707910002, 'KAMAL HAKIM', 'JL.DOMBA', '085863236838', 'PENAMBAHAN ANGGOTA KELUARGA', '', '', '', '', 'BERKAS KEMBALI', '', NULL, 4, 'selesai'),
(392, '2024-06-11', 'LE9BH', 'YOSOMULYO', 'HIDAYATULLAH,SH', 0, 'HIDAYAHTULLAH,SH', 1871121902790006, 'HIDAYAHTULLAH,SH', 'PERUM PNS BLOK D1 NO18', '081278219284', 'KK BARU', '', '', '', '', 'PENGAJUAN PERTAMA', 'LAMPIRKAN FOTO COPI SK PNS', NULL, 4, 'berkas_kurang_lengkap'),
(393, '2024-06-11', 'D6HBL', 'METRO', 'AHMAD AMRON', 1872011907080013, 'AHMAD AMRON', 1872011502640005, 'AHMAD AMRON', 'JL. CENDANA II', '085366166226', 'PERUBAHAN BIODATA', '', '', '', '', 'PENGAJUAN PERTAMA', '', NULL, 4, 'selesai'),
(394, '2024-06-11', '9DC3B', 'METRO', 'MUHAMMAD NURI', 1872013009130001, 'MUHAMMAD NURI', 1872031911710001, 'MUHAMMAD NURI', 'JL.PALA GG.MARKISA', '081379797917', 'PENGURANGAN ANGGOTA KELUARGA', '', '', '', '', 'PENGAJUAN PERTAMA', '', NULL, 4, 'selesai'),
(395, '2024-06-11', '45178', 'METRO', 'KURNIWAN', 1872010811060027, 'KURNIAWAN', 1872010711770002, 'KURNIAWAN', 'JL MELATI TIMUR NO 16', '081379910605', 'PERUBAHAN ALAMAT', '', '', '', '', 'PENGAJUAN PERTAMA', '', NULL, 4, 'selesai'),
(396, '2024-06-11', 'KI81F', 'METRO', 'WIWIT INDARTO', 0, 'WIWIT INDARTO', 1872022009780002, 'WIWIT INDARTO', 'JL. KUNANG, KEL. METRO', '083126088227', 'KK BARU', '', '', '', '', 'BERKAS KEMBALI', 'LAMPIRKAN FOTO COPY GOLONGAN DARAH, HARAP DATANG KE KECAMATAN TRIMAKASIH', NULL, 4, 'selesai'),
(397, '2024-06-11', 'A452L', 'METRO', 'DALIMI', 0, 'DALIMI', 1872012307560002, 'DALIMI', 'JL. YOS SUDARSO, KEL.METRO', '0895639381490', 'KK BARU', '', '', '', '', 'PENGAJUAN PERTAMA', 'LAMPIRKAN FOTO COPY AKTE KELAHIRAN DAN FOTO COPY BUKU NIKAH,', NULL, 4, 'selesai'),
(398, '2024-06-12', 'DDAAD', ' IMOPURO', 'ALIDAR', 187201180520002, 'ALIDAR', 1872016104490004, 'ALIDAR', 'JL TEUKU UMAR NO 63', '083181983988', 'PERUBAHAN BIODATA', '', '', '', '', 'BERKAS KEMBALI', '', NULL, 4, 'selesai'),
(399, '2024-06-12', '35G71', 'METRO', 'DALIMI', 1872011206240002, 'DALIMI', 1872012307560002, 'DALIMI', 'JL YOS SUDARSO', '0895639381490', 'KK BARU', '', '', '', '', 'BERKAS KEMBALI', '', NULL, 4, 'verifikasi_disdukcapil'),
(400, '2024-06-12', 'J3GDK', 'YOSOMULYO', 'AGUS RIYATNI', 1872010306240008, 'AGUS RIYATNI', 1872017108830006, 'AGUS RIYATNI', 'JL CEMPAKA GG CEMPAKA 1', '081223517499', 'PERUBAHAN BIODATA', '', '', '', '', 'PENGAJUAN PERTAMA', '', NULL, 4, 'selesai'),
(401, '2024-06-12', 'CKKK6', 'YOSOMULYO', 'LUKMAN HUSIN', 0, 'LUKMAN HUSIN', 1671020510540009, 'LUKMAN HUSIN', 'JLN JAMBU LK NO 31', '081273538156', 'KK BARU', '', '', '', '', 'PENGAJUAN PERTAMA', '', NULL, 4, 'selesai'),
(402, '2024-06-12', 'J0A06', 'METRO', 'M. THOYIB', 1872012207100001, 'M. THOYIB', 1872011012650010, 'M. THOYIB', 'JL. MR GELE HARUN KEL. METRO', '082178471117', 'PERUBAHAN BIODATA', '', '', '', '', 'PENGAJUAN PERTAMA', '', NULL, 4, 'selesai'),
(403, '2024-06-13', 'KI7CG', 'METRO', 'MOHAMMAD JAMIL', 1872011112070022, 'MOHAMMAD JAMIL', 1872012207750004, 'MOHAMMAD JAMIL', 'JL MANUGGAL lV NO 10 KEL METRO', '088747407922', 'PERUBAHAN BIODATA', '', '', '', '', 'PENGAJUAN PERTAMA', '', NULL, 4, 'verifikasi_disdukcapil'),
(404, '2024-06-13', '6DLJD', 'METRO', 'MAIMUNAH', 0, 'MAIMUNAH', 1872016805760002, 'MAIMUNAH', 'JL WIJAYA KUSUMA', '088747407922', 'KK BARU', '', '', '', '', 'PENGAJUAN PERTAMA', '', NULL, 4, 'berkas_kurang_lengkap'),
(405, '2024-06-13', 'K31C8', 'HADIMULYO BARAT', 'yocki agus setiawan', 1872010406240003, 'yocki agus setiawan', 1872012008840003, 'yocki agus setiawan', 'jl jawa no 15  kelurahan hadimulyo barat', '085267586938', 'PERUBAHAN LAINNYA', '', '', '', '', 'BERKAS KEMBALI', 'akte kelahiran', NULL, 4, 'selesai'),
(406, '2024-06-13', 'F48DK', 'METRO', 'SURYADI', 1872010607060004, 'NUR YADI', 1872013001990002, 'NURYADI', 'Jl. Bungur ', '08995080307', 'PENGURANGAN ANGGOTA KELUARGA', '', '', '', '', 'PENGAJUAN PERTAMA', '', NULL, 4, 'selesai'),
(407, '2024-06-13', '97G9I', 'METRO', 'NUR YADI', 0, 'NUR YADI', 1872013001990002, 'NUR YADI', 'Jl. Bungur', '08995080307', 'KK BARU', '', '', '', '', 'PENGAJUAN PERTAMA', '', NULL, 4, 'selesai'),
(408, '2024-06-13', 'FK59L', 'HADIMULYO BARAT', 'ADIEF DERMAWAN TABRANI', 0, 'ADIEF DERMAWAN TABRANI', 1872022312860003, 'ADIEF DERMAWAN TABRANI', 'Jl. Bambu Kuning', '089520604000', 'PINDAH DATANG (ANTAR KECAMATAN/DAERAH)', '', '', '', '', 'PENGAJUAN PERTAMA', '', NULL, 4, 'verifikasi_disdukcapil'),
(409, '2024-06-13', '25BD7', 'HADIMULYO BARAT', 'SARBINI', 1872012709170006, 'SARBINI', 1872010906700002, 'SARBINI', 'Jl. Bangka No 37 ', '089633911207', 'PENGURANGAN ANGGOTA KELUARGA', '', '', '', '', 'PENGAJUAN PERTAMA', '', NULL, 4, 'berkas_kurang_lengkap'),
(410, '2024-06-13', '6LICB', 'HADIMULYO BARAT', 'PETIT BAGASKARA', 0, 'PETIT BAGASKARA', 1872010906700002, 'SARBINI', 'Jl. Bangka ', '089633911207', 'KK BARU', '', '', '', '', 'PENGAJUAN PERTAMA', '', NULL, 4, 'berkas_kurang_lengkap'),
(411, '2024-06-13', 'CHCHG', 'METRO', 'wiwit indarto', 1872022009780002, 'wiwid indarto', 1872002200978000, 'wiwid indarto', 'jl kunang metro kelurahan metro ', '083126088227', 'PERUBAHAN LAINNYA', '', '', '', '', 'BERKAS KEMBALI', '', NULL, 4, 'selesai'),
(412, '2024-06-13', 'D92FF', ' IMOPURO', 'ANDIKA PANDU PERDANA', 0, 'ANDIKA PANDU PERDANA', 1807060805990003, 'ANDIKA PANDU PERDANA', 'JLN DIPONEGORO NO 44', '081272246966', 'KK BARU', '', '', '', '', 'PENGAJUAN PERTAMA', 'gol darah belum di isi', NULL, 4, 'berkas_kurang_lengkap'),
(413, '2024-06-13', 'K05JA', 'HADIMULYO BARAT', 'LEMAN', 1872010410060018, 'LEMAN', 1872012802650003, 'LEMAN', 'JL. TANJUNG, KEL. HADIMULYO BARAT', '081379887301', 'PERUBAHAN BIODATA', '', '', '', '', 'PENGAJUAN PERTAMA', '', NULL, 4, 'selesai'),
(414, '2024-06-13', 'B9440', 'METRO', 'PONIDI', 1872011506150007, 'PONIDI', 3510122509810002, 'PONIDI', 'JL. ANGGREK DALAM. KEL. METRO', '087797831107', 'PERUBAHAN BIODATA', '', '', '', '', 'PENGAJUAN PERTAMA', '', NULL, 4, 'selesai'),
(415, '2024-06-13', 'H62AH', 'HADIMULYO BARAT', 'AMIR FATAH', 1872010812200001, 'AMIR FATAH', 1807091508650003, 'AMIR FATAH', 'PERUM PUBIAN JAYA LESTARI, KEL HADIMULYO BARAT', '081369570478', 'PENAMBAHAN ANGGOTA KELUARGA', '', '', '', '', 'PENGAJUAN PERTAMA', '', NULL, 4, 'selesai'),
(416, '2024-06-13', '4L479', 'METRO', 'SITI SUHAMIJAH/INIRAGANDI', 1872011104190001, 'INIRAGANDI', 1872015903000003, 'INIRAGANDI', 'JL. DAHLIA, KEL. METRO', '082186655354', 'PENGURANGAN ANGGOTA KELUARGA', '', '', '', '', 'PENGAJUAN PERTAMA', '', NULL, 4, 'selesai'),
(417, '2024-06-13', 'CHAH5', 'HADIMULYO BARAT', 'HERI ISMAYANTO', 1872010309060028, 'HERI ISMAYANTO', 1872012903650002, 'HERI ISMAYANTO', 'KEBON CENGKEH, KEL HADIMULYO BARAT', '08215369432', 'PENGURANGAN ANGGOTA KELUARGA', '', '', '', '', 'PENGAJUAN PERTAMA', '', NULL, 4, 'verifikasi_disdukcapil'),
(418, '2024-06-13', 'AL4JI', 'HADIMULYO BARAT', 'MUHAMMAD DARMAWAN', 0, 'MUHAMMAD DARMAWAN', 1872011409000001, 'MUHAMMAD DARMAWAN', 'KEBON CENGKEH, KEL. HADIMULYO BARAT', '082185369432', 'KK BARU', '', '', '', '', 'PENGAJUAN PERTAMA', 'lampirkan surat lahir zerina', NULL, 4, 'berkas_kurang_lengkap'),
(419, '2024-06-13', 'C1JJG', 'HADIMULYO TIMUR', 'RENDI EKA TUSDIANTO', 0, 'RENDI EKA TUSDIANTO', 3173061207190002, 'RENDI EKA TUSDIANTO', 'HADIMULYO TIMUR', '081298031932', 'KK BARU', '', '', '', '', 'PENGAJUAN PERTAMA', 'lampirkan akte/ijasah LITA, lampirkan ijasah RENDI', NULL, 4, 'berkas_kurang_lengkap'),
(420, '2024-06-13', '09E1D', 'METRO', 'NUR WANTO', 18720111030800028, 'NUR WANTO', 1872012605850004, 'NUR WANTO', 'JL DAHLIA', '085369585659', 'PERUBAHAN BIODATA', '', '', '', '', 'BERKAS KEMBALI', '', NULL, 4, 'selesai'),
(421, '2024-06-14', 'JBJ3D', 'METRO', 'ARMAWAN ARI YANTO', 1872010909090004, 'ARMAWAN ARI YANTO', 1872015209810004, 'NENENG SUHARTI', 'JL. YOS SUDARSO KEL. METRO', '089516085337', 'PERUBAHAN ALAMAT', '', '', '', '', 'PENGAJUAN PERTAMA', '', NULL, 4, 'selesai'),
(422, '2024-06-14', 'GLBLA', ' IMOPURO', 'M SIBLI', 1872011203070006, 'M SIBLI', 1872010502690007, 'M SIBLI', 'Jl. Teuku Umar', '0822699253000', 'PERUBAHAN BIODATA', '', '', '', '', 'BERKAS KEMBALI', 'Lampirkan Fc Ijazah Terakhir An. Tapip Aji', NULL, 4, 'verifikasi_disdukcapil'),
(423, '2024-06-14', '0IKFL', 'YOSOMULYO', 'mujiati', 1872030207190003, 'mujiati', 1872056701800001, 'mujiati', 'jl pisang gang asem kelurahan yosomulyo', '085379088753', 'KK BARU', '', '', '', '', 'PENGAJUAN PERTAMA', '', NULL, 4, 'verifikasi_disdukcapil'),
(424, '2024-06-14', 'BA9F8', 'METRO', 'DWI KURNIAWAN', 0, 'DWI KURNIAWAN', 1802102609910003, 'DWI KURNIAWAN', 'KEL. METRO JAYA BLOK A.10 NO 7 PRASANTI', '087896023678', 'KK BARU', '', '', '', '', 'PENGAJUAN PERTAMA', '', NULL, 4, 'verifikasi_disdukcapil'),
(425, '2024-06-14', '64D4I', 'HADIMULYO BARAT', 'RENITA ', 0, 'RENITA ', 1405024309760002, 'RENITA ', 'JL. KHOIRIYAH KEL. HADIMULYO BARAT', '082384807039', 'KK BARU', '', '', '', '', 'PENGAJUAN PERTAMA', '', NULL, 4, 'verifikasi_disdukcapil'),
(426, '2024-06-14', 'L6AB4', 'METRO', 'SATIYEM', 1872012002190007, 'SATIYEM', 1872017006620004, 'SATIYEM', 'JL. BUNGUR, KEL METRO', '081915665609', 'PERUBAHAN BIODATA', '', '', '', '', 'PENGAJUAN PERTAMA', '', NULL, 4, 'verifikasi_disdukcapil'),
(427, '2024-06-14', 'BH3CJ', 'HADIMULYO TIMUR', 'YARIYANTO', 0, 'YARIYANTO', 1872010804710001, 'YARIYANTO', 'JL PALA 6', '082294484404', 'KK BARU', '', '', '', '', 'PENGAJUAN PERTAMA', '', NULL, 4, 'verifikasi_disdukcapil'),
(428, '2024-06-14', '66F3E', 'METRO', 'AFRIZAL ANDRIYANDIKA BUDIMAN', 0, 'AFRIZAL ANDRIYANDIKA BUDIMAN', 3512071204860006, 'AFRIZAL ANDRIYANDIKA BUDIMAN', 'PRASANTI BLOK C.1 NO.13 KEL METRO', '082141070703', 'KK BARU', '', '', '', '', 'PENGAJUAN PERTAMA', '', NULL, 4, 'verifikasi_disdukcapil'),
(429, '2024-06-19', '6H0K9', 'HADIMULYO TIMUR', 'AGUS SUWARDI', 1872012605100002, 'AGUS SUWARDI', 1872010905760001, 'AGUS SUWARDI', 'JL BANTENG TIMUR KEL HD.BARAT', '081325026343', 'PERUBAHAN BIODATA', '', '', '', '', 'PENGAJUAN PERTAMA', '', NULL, 4, 'verifikasi_berkas_kecamatan');

-- --------------------------------------------------------

--
-- Table structure for table `berkas`
--

CREATE TABLE `berkas` (
  `id_berkas` int(10) NOT NULL,
  `berkas` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `berkas`
--

INSERT INTO `berkas` (`id_berkas`, `berkas`) VALUES
(1, 'BERKAS KEMBALI'),
(2, 'PERUBAHAN'),
(3, 'PENGAJUAN PERTAMA');

-- --------------------------------------------------------

--
-- Table structure for table `blanko`
--

CREATE TABLE `blanko` (
  `id_blanko` int(11) NOT NULL,
  `nama_blanko` text NOT NULL,
  `file` text NOT NULL,
  `keterangan` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `camat`
--

CREATE TABLE `camat` (
  `id_camat` int(11) NOT NULL,
  `nama_camat` varchar(50) NOT NULL,
  `nip` bigint(30) NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  `periode_awal_jabatan` date NOT NULL,
  `periode_akhir_jabatan` date NOT NULL,
  `status` enum('Aktif','Non-Aktif') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `camat`
--

INSERT INTO `camat` (`id_camat`, `nama_camat`, `nip`, `jabatan`, `periode_awal_jabatan`, `periode_akhir_jabatan`, `status`) VALUES
(5, 'YAHYA RACHMAT, S.STP., MH.', 198405152002121002, 'Pembina', '2024-06-03', '2024-06-03', 'Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `iumk`
--

CREATE TABLE `iumk` (
  `id_iumk` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `nomor_iumk` varchar(30) DEFAULT NULL,
  `peraturan` longtext NOT NULL,
  `nomor_pendaftaran` varchar(10) NOT NULL,
  `tgl_nikah` datetime NOT NULL,
  `kelurahan` varchar(20) NOT NULL,
  `nama_istri` varchar(50) NOT NULL,
  `nik_istri` varchar(30) NOT NULL,
  `tempat_lahir_istri` varchar(50) NOT NULL,
  `tanggal_lahir_istri` date NOT NULL,
  `kewarganegaraan_istri` varchar(30) NOT NULL,
  `pekerjaan_istri` varchar(50) NOT NULL,
  `agama_istri` varchar(30) NOT NULL,
  `status_istri` varchar(30) NOT NULL,
  `no_telp_istri` varchar(15) NOT NULL,
  `keterangan_istri` text DEFAULT NULL,
  `alamat_istri` text NOT NULL,
  `nama_suami` varchar(50) NOT NULL,
  `nik_suami` varchar(15) NOT NULL,
  `tempat_lahir_suami` varchar(50) NOT NULL,
  `tgl_lahir_suami` date NOT NULL,
  `kewarganegaraan_suami` varchar(30) NOT NULL,
  `pekerjaan_suami` varchar(50) NOT NULL,
  `agama_suami` varchar(15) NOT NULL,
  `status_suami` varchar(15) NOT NULL,
  `alamat_suami` text NOT NULL,
  `no_telp_suami` varchar(15) NOT NULL,
  `keterangan_suami` text DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `nama_camat` varchar(50) NOT NULL,
  `jabatan` varchar(30) NOT NULL,
  `nip` varchar(30) NOT NULL,
  `tgl_selesai` date DEFAULT NULL,
  `id_posisi` int(11) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `iumk`
--

INSERT INTO `iumk` (`id_iumk`, `tanggal`, `nomor_iumk`, `peraturan`, `nomor_pendaftaran`, `tgl_nikah`, `kelurahan`, `nama_istri`, `nik_istri`, `tempat_lahir_istri`, `tanggal_lahir_istri`, `kewarganegaraan_istri`, `pekerjaan_istri`, `agama_istri`, `status_istri`, `no_telp_istri`, `keterangan_istri`, `alamat_istri`, `nama_suami`, `nik_suami`, `tempat_lahir_suami`, `tgl_lahir_suami`, `kewarganegaraan_suami`, `pekerjaan_suami`, `agama_suami`, `status_suami`, `alamat_suami`, `no_telp_suami`, `keterangan_suami`, `email`, `nama_camat`, `jabatan`, `nip`, `tgl_selesai`, `id_posisi`, `status`) VALUES
(29, '2024-06-03', '517/001/RN/2024', '', '001', '2024-06-06 14:00:00', 'KELURAHAN METRO', 'PRETY APRILIA', '1372026604040001', 'Bandar Jaya', '2004-04-26', 'Indonesia', 'Pelajar/Mahasiswa', 'Islam', 'Belum Kawin', '083151841724', '', 'Jl. Melati Timur No. 24 RT 33/06Kel. Metro Kecamatan Metro Pusat', 'FAJAR SIDIK', '180205110695000', 'Simbarwaringin', '1995-06-12', 'Indonesia', 'Pelajar/Mahasiswa', 'Islam', 'Belum Kawin', 'LK. III RT 13/05 Kelurahan Simbarwaringin', '083151841724', '', '', 'YAHYA RACHMAT, S.STP., MH.', 'Pembina', '198405152002121002', '0000-00-00', 4, 'Belum Diproses'),
(30, '2024-06-05', '517/002/RN/2024', '', '002', '2024-06-09 14:00:00', 'HADIMULYO BARAT', 'FANI SABRINA AMALIA', '1872016111030002', 'Metro', '2003-11-21', 'Indonesia', 'Pelajar/Mahasiswa', 'Islam', 'Belum Kawin', '085709588751', '', 'Jl. Cempedak RT/RW 012/004\r\nKel. Yosomulyo, Kecamatan Metro Pusat', 'ARICO AKBAR WAYKA PUTRA', '187201040502000', 'Metro', '2002-05-04', 'Indonesia', 'Pelajar/Mahasiswa', 'Islam', 'Belum Kawin', 'Jl. Imam Bonjol Gg. Bambu Kuning No. 42 RT/RW 025/006\r\nKel. Hadimulyo Barat, Kecamatan Metro Pusat', '085709588751', '', '', 'YAHYA RACHMAT, S.STP., MH.', 'Pembina', '198405152002121002', NULL, 1, 'Belum Diproses'),
(31, '2024-06-11', '517/003/RN/2024', '', '003', '2024-06-23 02:00:00', 'HADIMULYO TIMUR', 'RIA RISKA', '1872016407940001', 'Serang', '1994-07-24', 'Indonesia', 'Wiraswasta', 'Islam', 'Belum Kawin', '085609002819', '', 'Mekar Sari RT/RW 027/010\r\nKel. Hadimulyo Timur, Kec. Metro Pusat', 'SENDI WAGIYONO', '180705200492000', 'Parakan', '1992-04-20', 'Indonesia', 'Wiraswasta', 'Islam', 'Belum Kawin', 'Dusun IV RT/RW 007/004\r\nDesa Giriklopomulyo, Kec. Sekampung', '085609002819', '', '', 'YAHYA RACHMAT, S.STP., MH.', 'Pembina', '198405152002121002', NULL, 1, 'Belum Diproses');

-- --------------------------------------------------------

--
-- Table structure for table `kegiatan_usaha`
--

CREATE TABLE `kegiatan_usaha` (
  `id_kegiatan` int(11) NOT NULL,
  `kegiatan_usaha` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kegiatan_usaha`
--

INSERT INTO `kegiatan_usaha` (`id_kegiatan`, `kegiatan_usaha`) VALUES
(1, 'Katolik'),
(2, 'Kristen'),
(3, 'Islam'),
(4, 'Protestan'),
(5, 'Hindu'),
(6, 'Budha');

-- --------------------------------------------------------

--
-- Table structure for table `kelurahan`
--

CREATE TABLE `kelurahan` (
  `id_kelurahan` int(11) NOT NULL,
  `kelurahan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kelurahan`
--

INSERT INTO `kelurahan` (`id_kelurahan`, `kelurahan`) VALUES
(25, 'METRO'),
(26, 'HADIMULYO BARAT'),
(27, 'HADIMULYO TIMUR'),
(28, 'YOSOMULYO'),
(29, ' IMOPURO');

-- --------------------------------------------------------

--
-- Table structure for table `lampiran_iumk`
--

CREATE TABLE `lampiran_iumk` (
  `id_lampiran` int(11) NOT NULL,
  `nama_lampiran` text NOT NULL,
  `ketentuan` varchar(15) NOT NULL,
  `deskripsi` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lampiran_iumk_file`
--

CREATE TABLE `lampiran_iumk_file` (
  `id_file` int(11) NOT NULL,
  `id_lampiran` int(11) NOT NULL,
  `id_iumk` varchar(50) NOT NULL,
  `file` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lampiran_sktu`
--

CREATE TABLE `lampiran_sktu` (
  `id_lampiran` int(11) NOT NULL,
  `nama_lampiran` text NOT NULL,
  `keterangan` varchar(30) NOT NULL,
  `ketentuan` varchar(15) NOT NULL,
  `deskripsi` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lampiran_sktu_file`
--

CREATE TABLE `lampiran_sktu_file` (
  `id_file` int(11) NOT NULL,
  `id_lampiran` int(11) NOT NULL,
  `id_sktu` varchar(100) NOT NULL,
  `file` longtext DEFAULT NULL,
  `keterangan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `lampiran_sktu_file`
--

INSERT INTO `lampiran_sktu_file` (`id_file`, `id_lampiran`, `id_sktu`, `file`, `keterangan`) VALUES
(242, 2, '46', '81642.jpeg', 'Baru'),
(243, 3, '46', '25508.jpeg', 'Baru'),
(244, 6, '46', '34409.jpeg', 'Baru'),
(245, 7, '46', '28879.jpeg', 'Baru'),
(246, 1, '47', '2816.jpeg', 'Baru'),
(247, 2, '47', '9370.jpeg', 'Baru'),
(248, 3, '47', 'Belum Ada Lampiran', 'Baru'),
(249, 6, '47', '96951.jpeg', 'Baru'),
(250, 7, '47', '92568.jpeg', 'Baru'),
(251, 9, '47', '21143.jpeg', 'Baru'),
(252, 1, '48', '13491.jpeg', 'Baru'),
(253, 2, '48', 'Belum Ada Lampiran', 'Baru'),
(254, 3, '48', 'Belum Ada Lampiran', 'Baru'),
(255, 6, '48', '39805.jpeg', 'Baru'),
(256, 7, '48', '28004.jpeg', 'Baru'),
(257, 9, '48', '54075.jpeg', 'Baru'),
(258, 1, '49', '82201.jpeg', 'Baru'),
(259, 2, '49', '51696.jpeg', 'Baru'),
(260, 3, '49', '8404.jpeg', 'Baru'),
(261, 6, '49', '34669.jpeg', 'Baru'),
(262, 7, '49', '8798.jpeg', 'Baru'),
(263, 9, '49', '65453.jpeg', 'Baru'),
(264, 1, '50', '99806.jpeg', 'Baru'),
(265, 2, '50', '5254.jpeg', 'Baru'),
(266, 3, '50', '49705.jpeg', 'Baru'),
(267, 6, '50', '52241.jpeg', 'Baru'),
(268, 7, '50', '98779.jpeg', 'Baru'),
(269, 9, '50', '25219.jpeg', 'Baru'),
(270, 1, '51', '98553.jpeg', 'Baru'),
(271, 2, '51', '59044.jpeg', 'Baru'),
(272, 3, '51', '88015.jpeg', 'Baru'),
(273, 6, '51', '85311.jpeg', 'Baru'),
(274, 7, '51', '17166.jpeg', 'Baru'),
(275, 9, '51', '91463.jpeg', 'Baru'),
(338, 1, '62', '36051.jpeg', 'Baru'),
(339, 2, '62', '77270.jpeg', 'Baru'),
(340, 3, '62', '60690.jpeg', 'Baru'),
(341, 5, '62', '21049.jpeg', 'Baru'),
(342, 6, '62', '46768.jpeg', 'Baru'),
(343, 7, '62', '55188.jpeg', 'Baru'),
(344, 9, '62', '20961.jpeg', 'Baru'),
(352, 1, '64', '97939.jpeg', 'Baru'),
(353, 2, '64', '28939.jpeg', 'Baru'),
(354, 3, '64', '54899.jpeg', 'Baru'),
(355, 5, '64', '14625.jpeg', 'Baru'),
(356, 6, '64', '67257.jpeg', 'Baru'),
(357, 7, '64', '73459.jpeg', 'Baru'),
(358, 9, '64', '2016.jpeg', 'Baru'),
(359, 1, '65', '3357.jpeg', 'Baru'),
(360, 2, '65', '60360.jpeg', 'Baru'),
(361, 3, '65', '66836.jpeg', 'Baru'),
(362, 5, '65', '37738.jpeg', 'Baru'),
(363, 6, '65', '90736.jpeg', 'Baru'),
(364, 7, '65', '42679.jpeg', 'Baru'),
(365, 9, '65', '93186.jpeg', 'Baru'),
(366, 1, '66', '53143.jpeg', 'Baru'),
(367, 2, '66', '32499.jpeg', 'Baru'),
(368, 3, '66', '29780.jpeg', 'Baru'),
(369, 5, '66', '65735.jpeg', 'Baru'),
(370, 6, '66', '19262.jpeg', 'Baru'),
(371, 7, '66', '90490.jpeg', 'Baru'),
(372, 9, '66', '40259.jpeg', 'Baru'),
(373, 1, '67', '20314.jpeg', 'Baru'),
(374, 2, '67', '60467.jpeg', 'Baru'),
(375, 3, '67', '52596.jpeg', 'Baru'),
(376, 5, '67', '9.jpeg', 'Baru'),
(377, 6, '67', '76231.jpeg', 'Baru'),
(378, 7, '67', '17891.jpeg', 'Baru'),
(379, 9, '67', '44331.jpeg', 'Baru'),
(380, 1, '68', '43903.jpeg', 'Baru'),
(381, 2, '68', '80940.jpeg', 'Baru'),
(382, 3, '68', '9808.jpeg', 'Baru'),
(383, 5, '68', '6374.jpeg', 'Baru'),
(384, 6, '68', '19397.jpeg', 'Baru'),
(385, 7, '68', '47059.jpeg', 'Baru'),
(386, 9, '68', '69777.jpeg', 'Baru'),
(387, 1, '69', '27300.jpeg', 'Baru'),
(388, 2, '69', '14435.jpeg', 'Baru'),
(389, 3, '69', '49918.jpeg', 'Baru'),
(390, 5, '69', '77757.jpeg', 'Baru'),
(391, 6, '69', '11502.jpeg', 'Baru'),
(392, 7, '69', '29720.jpeg', 'Baru'),
(393, 9, '69', '16870.jpeg', 'Baru'),
(394, 1, '70', '91165.jpeg', 'Baru'),
(395, 2, '70', '49555.jpeg', 'Baru'),
(396, 3, '70', '94658.jpeg', 'Baru'),
(397, 5, '70', '62655.jpeg', 'Baru'),
(398, 6, '70', '20773.jpeg', 'Baru'),
(399, 7, '70', '96350.jpeg', 'Baru'),
(400, 9, '70', '89055.jpeg', 'Baru'),
(401, 1, '71', '68277.jpeg', 'Baru'),
(402, 2, '71', '9900.jpeg', 'Baru'),
(403, 3, '71', '19760.jpeg', 'Baru'),
(404, 5, '71', '94919.jpeg', 'Baru'),
(405, 6, '71', '71615.jpeg', 'Baru'),
(406, 7, '71', '99859.jpeg', 'Baru'),
(407, 9, '71', '13665.jpeg', 'Baru'),
(408, 1, '72', '4368.jpeg', 'Baru'),
(409, 2, '72', '63896.jpeg', 'Baru'),
(410, 3, '72', '86257.jpeg', 'Baru'),
(411, 5, '72', '9786.jpeg', 'Baru'),
(412, 6, '72', '76868.jpeg', 'Baru'),
(413, 7, '72', '92618.jpeg', 'Baru'),
(414, 9, '72', '68608.jpeg', 'Baru'),
(415, 1, '73', '28188.jpeg', 'Baru'),
(416, 2, '73', '15380.jpeg', 'Baru'),
(417, 3, '73', '81676.jpeg', 'Baru'),
(418, 5, '73', '39945.jpeg', 'Baru'),
(419, 6, '73', '21265.jpeg', 'Baru'),
(420, 7, '73', '24523.jpeg', 'Baru'),
(421, 9, '73', '69659.jpeg', 'Baru'),
(422, 1, '74', '8182.jpeg', 'Baru'),
(423, 2, '74', '25859.jpeg', 'Baru'),
(424, 3, '74', '11299.jpeg', 'Baru'),
(425, 5, '74', '22571.jpeg', 'Baru'),
(426, 6, '74', '73998.jpeg', 'Baru'),
(427, 7, '74', '86556.jpeg', 'Baru'),
(428, 9, '74', '10850.jpeg', 'Baru'),
(429, 1, '75', '26483.jpeg', 'Baru'),
(430, 2, '75', '67843.jpeg', 'Baru'),
(431, 3, '75', '41789.jpeg', 'Baru'),
(432, 5, '75', '28090.jpeg', 'Baru'),
(433, 6, '75', '73851.jpeg', 'Baru'),
(434, 7, '75', '53769.jpeg', 'Baru'),
(435, 9, '75', '86463.jpeg', 'Baru'),
(436, 1, '76', '54632.jpeg', 'Baru'),
(437, 2, '76', '15633.jpeg', 'Baru'),
(438, 3, '76', '31676.jpeg', 'Baru'),
(439, 5, '76', '53589.jpeg', 'Baru'),
(440, 6, '76', '42331.jpeg', 'Baru'),
(441, 7, '76', '40440.jpeg', 'Baru'),
(442, 9, '76', '41259.jpeg', 'Baru'),
(450, 1, '78', '85850.jpeg', 'Baru'),
(451, 2, '78', '93467.jpeg', 'Baru'),
(452, 3, '78', '55416.jpeg', 'Baru'),
(453, 5, '78', '35533.jpeg', 'Baru'),
(454, 6, '78', '16465.jpeg', 'Baru'),
(455, 7, '78', '85748.jpeg', 'Baru'),
(456, 9, '78', '62750.jpeg', 'Baru'),
(457, 1, '79', '49560.jpeg', 'Baru'),
(458, 2, '79', '2908.jpeg', 'Baru'),
(459, 3, '79', '21695.jpeg', 'Baru'),
(460, 5, '79', '24422.jpeg', 'Baru'),
(461, 6, '79', '73937.jpeg', 'Baru'),
(462, 7, '79', '75292.jpeg', 'Baru'),
(463, 9, '79', '6853.jpeg', 'Baru'),
(464, 1, '80', '78705.jpeg', 'Baru'),
(465, 2, '80', '42424.jpeg', 'Baru'),
(466, 3, '80', '56524.jpeg', 'Baru'),
(467, 5, '80', '59936.jpeg', 'Baru'),
(468, 6, '80', '92857.jpeg', 'Baru'),
(469, 7, '80', '3633.jpeg', 'Baru'),
(470, 9, '80', '96404.jpeg', 'Baru'),
(471, 1, '81', '57209.jpeg', 'Baru'),
(472, 2, '81', '52136.jpeg', 'Baru'),
(473, 3, '81', '49125.jpeg', 'Baru'),
(474, 5, '81', '48241.jpeg', 'Baru'),
(475, 6, '81', '63515.jpeg', 'Baru'),
(476, 7, '81', '7515.jpeg', 'Baru'),
(477, 9, '81', '68572.jpeg', 'Baru'),
(499, 1, '85', '54153.jpeg', 'Baru'),
(500, 2, '85', '4034.jpeg', 'Baru'),
(501, 3, '85', '93878.jpeg', 'Baru'),
(502, 5, '85', '27990.jpeg', 'Baru'),
(503, 6, '85', '53789.jpeg', 'Baru'),
(504, 7, '85', '32036.jpeg', 'Baru'),
(505, 9, '85', '99233.jpeg', 'Baru'),
(506, 1, '86', '49456.jpeg', 'Baru'),
(507, 2, '86', '61448.jpeg', 'Baru'),
(508, 3, '86', '22375.jpeg', 'Baru'),
(509, 5, '86', '53154.jpeg', 'Baru'),
(510, 6, '86', '92688.jpeg', 'Baru'),
(511, 7, '86', '75734.jpeg', 'Baru'),
(512, 9, '86', '34321.jpeg', 'Baru'),
(513, 1, '87', '74108.jpeg', 'Baru'),
(514, 2, '87', '21173.jpeg', 'Baru'),
(515, 3, '87', '17089.jpeg', 'Baru'),
(516, 5, '87', '72668.jpeg', 'Baru'),
(517, 6, '87', '88032.jpeg', 'Baru'),
(518, 7, '87', '48642.jpeg', 'Baru'),
(519, 9, '87', '28960.jpeg', 'Baru'),
(520, 1, '88', '5152.jpeg', 'Baru'),
(521, 2, '88', '1997.jpeg', 'Baru'),
(522, 3, '88', '1137.jpeg', 'Baru'),
(523, 5, '88', '52157.jpeg', 'Baru'),
(524, 6, '88', '79218.jpeg', 'Baru'),
(525, 7, '88', '59984.jpeg', 'Baru'),
(526, 9, '88', '41745.jpeg', 'Baru'),
(527, 1, '89', '18328.jpeg', 'Baru'),
(528, 2, '89', '30588.jpeg', 'Baru'),
(529, 3, '89', '25381.jpeg', 'Baru'),
(530, 5, '89', '49238.jpeg', 'Baru'),
(531, 6, '89', '15777.jpeg', 'Baru'),
(532, 7, '89', '29122.jpeg', 'Baru'),
(533, 9, '89', '46213.jpeg', 'Baru'),
(534, 1, '90', '53078.jpeg', 'Baru'),
(535, 2, '90', '43370.jpeg', 'Baru'),
(536, 3, '90', '93977.jpeg', 'Baru'),
(537, 5, '90', '75510.jpeg', 'Baru'),
(538, 6, '90', '40304.jpeg', 'Baru'),
(539, 7, '90', '67810.jpeg', 'Baru'),
(540, 9, '90', '83702.jpeg', 'Baru'),
(541, 1, '91', '51548.jpeg', 'Baru'),
(542, 2, '91', '64674.jpeg', 'Baru'),
(543, 3, '91', '24734.jpeg', 'Baru'),
(544, 5, '91', '68007.jpeg', 'Baru'),
(545, 6, '91', '89702.jpeg', 'Baru'),
(546, 7, '91', '72048.jpeg', 'Baru'),
(547, 9, '91', '83790.jpeg', 'Baru'),
(548, 1, '92', '78344.jpeg', 'Baru'),
(549, 2, '92', '59237.jpeg', 'Baru'),
(550, 3, '92', '7651.jpeg', 'Baru'),
(551, 5, '92', '43696.jpeg', 'Baru'),
(552, 6, '92', '12700.jpeg', 'Baru'),
(553, 7, '92', '23764.jpeg', 'Baru'),
(554, 9, '92', '52909.jpeg', 'Baru'),
(555, 1, '93', '96793.jpeg', 'Baru'),
(556, 2, '93', '64892.jpeg', 'Baru'),
(557, 3, '93', '20036.jpeg', 'Baru'),
(558, 5, '93', '25225.jpeg', 'Baru'),
(559, 6, '93', '1356.jpeg', 'Baru'),
(560, 7, '93', '28751.jpeg', 'Baru'),
(561, 9, '93', '10455.jpeg', 'Baru'),
(562, 1, '94', '46419.jpeg', 'Baru'),
(563, 2, '94', '58740.jpeg', 'Baru'),
(564, 3, '94', '47587.jpeg', 'Baru'),
(565, 5, '94', '44730.jpeg', 'Baru'),
(566, 6, '94', '63321.jpeg', 'Baru'),
(567, 7, '94', '15595.jpeg', 'Baru'),
(568, 9, '94', '47371.jpeg', 'Baru'),
(569, 1, '95', '32396.jpeg', 'Baru'),
(570, 2, '95', '35613.jpeg', 'Baru'),
(571, 3, '95', '23749.jpeg', 'Baru'),
(572, 5, '95', '7855.jpeg', 'Baru'),
(573, 6, '95', '86354.jpeg', 'Baru'),
(574, 7, '95', '83691.jpeg', 'Baru'),
(575, 9, '95', '5351.jpeg', 'Baru'),
(576, 1, '96', '42102.jpeg', 'Baru'),
(577, 2, '96', '58874.jpeg', 'Baru'),
(578, 3, '96', '55162.jpeg', 'Baru'),
(579, 5, '96', '1294.jpeg', 'Baru'),
(580, 6, '96', '46203.jpeg', 'Baru'),
(581, 7, '96', '59676.jpeg', 'Baru'),
(582, 9, '96', '99014.jpeg', 'Baru'),
(583, 1, '97', '37639.jpeg', 'Baru'),
(584, 2, '97', '19623.jpeg', 'Baru'),
(585, 3, '97', '55402.jpeg', 'Baru'),
(586, 5, '97', '70586.jpeg', 'Baru'),
(587, 6, '97', '93106.jpeg', 'Baru'),
(588, 7, '97', '13319.jpeg', 'Baru'),
(589, 9, '97', '78556.jpeg', 'Baru'),
(590, 1, '98', '53246.jpeg', 'Baru'),
(591, 2, '98', '75407.jpeg', 'Baru'),
(592, 3, '98', '27625.jpeg', 'Baru'),
(593, 5, '98', '26011.jpeg', 'Baru'),
(594, 6, '98', '11649.jpeg', 'Baru'),
(595, 7, '98', '86713.jpeg', 'Baru'),
(596, 9, '98', '41943.jpeg', 'Baru'),
(597, 1, '99', '58174.jpeg', 'Baru'),
(598, 2, '99', '7845.jpeg', 'Baru'),
(599, 3, '99', '65175.jpeg', 'Baru'),
(600, 5, '99', '24353.jpeg', 'Baru'),
(601, 6, '99', '55243.jpeg', 'Baru'),
(602, 7, '99', '39883.jpeg', 'Baru'),
(603, 9, '99', '78511.jpeg', 'Baru'),
(604, 1, '100', '80748.jpeg', 'Baru'),
(605, 2, '100', '89371.jpeg', 'Baru'),
(606, 3, '100', '16294.jpeg', 'Baru'),
(607, 5, '100', '33869.jpeg', 'Baru'),
(608, 6, '100', '51743.jpeg', 'Baru'),
(609, 7, '100', '57073.jpeg', 'Baru'),
(610, 9, '100', '89603.jpeg', 'Baru'),
(611, 1, '101', '98361.jpeg', 'Baru'),
(612, 2, '101', '16822.jpeg', 'Baru'),
(613, 3, '101', '3444.jpeg', 'Baru'),
(614, 5, '101', '79553.jpeg', 'Baru'),
(615, 6, '101', '12163.jpeg', 'Baru'),
(616, 7, '101', '9465.jpeg', 'Baru'),
(617, 9, '101', '10972.jpeg', 'Baru'),
(618, 1, '102', '55966.jpeg', 'Baru'),
(619, 2, '102', '3488.jpeg', 'Baru'),
(620, 3, '102', '58767.jpeg', 'Baru'),
(621, 5, '102', '12454.jpeg', 'Baru'),
(622, 6, '102', '52903.jpeg', 'Baru'),
(623, 7, '102', '89858.jpeg', 'Baru'),
(624, 9, '102', '67549.jpeg', 'Baru'),
(625, 1, '103', '73167.jpeg', 'Baru'),
(626, 2, '103', '44612.jpeg', 'Baru'),
(627, 3, '103', '29331.jpeg', 'Baru'),
(628, 5, '103', '27258.jpeg', 'Baru'),
(629, 6, '103', '63533.jpeg', 'Baru'),
(630, 7, '103', '76392.jpeg', 'Baru'),
(631, 9, '103', '6059.jpeg', 'Baru'),
(646, 1, '106', '7472.jpeg', 'Baru'),
(647, 2, '106', '69181.jpeg', 'Baru'),
(648, 3, '106', '95055.jpeg', 'Baru'),
(649, 5, '106', '96543.jpeg', 'Baru'),
(650, 6, '106', '77029.jpeg', 'Baru'),
(651, 7, '106', '84468.jpeg', 'Baru'),
(652, 9, '106', '33241.jpeg', 'Baru'),
(653, 1, '107', '94653.jpeg', 'Baru'),
(654, 2, '107', '45493.jpeg', 'Baru'),
(655, 3, '107', '36386.jpeg', 'Baru'),
(656, 5, '107', '96396.jpeg', 'Baru'),
(657, 6, '107', '79865.jpeg', 'Baru'),
(658, 7, '107', '95988.jpeg', 'Baru'),
(659, 9, '107', '71157.jpeg', 'Baru'),
(660, 1, '108', '37639.jpeg', 'Baru'),
(661, 2, '108', '36122.jpeg', 'Baru'),
(662, 3, '108', '2525.jpeg', 'Baru'),
(663, 5, '108', '53417.jpeg', 'Baru'),
(664, 6, '108', '46102.jpeg', 'Baru'),
(665, 7, '108', '14670.jpeg', 'Baru'),
(666, 9, '108', '60464.jpeg', 'Baru'),
(667, 1, '109', '36563.jpeg', 'Baru'),
(668, 2, '109', '95368.jpeg', 'Baru'),
(669, 3, '109', '34432.jpeg', 'Baru'),
(670, 5, '109', '5994.jpeg', 'Baru'),
(671, 6, '109', '70212.jpeg', 'Baru'),
(672, 7, '109', '41957.jpeg', 'Baru'),
(673, 9, '109', '71391.jpeg', 'Baru'),
(674, 1, '110', '96793.jpeg', 'Baru'),
(675, 2, '110', '60916.jpeg', 'Baru'),
(676, 3, '110', '54176.jpeg', 'Baru'),
(677, 5, '110', '10429.jpeg', 'Baru'),
(678, 6, '110', '39950.jpeg', 'Baru'),
(679, 7, '110', '30773.jpeg', 'Baru'),
(680, 9, '110', '74535.jpeg', 'Baru'),
(681, 1, '111', '82041.jpeg', 'Baru'),
(682, 2, '111', '95536.jpeg', 'Baru'),
(683, 3, '111', '3298.jpeg', 'Baru'),
(684, 5, '111', '53551.jpeg', 'Baru'),
(685, 6, '111', '39187.jpeg', 'Baru'),
(686, 7, '111', '32757.jpeg', 'Baru'),
(687, 9, '111', '55416.jpeg', 'Baru'),
(688, 1, '112', '32581.jpeg', 'Baru'),
(689, 2, '112', '6804.jpeg', 'Baru'),
(690, 3, '112', '55645.jpeg', 'Baru'),
(691, 5, '112', '32069.jpeg', 'Baru'),
(692, 6, '112', '80796.jpeg', 'Baru'),
(693, 7, '112', '98310.jpeg', 'Baru'),
(694, 9, '112', '68319.jpeg', 'Baru'),
(695, 1, '113', '76982.jpeg', 'Baru'),
(696, 2, '113', '18007.jpeg', 'Baru'),
(697, 3, '113', '38864.jpeg', 'Baru'),
(698, 5, '113', '84033.jpeg', 'Baru'),
(699, 6, '113', '85550.jpeg', 'Baru'),
(700, 7, '113', '26359.jpeg', 'Baru'),
(701, 9, '113', '47829.jpeg', 'Baru'),
(723, 1, '117', '61422.jpeg', 'Baru'),
(724, 2, '117', '65757.jpeg', 'Baru'),
(725, 3, '117', '68927.jpeg', 'Baru'),
(726, 5, '117', '22710.jpeg', 'Baru'),
(727, 6, '117', '30375.jpeg', 'Baru'),
(728, 7, '117', '78495.jpeg', 'Baru'),
(729, 9, '117', '66050.jpeg', 'Baru'),
(730, 1, '118', '48177.jpeg', 'Baru'),
(731, 2, '118', '98082.jpeg', 'Baru'),
(732, 3, '118', '84980.jpeg', 'Baru'),
(733, 5, '118', '24590.jpeg', 'Baru'),
(734, 6, '118', '49100.jpeg', 'Baru'),
(735, 7, '118', '87921.jpeg', 'Baru'),
(736, 9, '118', '91855.jpeg', 'Baru'),
(737, 1, '119', '16186.jpeg', 'Baru'),
(738, 2, '119', '9563.jpeg', 'Baru'),
(739, 3, '119', '2482.jpeg', 'Baru'),
(740, 5, '119', '2151.jpeg', 'Baru'),
(741, 6, '119', '89680.jpeg', 'Baru'),
(742, 7, '119', '15851.jpeg', 'Baru'),
(743, 9, '119', '89873.jpeg', 'Baru'),
(744, 1, '120', '43762.jpeg', 'Baru'),
(745, 2, '120', '74563.jpeg', 'Baru'),
(746, 3, '120', '82484.jpeg', 'Baru'),
(747, 5, '120', '1045.jpeg', 'Baru'),
(748, 6, '120', '92160.jpeg', 'Baru'),
(749, 7, '120', '29437.jpeg', 'Baru'),
(750, 9, '120', '53088.jpeg', 'Baru'),
(772, 1, '124', '90206.jpeg', 'Baru'),
(773, 2, '124', '3146.jpeg', 'Baru'),
(774, 3, '124', '5169.jpeg', 'Baru'),
(775, 5, '124', '23827.jpeg', 'Baru'),
(776, 6, '124', '34692.jpeg', 'Baru'),
(777, 7, '124', '13176.jpeg', 'Baru'),
(778, 9, '124', '50779.jpeg', 'Baru'),
(779, 1, '125', '76173.jpeg', 'Baru'),
(780, 2, '125', '90301.jpeg', 'Baru'),
(781, 3, '125', '4433.jpeg', 'Baru'),
(782, 5, '125', '31139.jpeg', 'Baru'),
(783, 6, '125', '97073.jpeg', 'Baru'),
(784, 7, '125', '13225.jpeg', 'Baru'),
(785, 9, '125', '65057.jpeg', 'Baru'),
(786, 1, '126', '91280.jpeg', 'Baru'),
(787, 2, '126', '66686.jpeg', 'Baru'),
(788, 3, '126', '58458.jpeg', 'Baru'),
(789, 5, '126', '65466.jpeg', 'Baru'),
(790, 6, '126', '78768.jpeg', 'Baru'),
(791, 7, '126', '19263.jpeg', 'Baru'),
(792, 9, '126', '49331.jpeg', 'Baru'),
(793, 1, '127', '67596.jpeg', 'Baru'),
(794, 2, '127', '47302.jpeg', 'Baru'),
(795, 3, '127', '37846.jpeg', 'Baru'),
(796, 5, '127', '97691.jpeg', 'Baru'),
(797, 6, '127', '84388.jpeg', 'Baru'),
(798, 7, '127', '36509.jpeg', 'Baru'),
(799, 9, '127', '88951.jpeg', 'Baru'),
(800, 1, '128', '96864.jpeg', 'Baru'),
(801, 2, '128', '84578.jpeg', 'Baru'),
(802, 3, '128', '80140.jpeg', 'Baru'),
(803, 5, '128', '7109.jpeg', 'Baru'),
(804, 6, '128', '36075.jpeg', 'Baru'),
(805, 7, '128', '29772.jpeg', 'Baru'),
(806, 9, '128', '32553.jpeg', 'Baru'),
(807, 1, '129', '66936.jpeg', 'Baru'),
(808, 2, '129', '74660.jpeg', 'Baru'),
(809, 3, '129', '61034.jpeg', 'Baru'),
(810, 5, '129', '70071.jpeg', 'Baru'),
(811, 6, '129', '84519.jpeg', 'Baru'),
(812, 7, '129', '91245.jpeg', 'Baru'),
(813, 9, '129', '14716.jpeg', 'Baru'),
(814, 1, '130', '71364.jpeg', 'Baru'),
(815, 2, '130', '58147.jpeg', 'Baru'),
(816, 3, '130', '57292.jpeg', 'Baru'),
(817, 5, '130', '55616.jpeg', 'Baru'),
(818, 6, '130', '5586.jpeg', 'Baru'),
(819, 7, '130', '9626.jpeg', 'Baru'),
(820, 9, '130', '25450.jpeg', 'Baru'),
(821, 1, '131', '52798.jpeg', 'Baru'),
(822, 2, '131', '2764.jpeg', 'Baru'),
(823, 3, '131', '35074.jpeg', 'Baru'),
(824, 5, '131', '71796.jpeg', 'Baru'),
(825, 6, '131', '76327.jpeg', 'Baru'),
(826, 7, '131', '2098.jpeg', 'Baru'),
(827, 9, '131', '33969.jpeg', 'Baru'),
(828, 1, '132', '86954.jpeg', 'Baru'),
(829, 2, '132', '23989.jpeg', 'Baru'),
(830, 3, '132', '47589.jpeg', 'Baru'),
(831, 5, '132', '23861.jpeg', 'Baru'),
(832, 6, '132', '43276.jpeg', 'Baru'),
(833, 7, '132', '7379.jpeg', 'Baru'),
(834, 9, '132', '20800.jpeg', 'Baru'),
(835, 1, '133', '17255.jpeg', 'Baru'),
(836, 2, '133', '36674.jpeg', 'Baru'),
(837, 3, '133', '67601.jpeg', 'Baru'),
(838, 5, '133', '30532.jpeg', 'Baru'),
(839, 6, '133', '50814.jpeg', 'Baru'),
(840, 7, '133', '43055.jpeg', 'Baru'),
(841, 9, '133', '68034.jpeg', 'Baru'),
(842, 1, '134', '53014.jpeg', 'Baru'),
(843, 2, '134', '9859.jpeg', 'Baru'),
(844, 3, '134', '91594.jpeg', 'Baru'),
(845, 5, '134', '95322.jpeg', 'Baru'),
(846, 6, '134', '23026.jpeg', 'Baru'),
(847, 7, '134', '48470.jpeg', 'Baru'),
(848, 9, '134', '80709.jpeg', 'Baru'),
(856, 1, '136', '2586.jpeg', 'Baru'),
(857, 2, '136', '52317.jpeg', 'Baru'),
(858, 3, '136', '52213.jpeg', 'Baru'),
(859, 5, '136', '7675.jpeg', 'Baru'),
(860, 6, '136', '80997.jpeg', 'Baru'),
(861, 7, '136', '55123.jpeg', 'Baru'),
(862, 9, '136', '2155.jpeg', 'Baru'),
(863, 1, '137', '69356.pdf', 'Baru'),
(864, 2, '137', '17838.pdf', 'Baru'),
(865, 3, '137', '69314.pdf', 'Baru'),
(866, 5, '137', '1222.pdf', 'Baru'),
(867, 6, '137', '7863.pdf', 'Baru'),
(868, 7, '137', '47514.pdf', 'Baru'),
(869, 9, '137', '63859.pdf', 'Baru'),
(870, 1, '138', '6502.jpeg', 'Baru'),
(871, 2, '138', '40668.jpeg', 'Baru'),
(872, 3, '138', '23613.jpeg', 'Baru'),
(873, 5, '138', '40065.jpeg', 'Baru'),
(874, 6, '138', '63959.jpeg', 'Baru'),
(875, 7, '138', '2002.jpeg', 'Baru'),
(876, 9, '138', '72756.jpeg', 'Baru'),
(877, 1, '139', '99426.jpeg', 'Baru'),
(878, 2, '139', '2867.jpeg', 'Baru'),
(879, 3, '139', '12499.jpeg', 'Baru'),
(880, 5, '139', '16367.jpeg', 'Baru'),
(881, 6, '139', '54214.jpeg', 'Baru'),
(882, 7, '139', '7197.jpeg', 'Baru'),
(883, 9, '139', '64265.jpeg', 'Baru'),
(898, 1, '142', '88708.jpeg', 'Baru'),
(899, 2, '142', '38591.jpeg', 'Baru'),
(900, 3, '142', '30709.jpeg', 'Baru'),
(901, 5, '142', '29958.jpeg', 'Baru'),
(902, 6, '142', '73160.jpeg', 'Baru'),
(903, 7, '142', '89359.jpeg', 'Baru'),
(904, 9, '142', '94771.jpeg', 'Baru'),
(905, 1, '143', '88691.jpeg', 'Baru'),
(906, 2, '143', '69491.jpeg', 'Baru'),
(907, 3, '143', '89583.jpeg', 'Baru'),
(908, 5, '143', '80874.jpeg', 'Baru'),
(909, 6, '143', '16538.jpeg', 'Baru'),
(910, 7, '143', '78297.jpeg', 'Baru'),
(911, 9, '143', '20031.jpeg', 'Baru'),
(912, 1, '144', '53398.jpeg', 'Baru'),
(913, 2, '144', '22793.jpeg', 'Baru'),
(914, 3, '144', '80555.jpeg', 'Baru'),
(915, 5, '144', '85960.jpeg', 'Baru'),
(916, 6, '144', '54432.jpeg', 'Baru'),
(917, 7, '144', '16235.jpeg', 'Baru'),
(918, 9, '144', '36973.jpeg', 'Baru'),
(919, 1, '145', '16646.jpeg', 'Baru'),
(920, 2, '145', '35562.jpeg', 'Baru'),
(921, 3, '145', '38233.jpeg', 'Baru'),
(922, 5, '145', '42111.jpeg', 'Baru'),
(923, 6, '145', '38605.jpeg', 'Baru'),
(924, 7, '145', '68220.jpeg', 'Baru'),
(925, 9, '145', '12707.jpeg', 'Baru'),
(926, 1, '146', '1587.jpeg', 'Baru'),
(927, 2, '146', '91870.jpeg', 'Baru'),
(928, 3, '146', '79819.jpeg', 'Baru'),
(929, 5, '146', '77880.jpeg', 'Baru'),
(930, 6, '146', '47786.jpeg', 'Baru'),
(931, 7, '146', '68025.jpeg', 'Baru'),
(932, 9, '146', '64671.jpeg', 'Baru'),
(933, 1, '147', '79346.jpeg', 'Baru'),
(934, 2, '147', '99475.jpeg', 'Baru'),
(935, 3, '147', '29164.jpeg', 'Baru'),
(936, 5, '147', '71533.jpeg', 'Baru'),
(937, 6, '147', '88049.jpeg', 'Baru'),
(938, 7, '147', '29584.jpeg', 'Baru'),
(939, 9, '147', '78660.jpeg', 'Baru'),
(940, 1, '148', '51884.jpeg', 'Baru'),
(941, 2, '148', '33940.jpeg', 'Baru'),
(942, 3, '148', '75852.jpeg', 'Baru'),
(943, 5, '148', '81606.jpeg', 'Baru'),
(944, 6, '148', '59912.jpeg', 'Baru'),
(945, 7, '148', '48155.jpeg', 'Baru'),
(946, 9, '148', '22471.jpeg', 'Baru'),
(947, 1, '149', '91102.jpeg', 'Baru'),
(948, 2, '149', '18555.jpeg', 'Baru'),
(949, 3, '149', '94446.jpeg', 'Baru'),
(950, 5, '149', '74458.jpeg', 'Baru'),
(951, 6, '149', '47027.jpeg', 'Baru'),
(952, 7, '149', '35967.jpeg', 'Baru'),
(953, 9, '149', '54639.jpeg', 'Baru'),
(954, 1, '150', '25007.jpeg', 'Baru'),
(955, 2, '150', '88550.jpeg', 'Baru'),
(956, 3, '150', '99022.jpeg', 'Baru'),
(957, 5, '150', '67360.jpeg', 'Baru'),
(958, 6, '150', '81570.jpeg', 'Baru'),
(959, 7, '150', '66439.jpeg', 'Baru'),
(960, 9, '150', '81916.jpeg', 'Baru'),
(961, 1, '151', '50561.jpeg', 'Baru'),
(962, 2, '151', '25430.jpeg', 'Baru'),
(963, 3, '151', '14380.jpeg', 'Baru'),
(964, 5, '151', '45298.jpeg', 'Baru'),
(965, 6, '151', '1208.jpeg', 'Baru'),
(966, 7, '151', '4578.jpeg', 'Baru'),
(967, 9, '151', '53946.jpeg', 'Baru'),
(968, 1, '152', '79063.jpeg', 'Baru'),
(969, 2, '152', '31516.jpeg', 'Baru'),
(970, 3, '152', '86589.jpeg', 'Baru'),
(971, 5, '152', '65923.jpeg', 'Baru'),
(972, 6, '152', '23885.jpeg', 'Baru'),
(973, 7, '152', '61795.jpeg', 'Baru'),
(974, 9, '152', '9425.jpeg', 'Baru'),
(975, 1, '153', '9414.jpeg', 'Baru'),
(976, 2, '153', '78658.jpeg', 'Baru'),
(977, 3, '153', '42991.jpeg', 'Baru'),
(978, 5, '153', '1395.jpeg', 'Baru'),
(979, 6, '153', '84333.jpeg', 'Baru'),
(980, 7, '153', '7814.jpeg', 'Baru'),
(981, 9, '153', '64382.jpeg', 'Baru'),
(982, 1, '154', '32243.jpeg', 'Baru'),
(983, 2, '154', '97191.jpeg', 'Baru'),
(984, 3, '154', '76518.jpeg', 'Baru'),
(985, 5, '154', '39054.jpeg', 'Baru'),
(986, 6, '154', '12149.jpeg', 'Baru'),
(987, 7, '154', '30112.jpeg', 'Baru'),
(988, 9, '154', '49790.jpeg', 'Baru'),
(989, 1, '155', '24225.jpeg', 'Baru'),
(990, 2, '155', '20428.jpeg', 'Baru'),
(991, 3, '155', '16885.jpeg', 'Baru'),
(992, 5, '155', '44500.jpeg', 'Baru'),
(993, 6, '155', '62315.jpeg', 'Baru'),
(994, 7, '155', '41841.jpeg', 'Baru'),
(995, 9, '155', '16174.jpeg', 'Baru'),
(1003, 1, '157', '5093.jpeg', 'Baru'),
(1004, 2, '157', '91920.jpeg', 'Baru'),
(1005, 3, '157', '70033.jpeg', 'Baru'),
(1006, 5, '157', '61103.jpeg', 'Baru'),
(1007, 6, '157', '98218.jpeg', 'Baru'),
(1008, 7, '157', '3564.jpeg', 'Baru'),
(1009, 9, '157', '57063.jpeg', 'Baru'),
(1010, 1, '158', '16314.jpeg', 'Baru'),
(1011, 2, '158', '28643.jpeg', 'Baru'),
(1012, 3, '158', '93045.jpeg', 'Baru'),
(1013, 5, '158', '52993.jpeg', 'Baru'),
(1014, 6, '158', '75219.jpeg', 'Baru'),
(1015, 7, '158', '71044.jpeg', 'Baru'),
(1016, 9, '158', '74415.jpeg', 'Baru'),
(1017, 1, '159', '76310.jpeg', 'Baru'),
(1018, 2, '159', '52260.jpeg', 'Baru'),
(1019, 3, '159', '21737.jpeg', 'Baru'),
(1020, 5, '159', '23602.jpeg', 'Baru'),
(1021, 6, '159', '86521.jpeg', 'Baru'),
(1022, 7, '159', '60610.jpeg', 'Baru'),
(1023, 9, '159', '40637.jpeg', 'Baru'),
(1024, 1, '160', '67854.jpeg', 'Baru'),
(1025, 2, '160', '58247.jpeg', 'Baru'),
(1026, 3, '160', '60902.jpeg', 'Baru'),
(1027, 5, '160', '85284.jpeg', 'Baru'),
(1028, 6, '160', '12443.jpeg', 'Baru'),
(1029, 7, '160', '36276.jpeg', 'Baru'),
(1030, 9, '160', '28536.jpeg', 'Baru'),
(1031, 1, '161', '18657.jpeg', 'Baru'),
(1032, 2, '161', '66042.jpeg', 'Baru'),
(1033, 3, '161', '83435.jpeg', 'Baru'),
(1034, 5, '161', '16491.jpeg', 'Baru'),
(1035, 6, '161', '95573.jpeg', 'Baru'),
(1036, 7, '161', '63041.jpeg', 'Baru'),
(1037, 9, '161', '4855.jpeg', 'Baru'),
(1038, 1, '162', '967.jpeg', 'Baru'),
(1039, 2, '162', '29702.jpeg', 'Baru'),
(1040, 3, '162', '61615.jpeg', 'Baru'),
(1041, 5, '162', '74933.jpeg', 'Baru'),
(1042, 6, '162', '30959.jpeg', 'Baru'),
(1043, 7, '162', '40430.jpeg', 'Baru'),
(1044, 9, '162', '39561.jpeg', 'Baru'),
(1045, 1, '163', '11966.jpeg', 'Baru'),
(1046, 2, '163', '98636.jpeg', 'Baru'),
(1047, 3, '163', '44610.jpeg', 'Baru'),
(1048, 5, '163', '35255.jpeg', 'Baru'),
(1049, 6, '163', '14334.jpeg', 'Baru'),
(1050, 7, '163', '43172.jpeg', 'Baru'),
(1051, 9, '163', '41723.jpeg', 'Baru'),
(1052, 1, '164', '46596.jpeg', 'Baru'),
(1053, 2, '164', '55848.jpeg', 'Baru'),
(1054, 3, '164', '93659.jpeg', 'Baru'),
(1055, 5, '164', '18273.jpeg', 'Baru'),
(1056, 6, '164', '14044.jpeg', 'Baru'),
(1057, 7, '164', '51727.jpeg', 'Baru'),
(1058, 9, '164', '96846.jpeg', 'Baru'),
(1059, 1, '165', '69700.jpeg', 'Baru'),
(1060, 2, '165', '35735.jpeg', 'Baru'),
(1061, 3, '165', '18075.jpeg', 'Baru'),
(1062, 5, '165', '62970.jpeg', 'Baru'),
(1063, 6, '165', '54414.jpeg', 'Baru'),
(1064, 7, '165', '28326.jpeg', 'Baru'),
(1065, 9, '165', '65780.jpeg', 'Baru'),
(1066, 1, '166', '28210.jpeg', 'Baru'),
(1067, 2, '166', '99638.jpeg', 'Baru'),
(1068, 3, '166', '65339.jpeg', 'Baru'),
(1069, 5, '166', '53172.jpeg', 'Baru'),
(1070, 6, '166', '2271.jpeg', 'Baru'),
(1071, 7, '166', '18427.jpeg', 'Baru'),
(1072, 9, '166', '89587.jpeg', 'Baru'),
(1094, 1, '170', '13010.jpeg', 'Baru'),
(1095, 2, '170', '23587.jpeg', 'Baru'),
(1096, 3, '170', '90632.jpeg', 'Baru'),
(1097, 5, '170', '96462.jpeg', 'Baru'),
(1098, 6, '170', '19065.jpeg', 'Baru'),
(1099, 7, '170', '6829.jpeg', 'Baru'),
(1100, 9, '170', '75099.jpeg', 'Baru'),
(1101, 1, '171', '22088.jpeg', 'Baru'),
(1102, 2, '171', '89771.jpeg', 'Baru'),
(1103, 3, '171', '18930.jpeg', 'Baru'),
(1104, 5, '171', '39322.jpeg', 'Baru'),
(1105, 6, '171', '33309.jpeg', 'Baru'),
(1106, 7, '171', '56213.jpeg', 'Baru'),
(1107, 9, '171', '72364.jpeg', 'Baru'),
(1108, 1, '172', '97394.jpeg', 'Baru'),
(1109, 2, '172', '9958.jpeg', 'Baru'),
(1110, 3, '172', '66684.jpeg', 'Baru'),
(1111, 5, '172', '83386.jpeg', 'Baru'),
(1112, 6, '172', '97099.jpeg', 'Baru'),
(1113, 7, '172', '86126.jpeg', 'Baru'),
(1114, 9, '172', '14886.jpeg', 'Baru'),
(1115, 1, '173', '74445.jpeg', 'Baru'),
(1116, 2, '173', '53054.jpeg', 'Baru'),
(1117, 3, '173', '50834.jpeg', 'Baru'),
(1118, 5, '173', '16743.jpeg', 'Baru'),
(1119, 6, '173', '28633.jpeg', 'Baru'),
(1120, 7, '173', '81105.jpeg', 'Baru'),
(1121, 9, '173', '7039.jpeg', 'Baru'),
(1122, 1, '174', '22477.jpeg', 'Baru'),
(1123, 2, '174', '75634.jpeg', 'Baru'),
(1124, 3, '174', '40195.jpeg', 'Baru'),
(1125, 5, '174', '44134.jpeg', 'Baru'),
(1126, 6, '174', '30412.jpeg', 'Baru'),
(1127, 7, '174', '71456.jpeg', 'Baru'),
(1128, 9, '174', '85144.jpeg', 'Baru'),
(1129, 1, '175', '3781.jpeg', 'Baru'),
(1130, 2, '175', '44352.jpeg', 'Baru'),
(1131, 3, '175', '10066.jpeg', 'Baru'),
(1132, 5, '175', '35830.jpeg', 'Baru'),
(1133, 6, '175', '36781.jpeg', 'Baru'),
(1134, 7, '175', '11900.jpeg', 'Baru'),
(1135, 9, '175', '94739.jpeg', 'Baru'),
(1136, 1, '176', '58229.jpeg', 'Baru'),
(1137, 2, '176', '13493.jpeg', 'Baru'),
(1138, 3, '176', '4193.jpeg', 'Baru'),
(1139, 5, '176', '33302.jpeg', 'Baru'),
(1140, 6, '176', '66310.jpeg', 'Baru'),
(1141, 7, '176', '3195.jpeg', 'Baru'),
(1142, 9, '176', '82346.jpeg', 'Baru'),
(1150, 1, '178', '46795.jpeg', 'Baru'),
(1151, 2, '178', '61119.jpeg', 'Baru'),
(1152, 3, '178', '9000.jpeg', 'Baru'),
(1153, 5, '178', '76.jpeg', 'Baru'),
(1154, 6, '178', '50778.jpeg', 'Baru'),
(1155, 7, '178', '76234.jpeg', 'Baru'),
(1156, 9, '178', '40081.jpeg', 'Baru'),
(1157, 1, '179', '54536.jpeg', 'Baru'),
(1158, 2, '179', '44580.jpeg', 'Baru'),
(1159, 3, '179', '28480.jpeg', 'Baru'),
(1160, 5, '179', '92080.jpeg', 'Baru'),
(1161, 6, '179', '15276.jpeg', 'Baru'),
(1162, 7, '179', '57011.jpeg', 'Baru'),
(1163, 9, '179', '334.jpeg', 'Baru'),
(1164, 1, '180', '87140.jpeg', 'Baru'),
(1165, 2, '180', '42688.jpeg', 'Baru'),
(1166, 3, '180', '47064.jpeg', 'Baru'),
(1167, 5, '180', '62235.jpeg', 'Baru'),
(1168, 6, '180', '88974.jpeg', 'Baru'),
(1169, 7, '180', '42542.jpeg', 'Baru'),
(1170, 9, '180', '82738.jpeg', 'Baru'),
(1171, 1, '181', '20769.jpeg', 'Baru'),
(1172, 2, '181', '62290.jpeg', 'Baru'),
(1173, 3, '181', '51239.jpeg', 'Baru'),
(1174, 5, '181', '96723.jpeg', 'Baru'),
(1175, 6, '181', '23251.jpeg', 'Baru'),
(1176, 7, '181', '71026.jpeg', 'Baru'),
(1177, 9, '181', '66874.jpeg', 'Baru'),
(1178, 1, '182', '64068.jpeg', 'Baru'),
(1179, 2, '182', '17809.jpeg', 'Baru'),
(1180, 3, '182', '27142.jpeg', 'Baru'),
(1181, 5, '182', '95667.jpeg', 'Baru'),
(1182, 6, '182', '18727.jpeg', 'Baru'),
(1183, 7, '182', '76551.jpeg', 'Baru'),
(1184, 9, '182', '92594.jpeg', 'Baru'),
(1185, 1, '183', '96941.jpeg', 'Baru'),
(1186, 2, '183', '75319.jpeg', 'Baru'),
(1187, 3, '183', '85508.jpeg', 'Baru'),
(1188, 5, '183', '62677.jpeg', 'Baru'),
(1189, 6, '183', '6162.jpeg', 'Baru'),
(1190, 7, '183', '64757.jpeg', 'Baru'),
(1191, 9, '183', '22277.jpeg', 'Baru'),
(1206, 1, '186', '42657.jpeg', 'Baru'),
(1207, 2, '186', '8912.jpeg', 'Baru'),
(1208, 3, '186', '24418.jpeg', 'Baru'),
(1209, 5, '186', '4359.jpeg', 'Baru'),
(1210, 6, '186', '4371.jpeg', 'Baru'),
(1211, 7, '186', '75822.jpeg', 'Baru'),
(1212, 9, '186', '33795.jpeg', 'Baru'),
(1220, 1, '188', '88560.jpeg', 'Baru'),
(1221, 2, '188', '23042.jpeg', 'Baru'),
(1222, 3, '188', '52048.jpeg', 'Baru'),
(1223, 5, '188', '10511.jpeg', 'Baru'),
(1224, 6, '188', '43326.jpeg', 'Baru'),
(1225, 7, '188', '84855.jpeg', 'Baru'),
(1226, 9, '188', '25310.jpeg', 'Baru'),
(1227, 1, '189', '59292.jpeg', 'Baru'),
(1228, 2, '189', '95903.jpeg', 'Baru'),
(1229, 3, '189', '12202.jpeg', 'Baru'),
(1230, 5, '189', '20323.jpeg', 'Baru'),
(1231, 6, '189', '49217.jpeg', 'Baru'),
(1232, 7, '189', '12569.jpeg', 'Baru'),
(1233, 9, '189', '76856.jpeg', 'Baru'),
(1234, 1, '190', '43273.jpeg', 'Baru'),
(1235, 2, '190', '215.jpeg', 'Baru'),
(1236, 3, '190', '27944.jpeg', 'Baru'),
(1237, 5, '190', '74245.jpeg', 'Baru'),
(1238, 6, '190', '56588.jpeg', 'Baru'),
(1239, 7, '190', '42273.jpeg', 'Baru'),
(1240, 9, '190', '90081.jpeg', 'Baru'),
(1241, 1, '191', '29598.jpeg', 'Baru'),
(1242, 2, '191', '5577.jpeg', 'Baru'),
(1243, 3, '191', '42233.jpeg', 'Baru'),
(1244, 5, '191', '31674.jpeg', 'Baru'),
(1245, 6, '191', '54469.jpeg', 'Baru'),
(1246, 7, '191', '77448.jpeg', 'Baru'),
(1247, 9, '191', '74642.jpeg', 'Baru'),
(1248, 1, '192', '32278.jpeg', 'Baru'),
(1249, 2, '192', '21776.jpeg', 'Baru'),
(1250, 3, '192', '5901.jpeg', 'Baru'),
(1251, 5, '192', '41065.jpeg', 'Baru'),
(1252, 6, '192', '79773.jpeg', 'Baru'),
(1253, 7, '192', '46166.jpeg', 'Baru'),
(1254, 9, '192', '52983.jpeg', 'Baru'),
(1262, 1, '194', '9289.jpeg', 'Baru'),
(1263, 2, '194', '42515.jpeg', 'Baru'),
(1264, 3, '194', '26030.jpeg', 'Baru'),
(1265, 5, '194', '51603.jpeg', 'Baru'),
(1266, 6, '194', '27254.jpeg', 'Baru'),
(1267, 7, '194', '97345.jpeg', 'Baru'),
(1268, 9, '194', '25938.jpeg', 'Baru'),
(1269, 1, '195', '18838.jpeg', 'Baru'),
(1270, 2, '195', '62696.jpeg', 'Baru'),
(1271, 3, '195', '79629.jpeg', 'Baru'),
(1272, 5, '195', '88413.jpeg', 'Baru'),
(1273, 6, '195', '5081.jpeg', 'Baru'),
(1274, 7, '195', '86744.jpeg', 'Baru'),
(1275, 9, '195', '47749.jpeg', 'Baru'),
(1276, 1, '196', '58492.jpeg', 'Baru'),
(1277, 2, '196', '36770.jpeg', 'Baru'),
(1278, 3, '196', '28293.jpeg', 'Baru'),
(1279, 5, '196', '37596.jpeg', 'Baru'),
(1280, 6, '196', '85438.jpeg', 'Baru'),
(1281, 7, '196', '17078.jpeg', 'Baru'),
(1282, 9, '196', '10261.jpeg', 'Baru'),
(1283, 1, '197', '23393.jpeg', 'Baru'),
(1284, 2, '197', '56546.jpeg', 'Baru'),
(1285, 3, '197', '94289.jpeg', 'Baru'),
(1286, 5, '197', '10637.jpeg', 'Baru'),
(1287, 6, '197', '36826.jpeg', 'Baru'),
(1288, 7, '197', '82281.jpeg', 'Baru'),
(1289, 9, '197', '50969.jpeg', 'Baru'),
(1290, 1, '198', '24465.jpeg', 'Baru'),
(1291, 2, '198', '56008.jpeg', 'Baru'),
(1292, 3, '198', '30075.jpeg', 'Baru'),
(1293, 5, '198', '30178.jpeg', 'Baru'),
(1294, 6, '198', '28133.jpeg', 'Baru'),
(1295, 7, '198', '2958.jpeg', 'Baru'),
(1296, 9, '198', '54477.jpeg', 'Baru'),
(1297, 1, '199', '98306.jpeg', 'Baru'),
(1298, 2, '199', '88781.jpeg', 'Baru'),
(1299, 3, '199', '11876.jpeg', 'Baru'),
(1300, 5, '199', '46856.jpeg', 'Baru'),
(1301, 6, '199', '72845.jpeg', 'Baru'),
(1302, 7, '199', '34080.jpeg', 'Baru'),
(1303, 9, '199', '72211.jpeg', 'Baru'),
(1304, 1, '200', '8272.jpeg', 'Baru'),
(1305, 2, '200', '29976.jpeg', 'Baru'),
(1306, 3, '200', '48191.jpeg', 'Baru'),
(1307, 5, '200', '65820.jpeg', 'Baru'),
(1308, 6, '200', '45213.jpeg', 'Baru'),
(1309, 7, '200', '33658.jpeg', 'Baru'),
(1310, 9, '200', '11174.jpeg', 'Baru'),
(1311, 1, '201', '74833.jpeg', 'Baru'),
(1312, 2, '201', '98541.jpeg', 'Baru'),
(1313, 3, '201', '24282.jpeg', 'Baru'),
(1314, 5, '201', '25314.jpeg', 'Baru'),
(1315, 6, '201', '71007.jpeg', 'Baru'),
(1316, 7, '201', '44786.jpeg', 'Baru'),
(1317, 9, '201', '4805.jpeg', 'Baru'),
(1318, 1, '202', '88979.jpeg', 'Baru'),
(1319, 2, '202', '24692.jpeg', 'Baru'),
(1320, 3, '202', '67395.jpeg', 'Baru'),
(1321, 5, '202', '42730.jpeg', 'Baru'),
(1322, 6, '202', '47337.jpeg', 'Baru'),
(1323, 7, '202', '72543.jpeg', 'Baru'),
(1324, 9, '202', '203.jpeg', 'Baru'),
(1325, 1, '203', '9371.jpeg', 'Baru'),
(1326, 2, '203', '85679.jpeg', 'Baru'),
(1327, 3, '203', '79.jpeg', 'Baru'),
(1328, 5, '203', '60203.jpeg', 'Baru'),
(1329, 6, '203', '42668.jpeg', 'Baru'),
(1330, 7, '203', '58602.jpeg', 'Baru'),
(1331, 9, '203', '91520.jpeg', 'Baru'),
(1332, 1, '204', '40935.jpeg', 'Baru'),
(1333, 2, '204', '25417.jpeg', 'Baru'),
(1334, 3, '204', '74099.jpeg', 'Baru'),
(1335, 5, '204', '56557.jpeg', 'Baru'),
(1336, 6, '204', '76625.jpeg', 'Baru'),
(1337, 7, '204', '87116.jpeg', 'Baru'),
(1338, 9, '204', '46694.jpeg', 'Baru'),
(1339, 1, '205', '36461.pdf', 'Baru'),
(1340, 2, '205', '39277.pdf', 'Baru'),
(1341, 3, '205', '70636.pdf', 'Baru'),
(1342, 5, '205', '67839.pdf', 'Baru'),
(1343, 6, '205', '39518.pdf', 'Baru'),
(1344, 7, '205', '91005.pdf', 'Baru'),
(1345, 9, '205', 'Belum Ada Lampiran', 'Baru'),
(1346, 1, '206', '76721.jpeg', 'Baru'),
(1347, 2, '206', '47672.jpeg', 'Baru'),
(1348, 3, '206', '8740.jpeg', 'Baru'),
(1349, 5, '206', '11133.jpeg', 'Baru'),
(1350, 6, '206', '44380.jpeg', 'Baru'),
(1351, 7, '206', '12600.jpeg', 'Baru'),
(1352, 9, '206', '1219.jpeg', 'Baru'),
(1353, 1, '207', '94928.jpeg', 'Baru'),
(1354, 2, '207', '50898.jpeg', 'Baru'),
(1355, 3, '207', '3051.jpeg', 'Baru'),
(1356, 5, '207', '70795.jpeg', 'Baru'),
(1357, 6, '207', '57798.jpeg', 'Baru'),
(1358, 7, '207', '99797.jpeg', 'Baru'),
(1359, 9, '207', '40529.jpeg', 'Baru'),
(1360, 1, '208', '23509.jpeg', 'Baru'),
(1361, 2, '208', '49327.jpeg', 'Baru'),
(1362, 3, '208', '66678.jpeg', 'Baru'),
(1363, 5, '208', '41048.jpeg', 'Baru'),
(1364, 6, '208', '165.jpeg', 'Baru'),
(1365, 7, '208', '13105.jpeg', 'Baru'),
(1366, 9, '208', '33833.jpeg', 'Baru'),
(1367, 1, '209', '80541.jpeg', 'Baru'),
(1368, 2, '209', '1670.jpeg', 'Baru'),
(1369, 3, '209', '23370.jpeg', 'Baru'),
(1370, 5, '209', '90530.jpeg', 'Baru'),
(1371, 6, '209', '37485.jpeg', 'Baru'),
(1372, 7, '209', '62878.jpeg', 'Baru'),
(1373, 9, '209', '12047.jpeg', 'Baru'),
(1388, 1, '212', '68947.jpeg', 'Baru'),
(1389, 2, '212', '96076.jpeg', 'Baru'),
(1390, 3, '212', '32323.jpeg', 'Baru'),
(1391, 5, '212', '95809.jpeg', 'Baru'),
(1392, 6, '212', '26481.jpeg', 'Baru'),
(1393, 7, '212', '50866.jpeg', 'Baru'),
(1394, 9, '212', '7724.jpeg', 'Baru'),
(1458, 1, '222', '20234.jpeg', 'Baru'),
(1459, 2, '222', '13227.jpeg', 'Baru'),
(1460, 3, '222', '19966.jpeg', 'Baru'),
(1461, 5, '222', '99603.jpeg', 'Baru'),
(1462, 6, '222', '27840.jpeg', 'Baru'),
(1463, 7, '222', '88680.jpeg', 'Baru'),
(1464, 9, '222', '77657.jpeg', 'Baru'),
(1465, 1, '223', '77208.jpeg', 'Baru'),
(1466, 2, '223', '2892.jpeg', 'Baru'),
(1467, 3, '223', '19187.jpeg', 'Baru'),
(1468, 5, '223', '80120.jpeg', 'Baru'),
(1469, 6, '223', '29982.jpeg', 'Baru'),
(1470, 7, '223', '15607.jpeg', 'Baru'),
(1471, 9, '223', '90966.jpeg', 'Baru'),
(1472, 1, '224', 'Belum Ada Lampiran', 'Baru'),
(1473, 2, '224', 'Belum Ada Lampiran', 'Baru'),
(1474, 3, '224', 'Belum Ada Lampiran', 'Baru'),
(1475, 5, '224', 'Belum Ada Lampiran', 'Baru'),
(1476, 6, '224', 'Belum Ada Lampiran', 'Baru'),
(1477, 7, '224', 'Belum Ada Lampiran', 'Baru'),
(1478, 9, '224', 'Belum Ada Lampiran', 'Baru'),
(1479, 1, '225', '32173.jpeg', 'Baru'),
(1480, 2, '225', '45978.jpeg', 'Baru'),
(1481, 3, '225', '77788.jpeg', 'Baru'),
(1482, 5, '225', '70738.jpeg', 'Baru'),
(1483, 6, '225', '88917.jpeg', 'Baru'),
(1484, 7, '225', '40887.jpeg', 'Baru'),
(1485, 9, '225', '20025.jpeg', 'Baru'),
(1486, 1, '226', '81555.jpeg', 'Baru'),
(1487, 2, '226', '77704.jpeg', 'Baru'),
(1488, 3, '226', '38014.jpeg', 'Baru'),
(1489, 5, '226', '86397.jpeg', 'Baru'),
(1490, 6, '226', '77054.jpeg', 'Baru'),
(1491, 7, '226', '37339.jpeg', 'Baru'),
(1492, 9, '226', '42058.jpeg', 'Baru'),
(1493, 1, '227', '55895.jpeg', 'Baru'),
(1494, 2, '227', '28635.jpeg', 'Baru'),
(1495, 3, '227', '29369.jpeg', 'Baru'),
(1496, 5, '227', '66369.jpeg', 'Baru'),
(1497, 6, '227', '31524.jpeg', 'Baru'),
(1498, 7, '227', '35380.jpeg', 'Baru'),
(1499, 9, '227', 'Belum Ada Lampiran', 'Baru'),
(1500, 1, '228', 'Belum Ada Lampiran', 'Baru'),
(1501, 2, '228', 'Belum Ada Lampiran', 'Baru'),
(1502, 3, '228', 'Belum Ada Lampiran', 'Baru'),
(1503, 5, '228', 'Belum Ada Lampiran', 'Baru'),
(1504, 6, '228', 'Belum Ada Lampiran', 'Baru'),
(1505, 7, '228', 'Belum Ada Lampiran', 'Baru'),
(1506, 9, '228', 'Belum Ada Lampiran', 'Baru'),
(1514, 1, '230', '53019.jpeg', 'Baru'),
(1515, 2, '230', '74424.jpeg', 'Baru'),
(1516, 3, '230', '69513.jpeg', 'Baru'),
(1517, 5, '230', '28895.jpeg', 'Baru'),
(1518, 6, '230', '72786.jpeg', 'Baru'),
(1519, 7, '230', '51559.jpeg', 'Baru'),
(1520, 9, '230', '8397.jpeg', 'Baru'),
(1521, 1, '231', '43822.jpeg', 'Baru'),
(1522, 2, '231', '13739.jpeg', 'Baru'),
(1523, 3, '231', '72019.jpeg', 'Baru'),
(1524, 5, '231', '88715.jpeg', 'Baru'),
(1525, 6, '231', '808.jpeg', 'Baru'),
(1526, 7, '231', '7353.jpeg', 'Baru'),
(1527, 9, '231', '63066.jpeg', 'Baru'),
(1535, 1, '233', '62070.jpeg', 'Baru'),
(1536, 2, '233', '31916.jpeg', 'Baru'),
(1537, 3, '233', '47221.jpeg', 'Baru'),
(1538, 5, '233', '41607.jpeg', 'Baru'),
(1539, 6, '233', '28984.jpeg', 'Baru'),
(1540, 7, '233', '12337.jpeg', 'Baru'),
(1541, 9, '233', '11929.jpeg', 'Baru'),
(1542, 1, '234', '46154.jpeg', 'Baru'),
(1543, 2, '234', '96394.jpeg', 'Baru'),
(1544, 3, '234', '49107.jpeg', 'Baru'),
(1545, 5, '234', '64496.jpeg', 'Baru'),
(1546, 6, '234', '75258.jpeg', 'Baru'),
(1547, 7, '234', '47646.jpeg', 'Baru'),
(1548, 9, '234', '82488.jpeg', 'Baru'),
(1549, 1, '235', '89541.jpeg', 'Baru'),
(1550, 2, '235', '50122.jpeg', 'Baru'),
(1551, 3, '235', '88807.jpeg', 'Baru'),
(1552, 5, '235', '20651.jpeg', 'Baru'),
(1553, 6, '235', '93588.jpeg', 'Baru'),
(1554, 7, '235', '5984.jpeg', 'Baru'),
(1555, 9, '235', '85506.jpeg', 'Baru'),
(1563, 1, '237', '24608.jpeg', 'Baru'),
(1564, 2, '237', '40311.jpeg', 'Baru'),
(1565, 3, '237', '16892.jpeg', 'Baru'),
(1566, 5, '237', '19376.jpeg', 'Baru'),
(1567, 6, '237', '82922.jpeg', 'Baru'),
(1568, 7, '237', '18365.jpeg', 'Baru'),
(1569, 9, '237', '25649.jpeg', 'Baru'),
(1570, 1, '238', '58021.jpeg', 'Baru'),
(1571, 2, '238', '21833.jpeg', 'Baru'),
(1572, 3, '238', '60809.jpeg', 'Baru'),
(1573, 5, '238', '97435.jpeg', 'Baru'),
(1574, 6, '238', '74392.jpeg', 'Baru'),
(1575, 7, '238', '22561.jpeg', 'Baru'),
(1576, 9, '238', '19127.jpeg', 'Baru'),
(1577, 1, '239', 'Belum Ada Lampiran', 'Baru'),
(1578, 2, '239', 'Belum Ada Lampiran', 'Baru'),
(1579, 3, '239', 'Belum Ada Lampiran', 'Baru'),
(1580, 5, '239', 'Belum Ada Lampiran', 'Baru'),
(1581, 6, '239', 'Belum Ada Lampiran', 'Baru'),
(1582, 7, '239', 'Belum Ada Lampiran', 'Baru'),
(1583, 9, '239', 'Belum Ada Lampiran', 'Baru'),
(1584, 1, '240', '58228.jpeg', 'Baru'),
(1585, 2, '240', '94675.jpeg', 'Baru'),
(1586, 3, '240', '79723.jpeg', 'Baru'),
(1587, 5, '240', '62804.jpeg', 'Baru'),
(1588, 6, '240', '45400.jpeg', 'Baru'),
(1589, 7, '240', '55092.jpeg', 'Baru'),
(1590, 9, '240', '33921.jpeg', 'Baru'),
(1591, 1, '241', '8623.jpeg', 'Baru'),
(1592, 2, '241', '89271.jpeg', 'Baru'),
(1593, 3, '241', '18209.jpeg', 'Baru'),
(1594, 5, '241', '60424.jpeg', 'Baru'),
(1595, 6, '241', '36932.jpeg', 'Baru'),
(1596, 7, '241', '33102.jpeg', 'Baru'),
(1597, 9, '241', '40247.jpeg', 'Baru'),
(1598, 1, '242', '48933.jpeg', 'Baru'),
(1599, 2, '242', '36645.jpeg', 'Baru'),
(1600, 3, '242', '14787.jpeg', 'Baru'),
(1601, 5, '242', '26148.jpeg', 'Baru'),
(1602, 6, '242', '79534.jpeg', 'Baru'),
(1603, 7, '242', '30948.jpeg', 'Baru'),
(1604, 9, '242', '10217.jpeg', 'Baru'),
(1612, 1, '244', '43858.jpg', 'Baru'),
(1613, 2, '244', '39915.jpg', 'Baru'),
(1614, 3, '244', '4583.jpg', 'Baru'),
(1615, 5, '244', '17999.jpg', 'Baru'),
(1616, 6, '244', '54272.jpg', 'Baru'),
(1617, 7, '244', '27183.jpg', 'Baru'),
(1618, 9, '244', '1170.jpg', 'Baru'),
(1619, 1, '245', '21203.jpeg', 'Baru'),
(1620, 2, '245', '91067.jpeg', 'Baru'),
(1621, 3, '245', '61002.jpeg', 'Baru'),
(1622, 5, '245', '62826.jpeg', 'Baru'),
(1623, 6, '245', '52719.jpeg', 'Baru'),
(1624, 7, '245', '3153.jpeg', 'Baru'),
(1625, 9, '245', '15493.jpeg', 'Baru'),
(1626, 1, '246', '58629.jpeg', 'Baru'),
(1627, 2, '246', '6515.jpeg', 'Baru'),
(1628, 3, '246', '70146.jpeg', 'Baru'),
(1629, 5, '246', '34561.jpeg', 'Baru'),
(1630, 6, '246', '551.jpeg', 'Baru'),
(1631, 7, '246', '476.jpeg', 'Baru'),
(1632, 9, '246', '39616.jpeg', 'Baru'),
(1633, 1, '247', '961.jpeg', 'Baru'),
(1634, 2, '247', '62634.jpeg', 'Baru'),
(1635, 3, '247', '12024.jpeg', 'Baru'),
(1636, 5, '247', '54763.jpeg', 'Baru'),
(1637, 6, '247', '50519.jpeg', 'Baru'),
(1638, 7, '247', '319.jpeg', 'Baru'),
(1639, 9, '247', '81893.jpeg', 'Baru'),
(1640, 1, '248', '44294.jpeg', 'Baru'),
(1641, 2, '248', '43121.jpeg', 'Baru'),
(1642, 3, '248', '38180.jpeg', 'Baru'),
(1643, 5, '248', '47808.jpeg', 'Baru'),
(1644, 6, '248', '44422.jpeg', 'Baru'),
(1645, 7, '248', '55557.jpeg', 'Baru'),
(1646, 9, '248', '9404.jpeg', 'Baru'),
(1647, 1, '249', '87537.pdf', 'Baru'),
(1648, 2, '249', '90608.pdf', 'Baru'),
(1649, 3, '249', '92280.pdf', 'Baru'),
(1650, 5, '249', '66408.pdf', 'Baru'),
(1651, 6, '249', '99068.pdf', 'Baru'),
(1652, 7, '249', '44670.pdf', 'Baru'),
(1653, 9, '249', '55171.pdf', 'Baru'),
(1654, 1, '250', '42332.jpg', 'Baru'),
(1655, 2, '250', '31582.jpg', 'Baru'),
(1656, 3, '250', '12086.jpg', 'Baru'),
(1657, 5, '250', '95478.jpg', 'Baru'),
(1658, 6, '250', '90415.jpg', 'Baru'),
(1659, 7, '250', '99071.jpg', 'Baru'),
(1660, 9, '250', '45465.jpg', 'Baru'),
(1675, 1, '253', '28698.jpg', 'Baru'),
(1676, 2, '253', '31066.jpg', 'Baru'),
(1677, 3, '253', '89835.jpg', 'Baru'),
(1678, 5, '253', '8870.jpg', 'Baru'),
(1679, 6, '253', '91863.jpg', 'Baru'),
(1680, 7, '253', '97905.jpg', 'Baru'),
(1681, 9, '253', '79853.jpg', 'Baru'),
(1682, 1, '254', '79968.jpg', 'Baru'),
(1683, 2, '254', '80029.jpg', 'Baru'),
(1684, 3, '254', '95294.jpg', 'Baru'),
(1685, 5, '254', '40776.jpg', 'Baru'),
(1686, 6, '254', '46210.jpg', 'Baru'),
(1687, 7, '254', '1562.jpg', 'Baru'),
(1688, 9, '254', '25400.jpg', 'Baru'),
(1689, 1, '255', '73906.jpg', 'Baru'),
(1690, 2, '255', '27317.jpg', 'Baru'),
(1691, 3, '255', '69910.jpg', 'Baru'),
(1692, 5, '255', '71040.jpg', 'Baru'),
(1693, 6, '255', '9591.jpg', 'Baru'),
(1694, 7, '255', '33416.jpg', 'Baru'),
(1695, 9, '255', '22846.jpg', 'Baru'),
(1696, 1, '256', '17590.jpg', 'Baru'),
(1697, 2, '256', '79441.jpg', 'Baru'),
(1698, 3, '256', '83957.jpg', 'Baru'),
(1699, 5, '256', '8296.jpg', 'Baru'),
(1700, 6, '256', '11940.jpg', 'Baru'),
(1701, 7, '256', '16402.jpg', 'Baru'),
(1702, 9, '256', '37725.jpg', 'Baru'),
(1703, 1, '257', '85985.jpg', 'Baru'),
(1704, 2, '257', '40714.jpg', 'Baru'),
(1705, 3, '257', '9765.jpg', 'Baru'),
(1706, 5, '257', '71839.jpg', 'Baru'),
(1707, 6, '257', '39786.jpg', 'Baru'),
(1708, 7, '257', '59616.jpg', 'Baru'),
(1709, 9, '257', '92862.jpg', 'Baru'),
(1710, 1, '258', '51264.jpeg', 'Baru'),
(1711, 2, '258', '77111.jpeg', 'Baru'),
(1712, 3, '258', '28192.jpeg', 'Baru'),
(1713, 5, '258', '13858.jpeg', 'Baru'),
(1714, 6, '258', '65896.jpeg', 'Baru'),
(1715, 7, '258', '55577.jpeg', 'Baru'),
(1716, 9, '258', '85058.jpeg', 'Baru'),
(1724, 1, '260', '38343.jpeg', 'Baru'),
(1725, 2, '260', '21148.jpeg', 'Baru'),
(1726, 3, '260', '46111.jpeg', 'Baru'),
(1727, 5, '260', '18894.jpeg', 'Baru'),
(1728, 6, '260', '55000.jpeg', 'Baru'),
(1729, 7, '260', '38938.jpeg', 'Baru'),
(1730, 9, '260', '32877.jpeg', 'Baru'),
(1731, 1, '261', '25037.jpeg', 'Baru'),
(1732, 2, '261', '42228.jpeg', 'Baru'),
(1733, 3, '261', '68518.jpeg', 'Baru'),
(1734, 5, '261', '797.jpeg', 'Baru'),
(1735, 6, '261', '49769.jpeg', 'Baru'),
(1736, 7, '261', '88135.jpeg', 'Baru'),
(1737, 9, '261', '22264.jpeg', 'Baru'),
(1738, 1, '262', '57582.jpeg', 'Baru'),
(1739, 2, '262', '96622.jpeg', 'Baru'),
(1740, 3, '262', '99644.jpeg', 'Baru'),
(1741, 5, '262', '16879.jpeg', 'Baru'),
(1742, 6, '262', '39561.jpeg', 'Baru'),
(1743, 7, '262', '66.jpeg', 'Baru'),
(1744, 9, '262', '85759.jpeg', 'Baru'),
(1745, 1, '263', '42272.jpeg', 'Baru'),
(1746, 2, '263', '11504.jpeg', 'Baru'),
(1747, 3, '263', '11584.jpeg', 'Baru'),
(1748, 5, '263', '24378.jpeg', 'Baru'),
(1749, 6, '263', '48414.jpeg', 'Baru'),
(1750, 7, '263', '36354.jpeg', 'Baru'),
(1751, 9, '263', '83235.jpeg', 'Baru'),
(1752, 1, '264', '44913.jpeg', 'Baru'),
(1753, 2, '264', '98670.jpeg', 'Baru'),
(1754, 3, '264', '49534.jpeg', 'Baru'),
(1755, 5, '264', '33210.jpeg', 'Baru'),
(1756, 6, '264', '71900.jpeg', 'Baru'),
(1757, 7, '264', '43338.jpeg', 'Baru'),
(1758, 9, '264', '28822.jpeg', 'Baru'),
(1759, 1, '265', '79585.jpeg', 'Baru'),
(1760, 2, '265', '46306.jpeg', 'Baru'),
(1761, 3, '265', '33466.jpeg', 'Baru'),
(1762, 5, '265', '36994.jpeg', 'Baru'),
(1763, 6, '265', '35729.jpeg', 'Baru'),
(1764, 7, '265', '41742.jpeg', 'Baru'),
(1765, 9, '265', '24549.jpeg', 'Baru'),
(1766, 1, '266', '28302.jpg', 'Baru'),
(1767, 2, '266', '93348.jpg', 'Baru'),
(1768, 3, '266', '65328.jpg', 'Baru'),
(1769, 5, '266', '25400.jpg', 'Baru'),
(1770, 6, '266', '1666.jpg', 'Baru'),
(1771, 7, '266', '67445.jpg', 'Baru'),
(1772, 9, '266', '11102.jpg', 'Baru'),
(1773, 1, '267', '94561.jpg', 'Baru'),
(1774, 2, '267', '62256.jpg', 'Baru'),
(1775, 3, '267', '39294.jpg', 'Baru'),
(1776, 5, '267', '5366.jpg', 'Baru'),
(1777, 6, '267', '59790.jpg', 'Baru'),
(1778, 7, '267', '27434.jpg', 'Baru'),
(1779, 9, '267', '21464.jpg', 'Baru'),
(1787, 1, '269', '16290.jpeg', 'Baru'),
(1788, 2, '269', '94279.jpeg', 'Baru'),
(1789, 3, '269', '69555.jpeg', 'Baru'),
(1790, 5, '269', '9418.jpeg', 'Baru'),
(1791, 6, '269', '18367.jpeg', 'Baru'),
(1792, 7, '269', '72961.jpeg', 'Baru'),
(1793, 9, '269', '46126.jpeg', 'Baru'),
(1794, 1, '270', '86506.jpeg', 'Baru'),
(1795, 2, '270', '65070.jpeg', 'Baru'),
(1796, 3, '270', '23928.jpeg', 'Baru'),
(1797, 5, '270', '79088.jpeg', 'Baru'),
(1798, 6, '270', '40827.jpeg', 'Baru'),
(1799, 7, '270', '74147.jpeg', 'Baru'),
(1800, 9, '270', '14589.jpeg', 'Baru'),
(1815, 1, '273', '4760.jpeg', 'Baru'),
(1816, 2, '273', '6075.jpeg', 'Baru'),
(1817, 3, '273', '56607.jpeg', 'Baru'),
(1818, 5, '273', '4349.jpeg', 'Baru'),
(1819, 6, '273', '80606.jpeg', 'Baru'),
(1820, 7, '273', '21939.jpeg', 'Baru'),
(1821, 9, '273', '1804.jpeg', 'Baru'),
(1822, 1, '274', '10424.jpeg', 'Baru'),
(1823, 2, '274', '81154.jpeg', 'Baru'),
(1824, 3, '274', '48441.jpeg', 'Baru'),
(1825, 5, '274', '76511.jpeg', 'Baru'),
(1826, 6, '274', '8829.jpeg', 'Baru'),
(1827, 7, '274', '13492.jpeg', 'Baru'),
(1828, 9, '274', '8495.jpeg', 'Baru'),
(1829, 1, '275', '1578.jpg', 'Baru'),
(1830, 2, '275', '23827.jpg', 'Baru'),
(1831, 3, '275', '72885.jpg', 'Baru'),
(1832, 5, '275', '12613.jpg', 'Baru'),
(1833, 6, '275', '56629.jpg', 'Baru'),
(1834, 7, '275', '44043.jpg', 'Baru'),
(1835, 9, '275', '15610.jpg', 'Baru'),
(1836, 1, '276', '83730.jpeg', 'Baru'),
(1837, 2, '276', '79423.jpeg', 'Baru'),
(1838, 3, '276', '88355.jpeg', 'Baru'),
(1839, 5, '276', '42353.jpeg', 'Baru'),
(1840, 6, '276', '83217.jpeg', 'Baru'),
(1841, 7, '276', '17328.jpeg', 'Baru'),
(1842, 9, '276', '72097.jpeg', 'Baru'),
(1871, 1, '281', '12226.jpeg', 'Baru'),
(1872, 2, '281', '78073.jpeg', 'Baru'),
(1873, 3, '281', '24476.jpeg', 'Baru'),
(1874, 5, '281', '40121.jpeg', 'Baru'),
(1875, 6, '281', '17992.jpeg', 'Baru'),
(1876, 7, '281', '13930.jpeg', 'Baru'),
(1877, 9, '281', '87357.jpeg', 'Baru'),
(1878, 1, '282', '83495.jpeg', 'Baru'),
(1879, 2, '282', '71182.jpeg', 'Baru'),
(1880, 3, '282', '93892.jpeg', 'Baru'),
(1881, 5, '282', '71016.jpeg', 'Baru'),
(1882, 6, '282', '76184.jpeg', 'Baru'),
(1883, 7, '282', '92464.jpeg', 'Baru'),
(1884, 9, '282', '71172.jpeg', 'Baru'),
(1885, 1, '283', '36794.jpeg', 'Baru'),
(1886, 2, '283', '64619.jpeg', 'Baru'),
(1887, 3, '283', '66988.jpeg', 'Baru'),
(1888, 5, '283', '65727.jpeg', 'Baru'),
(1889, 6, '283', '83291.jpeg', 'Baru'),
(1890, 7, '283', '33344.jpeg', 'Baru'),
(1891, 9, '283', '28942.jpeg', 'Baru'),
(1892, 1, '284', '52891.jpeg', 'Baru'),
(1893, 2, '284', '26009.jpeg', 'Baru'),
(1894, 3, '284', '31739.jpeg', 'Baru'),
(1895, 5, '284', '49508.jpeg', 'Baru'),
(1896, 6, '284', '29582.jpeg', 'Baru'),
(1897, 7, '284', '64900.jpeg', 'Baru'),
(1898, 9, '284', '63160.jpeg', 'Baru'),
(1899, 1, '285', '51007.jpeg', 'Baru'),
(1900, 2, '285', '29861.jpeg', 'Baru'),
(1901, 3, '285', '88185.jpeg', 'Baru'),
(1902, 5, '285', '67451.jpeg', 'Baru'),
(1903, 6, '285', '15886.jpeg', 'Baru'),
(1904, 7, '285', '788.jpeg', 'Baru'),
(1905, 9, '285', '15887.jpeg', 'Baru'),
(1927, 1, '289', '73280.jpeg', 'Baru'),
(1928, 2, '289', '80021.jpeg', 'Baru'),
(1929, 3, '289', '78440.jpeg', 'Baru'),
(1930, 5, '289', '50872.jpeg', 'Baru'),
(1931, 6, '289', '77696.jpeg', 'Baru'),
(1932, 7, '289', '7911.jpeg', 'Baru'),
(1933, 9, '289', '98763.jpeg', 'Baru'),
(1934, 1, '290', '15318.jpeg', 'Baru'),
(1935, 2, '290', '70290.jpeg', 'Baru'),
(1936, 3, '290', '42086.jpeg', 'Baru'),
(1937, 5, '290', '44946.jpeg', 'Baru'),
(1938, 6, '290', '8129.jpeg', 'Baru'),
(1939, 7, '290', '79168.jpeg', 'Baru'),
(1940, 9, '290', '58631.jpeg', 'Baru'),
(1941, 1, '291', '10796.jpeg', 'Baru'),
(1942, 2, '291', '91218.jpeg', 'Baru'),
(1943, 3, '291', '78089.jpeg', 'Baru'),
(1944, 5, '291', '71915.jpeg', 'Baru'),
(1945, 6, '291', '45294.jpeg', 'Baru'),
(1946, 7, '291', '85949.jpeg', 'Baru'),
(1947, 9, '291', '56222.jpeg', 'Baru'),
(1955, 1, '293', '99626.jpeg', 'Baru'),
(1956, 2, '293', '11014.jpeg', 'Baru'),
(1957, 3, '293', '22023.jpeg', 'Baru'),
(1958, 5, '293', '88208.jpeg', 'Baru'),
(1959, 6, '293', '21129.jpeg', 'Baru'),
(1960, 7, '293', '36245.jpeg', 'Baru'),
(1961, 9, '293', '19808.jpeg', 'Baru'),
(1962, 1, '294', '41973.jpeg', 'Baru'),
(1963, 2, '294', '29684.jpeg', 'Baru'),
(1964, 3, '294', '38868.jpeg', 'Baru'),
(1965, 5, '294', '66095.jpeg', 'Baru'),
(1966, 6, '294', '72272.jpeg', 'Baru'),
(1967, 7, '294', '68623.jpeg', 'Baru'),
(1968, 9, '294', '47076.jpeg', 'Baru'),
(1969, 1, '295', '66462.jpeg', 'Baru'),
(1970, 2, '295', '47708.jpeg', 'Baru'),
(1971, 3, '295', '95838.jpeg', 'Baru'),
(1972, 5, '295', '75870.jpeg', 'Baru'),
(1973, 6, '295', '66552.jpeg', 'Baru'),
(1974, 7, '295', '90400.jpeg', 'Baru'),
(1975, 9, '295', '29700.jpeg', 'Baru'),
(1976, 1, '296', '18225.jpeg', 'Baru'),
(1977, 2, '296', '75109.jpeg', 'Baru'),
(1978, 3, '296', '75200.jpeg', 'Baru'),
(1979, 5, '296', '64907.jpeg', 'Baru'),
(1980, 6, '296', '35783.jpeg', 'Baru'),
(1981, 7, '296', '69314.jpeg', 'Baru'),
(1982, 9, '296', '94162.jpeg', 'Baru'),
(1983, 1, '297', '77964.jpeg', 'Baru'),
(1984, 2, '297', '78937.jpeg', 'Baru'),
(1985, 3, '297', '82423.jpeg', 'Baru'),
(1986, 5, '297', '18906.jpeg', 'Baru'),
(1987, 6, '297', '93775.jpeg', 'Baru'),
(1988, 7, '297', '7538.jpeg', 'Baru'),
(1989, 9, '297', '44456.jpeg', 'Baru'),
(1990, 1, '298', '92017.jpeg', 'Baru'),
(1991, 2, '298', '49634.jpeg', 'Baru'),
(1992, 3, '298', '10982.jpeg', 'Baru'),
(1993, 5, '298', '47782.jpeg', 'Baru'),
(1994, 6, '298', '21433.jpeg', 'Baru'),
(1995, 7, '298', '46829.jpeg', 'Baru'),
(1996, 9, '298', '2351.jpeg', 'Baru'),
(1997, 1, '299', '92007.png', 'Baru'),
(1998, 2, '299', '71173.png', 'Baru'),
(1999, 3, '299', '79916.png', 'Baru'),
(2000, 5, '299', '18872.png', 'Baru'),
(2001, 6, '299', '32230.png', 'Baru'),
(2002, 7, '299', '11640.png', 'Baru'),
(2003, 9, '299', '21994.png', 'Baru'),
(2004, 1, '300', '63858.png', 'Baru'),
(2005, 2, '300', '15387.png', 'Baru'),
(2006, 3, '300', '61728.png', 'Baru'),
(2007, 5, '300', '48828.png', 'Baru'),
(2008, 6, '300', '59939.png', 'Baru'),
(2009, 7, '300', '44525.png', 'Baru'),
(2010, 9, '300', '69040.png', 'Baru'),
(2011, 1, '301', '68561.png', 'Baru'),
(2012, 2, '301', '32675.png', 'Baru'),
(2013, 3, '301', '57080.png', 'Baru'),
(2014, 5, '301', '34403.png', 'Baru'),
(2015, 6, '301', '35980.png', 'Baru'),
(2016, 7, '301', '12644.png', 'Baru'),
(2017, 9, '301', '79870.png', 'Baru');

-- --------------------------------------------------------

--
-- Table structure for table `legalisasi_imb`
--

CREATE TABLE `legalisasi_imb` (
  `id_imb` int(11) NOT NULL,
  `tgl_permohonan` date NOT NULL,
  `kelurahan` varchar(50) NOT NULL,
  `nama_pemohon` varchar(50) NOT NULL,
  `alamat_pemohon` text NOT NULL,
  `lokasi_bangunan` text NOT NULL,
  `keterangan` text DEFAULT NULL,
  `tgl_selesai` date DEFAULT NULL,
  `id_posisi` int(11) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `legalisasi_izin_tower`
--

CREATE TABLE `legalisasi_izin_tower` (
  `id_izin_tower` int(11) NOT NULL,
  `tgl_permohonan` date NOT NULL,
  `kelurahan` varchar(50) NOT NULL,
  `nama_pemohon` varchar(50) NOT NULL,
  `alamat_pemohon` text NOT NULL,
  `nama_perusahaan` text NOT NULL,
  `alamat_perusahaan` text NOT NULL,
  `lokasi_tower` text NOT NULL,
  `keterangan` text DEFAULT NULL,
  `tgl_selesai` date DEFAULT NULL,
  `id_posisi` int(11) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `legalisasi_proposal`
--

CREATE TABLE `legalisasi_proposal` (
  `id_proposal` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `judul_proposal` text NOT NULL,
  `tgl_permohonan` date NOT NULL,
  `tgl_selesai` date DEFAULT NULL,
  `id_posisi` int(11) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `id` int(11) NOT NULL,
  `ket` text NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT current_timestamp(),
  `user` text NOT NULL,
  `data_lama` text DEFAULT NULL,
  `data_baru` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`id`, `ket`, `waktu`, `user`, `data_lama`, `data_baru`) VALUES
(1260, 'Login User', '2024-06-03 00:59:19', 'admin -> Admin', NULL, NULL),
(1261, 'Login User', '2024-06-03 04:18:16', 'admin -> Admin', NULL, NULL),
(1262, 'Login User', '2024-06-03 06:16:57', 'admin -> Admin', NULL, NULL),
(1263, 'Login User', '2024-06-03 06:31:04', 'admin -> Admin', NULL, NULL),
(1264, 'Login User', '2024-06-03 07:49:31', 'admin -> Admin', NULL, NULL),
(1265, 'Login User', '2024-06-03 08:01:47', 'admin -> Admin', NULL, NULL),
(1266, 'Login User', '2024-06-03 08:10:54', 'Dinar Bias Langensari -> Admin', NULL, NULL),
(1267, 'Login User', '2024-06-03 08:48:22', 'admin -> Admin', NULL, NULL),
(1268, 'Login User', '2024-06-03 14:40:13', 'admin -> Admin', NULL, NULL),
(1269, 'Login User', '2024-06-03 14:42:34', 'admin -> Admin', NULL, NULL),
(1270, 'Login User', '2024-06-04 00:27:32', 'admin -> Admin', NULL, NULL),
(1271, 'Login User', '2024-06-04 00:39:33', 'admin -> Admin', NULL, NULL),
(1272, 'Login User', '2024-06-04 01:23:30', 'admin -> Admin', NULL, NULL),
(1273, 'Login User', '2024-06-04 01:30:34', 'admin -> Admin', NULL, NULL),
(1274, 'Login User', '2024-06-04 01:37:18', 'admin -> Admin', NULL, NULL),
(1275, 'Login User', '2024-06-05 07:53:05', 'Dinar Bias Langensari -> Admin', NULL, NULL),
(1276, 'Login User', '2024-06-06 02:57:10', 'admin -> Admin', NULL, NULL),
(1277, 'Login User', '2024-06-06 07:42:30', 'admin -> Admin', NULL, NULL),
(1278, 'Login User', '2024-06-07 01:35:21', 'Maya filiantari -> Admin', NULL, NULL),
(1279, 'Login User', '2024-06-07 01:36:46', 'admin -> Admin', NULL, NULL),
(1280, 'Login User', '2024-06-07 06:10:23', 'admin -> Admin', NULL, NULL),
(1281, 'Login User', '2024-06-10 01:04:10', 'admin -> Admin', NULL, NULL),
(1282, 'Login User', '2024-06-10 05:03:22', 'admin -> Admin', NULL, NULL),
(1283, 'Login User', '2024-06-11 01:02:26', 'admin -> Admin', NULL, NULL),
(1284, 'Login User', '2024-06-11 03:18:01', 'Dinar Bias Langensari -> Admin', NULL, NULL),
(1285, 'Login User', '2024-06-11 03:35:57', 'admin -> Admin', NULL, NULL),
(1286, 'Login User', '2024-06-12 01:02:11', 'admin -> Admin', NULL, NULL),
(1287, 'Login User', '2024-06-12 08:37:28', 'admin -> Admin', NULL, NULL),
(1288, 'Login User', '2024-06-13 01:04:06', 'admin -> Admin', NULL, NULL),
(1289, 'Login User', '2024-06-13 02:13:00', 'admin -> Admin', NULL, NULL),
(1290, 'Login User', '2024-06-13 02:16:09', 'admin -> Admin', NULL, NULL),
(1291, 'Login User', '2024-06-14 01:47:59', 'admin -> Admin', NULL, NULL),
(1292, 'Login User', '2024-06-14 03:48:05', 'admin -> Admin', NULL, NULL),
(1293, 'Login User', '2024-06-14 07:13:35', 'Dinar Bias Langensari -> Admin', NULL, NULL),
(1294, 'Login User', '2024-06-19 00:38:39', 'admin -> Admin', NULL, NULL),
(1295, 'Login User', '2024-06-19 01:51:56', 'admin -> Admin', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `masyarakat`
--

CREATE TABLE `masyarakat` (
  `id_masyarakat` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nik` varchar(25) NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jk` varchar(12) NOT NULL,
  `agama` varchar(20) NOT NULL,
  `telpon` varchar(13) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `alamat` text NOT NULL,
  `no_rumah` varchar(11) DEFAULT NULL,
  `rt` varchar(11) DEFAULT NULL,
  `rw` varchar(11) DEFAULT NULL,
  `kelurahan` varchar(100) DEFAULT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `masyarakat`
--

INSERT INTO `masyarakat` (`id_masyarakat`, `nama`, `nik`, `tempat_lahir`, `tgl_lahir`, `jk`, `agama`, `telpon`, `email`, `alamat`, `no_rumah`, `rt`, `rw`, `kelurahan`, `password`) VALUES
(34, 'Muhammad Muzakir, S.Kom', '6371012406940007', 'Banjarmasin', '1994-06-24', 'Laki-laki', 'Islam', '081294252730', NULL, 'Jl. Kelayan A, Gg. PGA Ujung No 87 RT07 RW 03 Banjarmasin selatan', NULL, NULL, NULL, NULL, '$2a$10$18.nvFZ6tE/YAEjqbJqfYODkeL4p5EWZWfERSat7xwdofA.0.wwz2'),
(35, 'Muhammad Luthfi Azhari ', '6371040711740008', 'Surabaya', '1974-11-07', 'Laki-laki', 'Islam', '081348366170', NULL, 'Jl. Sultan Adam Komplek Mandiri Lestari Blok BII No.3 R.32 RW.003 Kelurahan Surgi Mufti', NULL, NULL, NULL, NULL, '$2y$10$xc4XBW/Bi9WVSMIetX3HU.tHrGqNIVZ2rYL5pCmnPglaRK7OSslKO'),
(36, 'Nur Solehah ', '6371040306990004', 'Banjarmasin ', '1999-06-03', 'Perempuan', 'Islam', '083155825428', NULL, 'Jl. Alalak selatan GG.Marpati RT.01 RW.01 No 53', NULL, NULL, NULL, NULL, '$2y$10$s2D3bfTRs4a8/KjD0kOxd.cy178tBHSWlekxocTVDqkVkTESZniSq'),
(38, 'Muhammad Abdillah', '6371030606970015', 'Banjarmasin', '1997-06-06', 'Laki-laki', 'Islam', '087841589718', NULL, 'Jl. Belitung Darat Gg. Simpang Rahmat No.92 Rt.18 Rw.02, Banjarmasin', NULL, NULL, NULL, NULL, '$2y$10$iVls/kHSmbY25baLXBBR8uP3dI0aGh/EgitvzbSWrYYV6taccQN2O'),
(39, 'HELDA NORLIANI, HJ', '6371044205740009', 'Banjarmasin', '1974-05-02', 'Perempuan', 'Islam', '085251490909', NULL, 'Komp. Kayu Tangi II Jalur 6 No.115 Rt.21 Rw.02, Banjarmasin', NULL, NULL, NULL, NULL, '$2y$10$C.dAI2nt7iD/9L8M9Z.Tae7/zWr6QP6RnPnVEcrflkNfoykHWVDOq'),
(40, 'NORA TALIB', '6371055701720002', 'BANJARMASIN', '1972-01-17', 'Perempuan', 'Islam', '082155716876', NULL, 'JL. ANTASAN KECIL BARAT RT. 11 RW. 02', NULL, NULL, NULL, NULL, '$2y$10$3cOyD/JZrmFnP2zVwJ0Js.Qs2B6iuKgmDz.oFYe8SqoefjzecS0d.'),
(41, 'NURUL ATIK', '3404022506660001', 'Jepara', '1966-06-25', 'Laki-laki', 'Islam', '0818277981', 'alfatihivan@gmail.com', 'Dukuh 04 RT.02 RW.08, Sleman ', '1', '1', '1', 'KELURAHAN HADIMULYO BARAT', '$2y$10$1Ru7i6MUC39oEAnJLqVTXu28YCDpctif6FdzU1A6gwxkjhZCbcd7K'),
(42, 'Sri Rusdiana', '6371046503760004', 'Banjarmasin', '1976-03-25', 'Perempuan', 'Islam', '08115112307', NULL, 'Jl. Sultan Adam Depan SMA5 RT.021 RW 002 No.74 Banjarmasin', NULL, NULL, NULL, NULL, '$2y$10$jEXtfaUNFuJeqaGuzc.nXOeaY2m.OUHKyEJHc.0WdhiwtZrZml3LG'),
(43, 'H. SUMARNO DS, M.Pd', '6371030103500007', 'Kebumen', '1950-03-01', 'Laki-laki', 'Islam', '08115110135 ', NULL, 'Jl. S Adam Komp. Kartika No.32 Rt.25 Rw.03 Surgi Mufti Banjarmasin 70122', NULL, NULL, NULL, NULL, '$2y$10$CdMqVDXnqK3DASe8A1Wmt.vjgDBAHECukew3UPMcGnBOwTeZ5R1eG'),
(44, 'LAYLI QADRIAH', '6371044707830012', 'banjarmasin', '1983-07-07', 'Perempuan', 'Islam', '0', NULL, 'Jl perdagangan komplek hksn permai blok 10 b no.463 ', NULL, NULL, NULL, NULL, '$2y$10$MPCiXjsWK6VJPZTgpC1UheSpwChQstU.OW5vCqYrRnfYCTLhktpym'),
(45, 'lupita witono', '3173065309910003', 'banjarmasin', '1991-09-13', 'Perempuan', 'katolik', '081250629221', NULL, 'jl. tm. semanan indah blok b3/30 rt. 002 rw. 012 jakarta barat ', NULL, NULL, NULL, NULL, '$2y$10$2tS07XSm2yeXJCzQxnywXOMGOGu72a/ZMp1H4XlHgIXaZcijoPKMC'),
(46, 'Hendra Dwi Sujaryanto', '3524212404820003', 'Lamongan', '1982-04-24', 'Laki-laki', 'Islam', '082275642256 ', NULL, 'Jl. Belitung Darat Gg. Rahayu Rt.18 Rw.02 Belitung Utara Banjarmasin 70116', NULL, NULL, NULL, NULL, '$2y$10$ewMxaygi5tPEgIBKy6QTUufk6GSRflmdVQC5tVwo/FvdmQKGuJbXK'),
(47, 'MARPUAH,HJ', '6371046601600001', 'BANJARMASIN', '1960-01-26', 'Perempuan', 'Islam', '0', NULL, 'JL. BRIGJEN H.HASAN BASRI TEMBUS PERUMNAS  NO. 86 RT.40 RW.03 KELURAHAN ALALAK UTARA', NULL, NULL, NULL, NULL, '$2y$10$SIGj/zt9QQqyOFPajs.xMOu1fM7przKRYQDtt4d7UdjEBYoEA4Iq2'),
(48, 'Siti rahayu', '6371034906740007', 'banjarmasin ', '1974-12-19', 'Perempuan', 'Islam', '081346237103', NULL, 'jln cemara raya blok 2 no 13 rt 31', NULL, NULL, NULL, NULL, '$2y$10$nPkGBQP9QJn8cwkywYCu.ee6HRhYPjTr5pjKE.kP85aJSks..TKFq'),
(49, 'NURUL AULIA', '3173052904660003', 'Jakarta', '1996-04-24', 'Laki-laki', 'Islam', '087712722065', NULL, 'KP Baru Jl.AA No.50 Rt.04 Kel.Sukabumi Selatan Kec.Kebon Jeruk  Jakarta Barat', NULL, NULL, NULL, NULL, '$2y$10$OdxKtdGRpUrHfJgylfzNRe1BAdGPxYY86MFD9j15E40D1WCS7D2Iq'),
(50, 'HAYATIN NUFUS,AMD.KEB', '6308104410870001', 'BANJARMASIN', '1987-10-04', 'Perempuan', 'Islam', '082248847766', NULL, 'JL. SULTAN ADAM KOMP. MAHLIGAI NO.108 KELURAHAN SURGI MUFTI', NULL, NULL, NULL, NULL, '$2y$10$bOvXGQfMS6noXsjy7XRYBOK1WHccz21DPn3yW5WqT0BNW.fW9.xHm'),
(52, 'ASNAH', '6371045907760005', 'BANJARMASIN', '1976-07-19', 'Perempuan', 'Islam', '085391385800', NULL, 'Jl. Alalak Tengah Gang SMA 8 No.42 Rt.23 RW.002 Kelurahan Alalak Tengah ', NULL, NULL, NULL, NULL, '$2y$10$b1T1yjb.BnlGpdyhTqx0/e1vBS82wYzxBVoEZoqj/2KJHlILxbK4K'),
(53, 'M. Haris Maulana,H', '6371042009900008', 'BANJARMASIN', '1990-09-20', 'Laki-laki', 'Islam', '0', NULL, 'Jl. Sultan Adam Komp Taekwando Permai Jalur. XII No.10 Rt.36', NULL, NULL, NULL, NULL, '$2y$10$j1/5sx0rkHStLHmgQGIIV./MyiisTQG7IrB/Dby7wAtUY7Ekwb8ri'),
(54, 'Syaiful B', '6371010305770016', 'BANJARMASIN', '1977-05-08', 'Laki-laki', 'Islam', '081257508857', NULL, 'Jl. Rantauan Timur II No.12 Rt.004/Rw.001 Kelurahan Pekauman ', NULL, NULL, NULL, NULL, '$2y$10$PJS2O39oZnKODSAi.ghwsuAJ8NIG/0hX1yAty/RqWAAdoASrbEDRm'),
(56, 'FIRMAN', '6371051909840008', 'BANJARMASIN', '1984-09-19', 'Laki-laki', 'Islam', '0811501211', NULL, 'jl.zafri zam zam komp.grawiratama III no.210 rt.39 rw.03 kelurahan belitung selatan', NULL, NULL, NULL, NULL, '$2y$10$tDRk9gi/bM0s0ViD5DcJsuLCwLsjT.x8fUk22LRxBuOFX8P6W9MtK'),
(57, 'DINA APRINA', '6371055704800011', 'BANJARMASIN', '1980-04-17', 'Perempuan', 'Islam', '082252000059', NULL, 'JL. SUNGAI ANDAI KOMP. PESONA PERSADA BLOK ENO.14 RT.07 KELURAHAN SUNGAI ANDAI ', NULL, NULL, NULL, NULL, '$2y$10$SQfBzBpn9arBiguIk8GSqOT.SdlxCfNJJgI50kjqXKWdGVb4PGU6G'),
(58, 'NOOR IKHSAN', '6371041701930007', 'BANJARMASIN', '1993-01-17', 'Laki-laki', 'Islam', '082159847209', NULL, 'Jl. Sungai Jingah No.67/12 Rt.016 Rw.01', NULL, NULL, NULL, NULL, '$2y$10$kMRJ7Cp8EWsYRS8mQ5TksO58VAWSYJnty/36yXooLw.QvsTwS8EwK'),
(59, 'MARIA NITEM', '6371046110730003', 'CILACAP', '1973-10-21', 'Perempuan', 'Islam', '0', NULL, 'JL. HKSN KOMP. DASA MAYA II BLOK F NO.8 RT.19 RW.02 KELURAHAN ALALAK SELATAN KECAMATAN BANJARMASIN UTARA', NULL, NULL, NULL, NULL, '$2y$10$uJ0IYFBVGUSRQz1lAet92egjacpgG9X3uqYC4CfvhYSy1SyJLpNDC'),
(60, 'HENDRA DWI SUJARYANTO', '3524212404820003', 'Lamongan', '1982-04-24', 'Laki-laki', 'Islam', '082275642256', NULL, 'Jl. Belda Gg. Rahayu Rt.18 Rw.02 Kel Belitung Utara Kec. Banjarmasin Barat', NULL, NULL, NULL, NULL, '$2y$10$lGO/81YhdwyKiMh.lrcVE.bc7Igkg7KGOcgqlvVbRfCjCy1zpFhKW'),
(61, 'IMAN TABRONI, S.HI', '3573052008900003', 'Barito Kuala', '1990-08-20', 'Laki-laki', 'Islam', '081254900404', NULL, 'Jl. Kuin Selatan Gg. Pusara 4 No.124 Rt.13 Rw.01 Kel. Kuin Selatan Kec. Banjarmasin Barat 70128', NULL, NULL, NULL, NULL, '$2y$10$1s.L3eQ/l7IQTql3Jk4Mi.JxnNsvddLbxhRtTsEfPaT9XcyycOixS'),
(62, 'SYAPRUDIN, H', '6371041007650004', 'RANTAU BAHUANG', '1965-07-10', 'Laki-laki', 'Islam', '085771160341', NULL, 'Jalan AMD No.4 Rt.24 Rw. 001', NULL, NULL, NULL, NULL, '$2y$10$ocmPurf6b/DhYJhkcoSViOJn5hfSY8tLe.gy7YFaEOqazkrFDkvfq'),
(63, 'MUHAMMAD RIZA FAHLEVI, SH, M.KN', '6371042103920004', 'Banjarmasin', '1992-03-21', 'Laki-laki', 'Islam', '08115582121', NULL, 'Komp. Kayu Tangi II Jalur II No.25 Rt.15 Rw.02 Banjarmasin 70116', NULL, NULL, NULL, NULL, '$2y$10$C7a8X1YMpXnWYphmEQ1nHeDSKi0oleUVfMngPEAMgAsx6kCa40RPS'),
(64, 'JAINAP, HJ', '6371046206670004', 'BANJARMASIN', '1967-08-22', 'Perempuan', 'Islam', '085249060992', NULL, 'JL. ALALAK TENGAH GG. SMA 8 RT.23 / 02 KEL.ALALAK TENGAH ', NULL, NULL, NULL, NULL, '$2y$10$SLQXSFwKMQRvPzsFEucG7.dIfx36ur4D/E4D6bBofeGLhYBBZ.xva'),
(65, 'H. GEMAN YUSUP, SH, MH', '6371031806560001', 'BANJARMASIN', '1956-06-18', 'Laki-laki', 'Islam', '0811514828', NULL, 'Jl. BRIGJEND KATAMSO 6E/38 RT.09 RW.02 KELURAHAN KERTAK BARU ILIR KECAMATAN BANJARMASIN UTARA', NULL, NULL, NULL, NULL, '$2y$10$ezOeYMEzZ9cxr9Is5slBl.GKpnYUXuKxjh.rUAMm5hXnE5hje2xWm'),
(66, 'HERNAWATI SABARUDIN HAMDI', '6371046209580005', 'Banjarmasin', '1958-09-22', 'Perempuan', 'Islam', '081258986702', NULL, 'JL. HKSN KOMP.AMD PERMAI BLOK B 16 NO.24 RT.24 RW. 001 KELURAHAN ALALAK SELATAN', NULL, NULL, NULL, NULL, '$2y$10$4lm2Et146lquaBp4qEZSj.f8xze5t.B06U8oBQoDqQAgtcSkDlBr.'),
(68, 'MUHAMMAD ARFANI', '6371042308920004', 'Banjarmasin', '1992-08-23', 'Laki-laki', 'Islam', '08179376689', NULL, 'Jl. Perdagangan Komp. Perdagangan Permai I/109 Rt.22 Rw.02 Banjarmasin 70124', NULL, NULL, NULL, NULL, '$2y$10$qypJumQG9Vh1KT2pWKUmfeHdtFtAf6QxuuhgOp5rG11Uo9nZk7tRm'),
(69, 'Drh.H.KHAIRIL FIANNOR ANSYARI', '6371031401680003', 'Kandangan', '1968-01-14', 'Laki-laki', 'Islam', '081282169353', NULL, 'JL.CENDERAWASIH II NO.7 RT.019 RW.002 KELURAHAN BELITUNG SELATAN', NULL, NULL, NULL, NULL, '$2y$10$98Lsn2o.1Ii/FKz1CLVJhOohQRkgSNXhFF6rJPflo4dUqcEWdFs5a'),
(70, 'DANIEL SETIAWAN', '6371040110900009', 'Banjarmasin', '1990-10-01', 'Laki-laki', 'katolik', '082154605785', NULL, 'Jl. H. Hasan Basri No.33 Rt.16 Rw.02 Banjarmasin 70124', NULL, NULL, NULL, NULL, '$2y$10$aPWHRcpCXUoJcvPh9bcJSeHlHXw8QhwBeLnQvdD8YBwpEfKp2GJlC'),
(71, 'SUTARMI', '6371045006700007', 'BARITO KUALA', '1970-06-10', 'Perempuan', 'Islam', '082252100652', NULL, 'JL. HKSN KOMP. HERLINA PERKASA BLOK.A NO.35 RT.012 RW.002 KELURAHAN ALALAK SELATAN', NULL, NULL, NULL, NULL, '$2y$10$foYeDjSeOC9qjVXm1W4FkuE2b.CzekP6ohrqu2pKqOFBfojitvW4u'),
(72, 'SESSI REWETTY RIVILLA', '6371027110570005', 'BANJARMASIN', '1957-10-31', 'Perempuan', 'Islam', '08125109273', NULL, 'Jl. PRAMUKA KOMP. DPRD NO.21 RT.19 RW.02 KELURAHAN SUNGAI LULUT KECAMATAN BANJARMASIN TIMUR', NULL, NULL, NULL, NULL, '$2y$10$dGA/4ikoWmgj5PDG0Py57utWHDvRNEKn8y2FtbOhxJL79mA2a0wL.'),
(73, 'ADE YULIA ANGGERAINI', '6301035107950005', 'PELAIHARI', '1995-07-11', 'Perempuan', 'Islam', '08979415161', NULL, 'JL. BALIREJO RT.17 A RW.006 KELURAHAN ANGSAU PELAIHARI', NULL, NULL, NULL, NULL, '$2y$10$YbnRBCRs9Mw5kIqG3CuVzO/5/CtrwBegcVI/.K6.mkdaIPJYzDlIa'),
(74, 'MAHARANI, HJ', '6371046212820007', 'KOTABARU', '1982-12-22', 'Perempuan', 'Islam', '081351570090', NULL, 'JL. SULTAN ADAM KOMP. SULTAN ADAM PERMAI BLOK.8/14 RT.028 RW.003 KELURAHAN SURGI MUFTI KECAMATAN BANJARMASIN UTARA', NULL, NULL, NULL, NULL, '$2y$10$0bBjlR6zUm5bs/4imxSj9O9XIiLaLOKxIl4qHj0UkXR30Tc5JOqoS'),
(75, 'RULIAN HAIRI, IR', '6371042511680002', 'TANJUNG', '1968-11-25', 'Laki-laki', 'Islam', '0', NULL, 'JL. AGATHIS II RT. 41 RW.01 KELURAHAN SUNGAI MIAI KECAMATAN BANJARMASIN UTARA', NULL, NULL, NULL, NULL, '$2y$10$ozPgvDwIWIUW0m3XvQnZS.z7UrJ5wCZzN.3k1MF6kY7I2bZtScAbi'),
(76, 'YASMIN', '6371022406580002', 'BLORA', '1958-06-24', 'Laki-laki', 'Islam', '0', NULL, 'JL. HKSN KOMP. AMD PERMAI BLOK. 8 D NO.212 RT.18 KELURAHAN ALALAK TENGAH KECAMATAN BANJARMASIN UTARA', NULL, NULL, NULL, NULL, '$2y$10$d9vI9QB.UIEf4iX0u/4VBOVGUdT2pEDnDxNHmGXGlZVUSJFlXUBGi'),
(77, 'NURINA HASYYATI MUJAHIDAH', '6371044904940009', 'BANJARMASIN', '1994-04-09', 'Perempuan', 'Islam', '0', NULL, 'JL. SULTAN ADAM KOMP PERKASA INDAH RT.21 RW.02 KELURAHAN SURGI MUFTI KECAMATAN BANJARMASIN UTARA', NULL, NULL, NULL, NULL, '$2y$10$px0EHfdg6c2sBdfsnEWf4uefcWJUjtL6BnNYuCE0YGO9.sg3Ub4bG'),
(78, 'FADHLI KAMIL', '6371041009540004', '-', '1954-09-10', 'Laki-laki', 'Islam', '0', NULL, 'JL. JAHRI SALEH NO.65 RT.19 RW.02 KELURAHAN SURGI MUFTI KECAMATAN BANJARMASIN UTARA', NULL, NULL, NULL, NULL, '$2y$10$Oyw7Dr.J4gGWCBYLnu7m5OUpZjbIHhMJg8vw3NNwbllZvVx3DedXu'),
(79, 'JAILANI', '6371040102930009', 'BANJARMASIN', '1993-02-01', 'Laki-laki', 'Islam', '081545440736', NULL, 'JL. KARANG ANYAR 3 NO.9 RT.02 RW.01 KELURAHAN CINDAI ALUS KECAMATAN MARTAPURA ', NULL, NULL, NULL, NULL, '$2y$10$tQX6Dm/hRUZqtjVWSzftJ.sAP0qtfDtEOsfDblVOsGAP0RpoJnN42'),
(80, 'ELLY HERLINA AGUSTINI, S.Pd', '6371044808660005', 'KUNINGAN', '1966-08-08', 'Perempuan', 'Islam', '085249499992', NULL, 'JL. HKSN KOMP. DASAMAYA II BLOK. F NO.66 RT.19 RW.02 KELURAHAN ALALAK SELATAN KECAMATAN BANJARMASIN UTARA', NULL, NULL, NULL, NULL, '$2y$10$wzP2r4gtzvzyalhRXqE64OVRXkbYfV//iqsP0r6nTUbPvPrQEcvFq'),
(81, 'RAHMAH', '6371047006720004', 'BANJARMASIN', '1972-06-30', 'Perempuan', 'Islam', '0', NULL, 'JL. SUNGAI MIAI DALAM RT.12 RW.02 KELURAHAN SUNGAI MIAI KECAMATAN BANJARMASIN UTARA', NULL, NULL, NULL, NULL, '$2y$10$V298w2vuWXCZ7BhuKITLMOxDXR7H2t.5xwW.vMl7UeJ0mRXY9z7hC'),
(82, 'JAHRANI', '6371042007720002', 'BANJARMASIN', '1972-07-20', 'Laki-laki', 'Islam', '0', NULL, 'JL. ANTASAN KECIL TIMUR  NO.16 RT.07 RW.01 KELURAHAN ANTASAN KECIL TIMUR KECAMATAN BANJARMASIN UTARA', NULL, NULL, NULL, NULL, '$2y$10$Tx62HRPpXcp2SQB.HodaU.Aib2WicWeuGq/i17d3OhPS5NS.Yw59G'),
(83, 'H. GUSTI SOFYARRAHMAN FUADI', '6371040408670008', 'BANJARMASIN', '1967-08-04', 'Laki-laki', 'Islam', '0', NULL, 'JL. SULTAN ADAM KOMP. MANDIRI LESTARI BLOK. B.I NO.13 RT.32 RW.03 KELURAHAN SURGI MUFTI KECAMATAN BANJARMASIN UTARA', NULL, NULL, NULL, NULL, '$2y$10$hEUwv204xdCzPMTIr3Y5UuZcCnH0wCiuIcZDDa9gUEBEX8J8c6632'),
(84, 'ADDINNA WIEDIANI AISYA', '6371015411960007', 'BANJARMASIN', '1996-11-14', 'Perempuan', 'Islam', '081347025965', NULL, 'JL. SIMPANG GUSTI I NO.14 RT.34 RW.03 KELURAHAN ALALAK UTARA KECAMATAN BANJARMAISN UTARA', NULL, NULL, NULL, NULL, '$2y$10$6UQhLlYuZZ5ZoC7IUr3bzekQ889aVb/Ikn2OLGgDqO5u1N6CXB3pi'),
(85, 'YUDI', '6371041902850005', 'BANJARMASIN', '1985-02-19', 'Laki-laki', 'Islam', '0', NULL, 'JL. SUNGAI MIAI LUAR NO.45 RT.04 RW.01 KELURAHAN SUNGAI MIAI KECAMATAN BANJARMASIN UTARA', NULL, NULL, NULL, NULL, '$2y$10$FzJ.mXQ4Ffg6kQCJ7MYxou/AW5Vykzgh5XrTx9Plo34SkGYab16i.'),
(86, 'HJ. SITI HABIBAH', '6371055009710010', 'BANJARMASIN', '1970-09-10', 'Perempuan', 'Islam', '081256687864', NULL, 'JL. ANTASAN KECIL BARAT NO.61 RT.11 RW.01 KELURAHAN PASAR LAMA KECAMATAN BANJARMASIN TENGAH', NULL, NULL, NULL, NULL, '$2y$10$Rfn8xTFK6yqYMkZZQck8Y.LNYNA8V2l1D7VTPgp3lCVHhq1zsQ/RW'),
(87, 'NINA YUNITA', '6371046706880005', 'BANJARMASIN', '1988-06-27', 'Perempuan', 'Islam', '081952778816', NULL, 'JL. ADHYAKSA NO.21 RT.27 RW.03 KELURAHAN SUNGAI MIAI KECAMATAN BANJARMASIN UTARA', NULL, NULL, NULL, NULL, '$2y$10$OXFcOD2pCF6RkuaGLDTPzuPmdE9HY0WDN6wGc3HTvjSvUn4eIg2cO'),
(88, 'DESILESTIA DWI SALMARINI, SST, M.KES', '630165212890005', 'BARABAI', '1989-12-12', 'Perempuan', 'Islam', '082153003399', NULL, 'JL. GERILYA KOMP. GRAHA MAHATAMA BLOK. III NO.21 RT.24 RW.02 KELURAHAN TANJUNG PAGAR', NULL, NULL, NULL, NULL, '$2y$10$lsBNvIQXxmAh2E3csYEyGuvZOgd2cOaxdtbrc7TZS9Dc5ejgj6LV.'),
(89, 'NURZENAH', '6371045609750003', 'BANJARMASIN', '1975-09-16', 'Perempuan', 'Islam', '085345161768', NULL, 'JL. RAYA PERDAGANGAN RT.24 RW.02 KELURAHAN KUIN UTARA KECAMATAN BANJARMASIN UTARA', NULL, NULL, NULL, NULL, '$2y$10$P5SUJm2lBi/03FywNReFnO.ZZXVq0GvNXarO7layMUw2yHPvESSX.'),
(90, 'MAIRADI', '6371040506720010	', 'BANJARMASIN', '1985-02-19', 'Laki-laki', 'Islam', '0', NULL, 'JL. MERPATI NO.08 RT.24 KELURAHAN SEMANGAT DALAM', NULL, NULL, NULL, NULL, '$2y$10$AFiacJDvB7PVT0ji1RKPz.BxDVQEy8Nb4q559wHsl5gI3qeg/B94m'),
(91, 'MUHAMMAD RAFI', '6371030811010004', 'BANJARMASIN', '2001-11-08', 'Laki-laki', 'Islam', '082152226103', NULL, 'JL.KUIN SELATAN NO.58 RT/RW 001/001KUIN CERUCUK ', NULL, NULL, NULL, NULL, '$2y$10$5JOrXlqnICKljmakqlXgROtc8pgWBlQJScACrJEUd3Xhav38k/Vo6'),
(92, 'ABDULLAH AHMAD', '6371040807530006', 'NEGARA', '1953-07-08', 'Laki-laki', 'Islam', '081248351819', NULL, 'JL. FLAMBOYAN III NO.89A RT.42 RW.01 KELURAHAN SUNGAI MIAI KECAMATAN BANJARMASIN UTARA', NULL, NULL, NULL, NULL, '$2y$10$2Rz57Rw3WktdlwIuN025Vuoy7Eh.pwGPfKa9UIqFOO9ICaN1Na61e'),
(93, 'HJ. KUSMA HANIAH', '6371045012720008', 'BLITAR', '1972-12-10', 'Perempuan', 'Islam', '0', NULL, 'JL. SULTAN ADAM RUKO II NO.1 RT.31 RW.03 KELURAHAN SURGI MUFTI KECAMATAN BANJARMASIN UTARA', NULL, NULL, NULL, NULL, '$2y$10$8lTDbrJMAeiWzRfQyMrB9elTzxLx74NyKPitrflPvWj80UEpUgx3C'),
(94, 'AKHMAD FAISAL RIZANI', '6371030304730013', 'BANJARMASIN', '1973-04-03', 'Laki-laki', 'Islam', '08170757000', NULL, 'KOMP. PERDAGANGAN PERMAI II KAV.III RT.22 RW.02 KELURAHAN PANGERAN KECAMATAN BANJARMASIN UTARA', NULL, NULL, NULL, NULL, '$2y$10$T0bNCI.KAjzjwB9fSnwj8eb2ExkJerz.Q.XA3Ux.Y55rCgzLrrRr6'),
(95, 'dr. H. ACHMAD DAMIRI', '6371012111650001', 'BANJARMASIN', '1965-11-21', 'Laki-laki', 'Islam', '0', NULL, 'JL. BRIGJEN H. HASAN BASRI NO.36 RT.01 KAYUTANGI KELURAHAN SUNGAI MIAI KECAMATAN BANJARMASIN UTARA', NULL, NULL, NULL, NULL, '$2y$10$j0hd/KNlE8PZsnXjdOqouu3GXh527/G38PftU9dTbHSrWVAZnGhYS'),
(96, 'H. MUSTHAFA', '6371040309670003', 'BANJARMASIN', '1967-09-03', 'Laki-laki', 'Islam', '0', NULL, 'JL. ANTASAN KECIL TIMUR NO.41 RT.09 RW.01 KELURAHAN ANTASAN KECIL TIMUR KECAMATAN BANJARMAISN UTARA', NULL, NULL, NULL, NULL, '$2y$10$ISOAfJXgHbWotGwJ7MzE8.9PZ4hks8Pn0jCu6hGXH4l6Mj9pVW9pC'),
(97, 'ARBAINAH', '6371026408660005', 'BANJARMASIN', '1966-08-24', 'Perempuan', 'Islam', '081253468885', NULL, 'JL. SIMPANG GUSTI IV GG.AMALIAH RT.34 RW.03 KELURAHAN ALALAK UTARA KECAMATAN BANJARMASIN UTARA', NULL, NULL, NULL, NULL, '$2y$10$3PO89ulhXgYg9StYX.f0U.Bl.191hibqQIOK6TRI5KP6t.TyXQN3a'),
(98, 'ANA NOPIANA NOOR RAHMAH, S.KOM', '6371057011880002', 'BANJARMASIN', '1988-11-30', 'Perempuan', 'Islam', '089691851818', NULL, 'JL. SIMPANG BALI I NO.35 RT.08 RW.01 KELURAHAN ANTASAN BESAR KECAMATAN BANJARMASIN TENGAH', NULL, NULL, NULL, NULL, '$2y$10$cQVGWo3ngP1.SuQZwpDZv.W/mzf0dKDVhj9oY1ZF82vRtE3s8rI.m'),
(99, 'WINA HARYANTI', '6371046911930003', 'BANJARMASIN', '1993-11-29', 'Perempuan', 'Islam', '0', NULL, 'JL. SULTAN ADAM KOMPLEK MAHLIGAI BLOK.C NO.13 RT.12 RW.02 KELURAHAN SUNGAI JINGAH KECAMATAN BANJARMASIN UTARA', NULL, NULL, NULL, NULL, '$2y$10$1JU81sA0jBMZUCKvmf5q.eNPSRBj8mVGy7RzNMNQhnNV4xTvsYoVe'),
(100, 'H. HUSEIN ACHMAD', '6371050508550007', 'HULU SUNGAI SELATAN', '1955-08-05', 'Laki-laki', 'Islam', '0', NULL, 'JL. TEMBUS MUSEUM NO.36 RT.13 RW.02 KELURAHAN SUNGAI JINGAH KECAMATAN BANJARMASIN UTARA', NULL, NULL, NULL, NULL, '$2y$10$Xr9jO8ubyz1.SL6tv2LxyOQN5OvwjPtx/8qIlM7cmV9Lt7OUFNxjO'),
(101, 'N. WARNIDAH', '6371044506670007', 'BANJARMASIN', '1967-06-05', 'Perempuan', 'Islam', '0', NULL, 'JL. AGATHIS II NO.35 B RT.41 RW. 03 KELURAHAN SUNGAI MIAI KECAMATAN BANJARMASIN UTARA', NULL, NULL, NULL, NULL, '$2y$10$LvRO20GZjbAVOmbGoe8FGOzQCbFuwD1k413F07JOLUpie2SnAG2MC'),
(102, 'RIANDHI FIRDAUS, A.Md', '6371012510950009', 'BANJARMASIN', '1995-10-25', 'Laki-laki', 'Islam', '082127543045', NULL, 'JL.PRONA I KOMP. BUMI BANGUNAN JAYA/41A RT.10 RW. 01 KELURAHAN PEMURUS BARU KECAMATAN BANJARMASIN UTARA', NULL, NULL, NULL, NULL, '$2y$10$jWzbjBn5SCCEy3ykYQQ0iuQkax8QdXJXLNSssBHQRJ8f64Nectj.S'),
(103, 'ARJUNADI', '637104010750015', 'BANJARMASIN', '1975-10-10', 'Laki-laki', 'Islam', '0', NULL, 'JL. ALALAK TENGAH NO.11 RT.09 RW.02 KELURAHAN ALALAK TENGAH KECAMATAN BANJARMASIN UTARA', NULL, NULL, NULL, NULL, '$2y$10$.SQ.FYzT9XWxmR/vAfSfOOz.YGf1zYJ6MyjpA0yAkqo0e1reCd7a2'),
(104, 'H. YUSRAN', '6371041710640003', 'BANJARMASIN', '1964-10-17', 'Laki-laki', 'Islam', '0', NULL, 'JL.  ALALAK TENGAH NO. 49 R.08 RW.02 KELURAHAN ALALAK TENGAH KECAMATAN BANJARMASIN ', NULL, NULL, NULL, NULL, '$2y$10$7wmVBN2vZO0RYbQ5ZmW4/uI0qruJa1eqHtiAD26xaoBZHhL7an3x2'),
(105, 'NORMARUSIDAH', '6371044501730004', 'MURUNG PUDAK', '1973-01-05', 'Perempuan', 'Islam', '0', NULL, 'JL. CEMARA RAYA AKASIA 2 NO.04 RT.37 KELURAHAN SUNGAI MIAI KECAMATAN BANJARMAISN UTARA', NULL, NULL, NULL, NULL, '$2y$10$kFipu8v7/Fd6g7LQDSHgSehR/LsIyztPgCupdeNGiYLsxfzj6SaCG'),
(106, 'MUHAMMAD FAUZIANNOOR', '6371040312920004', 'BANJARMASIN', '1992-01-03', 'Laki-laki', 'Islam', '085654789545', NULL, 'JL. CENGKEH II KOMP. HERLINA PERKASA NO.48 RT.69 KELURAHAN SUNGAI ANDAI KECAMATAN BANJARMASIN UTARA', NULL, NULL, NULL, NULL, '$2y$10$5HNzB.DgeEOGVM0FX88mXO2c.5HeEVGyrumxnCVYYJEkh3QM4osDe'),
(107, 'FITRI RAHMADANI', '6371015003940023', 'BANJARMASIN', '1994-03-10', 'Perempuan', 'Islam', '0', NULL, 'JL. K.S. TUBUN GG. IV / KELUARGA NO.19 RT.20 RW.02 KELURAHAN KELAYAN BARAT KECAMATAN BANJARMASIN SELATAN', NULL, NULL, NULL, NULL, '$2y$10$ZE7CtobVyaWpNOjyVJ2wluISIziQbbxnI5.GQsoNiHrLml.eh0oBK'),
(108, 'MUHAMMAD KAMIL', '6371041105750006', 'TUMBANG SAMBA', '1975-05-11', 'Laki-laki', 'Kristen', '0811510000', NULL, 'JL. SULTAN ADAM KOMP. ANDIKA NO.07 RT.15 RW.03 KELURAHAN SUNGAI MIAI KECAMATAN BANJARMASIN UTARA', NULL, NULL, NULL, NULL, '$2y$10$eyV5Ex2jUAVEvIq/u8qYuOmOWMxvuXJOLfqX/Frwosq7CK62VlNqa'),
(109, 'HJ. JUHRIAH', '6371046810650005', 'BANJARMASIN', '1965-10-28', 'Perempuan', 'Islam', '081351094200', NULL, 'JL. H.HASAN BASRI KOMP. PONDOK METRO INDAH B13 RT.39 RW.03 KELURAHAN ALALAK UTARA KECAMATAN BANJARMASIN UTARA', NULL, NULL, NULL, NULL, '$2y$10$fVhfzorQg7p1AIyMYcYuHerMuyBNPWFOLT7hjjCI8ehjF6mED0GQK'),
(110, 'NUR INAYAH', '6371046203950005', 'BANJARMASIN', '1995-03-22', 'Perempuan', 'Islam', '0', NULL, 'JL. ALALAK SELATAN RT.08 RW.01 KELURAHAN ALALAK SELATAN KECAMATAN BANJARMAISN UTARA', NULL, NULL, NULL, NULL, '$2y$10$Gw73r9eI/OjRiQVc.s74SeLSEbmkQZnWqZ4KtTwS2spAN/nvn4iZe'),
(111, 'ABDUL WAHID, S.KOM', '6371040610850001', 'KUALA KAPUAS', '1985-10-06', 'Laki-laki', 'Islam', '0', NULL, 'JL. HKSN KOMP. AMD PERMAI BLOK.B10 NO.257 RT.22 RW.02 KELURAHAN ALALAK UTARA KECAMATAN BANJARMASIN UTARA', NULL, NULL, NULL, NULL, '$2y$10$Zt/GzsMj0f1CHbL5fbIWNeBTfBuqpdq5lxndfYINOqei06oYdrTpG'),
(112, 'EUIS AULIA, S.KOM', '6371047004870003', 'BANJARMASIN', '1987-04-30', 'Perempuan', 'Islam', '0', NULL, 'JL. HKSN KOMP. AMD PERMAI BLOK B.10 NO.257 RT.22 RW.02 KELUAHAN ALALAK UTARA KECAMATAN BANJARMASIN UTARA', NULL, NULL, NULL, NULL, '$2y$10$0cluuoXeOmGbUodLb.4fbuBQu7VnevsZXeUXA5.ouEULHE9E0kBQO'),
(113, 'NUGROHO RUSLI', '6371051106740003', 'BANJARMASIN', '1974-06-11', 'Laki-laki', 'Islam', '082154601666', NULL, 'JL. VETERAN NO.20 RT.11 RW.02 KELURAHAN MELAYU KECAMATAN BANJARMASIN TENGAH', NULL, NULL, NULL, NULL, '$2y$10$MOSGAO2qIF4l0cI/M3JIK.z5FKPmzvQcQn18CWiiFhQP9p0vsrDie'),
(114, 'SITI MUGARI', '6371025304760003', 'BANJARMASIN', '1976-04-13', 'Perempuan', 'Islam', '081349339879', NULL, 'JL. SIMPANG GUSTI KOMP. MUTIARA EKSEKUTIF RT.32 RW.03 KELURAHAN ALALAK UTARA KECAMATAN BANJARMASIN UTARA', NULL, NULL, NULL, NULL, '$2y$10$BPWaRck2kq35jX420smX0eAZvWHgNU7C9fcDEjxbQLtr6YhARmUCu'),
(115, 'MARKANI. H', '6371031010650011', 'SUNGAI TABUK', '1965-10-10', 'Perempuan', 'Islam', '0', NULL, 'JL. KUIN SELATAN GG. INDRAJAYA RT.05 RW.01 KELURAHAN KUIN CERUCUK KECAMATAN BANJARMASIN BARAT', NULL, NULL, NULL, NULL, '$2y$10$nq5c.aaDcSFRo.IPCPtJV.HzNrciuP.qJTwFgwU/Rqz2s0rBMsV92'),
(116, 'Agustinus Hermawan Wijayanto', '6371040708820012', 'Boyolali', '1982-08-07', 'Laki-laki', 'katolik', '081348576850', NULL, 'Jl. HKSN Komplek AMD Permai Blok 10 A 1 no 33', NULL, NULL, NULL, NULL, '$2y$10$8wmxWhGnVolb9lLeGGhjLOgDloXrcz0bfWHa4AQYhmcIHAmgSg.U6'),
(117, 'Ernani', '6371044701730007', 'Banjarmasin', '1973-01-07', 'Perempuan', 'Islam', '081228362279', NULL, 'Jl. Sultan Adam Komplek Mandiri Lestari blok b2 No.03  RT.32 RW.003, Kelurahan Surgi Mufti', NULL, NULL, NULL, NULL, '$2y$10$ZCTxfPEKc9SwgKMi3d3BsugY.jgIIX2.vxreD09wBhScyehluVJl2'),
(118, 'AKHMAD RIADI, SE', '3214010506780011', 'BANJARMASIN', '1978-06-05', 'Laki-laki', 'Islam', '0', NULL, 'JL. SULAWESI NO.52 RT.16 RW.02 KELURAHAN PASAR LAMA KECAMATAN BANJARMASIN TENGAH', NULL, NULL, NULL, NULL, '$2y$10$VVZ2xkzELFAQvqAftpvtG.yOxvAHv5YnZQx5hcLietleaqkx0fxMy'),
(119, 'DAHNIAR ARIANI, HJ', '6371046503630001', 'BANJARMASIN', '1963-03-25', 'Perempuan', 'Islam', '0', NULL, 'JL. JAHRI SALEH RT.19 KELURAHAN SURGI MUFTI KECAMATAN BANJARMASIN UTARA', NULL, NULL, NULL, NULL, '$2y$10$W9UqXcD4XIczvmuJYr3k9ese.if8uThKqG7e6iQWIVsgxFBRsz9aW'),
(120, 'IMAM RAMADHAN,  A.Md', '6371042803900004', 'BANJARMASIN', '1990-03-28', 'Laki-laki', 'Islam', '0', NULL, 'JL. ANTASAN KECIL TIMUR GG. JAMALUDIN 2 RT.05 RW.01 KELURAHAN ANTASAN KECIL TIMUR KECAMATAN BANJARMASIN UTARA', NULL, NULL, NULL, NULL, '$2y$10$rtC9MvHL1a1Fw7YLTfYlAu2QYfBDVzivNmlEEZZhgvN1j2CpSe5FK'),
(121, 'FITRIA', '6371045003940005', 'BANJARMASIN', '1994-03-10', 'Perempuan', 'Islam', '088242659935', NULL, 'JL. SUNGAI ANDAI RT.02 RW.01 KELURAHAN SUNGAI ANDAI KECAMATAN BANJARMASIN UTARA', NULL, NULL, NULL, NULL, '$2y$10$LF0UVYkWrQ8wfA.1Yzty0uw.jbkDQln5DKwUBwOuEe7p1M0oe6j4y'),
(122, 'SIMUH', '6371041003890005', 'BANJARMASIN', '1989-03-10', 'Laki-laki', 'Islam', '085389284866', NULL, 'JL. ALALAK UTARA RT.13 RW.01 KELURAHAN ALALAK UTARA KECAMATAN BANJARMASIN UTARA', NULL, NULL, NULL, NULL, '$2y$10$pTkC3kmn/eVCUBQlMWdsE.xTBP6ZOkPpJ.wuYOuUavye6XVbavGmG'),
(123, 'WAHDAH', '6371044703920006', 'BANJARMASIN', '1992-03-07', 'Perempuan', 'Islam', '0813143324252', NULL, 'JL. ALALAK UTARA RT.13 RW.01 KELURAHAN ALALAK UTARA KECAMATAN BANJARMASIN UTARA', NULL, NULL, NULL, NULL, '$2y$10$GAO/hf8hNPW.1bC4iyxWKOqmHuL5OITRbtgvUoD4jmY3LkGKqu10e'),
(124, 'AMINAH', '6371045307860009', 'BANJARMASIN', '1986-07-13', 'Perempuan', 'Islam', '085250353066', NULL, 'JL. ALALAK UTARA RT. 03 RW.01 KELURAHAN ALALAK UTARA KECAMATAN BANJARMASIN UTARA', NULL, NULL, NULL, NULL, '$2y$10$jAo2XmJgdTgOzvEKfL98d.an1rNYx5xPdVrqXczpTy8NhOD4F97jS'),
(125, 'ADREA FEBRY HASDI', '6372050502800005', 'JAKARTA', '1980-02-05', 'Laki-laki', 'Islam', '085242711231', NULL, 'JL. MESJID NO. 29 RT.02 RW.01 KELURAHAN SURGI MUFTI KECAMATAN BANJARMASIN UTARA', NULL, NULL, NULL, NULL, '$2y$10$PWyYe9xVNpeHjSnGmM6Z4ODIrecgrbeEZYfdKMZ0Tt84EfT.iMidW'),
(126, 'AKHMAD WAHYUDI', '6371042601770010', 'KOTABARU', '1977-01-26', 'Laki-laki', 'Islam', '081349711407', NULL, 'JALAN PERDAGANGAN KOMPLEK HKSN PERMAI BLOK 10C / 73 RT. 29 RW. 02 KELURAHAN ALALAK UTARA KECAMATAN BANJARMASIN UTARA', NULL, NULL, NULL, NULL, '$2y$10$JVICnhftt3njSOht9go6qO6OgV3uY2spuK.8qTdNXglwiV3bq0wne'),
(127, 'SUKARJAN, H', '6371040712620006', 'BANJARMASIN', '1962-12-07', 'Laki-laki', 'Islam', '0', NULL, 'JL. SULTAN ADAM KOMP. MANDIRI LESTARI  BLOK B.3 NO.70 RT.32 RW.03 KELURAHAN SURGI MUFTI KECAMATAN BANJARMAISN UTARA', NULL, NULL, NULL, NULL, '$2y$10$NSP2Wp7wMpwqjwSUGw6squeKFUum4GihnBCaNgGU7/PH8rmj/UyLG'),
(128, 'RUSMIN NURYADIN', '6371042001810013', 'BANJARMASIN', '1981-01-20', 'Laki-laki', 'Islam', '085346568637', NULL, 'JL. FLAMBOYAN II RT.42 RW.01 KELURAHAN SUNGAI MIAI KECAMATAN BANJARMAISN UTARA', NULL, NULL, NULL, NULL, '$2y$10$8rUZfA33YKf.Lng9L9mDlOadXZJPrnR.yTDxEKXQntWKO9v.G13BW'),
(129, 'NUGRAHA KUSUMA', '6371050606870006', 'BANJARMASIN', '1987-06-06', 'Laki-laki', 'Islam', '08115000866', NULL, 'JL. PULAU LAUT RT.04 RW.01 KELURAHAN ANTASAN BESAR KECAMATAN BANJARMASIN TENGAH', NULL, NULL, NULL, NULL, '$2y$10$vMiWSK.PDdF0V1kOdnBpV.1b7bYYSBGHDMFzv5za7x5EzB12WBM9e'),
(130, 'DEDY PRIHANTORO, ST', '6371040104760005', 'BANJARMASIN', '1976-04-01', 'Laki-laki', 'Islam', '081251099569', NULL, 'JL. SUNGAI ANDAI KOMP. BUMI INDAH LESTARI II/26 RT.02 RW.01 KELURAHAN SUNGAI ANDAI KECAMATAN BANJARMASIN UTARA', NULL, NULL, NULL, NULL, '$2y$10$feBGDs3nFVt9ApIbVse0ke.szExVMiKWX86YaNS9bJKMg4hIbjRO6'),
(131, 'HAIRRULLAH', '6371042606950004', 'BANJARMASIN', '1995-06-28', 'Laki-laki', 'Islam', '0', NULL, 'JL. SULTAN ADAM KOMP. KADAR PERMAI IV NO.32 RT.16 RW.02 KELURAHAN SUNGAI MIAI KECAMATAN BANJARMASIN UTARA', NULL, NULL, NULL, NULL, '$2y$10$b1ghzmXVawxNK7Logoqq8eUUVFLaIes1V.fLrGq.fLULyPGk1oM.O'),
(132, 'HASBI ELKHAIRI, S.Pd', '6371041407890003', 'BANJARMASIN', '1989-07-14', 'Laki-laki', 'Islam', '0', NULL, 'JL. SULTAN ADAM KOMP. KADAR PERMAI IV NO.32 RT.16 RW.02 KELURAHAN SUNGAI MIAI KECAMATAN BANJARMASIN UTARA', NULL, NULL, NULL, NULL, '$2y$10$1YCyAYpcLrt40g3zX7NLeOetZEKz/ny0TaSwx/0ILM1UtcfN65rHW'),
(133, 'HUSAINI SUNI', '6303021707630004', 'ALABIO', '1963-07-17', 'Laki-laki', 'Islam', '085332534999', NULL, 'JL. A. YANI KM. 7.900 KOMP. ANGGRAINI NO.03 RT.03 RW.01 KELURAHAN MANARAP LAMA KECAMATAN KERTAK HANYAR', NULL, NULL, NULL, NULL, '$2y$10$fsmTWxsUiqdxLJ/AeqPJkO0Cn0Ki3BhJDHz0OmL/ltcbk8jGaZdE.'),
(134, 'YULIYANTI', '6371046307830010', 'BANJARMASIN', '1983-07-23', 'Perempuan', 'Islam', '085347623888', NULL, 'JL. ANGSANA RAYA NO.01 RT.24 RW.02 KELURAHAN SUNGAI MIAI KECAMATAN BANJARMASIN UTARA', NULL, NULL, NULL, NULL, '$2y$10$/Fe56clLz4JtaNbXWHT3nODKQhZRstXg7D7svc92UZt9c41MJW/ee'),
(135, 'FITRIA, S.Far, APT', '6371045204820003', 'BANJARMASIN', '1982-04-12', 'Perempuan', 'Islam', '081933755031', NULL, 'JL. CEMARA RAYA NO.22 KAYUTANGI RT.41 RW.03 KELURAHAN SUNGAI MIAI KECAMATAN BANJARMASIN UTARA', NULL, NULL, NULL, NULL, '$2y$10$MmZQDJLI4K8XY/bYgfi4MOzpfbvEbGTLol0xFm5N9UZBXr53MKuAa'),
(136, 'MAHLIANI, S.Pd', '6371010704700010', 'HULU SUNGAI UTARA', '1970-04-07', 'Laki-laki', 'Islam', '0', NULL, 'JL. NAKULA III NO. 14 RT.25 RW.03 KEURAHAN PEMURUS DALAM KECAMATAN BANJARMAISN SELATAN', NULL, NULL, NULL, NULL, '$2y$10$tNqwZBoWJa1Txl/L16.PJeYdqBSot89jzIBEckO.SEXyKYBqeIJPa'),
(137, 'MUHAMAD REZKY', '6371050509940001', 'BANJARMASIN', '1994-09-05', 'Laki-laki', 'Islam', '0', NULL, 'JL. KURIPAN GG.V RT.03 RW.01 KELURAHAN KURIPAN KECAMATAN BANJARMASIN TIMUR', NULL, NULL, NULL, NULL, '$2y$10$wf3eWHpFgHFbPVFKsmhXbOn9NNwn2Ddhi65jBSki9OXdDhyFPtTSy'),
(138, 'M. RIZKI ARIYANI', '6304071207950002', 'TANJUNG SELOR', '1995-07-12', 'Laki-laki', 'Islam', '0', NULL, 'JL. SUNGAI GAMPA ASAHI RT.11 KELURAHAN SUNGAI GAMPA ASAHI KECAMATAN BANJARMASIN RANTAU BADAUH', NULL, NULL, NULL, NULL, '$2y$10$W0eJ1wqCLOWGolkoUTzNju6bk2rKKikN7HZJk66egALMXyiH/7PD6'),
(139, 'GUSTI SUPRIADY RIZALI', '6371042606700004', 'MARTAPURA', '1970-06-26', 'Laki-laki', 'Islam', '085101339339', NULL, 'JL. SULTAN ADAM KOMP. H. IDRIS JALUR I NO.10 RT.13 RW.02 KELURAHAN SUNGAI MIAI KECAMATAN BANJARMASN UTARA', NULL, NULL, NULL, NULL, '$2y$10$Qm061SKLEXFlHLerx9WAju2iN1TcqPwyMyCjjv6KJHZo2bQ2q13w6'),
(140, 'HELNA YULIA RAHAYU, ST', '6371044607910011', 'BANJARMASIN', '1991-07-06', 'Perempuan', 'Islam', '082143159872', NULL, 'JL. KAYUTANGI II JALUR I NO.23A RT.16 RW.02 KELURAHAN PANGERAN KECAMATAN BANJARMASIN UTARA', NULL, NULL, NULL, NULL, '$2y$10$3o5LtmawX.chbNth5RZW/eyFfTnH0VL8i8FVBUFF2apERwrCa4mEO'),
(141, 'H. JAPAR', '6371041907590006', 'UJUNG PANDANG', '1959-07-19', 'Laki-laki', 'Islam', '0', NULL, 'JL. HKSN KOMP. AMD PERMAI BLOK.A 18 NO.349 RT.24 RW.02 KELURAHAN ALALAK UTARA KECAMATAN BANJARMASIN UTARA', NULL, NULL, NULL, NULL, '$2y$10$HeJPBek2Dr4JSJlwanhq8.BDIznbLzX0DB44S1eOI1M0VvDJcjOmS'),
(142, 'BUDI WIRATAMA', '6371020306910005', 'BANJARMASIN', '1991-06-03', 'Laki-laki', 'Kristen', '0', NULL, 'JL. PRAMUKA NO.52 RT.12 RW.02 KELURAHAN PENGAMBANGAN KECAMATAN BANJARMASIN TIMUR', NULL, NULL, NULL, NULL, '$2y$10$LJ8Nre8WnTCzORghQZHoc.jYQANnPNNYfb0O5clNAvsWZVYPBCk4u'),
(143, 'ROSMILAWATY', '6371044701630008', 'BANJARMASIN', '1963-01-07', 'Perempuan', 'Islam', '081343494201', NULL, 'JL. SUNGAI MIAI DALAM NO.13 RT.05 RW.01 KELURAHAN SUNGAI MIAI KECAMATAN BANJARMASIN UTARA', NULL, NULL, NULL, NULL, '$2y$10$s2zO.skYkZO01hXfX6sX7eUQjv/Ry5Xpqtrg902k4Cn.RX/gn068i'),
(144, 'HADIJATUL MUKARRAMAH, HJ', '6371054409530003', 'BANJARMASIN', '1953-09-04', 'Perempuan', 'Islam', '085251617533', NULL, 'JL. SULAWESI NO.15 B RT.20 RW.01 KELURAHAN PASAR LAMA KECAMATAN BANJARMASIN TENGAH', NULL, NULL, NULL, NULL, '$2y$10$/N.mNrr.2C5sq2zyxJx.6eHOEQbODFxIB4MApE/iOnyUGRAKfHW.S'),
(145, 'SAID ALI, SE', '6371041712610002', 'KUMAI', '1961-12-17', 'Laki-laki', 'Islam', '0', NULL, 'JL. MESJID JAMI NO.38 RT.01 RW.01 KELURAHAN SURGI MUFTI KECAMATAN BANJARMASIN UTARA', NULL, NULL, NULL, NULL, '$2y$10$Cm9FzapcwUdoHJy0PjoKdutpXTav6GEuM1srMb1V7tfeCUK1xKXHW'),
(146, 'HJ. HERLINA AHMAD', '6371045804780006', 'AMUNTAI', '1978-01-18', 'Perempuan', 'Islam', '0', NULL, 'JL. KARYA SABUMI II NO.11A RT.17 RW.02 KELURAHAN PANGERAN KECAMATAN BANJARMASIN UTARA', NULL, NULL, NULL, NULL, '$2y$10$20BsyOR/NQSyBA/F9gkDC.HZJ57gYZLuCMHZUHkKZ7TkHi60/Mi06'),
(147, 'IRADAH HIDAYANI', '6371035501850015', 'BANJARMASIN', '1985-01-15', 'Perempuan', 'Islam', '085346568637', NULL, 'JL. YOS SUDARSO KOMP. AIRMANTAN GG.66 RT.32 RW.03 KELURAHAN TELAGA BIRU KECAMATAN BANJARMASIN BARAT', NULL, NULL, NULL, NULL, '$2y$10$238KZCSitpRzxxw1f3jA2eekoSjTlghtl0J5YHt1gMnpGNcTGd9sC'),
(148, 'IBERAHIM', '637102812590005', 'BANJARMASIN', '1959-12-28', 'Laki-laki', 'Islam', '0', NULL, 'JL. KUIN UTARA NO.115 RT.07 RW.01 KELURAHAN KUIN UTARA KECAMATAN BANJARMASIN UTARA', NULL, NULL, NULL, NULL, '$2y$10$Cw0Jw1YOO86btYSPAclj5eU4JIuOb.VjddWLHMQ/WPH9wq4o2eKxm'),
(149, 'NURIFANSYAH HASBI', '6371020510730008', 'BANJARMASIN', '1973-10-05', 'Laki-laki', 'Islam', '081346632013', NULL, 'JL. 9 NOPEMBER RT.10 RW.01 KELURAHAN BENUA ANYAR KECAMATAN BANJARMASIN TIMUR', NULL, NULL, NULL, NULL, '$2y$10$AAU6TaS.Q48E7Xfeo9ZDM./rspMyBRnP4TyGu09UeQMWYMsbgYTge'),
(150, 'SRI WULANDARI, SH. MH', '6205054202790005', 'PALANGKARAYA', '1979-02-02', 'Perempuan', 'Islam', '08125071358', NULL, 'JL. JAMRUD I KOMP GRIYA PERMATA RT.11 RW.03 KELURAHAN HANDIL BAKTI KECAMATAN ALALAK KABUPATEN BARITO KUALA', NULL, NULL, NULL, NULL, '$2y$10$1/5PAl7OkSOQRid2cX/zveR9HepsxLhLi8hauuIbOcB.A2FfqIbZ2'),
(151, 'MUSLIK SULAKSONO, SE', '6371042509790004', 'RANTAU', '1979-09-25', 'Laki-laki', 'Islam', '081349378910', NULL, 'JL. HKSN KOMP. SURYA GEMILANG BLOK P RT.21 RW.02 KELURAHAN KUIN UTARA KECAMATAN BANJARMASIN UTARA', NULL, NULL, NULL, NULL, '$2y$10$4mZkTl0hjU/LbexCEEuxD.THsedJ7pF24zHY2.t3ECInNcLups/C2'),
(152, 'AGUS SUPRIADI', '6371041708760020', 'TULUNG AGUNG', '1976-08-17', 'Laki-laki', 'Islam', '0', NULL, 'JL. CEMARA UJUNG KAYUTANGI RT.46 RW.03 KELURAHAN ALALAK UTARA KECAMATAN BANJARMASIN UTARA', NULL, NULL, NULL, NULL, '$2y$10$SRCkK11JVnApfq2sePoSe.4LBVKCY8tGs9BwUpNBsOT/9Dzel7cxe'),
(153, 'ABDUL AZIZ FATRASUKMA WAAS', '6303023005870002', 'BANJARMASIN', '1987-05-30', 'Laki-laki', 'Islam', '081545423477', NULL, 'JL. MAHLIGAI KOMP. ISTANA AL FAZA NO.8C RT.06 RW.02 KELURAHAN KERTAK HANYAR II KECAMATAN KERTAK HANYAR', NULL, NULL, NULL, NULL, '$2y$10$RAzHMKw6tHaBxcehYv1A3Oxf2c3u6MZYyXdA.3EqmwN/Q/ZTwF6c2'),
(154, 'RIKA ANANDA', '6371045404940007', 'BANJARMASIN', '1995-04-14', 'Perempuan', 'Islam', '081251300988', NULL, 'JL. ALALAK UTARA NO.05 RT.16 KELURAHAN ALALAK UTARA KECAMATAN BANJARMASIN UTARA', NULL, NULL, NULL, NULL, '$2y$10$McNxPTkplqm1pWREBSEUC.bG9miFIHTbuE.yTCxY7jy/KRyPSQr0K'),
(155, 'ARMAYANI', '6371024905870014', 'BANJARMASIN', '1987-05-09', 'Perempuan', 'Islam', '081250884466', NULL, 'JL. PRAMUKA KOMP. MELATI INDAH VI NO.20 RT.10 RW.02 KELURAHAN PEMURUS LUAR KECAMATAN BANJARMASIN TIMUR', NULL, NULL, NULL, NULL, '$2y$10$3Dj5tPlpXf9cW0FgYZSIfuLfGqgrbZjXEXVauEri0xSC.8ejm0vvK'),
(156, 'Deddy Kurniawan', '6371050503920004', 'Banjarmasin', '1992-03-05', 'Laki-laki', 'Islam', '089601041114', NULL, 'Jl. Simp. Sei Mesa Rt.12 No.55, Kel. Seberang Mesjid, Kecamatan Banjarmasin Tengah Kota Banjarmasin', NULL, NULL, NULL, NULL, '$2y$10$Sy9pZg5nb5aacyF2o6szCe4kNqYpmuWuYnYRzyBTK4pJCnopdRoYi'),
(157, 'HJ. HAMDANAH', '6371045308670002', 'BANJARMASIN', '1967-08-13', 'Perempuan', 'Islam', '081251803535', NULL, 'JL. SULTAN ADAM KOMP. MAHLIGAI NO.37 RT.22 RW.02 KELURAHAN SURGI MUFTI KECAMATAN BANJARMASIN UTARA', NULL, NULL, NULL, NULL, '$2y$10$NOiVKc2VrRx02xdOi0S/aup6Pf0R5peAJNF2E0HiHvl2q/dE/7MTq'),
(158, 'M. RASYIDI', '6371040810590004', 'BANJARMASIN', '1959-10-08', 'Laki-laki', 'Islam', '0', NULL, 'JL. ALALAK TENGAH RT.12 RW.02 KELURAHAN ALALAK TENGAH KECAMATAN BANJARMASIN UTARA', NULL, NULL, NULL, NULL, '$2y$10$2w.XJh7O..BMHgdL1qENJeX0b6XkAB0gxDJYwtTHTxROO27TcOZ4C'),
(159, 'BASRAN', '6371041712570003', 'BANJARMASIN', '1957-12-17', 'Laki-laki', 'Islam', '0', NULL, 'JL. ALALAK SELATAN NO.226 RT.09 RW.1 KELURAHAN ALALAK SELATAN KECAMATAN BANJARMASIN UTARA', NULL, NULL, NULL, NULL, '$2y$10$t5epuxLeyxrtLNNHDchQkeFjHdChLJ/UTsVLKUXUijL0TKPQ73D12'),
(160, 'HARIS FADILAH', '6371042502750004', 'BANJARMASIN', '1975-02-25', 'Laki-laki', 'Islam', '0', NULL, 'JL. PERDAGANGAN PERMAI I NO.73 RT.22 RW.02 KELURAHAN PANGERAN KECAMATAN BANJARMASIN UTARA ', NULL, NULL, NULL, NULL, '$2y$10$b3T5FIYZn/8nPmJnCIGozegTgo3X48eQ3tFMo8StgLGB6zokZuKiC'),
(161, 'HERIAH', '6371046002890013', 'BANJARMASIN', '1989-02-20', 'Perempuan', 'Islam', '085100662398', NULL, 'JL. ALALAK SELATAN RT.02 RW.01 KELURAHAN ALALAK SELATAN KECAMATAN BANJARMASIN UTARA', NULL, NULL, NULL, NULL, '$2y$10$jyZG7OeZCq5owFlYfomclupvkIRT/koyfNBK/O/EyCo//2vxOy5OS'),
(162, 'SENTANA', '2171100101829016', 'SEI SELARI', '1982-01-01', 'Laki-laki', 'Islam', '085351366666', NULL, 'JL. TELUK TIRAM DARAT GG. PENDAMAI/TIRAM 22 NO.17 RT.10 RW.01 KELURAHAN TELAWANG KECAMATAN BANJARMASIN BARAT', NULL, NULL, NULL, NULL, '$2y$10$xAbcucS6nxzCwe3wrrv3fuNgx8BlI5gEWeFPvJrne0Xdt7YGcPmUu'),
(163, 'DRA. MASLIANI, M.PD', '6371044307620003', 'BANJARMASIN', '1962-07-03', 'Perempuan', 'Islam', '0', NULL, 'JL. BRIGJEN H. HASAN BASRIKOMP. SEKTOR JALUR III BANJAR UTARA RT.16 RW.01 KELURAHAN ALALAK UTARA KECAMATAN BANJARMASIN UTARA', NULL, NULL, NULL, NULL, '$2y$10$PeNPgzL4xUA3rjYT.pTyxO47oJE0xrgQYmNQ27KWiA3QCNa5dvuCa'),
(164, 'H. ZAINUDDIN JARNIE, SH', '6371041511660002', 'BANJARMASIN', '1966-11-15', 'Laki-laki', 'Islam', '0', NULL, 'JL. SULTAN ADAM KOMP. KADAR RAYA NO.50 RT.16 RW.02 KELURAHAN SUNGAI MIAI KECAMATAN BANJARMASIN UTARA', NULL, NULL, NULL, NULL, '$2y$10$kkfPqO/HMyh0679WCWRKIuxPf624Ic7ElF4gtCqSB685ydiJsRMme'),
(165, 'H. MUKSIN', '6371040406530002', 'BANJARMASIN', '1953-06-04', 'Laki-laki', 'Islam', '0', NULL, 'JL. ALALAK TENGAH NO.218 RT.09 RW.02 KELURAHAN ALALAK TENGAH KECAMATAN BANJARMASIN UTARA', NULL, NULL, NULL, NULL, '$2y$10$9Ol8vXmCLF2AheTdSbd.LuC8McJ8.U4e5C6fKj0ge1gEz3kyYE3wO'),
(166, 'SURIANSYAH', '6371043012920009', 'BANJARMASIN', '1992-12-30', 'Laki-laki', 'Islam', '081359612158', NULL, 'JL. ANTASAN KECIL TIMUR GG. SAKABADANA RT.11 RW.01 KELURAHAN ANTASAN KECIL TIMUR KECAMATAN BANJARMASIN UTARA', NULL, NULL, NULL, NULL, '$2y$10$6LQ2y83c.i/ofwDsXcxrC.7dxlBHeZyNP3URGY4vqBG91T4.6lHo.'),
(167, 'RAMLI', '6371041010680027', 'BANJARMASIN', '0968-10-10', 'Laki-laki', 'Islam', '0', NULL, 'JL. ALALAK TENGAH RT.01 RW.01 KELURAHAN ALALAK TENGAH KECAMATAN BANJARMASIN UTARA', NULL, NULL, NULL, NULL, '$2y$10$Bkptm2HOlNWAHmbZJNDKiukS6VDBycE.AI7QjB8Fiooz/sD9WJCKy'),
(168, 'DRS. H. DAHRI, MM', '6371041706420001', 'RANTAU', '1942-06-17', 'Laki-laki', 'Islam', '081253334529', NULL, 'JL. CENDANA  I NO.19 RT.01 RW.01 KELURAHAN SUNGAI MIAI KECAMATAN BANJARMASIN UTARA', NULL, NULL, NULL, NULL, '$2y$10$aXtJmKOFG8D1JaW4To6jC.mfGlsWT4Fs/dxA1OdEl1y2Qhamdd/P2'),
(169, 'DRS. H. FAISAL RIZANI SAID, M.Si', '6371012702690003', 'BANJARMASIN', '1969-02-27', 'Laki-laki', 'Islam', '0811500795', NULL, 'KOMP. KENCANA II NO.21 RT.03 RW.01 KELURAHAN PEMURUS BARU KECAMATAN BANJARMASIN SELATAN', NULL, NULL, NULL, NULL, '$2y$10$L/4JqwoTvxinY9bvpiZHK.EOwmJN3aOOyExl8seyPkOHtuoPy2lQm'),
(170, 'HJ. HALIMATUS SA DIAH', '6371044101730019', 'BANJARMASIN', '1973-01-01', 'Perempuan', 'Islam', '081348083646', NULL, 'JL. HKSN KOMP. HERLINA PERKASA BLOK A RT.12 RW.02 KELURAHAN ALALAK SELATAN KECAMATAN BANJARMASIN UTARA', NULL, NULL, NULL, NULL, '$2y$10$dW6plBDu/5LIwVGgyJg0h.w/XD8z2WtRfoXoaMa5VhK/WR28g4JS.'),
(171, 'MUHAMMAD FIKRI, SE, MM', '6371042104840012', 'BANJARMASIN', '1984-04-21', 'Laki-laki', 'Islam', '0', NULL, 'JL. HKSN KOMP. SURYA GEMILANG RT.18 RW.02 KELURAHAN KUIN UTARA KECAMATAN BANJARMASIN UTARA', NULL, NULL, NULL, NULL, '$2y$10$N5P4zep1/X5YMeOAzPeK2OAwVbZ6mFF1Q9EcenF7fDLBp4Dab6Eoi'),
(172, 'ASIH HANDAYANI', '6371045207760007', 'SUBANG', '1976-07-12', 'Perempuan', 'Islam', '081359858159', NULL, 'JL. MESJID JAMI GG. ADIL NO.48 RT.04 RW.02 KELURAHAN SURGI MUFTI KECAMATAN BANJARMASIN UTARA', NULL, NULL, NULL, NULL, '$2y$10$4fFInRXwCQZhOZLNzcu41.2RHdsr1I9jUzJVFPXcW4PT4jDEEt.2G'),
(173, 'HJ. SITI ROHANA, S.Pd, MA', '6371044506630006', 'TAPIN', '1963-06-05', 'Perempuan', 'Islam', '0', NULL, 'JL. SULTAN ADAM KOMP. PONDOK KELAPA III/73 RT.30 RW.02 KELURAHAN SUNGAI MIAI KECAMATAN BANJARMASIN UTARA', NULL, NULL, NULL, NULL, '$2y$10$ZeSyrKh6GduCnsrNTyI4RODo8EqyiMYhu5gdKZwQCbjtMKO7jfc7i'),
(174, 'RUKHAN, DRS, H. ', '6371041507610009', 'MALANG', '1961-07-15', 'Laki-laki', 'Islam', '0', NULL, 'JL. HASAN BASRI KOMP. SEKTOR BANJAR UTARA JALUR II RT.16 RW.01 KELURAHAN ALALAK UTARA KECAMATAN BANJARMASIN UTARA', NULL, NULL, NULL, NULL, '$2y$10$OsGaGh8x4PMiidhkkyWF3uPAPTvByLlceTeI/qMoYT6iGoTXMA8ey'),
(175, 'JUNAIDI', '6371011212740019', 'BANJARMASIN', '1974-12-12', 'Laki-laki', 'Islam', '085349502306', NULL, 'JL.  SEI PAHALAU RT.14 RW.02 KELURAHAN PEKAUMAN KECAMATAN BANJARMASIN SELATAN', NULL, NULL, NULL, NULL, '$2y$10$/mjZnuBu357F6S2ePv8kX.J65NNOBHZQTQUy0vEN6TkXJmJPcXhEm'),
(176, 'BAKTIANSYAH', '6371040806530009', 'Margasari', '1953-06-08', 'Laki-laki', 'Islam', '082154679030', NULL, 'Jl. Pangeran No.35/228A RT.05, Kel. Pangeran Banjarmasin Utara', NULL, NULL, NULL, NULL, '$2y$10$N6JX8vZL4QBl5GVl96dct.i5pbSwc4j8keqTwU.MkJh8xCKm/d8SS'),
(177, 'ASBI', '6371040101980010', 'BANJARMASIN', '1998-01-01', 'Laki-laki', 'Islam', '0', NULL, 'JL. JAHRI SALEH KOMP. PANDAN ARUM BLOK B JALUR I/45 RT.15 RW.01 KELURAHAN SURGI MUFTI KECAMATAN BANJARMASIN UTARA', NULL, NULL, NULL, NULL, '$2y$10$hRxgjSQxUnYwFVuJmabLkupMaxmQ0CcQipBQyEFp32amUCGYEje8m'),
(178, 'SLAMET HARIYONO', '6371031707730009', 'BLITAR', '1973-07-17', 'Laki-laki', 'Islam', '0', NULL, 'JL. AMD KOMP. SUDI RAPI D/3 RT.19 RW.02 KELURAHAN ALALAK UTARA KECAMATAN BANJARMAISN UTARA', NULL, NULL, NULL, NULL, '$2y$10$CEo.BrhUmQDgfaQB.f9qC.o/qt5gaPR0iaA4qTt6R3wYeCEZgLJSu'),
(179, 'NOR AHYANA', '6371054206720016', 'BANJARMASIN', '1972-06-02', 'Perempuan', 'Islam', '0', NULL, 'JL. SUTOYO S. KOMP. IMAM BONJOL RT.18 RW.02 KELURAHAN TELUK DALAM KECAMATAN BANJARMASIN TENGAH', NULL, NULL, NULL, NULL, '$2y$10$v711nsf7g8knzZ/0KemFjuXEoVr25llOG07lQr/wiE2txOECJRaAi'),
(180, 'SRI DAMAIYANTI', '6371046411800004', 'BANJARMASIN', '1979-05-02', 'Perempuan', 'Islam', '082139343213', NULL, 'JL. PADAT KARYA KOMP. PESONA PERMAI/13 RT. 21 RW.02 KELURAHAN SUNGAI ANDAI KECAMATAN BANJARMASIN UTARA', NULL, NULL, NULL, NULL, '$2y$10$LRtAIlCBKRH/QOm/boOniOxZgij5cbVjn4DI0y1FHHH792ig3K95C'),
(181, 'WILLIAM WANGSA WIJAYA', '6372021805950005', 'BANJARMASIN', '1995-05-18', 'Laki-laki', 'Islam', '082251096406', NULL, 'JL. TONHAR NO.24 RT.04 KELURAHAN SYAMSUDIN NOOR KECAMATAN LANDASAN ULIN BANJARBARU', NULL, NULL, NULL, NULL, '$2y$10$Wzyh9TpxTcXDVsgMNUX5ZeeNrrc6EgBdw5HQpH2XcLvwcyy5jb7Lm'),
(182, 'HJ. MAHRITA IMBRAN', '6371047007650003', 'BANJARMASIN', '1965-07-30', 'Perempuan', 'Islam', '08125003452', NULL, 'JL. SULTAN ADAM KOMP. SULTAN ADAM PERMAI NO.12 RT.28 RW.03 KELURAHAN SURGI MUFTI KECAMATAN BANJARMASIN UTARA', NULL, NULL, NULL, NULL, '$2y$10$H2lYLkOwJ5zRukqcu6FkNeDFIIBZbjf6/rPik820HSavHHTZhbMZu'),
(183, 'MUHAMMAD IQBAL', '6371040306840006', 'BANJARMASIN', '1984-06-03', 'Perempuan', 'Islam', '02159607099', NULL, 'JL. ANTASAN KECIL TIMUR DALAM RT.19 RW.02 KELURAHAN ANTASAN KECIL TIMUR KECAMATAN BANJARMASIN UTARA', NULL, NULL, NULL, NULL, '$2y$10$vJSIu0ohMQ/XWXcUWzTImuZjOnDI/cszoquvdalerwWbM6.mrOyVi'),
(184, 'Combet', '1122334455667788', 'Indonesia', '2002-03-27', 'Laki-laki', 'Islam', '081366763639', NULL, 'Jakarya', NULL, NULL, NULL, NULL, '$2y$10$KR/AEioT39K2PJoTeuUoNulwD3ixtrTiBfVr3UeISMBwqDngbpfzS'),
(185, 'FAUZAN MUTTAQIEN', '6371021805810017', 'AMUNTAI', '1981-05-19', 'Laki-laki', 'Islam', '081351111999', NULL, 'JL.HIKMAH  BANUA KOMP. THE ROYAL ALFATH NO.A6 RT.27 RW.02 KELURAHAN SUNGAI LULUT KECAMATAN BANJARMASIN TIMUR', NULL, NULL, NULL, NULL, '$2y$10$/e.IN2iiARGveta17NLw3OzyqF6CKNFsktoFGi6krAbSVilGwRDYq'),
(186, 'ZULKIFLIE', '637104030760006', 'BANJARMASIN', '1976-04-03', 'Laki-laki', 'Islam', '085252785269', NULL, 'JL. BRIGJEN H. HASAN BASRI RT.16 RW.01 KELURAHAN ALALAK UTARA KECAMATAN BANJARMASIN UTARA', NULL, NULL, NULL, NULL, '$2y$10$KTkoE3gr54F6oDB1IDoat.g/n7xAVAaEp0aeGyxq526ddpj0yE7Pe'),
(187, 'HAMDANAH', '6371036010570002', 'BANJARMASIN', '1957-10-20', 'Perempuan', 'Islam', '0', NULL, 'JL. BELITUNG LAUT NO.15 RT.03 RW.01 KELURAHAN BELITUNG SELATAN KECAMATAN BANJARMASIN BARAT', NULL, NULL, NULL, NULL, '$2y$10$EEYIM/3tD5iAy43pQOWfKOgx0qnQHfkUZQNk78/h1jcmBTRHnOitO'),
(188, 'H. M. LUTFI SAIFUDDIN', '3674042611710010', 'BANJARMASIN', '1971-11-26', 'Laki-laki', 'Islam', '0', NULL, 'JL. CAMAR PERUM CIPUTAT BARU NO.14 BLOK B RT.07 RW.08 KELURAHAN SAWAH KECAMATAN CIPUTAT', NULL, NULL, NULL, NULL, '$2y$10$1ZzIKkIDCpV3cZ04IEMQseclr3/EkPaHSg94HPSSXcowzvEz8vmGC'),
(189, 'HIKMAH, S.PD', '6371045305780006', 'BANJARMASIN', '1978-05-13', 'Perempuan', 'Islam', '0', NULL, 'JL. PADAT KARYA KOMP. PURNAMA PERMAI II BLOK E NO.122 RT.11 RW.01 KELURAHAN SUNGAI ANDAI KECAMATAN BANJARMASIN UTARA', NULL, NULL, NULL, NULL, '$2y$10$uGq5apY7fxfoG8USkCSSd.0j.EjJQQwtNIfhZogX30vFmb4CDhVbK'),
(190, 'SANTI, S.FIL.I', '6212015404800002', 'BANJARMASIN', '1980-04-14', 'Perempuan', 'Islam', '081250066583', NULL, 'JL. KUIN UTARA NO.30 RT.12 RW.01 KELURAHAN KUIN UTARA KECAMATAN BANJARMASIN UTARA', NULL, NULL, NULL, NULL, '$2y$10$H03cHOtSmETbJWhRGFTIeuCF8d9qI/MnkRu4Iha.Zf7D4O7CrKqL2'),
(191, 'RASIT', '6304051412850003', 'ANJIR KALAMPAIAN', '1985-12-14', 'Laki-laki', 'Islam', '082353683975', NULL, 'JL. TEMBUS HKSN RT.10 RW.01 KELURAHAN ALALAK UTARA KECAMATAN BANJARMASIN UTARA', NULL, NULL, NULL, NULL, '$2y$10$uBvoMjz6MfciSJHHWechAO4wajUAsF6nb3V8pafWNaiftevmn58qS'),
(192, 'DWI ARTINI', '6371046405880005', 'GUNUNG KIDUL', '1988-05-24', 'Perempuan', 'Islam', '08115197788', NULL, 'JL. KOMP. HERLINA PERKASA BLOK MUTIARA 6 NO.29 RT.59 RW.04 KELURAHAN SUNGAI ANDAI KECAMATAN BANJARMASIN UTARA', NULL, NULL, NULL, NULL, '$2y$10$XASfXivDNwdRwzugaE3y0umkGx09wsitu5qPlwi9kOL68uvf1vOU.'),
(193, 'ZAIDAN ANWARI, S.HUT', '6371031408710006', 'BANJARMASIN', '1971-08-14', 'Laki-laki', 'Islam', '0', NULL, 'JL. MESJID JAMI GG. ANGSOKA/72B RT.03 RW.02 KELURAHAN SURGI MUFTI KECAMATAN BANJARMASIN UTARA', NULL, NULL, NULL, NULL, '$2y$10$1IjhiVYa063vSjVTBJL3e.DLK7DADY2uUCo3Cx7MP9LQ8dOxhLSt.'),
(194, 'ZUHROTUL MUTI AH, S.Pd', '6371045705790009', 'NGANJUK', '1979-05-19', 'Perempuan', 'Islam', '0', NULL, 'JL. SUNGAI ANDAI KOMP. HIDAYAH BLOK V NO.39 RT.41 RW.02 KELURAHAN SUNGAI ANDAI KECAMATAN BANJARMASIN UTARA', NULL, NULL, NULL, NULL, '$2y$10$HRDpLmntkp3LdiHufGQNBO2RCkHRWOmhtT1pQHnNaZyJXOuvJwyme'),
(195, 'JAMALUDDIN', '6371052804620003', 'Hulu Sungai Selatan', '1962-04-18', 'Laki-laki', 'Islam', '08125006662', NULL, 'JL. PERDAGANGAN KOMP. HKSN PERMAI BLOK 3A RT.26 RW.02 KELURAHAN ALALAK UTARA KECAMATAN BANJARMASIN UTARA', NULL, NULL, NULL, NULL, '$2y$10$vQ.pl3biXPiSiFOdSX0E/.743f25AdIkQ73OraChw5EzIkXJ7qSqS'),
(196, 'DADI RAHMAN HIDAYAT', '3211080110820088', 'SUMEDANG', '1982-10-01', 'Laki-laki', 'Islam', '082210406306', NULL, 'JL. DUSUN SIDARAJA RT.25 RW.06 KELURAHAN PADANAAN KECAMATAN PASEH KABUPATEN SUMEDANG ', NULL, NULL, NULL, NULL, '$2y$10$L9KvCl3xpERo8Ob5bEWK2e6pBDqRwIIX6cbCG71T8dyGKz5c00LqO'),
(197, 'WAHIDAH', '6371044708690013', 'BANJARMASIN', '1969-08-07', 'Perempuan', 'Islam', '081258405119', NULL, 'JL. KUIN UTARA NO.23 RT.05 RW.01 GG. SENINI KELURAHAN KUIN UTARA KECAMATAN BANJARMASIN UTARA', NULL, NULL, NULL, NULL, '$2y$10$mZHjDZtJdHMFebFpEAH9X.UYwf8JwnNESdRb.DnFH1xDtEcglkTS6'),
(198, 'DRA. HJ. AMINAH, MM', '6371055605470002', 'BANJARMASIN', '1947-05-16', 'Perempuan', 'Islam', '085332263255', NULL, 'JL. HARYONO MT NO.34 RT.05 RW.01 KELURAHAN KERTAK BARU ILIR KECAMATAN BANJARMASIN TENGAH', NULL, NULL, NULL, NULL, '$2y$10$A2D2hdixDU793o2/0DHsFeDpNMv0a/69ktwLokrYgfNF5CNfenVsK'),
(199, 'SUFIAH, SH', '3578236310670002', 'SURABAYA', '1967-10-23', 'Perempuan', 'Islam', '081216110526', NULL, 'JL. HKSN KOMP. AMD PERMAI BLOK E3/44 RT.19 RW.02 KELURAHAN ALALAK TENGAH KECAMATAN BANJARMASIN UTARA', NULL, NULL, NULL, NULL, '$2y$10$61WpjZpX14n8.T0VyjH2aOqfxjWFOrpSQt5.RYs/6Le0N4.oGqOlu'),
(200, 'SUSILAWATI', '6371045904620004', 'JAKARTA', '1962-04-19', 'Perempuan', 'Islam', '085100765968', NULL, 'JL. SUNGAI MIAI LUAR NO.65 RT.04 RW.01 KELURAHAN SUNGAI MIAI KECAMATAN BANJARMASIN UTARA', NULL, NULL, NULL, NULL, '$2y$10$NH1a0eTGqV6mt9virsKPLuRAK9dsrapP5y6RI7SRRiUGN9Fh4snZu'),
(201, 'Heny Ardi', '6371045703880002 ', 'Banjarmasin', '1988-03-17', 'Perempuan', 'Islam', '085390454540', NULL, 'Jl. Malkon Temon Gang Kayuh Baimbai No 04 Rt 23 rw 002 Kelurahan Surgi Mufti Kecamatan Banjarmasin Utara', NULL, NULL, NULL, NULL, '$2y$10$kGiiGv30zkz3fgPg70yl5uYnQIggWki6iNXDOTbcFwjvbEmBr0t32'),
(203, 'AKHMAD FIRDAUS', '6371042511710001', 'BANJARMASIN', '1971-11-25', 'Laki-laki', 'Islam', '081348052081', NULL, 'JL. KAYU TANGI II KOMP. KEJAKSAAN NO.51 RT.19 RW.02 KELURAHAN PANGERAN KECAMATAN BANJARMASIN UTARA', NULL, NULL, NULL, NULL, '$2y$10$PgA8YNQL1fIlK/fEA.u9lOVl5mgThVRV2cFvEmbSczw1l7iS6j8gC'),
(204, 'ANDRIAN NOOR', '6371040403900004', 'BANJARMASIN', '1990-03-04', 'Laki-laki', 'Islam', '0', NULL, 'JL. KUIN UTARA NO.10 RT.06 RW.01 KELURAHAN KUIN UTARA KECAMATAN BANJARMASIN UTARA', NULL, NULL, NULL, NULL, '$2y$10$7P5VtzH/dnUlpVGruzP/Au08nj9cF5gjckrAE7ryBRSbhvYDtH8fW'),
(205, 'H. MAKMUN TAHER', '637104281600003', 'BANJARMASIN', '1950-11-26', 'Laki-laki', 'Islam', '0', NULL, 'KOMPLEK KAYU TANGI II NO.04 RT.16 RW.02 KELURAHAN PANGERAN KECAMATAN BANJARMASIN UTARA', NULL, NULL, NULL, NULL, '$2y$10$K4iDZw669Nwa6Lzuox5OreHMt3R/Eii29WCpc34Ea6KNHeFPx5Iym'),
(206, 'MUHAMMAD AZWAR RASMI', '6371052306920004', 'BANJARMASIN', '1992-06-23', 'Laki-laki', 'Islam', '081952799733', NULL, 'JL. SEBERANG MESJID NO.16 B RT.05 RW.01 KELURAHAN SEBERANG MESJID KECAMATAN BANJARMASIN TENGAH', NULL, NULL, NULL, NULL, '$2y$10$8GGtUuWmLzK0gh0FmDCMgek322PWL4FAIsxUqL5QW7Ok//J3PGvqS'),
(207, 'adminweb', '3308101502650000', 'ga', '2021-04-14', 'Laki-laki', 'Islam', '0', NULL, 'a', NULL, NULL, NULL, NULL, '$2y$10$A0Gg6EVKAlW1Ps/VdpJzT.qeYrtskSNpt9OEbSEqr38W/1GL/yUey'),
(208, 'SURIYANI', '6371040503720010', 'AMUNTAI', '1972-03-05', 'Perempuan', 'Islam', '0', NULL, 'JL. PADAT KARYA KOMP. PERDANA MANDIRI BLOK C NO.47 RT.15 RW.02 KELURAHAN SUNGAI ANDAI KECAMATAN BANJARMASIN UTARA', NULL, NULL, NULL, NULL, '$2y$10$KLFOZypono./mIDWtk09uuDRWdyOx6EsxssqjlybxnrKaIYhdN47G'),
(209, 'MONAWARAH', '6371044801010007', 'Banjarbaru', '2001-01-08', 'Perempuan', 'Islam', '085393359148', NULL, 'Jl. Pangeran Rt.09 Rw.02 Banjarmasin 70124', NULL, NULL, NULL, NULL, '$2y$10$g5BLEFcN82rBHDI1rvnUWOocvUimiWc39dlSTjUWf.Rw1xlnu5Oze'),
(210, 'GINA WARNITA', '6371045704830003', 'Palangkaraya', '2021-04-14', 'Perempuan', 'Islam', '085752880728', NULL, 'Jl. Perdagangan komplek HKSN blok. 11 c No. 88', NULL, NULL, NULL, NULL, '$2y$10$w04YJcivsMrImFskr/1KDu2830rItSjrO1f3WDzZfgHkV87FVBurG');
INSERT INTO `masyarakat` (`id_masyarakat`, `nama`, `nik`, `tempat_lahir`, `tgl_lahir`, `jk`, `agama`, `telpon`, `email`, `alamat`, `no_rumah`, `rt`, `rw`, `kelurahan`, `password`) VALUES
(211, 'JERRY K. M', '6371032507700005', 'UJUNG PANDANG', '1973-07-25', 'Laki-laki', 'Kristen', '081350047325', NULL, 'JL. HKSN KOMP AMD PERMAI BLOK 10A3 NO. 76 RT. 022 RW. 002', NULL, NULL, NULL, NULL, '$2y$10$ufVK7G2FjF5vDfICNUj8D.cOpRhcTE2LdUv8P9ONU3d8/Tim51iZO'),
(212, 'Suharto, S.Pd', '6371040701690002', 'Nepa', '1969-01-07', 'Laki-laki', 'Islam', '085852759744', NULL, 'Jl. HKSN KOMPLEK AMD PERMAI BLOK B9 NO.239 RT.22 RW.02 KELURAHAN ALALAK UTARA', NULL, NULL, NULL, NULL, '$2y$10$H6aUfBaHzEy2PSU20l.A5eW6XOJg90TXl918yKa9KnUNEpi1MTMBe'),
(213, 'Mastifah', '6371045004860009', 'Banjarmasin ', '1986-04-10', 'Perempuan', 'Islam', '083141917913', NULL, 'JL. SUNGAI JINGAH  RT.16 RW.01 KELURAHAN SURGI MUFTI', NULL, NULL, NULL, NULL, '$2y$10$iu3h1qAxC4GDaf88w.6mJejp8tvpK2kmvarksXZYaTzRqJtFWOCJK'),
(214, 'Noor marini', '6371044706800004', 'Banjarmasin', '1980-06-07', 'Perempuan', 'Islam', '085249359865', NULL, 'Jl.  sungai jingah No.11 Rt.16  Rw.01 Kelurahan surgi mufti', NULL, NULL, NULL, NULL, '$2y$10$V4h3h0nLPPPkWjb66.jtE.74nOe54iH9bnWsYqHJpQMV6NJBRdDky'),
(215, 'NOR ABADIYAH', '6371044605780016', 'Banjarmasin', '1978-05-06', 'Perempuan', 'Islam', '085248271292', NULL, 'Jl. Pangeran No.258 Rt.04 Rw.01 Kelurahan Pangeran Banjarmasin 70124', NULL, NULL, NULL, NULL, '$2y$10$q/zedGY4GRGYAmLYeidvneNc1XkzM8j.jqJiETzdfPqnqUWKAFAme'),
(216, 'SIYARTI', '6371045411650003', 'KLATEN', '1965-11-14', 'Perempuan', 'Islam', '085100523873', NULL, 'JL. SULTAN ADAM KOMP. MAHLIGAI BLOK C/22 RT.12 RW.02 KELURAHAN SUNGAI JINGAH ', NULL, NULL, NULL, NULL, '$2y$10$1j9sLih7sy75H1yYPhG0GeBji2.WOp7l0zBX9TUpGfO329SzgjrLC'),
(217, 'HAMIDAH, S.Ag, S.Pd', '6371044904700005', 'BANJARMASIN', '1970-04-09', 'Perempuan', 'Islam', '081351587860', NULL, 'JL. ALALAK TENGAH RT.01 RW.01 KELURAHAN ALALAK TENGAH', NULL, NULL, NULL, NULL, '$2y$10$oCQwDo6xLy6mxqYDB5HcGuXEKrOo27Yqsp1qAU3YkD55.HKGS1Kpq'),
(218, 'SILVANA', '6371015001850014', 'BANJARMASIN', '1985-01-10', 'Perempuan', 'Kristen', '081349447008', NULL, 'JL. LAKSANA INTAN NO.05 RT.08 RW.01 KELURAHAN KELAYAN SELATAN KECAMATAN BANJARMASIN SELATAN', NULL, NULL, NULL, NULL, '$2y$10$d41KAY2CJLAaa8KlbA/Gb.ubZ0RceFlGaB9Zp4n3aJFTawIdTefrG'),
(219, 'ROSI AH', '6371035001690010', 'PAGATAN KOTA BARU', '1969-01-10', 'Perempuan', 'Islam', '085386003223', NULL, 'JL. AMD KOMP. PEMPROV LIMAU 3 PERUM BANJAR JAYA SAKTI II NO.13 RT.47 RW.03 KELURAHAN ALALAK UTARA', NULL, NULL, NULL, NULL, '$2y$10$tefoiVgg6gZdj/f6DVQtEul3rOhxBc5nDGFc/e/xoeLeoELiR2KsW'),
(220, 'TITIN BUDI UNTARI', '6371046809710003', 'WONOSOBO', '1971-09-26', 'Perempuan', 'Islam', '081255437227', NULL, 'Jl.Tanjung Raya Blok.II Rt.31 No.28 Perumnas Kayu Tangi Banjarmasin ', NULL, NULL, NULL, NULL, '$2y$10$EvZ0cIBX9j9DAfNZ/2lb7.oNNYTVvPXjdeM1gMaWFEnbhzjhqCfX2'),
(221, 'Zulhidayah Yamin, HJ', '6371044205640004', 'Banjarmasin', '1964-05-02', 'Perempuan', 'Islam', '088246106007', NULL, 'Jl. Sungai Miai No. 07 RT. 05 RW.01 Kel. Sungai Miai Kec. Banjarmasin Utara Kota Banjarmasin', NULL, NULL, NULL, NULL, '$2y$10$sWHb1zJDQbAHAapHzv8LH.tvYvjb9gS8oUxfmkA.IBb5USXAYH2.e'),
(222, 'YULIANA', '6371046307860007', '23 Juli 1986', '1986-07-23', 'Perempuan', 'Islam', '083155886554', NULL, 'Jl. Sungai Jingah Gang Gawi Sabuni No.29A Rt.16 Rw.01 Kelurahan Surgi Mufti', NULL, NULL, NULL, NULL, '$2y$10$.hnK3vufVK.WrkcDVtdP2ub1Dvgp2llfs9igzPsSuXd3g48kP4Slm'),
(223, 'Ahmad gazali', '6371040602760007', 'Banjarmasin', '1976-02-06', 'Laki-laki', 'Islam', '083140213416', NULL, 'Jl.Cendana 2. RT01.RW01.NO97.Sungai miai.Banjarmasin Utara.', NULL, NULL, NULL, NULL, '$2y$10$B.uPf/TgTW53ln0C8.YjxeGv98giuwd2bQqvR/W.9VAeWYGgGIiOq'),
(224, 'Wirda Fatma', '6371045505670008', 'Banjarmasin', '1967-05-15', 'Perempuan', 'Islam', '081257100346', NULL, 'JALAN SUNGAI MIAI DALAM RT 05 RW 01 NO 21 ', NULL, NULL, NULL, NULL, '$2y$10$iLJecmUOsvr.snh8zxTVTu/vEiPF2BE2tifgcWvnGNrU6UoKGmF8m'),
(226, 'Roliansyah', '6371040812790006', 'Banjarmasin', '1979-12-08', 'Laki-laki', 'Islam', '083150152063', NULL, 'JL. SUNGAI JINGAH GG. SABUMI NO.32 RT.16 RW.01 KELURAHAN SURGI MUFTI', NULL, NULL, NULL, NULL, '$2y$10$vWDd7XjUB/eM7GGn2Mpf7u/Vz4fupXiTiHbMPQyxBTypK9llE5nym'),
(227, 'Amanah', '6371044101820022', 'Banjarmasin', '1982-01-07', 'Perempuan', 'Islam', '085849635740', NULL, 'JL.  SUNGAI JINGAH RT.16 RW.01 KELURAHAN SURGI MUFTI', NULL, NULL, NULL, NULL, '$2y$10$pt73TtV.dFjUNjTn65KNW.okrctngfJK/yaUNbbA2sy4kB22IB1Xu'),
(228, 'Ferdyan Hartanto Soesatya', '6303022201790002', 'Banjarmasin', '1979-01-22', 'Laki-laki', 'Kristen', '08115009287', NULL, 'Jl. Bumi Laras Selatan I No.23 Komp. Persada Mas RT.010 Rw.003, Banjarmasin ', NULL, NULL, NULL, NULL, '$2y$10$gvGhfQyDLXuaI10T3kdZxeKMpwcPcdjnFo567QBq4FjnXoridWBoK'),
(229, 'Wahidah Arifah ', '6371054911860002', 'PENYAMBARAN', '1986-11-09', 'Perempuan', 'Islam', '085350844807', NULL, 'JL. MELAYU LAUT NO.36 RT.003 RW.001 KELURAHAN MELAYU KECAMATAN BANJARMASIN TENGAH ', NULL, NULL, NULL, NULL, '$2y$10$nRtTsBFLi33.L5SCjxXTGO7Sou6tqn5YJlmZanLqifikBhuVVb1nW'),
(230, 'Latifah', '6371045510790011', 'Banjarmasin', '1979-10-15', 'Perempuan', 'Islam', '081348861930', NULL, 'JL.sungai miai', NULL, NULL, NULL, NULL, '$2y$10$JwixxGgp7j8Sw4suc3QP.OvBnKygUpnHCBtAyBaa388B66rrZS0P.'),
(231, 'Yohanah', '6371045404720007', 'Banjarmasin', '2021-04-19', 'Perempuan', 'Islam', '081933802662', NULL, 'Jln sungai miai dalam rt05 tw 001 kelurahan sungai miai kecamatan banjar masin utara', NULL, NULL, NULL, NULL, '$2y$10$6OZe2ymhg/fU.OpKn98L9uFQlsQIM2Z1qiNzOyLXHXZnkrWBwqQ26'),
(233, 'Masriah', '6371047112540044', 'Amuntai', '1954-12-31', 'Perempuan', 'Islam', '082148799820', NULL, 'Jl. sungai miai dalam no.36 rt.05 rw.01 Kelurahan Sungai Miai ', NULL, NULL, NULL, NULL, '$2y$10$4YjcAxT9sRet5jfxlPjeLukF9FTz418iatx/gOmHSzN1244lVy3ZG'),
(234, 'eka rina', '6371045601900010', 'banjarmasin', '1990-01-16', 'Perempuan', 'Islam', '085251490909', NULL, 'JL. KH. M. YUSUF KOMP. PONDOK METRO INDAH NO.30 RT.39 RW.03 KELURAHAN ALALAK UTARA', NULL, NULL, NULL, NULL, '$2y$10$oo1zLckWddqiHi5w3UU2pef8OLTk5G/u02LosMLadBGDy2CIuzDPC'),
(235, 'Firda allysa', '6371047107970011', 'Banjarmasin', '1997-07-30', 'Perempuan', 'Islam', '081254551964', NULL, 'Jl sungai miai dalam rt.05 no.21', NULL, NULL, NULL, NULL, '$2y$10$oY0j/PF0tiJwmDRHpXKPweMvuZYKKOlPyg5QN70yyiO/hlTEn0j3u'),
(237, 'SABARIAH', '6371046802610004', 'BANJARMASIN', '1961-02-28', 'Perempuan', 'Islam', '085248379988', NULL, 'JL. ALALAK TENGAH RT.09', NULL, NULL, NULL, NULL, '$2y$10$HaadBt/SiYI1OK7ifm5Yo.JROhpqVHAGMUapQn5FstHsogONdhiHG'),
(238, 'Arie Firmansyah', '6371042502900003', 'Banjarmasin', '1990-02-25', 'Laki-laki', 'Islam', '087840110793', NULL, 'Perumnas kayu Tangi blok 4 jl Tanjung Raya no.53 RT. 20 Banjarmasin 70123', NULL, NULL, NULL, NULL, '$2y$10$Db9XuGjAC3Scfg5jm6KzYenvDgrbhKf7aT5VcWR.YpoHBq7VFyvUq'),
(239, 'HAMDAH', '6371046906950005', 'BANJARMASIN', '1995-06-29', 'Perempuan', 'Islam', '085248379988', NULL, 'JL. ALALAK TENGAH RT.09 RW.02', NULL, NULL, NULL, NULL, '$2y$10$V6QpTu3tgWKD0naZKpZLee9VB58jPJIS93/hlxkreEsKUMmr9cGvW'),
(240, 'HAMDAH', '6371046906950005', 'BANJARMASIN', '1995-06-29', 'Perempuan', 'Islam', '085248379988', NULL, 'JL.ALALAK TENGAH RT.09 RW.02', NULL, NULL, NULL, NULL, '$2y$10$nMxGl9KPrtXwqwuEldyN8.BNqrCqaL7PHrhWj6w1SUmQDf0RYEEAS'),
(241, 'ENDRI HERIANI', '6371045704720008', 'BANJARMASIN', '1972-12-17', 'Perempuan', 'Islam', '085248900201', NULL, 'JL. PERDAGANGAN KOMP. HKSN PERMAI BLOK IIIA  NO.104 RT.26 RW.02 KELURAHAN ALALAK UTARA', NULL, NULL, NULL, NULL, '$2y$10$c5AH6.yJ3PcKC7DrrH9.kuVTiLA8tjn7Tmistxj5SLVuoHfMDnMrW'),
(242, 'SUHAIMI', '6371011805730004', 'BANJARMASIN', '7973-05-18', 'Laki-laki', 'Islam', '0895419855775', NULL, 'JL. SULTAN ADAM KOMP. MAHLIGAI RT.15 RW.02 KELURAHAN SUNGAI JINGAH', NULL, NULL, NULL, NULL, '$2y$10$l0Oj7Q6uH.kUi99HrdMY8.lETtuj1AlTA396pnPAviWPKD7DHosL2'),
(243, 'NURUL HUDA, S.PD. AUD', '6371015806730004', 'BANJARMASIN', '1973-06-18', 'Perempuan', 'Islam', '0', NULL, 'JL. SULTAN ADAM KOMP. MAHLIGAI NO.28B RT.15 RW.02 KELURAHAN SUNGAI JINGAH', NULL, NULL, NULL, NULL, '$2y$10$QKh7Ei7Hxw1HT.bkOc6xceytmusf0yUvJBWX8a3.diPlw23kN5ndi'),
(244, 'RIWAN DARU', '6371040305820006', 'BANJARMASIN', '1982-05-03', 'Laki-laki', 'Islam', '083146846727', NULL, 'JL.  SUNGAI JINGAH RT.16 RW.01 KELURAHAN SURGI MUFTI ', NULL, NULL, NULL, NULL, '$2y$10$wDO8RgE4964ThbIi1KBUuua.lYk0YyJyRxyKiKre2EHI65wNwzHti'),
(245, 'Silvia Tri Rahmawati, SE', '6371046605820004', 'Banyuwangi', '1982-05-26', 'Perempuan', 'Islam', '082153524810', NULL, 'Jl. Cemara Raya Gg. Tanjung IV NO. 2 RT. 31 RW. 02', NULL, NULL, NULL, NULL, '$2y$10$InVoMYlLgM6scdP9tknhguQX7ZE29AUJJr0CkuWeYzsXMoOAqy.uS'),
(247, 'Burhanudin', '6371041506730005', 'Banjarmasin', '1973-06-15', 'Laki-laki', 'Islam', '081351106649', NULL, 'Jln. HKSN komplek kebun kelapa RT.008 RW.001 Kelurahan Kuin Utara', NULL, NULL, NULL, NULL, '$2y$10$4xEXwEUfnQhKIzEuawk2/eFe3BfYL.cC.Ma11wf1trOycDnstB6W.'),
(248, 'Elly rasuna', '6371044106680009', 'Banjarmasin', '1968-06-01', 'Perempuan', 'Islam', '085332044179', NULL, 'Jl. S. Adam komp mandiri permai/28', NULL, NULL, NULL, NULL, '$2y$10$Z/SntXzwt.9JrmLZGZPl4.QEswQSm6BW61hS1rKkcjEamoimrT6YC'),
(249, 'Muhammad solihin', '6371021306810009', 'Palangka raya', '1981-06-13', 'Laki-laki', 'Islam', '082281664964', NULL, 'JL. Cemara raya no.12 rt.31 rw. 02 Kelurahan Sungai Miai', NULL, NULL, NULL, NULL, '$2y$10$Q/tB90DbVv//R0CAdxzhVezEdabjgEjklqT6v6aZzXRzXR2aStI8W'),
(250, 'SHINTA SETIAWATI', '6371044310700003', 'BANJARMASIN', '1970-10-03', 'Perempuan', 'Islam', '082148082826', NULL, 'KOMP.PERUMNAS KT BLOK II GG.TANJUNG IV NO.5 RT.31 RW.02 KELURAHAN SUNGAI MIAI', NULL, NULL, NULL, NULL, '$2y$10$gUocTFc6EyWEs2.TsdpoQ.rqle5j/5U/nJXfyZBzK7AoHfkcA2oBa'),
(251, 'Mastiah', '6371034507770013', 'Amuntai', '1977-07-05', 'Perempuan', 'Islam', '085248379988', NULL, 'Jl.hksn komp.amd permai blok.7b no.173 RT.22 Kel Alalak Utara bim', NULL, NULL, NULL, NULL, '$2y$10$ozbmwiFKmzO2qfdQDrM1fOHPkmarwx5rvvYq/oPCIV/7uSVybHNjq'),
(252, 'Ahmad Riyadi Saleh', '6371040101950021', 'Banjarmasin', '1995-01-01', 'Laki-laki', 'Islam', '087803207875', NULL, 'Jl. Tanjung Raya NO.26 RT.31 RW.02', NULL, NULL, NULL, NULL, '$2y$10$vaTNkt7tghpPHUtxI.PhX.5vzEzvlRz8O3rwY6YgYbVKhJffF4FZ6'),
(253, 'SITI FATIMAH MULIATUL JANNAH', '6371046108970003', 'BANJARMASIN', '1997-08-21', 'Perempuan', 'Islam', '082253500626', NULL, 'JL. CEMARA RAYA GG. TANJUNG VII BLOK 2 NO. 17', NULL, NULL, NULL, NULL, '$2y$10$zyU/KfSoljWVMHZNPUtY3eI37GbwCVsPxg3K.KoQk4QN.NIbpmi6u'),
(254, 'Mardinah', '6371045708650018', 'Banjarmasin', '1965-08-17', 'Perempuan', 'Islam', '082253039913', NULL, 'Jl.alalak tengah RT 14 RW 002', NULL, NULL, NULL, NULL, '$2y$10$1jT0YPQObVNK4lGf2o2cee4honewOAgBAqAx5ad8PGyebtPrS73T6'),
(255, 'Hj Badiyah', '6371044202530002', 'Banjarmasin', '1953-02-02', 'Perempuan', 'Islam', '088807038801', NULL, 'JL. TANJUNG IV NO.10 RT.31 RW.02 KELURAHAN SUNGAI MIAI', NULL, NULL, NULL, NULL, '$2y$10$fz7h2PbF5NK9eJT.HSY2d.6N385PF03PSbeE/TP314YnHc.a5Xkru'),
(256, 'Maily Aspiya', '6371045611000004', 'Banjarmasin', '2000-11-16', 'Perempuan', 'Islam', '082251566566', NULL, 'JL. sungai miai dalam nO.15 rt.05 rw.01 no 15  kelurahan sungai miai', NULL, NULL, NULL, NULL, '$2y$10$oYZ0yY13PaOinkTAU6T7rOpgjSAj4pD6rvvpGbpXlvPWDkeshyROy'),
(257, 'MARIANI, S.PD', '6371047003760006', 'BANJARMASIN', '1976-03-30', 'Perempuan', 'Islam', '081250520353', NULL, 'JL. MUSEUM PERJUANGAN KOMP. H. ANDIR BLOK A NO.60 RT.16 RW.02 KELURAHAN SUNGAI JINGAH', NULL, NULL, NULL, NULL, '$2y$10$eycG5YNClxuch7Q6f3uBYOR0PEtuIcsDUCj8UlS/iXp2/z4/Fgeue'),
(258, 'Hairiani', '6371044211940002', 'Banjarmasin', '1994-11-02', 'Perempuan', 'Islam', '085751225114', NULL, 'Jl. Alalak Tengah RT.11', NULL, NULL, NULL, NULL, '$2y$10$uRSgP/hx3tcfsMDB3QmZ9.Da25EL9YNm.5rF5uZGYN4qVLL4Rror.'),
(259, 'Dewi', '6371045408830007', 'Banjarmasin', '1983-08-14', 'Perempuan', 'Islam', '087738885477', NULL, 'Jl.alalak tengah rt 8 rw 02', NULL, NULL, NULL, NULL, '$2y$10$CxMFDSZ6rNNljhvlNukQ9ufCrG61cmBGilngrP4W5jSdMUSIGbTDW'),
(260, 'RAHMAH.', '6371044409900003', 'Banjarmasin', '1990-09-04', 'Perempuan', 'Islam', '085386781774', NULL, 'Jl ALALAK TENGAH GG Alkah Noor Aini  RT.07 RW.02', NULL, NULL, NULL, NULL, '$2y$10$mlf62N/nM/UwVqcpvsaho.Rua7.uEi/Qg.jOBpC4zqYVCWVRCgDM6'),
(261, 'KHAIRUN MUTIAH', '6371035305930009', 'Banjarmasin', '1993-05-13', 'Perempuan', 'Islam', '081298834250', NULL, 'Komp.Dasamaya II Blok E No. 13 Rt.19 Rw.02 Alalak Selatan Banjarmasin 70126  ', NULL, NULL, NULL, NULL, '$2y$10$orQWT9scND3rmIq92mt.iuxoaPzenTc/jjEp9/wt14uo57AEfa0AS'),
(262, 'SINDHU IRAFUDIN, A.MD', '6371052709720003', 'BANJARMASIN', '1972-09-27', 'Laki-laki', 'Kristen', '081545464805', NULL, 'JL GATOT SUBROTO BARAT II NO 72 RT.20 RW.02 KELURAHAN KEBUN BUNGA KECAMATAN BANJARMASIN TIMUR', NULL, NULL, NULL, NULL, '$2y$10$6y5vq4rXdpCvgNRDRu3fEO2/nz0Bcnjj0K3pXfkkXwMGmMPXGonsW'),
(263, 'AHMAD JAWAD', '6371041306770002', 'Banjarmasin', '1977-06-13', 'Laki-laki', 'Islam', '085229492999', NULL, 'Jl. Pangeran Gg. Al-amin No.41 Rt.23 Rw.02 Kelurahan Pangeran Banjarmasin 70124', NULL, NULL, NULL, NULL, '$2y$10$patjB45CUMmGG10jxbaNnutLx2Ogu7Tcr2gic1mgimSSJZBRU2XuW'),
(265, 'Rusdiana', '6371045507730005', 'Banjarmasin', '1973-07-15', 'Perempuan', 'Islam', '087800222820', NULL, 'Jl. Alalak tengah rt 14', NULL, NULL, NULL, NULL, '$2y$10$eaP/DJC7gQ8BmVQHlUdxpeuEUH7NZ6jl5hJF3OPwm8oS2gGjn6YNu'),
(267, 'FATMAWATI', '6371045910760006', 'BANJARMASIN', '1976-10-19', 'Perempuan', 'Islam', '08875957770', NULL, 'Jalan sungai Miai dalam RT 05 RW 01 no 15 kode pos 70123 ', NULL, NULL, NULL, NULL, '$2y$10$gINPJIiXmvv69.TjhwWhr.5MfBxFpXiv9H3rYMFOXjLah57CzCdnW'),
(268, 'Mirna ita novita', '6371026002870011', 'Balikpapan', '1987-02-20', 'Perempuan', 'Islam', '081295380040', NULL, 'Jl.cemara raya no.12 rt.31 rw.02', NULL, NULL, NULL, NULL, '$2y$10$hIET9LOHGQYycq40N7MiHudTlYbatyXcMre1C0hDMxXvOxuTR0DFm'),
(269, 'Noorlaila, SE', '6371055607730006', 'Banjarmasin', '1973-07-16', 'Perempuan', 'Islam', '087884336102', NULL, 'Jl. Simpang Bali 1 No. 16', NULL, NULL, NULL, NULL, '$2y$10$hJcB6AivotofckByYlUb8OYGySinDAq5Hw86.RT5bHKxLIQyHG06u'),
(270, 'JAMILAH', '6371045104840004', 'BANJARMASIN', '1984-04-11', 'Perempuan', 'Islam', '081348484677', NULL, 'JL. PADAT KARYA KOMP. PERDANA MANDIRI BLOK G/196', NULL, NULL, NULL, NULL, '$2y$10$Ax8vmM3OQx5p79XqlV2GJ.GtFo2PRfiE.jlWAlHmKvoAW6KqFzez2'),
(271, 'Syarifah', '6371046512700005', 'Banjarmasin', '1970-12-25', 'Perempuan', 'Islam', '085387550531', NULL, 'Jl. Pangeran RT.04 Rw.01, Banjarmasin', NULL, NULL, NULL, NULL, '$2y$10$pwvX1Ce9OAHfVjMpn1deGeRrxuapYydftF7FfmLHX9Fr9MaZxMH0.'),
(272, 'Husni Thamrin', '6371042305670002', 'Banjarmasin', '1967-05-23', 'Laki-laki', 'Islam', '087815212795', NULL, 'Jl. Pangeran No.237 RT.04 Rw.01 Banjarmasin', NULL, NULL, NULL, NULL, '$2y$10$r1SuShJ1R/tP2TfQiAi4WOcrxx1p/heq6uqgNWY.8iaWJure.KXQO'),
(273, 'Syahroni', '6371040609880002', 'Banjarmasin', '1988-09-06', 'Laki-laki', 'Islam', '085156743040', NULL, 'Jl. Pangeran No.237 RT.04 Rw.01 Banjarmasin', NULL, NULL, NULL, NULL, '$2y$10$15nNXCJi5Et/vef8AYIlD.PGclZI850PlK0DsnuVQMXOfiW2gqvAS'),
(274, 'Norhayati', '6308035008860003', 'Banjarmasin', '1986-08-10', 'Perempuan', 'Islam', '083155686862', NULL, 'Jl. Pangeran No.237 RT.04 Rw.01 Banjarmasin', NULL, NULL, NULL, NULL, '$2y$10$iBJRCwskk7mNYmnWp0HWFupH/7eTmMTkYkXs1R5tCasnIU9vA/552'),
(275, 'Sarinah', '6371046512780012', 'Banjarmasin', '1978-12-25', 'Perempuan', 'Islam', '082255499992', NULL, 'Jl. Pangeran No.240 RT.04 Rw.01 Banjarmasin', NULL, NULL, NULL, NULL, '$2y$10$NJggNtojJcWOuiO6ex6uI.WG/I0y4fDSn8mnjkAZaHXAjv2iwHjmi'),
(276, 'Sakdiyah', '6203065106820001', 'Kuala kapuas', '1982-06-11', 'Perempuan', 'Islam', '087812101458', NULL, 'JL.Alalak Utara Gg.1 Rt.10 Rw.01 Kelurahan Alalak Utara', NULL, NULL, NULL, NULL, '$2y$10$aSp1ezQiNkpy6sZKRHrHDO6wEkn5YckB9rJR9.KWtJBGJjQ6.Mh9O'),
(277, 'Noor Syaidah', '6371044909780007', 'Banjarmasin', '1978-09-09', 'Perempuan', 'Islam', '083133040413', NULL, 'Jl. Pangeran No.173 RT.04 Rw.01, Banjarmasin', NULL, NULL, NULL, NULL, '$2y$10$COWrcb4gWSDa64PkfO6L.euJ3MWqjjo46ppGx24Sv6yKfUNyog6py'),
(278, 'Jaranim', '6371045506580003', 'Banjarmasin', '1958-06-15', 'Perempuan', 'Islam', '087816113916', NULL, 'Jl. Alalak Tengah RT. 013 RW 002', NULL, NULL, NULL, NULL, '$2y$10$02y6y3mjHRj3pUZf7Byod.LgJrvoPO6sJolcVaJorUsOj8DEu78gi'),
(279, 'Rusdiana', '6371046410560003', 'Banjarmasin', '1956-10-24', 'Perempuan', 'Islam', '081549341905', NULL, 'Jl. Pangeran No.173 RT.04 Rw.01, Banjarmasin', NULL, NULL, NULL, NULL, '$2y$10$4vrYL5QGn4ubHVdS4FGkOu8V7J/EuaxJ9PdNclfc8d3KTOw4IqoyW'),
(280, 'fitria', '6304056912900003', 'pulau alalak', '1990-12-29', 'Perempuan', 'Islam', '082350563296', NULL, 'Jl. alalak tengah rt.8 rw.2. kelurahan alalak tengah ', NULL, NULL, NULL, NULL, '$2y$10$gPdnuLwMVlvnRQsDNettQuT.0bg5n.HQOSKtYaZcSczHrYulVu6C.'),
(281, 'Maulida Sari', '6371045410850001', 'Banjarmasin', '1985-10-14', 'Perempuan', 'Islam', '083116295090', NULL, 'Jl. Pangeran No.172 RT.04 Rw.01, Banjarmasin', NULL, NULL, NULL, NULL, '$2y$10$eQwRAIP9dqZKKhoqubEvNeriXMZfVgvfVG5q1hmORCOz5SAyQOTaa'),
(282, 'Siti murniah. Hj', '6371045206600012', 'Banjarmasin', '1960-06-12', 'Perempuan', 'Islam', '083142107637', NULL, 'Jl. Alalak tengah rt. 13', NULL, NULL, NULL, NULL, '$2y$10$S5f9a6YgqM/M0d/Sqndj9OCJZDzQndGwjL8iy/mj52i0B9cCE2Ple'),
(283, 'Basran', '63710415037110007', 'Banjarmasin', '1971-03-15', 'Laki-laki', 'Islam', '083143373324', NULL, 'Jl.alalak tengah RT 14 RW .02 kelurahan Alalak tengah banjarmasin 70126', NULL, NULL, NULL, NULL, '$2y$10$nYeF/aaWkr9ktTVnmRdLCelB6hfd3VVuCAtEvzVENY.1FgG3GC7ay'),
(284, 'Tarwiah', '6371045206720002', 'Banjarmasin', '1972-06-12', 'Perempuan', 'Islam', '081549564194', NULL, 'Jl.alalak tengah RT 14. Rw .02 Alalak tengah banjarmasin 70126', NULL, NULL, NULL, NULL, '$2y$10$kcZDx/VOnIcprAZnOT9o7.v8810lETcJ1QJa.FGS6MjbEEVlQJGhm'),
(285, 'Nur hajjah', '6371045510830003', 'Banjarmasin', '1983-10-15', 'Perempuan', 'Islam', '081521516322', NULL, 'Jl.alalak tengah RT 15. Rw .02 kelurahan Alalak tengah banjarmasin 70126', NULL, NULL, NULL, NULL, '$2y$10$wE4T0jRqqiHQSgd4xZML3.tcOVlS1UG.HEIOz5iMYHYGp1KxVmIZC'),
(286, 'Zakiyul fata', '6371041604910004', 'Banjarmasin', '1991-04-16', 'Laki-laki', 'Islam', '087768246495', NULL, 'Jl.alalak tengah rt.09', NULL, NULL, NULL, NULL, '$2y$10$HGWrz9CkjOldhJIdnOdN..qXhh7a8r8yQJnCJqr3yk2CBHT5ucIha'),
(287, 'SUMIADI BURHAN, DRS, H', '6371040806490003', 'RANTAU', '1949-06-08', 'Laki-laki', 'Islam', '08115130001', NULL, 'Jl. Perdagangan No.11 Rt.22 rw.02 kelurahan pangeran', NULL, NULL, NULL, NULL, '$2y$10$4jb0JQkEwKaW6xGgllztIe5.GqoKmJASA4rBDw8DmKta.HuMjAjuK'),
(288, 'Dahlina', '6371046008770003', 'Banjarmasin', '1977-08-20', 'Perempuan', 'Islam', '081256024981', NULL, 'Jl.Alalak Tengah No.7 RT.09    ', NULL, NULL, NULL, NULL, '$2y$10$ByM3voQqe9Sxu3xfxmnw6.ovXv5DM4SLS7EKKOuuSQbZ00zQ4n/we'),
(289, 'Noor Amaliah,SE', '6371045103870005', 'Banjarmasin', '1987-03-11', 'Perempuan', 'Islam', '082149928158', NULL, 'Jl sultan adam komplek mandiri permai no.90', NULL, NULL, NULL, NULL, '$2y$10$X/3tqX.GSFZqPAAVgAgOke5RX2MV34A1cj69DpKLE21uu4MDpwWfS'),
(290, 'FITRI NOVIANA', '6371042612070464', 'Banjarmasin', '1983-11-01', 'Perempuan', 'Islam', '081250478876', NULL, 'Jln.Alalak Tengah Gg.Smp 13 No 24.RT 21 RW 01 Alalak Tengah Banjarmasin 70126', NULL, NULL, NULL, NULL, '$2y$10$56cny/g9oXguDxemd3vnIee/5RurZ7ARmABHcJSM3Cv95LJjpPwKq'),
(291, 'Maimunah', '6371047006580002', 'Banjarmasin', '1958-06-30', 'Perempuan', 'Islam', '081250478876', NULL, 'Jln.Alalak Tengah Gg.Smpn 13 RT.18 RW.01 Alalak Tengah Banjarmasin 70126', NULL, NULL, NULL, NULL, '$2y$10$EO7QQxNqAPEQ5k/v27UygewscecsYos3myX1SRt0HrxT9HGxzLhWG'),
(292, 'HERLINA, SE', '6371055304690005', 'BANJARMASIN', '1969-04-13', 'Perempuan', 'Islam', '085654036015', NULL, 'JL. AMD KOMP PEMPROV LIMAU 3 PERUM BANJAR JAYA SAKTI II BLOK E RT 047 RW 003 BANJARMASIN', NULL, NULL, NULL, NULL, '$2y$10$6I0lEYHcwA50BeZs3xfeH.NkmzW9xXoSiXjgYjlVg8XZ8tswVNTZC'),
(293, 'HENI PUJI ASTUTI', '6371016510750007', 'SUKOHARJO', '1975-10-25', 'Perempuan', 'Islam', '085101471560', NULL, 'JL. CEMARA RAYA KOMP. AGASTIS 3 NO.06 RT.41 RW.03 KELURAHAN SUNGAI MIAI', NULL, NULL, NULL, NULL, '$2y$10$naUnlugeHhc1/Y4r41js7OpFg45h3ePYGjKG56nVDsKR3VJCcx9ea'),
(294, 'Rusmilawati', '6371047003850006', 'Banjarmasin', '1985-03-30', 'Perempuan', 'Islam', '081251116767', NULL, 'Jalan sungai jingah no.6 RT.16', NULL, NULL, NULL, NULL, '$2y$10$8A7IM0tJ1x4ovQVyLx7JbeJSiNZONJ96ZCg2q6tLiqWpne200lKfO'),
(295, 'SANAD', '6371042112790007', 'JEDAH', '1979-12-21', 'Laki-laki', 'Islam', '081253910215', NULL, 'JL. IRIGASI RT.04  RW.00 KELURAHAN KAYU BAWANG KECAMATAN GAMBUT', NULL, NULL, NULL, NULL, '$2y$10$.ZeyrUFC3DXETJyVRS0Y0eddpUA2yMUd9bo/3XKSnEk5Dtf/zgyjW'),
(296, 'Muhammad Syafei', '6371041503870008', 'Jakarta Pusat', '1987-03-15', 'Laki-laki', 'Islam', '082255055500', NULL, 'Jl. Jahri Saleh Komp. Pandan Arum Blok. C No.9, Banjarmasin', NULL, NULL, NULL, NULL, '$2y$10$mp3Z4swnHjRwI6mXRiTF7OSv0ZTpHx7Cy93lNH5x0wqAtmq0fIpfy'),
(298, 'Lintri Wiyanti', '6371046202720005', 'Wonosobo', '1972-02-22', 'Perempuan', 'Islam', '085753185920', NULL, 'Jl. HKSN KOMP. Surya Gemilang No.38 RT.18 Rw.02 Kelurahan Kuin Utara', NULL, NULL, NULL, NULL, '$2y$10$cEBnV9HU7UOVPPPcXf20Ses12R.cm1IPxLwD2SE1JteyTjf.2CYju'),
(299, 'Mayanti', '6371044805820002', 'Banjarmasin', '1982-05-05', 'Perempuan', 'Islam', '083863833256', NULL, 'jl antasan kecil timur dalam rt.15 rw.01', NULL, NULL, NULL, NULL, '$2y$10$TSHAOiyyBLcmojwqy.8Fm.q25yhEIlZw7fKMciuAFMB/S/Kb.y/rO'),
(300, 'Muhammad yandi', '6371042810980005', 'Banjarmasin', '1998-10-28', 'Laki-laki', 'Islam', '083863833256', NULL, 'Antasan kecil timur   Rt 15.     Rw 01.  ', NULL, NULL, NULL, NULL, '$2y$10$GsgQ9KXDqvPdbQSczlTRZ.q4Z4K4viTwbauMrxMfA55eurB5/TNZC'),
(301, 'Muhammad Johar Lutfi', '6371040608950009', 'Banjarmasin', '1995-08-06', 'Laki-laki', 'Islam', '082351896093', NULL, 'Jl.P.Karya Komp. Perdana Mandiri Blok C Rt.15 No.44', NULL, NULL, NULL, NULL, '$2y$10$Lc2TQaGFk05k3w7fwlJF/uYD6QzBIggp5rXI5Io80VHLWEuhZ5YvS'),
(302, 'Syaifullah', '6371041503730007', 'Banjarmasin', '1973-03-15', 'Laki-laki', 'Islam', '0895703362931', NULL, 'Jl. Alalak Tengah Rt.01 Rw. 001', NULL, NULL, NULL, NULL, '$2y$10$zcmQZOfj2leOxY3MvoWTSuriL5liRAs9QRZGkDAwpMlaFTqAO7ADu'),
(303, 'Rina Mariana', '6371015112790011', 'Banjarmasin', '1979-12-11', 'Perempuan', 'Islam', '087738103878', NULL, 'Jl. HKSN Komp. Surya gemilang blok 14 No.56 Rt.22 Rw.02 Kelurahan Kuin Utara', NULL, NULL, NULL, NULL, '$2y$10$39rI2aIq0b3CRw5f.As7cevGOsCc9LxvyEk8EBeYevxeL8/IJJ7pW'),
(304, 'Rainah', '6371046208760004', 'Banjarmasin', '1976-08-22', 'Perempuan', 'Islam', '089635533355', NULL, 'Jl. Alalak Tengah RT.08 RW.02', NULL, NULL, NULL, NULL, '$2y$10$qFSA2ls7LEdbLs4IWnKJcONJ2sR7DlypsW6WvE94bnz1dXXUvia6K'),
(305, 'Norliyanti', '6371044408900005', 'Banjarmasin', '1990-08-04', 'Perempuan', 'Islam', '0895621068789', NULL, 'Jl. Pangeran No.45 RT.012 Rw.01, Banjarmasin', NULL, NULL, NULL, NULL, '$2y$10$1yPs0pK3UW5vlyuCiZMJbee6zAT7A1fEUb/o.KZOgMT3cJYev5SSi'),
(306, 'Alex Rahman', '6371052604780007', 'Banjarmasin', '1978-04-26', 'Laki-laki', 'Islam', '08152138058', NULL, 'Jl. Soetoyo. S Gg. Setia Budi RT.09 Rw.01 Kelurahan Teluk Dalam', NULL, NULL, NULL, NULL, '$2y$10$bDTMxqP6uIYV8x58LACdLunQ/MZAW6XRP9uvgOQIVtnCnl3oPMyuO'),
(307, 'Rusnawati', '6371044707720006', 'Banjarmasin', '1972-07-07', 'Perempuan', 'Islam', '081351608668', NULL, 'Jl. Alalak Tengah Rt.21 Rw. 01 No. 23 Kel. Alalak Tengah Kec. Banjarmasin Utara', NULL, NULL, NULL, NULL, '$2y$10$mAXrdlLFeVXvoxbM4iZALeyHDAz/RwtD7KnHCj9u8HB414dO4c80u'),
(308, 'Syaipul Akhyar', '6371042111950005', 'Jl Kuin Utara', '1995-11-21', 'Laki-laki', 'Islam', '082310483355', NULL, 'Jl Kuin utara, Rt 0003 Rw 001', NULL, NULL, NULL, NULL, '$2y$10$q5tkV.AExB0r0hpFdiyQy.42tomKcRI.0NemZBg6YQfhaTJpKp0W.'),
(309, 'Restu muttaqien', '6371042109200008', 'Marabahan ', '1987-01-22', 'Laki-laki', 'Islam', '085349849691', NULL, 'Jl. Pinus Kayutangi RT. 31 No. 37 Banjarmasin Utara', NULL, NULL, NULL, NULL, '$2y$10$O0lNIUHMqf67uIZPFfYgiuAyCLraWItBXT0SK6CNS6MVREEyq/Ehe'),
(310, 'YULIDIA RESNA PUJARAMA, S.PD', '6371045307870009', 'BANJARMASIN', '1987-07-13', 'Perempuan', 'Islam', '087891753207', NULL, 'JL. MAHONI 6 NO.26 CEMARA KAYUTANGI RT.34 RW.02 KELURAHAN SUNGAI MIAI', NULL, NULL, NULL, NULL, '$2y$10$uwijwFPSKf11I96hN/F51eZR.6X3iV7tsb59Hq0CCZ8eVvMcaGn7S'),
(311, 'LILY NOVIANTI, S.HUT', '6371044511820005', 'BANJARMASIN', '1982-11-05', 'Perempuan', 'Kristen', '081348066023', NULL, 'Jl. Cemara Raya Gg. Tanjung VI No. 30 RT. 31 RW.02 Kelurahan Sungai Miai', NULL, NULL, NULL, NULL, '$2y$10$ZTeKXpocgKfyazPOvh8CeuqJdMA8rWchUPrkMHOokIfavDV5UW5Gm'),
(312, 'SITI AMINAH', '6308026808940005', 'MURUNG PANTI HULU', '1994-08-28', 'Perempuan', 'Islam', '087814551509', NULL, 'JL. PANGERAN RT.10 RW.01 Kelurahan PANGERAN, Kecamatan BANJARMASIN UTARA.', NULL, NULL, NULL, NULL, '$2y$10$431jHrvd3rsj1RAswaRT4.8G6oM6UM795r6/tZZKnK1OWr99r365u'),
(313, 'Sekardiva Ulan Ningtyas', '3515145311010002', 'Banjarnegara', '2001-11-13', 'Perempuan', 'Islam', '087813112001', NULL, 'Jl. Bumi Lambung Mangkurat II RT.02 Rw.01 No.109, Banjarmasin', NULL, NULL, NULL, NULL, '$2y$10$9uXgNpH5H4NMDnzUyIOaKurdGBOce2wZf8/oUXSPkSZA..UaiCE.W'),
(314, 'RUDJI HANTORO', '6371010706650005', 'BLORA', '1965-06-07', 'Laki-laki', 'Islam', '081351592665', NULL, 'JL. RAYA BIMA NO.64 RT.19 RW.02 KELURAHAN PEMURUS DALAM ', NULL, NULL, NULL, NULL, '$2y$10$2SC4lSkdPF6Nesq27Phm4uuPCNLg78vujKOhvOZIX9xjw048w3sza'),
(315, 'ASLAMIAH', '6371046908860009', 'BANJARMASIN', '1986-08-29', 'Perempuan', 'Islam', '082243522231', NULL, 'JL. JAHRI SALEH RT.11 RW.02 SURGI MUFTI BANJARMASIN 70122', NULL, NULL, NULL, NULL, '$2y$10$OSzA..q5ujPXE1zm1ddhs.1IDseZE4mPezvpO6I1ykdrGkIAQ3Afa'),
(316, 'MUHAMMAD INDRA PRADANA', '6371041407000004', 'BANJARMASIN', '2000-07-14', 'Laki-laki', 'Islam', '087761720298', NULL, 'JL.ANTASAN KECIL TIMUR NO.36A RT.08 RW.01 KELURAHAN ANTASAN KECIL TIMUR', NULL, NULL, NULL, NULL, '$2y$10$Zengz25YfIdXaQo4E4RVqeUzGPDeTIXBW.Rq6yastkm.F0sNnaGdu'),
(317, 'IR. HANAFIE KEN TANGGONO, M.BA', '6371042807610003', 'TANJUNG KARANG', '1961-07-28', 'Laki-laki', 'Islam', '05113305758', NULL, 'JL. ADHYAKSA KAYU TANGI PERMAI A6 RT.41 RW.03 KELURAHAN SUNGAI MIAI', NULL, NULL, NULL, NULL, '$2y$10$PpaJQfKteqUfRnRYwkCqDOikPxkJhXRwQMJe3/52uOoA9krskWQmq'),
(318, 'Iriani Mayasari, SE, MM', '6371045601710003', 'Jakarta', '1971-11-16', 'Perempuan', 'Islam', '08125081026', NULL, 'Jl. Sultan Adam Kompek Mahligai Rt. 12 No. 14 Kota Banjarmasin', NULL, NULL, NULL, NULL, '$2y$10$WfyyecbqDD39yBOedPShm.llPmNsk.kqfsdrcvdh8ft/rMuVGbKSO'),
(319, 'JOKO MARGONO,SE', '6371012511710001', 'BOYOLALI', '1971-11-15', 'Laki-laki', 'Islam', '08125091808', NULL, 'KOMP. AGATIS 3/6 RT.41 RW.01 KELURAHAN SUNGAI MIAI ', NULL, NULL, NULL, NULL, '$2y$10$nhAaGB1m0w8MqyoBNwCQDuDBBxc35XUMa7wgTguH/JG9SEHhPkDhu'),
(320, 'MARTINAH', '6371046712800010', 'BANJARMASIN', '1980-12-27', 'Perempuan', 'Islam', '087803201362', NULL, 'JL. SEI ANDAI KOMP. ANDAI JAYA PERSADA B.B/3 RT.33 RW.03 KELURAHAN SUNGAI ANDAI ', NULL, NULL, NULL, NULL, '$2y$10$VhBazHudOW58G9b/11IEJO3UzLUg4NxP7p6XseZT.ZKTxatdgISrW'),
(321, 'ARIE SOLEH MULIA', '6371053011790005', 'BANJARMASIN', '1979-11-30', 'Laki-laki', 'Kristen', '08125111101', NULL, 'JL. CEMPAKA IX NO.18 RT.10 RW.02 KELURAHAN MAWAR KECAMATAN BANJARMAISN TENGAH', NULL, NULL, NULL, NULL, '$2y$10$EvM6711DsfBz1q0xWBVsjusvgbCdm01/wBOfF1bjamGRP5B/5ePfy'),
(322, 'Munawwaroh', '6304064705870002', 'Kab,banjar', '1987-05-07', 'Perempuan', 'Islam', '085849314079', NULL, 'Jl,padat karya komp,herlina perkasa blok,mutiara 1 no 63 rt 57', NULL, NULL, NULL, NULL, '$2y$10$X9YbyT37GoqNeQqtHeAt/Od5lGMva8E10U.QR8FIxiz0y6/WAoeLS'),
(323, 'Abdulah', '6371042006950006', 'Handil Gayam', '1995-06-20', 'Laki-laki', 'Islam', '082154464708', NULL, 'Jl. Irigasi Komplek Berlian Lutfia No.12A', NULL, NULL, NULL, NULL, '$2y$10$zATurgwajDWi7BooebQJuOptLLvT2d.rEb4NwqCtX2TJ/2k2stXva'),
(324, 'SUTATA', '6371042205680004', 'Blitar', '1968-05-22', 'Laki-laki', 'Islam', '082155341122', NULL, 'Jl. HKSN Komplek AMD Permai Blok B1 No. 27 Banjarmasin', NULL, NULL, NULL, NULL, '$2y$10$CEDTJsTikgIrwV1WcoD89O8ORQHZYND325aMvn/5jUE6Tdyr6ewmW'),
(325, 'RIZKY RISWANDI', '6371041011890007', 'BANJARMASIN', '1989-11-10', 'Laki-laki', 'Islam', '081345425926', NULL, 'JL. ALALAK SELATAN RT.01 RW.01 KELURAHAN ALALAK SELATAN', NULL, NULL, NULL, NULL, '$2y$10$EFP7evC3U1FYU3UEfI3etevpF8JYe0nltYvsVXBUSucjNJUeqapmK'),
(326, 'Novi enggelina', '6371054107970132', 'Banjarmasin', '2021-07-01', 'Perempuan', 'Islam', '085849219879', NULL, 'Sungai andai Jl padat karya komplek kayu bulan ', NULL, NULL, NULL, NULL, '$2y$10$yubXwa3tAgRrRGKSXw5V.O4CAPtFx23Kownmxl7JiaQA0ByUisf0a'),
(327, 'NOOR KAMSINAH CHAIR', '6371046410470001', 'AMUNTAI', '1947-10-24', 'Perempuan', 'Islam', '081351145769', NULL, 'JL. BRIGJEN H. HASAN BASRI NO.117 RT.39 RW.03 KELURAHAN ALALAK UTARA', NULL, NULL, NULL, NULL, '$2y$10$ERvHYso2hdRRXZDkGh4TmeRQpyrvYxIWpdkTsQHT4mWcUHniCdbl2'),
(328, 'YENNY', '6371026208920005', 'BANJARMASIN', '1992-08-22', 'Perempuan', 'Islam', '082350103046', NULL, 'JL. PADAT KARYA KOMP. PERDANA MANDIRI RT.17 RW.02 KELURAHAN SUNGAI ANDAI', NULL, NULL, NULL, NULL, '$2y$10$gLl5MlAF9rfcRT1JjkH/2.u24hQ2AhY2fjogD2UnxcEyS.B0p8RdS'),
(329, 'Norkhalifah ', '6371044410930007', 'Banjarmasin', '1993-10-04', 'Perempuan', 'Islam', '081348344491', NULL, 'Jl.HKSN Gg. Al-Asri Rt.10 Rw.03 No.170 Kelurahan Alalak Selatan', NULL, NULL, NULL, NULL, '$2y$10$CQnc4O0cuHolsW3gnOqTAu.jbxz.GpWPii/8pVKp0O3EdSHYmZfzG'),
(330, 'Hani Muntoha', '3517072703800008', 'JOMBANG', '1980-03-27', 'Laki-laki', 'Islam', '081250016829', NULL, 'KOMPLEK MERANTI VIII NO. 01 RT. 035 RW. 003 KELURAHAN ALALAK UTARA', NULL, NULL, NULL, NULL, '$2y$10$Rhr5giUnitdPyXxw1x9Si.QvHjZARy1ZrommLfJuK30c2QlE8AeQi'),
(331, 'Arie Fatma sari', '6371055210790007', 'Banjarmasin', '1978-10-12', 'Perempuan', 'Islam', '088145728181', NULL, 'Jl. Sultan Adam GG.Nusa Indah NO.54 RT.36 RW.03 KELURAHAN SURGI MUFTI', NULL, NULL, NULL, NULL, '$2y$10$WtKcTxXyeIObrUeOCbrwk.tfqljMvX9t6Sp.1GEpMsyZGS0atp/G6'),
(332, 'SEPTIA NUR DAMAYANTI', '6371046409840006', 'NGANJUK', '1984-09-24', 'Perempuan', 'Islam', '085849167570', NULL, 'JL. SUNGAI ANDAI KOMPLEK KAYU BULAN BLOK C6 NO. 60 RT. 62 RW.03 KELURAHAN SUNGAI ANDAI', NULL, NULL, NULL, NULL, '$2y$10$k37lkPC05WUmRlSNP5vIC.Cwl9eUqbdoQ/rE/zOPmcD8yUKy.UFC2'),
(333, 'HASTUTIK, ST', '3505176311780003', 'BLITAR', '1978-11-23', 'Perempuan', 'Islam', '085754411945', NULL, 'KOMP.  DRIYA PERMATA JL. JAMBRUD I RT.11 RW.03 KELURAHAN  HANDIL BAKTI KECAMATAN ALALAK', NULL, NULL, NULL, NULL, '$2y$10$OKNTSb9rdSXx31749jX9A.6SVxds9D4pILkh8JxhSAbguMSXpUqzC'),
(335, 'HAMDANAH', '6371047103720004', 'BANJARMASIN', '1972-03-31', 'Perempuan', 'Islam', '0', NULL, 'JL. PADAT KARYA KOMP. PONDOK SUNGAI ANDAI RT.03 RW.01 KELURAHAN SUNGAI ANDAI', NULL, NULL, NULL, NULL, '$2y$10$5G4JPC6Ubps9uPg3jtlKYOIpXdDjFQkn0GdsIb8izp4tKrQ/osUSG'),
(336, 'Anggi lia nanda', '6371046505880015', 'Banjarmasin', '1988-05-25', 'Perempuan', 'Islam', '08115135565', NULL, 'Komplek lili permata jalur 1A no.14', NULL, NULL, NULL, NULL, '$2y$10$//ZNs0dJqzTcPUPrQ3JwF.M4.IVkNrPyyx218TnYPfASVgFCNn2dG'),
(337, 'Muhammad Ismail', '6371022208730005', 'Banjarmasin', '1973-08-22', 'Laki-laki', 'Islam', '089696142090', NULL, 'Jl. Pangeran Antasari Rt.01 Rw.01 Pekapuran Raya Kecamatan Banjarmasin Timur', NULL, NULL, NULL, NULL, '$2y$10$LD48iy74ZUa1wEwdc8LWReYVCh.x3HWaoUuLJxCvkqDlGEKdK0m4i'),
(338, 'Muhammad Chayrudin Noer', '6471051409790005', 'Lumajang', '1979-09-14', 'Laki-laki', 'Islam', '08125128123', NULL, 'Jl. Nusantara Cluster Riverside Gg. A 28 Rt.04 Rw.12 Kaliwates Jember', NULL, NULL, NULL, NULL, '$2y$10$gp3nzcjWzpgMWdTD/KtY4OMrDQABxGcmoEczaUDQIFVdq1cHxPdJy'),
(339, 'Ehda Wardawati', '6371045407690003', 'Banjarmasin', '2021-07-15', 'Perempuan', 'Islam', '081348063406', NULL, 'Jl. Simpang Cemara Raya II/131 Rt.40 Rw.01 Kelurahan Sungai Miai', NULL, NULL, NULL, NULL, '$2y$10$VCcX/4YZz7dweOcCmRLy.ekXwTEXhnBQ4r9a4UcQjvnh.jVwn6SyG'),
(340, 'Muhammad Sahruji', '6371041506670008', 'Haruyan', '1967-06-15', 'Laki-laki', 'Islam', '085100669818', NULL, 'Jl. Sultan Adam Komp. H. Andir Temb. Musium/37 Rt.13 Rw.02 Kelurahan Sungai Jingah', NULL, NULL, NULL, NULL, '$2y$10$IKbAwmJrcnBeoNzyGbWq4uw9ilLtM/PrloIgEFkjFCH/T2Fa3fDGi'),
(341, 'Nurlita', '6371046606890004', 'Banjarmasi', '1989-06-26', 'Perempuan', 'Islam', '087814277361', NULL, 'Jl. Museum Perjuangan Rt.14 Rw.02 Kelurahan Sungai Jingah', NULL, NULL, NULL, NULL, '$2y$10$9agzV9DUW6gTw0K0fSmyaOLegcX6wZ40kiYWwC49b3RBU2Y84Kw2y'),
(342, 'Sharly Sugiarto', '6371027010900007', 'Banjarmasin', '1990-10-30', 'Perempuan', 'Kristen', '08980303000', NULL, 'Jl. Pramuka Gg. Siaga III No.29 Rt.01 Rw.01 Kelurahan Pengambangan', NULL, NULL, NULL, NULL, '$2y$10$GMherKVodTsuIobcuTiKsOLH9p3JRed/0k7Hl7LsuM7ySrtDctVMq'),
(343, 'Agustina Farida', '6371045708660015', 'Banjarmasin', '1966-08-17', 'Perempuan', 'Islam', '085101667289', NULL, 'Jl. Simpang Gusti 6 RT 31 No 81 Banjarmasin', NULL, NULL, NULL, NULL, '$2y$10$Ck8pmH4pAco8AIAOt4HfHOfHpTwYKDLeTM46mXAfhZpTQGjb2O.56'),
(344, 'YUYU SEPRIANTI', '6309064309760002', 'BANJARMASIN', '1976-09-03', 'Perempuan', 'Islam', '085256067037', NULL, 'JL. ANGSANA IV NO. 57 BLOK V  RT.24 RW.02 KELURAHAN  SUNGAI MIAI ', NULL, NULL, NULL, NULL, '$2y$10$zqvyJllKjbnL9ZvDjb.FteS67MOKx8LMUugBf7FF2Ij5RHEu6k/LC'),
(345, 'SYAHRI RAHMAN', '08595246869', 'BANJARMASIN', '1967-07-12', 'Perempuan', 'Islam', '085952466869', NULL, 'JL.  HKSN KOMP.  AMD PERMAI BLOK C5 NO.130 RT.17 RW.01 KELURAHAN ALALAK TENGAH', NULL, NULL, NULL, NULL, '$2y$10$Z8BZcBsVzXm6b5rMhimF0eDZ/sK0N.yH7XYbjiXtAoXivLkM2Fd/a'),
(346, 'KURNIAWAN SAMSUNI', '6371051303960006', 'BANJARMASIN', '1996-05-13', 'Laki-laki', 'Islam', '081389120121', NULL, 'JL. HARYONO MT NO.65/28 RT.03 RW.01 KELURAHAN KERTAK BARU ILIR KECAMATAN BANJARMASIN TENGAH', NULL, NULL, NULL, NULL, '$2y$10$5siSlCyLkHqLFhPhUhd6FO5IZyFyNNIhutIik7Ptg4rPoYYbslnre'),
(347, 'SOERYAWATY SYAMSIE', '6371056303660005', 'BANJARMASIN', '1966-03-23', 'Perempuan', 'katolik', '0', NULL, 'JL. PADAT KARYA KOMP. KAYU BULAN BLOK B II NO.35 RT.61 RW.03 KELURAHAN SUNGAI ANDAI', NULL, NULL, NULL, NULL, '$2y$10$Zej2G6scW51VjY3yO4Gcm.WnK.SRiTUwWix4kfFCZTjBgWar7KwtW'),
(348, 'Ramadhani', '6371041112930006', 'Banjarmasin', '1993-12-11', 'Laki-laki', 'Islam', '08115122261', NULL, 'Jl. Kuin Utara Rt 3 no 78 b. Banjarmasin utara', NULL, NULL, NULL, NULL, '$2y$10$3mJZS3e1BKFYBgcByJ0vW.fMAE8RAZ1nOzwK5YRwBUODNyc4LA4Na'),
(349, 'BONALI, SE', '6371040507800011', 'JEMBER', '1980-07-05', 'Laki-laki', 'Islam', '081257028833', NULL, 'JL. HKSN KOMP. SURYA GEMILANG BLOK H NO.23 RT.20 KELURAHAN  KUIN UTARA', NULL, NULL, NULL, NULL, '$2y$10$4kjDrWbv/JpR11U7ZCrPTO.HpN/TOS74Cicks0JMyJr0Imng610Hu'),
(350, 'WASMUN', '6371040805740003', 'KAPUAS', '1974-05-08', 'Laki-laki', 'Islam', '087815401213', NULL, 'JL.SIMP GUSTI HASAN BASRI NO 97A  RT 034 RW 008 KEL ALALAK UTARA KEC BANJARMASIN UTARA    ', NULL, NULL, NULL, NULL, '$2y$10$H/dvAj0CsGsPLw.LespNKuWsKrEA9GGsQcovtnSdkC0or5oROPqhm'),
(352, '1', '11111111111111111111', '1', '2021-05-25', 'Laki-laki', 'Islam', '1', NULL, '1', NULL, NULL, NULL, NULL, '$2y$10$VRJzcjOko3CK2FjieCIVxOBhZ90teG.gnwje6gevMNh9YveC0fDIK'),
(353, 'EDY  SUYANTO', '6371040306630005', 'SAMPIT', '1963-06-03', 'Laki-laki', 'Islam', '081348600034', NULL, 'Jl. Cendana IIC No.5 Rt.001 Rw.001 Banjarmasin', NULL, NULL, NULL, NULL, '$2y$10$HGfifwQp08OlAY63scAAfe/o0YMFaSwgYF87bKUQ1qiMRCZKgZIJe'),
(354, 'EKA MAYA ASRI', '6371044409820010', 'BANJARMASIN', '1982-09-04', 'Perempuan', 'Islam', '085249474042', NULL, 'JL. SIMPANG TANGGA KAYUTANGI RT.37 RW.03 KELURAHAN ALALAK UTARA', NULL, NULL, NULL, NULL, '$2y$10$HSk2xZfn9HDmii6VJe.0TOUl84C9mDF6toRtXVSbv2FsnyS9BikV6'),
(355, 'INGE GESINOVITA, SH', '6371047011730002', 'JAKARTA', '1973-11-30', 'Perempuan', 'Islam', '08115016042', NULL, 'JL TEMBUS PERUMNAS NO.06 RT.41 RW.03 KELURAHAN ALALAK UTARA', NULL, NULL, NULL, NULL, '$2y$10$.3n.oWAyjG.GoCf.JEQDVOK0YmwdHClrdaWbAIRFvPTKQTFb1EiXK'),
(356, 'SUMASTINI', '637104690310003', 'BANJARMASIN', '1971-03-29', 'Perempuan', 'Islam', '085248718366', NULL, 'JL. MESJID GG. MULIA NO.74 RT.15 RW.01 KELURAHAN SURGI MUFTI', NULL, NULL, NULL, NULL, '$2y$10$Fs/rvG4/ReplXBLYEql2OeCd0e8ANsnwXUnv6TpZbyul4C.lRu2py'),
(357, 'FITRIANI', '6371044411730004', 'BANJARMASIN', '1973-11-04', 'Perempuan', 'Islam', '081352124201', NULL, 'JL.  BRIG. H. HASAN BASRI GG. TANGGA NO.13 RT.38 RW.01 KELURAHAN SUNGAI MIAI', NULL, NULL, NULL, NULL, '$2y$10$Rxq0IxSfxDG11VN4YqxAQugVkkk8KMaAfxYh/rWqJmBoQ95n0qv.q'),
(358, 'Rizki Yuwanda', '6371052009880005', 'Banjarmasin', '1988-09-20', 'Laki-laki', 'Islam', '087810979460', NULL, 'Banjarmasin', NULL, NULL, NULL, NULL, '$2y$10$TM1X9ZWIUBsmpNg7EbY/0uPa3g558rGe5NUTmqBfnM4AeHDY7pPQe'),
(359, 'DRA. NIKMAH', '3204326304650009', 'BANJARMASIN', '1965-04-22', 'Perempuan', 'Islam', '087770230777', NULL, 'JL.  PULO PIUN I NO.08 RT.05 RW.04 KELURAHAN CIDENG KECAMATAN GAMBIR DKI JAKARTA', NULL, NULL, NULL, NULL, '$2y$10$KnnPk2.pvnEy/ZYDiTc82.W4L/415iN9DIDOjnj1BzuRXMVGisK/m'),
(360, 'Selamat Siburian', '6371041303590002', 'Medan', '1959-03-13', 'Laki-laki', 'Islam', '0811509522', NULL, 'Jl. Hasan Basri Komp. Pondok Metro Indah Blok D No.04 Rt.39 Rw.03 Kelurahan Alalak Utara', NULL, NULL, NULL, NULL, '$2y$10$FmqzgmDSQpj4bapTClTnnu/dw1bBS0lU7OYywvdBoXfEogzYTVvc2'),
(361, 'Hj. Kemala Sari', '6371046109870006', 'Banjarmasin', '1987-09-21', 'Perempuan', 'Islam', '0', NULL, 'Jl. Kayu Tangi II Komp. Kejaksaan  No.05 Rt.19 Rw.02 Kelurahan Pangeran', NULL, NULL, NULL, NULL, '$2y$10$qJPQR8ivf3ASbUOXH.tuOONcgn.XGFNJU/8XSH09QR9OPKLx2K6y6'),
(362, 'Hapizi anwar', '63710410506670010', 'Banjarmasin', '1967-06-15', 'Laki-laki', 'Islam', '081952391328', NULL, 'Jl. Sungai jingah no 16, surgi mufti, banjarmasin utara', NULL, NULL, NULL, NULL, '$2y$10$PP5IzQO/MKrOFUc5pChq/O8hIdWm.yFHY2Kl8sQI4N0TJLWjddeAm'),
(363, 'IDA WATI', '6371054401820006', 'BANJARMASIN', '1982-01-04', 'Perempuan', 'Islam', '085389090008', NULL, 'JL.  PADAT KARYA KOMP. PURNAMA PERMAI 2 JALUN 8 RT.60 RW.01 KELURAHAN SUNGAI ANDAI', NULL, NULL, NULL, NULL, '$2y$10$oSHrtCxfBiFz7/wnLy8WGOHcfS09Ix/PJHjtPl5X98QcsaSzviyLW'),
(364, 'Ade yulia anggeraini', '6301035107950005', 'Pelaihari', '1995-07-11', 'Perempuan', 'Islam', '08979415161', NULL, 'Jl. Balirejo rt.17 A Rw. 06 Kelurahan Angsau Kecamatan Pelaihari', NULL, NULL, NULL, NULL, '$2y$10$7IJVOZ2Ux4z86BURB8FSme7fJq2q.4nCNv.OPDqkVeCcPFxm0iJE6'),
(365, 'Hapizi anwar', '6371041506670010', 'Banjarmasin', '1967-06-15', 'Laki-laki', 'Islam', '081952391328', NULL, 'Jl. Sungai jingah no.16 Rt.16 Rw.02 Kelurahan Surgi Mufti', NULL, NULL, NULL, NULL, '$2y$10$veF4UVdlnjyUJRnXeq5iR.xB/V7gLBWjOiUE6uaw6fDceIq545Vni'),
(366, 'Eka Ismaya', '6371045206810004', 'TABALONG', '1981-06-12', 'Perempuan', 'Islam', '085246673538', NULL, 'JL HKSN KOMPLEK SURYA GEMILANG RT 19 RW 02 KEL KUIN UTARA KEC BANJARMASIN UTARA', NULL, NULL, NULL, NULL, '$2y$10$XikS6yMNOibeAGrR6MPubeMpFY6UE5u1Rj9snl4EAm4487VWHJUlC'),
(367, 'annisa rizqi mirani', '6202066202960005', 'surabaya', '1996-02-22', 'Perempuan', 'Islam', '085349809955', NULL, 'jl sultan adam no 17 rt 22, kelurahan surgi mufti, kecamatan banjarmasin utara', NULL, NULL, NULL, NULL, '$2y$10$DQRYx87P3y5p2tzu5lT.KuR9zxzW6Xl/nrzMz12om7OpF4MDZoT0q'),
(368, 'GUSTI MUHAMMAD RICO PRIBADI', '6371040110940003', 'BANJARMASIN', '1994-10-01', 'Laki-laki', 'Islam', '082154343654', NULL, 'JL. SULTAN ADAM GG. H. ISMAIL RT.23 RW.02 KELURAHAN SURGI MUFTI', NULL, NULL, NULL, NULL, '$2y$10$lEU4lM/4l6TC5xRTDV8ysOQZ2lQBfHNEc3dVHF4J2krbXeetBl2jC'),
(369, 'BERTHINE CHERSIANA', '081352765263', 'BUNTHOK', '1967-04-18', 'Perempuan', 'Islam', '081352765263', NULL, 'JL. BRIGJEN H. HASAN BASRI NO.117 RT.39 RW.03 KELURAHAN ALALAK UTARA', NULL, NULL, NULL, NULL, '$2y$10$7xFKOErW6yYmskGgTwOZMOGRkFir8TKRqKt0oXYNbd7tCednVeHTm'),
(370, 'Erwansyah', '6371040210880008', 'Banjarmasin', '1988-10-02', 'Laki-laki', 'Islam', '083150060616', NULL, 'Jln. Sungai Miai Dalam Rt. 01', NULL, NULL, NULL, NULL, '$2y$10$sk7MiJwmVUubQAL7pFmtruJpUM38vIM5ruZZXJTbYaTdvXZNbW.6.'),
(371, 'SELVI ERIANI', '6371045610760004', 'Banjarmasin', '1976-10-16', 'Laki-laki', 'Islam', '085389946633', NULL, 'Jl. Pangeran Gg. Rahman No.58 Rt.13 Rw.01 Kelurahan Pangeran Banjarmasin 70124', NULL, NULL, NULL, NULL, '$2y$10$7yMwsCMTwYJ4i7dVCxYkyukQALOixcrGtEk9lD/hjZA3lEc0lNzxq'),
(372, 'KARTINI', '6371044601680004', 'BANJARMASIN', '1968-01-06', 'Perempuan', 'Islam', '08125112125', NULL, 'JL. SIMPANG GUSTI KOMP. MUTIARA RT.32  RW.03 KELURAHAN ALALAK UTARA', NULL, NULL, NULL, NULL, '$2y$10$CViHNfyiDwTBCbQIr64tkeSpxKm2COtoZgcLbuMYsrbj64kX2rHmK'),
(373, 'LITA WIJAYA', '6371044204740010', 'BANJARMASIN', '1974-04-02', 'Perempuan', 'Kristen', '0', NULL, 'JL. H. HASAN BASRI NO.02 RT.28 RW.03 KELURAHAN SUNGAI MIAI', NULL, NULL, NULL, NULL, '$2y$10$dVkSEJB1TZ73TlJM733.ref41RMCyX7jHLd9veFeJlro8gphM/LPq'),
(374, 'M.Nashroh Nasyir RA.', '6371053004680002', 'Solo', '1968-04-30', 'Laki-laki', 'Islam', '082124658029', NULL, 'Jl. pekapuran A no.25 rt. 09 rw.02 kelurahan sungai baru kecamatan banjarmasin tengah', NULL, NULL, NULL, NULL, '$2y$10$Mx2a4m7byGgyzROHUdf5meOHmhCGcSUG06mQzIKFUcMVbnY1Bgddy'),
(375, 'EKO PURWANTO', '6371022002740005', 'BANJARMASIN', '1974-02-20', 'Laki-laki', 'Islam', '081251736789', NULL, 'JL. PERDAGANGAN RAYA NO.49 RT.24 RW.02 KELURAHAN KUIN UTARA', NULL, NULL, NULL, NULL, '$2y$10$w3T6ixLip44dct8DfJ.qA.UrAuSZtll47l8baXD1mf06euaP2Qql2'),
(376, 'RAUFAN TAZAKKA', '351082302890002', 'SIDOARJO', '1989-02-23', 'Laki-laki', 'Islam', '08174104131', NULL, 'JL. YUDISTIRA II NO.18 RT.18 RW.02 KELURAHAN PEMURUS DALAM KECAMATAN BANJARMASIN SELATAN', NULL, NULL, NULL, NULL, '$2y$10$bbd85t/PPn1Y5R8hFPUrDu3sXtfwOjIcQ8Nc.TBZjl91.gia7lSdq'),
(377, 'Gusti MF', '6304051404960001', 'Berangas', '1996-04-14', 'Laki-laki', 'Islam', '087815357404', 'gustiroby555@gmail.com', 'Jl. Berangas Gang. Mufakat', '076', '006', '002', 'Alalak Selatan', '$2y$10$fvTnKSZcsi.dEzRMKs8nWOcMvR0OGYaTUg6p.dMcPQe1ZA0YNfs0K'),
(378, 'KAMTI RAHAYU', '6371045108770011', 'PONOROGO', '1977-08-11', 'Perempuan', 'Islam', '081349484879', 'rahayukamti02@gmail.com', 'JL. CEMARA UJUNG', '00', '22', '02', 'Sungai Miai', '$2y$10$ZY0KruVDp2Vjh1pdGD52mebDj6M6odNKTky3v.ZmOsLNndbuVqlGW'),
(379, 'Jilan Rianto', '6371041508720007', 'Tulung Agung', '1972-08-15', 'Laki-laki', 'Islam', '081345331257', 'riiskedw@gmail.com', 'Jl. Cemara Ujung Komplek Al-Kautsar ', '53', '46', '3', 'Alalak Utara', '$2y$10$dowR39DxQRND5vTf0xRLfuvxh41gejmadpunxrpB8Fn1qC1h1qFje'),
(380, 'SURYONO', '3506191909830002', 'KEDIRI', '1983-09-19', 'Laki-laki', 'Islam', '081253910855', 'Syono8598@gmail.com', 'Komp. Al - Hidayah Blok V', '108', '41', '03', 'Sungai Andai', '$2y$10$4gRtGJWGt1LI3LvLKNS0/.oogK43Vr3GMqHkt8afiOIe8htY57WpW'),
(381, 'DANNY SUHARDI', '6371030902820007', 'BANJARMASIN', '1982-02-09', 'Laki-laki', 'Kristen', '081250008878', 'duniawanita@gmail.com', 'JL. SULTAN ADAM ', '10', '16', '02', 'Sungai Miai', '$2y$10$x/SnRJNtr4pQFOd/jGO0VOTpkVw6SET2blTsvSRaTpXQ9nsHrPK66'),
(382, 'NAUVAL FUADY', '6371021312790008', 'BANJARMASIN', '1979-12-13', 'Laki-laki', 'Islam', '081349643388', 'maratusbjm@gmail.com', 'JL . PINUS RAYA  ', '07', '19', '002', 'Sungai Miai', '$2y$10$PgnxT6r1IAxGE/EibHIgcuLBGxe4rWC53q10TEgmMamVsFMENP3/u'),
(383, 'Syarifudin', '6371010803800009', 'Banjarmasin', '1978-03-18', 'Laki-laki', 'Islam', '081349500072', 'mikafebrianti2@gmail.com', 'Jln. hksn komp. amd permai blok 7c ', '185', '016', '001', 'Alalak Tengah', '$2y$10$MUU5sxGNEWCIEoDBTvXeaOGo6lADX3omh7HeJCSmgXIBhg0EBDVQy'),
(384, 'Maria Yuliani', '6371034506900016', 'Banjarmasin', '1990-06-05', 'Perempuan', 'Kristen', '082254886589', 'maria.yuliani.ksl@gmail.com', 'Jl. Adhyaksa II ', '118', '027', '001', '', '$2y$10$s9AFKLJ55PT7oSP6rkac9OmwLawwNm7k40XFhI21b7G4TWHi1hyL.'),
(385, 'HADI DARIANI', '6371041612650002', 'BANJARMASIN', '1965-12-16', 'Laki-laki', 'Islam', '087716704384', 'hadibalago@gmail.com', 'JL. HKSN KOMP. HERLINA PERUM WARGA INDAH 3 BLOK A', '04', '14', '02', 'ALALAK SELATAN', '$2y$10$gDYHqfGeAe7xDFE1vcYN3eWyZrX99mYSZTEFo7Od.hGGJQgTUSheG'),
(386, 'ARLINA FAUZIAH, S.SI, Apt', '6371025710710005', 'BANJARMASIN', '1971-10-17', 'Laki-laki', 'Islam', '081348184383', 'radji1205201572@gmail.com', 'JL. A. YANI KM. 3,5 ', '277', '10', '01', 'KEBUN BUNGA', '$2y$10$xVsZc59z8gGAhV7V8L0dbeJfgYUFDG36UEGI4XnQ8urklzdnDhOji'),
(387, 'MENIK DEWITASARI', '6371016412810008', 'JAKARTA', '1981-12-24', 'Perempuan', 'Islam', '085391677474', 'kumonhksnbanjarmasin@gmail.com', 'JL. NAKULA XVI KOMP. BPP', '03', '26', '03', 'PEMURUS DALAM', '$2y$10$DrY06Bd9SB1RfTQrXlS4xOIdCI3lVZHpq1PKQyXfWU686EDKaSwG.'),
(388, 'MARHADI', '3173071107700003', 'JAKARTA', '1970-07-11', 'Laki-laki', 'Islam', '081294661252', 'M-Mayong@yahoo.com', 'KOMP. CEMARA IV BLOK.III ', '23', '28', '02', 'SUNGAI MIAI', '$2y$10$z7zbO8RvOO9/HFNRJXVj9e.WvU8m/k5zAvcGSB8Ss7ajDmIgeuon.'),
(389, 'NANIK SRINAWATI', '6371046202760003', 'Ponorogo', '1976-02-22', 'Perempuan', 'Islam', '082350545699', 'simpananfoto03@gmail.com', 'Komp. Kayu Tangi II Jalur III KB', '02', '16', '02', 'Pangeran', '$2y$10$iqh964va7ielWhVjcaYuj.NHDNAOgzieo6cnMZvnuy97.b/Hg6JDS'),
(391, 'S abd kadir j al idrus', '6371053005800007', 'Banjarmasin', '1980-05-30', 'Laki-laki', 'Islam', '0895383318455', 'sabdkadir27@gmail.com', 'Jl. Padat karya komplek herlina perkasa mutiara 6 no. 67 ', '67', '56', '004', 'Sungai andai', '$2y$10$qMKKG9gk2k5oZ1oQ.GEnoOwms3ctsYzVlff8Ynv2OFQDn5mt8zC.u'),
(392, 'HERMAN MOCHTAR SETIONO', '6371040309800005', 'BANJARMASIN', '1980-09-03', 'Laki-laki', 'Kristen', '0', 'fatika3157@gmail.com', 'JL. H. HASAN BASRI KAYU TANGI BLOK C', '29', '34', '03', 'ALALAK UTARA', '$2y$10$KiNRotl0u.WxZjPUTfYnBO.FdTrDv3FLate7dL00nkXI8vYfbU5Fe'),
(393, 'HILMI HASAN, SE', '6371041011670005', 'KOTABARU', '1967-11-10', 'Laki-laki', 'Islam', '0', 'fatika3157@gmail.com', 'JL. SUNGAI MIAI KOMP. BULAKINDO ', '76', '23', '02', 'ALALAK UTARA', '$2y$10$2BP79Tewlr9KQUysavuhPezjyNZNU0F1E1/Dq1LNAPXUNPNyWRrXi'),
(394, 'tika', '1234567891000000', 'BANJARMASIN', '2021-01-01', 'Perempuan', 'Islam', '12345678910', 'tika@gmail.com', 'jl. perdagangan', '18', '26', '02', 'ALALAK UTARA', '$2y$10$lRD6dUQHPP20FXDTBSEl/OlOlMj.qkftdHbPCdaBxpXFxmgSC5uIK'),
(395, 'Ivan Alfatih Saputra AY', '1234567890', 'metro', '1994-11-17', 'Laki-laki', 'Islam', '0812702239000', 'alfatihivan@gmail.com', 'metro', '1', '1', '1', 'metro', '$2y$10$574h8IGXKEFZMVb7RnNU7OEfWF4rtf/lmmFHI/ZzmEzg9ouuCvX9y');

-- --------------------------------------------------------

--
-- Table structure for table `nomor_urut_iumk`
--

CREATE TABLE `nomor_urut_iumk` (
  `id_no` int(11) NOT NULL,
  `nomor_urut` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `nomor_urut_iumk`
--

INSERT INTO `nomor_urut_iumk` (`id_no`, `nomor_urut`) VALUES
(1, '004');

-- --------------------------------------------------------

--
-- Table structure for table `nomor_urut_sktu`
--

CREATE TABLE `nomor_urut_sktu` (
  `id_no` int(10) NOT NULL,
  `nomor_urut` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `nomor_urut_sktu`
--

INSERT INTO `nomor_urut_sktu` (`id_no`, `nomor_urut`) VALUES
(1, '1111111117');

-- --------------------------------------------------------

--
-- Table structure for table `pengajuan`
--

CREATE TABLE `pengajuan` (
  `id_pengajuan` int(10) NOT NULL,
  `pengajuan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pengajuan`
--

INSERT INTO `pengajuan` (`id_pengajuan`, `pengajuan`) VALUES
(1, 'PINDAH DATANG (ANTAR KECAMATAN/DAERAH)'),
(2, 'PENGURANGAN ANGGOTA KELUARGA'),
(3, 'PERUBAHAN ALAMAT'),
(4, 'PERUBAHAN BIODATA'),
(5, 'PENAMBAHAN ANGGOTA KELUARGA'),
(6, 'PINDAH KELUAR ANTAR KECAMATAN'),
(8, 'PERUBAHAN PENDIDIKAN'),
(9, 'PERUBAHAN LAINNYA'),
(10, 'KK BARU');

-- --------------------------------------------------------

--
-- Table structure for table `peraturan_iumk`
--

CREATE TABLE `peraturan_iumk` (
  `id_peraturan` int(11) NOT NULL,
  `peraturan` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `peraturan_iumk`
--

INSERT INTO `peraturan_iumk` (`id_peraturan`, `peraturan`) VALUES
(1, '<div style=\"text-align: justify;\"><h4 style=\"margin-left: 0cm;\"><span lang=\"IN\" style=\"font-size:12.0pt;\r\nline-height:115%;font-family:\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><span style=\"font-family: Verdana;\">Berdasarkan pasal 3\r\nayat (3) Peraturan Pemerintah Nomor 9 Tahun 1975 dan Peraturan Menteri Agama RI</span></span></h4><h4 style=\"margin-left: 0cm;\"><span lang=\"IN\" style=\"font-size:12.0pt;\r\nline-height:115%;font-family:\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><span style=\"font-family: Verdana;\">Nomor 20 Tahun 2019 pasal 3 ayat (4) tentang Permohonan Izin Melangsungkan</span></span></h4><h4 style=\"margin-left: 0cm;\"><span lang=\"IN\" style=\"font-size:12.0pt;\r\nline-height:115%;font-family:\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><span style=\"font-family: Verdana;\">Perkawinan kurang dari batas waktu&nbsp; 10\r\n(sepuluh) hari, maka mengingat surat-surat yang</span></span></h4><h4 style=\"margin-left: 0cm;\"><span lang=\"IN\" style=\"font-size:12.0pt;\r\nline-height:115%;font-family:\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><span style=\"font-family: Verdana;\">diperlukan sudah lengkap dan\r\nkedua belah pihak telah menetapkan waktu, dengan ini kami</span></span></h4><h4 style=\"margin-left: 0cm;\"><span lang=\"IN\" style=\"font-size:12.0pt;\r\nline-height:115%;font-family:\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><span style=\"font-family: Verdana;\">menyetujui\r\ndilangsungkannya perkawinan antara:</span></span><span style=\"font-family: Arial;\">ï»¿</span></h4></div>');

-- --------------------------------------------------------

--
-- Table structure for table `peraturan_sktu`
--

CREATE TABLE `peraturan_sktu` (
  `id_peraturan` int(11) NOT NULL,
  `peraturan` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `peraturan_sktu`
--

INSERT INTO `peraturan_sktu` (`id_peraturan`, `peraturan`) VALUES
(9, '<p><br></p>');

-- --------------------------------------------------------

--
-- Table structure for table `polling`
--

CREATE TABLE `polling` (
  `id_polling` int(11) NOT NULL,
  `sangatbaik` bigint(20) NOT NULL DEFAULT 0,
  `baik` bigint(20) NOT NULL DEFAULT 0,
  `cukup` bigint(20) NOT NULL DEFAULT 0,
  `kurang` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `polling`
--

INSERT INTO `polling` (`id_polling`, `sangatbaik`, `baik`, `cukup`, `kurang`) VALUES
(1, 19, 3, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `posisi_berkas`
--

CREATE TABLE `posisi_berkas` (
  `id_posisi` int(11) NOT NULL,
  `posisi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `posisi_berkas`
--

INSERT INTO `posisi_berkas` (`id_posisi`, `posisi`) VALUES
(1, 'Kepala Seksi'),
(2, 'Sekertaris Kecamatan'),
(3, 'Camat'),
(4, 'Staf Pelayanan');

-- --------------------------------------------------------

--
-- Table structure for table `rekomendasi_pendirian_paud`
--

CREATE TABLE `rekomendasi_pendirian_paud` (
  `id_rpp` int(11) NOT NULL,
  `tgl_permohonan` date NOT NULL,
  `kelurahan` varchar(50) NOT NULL,
  `nama_pendiri` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `nama_sekolah` text NOT NULL,
  `alamat_sekolah` text NOT NULL,
  `keterangan` text DEFAULT NULL,
  `tgl_selesai` date DEFAULT NULL,
  `id_posisi` int(11) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rekomendasi_pendirian_paud`
--

INSERT INTO `rekomendasi_pendirian_paud` (`id_rpp`, `tgl_permohonan`, `kelurahan`, `nama_pendiri`, `alamat`, `nama_sekolah`, `alamat_sekolah`, `keterangan`, `tgl_selesai`, `id_posisi`, `status`) VALUES
(1, '2024-01-02', 'KELURAHAN HADIMULYO TIMUR', 'adada', 'efe', 'sfse', 'sfes', '', NULL, 1, 'Belum Diproses'),
(2, '2024-01-02', 'KELURAHAN HADIMULYO TIMUR', 'adada', 'yy', 'uu', 'uu', '', NULL, 1, 'Dalam Proses');

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_tgl_sktu`
--

CREATE TABLE `riwayat_tgl_sktu` (
  `id_riwayat` int(11) NOT NULL,
  `id_masyarakat` int(11) NOT NULL,
  `id_sktu` int(11) NOT NULL,
  `nomor_sktu` varchar(50) DEFAULT NULL,
  `tgl_dibuat` date DEFAULT NULL,
  `terakhir_diperpanjang` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id_role` int(11) NOT NULL,
  `role` varchar(50) NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id_role`, `role`, `keterangan`) VALUES
(1, 'Admin', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `sktu_baru`
--

CREATE TABLE `sktu_baru` (
  `id_sktu` int(11) NOT NULL,
  `id_masyarakat` int(11) NOT NULL,
  `nomor_sktu` varchar(50) NOT NULL,
  `nama_pemohon` varchar(50) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `tgl` datetime NOT NULL,
  `peraturan` longtext NOT NULL,
  `nama_perusahaan` text NOT NULL,
  `alamat_perusahaan` text NOT NULL,
  `nama_pimpinan_perusahaan` varchar(50) NOT NULL,
  `alamat_kediaman` text NOT NULL,
  `kegiatan_usaha` varchar(50) NOT NULL,
  `masa_berlaku_awal` date DEFAULT NULL,
  `masa_berlaku_akhir` date DEFAULT NULL,
  `sifat` varchar(30) NOT NULL,
  `nama_camat` varchar(50) NOT NULL,
  `nip` varchar(30) NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  `kelengkapan` varchar(20) DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `tgl_selesai` date DEFAULT NULL,
  `id_posisi` int(11) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sktu_perpanjangan`
--

CREATE TABLE `sktu_perpanjangan` (
  `id_sktu` int(11) NOT NULL,
  `id_masyarakat` int(11) NOT NULL,
  `nomor_sktu` varchar(50) NOT NULL,
  `nama_pemohon` varchar(50) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `tgl` datetime NOT NULL,
  `peraturan` longtext NOT NULL,
  `nama_perusahaan` text NOT NULL,
  `alamat_perusahaan` text NOT NULL,
  `nama_pimpinan_perusahaan` varchar(50) NOT NULL,
  `alamat_kediaman` text NOT NULL,
  `kegiatan_usaha` varchar(50) NOT NULL,
  `masa_berlaku_awal` date DEFAULT NULL,
  `masa_berlaku_akhir` date DEFAULT NULL,
  `sifat` varchar(30) NOT NULL,
  `nama_camat` varchar(50) NOT NULL,
  `nip` varchar(30) NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  `kelengkapan` varchar(20) DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `tgl_selesai` date DEFAULT NULL,
  `id_posisi` int(11) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `status_nikah`
--

CREATE TABLE `status_nikah` (
  `id_status` int(5) NOT NULL,
  `status_nikah` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `status_nikah`
--

INSERT INTO `status_nikah` (`id_status`, `status_nikah`) VALUES
(2, 'Belum Kawin'),
(5, 'Janda'),
(7, 'Kawin'),
(8, 'Duda');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(50) NOT NULL,
  `nip` varchar(30) NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` text NOT NULL,
  `id_role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama_user`, `nip`, `jabatan`, `username`, `password`, `id_role`) VALUES
(1, 'Maya filiantari', '-', 'admin', 'mayafiliantari', '$2y$10$cQum66eKkxRXNopUiIPNKunStfTfzVYxWdvLREfxWlnhJLK0uAlm2', 1),
(3, 'admin', '1234', 'admin', 'admin', '$2y$10$6e96GeWrEf/RAPDZ1cFWdOO1.Mq2l4oPZmtNOfSNOK.GCSUHMZ8mC', 1),
(4, 'Dinar Bias Langensari', '-', 'Admin', 'dinarbias', '$2y$10$xVynNtXcfZupenPv//dx1.4cf0X9e.IlqWbIhHTG0Luj7ZumHxdDO', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agama`
--
ALTER TABLE `agama`
  ADD PRIMARY KEY (`id_agama`);

--
-- Indexes for table `ahli_waris`
--
ALTER TABLE `ahli_waris`
  ADD PRIMARY KEY (`id_ahli_waris`),
  ADD UNIQUE KEY `id_ahli_waris` (`id_ahli_waris`),
  ADD UNIQUE KEY `id_ahli_waris_3` (`id_ahli_waris`),
  ADD UNIQUE KEY `id_ahli_waris_4` (`id_ahli_waris`),
  ADD KEY `id_ahli_waris_2` (`id_ahli_waris`);

--
-- Indexes for table `berkas`
--
ALTER TABLE `berkas`
  ADD PRIMARY KEY (`id_berkas`);

--
-- Indexes for table `blanko`
--
ALTER TABLE `blanko`
  ADD PRIMARY KEY (`id_blanko`);

--
-- Indexes for table `camat`
--
ALTER TABLE `camat`
  ADD PRIMARY KEY (`id_camat`);

--
-- Indexes for table `iumk`
--
ALTER TABLE `iumk`
  ADD PRIMARY KEY (`id_iumk`);

--
-- Indexes for table `kegiatan_usaha`
--
ALTER TABLE `kegiatan_usaha`
  ADD PRIMARY KEY (`id_kegiatan`);

--
-- Indexes for table `kelurahan`
--
ALTER TABLE `kelurahan`
  ADD PRIMARY KEY (`id_kelurahan`);

--
-- Indexes for table `lampiran_iumk`
--
ALTER TABLE `lampiran_iumk`
  ADD PRIMARY KEY (`id_lampiran`);

--
-- Indexes for table `lampiran_iumk_file`
--
ALTER TABLE `lampiran_iumk_file`
  ADD PRIMARY KEY (`id_file`);

--
-- Indexes for table `lampiran_sktu`
--
ALTER TABLE `lampiran_sktu`
  ADD PRIMARY KEY (`id_lampiran`);

--
-- Indexes for table `lampiran_sktu_file`
--
ALTER TABLE `lampiran_sktu_file`
  ADD PRIMARY KEY (`id_file`);

--
-- Indexes for table `legalisasi_imb`
--
ALTER TABLE `legalisasi_imb`
  ADD PRIMARY KEY (`id_imb`);

--
-- Indexes for table `legalisasi_izin_tower`
--
ALTER TABLE `legalisasi_izin_tower`
  ADD PRIMARY KEY (`id_izin_tower`);

--
-- Indexes for table `legalisasi_proposal`
--
ALTER TABLE `legalisasi_proposal`
  ADD PRIMARY KEY (`id_proposal`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `masyarakat`
--
ALTER TABLE `masyarakat`
  ADD PRIMARY KEY (`id_masyarakat`);

--
-- Indexes for table `nomor_urut_iumk`
--
ALTER TABLE `nomor_urut_iumk`
  ADD PRIMARY KEY (`id_no`);

--
-- Indexes for table `nomor_urut_sktu`
--
ALTER TABLE `nomor_urut_sktu`
  ADD PRIMARY KEY (`id_no`);

--
-- Indexes for table `pengajuan`
--
ALTER TABLE `pengajuan`
  ADD PRIMARY KEY (`id_pengajuan`);

--
-- Indexes for table `peraturan_iumk`
--
ALTER TABLE `peraturan_iumk`
  ADD PRIMARY KEY (`id_peraturan`);

--
-- Indexes for table `peraturan_sktu`
--
ALTER TABLE `peraturan_sktu`
  ADD PRIMARY KEY (`id_peraturan`);

--
-- Indexes for table `polling`
--
ALTER TABLE `polling`
  ADD PRIMARY KEY (`id_polling`);

--
-- Indexes for table `posisi_berkas`
--
ALTER TABLE `posisi_berkas`
  ADD PRIMARY KEY (`id_posisi`);

--
-- Indexes for table `rekomendasi_pendirian_paud`
--
ALTER TABLE `rekomendasi_pendirian_paud`
  ADD PRIMARY KEY (`id_rpp`);

--
-- Indexes for table `riwayat_tgl_sktu`
--
ALTER TABLE `riwayat_tgl_sktu`
  ADD PRIMARY KEY (`id_riwayat`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id_role`);

--
-- Indexes for table `sktu_baru`
--
ALTER TABLE `sktu_baru`
  ADD PRIMARY KEY (`id_sktu`);

--
-- Indexes for table `sktu_perpanjangan`
--
ALTER TABLE `sktu_perpanjangan`
  ADD PRIMARY KEY (`id_sktu`);

--
-- Indexes for table `status_nikah`
--
ALTER TABLE `status_nikah`
  ADD PRIMARY KEY (`id_status`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `id_role` (`id_role`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agama`
--
ALTER TABLE `agama`
  MODIFY `id_agama` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ahli_waris`
--
ALTER TABLE `ahli_waris`
  MODIFY `id_ahli_waris` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=430;

--
-- AUTO_INCREMENT for table `berkas`
--
ALTER TABLE `berkas`
  MODIFY `id_berkas` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `blanko`
--
ALTER TABLE `blanko`
  MODIFY `id_blanko` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `camat`
--
ALTER TABLE `camat`
  MODIFY `id_camat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `iumk`
--
ALTER TABLE `iumk`
  MODIFY `id_iumk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `kegiatan_usaha`
--
ALTER TABLE `kegiatan_usaha`
  MODIFY `id_kegiatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `kelurahan`
--
ALTER TABLE `kelurahan`
  MODIFY `id_kelurahan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `lampiran_iumk`
--
ALTER TABLE `lampiran_iumk`
  MODIFY `id_lampiran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `lampiran_iumk_file`
--
ALTER TABLE `lampiran_iumk_file`
  MODIFY `id_file` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=572;

--
-- AUTO_INCREMENT for table `lampiran_sktu`
--
ALTER TABLE `lampiran_sktu`
  MODIFY `id_lampiran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `lampiran_sktu_file`
--
ALTER TABLE `lampiran_sktu_file`
  MODIFY `id_file` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2018;

--
-- AUTO_INCREMENT for table `legalisasi_imb`
--
ALTER TABLE `legalisasi_imb`
  MODIFY `id_imb` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `legalisasi_izin_tower`
--
ALTER TABLE `legalisasi_izin_tower`
  MODIFY `id_izin_tower` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `legalisasi_proposal`
--
ALTER TABLE `legalisasi_proposal`
  MODIFY `id_proposal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1296;

--
-- AUTO_INCREMENT for table `masyarakat`
--
ALTER TABLE `masyarakat`
  MODIFY `id_masyarakat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=396;

--
-- AUTO_INCREMENT for table `nomor_urut_iumk`
--
ALTER TABLE `nomor_urut_iumk`
  MODIFY `id_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `nomor_urut_sktu`
--
ALTER TABLE `nomor_urut_sktu`
  MODIFY `id_no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pengajuan`
--
ALTER TABLE `pengajuan`
  MODIFY `id_pengajuan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `peraturan_iumk`
--
ALTER TABLE `peraturan_iumk`
  MODIFY `id_peraturan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `peraturan_sktu`
--
ALTER TABLE `peraturan_sktu`
  MODIFY `id_peraturan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `polling`
--
ALTER TABLE `polling`
  MODIFY `id_polling` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `posisi_berkas`
--
ALTER TABLE `posisi_berkas`
  MODIFY `id_posisi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rekomendasi_pendirian_paud`
--
ALTER TABLE `rekomendasi_pendirian_paud`
  MODIFY `id_rpp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `riwayat_tgl_sktu`
--
ALTER TABLE `riwayat_tgl_sktu`
  MODIFY `id_riwayat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=299;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id_role` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `sktu_baru`
--
ALTER TABLE `sktu_baru`
  MODIFY `id_sktu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=302;

--
-- AUTO_INCREMENT for table `sktu_perpanjangan`
--
ALTER TABLE `sktu_perpanjangan`
  MODIFY `id_sktu` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `status_nikah`
--
ALTER TABLE `status_nikah`
  MODIFY `id_status` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
