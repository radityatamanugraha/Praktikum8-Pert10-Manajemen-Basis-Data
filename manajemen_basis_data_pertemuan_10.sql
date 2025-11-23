-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Nov 2025 pada 08.28
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `klinik`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `dokter`
--

CREATE TABLE `dokter` (
  `KodeDokter` varchar(5) NOT NULL,
  `NamaDokter` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `dokter`
--

INSERT INTO `dokter` (`KodeDokter`, `NamaDokter`) VALUES
('D01', 'Dr Zumarini'),
('D02', 'Dr Harjono'),
('D04', 'Dr Mahendra');

-- --------------------------------------------------------

--
-- Struktur dari tabel `obat`
--

CREATE TABLE `obat` (
  `KodeObat` varchar(5) NOT NULL,
  `NamaObat` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `obat`
--

INSERT INTO `obat` (`KodeObat`, `NamaObat`) VALUES
('B01', 'Sulfa Anymiem'),
('B02', 'Suprailin'),
('B03', 'Suprailin'),
('B04', 'Adrenalin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pasien`
--

CREATE TABLE `pasien` (
  `NoRM` varchar(10) NOT NULL,
  `NamaPasien` varchar(50) DEFAULT NULL,
  `Alamat` varchar(100) DEFAULT NULL,
  `Kecamatan` varchar(50) DEFAULT NULL,
  `Kelurahan` varchar(50) DEFAULT NULL,
  `Wilayah` varchar(50) DEFAULT NULL,
  `KodePos` varchar(10) DEFAULT NULL,
  `Telepon` varchar(15) DEFAULT NULL,
  `NoPasien` varchar(20) DEFAULT NULL,
  `NOPEN` varchar(20) DEFAULT NULL,
  `TglDaftar` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pasien`
--

INSERT INTO `pasien` (`NoRM`, `NamaPasien`, `Alamat`, `Kecamatan`, `Kelurahan`, `Wilayah`, `KodePos`, `Telepon`, `NoPasien`, `NOPEN`, `TglDaftar`) VALUES
('RM001', 'Bachtiar Jose', 'Kebon Jeruk No.27', 'Kembangan', 'Palmerah', 'Jakarta Barat', '11530', '5530999', '1234/PO/IV/99', '1000019999', '1999-05-01'),
('RM002', 'Bachtiar Jose', 'Kebon Jeruk No.27', 'Kembangan', 'Palmerah', 'Jakarta Barat', '11530', '5530999', '1234/PO/IV/99', '1000019999', '1999-05-01'),
('RM003', 'Bachtiar Jose', 'Kebon Jeruk No.27', 'Kembangan', 'Palmerah', 'Jakarta Barat', '11530', '5530999', '1234/PO/IV/99', '1000019999', '1999-05-01'),
('RM004', 'Bachtiar Jose', 'Kebon Jeruk No.27', 'Kembangan', 'Palmerah', 'Jakarta Barat', '11530', '5530999', '1234/PO/IV/99', '1000019999', '1999-05-01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemeriksaan`
--

CREATE TABLE `pemeriksaan` (
  `ID` int(11) NOT NULL,
  `NoRM` varchar(10) DEFAULT NULL,
  `TglPeriksa` date DEFAULT NULL,
  `KodeDokter` varchar(5) DEFAULT NULL,
  `KodeSakit` varchar(5) DEFAULT NULL,
  `KodeObat` varchar(5) DEFAULT NULL,
  `Dosis` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pemeriksaan`
--

INSERT INTO `pemeriksaan` (`ID`, `NoRM`, `TglPeriksa`, `KodeDokter`, `KodeSakit`, `KodeObat`, `Dosis`) VALUES
(1, 'RM001', '1999-05-01', 'D01', 'S11', 'B01', '3dd1'),
(2, 'RM001', '1999-05-01', 'D01', 'S11', 'B02', '4dd1'),
(3, 'RM002', '1999-04-04', 'D01', 'S12', 'B01', '3dd2'),
(4, 'RM002', '1999-04-04', 'D01', 'S12', 'B03', '4dd2'),
(5, 'RM003', '1999-04-04', 'D02', 'S12', 'B04', '2dd2'),
(6, 'RM004', '1999-07-08', 'D04', 'S12', 'B01', '4dd2'),
(7, 'RM004', '1999-07-08', 'D04', 'S12', 'B02', '3dd1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sakit`
--

CREATE TABLE `sakit` (
  `KodeSakit` varchar(5) NOT NULL,
  `DeskripsiSakit` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `sakit`
--

INSERT INTO `sakit` (`KodeSakit`, `DeskripsiSakit`) VALUES
('S11', 'Tropicana'),
('S12', 'Ulcer Trombisis');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `dokter`
--
ALTER TABLE `dokter`
  ADD PRIMARY KEY (`KodeDokter`);

--
-- Indeks untuk tabel `obat`
--
ALTER TABLE `obat`
  ADD PRIMARY KEY (`KodeObat`);

--
-- Indeks untuk tabel `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`NoRM`);

--
-- Indeks untuk tabel `pemeriksaan`
--
ALTER TABLE `pemeriksaan`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `NoRM` (`NoRM`),
  ADD KEY `KodeDokter` (`KodeDokter`),
  ADD KEY `KodeSakit` (`KodeSakit`),
  ADD KEY `KodeObat` (`KodeObat`);

--
-- Indeks untuk tabel `sakit`
--
ALTER TABLE `sakit`
  ADD PRIMARY KEY (`KodeSakit`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pemeriksaan`
--
ALTER TABLE `pemeriksaan`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `pemeriksaan`
--
ALTER TABLE `pemeriksaan`
  ADD CONSTRAINT `pemeriksaan_ibfk_1` FOREIGN KEY (`NoRM`) REFERENCES `pasien` (`NoRM`),
  ADD CONSTRAINT `pemeriksaan_ibfk_2` FOREIGN KEY (`KodeDokter`) REFERENCES `dokter` (`KodeDokter`),
  ADD CONSTRAINT `pemeriksaan_ibfk_3` FOREIGN KEY (`KodeSakit`) REFERENCES `sakit` (`KodeSakit`),
  ADD CONSTRAINT `pemeriksaan_ibfk_4` FOREIGN KEY (`KodeObat`) REFERENCES `obat` (`KodeObat`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
