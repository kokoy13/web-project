-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Des 2024 pada 14.26
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
-- Database: `trpl`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `berita`
--

CREATE TABLE `berita` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `judul_berita` varchar(100) NOT NULL,
  `file_upload` varchar(100) NOT NULL,
  `isi_berita` text NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `berita`
--

INSERT INTO `berita` (`id`, `user_id`, `kategori_id`, `judul_berita`, `file_upload`, `isi_berita`, `date_created`) VALUES
(11, 7, 2, 'Kemajuan TI', '1733977950_wallhaven-gpg78d.png', 'Kemajuan dalam teknologi informasi (TI) terus menjadi pendorong utama perubahan di berbagai sektor, mulai dari pendidikan, kesehatan, hingga industri. Perkembangan seperti kecerdasan buatan (AI), Internet of Things (IoT), dan big data telah mengubah mobil\r\n\r\nDi bidang pendidikan, pembelajaran jarak jauh kini semakin mudah diakses berkat platform digital dan aplikasi e-learning. Dalam sektor kesehatan, teknologi seperti telemedis dan analisis data kesehatan memungkinkan diagnosis yang lebih cepat dan efisien. Sementara itu, industri semakin mengandalkan otomatisasi dan analitik data untuk meningkatkan produktivitas dan pengambilan\r\n\r\nTransformasi digital ini juga membawa tantangan, seperti keamanan data dan kesenjangan digital, yang membutuhkan perhatian serius. Meski demikian, TI terus memberikan solusi inovatif yang mendukung perkembangan masyarakat menuju masa depan yang lebih cerdas dan te\r\n\r\nKemajuan ini adalah bukti nyata bahwa informasi teknologi telah menjadi tulang punggung era modern, menghadirkan peluang tak terbatas bagi mereka', '2024-12-12 04:52:17'),
(12, 7, 3, 'Teknologi Rekayasa Perangkat Lunak', '1733980337_wallhaven-6d83rx.png', 'Teknologi Rekayasa Perangkat Lunak (TRPL) terus menunjukkan perkembangan pesat yang berdampak besar pada dunia digital. Dengan metodologi modern seperti Agile, DevOps, dan pendekatan Continuous Integration/Continuous Deployment (CI/CD), pengembangan perangkat lunak kini lebih cepat, efisien, dan adaptif terhadap kebutuhan pasar.\r\n\r\nKemajuan dalam TRPL juga dipengaruhi oleh teknologi canggih seperti kecerdasan buatan (AI), pembelajaran mesin, dan komputasi awan. Teknologi ini memungkinkan terciptanya perangkat lunak yang lebih cerdas, responsif, dan berskalabel. Selain itu, praktik pengujian otomatis (automated testing) semakin mempermudah pengembang untuk memastikan kualitas\r\n\r\nDi sisi lain, teknologi low-code dan no-code mulai memberikan akses kepada individu tanpa latar belakang pemrograman untuk berkontribusi dalam pengembangan aplikasi. Hal ini membuka peluang baru bagi inovasi dan kolaborasi lintas disiplin.\r\n\r\nNamun, perkembangan TRPL juga menghadirkan tantangan, seperti kebutuhan akan pengamanan data yang lebih kuat dan peningkatan keterampilan pengembang agar dapat mengikuti tren teknologi terkini. Meski demikian, TRPL tetap menjadi fondasi utama dalam membangun solusi digital yang mendorong transformasi di berbagai sektor, mulai dari bisnis hingga pendidikan d\r\n\r\nDengan kemajuan ini, TRPL tidak hanya menjadi kunci sukses inovasi teknologi, tetapi juga membentuk masa depan dunia digital yang semakin cerdas dan terintegrasi.', '2024-12-12 05:12:17'),
(13, 7, 4, 'Manajemen Ekonomi', '1733979312_wallhaven-0w95x7.jpg', 'Perkembangan teknologi telah memberikan dampak yang signifikan terhadap manajemen perekonomian, baik di tingkat individu, perusahaan, maupun negara. Dengan integrasi teknologi informasi dan big data, pengelolaan sumber daya ekonomi kini menjadi lebih efisien dan ter\r\n\r\nSalah satu inovasi penting adalah hadirnya platform digital seperti software Enterprise Resource Planning (ERP) yang membantu perusahaan dalam mengelola keuangan, inventaris, hingga rantai pasok secara real-time. Di sisi lain, data analitik berbasis kecerdasan buatan (AI) memungkinkan pengambilan keputusan yang lebih akurat melalui prediksi tren pasar dan an\r\n\r\nDalam sektor publik, teknologi seperti blockchain semakin diterapkan untuk transparansi keuangan negara, termasuk dalam pengelolaan anggaran dan pajak. Di tingkat individu, aplikasi keuangan digital membantu masyarakat merencanakan inv\r\n\r\nNamun, perkembangan ini juga menghadirkan tantangan baru, seperti kebutuhan literasi digital dan pengamanan data yang lebih baik. Meski begitu, integrasi teknologi dalam manajemen perekonomian terus membuka peluang untuk meningkatkan penghematan daya, menciptakan efisiensi, dan memperkuat stabilitas perekonomian', '2024-12-11 22:55:12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosen`
--

CREATE TABLE `dosen` (
  `id` int(11) NOT NULL,
  `nip` varchar(18) NOT NULL,
  `nama_dosen` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `prodi_id` int(11) NOT NULL,
  `notelp` varchar(15) NOT NULL,
  `alamat` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `dosen`
--

INSERT INTO `dosen` (`id`, `nip`, `nama_dosen`, `email`, `prodi_id`, `notelp`, `alamat`) VALUES
(3, '4324324', 'Ronal HD', 'ronalhd@gmail.com', 4, '08543239992', 'Padang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `nama_kategori` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id`, `nama_kategori`) VALUES
(2, 'Private'),
(3, 'Publik'),
(4, 'Terbaru');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` varchar(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jk` enum('L','P') NOT NULL,
  `email` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `prodi_id` int(11) NOT NULL,
  `hobi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`, `tgl_lahir`, `jk`, `email`, `alamat`, `prodi_id`, `hobi`) VALUES
('343242343', 'Fauzi Fernanda', '2004-07-14', 'L', 'fauzi@gmail.com', 'Surian', 4, 'coding'),
('534545435', 'fauzi', '2009-09-15', 'L', 'fauzi@gmail.com', 'sadasd', 2, 'game');

-- --------------------------------------------------------

--
-- Struktur dari tabel `prodi`
--

CREATE TABLE `prodi` (
  `id` int(11) NOT NULL,
  `nama_prodi` varchar(50) NOT NULL,
  `jenjang_studi` char(2) NOT NULL,
  `keterangan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `prodi`
--

INSERT INTO `prodi` (`id`, `nama_prodi`, `jenjang_studi`, `keterangan`) VALUES
(3, 'MI', 'd3', 'Baru'),
(4, 'TRPL', 'd2', 'Lama');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(40) NOT NULL,
  `level` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `full_name`, `email`, `password`, `level`) VALUES
(7, 'administrator', 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'admin'),
(8, 'user1', 'user1@gmail.com', 'ee11cbb19052e40b07aac0ca060c23ee', 'user');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id`),
  ADD KEY `berita_ibfk_1` (`user_id`),
  ADD KEY `kategori_ibfk_1` (`kategori_id`);

--
-- Indeks untuk tabel `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dosen_ibfk_1` (`prodi_id`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`);

--
-- Indeks untuk tabel `prodi`
--
ALTER TABLE `prodi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `berita`
--
ALTER TABLE `berita`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `dosen`
--
ALTER TABLE `dosen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `prodi`
--
ALTER TABLE `prodi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `berita`
--
ALTER TABLE `berita`
  ADD CONSTRAINT `berita_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `kategori_ibfk_1` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`id`);

--
-- Ketidakleluasaan untuk tabel `dosen`
--
ALTER TABLE `dosen`
  ADD CONSTRAINT `dosen_ibfk_1` FOREIGN KEY (`prodi_id`) REFERENCES `prodi` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
