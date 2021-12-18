-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Des 2021 pada 15.14
-- Versi server: 10.4.18-MariaDB
-- Versi PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_alumni`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `nama_event` varchar(60) NOT NULL,
  `event_title` varchar(50) NOT NULL,
  `event_slug` varchar(60) NOT NULL,
  `deskripsi` text NOT NULL,
  `tanggal_posting` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `event`
--

INSERT INTO `event` (`id`, `nama_event`, `event_title`, `event_slug`, `deskripsi`, `tanggal_posting`) VALUES
(1, 'Reuni Akbar', 'Reuni Akbar Angkatan 9', 'reuni-akbar-angkatan-9', 'Acara reuni merupakan sebuah acara yang diadakan untuk mempertemukan kembali sekumpulan orang yang dulu pernah memiliki satu tujuan yang sama dan di lingkungan yang sama. Sehingga bisa disimpulkan reuni ini menyambungkan silahturahmi atau hubungan yang sudah jarang bertemu bahkan tidak pernah bertemu lagi karena kesibukan masing-masing.', '2021-12-11 09:51:54'),
(2, 'Reuni Akuntansi 2019', 'Go Green Nostalgia Charity', 'go-green-nostalgia-charity', 'Penghijaun : kita akan menanam pohon yang belum ada di lingkungan SMKN 2 Kab. Tangerang', '2021-12-12 05:45:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `lowongan`
--

CREATE TABLE `lowongan` (
  `id` int(11) NOT NULL,
  `nama_perusahaan` varchar(50) NOT NULL,
  `job_title` varchar(50) NOT NULL,
  `job_slug` varchar(60) NOT NULL,
  `deskripsi` text NOT NULL,
  `tanggal_posting` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `lowongan`
--

INSERT INTO `lowongan` (`id`, `nama_perusahaan`, `job_title`, `job_slug`, `deskripsi`, `tanggal_posting`) VALUES
(1, 'Garuda Web Development', 'Web Developer', 'web-developer', 'Kami mencari kandidat WordPress untuk bekerja bersama kami dengan pengalaman yang dapat diandalkan dan paham SEO.\r\n\r\nTanggung Jawab Pekerjaan :\r\nMerancang, mengembangkan, dan membangun aplikasi web yang berskala besar, lintas platform, dan berkinerja tinggi.\r\nMenguji sebuah aplikasi yang dibuat apakah sudah mampu melakukan tugasnya seperti yang telah direncanakan.\r\nMencari kekurangan dalam suatu aplikasi untuk kemudian dikonsultasikan solusinya.\r\nMenganalisis bug / error dan melakukan perbaikan terhadap kekurangan dalam suatu aplikasi.\r\nMenguji kembali suatu aplikasi hingga tidak ditemukan kesalahan yang membuat fungsinya terganggu.\r\nPenempatan di Jakarta Selatan\r\n\r\nSyarat Pengalaman :\r\nMinimal pengelaman 2 tahun di WordPress\r\nKeahlian :\r\nMemiliki pengetahuan dan pengalaman yang baik akan:\r\n-mengerti konsep seo,\r\n-terbiasa membuat landing pages\r\n-paham troubleshoot wordpress\r\n-khatam custom web dari theme2 yang sudah ada.\r\n– Paham dengan wordpress termasuk themes dan plugin\r\n\r\nKualifikasi :\r\nLelaki atau Perempuan maksimum 35 Tahun.\r\nKandidat harus memiliki minimum D3 di bidang Teknologi Informasi atau sederajat.\r\nKemampuan berkomunikasi dengan baik dengan tim teknikal dan non teknikal.\r\nMampu bekerja di bawah tekanan, pekerja keras, berorientasi pada target dan waktu.\r\n\r\nWaktu Bekerja :\r\nSenin – Sabtu, 09.00 – 18.00', '2021-12-12 05:27:07'),
(2, 'PT SHOPEE INDONESIA', 'IT Helpdesk Engineer (Warehouse Sunter)', 'it-helpdesk-engineer-warehouse-sunter', '• Provide day-to-day support to ensure the smooth running of the computers, network devices, printers as well as end user requirements\r\n• Troubleshoot and resolve application issues, maintain and update technical support documentation\r\n• Handle asset management, maintain inventory and liaise with vendors\r\n• Manage IT infrastructure, system monitoring and reports\r\n• Implement and monitor office IT security and antivirus\r\n• Other duties include performing first level troubleshooting and support for scheduled server backups', '2021-12-12 05:21:22'),
(3, 'CITRA GROUP', 'IT', 'it', 'PT. CITRA SARANA KREASINDO Membuka Lowongan Pekerjaan untuk bagian Perpajakan yang Kompeten.\r\n\r\nTanggung Jawab Pekerjaan :\r\n1. Memahami Peraturan Perpajakan\r\n2. Memahami PBB ( Pajak bumi dan Bangunan )\r\n3. Memahami PPh ( Pajak Penghasilan )\r\n4. Memahami PPN ( Pajak Pertambahan Nilai )\r\n\r\nSyarat Pengalaman :\r\nPengalaman Minimal 2 th di bidang perpajakan\r\nKeahlian :\r\nMenguasai Microsoft Office\r\n\r\nKualifikasi :\r\nPria/Wanita Jujur dan Teliti\r\n\r\nWaktu Bekerja :\r\nJam 08.30 – 17.30 senin – Jum’at\r\nJenis Pekerjaan :\r\nRemote (Work From Home)', '2021-12-17 07:35:11'),
(4, 'PT BSI', 'Dosen Web Programming', 'dosen-web-programming', 'Lulusan S2', '2021-12-17 07:35:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `profil`
--

CREATE TABLE `profil` (
  `id` int(11) NOT NULL,
  `id_user` int(11) UNSIGNED NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `tempat_lahir` varchar(20) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `nisn` int(11) NOT NULL,
  `alamat` text NOT NULL,
  `no_telp` varchar(16) NOT NULL,
  `nama_ayah` varchar(50) NOT NULL,
  `pekerjaan_ayah` varchar(20) NOT NULL,
  `nama_ibu` varchar(50) NOT NULL,
  `pekerjaan_ibu` varchar(20) NOT NULL,
  `tahun_masuk` varchar(9) NOT NULL,
  `tahun_lulus` varchar(9) NOT NULL,
  `no_ijazah` varchar(50) NOT NULL,
  `no_skhun` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `profil`
--

INSERT INTO `profil` (`id`, `id_user`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `nisn`, `alamat`, `no_telp`, `nama_ayah`, `pekerjaan_ayah`, `nama_ibu`, `pekerjaan_ibu`, `tahun_masuk`, `tahun_lulus`, `no_ijazah`, `no_skhun`) VALUES
(1, 2, 'Laki-Laki', 'Tangerang', '2001-08-13', 167543, 'Perum. Taman Walet Blok SJ 10 no 6', '088777777777', 'Harry Styles', 'DOKTER', 'Kendall Jenner', 'PEGAWAI NEGERI SIPIL', '2017', '2018', 'E342567', '63246923493592'),
(2, 3, 'Laki-Laki', 'Holmes Chapel', '1994-02-01', 18987268, 'Victoria Avenue, London', '080102199427', 'Edward', 'PENGACARA', 'Anne', 'MENGURUS RUMAH TANGG', '2015', '2018', '983286', 'd736462'),
(3, 3, 'Laki-Laki', 'Holmes Chapel', '1994-02-01', 18987268, 'Victoria Avenue, London', '080102199427', 'Edward', 'PENGACARA', 'Anne', 'MENGURUS RUMAH TANGG', '2015', '2018', '983286', 'd736462');

-- --------------------------------------------------------

--
-- Struktur dari tabel `referensi_profesi`
--

CREATE TABLE `referensi_profesi` (
  `id_profesi` int(11) NOT NULL,
  `nama_profesi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `referensi_profesi`
