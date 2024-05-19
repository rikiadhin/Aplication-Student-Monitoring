-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Bulan Mei 2024 pada 06.13
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `monitoring_siswa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_absensi`
--

CREATE TABLE `tb_absensi` (
  `id_absensi` int(30) NOT NULL,
  `id_siswa` varchar(30) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `id_mapel` varchar(30) NOT NULL,
  `materi` varchar(30) NOT NULL,
  `tanggal` date NOT NULL,
  `id_jamPel` int(10) NOT NULL,
  `waktu` time DEFAULT NULL,
  `status` varchar(30) NOT NULL DEFAULT 'ALPHA'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_guru`
--

CREATE TABLE `tb_guru` (
  `no` int(10) NOT NULL,
  `id_guru` varchar(30) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `id_mapel` varchar(30) NOT NULL,
  `nomor` varchar(30) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_jadwal`
--

CREATE TABLE `tb_jadwal` (
  `id_jadwal` int(10) NOT NULL,
  `hari` enum('SENIN','SELASA','RABU','KAMIS','JUMAT') NOT NULL,
  `id_jamPel` int(10) NOT NULL,
  `id_mapel` varchar(30) NOT NULL,
  `guru` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_jampel`
--

CREATE TABLE `tb_jampel` (
  `id_jamPel` int(10) NOT NULL,
  `jamPelajaran` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_jampel`
--

INSERT INTO `tb_jampel` (`id_jamPel`, `jamPelajaran`) VALUES
(1, 'Jam ke- 1'),
(2, 'Jam ke- 2'),
(3, 'Jam ke- 3'),
(4, 'Jam ke- 4'),
(5, 'Jam ke- 5'),
(6, 'Jam ke- 6'),
(7, 'Jam ke- 7'),
(8, 'Jam ke- 8'),
(9, 'Jam ke- 9');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kelas`
--

CREATE TABLE `tb_kelas` (
  `id_kelas` varchar(30) NOT NULL,
  `kelas` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_kelas`
--

INSERT INTO `tb_kelas` (`id_kelas`, `kelas`) VALUES
('XIPA1', 'X IPA 1'),
('XIPA2', 'X IPA 2'),
('XIPA3', 'X IPA 3'),
('XIPA4', 'X IPA 4'),
('XIPA5', 'X IPA 5');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_mapel`
--

CREATE TABLE `tb_mapel` (
  `id_mapel` varchar(30) NOT NULL,
  `nama_mapel` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_mapel`
--

INSERT INTO `tb_mapel` (`id_mapel`, `nama_mapel`) VALUES
('BIO', 'BIOLOGI'),
('FIS', 'FISIKA'),
('INGG', 'BAHASA INGGRIS'),
('IPA', 'ILMU PENGETAHUAN ALAM'),
('MTK', 'MATEMATIKA');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_mt`
--

CREATE TABLE `tb_mt` (
  `id_mt` int(10) NOT NULL,
  `nama` int(30) NOT NULL,
  `id_jamPel` int(10) NOT NULL,
  `jenis` enum('materi','tugas','UTS','UAS') NOT NULL,
  `waktu_mulai` time NOT NULL,
  `waktu_selesai` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_orangtua`
--

CREATE TABLE `tb_orangtua` (
  `no` int(10) NOT NULL,
  `id_orangtua` varchar(30) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `nomor` varchar(30) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_raport`
--

CREATE TABLE `tb_raport` (
  `id_raport` int(11) NOT NULL,
  `id_siswa` varchar(30) NOT NULL,
  `waliKelas` varchar(30) NOT NULL,
  `semester` enum('SEMESTER 1','SEMESTER 2') NOT NULL,
  `file` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_siswa`
--

CREATE TABLE `tb_siswa` (
  `no` int(10) NOT NULL,
  `id_siswa` varchar(30) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `id_kelas` varchar(30) NOT NULL,
  `nomor` varchar(30) NOT NULL,
  `namaOrangTua` varchar(30) DEFAULT NULL,
  `waliKelas` varchar(30) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='a';

--
-- Dumping data untuk tabel `tb_siswa`
--

INSERT INTO `tb_siswa` (`no`, `id_siswa`, `nama`, `id_kelas`, `nomor`, `namaOrangTua`, `waliKelas`, `alamat`) VALUES
(5, 'v3422060', 'Riki Adhi Nugroho', 'XIPA5', '089522993032', 'Suyamto', 'Endah', 'Karanganyar');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_users`
--

CREATE TABLE `tb_users` (
  `no` int(10) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `userID` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `role` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_users`
--

INSERT INTO `tb_users` (`no`, `nama`, `userID`, `email`, `password`, `role`) VALUES
(114, 'Nazifbariq Aqil', 'V3422049', 'aqilnazifbariq@gmail.com', '123', 'siswa'),
(119, 'Reza Hermawan', 'V3422056', 'hermawanreza84@gmail.com', '123', 'siswa'),
(121, 'Richardo Gilbert Ganda T M', 'V3422058', 'manalufams@gmail.com', '123', 'siswa'),
(115, 'Noorindria Mayrien Nariswari', 'V3422051', 'noorindriamayrien@gmail.com', '123', 'siswa'),
(126, '', '', 'nugroho@gmail.com', 'nugroho', 'orangtua'),
(116, 'Raihan Zaki Alhafiz', 'V3422053', 'raihanzaki121203@gmail.com', '123', 'siswa'),
(117, 'Razel Lisandi', 'V3422054', 'razelisandi6@gmail.com', '123', 'siswa'),
(118, 'Reinol Simangungsong', 'V3422055', 'reinolbs@gmail.com', '123', 'siswa'),
(120, 'Rheza Rizky Satria R', 'V3422057', 'rhezarisky11@gmail.com', '123', 'siswa'),
(122, 'Rikhi Widyananda', 'V3422059', 'rikhinanda@gmail.com', '123', 'siswa'),
(7, 'Riki  Adhi Nugroho', 'v3422060', 'rikiadhin@gmail.com', 'rikiadhin', 'orangtua');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_absensi`
--
ALTER TABLE `tb_absensi`
  ADD PRIMARY KEY (`id_absensi`),
  ADD KEY `id_siswa` (`id_siswa`),
  ADD KEY `id_mapel` (`id_mapel`),
  ADD KEY `id_jamPel` (`id_jamPel`);

--
-- Indeks untuk tabel `tb_guru`
--
ALTER TABLE `tb_guru`
  ADD KEY `no` (`no`),
  ADD KEY `id_mapel` (`id_mapel`),
  ADD KEY `id_guru` (`id_guru`),
  ADD KEY `email` (`email`);

--
-- Indeks untuk tabel `tb_jadwal`
--
ALTER TABLE `tb_jadwal`
  ADD PRIMARY KEY (`id_jadwal`),
  ADD KEY `id_jamPel` (`id_jamPel`),
  ADD KEY `id_mapel` (`id_mapel`);

--
-- Indeks untuk tabel `tb_jampel`
--
ALTER TABLE `tb_jampel`
  ADD PRIMARY KEY (`id_jamPel`);

--
-- Indeks untuk tabel `tb_kelas`
--
ALTER TABLE `tb_kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indeks untuk tabel `tb_mapel`
--
ALTER TABLE `tb_mapel`
  ADD PRIMARY KEY (`id_mapel`);

--
-- Indeks untuk tabel `tb_mt`
--
ALTER TABLE `tb_mt`
  ADD PRIMARY KEY (`id_mt`),
  ADD KEY `id_jamPel` (`id_jamPel`);

--
-- Indeks untuk tabel `tb_orangtua`
--
ALTER TABLE `tb_orangtua`
  ADD KEY `no` (`no`),
  ADD KEY `id_orangtua` (`id_orangtua`),
  ADD KEY `email` (`email`);

--
-- Indeks untuk tabel `tb_raport`
--
ALTER TABLE `tb_raport`
  ADD PRIMARY KEY (`id_raport`),
  ADD KEY `id_siswa` (`id_siswa`);

--
-- Indeks untuk tabel `tb_siswa`
--
ALTER TABLE `tb_siswa`
  ADD PRIMARY KEY (`no`),
  ADD KEY `id_kelas` (`id_kelas`),
  ADD KEY `no` (`no`),
  ADD KEY `id_siswa` (`id_siswa`);

--
-- Indeks untuk tabel `tb_users`
--
ALTER TABLE `tb_users`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `userID` (`userID`),
  ADD KEY `no` (`no`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_absensi`
--
ALTER TABLE `tb_absensi`
  MODIFY `id_absensi` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tb_guru`
--
ALTER TABLE `tb_guru`
  MODIFY `no` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tb_jadwal`
--
ALTER TABLE `tb_jadwal`
  MODIFY `id_jadwal` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tb_jampel`
--
ALTER TABLE `tb_jampel`
  MODIFY `id_jamPel` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tb_mt`
--
ALTER TABLE `tb_mt`
  MODIFY `id_mt` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tb_orangtua`
--
ALTER TABLE `tb_orangtua`
  MODIFY `no` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tb_raport`
--
ALTER TABLE `tb_raport`
  MODIFY `id_raport` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tb_siswa`
--
ALTER TABLE `tb_siswa`
  MODIFY `no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tb_users`
--
ALTER TABLE `tb_users`
  MODIFY `no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tb_absensi`
--
ALTER TABLE `tb_absensi`
  ADD CONSTRAINT `tb_absensi_ibfk_2` FOREIGN KEY (`id_jamPel`) REFERENCES `tb_jampel` (`id_jamPel`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_absensi_ibfk_3` FOREIGN KEY (`id_mapel`) REFERENCES `tb_mapel` (`id_mapel`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_absensi_ibfk_4` FOREIGN KEY (`id_siswa`) REFERENCES `tb_users` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_guru`
--
ALTER TABLE `tb_guru`
  ADD CONSTRAINT `tb_guru_ibfk_1` FOREIGN KEY (`id_guru`) REFERENCES `tb_users` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_guru_ibfk_2` FOREIGN KEY (`id_mapel`) REFERENCES `tb_mapel` (`id_mapel`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_guru_ibfk_3` FOREIGN KEY (`email`) REFERENCES `tb_users` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_jadwal`
--
ALTER TABLE `tb_jadwal`
  ADD CONSTRAINT `tb_jadwal_ibfk_1` FOREIGN KEY (`id_jamPel`) REFERENCES `tb_jampel` (`id_jamPel`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_jadwal_ibfk_2` FOREIGN KEY (`id_mapel`) REFERENCES `tb_mapel` (`id_mapel`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_mt`
--
ALTER TABLE `tb_mt`
  ADD CONSTRAINT `tb_mt_ibfk_1` FOREIGN KEY (`id_jamPel`) REFERENCES `tb_jampel` (`id_jamPel`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_orangtua`
--
ALTER TABLE `tb_orangtua`
  ADD CONSTRAINT `tb_orangtua_ibfk_1` FOREIGN KEY (`id_orangtua`) REFERENCES `tb_users` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_orangtua_ibfk_2` FOREIGN KEY (`email`) REFERENCES `tb_users` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_raport`
--
ALTER TABLE `tb_raport`
  ADD CONSTRAINT `tb_raport_ibfk_1` FOREIGN KEY (`id_siswa`) REFERENCES `tb_users` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_siswa`
--
ALTER TABLE `tb_siswa`
  ADD CONSTRAINT `tb_siswa_ibfk_2` FOREIGN KEY (`id_kelas`) REFERENCES `tb_kelas` (`id_kelas`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_siswa_ibfk_3` FOREIGN KEY (`id_siswa`) REFERENCES `tb_users` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
