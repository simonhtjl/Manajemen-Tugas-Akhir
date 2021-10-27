-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Okt 2021 pada 14.42
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 7.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel-crud`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `document`
--

CREATE TABLE `document` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `document`
--

INSERT INTO `document` (`id`, `judul`, `description`, `file`, `user_id`, `created_at`, `updated_at`) VALUES
(7, 'SRS', 'Revisi 2', 'Laporan-penjualan-produk-1024x499.png', 48, '2020-05-07 11:46:54', '2021-01-13 16:55:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosen`
--

CREATE TABLE `dosen` (
  `id` int(11) NOT NULL,
  `nidn` varchar(20) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `prodi_id` int(11) NOT NULL,
  `status` varchar(191) NOT NULL,
  `jabatan` varchar(255) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `dosen`
--

INSERT INTO `dosen` (`id`, `nidn`, `nama`, `prodi_id`, `status`, `jabatan`, `user_id`, `created_at`, `updated_at`) VALUES
(2, '	0119098101', 'Anthon Roberto Tampubolon, S.Kom, M.T.', 2, 'Aktif', 'Asisten Ahli', NULL, '2020-05-17 10:37:58', '0000-00-00 00:00:00'),
(7, '0117027901', 'Dr. Arlinta Christy Barus, ST., M.InfoTech', 2, 'Aktif', 'Lektor Kepala', NULL, '2020-05-17 10:43:33', '0000-00-00 00:00:00'),
(8, '0118118201', 'Inte Christinawati Bu\'ulolo, ST., M.T.I', 2, 'Aktif', 'Asisten Ahli', NULL, '2020-05-17 10:44:26', '0000-00-00 00:00:00'),
(9, '0116047301', 'Johannes Harungguan , ST., MT', 2, 'Aktif', 'Lektor', NULL, '2020-05-17 10:49:28', '0000-00-00 00:00:00'),
(10, '	0118097802', 'Lit Malem Ginting, S.Si, MT', 2, 'Aktif', 'Asisten Ahli', NULL, '2020-05-17 10:49:28', '0000-00-00 00:00:00'),
(11, '	0128109001', 'Nenni Mona Aruan, S.Pd., M.Si', 2, 'Aktif', 'Asisten Ahli', NULL, '2020-05-17 10:49:28', '0000-00-00 00:00:00'),
(12, '	0304190340', 'Tahan HJ Sihombing, S.Pd., M. App Ling (TESOL)', 2, 'Aktif', 'Tenaga Pengajar', NULL, '2020-05-17 10:49:28', '0000-00-00 00:00:00'),
(13, '	0121097601', 'Yaya Setiadi, S.Si., MT', 2, 'Aktif', '	Asisten Ahli', NULL, '2020-05-17 10:49:28', '0000-00-00 00:00:00'),
(14, '	0121058702', 'Yohanssen Pratama, S.Si, M.T', 2, 'Aktif', '	Lektor', NULL, '2020-05-17 10:52:17', '0000-00-00 00:00:00'),
(15, '	0117069202', 'Junita Amalia, S.Pd., M.Si', 1, 'Aktif', 'Tenaga Pengajar', NULL, '2020-05-17 10:56:08', '0000-00-00 00:00:00'),
(16, '', '	Fidelis Haposan Silalahi, SH., MH.', 1, 'Aktif', 'Tenaga Pengajar', NULL, '2020-05-17 10:56:08', '0000-00-00 00:00:00'),
(17, '0130058501', 'Parmonangan Rotua Togatorop, S.Kom., M.T.I', 1, 'Aktif', 'Asisten Ahli', NULL, '2020-05-17 10:58:13', '0000-00-00 00:00:00'),
(18, '	0110029201', 'Samuel Indra Gunawan Situmeang, S.T.I.,M.Sc', 1, 'Aktif', 'Tenaga Pengajar', NULL, '2020-05-17 10:58:13', '0000-00-00 00:00:00'),
(19, '0110117601', 'Tennov Simanjuntak, S.T, M.Sc', 1, 'Aktif', 'Asisten Ahli', NULL, '2020-05-17 10:58:13', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `form_maju`
--

CREATE TABLE `form_maju` (
  `id` int(11) NOT NULL,
  `noKel` varchar(11) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `status` varchar(200) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `updated_at` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `form_maju`
--

INSERT INTO `form_maju` (`id`, `noKel`, `judul`, `status`, `user_id`, `updated_at`, `created_at`) VALUES
(20, '2', 'Aplikasi manajemen TA', '1', 48, '2021-03-02', '2020-06-18 20:23:00'),
(21, '2', 'dadada', NULL, 1, '2021-03-02', '2021-03-01 20:15:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `forum`
--

CREATE TABLE `forum` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `konten` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `forum`
--

INSERT INTO `forum` (`id`, `judul`, `slug`, `konten`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 'Aplikasi manajemen TA', 'aplikasi-manajemen-ta', '<p>dadada</p>', 1, '2020-06-17 23:02:29', '2020-06-18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru`
--

CREATE TABLE `guru` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `telepon` varchar(15) NOT NULL,
  `alamat` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `guru`
--

INSERT INTO `guru` (`id`, `nama`, `telepon`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'Sarjono', '08123476585', 'Depok', '2020-04-03 13:18:20', '0000-00-00 00:00:00'),
(2, 'Dwikorita', '121231141414', 'Bekasi', '2020-04-03 13:18:20', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal`
--

CREATE TABLE `jadwal` (
  `id` int(11) NOT NULL,
  `kelompok` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `waktu` time NOT NULL,
  `tempat` varchar(255) NOT NULL,
  `des` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `status1` varchar(255) DEFAULT NULL,
  `status2` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jadwal`
--

INSERT INTO `jadwal` (`id`, `kelompok`, `tanggal`, `waktu`, `tempat`, `des`, `user_id`, `status1`, `status2`, `created_at`, `updated_at`) VALUES
(8, '2', '2020-06-20', '10:26:00', 'GD 712', NULL, 66, '1', '1', '2020-06-18 20:26:14', '2020-06-19 07:53:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelompok`
--

CREATE TABLE `kelompok` (
  `id` int(11) NOT NULL,
  `noKel` varchar(11) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `idMhs` varchar(11) NOT NULL,
  `pembimbing` varchar(200) DEFAULT NULL,
  `penguji` varchar(200) DEFAULT NULL,
  `namaMhs` varchar(200) NOT NULL,
  `namaMhs1` varchar(255) DEFAULT NULL,
  `namaMhs2` varchar(255) DEFAULT NULL,
  `des` varchar(255) DEFAULT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kelompok`
--

INSERT INTO `kelompok` (`id`, `noKel`, `judul`, `idMhs`, `pembimbing`, `penguji`, `namaMhs`, `namaMhs1`, `namaMhs2`, `des`, `updated_at`, `created_at`) VALUES
(18, '2', 'Aplikasi manajemen TA', '70', 'Dr. Arlinta Christy Barus, ST., M.InfoTech', 'Inte Christinawati Bu\'ulolo, ST., M.T.I', 'daniel', 'Daniel S', 'daniel', 'jjjjjjjjjjjjj', '2021-01-13 17:08:25', '2021-01-13 17:08:25');

--
-- Trigger `kelompok`
--
DELIMITER $$
CREATE TRIGGER `before_produk_update` BEFORE UPDATE ON `kelompok` FOR EACH ROW BEGIN
    INSERT INTO log_kelompok
    SET judul = OLD.judul,
    judul1 = new.judul,
    noKel  = OLD.noKel,
    des= new.des,
    waktu_perubahan = NOW(); 
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `komentar`
--

CREATE TABLE `komentar` (
  `id` int(11) NOT NULL,
  `konten` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `forum_id` int(11) NOT NULL,
  `forum_type` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `komentar`
--

INSERT INTO `komentar` (`id`, `konten`, `user_id`, `forum_id`, `forum_type`, `created_at`, `updated_at`) VALUES
(31, 'dada', 50, 7, 'App\\Forum', '2020-05-22 05:39:20', '2020-05-22'),
(32, 'dada', 48, 10, 'App\\Forum', '2020-05-29 22:48:22', '2020-05-30'),
(33, 'kapan kita membuat srs', 58, 11, 'App\\Forum', '2020-06-09 19:17:42', '2020-06-10'),
(34, 'kapan kita berdiskusi membuat srs', 59, 12, 'App\\Forum', '2020-06-09 19:46:16', '2020-06-10'),
(37, 'da', 48, 13, 'App\\Forum', '2020-06-14 10:13:12', '2020-06-14'),
(38, 'dada', 1, 2, 'App\\Forum', '2020-06-17 23:02:35', '2020-06-18'),
(39, 'oek', 48, 2, 'App\\Forum', '2020-06-17 23:02:52', '2020-06-18'),
(40, 'dadadadadad', 1, 2, 'App\\Forum', '2021-03-01 20:16:28', '2021-03-02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kurikulum`
--

CREATE TABLE `kurikulum` (
  `id` int(11) NOT NULL,
  `tahun` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kurikulum`
--

INSERT INTO `kurikulum` (`id`, `tahun`) VALUES
(1, '2014'),
(2, '2019');

-- --------------------------------------------------------

--
-- Struktur dari tabel `log_kelompok`
--

CREATE TABLE `log_kelompok` (
  `id` int(11) NOT NULL,
  `noKel` varchar(11) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `judul1` varchar(200) NOT NULL,
  `des` varchar(255) DEFAULT NULL,
  `waktu_perubahan` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `log_kelompok`
--

INSERT INTO `log_kelompok` (`id`, `noKel`, `judul`, `judul1`, `des`, `waktu_perubahan`) VALUES
(1, '2', 'SRS', 'SRS', NULL, '2020-06-19 08:49:19'),
(2, '2', 'SRS', 'SRS', NULL, '2020-06-19 08:52:25'),
(3, '2', 'Aplikasi manajemen TA', 'Aplikasi manajemen TA', NULL, '2020-06-19 09:53:39'),
(4, '2', 'Aplikasi manajemen TA', 'Aplikasi manajemen TA', NULL, '2020-06-19 09:54:21'),
(5, '2', 'Aplikasi manajemen TA', 'Aplikasi manajemen TA', NULL, '2020-06-19 10:21:01'),
(6, '2', 'Aplikasi manajemen TA', 'Aplikasi manajemen TA', NULL, '2020-06-19 10:49:01'),
(7, '2', 'Aplikasi manajemen TA', 'Aplikasi manajemen TA', NULL, '2021-01-14 00:05:59'),
(8, '2', 'Aplikasi manajemen TA', 'Aplikasi manajemen TA', 'jjjjjjjjjjjjj', '2021-01-14 00:08:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `nim` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_depan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `agama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prodi_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `user_id`, `nim`, `nama_depan`, `username`, `jenis_kelamin`, `agama`, `alamat`, `avatar`, `prodi_id`, `created_at`, `updated_at`) VALUES
(24, 31, '11318011', 'Davids', 'daniel12', 'L', 'Kristen', 'Medan', 'dark-angel-wallpapers-31548-2073597.jpg', 2, NULL, NULL),
(29, 42, '11318030', 'Budi Anto', 'dada12312', 'L', 'Kristen', 'tarutung', NULL, 3, NULL, NULL),
(31, 45, '1131801012', 'Daniel S', 'daniel', 'L', 'Kristen', 'tarutung', NULL, 1, NULL, NULL),
(33, 47, '113180dad0', 'Basruld', 'daniel4567', 'L', 'Kristen', 'tarutung', NULL, 1, NULL, NULL),
(34, 48, 'iss12312', 'Karpijol', 'karpijols', 'L', 'Kristen', 'Medan', 'lalal.jpg', 1, NULL, NULL),
(35, 50, '1131801421', 'daniel', 'daniel123', 'L', 'Kristen', 'tarutung', NULL, 1, NULL, NULL),
(37, 59, '11318010', 'Sintong Lumbantobing', 'Sintong12', 'L', 'Kristen Protestan', 'Tarutung', NULL, 1, NULL, NULL),
(38, 61, '11318089', 'Simon', 'Simon', 'L', 'Budha', 'Porsea', 'backgrounf.jpg', 2, NULL, NULL),
(39, 67, '1131801222', 'daniel', 'da09', 'L', 'Kristen', 'trt', NULL, 1, NULL, NULL),
(41, 69, 'dad1212', 'Ana', 'daniel124', 'P', 'Kristen', 'dada', NULL, 1, NULL, NULL),
(42, 70, '11318010ssss', 'daniel', 'daniel09', 'L', 'Kristen', 'ddada', 'lalal.jpg', 1, NULL, NULL),
(43, 71, '11318049', 'Simon Hutajulu', 'simon123', 'L', 'Kristen', 'Medan', NULL, 1, NULL, NULL),
(44, 75, 'ada2112dda', 'daniel tobing', 'daniel05', 'L', 'Kristen', 'tarutung', NULL, 2, NULL, NULL),
(45, 76, '1131801022', 'daniel', '12345', 'L', 'Kristen', 'jln.M.H. Manullang, Siualuompu', NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mapel`
--

CREATE TABLE `mapel` (
  `id` int(11) NOT NULL,
  `kode` varchar(191) NOT NULL,
  `nama` varchar(191) NOT NULL,
  `semester` varchar(45) NOT NULL,
  `guru_id` int(11) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mapel`
--

INSERT INTO `mapel` (`id`, `kode`, `nama`, `semester`, `guru_id`, `create_at`, `update_at`) VALUES
(4, 'M-101', 'Matematika', 'ganji', 1, '2020-04-22 13:57:38', '0000-00-00 00:00:00'),
(5, 'B-203', 'Bahasa Indonesia', 'ganjil', 2, '2020-04-22 13:57:38', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `matakuliah`
--

CREATE TABLE `matakuliah` (
  `id` int(11) NOT NULL,
  `kode_matkul` varchar(50) NOT NULL,
  `matakuliah` varchar(255) NOT NULL,
  `sks` int(11) NOT NULL,
  `prodi_id` int(11) NOT NULL,
  `semester_id` int(11) NOT NULL,
  `kurikulum_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `matakuliah`
--

INSERT INTO `matakuliah` (`id`, `kode_matkul`, `matakuliah`, `sks`, `prodi_id`, `semester_id`, `kurikulum_id`, `created_at`, `updated_at`) VALUES
(1, 'KUS1101', 'Pembentukan Karakter Del', 2, 2, 1, 1, '2020-05-02 15:30:43', '0000-00-00 00:00:00'),
(2, 'IFS1102', 'Pemrograman I', 2, 2, 1, 1, '2020-05-02 15:30:43', '0000-00-00 00:00:00'),
(3, 'MAS1101', 'Matematika Dasar I', 4, 2, 1, 1, '2020-05-02 15:30:43', '0000-00-00 00:00:00'),
(4, 'FIS1101', 'Fisika Dasar I', 4, 2, 1, 1, '2020-05-02 15:30:43', '0000-00-00 00:00:00'),
(5, 'KUS1102', 'Bahasa Inggris I', 2, 2, 1, 1, '2020-05-02 15:30:43', '0000-00-00 00:00:00'),
(6, 'IFS1101', 'Pengantar Teknologi Informasi', 2, 2, 1, 1, '2020-05-02 15:30:43', '0000-00-00 00:00:00'),
(13, 'IFS1103', 'Sains Teknologi dan Seni di Masyarakat', 2, 2, 1, 1, '2020-05-02 15:38:07', '0000-00-00 00:00:00'),
(14, 'MAS1201', 'Matematika Dasar II', 4, 2, 2, 1, '2020-05-02 15:38:07', '0000-00-00 00:00:00'),
(15, 'FIS1201', 'Fisika Dasar II (+P)', 4, 2, 2, 1, '2020-05-02 15:38:07', '0000-00-00 00:00:00'),
(16, 'KUS1201', 'Bahasa Inggris II', 2, 2, 2, 1, '2020-05-02 15:38:07', '0000-00-00 00:00:00'),
(17, 'IFS1202', 'Dasar Rekayasa Perangkat Lunak', 3, 2, 2, 1, '2020-05-02 15:38:07', '0000-00-00 00:00:00'),
(18, 'IFS1203', 'Pengantar Desain Rekayasa', 2, 2, 2, 1, '2020-05-02 15:38:07', '0000-00-00 00:00:00'),
(19, 'IFS1201', 'Pemrograman II', 2, 2, 2, 1, '2020-05-02 15:38:07', '0000-00-00 00:00:00'),
(20, 'KUS1001', 'Tata Tulis Karya Ilmiah', 2, 2, 2, 1, '2020-05-02 15:38:07', '0000-00-00 00:00:00'),
(41, 'MAS2102', 'Matematika Diskrit', 3, 2, 3, 1, '2020-05-02 16:15:43', '0000-00-00 00:00:00'),
(42, 'MAS2001', 'Probabilitas dan Statistika', 3, 2, 3, 1, '2020-05-02 16:15:43', '0000-00-00 00:00:00'),
(43, 'IFS2101	', 'Algoritma dan Struktur Data', 3, 2, 3, 1, '2020-05-02 16:15:43', '0000-00-00 00:00:00'),
(44, 'ELS2180', 'Sistem Digital', 3, 2, 3, 1, '2020-05-02 16:15:43', '0000-00-00 00:00:00'),
(45, 'ISS2101', 'Basis Data', 3, 2, 3, 1, '2020-05-02 16:15:43', '0000-00-00 00:00:00'),
(46, 'IFS2102', 'Logika Informatika', 3, 2, 3, 1, '2020-05-02 16:15:43', '0000-00-00 00:00:00'),
(47, 'ISS4191', 'Tugas Akhir 1 dan Seminar', 4, 1, 7, 1, '2020-06-09 17:36:34', '0000-00-00 00:00:00'),
(48, 'ISS4290', 'Tugas Akhir II', 4, 1, 8, 1, '2020-06-09 17:36:34', '0000-00-00 00:00:00'),
(49, 'IFS4191', 'Tugas Akhir 1 dan Seminar', 4, 2, 7, 1, '2020-06-09 17:36:34', '0000-00-00 00:00:00'),
(50, 'IFS4290', 'Tugas Akhir 2', 4, 2, 8, 1, '2020-06-09 17:36:34', '0000-00-00 00:00:00'),
(51, 'ELS4190', 'Tugas Akhir I dan Seminar', 3, 3, 7, 1, '2020-06-09 17:36:34', '0000-00-00 00:00:00'),
(52, 'ELS4290	', 'Tugas Akhir II', 3, 3, 8, 1, '2020-06-09 17:36:34', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `matakuliah_siswa`
--

CREATE TABLE `matakuliah_siswa` (
  `id` int(11) NOT NULL,
  `siswa_id` int(11) NOT NULL,
  `matakuliah_id` int(11) NOT NULL,
  `nilai` double NOT NULL,
  `nilai1` double NOT NULL,
  `nilai2` double NOT NULL,
  `nilaiakhir` double NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `matakuliah_siswa`
--

INSERT INTO `matakuliah_siswa` (`id`, `siswa_id`, `matakuliah_id`, `nilai`, `nilai1`, `nilai2`, `nilaiakhir`, `created_at`, `updated_at`) VALUES
(1, 38, 1, 90, 90, 90, 87, '2021-03-24 05:09:37', '2021-03-24 12:10:40'),
(2, 24, 3, 100, 72, 40, 58.2, '2021-05-06 19:50:20', '2021-05-07 02:52:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(4, '2014_10_12_000000_create_users_table', 1),
(5, '2019_08_19_000000_create_failed_jobs_table', 1),
(6, '2020_03_04_012211_create_siswa_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `slug` varchar(255) NOT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `content`, `slug`, `thumbnail`, `created_at`, `updated_at`) VALUES
(10, 1, 'Pengumupulan Doukumenss', '<p>Dear Seluruh Mahasiswa.,</p><p>Kami informasikan dari Panitia KPU IT DEL 2020 dari hasil pemilihan putaran pertama dengan hasil perolehan suara yang sama, maka kami ingin memberitahukan informasi lebih lanjut terkait pelaksanaan pemilihan Ketua dan Wakil Ketua BEM 2020/2021 putaran ke-2 (dua) yang akan dilaksanakan pada :</p><p><strong>Hari, Tanggal : Kamis, 30 April 2020</strong><br><strong>Pukul : 08.00 - 20.00 WIB</strong></p>', 'pengumupulan-doukumen', '/photos/1/bola.jpg', '2020-04-30 03:48:42', '2020-06-14 16:33:44'),
(11, 1, 'Pengumpulan SRSs', '<p>Dikumpul secepatnya</p>', 'pengumpulan-srs', NULL, '2020-06-09 19:59:36', '2020-06-14 16:32:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `prodi`
--

CREATE TABLE `prodi` (
  `id` int(11) NOT NULL,
  `nama_prodi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `prodi`
--

INSERT INTO `prodi` (`id`, `nama_prodi`) VALUES
(1, 'S1 Sistem Informasi'),
(2, 'S1 Teknik Informatika'),
(3, 'S1 Teknik Elektro');

-- --------------------------------------------------------

--
-- Struktur dari tabel `semester`
--

CREATE TABLE `semester` (
  `id` int(11) NOT NULL,
  `semester` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `semester`
--

INSERT INTO `semester` (`id`, `semester`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `role`, `username`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', 'Admin', 'admin@gmail.com', NULL, '$2y$10$GpKe5bHXJ4Sq7U7XpyYcKuR3fcRfO8GxTZCgvyHA7GwxNBmQkz5p6', 'dDjSd0ARmKVRJUw8f47e8Ymds0wDqQOjXDT7ESPcHvYq8EBPmm6iNasyEeI5', '2020-03-29 17:24:19', '2020-05-17 00:41:41'),
(31, 'siswa', 'daniel12', 'daniel', 'daniellumbantobing05@gmail.com', NULL, '$2y$10$ksx33qXzd8L9pINJ.Hp.H.27ZARFjV5qGt2cc8TqGrOPEIrAPi4Oi', 'Etbz7ezuGkquSDv8WYKjbX2nmKF05SElehAcEa4EA6d09CWUd8fDFXrYah7W', '2020-04-22 09:54:50', '2020-04-22 09:54:50'),
(42, 'siswa', 'dada12312', 'Budi Anto', 'membdad@gmail.com', NULL, '$2y$10$oVDWPk0ANcRaX8zGdxUc9OFrSLPA77dsrVDaayItbiEtkiJKJWeI2', 'RVGpdmx9X503XM9gpP3tHq7D1ZTavE5utyzBv7VDP2wDAvMFsXsXk1CoOOzy', '2020-04-25 05:08:32', '2020-04-25 05:08:32'),
(44, 'siswa', 'ifdadada', 'Ana', 'basrul@gmdadaail.com', NULL, '$2y$10$aDI6yLYdosY6sWA0kRBUxuyWV/q0gaGsWAEnaOlRXKeXerQ/8PSu6', 'Gl5JpacJJAFrnLKCluvN9bQv4cBn1VNg7PUiV0AJuTRr5nB2gbDrRWt0pv3B', '2020-04-25 08:56:20', '2020-04-25 08:56:20'),
(45, 'siswa', 'daniel', 'daniel', 'basrul@gmdaddadaaail.com', NULL, '$2y$10$WI.RkYetXgy8zfbmSLyeJOc7U/ATX.4d0U3vYDBP17BFTm.k7RmqW', 'yxPM9HOn2MghPqwU8gxnXwNEwa0fdh9IEqbzFwO2oaHMWH7qp479WK7j9Ijr', '2020-04-26 09:42:13', '2020-04-26 09:42:13'),
(46, 'siswa', 'anita', 'Anita Tambunan', 'anita@gmail.com', NULL, '$2y$10$aTFk9O/P.wOkJZvh2f4M8Okgdd5eZ7ej//VQmQzNThUbfQggzgutO', 'oJvoZpTqLpPFcD1vRbf4KNnKWHEjOePjA8XETnLnWX16E1XnwAxr2AdBzuTR', '2020-04-28 09:21:39', '2020-04-28 09:21:39'),
(47, 'siswa', 'daniel4567', 'Basruldda', 'basrdddul@agmail.com', NULL, '$2y$10$s.U2LE6sVDxhcWtL0Ht2b.rIq4KRSJduiM1nCZnyHOl7wOBb8GV6C', 'ifoi4QMYNfbaingRE8ua8r7kVMFmOGGM1oiOvAroDzUhcNwxXHiPDawrVFhN', '2020-04-28 09:30:07', '2020-04-28 09:30:07'),
(48, 'siswa', 'karpijol', 'Karpijol', 'Karpijol@yahoo.com', NULL, '$2y$10$lC23C.sUicNiv56.PHIIIum/onsB/WOTVxexcEenj88ZyWqWtyO9.', 'ekIGioURHEnpvdR1UaEGI0AGQwEgHM9nndKIhDNODW7pVuKm6TU7uzBEcRFB', '2020-04-29 21:36:41', '2020-05-17 00:43:58'),
(49, 'siswa', 'sukijo', 'Sukijo', 'salomosepttwindo@gmail.com', NULL, '$2y$10$8HkQ6Et/YXbqDk0GR2ksIuoMS5pY393y9rwa0POAA6PaJmZepvUVe', 'mIVst4A9xGVlDhBNI8AKIhs6cWLwGruizFk9gtDSB0acfjSHaKTivDpJtv1p', '2020-04-29 23:05:25', '2020-04-29 23:05:25'),
(50, 'siswa', 'daniel123', 'daniel', 'dadatqw@gmail.com', NULL, '$2y$10$Ca4Rizx9ykjnRxWCIBhd2.7taA1WQH8Sse.pKRTF8Mqt9Yecpxwv6', 'sscxYw57dqdo4iUPHIbjBr5OfilpKSYUX6FglfO5baeFPygKUO3zO4uEZdGp', '2020-05-05 07:02:52', '2020-05-05 07:02:52'),
(57, 'koordinator', 'nenni', 'Nenni Mona Aruan, S.Pd., M.Si', 'nenni12@yahho.com', NULL, '$2y$10$psETr.AxWIAfn4wHPFeJz.jaKNDoH8YyloeQgMjfQHCinRVZGwWK2', 'jphr1jVOwI4c4hOsi2a9WXfv3MuHlFC1vHYsWybFda0zkdYdTxtjrWC1NYms', '2020-06-09 10:46:08', '2020-06-09 10:46:08'),
(59, 'siswa', 'Sintong12', 'Sintong Lumbantobing', 'Sintong@gmail.com', NULL, '$2y$10$6yxvJZ7utQx.4MmwLzDOA.ESpiUER6uAcTQiTC6FnFYZD2tiePhOu', 'N8VnVCr3KgxwSXbShb5zukm597aRkfoKeKAg4FE0yuksxgf1GtP5Pp0BuVdh', '2020-06-09 19:43:38', '2020-06-09 20:01:07'),
(61, 'siswa', 'Simon', 'Simon', 'Simon@yahoo.com', NULL, '$2y$10$53WXKfZ1irhtspT2Rd.wYePhgfr7aG9xnDEVuGDO3tAQ67lxe/jq.', 'Sc2NVsjd774sD7dAq4CKKXiNB15o4p7NxKyITkdxCyqafLmZrzRWgg5RttO0', '2020-06-09 19:56:46', '2020-06-09 19:56:46'),
(62, 'koordinator', 'anthon', 'Anthon Roberto Tampubolon, S.Kom, M.T.', 'anto@example.com', NULL, '$2y$10$iI5BXteu8NCTzvUoXc1SBeHltpv08qsV7PByLEl7.M/KCo1SkWmqm', 'YRAgRlkTWmgHJB20FMMnN5S6c1TE56cQ3Y25rWlbn6MdzqqYKhYuSbu64HFp', '2020-06-14 10:35:35', '2020-06-14 10:35:35'),
(64, 'dospen', 'yaya', 'Yaya Setiadi, S.Si., MT', 'yaya@gamil.com', NULL, '$2y$10$sEAomuWLsbwaNTklDLZijeHb/3P3SjnZOcZRCRqoKhXXOT.6HJg5a', 'lcsXzttAGsHlZCXPYvWiIuORouwAVsNkwJqilWnsF2OE3eHzSCQKFPWxaE57', '2020-06-14 12:03:23', '2020-06-14 12:03:23'),
(65, 'dosenpenguji', 'johan', 'Johannes Harungguan , ST., MT', 'joahn@gmail.com', NULL, '$2y$10$mxXTi92D5YyiriL88Sqofu0xZ.RbWlkeit3zEi1si9uMlK6bIge56', 'fdU1603VmYsiObDA2PPrsLAEuivRVIyEyM1JoMCtpsXZcqa8D0IoFSA5vVjE', '2020-06-14 13:11:36', '2020-06-14 13:11:36'),
(66, 'baak', 'baak', 'BAAK', 'Dian@gmail.com', NULL, '$2y$10$j8OOLtslFnRFBrfbCIG.yuKKYTxeKq.NArCONvRfMxdxoQH4JSY02', NULL, '2020-06-14 18:05:06', '2020-06-14 18:05:06'),
(67, 'siswa', 'da09', 'daniel', 'dada@gsmail.com', NULL, '$2y$10$PUxY4T4Q9BrQNr5cIJNP0eGEpOWSBXXw2f/GjQiAuHzrcPEL4nF6y', 'UCzlPlvnRIrLUoSQt0G7JJsKBUQUqkPpICbWE0eVql52VYGJaAbXPf0wWptf', '2020-11-03 22:19:59', '2020-11-03 22:19:59'),
(69, 'siswa', 'daniel124', 'Ana', 'dadad@gmail.com', NULL, '$2y$10$.7vmoAQonNkZARFs/J/iC.pQTZVUw8AreLYZyd5kO2vL7OthDusFS', 'GJlTS3T1uXC5d3jYqAg574K7TgpljAm17fm2m6E3xrI2K5RRDBOV6dYMkFyL', '2020-12-11 08:37:54', '2020-12-11 08:37:54'),
(70, 'siswa', 'daniel09', 'daniel', 'daniellung05@gmail.com', NULL, '$2y$10$vUIUne1V70dJlP7AqCzUXe7MwFX3vkNw65BJWAvFrskMp1KGPlSuW', '7DFtazmYUyMzjozagER3qsuiSam0gk7WdU8Z22NA0C07OZAPDFax1ERJeEcj', '2021-01-13 10:00:25', '2021-01-13 10:00:25'),
(71, 'siswa', 'simon123', 'Simon Hutajulu', 'simon@gmail.com', NULL, '$2y$10$3CsTJg1sG8bbCVPaRTZY8uEDxyYb8Fo7GI0SGTuk8EdYRJ8v3Kx5G', 'Ic0I9azJATORRti6oTMBmvhwCML7IKzc7vBqNXX2Z7mdw4cGDlEEW2948pvY', '2021-02-16 22:34:33', '2021-02-16 22:34:33'),
(72, 'dosenpenguji', 'samuel12', 'Samuel Indra Gunawan Situmeang, S.T.I.,M.Sc', 'samuel@gmail.com', NULL, '$2y$10$klFSvOkrBANlmZ04J9uS2Oe0OvPSJMaNxb6W3gFIw0lRvorWelYe2', 'oSxoHijWdKED9OjND0TMke3j2rFB3RSHkFfZOsrLAJibCMcqD0Upe1VzCiXB', '2021-02-16 22:44:04', '2021-02-16 22:44:04'),
(73, 'koordinator', 'johan12', 'Johannes Harungguan , ST., MT', 'johan@gmail.com', NULL, '$2y$10$h.kpNFvuHzmlAQS4jR0vkOMbk1vtYnIOsSe8h5sZU3D8WwoVDV/1W', 'jzQyEgAOw6enCcfop0jHwF39fHL7VEmsGTxOSv6aK3UNPM8xoXqvXpSbpdlh', '2021-02-16 22:54:58', '2021-02-16 22:54:58'),
(74, 'dospen', 'yohan12', 'Yohanssen Pratama, S.Si, M.T', 'yohan@gmail.com', NULL, '$2y$10$625aDBOkFO5oqvrEJy3sru4c.Eaxgw3X32HyZafgpXErD6VZGjS7.', 'dflhgqRACc9Sr5pf5mHT8dCeJU94E0AAFQp1JzKE8OmqFWcLygDMySkZHbJq', '2021-02-16 22:57:58', '2021-02-16 22:57:58'),
(75, 'siswa', 'daniel05', 'daniel', 'dada@gmail.com', NULL, '$2y$10$wJiTOOX6u8ywnPYCEhncBui0oZ8MVU9bAh4A/EDbZOHFUuI4RjknC', 'lJrNDLHFhDI8j6FHdwQm2JuGwhBnpYcbjtrhs2fscR4i5Gx6ak4fIviCB1PN', '2021-03-30 07:21:07', '2021-03-30 07:21:07'),
(76, 'siswa', '12345', 'daniel', '12345@gmail.com', NULL, '$2y$10$wxKw3dROx6KRGXXJENHQeu/PzaH.LJ6c3343nOSet4ipbPRE5g5S.', 'vDecQigBiqKUjdfTT0R7w8CpThECfJxjxPEWiP6A46N7FgaJ9PR3TtgkUw1E', '2021-05-21 07:41:58', '2021-05-21 07:41:58');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `document`
--
ALTER TABLE `document`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nidn` (`nidn`),
  ADD KEY `prodi_id` (`prodi_id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `form_maju`
--
ALTER TABLE `form_maju`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `forum`
--
ALTER TABLE `forum`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kelompok`
--
ALTER TABLE `kelompok`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kurikulum`
--
ALTER TABLE `kurikulum`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `log_kelompok`
--
ALTER TABLE `log_kelompok`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nim` (`nim`),
  ADD KEY `id_prodi` (`prodi_id`);

--
-- Indeks untuk tabel `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode_matkul` (`kode_matkul`),
  ADD KEY `prodi_id` (`prodi_id`),
  ADD KEY `tahun_kurikulum_id` (`kurikulum_id`),
  ADD KEY `semester_id` (`semester_id`);

--
-- Indeks untuk tabel `matakuliah_siswa`
--
ALTER TABLE `matakuliah_siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `prodi`
--
ALTER TABLE `prodi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email_verified_at` (`email_verified_at`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `document`
--
ALTER TABLE `document`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `dosen`
--
ALTER TABLE `dosen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `form_maju`
--
ALTER TABLE `form_maju`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `forum`
--
ALTER TABLE `forum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `guru`
--
ALTER TABLE `guru`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `kelompok`
--
ALTER TABLE `kelompok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT untuk tabel `kurikulum`
--
ALTER TABLE `kurikulum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `log_kelompok`
--
ALTER TABLE `log_kelompok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT untuk tabel `mapel`
--
ALTER TABLE `mapel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `matakuliah`
--
ALTER TABLE `matakuliah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT untuk tabel `matakuliah_siswa`
--
ALTER TABLE `matakuliah_siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `dosen`
--
ALTER TABLE `dosen`
  ADD CONSTRAINT `dosen_ibfk_1` FOREIGN KEY (`prodi_id`) REFERENCES `prodi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD CONSTRAINT `mahasiswa_ibfk_1` FOREIGN KEY (`prodi_id`) REFERENCES `prodi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD CONSTRAINT `matakuliah_ibfk_1` FOREIGN KEY (`prodi_id`) REFERENCES `prodi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `matakuliah_ibfk_2` FOREIGN KEY (`kurikulum_id`) REFERENCES `kurikulum` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `matakuliah_ibfk_3` FOREIGN KEY (`semester_id`) REFERENCES `semester` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