--

INSERT INTO `referensi_profesi` (`id_profesi`, `nama_profesi`) VALUES
(1, 'BELUM/TIDAK BEKERJA'),
(2, 'MENGURUS RUMAH TANGGA'),
(3, 'PELAJAR/MAHASISWA'),
(4, 'PENSIUNAN'),
(5, 'PEGAWAI NEGERI SIPIL'),
(6, 'TENTARA NASIONAL INDONESIA'),
(7, 'KEPOLISIAN RI'),
(8, 'PERDAGANGAN'),
(9, 'PETANI/PEKEBUN'),
(10, 'PETERNAK'),
(11, 'NELAYAN/PERIKANAN'),
(12, 'INDUSTRI'),
(13, 'KONSTRUKSI'),
(14, 'TRANSPORTASI'),
(15, 'KARYAWAN SWASTA'),
(16, 'KARYAWAN BUMN'),
(18, 'KARYAWAN HONORER'),
(19, 'BURUH HARIAN LEPAS'),
(21, 'BURUH NELAYAN/PERIKANAN'),
(22, 'BURUH PETERNAKAN'),
(23, 'PEMBANTU RUMAH TANGGA'),
(24, 'TUKANG CUKUR'),
(25, 'TUKANG LISTRIK'),
(26, 'TUKANG BATU'),
(30, 'TUKANG JAHIT'),
(31, 'TUKANG GIGI'),
(32, 'PENATA RIAS'),
(33, 'PENATA BUSANA'),
(34, 'PENATA RAMBUT'),
(35, 'MEKANIK'),
(36, 'SENIMAN'),
(39, 'PERANCANG BUSANA'),
(40, 'PENTERJEMAH'),
(44, 'WARTAWAN'),
(45, 'USTADZ/MUBALIGH'),
(46, 'JURU MASAK'),
(48, 'ANGGOTA DPR-RI'),
(49, 'ANGGOTA DPD'),
(50, 'ANGGOTA BPK'),
(51, 'PRESIDEN'),
(52, 'WAKIL PRESIDEN'),
(53, 'ANGGOTA MAHKAMAH KONSTITUSI'),
(54, 'ANGGOTA KABINET/KEMENTERIAN'),
(55, 'DUTA BESAR'),
(56, 'GUBERNUR'),
(57, 'WAKIL GUBERNUR'),
(58, 'BUPATI'),
(59, 'WAKIL BUPATI'),
(60, 'WALIKOTA'),
(61, 'WAKIL WALIKOTA'),
(62, 'ANGGOTA DPRD PROVINSI'),
(63, 'ANGGOTA DPRD KABUPATEN/KOTA'),
(64, 'DOSEN'),
(65, 'GURU'),
(66, 'PILOT'),
(67, 'PENGACARA'),
(68, 'NOTARIS'),
(69, 'ARSITEK'),
(70, 'AKUNTAN'),
(71, 'KONSULTAN'),
(72, 'DOKTER'),
(73, 'BIDAN'),
(74, 'PERAWAT'),
(75, 'APOTEKER'),
(76, 'PSIKIATER/PSIKOLOG'),
(77, 'PENYIAR TELEVISI'),
(78, 'PENYIAR RADIO'),
(79, 'PELAUT'),
(80, 'PENELITI'),
(81, 'SOPIR'),
(83, 'PARANORMAL'),
(84, 'PEDAGANG'),
(85, 'PERANGKAT DESA'),
(86, 'KEPALA DESA'),
(87, 'BIARAWATI'),
(88, 'WIRASWASTA');

-- --------------------------------------------------------

--
-- Struktur dari tabel `referensi_tahun`
--

CREATE TABLE `referensi_tahun` (
  `id` int(11) NOT NULL,
  `ref_tahun` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `referensi_tahun`
--

INSERT INTO `referensi_tahun` (`id`, `ref_tahun`) VALUES
(1, '2015'),
(2, '2016'),
(3, '2017'),
(4, '2018');

-- --------------------------------------------------------

--
-- Struktur dari tabel `status_alumni`
--

CREATE TABLE `status_alumni` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `status` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `status_alumni`
--

INSERT INTO `status_alumni` (`id`, `id_user`, `status`, `deskripsi`) VALUES
(1, 3, 'Bekerja', 'Masih Tergabung dalam Group Band One Direction sejak tahun 2010, walaupun sedang bersolo karir sekarang'),
(2, 3, 'Bekerja', 'Masih Tergabung dalam Group Band One Direction sejak tahun 2010, walaupun sedang bersolo karir sekarang'),
(3, 2, 'Bekerja', 'Atlet Voly'),
(4, 2, 'Bekerja', 'Atlet Voly');

-- --------------------------------------------------------

--
-- Struktur dari tabel `testimoni`
--

CREATE TABLE `testimoni` (
  `id_testimoni` int(10) UNSIGNED NOT NULL,
  `id_user` int(11) UNSIGNED NOT NULL,
  `testimoni` text NOT NULL,
  `is_tampil` varchar(5) NOT NULL DEFAULT 'Tidak'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `testimoni`
--

INSERT INTO `testimoni` (`id_testimoni`, `id_user`, `testimoni`, `is_tampil`) VALUES
(1, 2, 'Sekolah ini sangat bagus dan tertata rapih', 'Ya'),
(2, 3, 'Saya akui sekolah ini bagus tapi saya gak ada jurusan multimedia padahal gue minat banget sekolah di sini plus lagi smkn 2 kabupaten Tangerang zona nya saya meskipun saya tidak sekolah di sini saya berharap sekolah ini bisa maju amin ??', 'Ya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(254) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`) VALUES
(1, '127.0.0.1', 'administrator', '$2y$08$uxr7rL.5XqnjP70K8qwc/.8WLYi8fuRqr7D3mqr9NycUgCOJe35xS', '', 'annisagf15@gmail.com', '', '-N-QzN8O8CuLVErLYKUPYOb87f501b797d0c121a', 1545139776, NULL, 1268889823, 1639836671, 1, 'Annisa', 'ghina'),
(2, '::1', 'user1@user.com', '$2y$08$XO8W1BSXoiTy32I4cGQqTOjxlQiLCTOV9jX3yy2h3huJt5LzJr3sK', NULL, 'fafaiz@gmail.com', NULL, NULL, NULL, NULL, 1545149959, 1639726629, 1, 'Fafaidza', 'Bagus'),
(3, '::1', 'user2@user.com', '$2y$08$IIRtkH7Qq1BgRH46C5QkH.dbW5yQMHN2j7biQ1L4Yrh7xAGoNYdn.', NULL, 'suheri@gmail.com', NULL, NULL, NULL, NULL, 1545287957, 1639570016, 1, 'Harry', 'Styles');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(21, 1, 1),
(20, 2, 2),
(19, 3, 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `lowongan`
--
ALTER TABLE `lowongan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `profil`
--
ALTER TABLE `profil`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `referensi_profesi`
--
ALTER TABLE `referensi_profesi`
  ADD PRIMARY KEY (`id_profesi`);

--
-- Indeks untuk tabel `referensi_tahun`
--
ALTER TABLE `referensi_tahun`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `status_alumni`
--
ALTER TABLE `status_alumni`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_users` (`id_user`);

--
-- Indeks untuk tabel `testimoni`
--
ALTER TABLE `testimoni`
  ADD PRIMARY KEY (`id_testimoni`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `lowongan`
--
ALTER TABLE `lowongan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `profil`
--
ALTER TABLE `profil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `referensi_profesi`
--
ALTER TABLE `referensi_profesi`
  MODIFY `id_profesi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT untuk tabel `referensi_tahun`
--
ALTER TABLE `referensi_tahun`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `status_alumni`
--
ALTER TABLE `status_alumni`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `testimoni`
--
ALTER TABLE `testimoni`
  MODIFY `id_testimoni` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `profil`
--
ALTER TABLE `profil`
  ADD CONSTRAINT `profil_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `status_alumni`
--
ALTER TABLE `status_alumni`
  ADD CONSTRAINT `status_alumni_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `testimoni`
--
ALTER TABLE `testimoni`
  ADD CONSTRAINT `testimoni_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
