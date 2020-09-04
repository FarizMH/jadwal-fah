-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 09, 2020 at 10:26 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ushuluddin`
--

-- --------------------------------------------------------

--
-- Table structure for table `cms_apicustom`
--

CREATE TABLE `cms_apicustom` (
  `id` int(10) UNSIGNED NOT NULL,
  `permalink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tabel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aksi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kolom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_query_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sql_where` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `method_type` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` longtext COLLATE utf8mb4_unicode_ci,
  `responses` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_apikey`
--

CREATE TABLE `cms_apikey` (
  `id` int(10) UNSIGNED NOT NULL,
  `screetkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_dashboard`
--

CREATE TABLE `cms_dashboard` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_email_queues`
--

CREATE TABLE `cms_email_queues` (
  `id` int(10) UNSIGNED NOT NULL,
  `send_at` datetime DEFAULT NULL,
  `email_recipient` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_content` text COLLATE utf8mb4_unicode_ci,
  `email_attachments` text COLLATE utf8mb4_unicode_ci,
  `is_sent` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_email_templates`
--

CREATE TABLE `cms_email_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_email_templates`
--

INSERT INTO `cms_email_templates` (`id`, `name`, `slug`, `subject`, `content`, `description`, `from_name`, `from_email`, `cc_email`, `created_at`, `updated_at`) VALUES
(1, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2020-01-10 04:02:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_logs`
--

CREATE TABLE `cms_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `ipaddress` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `useragent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `id_cms_users` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_logs`
--

INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-10 04:05:07', NULL),
(2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/jurusan/add-save', 'Add New Data  at Jurusan', '', 1, '2020-01-10 04:17:47', NULL),
(3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/dosen/add-save', 'Add New Data  at Dosen', '', 1, '2020-01-10 04:17:59', NULL),
(4, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/matkul/add-save', 'Add New Data  at Mata Kuliah', '', 1, '2020-01-10 04:18:39', NULL),
(5, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/delete/6', 'Delete data Dosen Matakuliah at Menu Management', '', 1, '2020-01-10 04:19:05', NULL),
(6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/delete/6', 'Delete data  at Menu Management', '', 1, '2020-01-10 04:19:08', NULL),
(7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/delete/7', 'Delete data Kelas Jam at Menu Management', '', 1, '2020-01-10 04:19:17', NULL),
(8, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/4', 'Update data Ruang at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Kelas</td><td>Ruang</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2020-01-10 04:19:41', NULL),
(9, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/dosen/add-save', 'Add New Data  at Dosen', '', 1, '2020-01-10 04:52:52', NULL),
(10, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/dosen/add-save', 'Add New Data  at Dosen', '', 1, '2020-01-10 04:53:01', NULL),
(11, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/jurusan/add-save', 'Add New Data  at Jurusan', '', 1, '2020-01-10 04:53:57', NULL),
(12, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/jurusan/add-save', 'Add New Data  at Jurusan', '', 1, '2020-01-10 04:54:03', NULL),
(13, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/jurusan/add-save', 'Add New Data  at Jurusan', '', 1, '2020-01-10 04:54:16', NULL),
(14, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/jurusan/add-save', 'Add New Data  at Jurusan', '', 1, '2020-01-10 04:54:26', NULL),
(15, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/jurusan/add-save', 'Add New Data  at Jurusan', '', 1, '2020-01-10 04:54:37', NULL),
(16, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/jam/add-save', 'Add New Data  at Jam', '', 1, '2020-01-10 04:54:57', NULL),
(17, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/jam/add-save', 'Add New Data  at Jam', '', 1, '2020-01-10 04:55:58', NULL),
(18, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/jam/add-save', 'Add New Data  at Jam', '', 1, '2020-01-10 04:56:06', NULL),
(19, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/jam/add-save', 'Add New Data  at Jam', '', 1, '2020-01-10 04:56:17', NULL),
(20, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/matkul/add-save', 'Add New Data  at Mata Kuliah', '', 1, '2020-01-10 04:56:52', NULL),
(21, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/dos_mat/add-save', 'Add New Data  at Dosen Matakuliah', '', 1, '2020-01-10 05:09:51', NULL),
(22, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/jam/edit-save/4', 'Update data  at Jam', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2020-01-10 05:54:58', NULL),
(23, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/kelas/add-save', 'Add New Data  at Kelas', '', 1, '2020-01-10 05:57:11', NULL),
(24, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/kelas/add-save', 'Add New Data  at Kelas', '', 1, '2020-01-10 05:57:18', NULL),
(25, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/jam/add-save', 'Add New Data  at Jam', '', 1, '2020-01-10 06:28:47', NULL),
(26, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/jam/add-save', 'Add New Data  at Jam', '', 1, '2020-01-10 06:28:53', NULL),
(27, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/jam/add-save', 'Add New Data  at Jam', '', 1, '2020-01-10 06:29:00', NULL),
(28, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/jurusan/add-save', 'Add New Data  at Jurusan', '', 1, '2020-01-10 06:29:12', NULL),
(29, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/jurusan/add-save', 'Add New Data  at Jurusan', '', 1, '2020-01-10 06:29:20', NULL),
(30, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/jurusan/add-save', 'Add New Data  at Jurusan', '', 1, '2020-01-10 06:29:28', NULL),
(31, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/jurusan/add-save', 'Add New Data  at Jurusan', '', 1, '2020-01-10 06:29:34', NULL),
(32, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/jurusan/add-save', 'Add New Data  at Jurusan', '', 1, '2020-01-10 06:30:16', NULL),
(33, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/kelas/add-save', 'Add New Data  at Kelas', '', 1, '2020-01-10 06:30:40', NULL),
(34, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/kelas/add-save', 'Add New Data  at Kelas', '', 1, '2020-01-10 06:30:47', NULL),
(35, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/matkul/add-save', 'Add New Data  at Mata Kuliah', '', 1, '2020-01-10 06:31:21', NULL),
(36, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/dosen/add-save', 'Add New Data  at Dosen', '', 1, '2020-01-10 06:31:40', NULL),
(37, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/dos_mat/add-save', 'Add New Data  at Dosen Matakuliah', '', 1, '2020-01-10 06:32:24', NULL),
(38, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/dosen/add-save', 'Add New Data  at Dosen', '', 1, '2020-01-10 06:37:07', NULL),
(39, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/dosen/add-save', 'Add New Data  at Dosen', '', 1, '2020-01-10 06:37:07', NULL),
(40, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-01-10 07:04:15', NULL),
(41, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-10 07:04:32', NULL),
(42, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/users/edit-save/1', 'Update data Super Admin at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>photo</td><td></td><td>uploads/1/2020-01/uin.png</td></tr><tr><td>email</td><td>admin@crudbooster.com</td><td>admin@fu.uinsgd.com</td></tr><tr><td>password</td><td>$2y$10$mkeSVCeVJlVavVFoxs3vrOkpGhp1QKQ.WaseXVAuwr0/77qXlVUau</td><td>$2y$10$sXyT8ZEPtgl7/bdgx6tf5uRg4ESsgbX9RfsFHJInigQ6UQjSP0knG</td></tr><tr><td>id_cms_privileges</td><td>1</td><td></td></tr><tr><td>status</td><td>Active</td><td></td></tr></tbody></table>', 1, '2020-01-10 07:05:58', NULL),
(43, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/users/edit-save/1', 'Update data Super Admin at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$sXyT8ZEPtgl7/bdgx6tf5uRg4ESsgbX9RfsFHJInigQ6UQjSP0knG</td><td>$2y$10$.WylfEpYqnfi0k9LghwA0OtmcoBxtyfk3Zhz6lHZ0Sd0n5EQI05NS</td></tr><tr><td>id_cms_privileges</td><td>1</td><td></td></tr><tr><td>status</td><td>Active</td><td></td></tr></tbody></table>', 1, '2020-01-10 07:06:18', NULL),
(44, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@fu.uinsgd.com logout', '', 1, '2020-01-10 07:06:30', NULL),
(45, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@fu.uinsgd.com login with IP Address 127.0.0.1', '', 1, '2020-01-10 07:06:48', NULL),
(46, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@fu.uinsgd.com login with IP Address 127.0.0.1', '', 1, '2020-01-24 03:19:34', NULL),
(47, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@fu.uinsgd.com login with IP Address 127.0.0.1', '', 1, '2020-01-26 01:40:16', NULL),
(48, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/jurusan/add-save', 'Add New Data  at Jurusan', '', 1, '2020-01-26 01:42:12', NULL),
(49, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/jurusan/add-save', 'Add New Data  at Jurusan', '', 1, '2020-01-26 01:42:22', NULL),
(50, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/jam/add-save', 'Add New Data  at Jam', '', 1, '2020-01-26 01:43:24', NULL),
(51, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/jam/add-save', 'Add New Data  at Jam', '', 1, '2020-01-26 01:43:30', NULL),
(52, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/jam/add-save', 'Add New Data  at Jam', '', 1, '2020-01-26 01:43:38', NULL),
(53, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/kelas/add-save', 'Add New Data  at Kelas', '', 1, '2020-01-26 01:43:57', NULL),
(54, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/kelas/add-save', 'Add New Data  at Kelas', '', 1, '2020-01-26 01:44:05', NULL),
(55, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/kelas/add-save', 'Add New Data  at Kelas', '', 1, '2020-01-26 01:44:13', NULL),
(56, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/matkul/add-save', 'Add New Data  at Mata Kuliah', '', 1, '2020-01-26 01:44:41', NULL),
(57, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/matkul/add-save', 'Add New Data  at Mata Kuliah', '', 1, '2020-01-26 01:44:57', NULL),
(58, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/dos_mat/add-save', 'Add New Data  at Dosen Matakuliah', '', 1, '2020-01-26 01:45:34', NULL),
(59, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/dos_mat/add-save', 'Add New Data  at Dosen Matakuliah', '', 1, '2020-01-26 01:45:46', NULL),
(60, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/dos_mat/add-save', 'Add New Data  at Dosen Matakuliah', '', 1, '2020-01-26 02:42:48', NULL),
(61, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/dos_mat/edit-save/2', 'Update data  at Dosen Matakuliah', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>kelas</td><td></td><td></td></tr></tbody></table>', 1, '2020-01-26 02:43:06', NULL),
(62, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/dos_mat/edit-save/1', 'Update data  at Dosen Matakuliah', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>kelas</td><td></td><td></td></tr></tbody></table>', 1, '2020-01-26 02:43:29', NULL),
(63, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/admin/login', 'admin@fu.uinsgd.com login with IP Address 127.0.0.1', '', 1, '2020-01-26 03:45:11', NULL),
(64, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/admin/dosen/add-save', 'Add New Data  at Dosen', '', 1, '2020-01-26 04:32:58', NULL),
(65, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/admin/dos_mat/add-save', 'Add New Data  at Dosen Matakuliah', '', 1, '2020-01-26 04:46:52', NULL),
(66, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/admin/kelas/add-save', 'Add New Data  at Kelas', '', 1, '2020-01-26 04:47:45', NULL),
(67, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/admin/matkul/add-save', 'Add New Data  at Mata Kuliah', '', 1, '2020-01-26 04:48:06', NULL),
(68, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/admin/matkul/add-save', 'Add New Data  at Mata Kuliah', '', 1, '2020-01-26 04:48:27', NULL),
(69, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/admin/dosen/add-save', 'Add New Data  at Dosen', '', 1, '2020-01-26 04:49:16', NULL),
(70, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/admin/dos_mat/add-save', 'Add New Data  at Dosen Matakuliah', '', 1, '2020-01-26 04:49:57', NULL),
(71, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/admin/dos_mat/add-save', 'Add New Data  at Dosen Matakuliah', '', 1, '2020-01-26 04:50:35', NULL),
(72, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/admin/dos_mat/add-save', 'Add New Data  at Dosen Matakuliah', '', 1, '2020-01-26 04:51:13', NULL),
(73, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/admin/dos_mat/add-save', 'Add New Data  at Dosen Matakuliah', '', 1, '2020-01-26 04:51:48', NULL),
(74, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/admin/dos_mat/add-save', 'Add New Data  at Dosen Matakuliah', '', 1, '2020-01-26 04:52:17', NULL),
(75, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/admin/dos_mat/add-save', 'Add New Data  at Dosen Matakuliah', '', 1, '2020-01-26 04:52:38', NULL),
(76, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/admin/dos_mat/edit-save/6', 'Update data  at Dosen Matakuliah', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2020-01-26 04:53:13', NULL),
(77, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/admin/jam/delete/1', 'Delete data 1 at Jam', '', 1, '2020-01-26 04:54:06', NULL),
(78, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/admin/jurusan/edit-save/2', 'Update data  at Jurusan', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>singkatan</td><td></td><td>AFI</td></tr></tbody></table>', 1, '2020-01-26 04:59:37', NULL),
(79, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/admin/jurusan/edit-save/1', 'Update data  at Jurusan', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>singkatan</td><td></td><td>IAT</td></tr></tbody></table>', 1, '2020-01-26 04:59:52', NULL),
(80, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/admin/jam/delete/2', 'Delete data 2 at Jam', '', 1, '2020-01-26 05:01:16', NULL),
(81, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/admin/jam/add-save', 'Add New Data  at Jam', '', 1, '2020-01-26 05:01:40', NULL),
(82, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/admin/jam/add-save', 'Add New Data  at Jam', '', 1, '2020-01-26 05:01:55', NULL),
(83, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/admin/jam/add-save', 'Add New Data  at Jam', '', 1, '2020-01-26 05:02:10', NULL),
(84, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/admin/jam/add-save', 'Add New Data  at Jam', '', 1, '2020-01-26 05:02:37', NULL),
(85, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/admin/jam/add-save', 'Add New Data  at Jam', '', 1, '2020-01-26 05:02:54', NULL),
(86, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/admin/jam/action-selected', 'Delete data 8,7,6,5,4,3 at Jam', '', 1, '2020-01-26 05:11:11', NULL),
(87, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/admin/jam/add-save', 'Add New Data  at Jam', '', 1, '2020-01-26 05:12:23', NULL),
(88, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/admin/jam/add-save', 'Add New Data  at Jam', '', 1, '2020-01-26 05:12:39', NULL),
(89, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/admin/jam/add-save', 'Add New Data  at Jam', '', 1, '2020-01-26 05:13:02', NULL),
(90, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/admin/jam/add-save', 'Add New Data  at Jam', '', 1, '2020-01-26 05:13:18', NULL),
(91, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/admin/jam/add-save', 'Add New Data  at Jam', '', 1, '2020-01-26 05:13:32', NULL),
(92, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/admin/jam/add-save', 'Add New Data  at Jam', '', 1, '2020-01-26 05:13:44', NULL),
(93, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/admin/jam/add-save', 'Add New Data  at Jam', '', 1, '2020-01-26 05:13:57', NULL),
(94, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/admin/jam/add-save', 'Add New Data  at Jam', '', 1, '2020-01-26 05:14:16', NULL),
(95, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/admin/jam/add-save', 'Add New Data  at Jam', '', 1, '2020-01-26 05:14:32', NULL),
(96, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/admin/jam/add-save', 'Add New Data  at Jam', '', 1, '2020-01-26 05:14:48', NULL),
(97, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/admin/jam/add-save', 'Add New Data  at Jam', '', 1, '2020-01-26 05:15:07', NULL),
(98, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/admin/jam/add-save', 'Add New Data  at Jam', '', 1, '2020-01-26 05:15:37', NULL),
(99, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@fu.uinsgd.com login with IP Address 127.0.0.1', '', 1, '2020-01-26 06:48:31', NULL),
(100, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@fu.uinsgd.com logout', '', 1, '2020-01-26 06:51:07', NULL),
(101, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/login', 'admin@fu.uinsgd.com login with IP Address ::1', '', 1, '2020-01-26 06:58:17', NULL),
(102, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/logout', 'admin@fu.uinsgd.com logout', '', 1, '2020-01-26 06:59:02', NULL),
(103, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/login', 'admin@fu.uinsgd.com login with IP Address ::1', '', 1, '2020-01-26 06:59:15', NULL),
(104, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/logout', 'admin@fu.uinsgd.com logout', '', 1, '2020-01-26 06:59:28', NULL),
(105, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/login', 'admin@fu.uinsgd.com login with IP Address ::1', '', 1, '2020-01-26 07:00:52', NULL),
(106, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/users/add-save', 'Add New Data Alwan Muhtarom at Users Management', '', 1, '2020-01-26 07:03:07', NULL),
(107, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/logout', 'admin@fu.uinsgd.com logout', '', 1, '2020-01-26 07:03:17', NULL),
(108, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/login', 'alwanmuhtarom@gmail.com login with IP Address ::1', '', 2, '2020-01-26 07:03:32', NULL),
(109, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/logout', 'alwanmuhtarom@gmail.com logout', '', 2, '2020-01-26 07:03:46', NULL),
(110, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/login', 'admin@fu.uinsgd.com login with IP Address ::1', '', 1, '2020-01-26 07:03:50', NULL),
(111, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/menu_management/edit-save/1', 'Update data Dosen at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr></tbody></table>', 1, '2020-01-26 07:04:16', NULL),
(112, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/menu_management/edit-save/2', 'Update data Jam at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2020-01-26 07:04:30', NULL),
(113, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/menu_management/edit-save/3', 'Update data Jurusan at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2020-01-26 07:04:43', NULL),
(114, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/menu_management/edit-save/4', 'Update data Ruang at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2020-01-26 07:04:55', NULL),
(115, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/menu_management/edit-save/5', 'Update data Mata Kuliah at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>', 1, '2020-01-26 07:05:09', NULL),
(116, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/logout', 'admin@fu.uinsgd.com logout', '', 1, '2020-01-26 07:05:21', NULL),
(117, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/login', 'alwanmuhtarom@gmail.com login with IP Address ::1', '', 2, '2020-01-26 07:05:36', NULL),
(118, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/logout', 'alwanmuhtarom@gmail.com logout', '', 2, '2020-01-26 07:11:32', NULL),
(119, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/login', 'admin@fu.uinsgd.com login with IP Address ::1', '', 1, '2020-01-26 07:12:05', NULL),
(120, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/logout', 'admin@fu.uinsgd.com logout', '', 1, '2020-01-26 07:12:43', NULL),
(121, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/login', 'alwanmuhtarom@gmail.com login with IP Address ::1', '', 2, '2020-01-26 07:15:12', NULL),
(122, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/logout', 'alwanmuhtarom@gmail.com logout', '', 2, '2020-01-26 07:18:24', NULL),
(123, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/login', 'admin@fu.uinsgd.com login with IP Address ::1', '', 1, '2020-01-26 08:57:16', NULL),
(124, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/logout', 'admin@fu.uinsgd.com logout', '', 1, '2020-01-26 08:59:15', NULL),
(125, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/login', 'admin@fu.uinsgd.com login with IP Address ::1', '', 1, '2020-01-26 23:36:48', NULL),
(126, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/dosen/action-selected', 'Delete data 3 at Dosen', '', 1, '2020-01-26 23:38:48', NULL),
(127, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/jurusan/add-save', 'Add New Data  at Jurusan', '', 1, '2020-01-26 23:40:36', NULL),
(128, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/jurusan/add-save', 'Add New Data  at Jurusan', '', 1, '2020-01-26 23:40:57', NULL),
(129, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/logout', 'admin@fu.uinsgd.com logout', '', 1, '2020-01-26 23:42:06', NULL),
(130, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/login', 'alwanmuhtarom@gmail.com login with IP Address ::1', '', 2, '2020-01-26 23:42:17', NULL),
(131, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/matkul/add-save', 'Add New Data  at Mata Kuliah', '', 2, '2020-01-26 23:50:47', NULL),
(132, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/kelas/add-save', 'Add New Data  at Kelas', '', 2, '2020-01-26 23:51:23', NULL),
(133, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/jurusan/add-save', 'Add New Data  at Jurusan', '', 2, '2020-01-26 23:52:06', NULL),
(134, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/jurusan/delete/4', 'Delete data 4 at Jurusan', '', 2, '2020-01-26 23:52:38', NULL),
(135, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/jurusan/add-save', 'Add New Data  at Jurusan', '', 2, '2020-01-26 23:52:57', NULL),
(136, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/dosen/add-save', 'Add New Data  at Dosen', '', 2, '2020-01-26 23:55:09', NULL),
(137, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/dos_mat/add-save', 'Add New Data  at Dosen Matakuliah', '', 2, '2020-01-26 23:56:18', NULL),
(138, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/dos_mat/add-save', 'Add New Data  at Dosen Matakuliah', '', 2, '2020-01-26 23:58:49', NULL),
(139, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/matkul/add-save', 'Add New Data  at Mata Kuliah', '', 2, '2020-01-27 00:09:21', NULL),
(140, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/matkul/add-save', 'Add New Data  at Mata Kuliah', '', 2, '2020-01-27 00:09:40', NULL),
(141, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/matkul/add-save', 'Add New Data  at Mata Kuliah', '', 2, '2020-01-27 00:09:40', NULL),
(142, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/matkul/add-save', 'Add New Data  at Mata Kuliah', '', 2, '2020-01-27 00:09:51', NULL),
(143, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/matkul/add-save', 'Add New Data  at Mata Kuliah', '', 2, '2020-01-27 00:10:14', NULL),
(144, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/matkul/add-save', 'Add New Data  at Mata Kuliah', '', 2, '2020-01-27 00:10:30', NULL),
(145, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/matkul/add-save', 'Add New Data  at Mata Kuliah', '', 2, '2020-01-27 00:10:41', NULL),
(146, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/matkul/add-save', 'Add New Data  at Mata Kuliah', '', 2, '2020-01-27 00:10:50', NULL),
(147, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/matkul/add-save', 'Add New Data  at Mata Kuliah', '', 2, '2020-01-27 00:10:50', NULL),
(148, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/matkul/add-save', 'Add New Data  at Mata Kuliah', '', 2, '2020-01-27 00:10:59', NULL),
(149, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/matkul/add-save', 'Add New Data  at Mata Kuliah', '', 2, '2020-01-27 00:11:08', NULL),
(150, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/matkul/add-save', 'Add New Data  at Mata Kuliah', '', 2, '2020-01-27 00:11:20', NULL),
(151, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/matkul/add-save', 'Add New Data  at Mata Kuliah', '', 2, '2020-01-27 00:11:48', NULL),
(152, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/matkul/add-save', 'Add New Data  at Mata Kuliah', '', 2, '2020-01-27 00:11:55', NULL),
(153, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/matkul/add-save', 'Add New Data  at Mata Kuliah', '', 2, '2020-01-27 00:12:01', NULL),
(154, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/matkul/add-save', 'Add New Data  at Mata Kuliah', '', 2, '2020-01-27 00:12:01', NULL),
(155, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/matkul/add-save', 'Add New Data  at Mata Kuliah', '', 2, '2020-01-27 00:12:11', NULL),
(156, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/matkul/add-save', 'Add New Data  at Mata Kuliah', '', 2, '2020-01-27 00:12:11', NULL),
(157, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/matkul/add-save', 'Add New Data  at Mata Kuliah', '', 2, '2020-01-27 00:12:21', NULL),
(158, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/matkul/add-save', 'Add New Data  at Mata Kuliah', '', 2, '2020-01-27 00:12:21', NULL),
(159, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/matkul/add-save', 'Add New Data  at Mata Kuliah', '', 2, '2020-01-27 00:12:30', NULL),
(160, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/matkul/add-save', 'Add New Data  at Mata Kuliah', '', 2, '2020-01-27 00:12:30', NULL),
(161, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/matkul/add-save', 'Add New Data  at Mata Kuliah', '', 2, '2020-01-27 00:12:37', NULL),
(162, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/matkul/add-save', 'Add New Data  at Mata Kuliah', '', 2, '2020-01-27 00:12:37', NULL),
(163, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/matkul/add-save', 'Add New Data  at Mata Kuliah', '', 2, '2020-01-27 00:12:46', NULL),
(164, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/matkul/add-save', 'Add New Data  at Mata Kuliah', '', 2, '2020-01-27 00:13:04', NULL),
(165, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/matkul/add-save', 'Add New Data  at Mata Kuliah', '', 2, '2020-01-27 00:13:15', NULL),
(166, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/matkul/add-save', 'Add New Data  at Mata Kuliah', '', 2, '2020-01-27 00:13:21', NULL),
(167, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/matkul/add-save', 'Add New Data  at Mata Kuliah', '', 2, '2020-01-27 00:13:30', NULL),
(168, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/matkul/add-save', 'Add New Data  at Mata Kuliah', '', 2, '2020-01-27 00:13:30', NULL),
(169, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/matkul/add-save', 'Add New Data  at Mata Kuliah', '', 2, '2020-01-27 00:13:42', NULL),
(170, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/matkul/add-save', 'Add New Data  at Mata Kuliah', '', 2, '2020-01-27 00:13:54', NULL),
(171, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/matkul/add-save', 'Add New Data  at Mata Kuliah', '', 2, '2020-01-27 00:14:03', NULL),
(172, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/matkul/add-save', 'Add New Data  at Mata Kuliah', '', 2, '2020-01-27 00:14:13', NULL),
(173, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/matkul/add-save', 'Add New Data  at Mata Kuliah', '', 2, '2020-01-27 00:14:22', NULL),
(174, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/matkul/add-save', 'Add New Data  at Mata Kuliah', '', 2, '2020-01-27 00:14:31', NULL),
(175, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/matkul/add-save', 'Add New Data  at Mata Kuliah', '', 2, '2020-01-27 00:14:38', NULL),
(176, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/matkul/add-save', 'Add New Data  at Mata Kuliah', '', 2, '2020-01-27 00:14:46', NULL),
(177, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/matkul/add-save', 'Add New Data  at Mata Kuliah', '', 2, '2020-01-27 00:14:59', NULL),
(178, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/dosen/add-save', 'Add New Data  at Dosen', '', 2, '2020-01-27 00:16:04', NULL),
(179, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/dos_mat/add-save', 'Add New Data  at Dosen Matakuliah', '', 2, '2020-01-27 00:17:37', NULL),
(180, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/dos_mat/add-save', 'Add New Data  at Dosen Matakuliah', '', 2, '2020-01-27 00:18:11', NULL),
(181, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/dosen/add-save', 'Add New Data  at Dosen', '', 2, '2020-01-27 00:25:44', NULL),
(182, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/dos_mat/add-save', 'Add New Data  at Dosen Matakuliah', '', 2, '2020-01-27 00:26:57', NULL),
(183, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/dosen/delete/7', 'Delete data 7 at Dosen', '', 2, '2020-01-27 00:30:20', NULL),
(184, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/dosen/action-selected', 'Delete data 1 at Dosen', '', 2, '2020-01-27 01:06:25', NULL),
(185, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/logout', 'alwanmuhtarom@gmail.com logout', '', 2, '2020-01-27 01:08:22', NULL),
(186, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/login', 'admin@fu.uinsgd.com login with IP Address ::1', '', 1, '2020-01-27 01:08:30', NULL),
(187, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/login', 'admin@fu.uinsgd.com login with IP Address ::1', '', 1, '2020-01-27 09:12:12', NULL),
(188, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/logout', 'admin@fu.uinsgd.com logout', '', 1, '2020-01-27 09:12:38', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(189, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/login', 'admin@fu.uinsgd.com login with IP Address ::1', '', 1, '2020-01-28 23:30:08', NULL),
(190, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/logout', 'admin@fu.uinsgd.com logout', '', 1, '2020-01-28 23:30:16', NULL),
(191, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/login', 'admin@fu.uinsgd.com login with IP Address ::1', '', 1, '2020-01-29 02:53:25', NULL),
(192, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/logout', 'admin@fu.uinsgd.com logout', '', 1, '2020-01-29 03:08:15', NULL),
(193, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/login', 'admin@fu.uinsgd.com login with IP Address ::1', '', 1, '2020-01-29 03:55:55', NULL),
(194, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/matkul/add-save', 'Add New Data  at Mata Kuliah', '', 1, '2020-01-29 05:38:37', NULL),
(195, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/kelas/add-save', 'Add New Data  at Kelas', '', 1, '2020-01-29 05:38:50', NULL),
(196, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/kelas/add-save', 'Add New Data  at Kelas', '', 1, '2020-01-29 05:38:56', NULL),
(197, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/kelas/add-save', 'Add New Data  at Kelas', '', 1, '2020-01-29 05:39:00', NULL),
(198, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/jurusan/add-save', 'Add New Data  at Jurusan', '', 1, '2020-01-29 05:39:30', NULL),
(199, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/jurusan/add-save', 'Add New Data  at Jurusan', '', 1, '2020-01-29 05:39:54', NULL),
(200, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/jam/add-save', 'Add New Data  at Jam', '', 1, '2020-01-29 05:40:34', NULL),
(201, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/jam/add-save', 'Add New Data  at Jam', '', 1, '2020-01-29 05:40:47', NULL),
(202, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/jam/add-save', 'Add New Data  at Jam', '', 1, '2020-01-29 05:41:37', NULL),
(203, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/jam/add-save', 'Add New Data  at Jam', '', 1, '2020-01-29 05:41:51', NULL),
(204, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/jam/add-save', 'Add New Data  at Jam', '', 1, '2020-01-29 05:42:09', NULL),
(205, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/jam/add-save', 'Add New Data  at Jam', '', 1, '2020-01-29 05:42:18', NULL),
(206, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/jam/add-save', 'Add New Data  at Jam', '', 1, '2020-01-29 05:42:51', NULL),
(207, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/jam/add-save', 'Add New Data  at Jam', '', 1, '2020-01-29 05:43:03', NULL),
(208, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/jam/add-save', 'Add New Data  at Jam', '', 1, '2020-01-29 05:43:22', NULL),
(209, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/jam/delete/9', 'Delete data 9 at Jam', '', 1, '2020-01-29 05:44:29', NULL),
(210, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/jam/add-save', 'Add New Data  at Jam', '', 1, '2020-01-29 05:46:11', NULL),
(211, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/jam/add-save', 'Add New Data  at Jam', '', 1, '2020-01-29 05:46:27', NULL),
(212, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/jam/add-save', 'Add New Data  at Jam', '', 1, '2020-01-29 05:46:44', NULL),
(213, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/jam/delete/12', 'Delete data 12 at Jam', '', 1, '2020-01-29 05:47:12', NULL),
(214, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/jam/add-save', 'Add New Data  at Jam', '', 1, '2020-01-29 05:47:48', NULL),
(215, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/jam/add-save', 'Add New Data  at Jam', '', 1, '2020-01-29 05:48:01', NULL),
(216, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/dosen/add-save', 'Add New Data  at Dosen', '', 1, '2020-01-29 05:48:19', NULL),
(217, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/dos_mat/add-save', 'Add New Data  at Dosen Matakuliah', '', 1, '2020-01-29 05:48:47', NULL),
(218, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/dos_mat/add-save', 'Add New Data  at Dosen Matakuliah', '', 1, '2020-01-29 05:49:01', NULL),
(219, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/dosen/delete/1', 'Delete data 1 at Dosen', '', 1, '2020-01-29 05:51:15', NULL),
(220, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/dosen/add-save', 'Add New Data  at Dosen', '', 1, '2020-01-29 05:51:28', NULL),
(221, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/dos_mat/add-save', 'Add New Data  at Dosen Matakuliah', '', 1, '2020-01-29 05:51:49', NULL),
(222, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/dos_mat/add-save', 'Add New Data  at Dosen Matakuliah', '', 1, '2020-01-29 05:52:09', NULL),
(223, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/dosen/delete/2', 'Delete data 2 at Dosen', '', 1, '2020-01-29 05:52:48', NULL),
(224, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/jurusan/add-save', 'Add New Data  at Jurusan', '', 1, '2020-01-29 06:00:06', NULL),
(225, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/jurusan/add-save', 'Add New Data  at Jurusan', '', 1, '2020-01-29 06:00:17', NULL),
(226, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/matkul/delete/1', 'Delete data 1 at Mata Kuliah', '', 1, '2020-01-29 06:01:07', NULL),
(227, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/matkul/add-save', 'Add New Data  at Mata Kuliah', '', 1, '2020-01-29 06:02:08', NULL),
(228, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/matkul/action-selected', 'Delete data 2 at Mata Kuliah', '', 1, '2020-01-29 06:02:48', NULL),
(229, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/users/add-save', 'Add New Data R Yuli Ahmad Hambali at Users Management', '', 1, '2020-01-29 06:09:08', NULL),
(230, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/logout', 'admin@fu.uinsgd.com logout', '', 1, '2020-01-29 06:09:18', NULL),
(231, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/login', 'admin@fu.uinsgd.ac.id login with IP Address ::1', '', 3, '2020-01-29 06:09:30', NULL),
(232, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/logout', 'admin@fu.uinsgd.ac.id logout', '', 3, '2020-01-29 06:31:39', NULL),
(233, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/login', 'admin@fu.uinsgd.com login with IP Address ::1', '', 1, '2020-01-29 06:40:16', NULL),
(234, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/matkul/add-save', 'Add New Data  at Mata Kuliah', '', 1, '2020-01-29 06:40:29', NULL),
(235, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/matkul/add-save', 'Add New Data  at Mata Kuliah', '', 1, '2020-01-29 06:41:12', NULL),
(236, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/matkul/add-save', 'Add New Data  at Mata Kuliah', '', 1, '2020-01-29 06:42:20', NULL),
(237, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/logout', 'admin@fu.uinsgd.com logout', '', 1, '2020-01-29 07:26:21', NULL),
(238, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost/blog/public/admin/login', 'admin@fu.uinsgd.com login with IP Address ::1', '', 1, '2020-02-02 04:49:18', NULL),
(239, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@fu.uinsgd.com login with IP Address 127.0.0.1', '', 1, '2020-02-02 05:08:30', NULL),
(240, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/admin/surattugas/add-save', 'Add New Data  at Surat Tugas', '', 1, '2020-02-02 05:43:11', NULL),
(241, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/admin/dosen/add-save', 'Add New Data  at Dosen', '', 1, '2020-02-02 05:47:25', NULL),
(242, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/admin/dos_mat/add-save', 'Add New Data  at Dosen Matakuliah', '', 1, '2020-02-02 05:48:30', NULL),
(243, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/surattugas/edit-save/1', 'Update data  at Surat Tugas', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>akhirkuliah</td><td></td><td>02 September 2020</td></tr><tr><td>Semester</td><td></td><td>asd</td></tr></tbody></table>', 1, '2020-02-02 06:16:05', NULL),
(244, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/admin/surattugas/edit-save/1', 'Update data  at Surat Tugas', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>Semester</td><td>asd</td><td>genap</td></tr></tbody></table>', 1, '2020-02-02 06:33:53', NULL),
(245, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/admin/dos_mat/add-save', 'Add New Data  at Dosen Matakuliah', '', 1, '2020-02-02 07:26:39', NULL),
(246, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://localhost:8000/admin/dos_mat/add-save', 'Add New Data  at Dosen Matakuliah', '', 1, '2020-02-02 07:28:29', NULL),
(247, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/dos_mat/edit-save/7', 'Update data  at Dosen Matakuliah', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>kelas</td><td>B</td><td></td></tr></tbody></table>', 1, '2020-02-02 07:59:48', NULL),
(248, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@fu.uinsgd.com login with IP Address 127.0.0.1', '', 1, '2020-02-02 20:19:55', NULL),
(249, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@fu.uinsgd.com logout', '', 1, '2020-02-02 20:21:18', NULL),
(250, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@fu.uinsgd.com login with IP Address 127.0.0.1', '', 1, '2020-02-02 20:21:23', NULL),
(251, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/matkul/action-selected', 'Delete data 5,4,3 at Mata Kuliah', '', 1, '2020-02-02 20:22:02', NULL),
(252, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/matkul/add-save', 'Add New Data  at Mata Kuliah', '', 1, '2020-02-02 20:22:18', NULL),
(253, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/matkul/add-save', 'Add New Data  at Mata Kuliah', '', 1, '2020-02-02 20:22:44', NULL),
(254, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/kelas/action-selected', 'Delete data 3,2,1 at Kelas', '', 1, '2020-02-02 20:23:06', NULL),
(255, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/kelas/add-save', 'Add New Data  at Kelas', '', 1, '2020-02-02 20:23:20', NULL),
(256, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/kelas/add-save', 'Add New Data  at Kelas', '', 1, '2020-02-02 20:23:28', NULL),
(257, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/kelas/add-save', 'Add New Data  at Kelas', '', 1, '2020-02-02 20:23:36', NULL),
(258, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/dosen/action-selected', 'Delete data 3 at Dosen', '', 1, '2020-02-02 20:24:01', NULL),
(259, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/dosen/add-save', 'Add New Data  at Dosen', '', 1, '2020-02-02 20:24:48', NULL),
(260, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@fu.uinsgd.com logout', '', 1, '2020-02-02 20:27:29', NULL),
(261, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'alwanmuhtarom@gmail.com login with IP Address 127.0.0.1', '', 2, '2020-02-02 20:27:45', NULL),
(262, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'alwanmuhtarom@gmail.com logout', '', 2, '2020-02-02 21:06:53', NULL),
(263, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@fu.uinsgd.com login with IP Address 127.0.0.1', '', 1, '2020-02-02 21:06:58', NULL),
(264, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/jurusan/add-save', 'Add New Data  at Jurusan', '', 1, '2020-02-02 21:11:13', NULL),
(265, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/dos_mat/add-save', 'Add New Data  at Dosen Matakuliah', '', 1, '2020-02-02 21:15:05', NULL),
(266, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@fu.uinsgd.com login with IP Address 127.0.0.1', '', 1, '2020-02-03 08:35:38', NULL),
(267, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@fu.uinsgd.com login with IP Address 127.0.0.1', '', 1, '2020-02-04 06:20:11', NULL),
(268, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/dos_mat/add-save', 'Add New Data  at Dosen Matakuliah', '', 1, '2020-02-04 06:30:40', NULL),
(269, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/matkul/add-save', 'Add New Data  at Mata Kuliah', '', 1, '2020-02-04 06:31:58', NULL),
(270, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/matkul/add-save', 'Add New Data  at Mata Kuliah', '', 1, '2020-02-04 06:32:06', NULL),
(271, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/matkul/add-save', 'Add New Data  at Mata Kuliah', '', 1, '2020-02-04 06:32:20', NULL),
(272, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/matkul/add-save', 'Add New Data  at Mata Kuliah', '', 1, '2020-02-04 06:32:37', NULL),
(273, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/dosen/add-save', 'Add New Data  at Dosen', '', 1, '2020-02-04 06:33:00', NULL),
(274, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/dos_mat/add-save', 'Add New Data  at Dosen Matakuliah', '', 1, '2020-02-04 06:33:26', NULL),
(275, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/dos_mat/add-save', 'Add New Data  at Dosen Matakuliah', '', 1, '2020-02-04 06:33:47', NULL),
(276, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/dos_mat/add-save', 'Add New Data  at Dosen Matakuliah', '', 1, '2020-02-04 06:35:12', NULL),
(277, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/dos_mat/add-save', 'Add New Data  at Dosen Matakuliah', '', 1, '2020-02-04 06:36:41', NULL),
(278, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/jam/delete/14', 'Delete data 14 at Jam', '', 1, '2020-02-04 06:43:59', NULL),
(279, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/jam/add-save', 'Add New Data  at Jam', '', 1, '2020-02-04 06:44:09', NULL),
(280, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/dos_mat/edit-save/12', 'Update data  at Dosen Matakuliah', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>kelas</td><td>B</td><td></td></tr></tbody></table>', 1, '2020-02-04 06:51:07', NULL),
(281, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/dos_mat/edit-save/9', 'Update data  at Dosen Matakuliah', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>kelas</td><td>B</td><td></td></tr></tbody></table>', 1, '2020-02-04 06:52:30', NULL),
(282, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/dos_mat/edit-save/13', 'Update data  at Dosen Matakuliah', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>kelas</td><td>B</td><td></td></tr></tbody></table>', 1, '2020-02-04 06:52:36', NULL),
(283, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/dos_mat/edit-save/13', 'Update data  at Dosen Matakuliah', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>Jurusan_id</td><td>5</td><td>1</td></tr></tbody></table>', 1, '2020-02-04 08:23:07', NULL),
(284, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/dos_mat/edit-save/9', 'Update data  at Dosen Matakuliah', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2020-02-04 08:23:20', NULL),
(285, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/dos_mat/edit-save/8', 'Update data  at Dosen Matakuliah', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>Jurusan_id</td><td>5</td><td>1</td></tr></tbody></table>', 1, '2020-02-04 08:23:34', NULL),
(286, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/dos_mat/edit-save/9', 'Update data  at Dosen Matakuliah', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2020-02-04 08:24:51', NULL),
(287, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/dos_mat/edit-save/8', 'Update data  at Dosen Matakuliah', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2020-02-04 08:25:03', NULL),
(288, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/dosen/edit-save/5', 'Update data  at Dosen', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>NIP</td><td>13579</td><td>13579000</td></tr></tbody></table>', 1, '2020-02-04 09:06:36', NULL),
(289, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/dosen/add-save', 'Add New Data  at Dosen', '', 1, '2020-02-04 09:36:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_menus`
--

CREATE TABLE `cms_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'url',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_dashboard` tinyint(1) NOT NULL DEFAULT '0',
  `id_cms_privileges` int(11) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_menus`
--

INSERT INTO `cms_menus` (`id`, `name`, `type`, `path`, `color`, `icon`, `parent_id`, `is_active`, `is_dashboard`, `id_cms_privileges`, `sorting`, `created_at`, `updated_at`) VALUES
(1, 'Dosen', 'Route', 'AdminDosenControllerGetIndex', 'normal', 'fa fa-glass', 0, 1, 0, 1, 1, '2020-01-10 04:07:57', '2020-01-26 07:04:16'),
(2, 'Jam', 'Route', 'AdminJamControllerGetIndex', 'normal', 'fa fa-glass', 0, 1, 0, 1, 2, '2020-01-10 04:12:16', '2020-01-26 07:04:30'),
(3, 'Jurusan', 'Route', 'AdminJurusanControllerGetIndex', 'normal', 'fa fa-glass', 0, 1, 0, 1, 3, '2020-01-10 04:13:32', '2020-01-26 07:04:43'),
(4, 'Ruang', 'Route', 'AdminKelasControllerGetIndex', 'normal', 'fa fa-glass', 0, 1, 0, 1, 4, '2020-01-10 04:14:29', '2020-01-26 07:04:55'),
(5, 'Mata Kuliah', 'Route', 'AdminMatkulControllerGetIndex', 'normal', 'fa fa-glass', 0, 1, 0, 1, 5, '2020-01-10 04:15:04', '2020-01-26 07:05:09'),
(6, 'Surat Tugas', 'Route', 'AdminSurattugasControllerGetIndex', NULL, 'fa fa-music', 0, 1, 0, 1, 6, '2020-02-02 05:14:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_menus_privileges`
--

CREATE TABLE `cms_menus_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_menus` int(11) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_menus_privileges`
--

INSERT INTO `cms_menus_privileges` (`id`, `id_cms_menus`, `id_cms_privileges`) VALUES
(6, 6, 1),
(7, 7, 1),
(9, 1, 2),
(10, 1, 1),
(11, 2, 2),
(12, 2, 1),
(13, 3, 2),
(14, 3, 1),
(15, 4, 2),
(16, 4, 1),
(17, 5, 2),
(18, 5, 1),
(19, 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_moduls`
--

CREATE TABLE `cms_moduls` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_moduls`
--

INSERT INTO `cms_moduls` (`id`, `name`, `icon`, `path`, `table_name`, `controller`, `is_protected`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Notifications', 'fa fa-cog', 'notifications', 'cms_notifications', 'NotificationsController', 1, 1, '2020-01-10 04:02:44', NULL, NULL),
(2, 'Privileges', 'fa fa-cog', 'privileges', 'cms_privileges', 'PrivilegesController', 1, 1, '2020-01-10 04:02:44', NULL, NULL),
(3, 'Privileges Roles', 'fa fa-cog', 'privileges_roles', 'cms_privileges_roles', 'PrivilegesRolesController', 1, 1, '2020-01-10 04:02:44', NULL, NULL),
(4, 'Users Management', 'fa fa-users', 'users', 'cms_users', 'AdminCmsUsersController', 0, 1, '2020-01-10 04:02:44', NULL, NULL),
(5, 'Settings', 'fa fa-cog', 'settings', 'cms_settings', 'SettingsController', 1, 1, '2020-01-10 04:02:44', NULL, NULL),
(6, 'Module Generator', 'fa fa-database', 'module_generator', 'cms_moduls', 'ModulsController', 1, 1, '2020-01-10 04:02:44', NULL, NULL),
(7, 'Menu Management', 'fa fa-bars', 'menu_management', 'cms_menus', 'MenusController', 1, 1, '2020-01-10 04:02:44', NULL, NULL),
(8, 'Email Templates', 'fa fa-envelope-o', 'email_templates', 'cms_email_templates', 'EmailTemplatesController', 1, 1, '2020-01-10 04:02:44', NULL, NULL),
(9, 'Statistic Builder', 'fa fa-dashboard', 'statistic_builder', 'cms_statistics', 'StatisticBuilderController', 1, 1, '2020-01-10 04:02:44', NULL, NULL),
(10, 'API Generator', 'fa fa-cloud-download', 'api_generator', '', 'ApiCustomController', 1, 1, '2020-01-10 04:02:44', NULL, NULL),
(11, 'Log User Access', 'fa fa-flag-o', 'logs', 'cms_logs', 'LogsController', 1, 1, '2020-01-10 04:02:44', NULL, NULL),
(12, 'Dosen', 'fa fa-glass', 'dosen', 'dosen', 'AdminDosenController', 0, 0, '2020-01-10 04:07:57', NULL, NULL),
(13, 'Jam', 'fa fa-glass', 'jam', 'jam', 'AdminJamController', 0, 0, '2020-01-10 04:12:16', NULL, NULL),
(14, 'Jurusan', 'fa fa-glass', 'jurusan', 'jurusan', 'AdminJurusanController', 0, 0, '2020-01-10 04:13:31', NULL, NULL),
(15, 'Kelas', 'fa fa-glass', 'kelas', 'kelas', 'AdminKelasController', 0, 0, '2020-01-10 04:14:29', NULL, NULL),
(16, 'Mata Kuliah', 'fa fa-glass', 'matkul', 'matkul', 'AdminMatkulController', 0, 0, '2020-01-10 04:15:03', NULL, NULL),
(17, 'Dosen Matakuliah', 'fa fa-glass', 'dos_mat', 'dos_mat', 'AdminDosMatController', 0, 0, '2020-01-10 04:16:08', NULL, NULL),
(18, 'Kelas Jam', 'fa fa-glass', 'kelas_jam', 'kelas_jam', 'AdminKelasJamController', 0, 0, '2020-01-10 04:17:04', NULL, NULL),
(19, 'Surat Tugas', 'fa fa-glass', 'surattugas', 'surattugas', 'AdminSurattugasController', 0, 0, '2020-02-02 05:14:10', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_notifications`
--

CREATE TABLE `cms_notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_privileges`
--

CREATE TABLE `cms_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_superadmin` tinyint(1) DEFAULT NULL,
  `theme_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_privileges`
--

INSERT INTO `cms_privileges` (`id`, `name`, `is_superadmin`, `theme_color`, `created_at`, `updated_at`) VALUES
(1, 'Super Administrator', 1, 'skin-red', '2020-01-10 04:02:44', NULL),
(2, 'admin', 0, 'skin-green', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_privileges_roles`
--

CREATE TABLE `cms_privileges_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `is_visible` tinyint(1) DEFAULT NULL,
  `is_create` tinyint(1) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_edit` tinyint(1) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `id_cms_moduls` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_privileges_roles`
--

INSERT INTO `cms_privileges_roles` (`id`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 0, 0, 0, 1, 1, '2020-01-10 04:02:44', NULL),
(2, 1, 1, 1, 1, 1, 1, 2, '2020-01-10 04:02:44', NULL),
(3, 0, 1, 1, 1, 1, 1, 3, '2020-01-10 04:02:44', NULL),
(4, 1, 1, 1, 1, 1, 1, 4, '2020-01-10 04:02:44', NULL),
(5, 1, 1, 1, 1, 1, 1, 5, '2020-01-10 04:02:45', NULL),
(6, 1, 1, 1, 1, 1, 1, 6, '2020-01-10 04:02:45', NULL),
(7, 1, 1, 1, 1, 1, 1, 7, '2020-01-10 04:02:45', NULL),
(8, 1, 1, 1, 1, 1, 1, 8, '2020-01-10 04:02:45', NULL),
(9, 1, 1, 1, 1, 1, 1, 9, '2020-01-10 04:02:45', NULL),
(10, 1, 1, 1, 1, 1, 1, 10, '2020-01-10 04:02:45', NULL),
(11, 1, 0, 1, 0, 1, 1, 11, '2020-01-10 04:02:45', NULL),
(12, 1, 1, 1, 1, 1, 1, 12, NULL, NULL),
(13, 1, 1, 1, 1, 1, 1, 13, NULL, NULL),
(14, 1, 1, 1, 1, 1, 1, 14, NULL, NULL),
(15, 1, 1, 1, 1, 1, 1, 15, NULL, NULL),
(16, 1, 1, 1, 1, 1, 1, 16, NULL, NULL),
(17, 1, 1, 1, 1, 1, 1, 17, NULL, NULL),
(18, 1, 1, 1, 1, 1, 1, 18, NULL, NULL),
(19, 1, 1, 1, 1, 1, 2, 12, NULL, NULL),
(20, 1, 1, 1, 1, 1, 2, 17, NULL, NULL),
(21, 1, 1, 1, 1, 1, 2, 13, NULL, NULL),
(22, 1, 1, 1, 1, 1, 2, 14, NULL, NULL),
(23, 1, 1, 1, 1, 1, 2, 15, NULL, NULL),
(24, 1, 1, 1, 1, 1, 2, 18, NULL, NULL),
(25, 1, 1, 1, 1, 1, 2, 16, NULL, NULL),
(26, 1, 1, 1, 1, 1, 2, 4, NULL, NULL),
(27, 1, 1, 1, 1, 1, 1, 19, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_settings`
--

CREATE TABLE `cms_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `content_input_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dataenum` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `helper` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_setting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_settings`
--

INSERT INTO `cms_settings` (`id`, `name`, `content`, `content_input_type`, `dataenum`, `helper`, `created_at`, `updated_at`, `group_setting`, `label`) VALUES
(1, 'login_background_color', NULL, 'text', NULL, 'Input hexacode', '2020-01-10 04:02:45', NULL, 'Login Register Style', 'Login Background Color'),
(2, 'login_font_color', NULL, 'text', NULL, 'Input hexacode', '2020-01-10 04:02:45', NULL, 'Login Register Style', 'Login Font Color'),
(3, 'login_background_image', NULL, 'upload_image', NULL, NULL, '2020-01-10 04:02:45', NULL, 'Login Register Style', 'Login Background Image'),
(4, 'email_sender', 'support@crudbooster.com', 'text', NULL, NULL, '2020-01-10 04:02:45', NULL, 'Email Setting', 'Email Sender'),
(5, 'smtp_driver', 'mail', 'select', 'smtp,mail,sendmail', NULL, '2020-01-10 04:02:45', NULL, 'Email Setting', 'Mail Driver'),
(6, 'smtp_host', '', 'text', NULL, NULL, '2020-01-10 04:02:45', NULL, 'Email Setting', 'SMTP Host'),
(7, 'smtp_port', '25', 'text', NULL, 'default 25', '2020-01-10 04:02:45', NULL, 'Email Setting', 'SMTP Port'),
(8, 'smtp_username', '', 'text', NULL, NULL, '2020-01-10 04:02:45', NULL, 'Email Setting', 'SMTP Username'),
(9, 'smtp_password', '', 'text', NULL, NULL, '2020-01-10 04:02:45', NULL, 'Email Setting', 'SMTP Password'),
(10, 'appname', 'SISPAN', 'text', NULL, NULL, '2020-01-10 04:02:45', NULL, 'Application Setting', 'Application Name'),
(11, 'default_paper_size', 'Legal', 'text', NULL, 'Paper size, ex : A4, Legal, etc', '2020-01-10 04:02:45', NULL, 'Application Setting', 'Default Paper Print Size'),
(12, 'logo', 'uploads/2020-01/b407cce0270a7113f37316ae5df0b659.png', 'upload_image', NULL, NULL, '2020-01-10 04:02:45', NULL, 'Application Setting', 'Logo'),
(13, 'favicon', 'uploads/2020-01/0365ff6d067f338ccafd8fc3a51d06d8.png', 'upload_image', NULL, NULL, '2020-01-10 04:02:45', NULL, 'Application Setting', 'Favicon'),
(14, 'api_debug_mode', 'true', 'select', 'true,false', NULL, '2020-01-10 04:02:45', NULL, 'Application Setting', 'API Debug Mode'),
(15, 'google_api_key', NULL, 'text', NULL, NULL, '2020-01-10 04:02:45', NULL, 'Application Setting', 'Google API Key'),
(16, 'google_fcm_key', NULL, 'text', NULL, NULL, '2020-01-10 04:02:45', NULL, 'Application Setting', 'Google FCM Key');

-- --------------------------------------------------------

--
-- Table structure for table `cms_statistics`
--

CREATE TABLE `cms_statistics` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_statistic_components`
--

CREATE TABLE `cms_statistic_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_statistics` int(11) DEFAULT NULL,
  `componentID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `component_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_users`
--

CREATE TABLE `cms_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_users`
--

INSERT INTO `cms_users` (`id`, `name`, `photo`, `email`, `password`, `id_cms_privileges`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Super Admin', 'uploads/1/2020-01/uin.png', 'admin@fu.uinsgd.com', '$2y$10$.WylfEpYqnfi0k9LghwA0OtmcoBxtyfk3Zhz6lHZ0Sd0n5EQI05NS', 1, '2020-01-10 04:02:44', '2020-01-10 07:06:18', 'Active'),
(2, 'Alwan Muhtarom', 'uploads/1/2020-01/logo_uin.png', 'alwanmuhtarom@gmail.com', '$2y$10$UO/SsC7xVQi0xN/6x46rWuAbZI7aQ6yJ1U8Docd7SILQ7wg1eQcs.', 2, '2020-01-26 07:03:07', NULL, NULL),
(3, 'R Yuli Ahmad Hambali', 'uploads/1/2020-01/uin.png', 'admin@fu.uinsgd.ac.id', '$2y$10$eWs8fBQo/EspbQo1rSk9q.5wJJ5sLQrUz4DUyPukL3/jdMKWStkvC', 2, '2020-01-29 06:09:08', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `id` int(10) UNSIGNED NOT NULL,
  `NIP` bigint(20) NOT NULL,
  `Nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `jumlah_sks_diambil` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`id`, `NIP`, `Nama`, `created_at`, `updated_at`, `jumlah_sks_diambil`) VALUES
(4, 12345, 'Fariz Herman. S.T', '2020-02-02 20:24:48', NULL, 6),
(5, 13579000, 'Muhamad Adnan', '2020-02-04 06:33:00', '2020-02-04 09:06:36', 7),
(6, 13690, 'Alwan Muhtarom', '2020-02-04 09:36:14', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dos_mat`
--

CREATE TABLE `dos_mat` (
  `id` int(10) UNSIGNED NOT NULL,
  `Id_Dosen` int(10) UNSIGNED NOT NULL,
  `Id_Matkul` int(10) UNSIGNED NOT NULL,
  `semester` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `kelas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SKS` int(11) NOT NULL,
  `Jurusan_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dos_mat`
--

INSERT INTO `dos_mat` (`id`, `Id_Dosen`, `Id_Matkul`, `semester`, `created_at`, `updated_at`, `kelas`, `SKS`, `Jurusan_id`) VALUES
(8, 4, 7, 1, '2020-02-02 21:15:05', '2020-02-04 08:25:03', 'A', 2, 1),
(9, 4, 7, 1, '2020-02-04 06:30:40', '2020-02-04 08:24:51', 'A', 2, 1),
(10, 5, 11, 2, '2020-02-04 06:33:26', NULL, 'A', 2, 2),
(11, 5, 9, 2, '2020-02-04 06:33:47', NULL, 'A', 3, 4),
(12, 5, 10, 1, '2020-02-04 06:35:11', '2020-02-04 06:51:07', 'A', 2, 1),
(13, 4, 8, 1, '2020-02-04 06:36:41', '2020-02-04 08:23:07', 'A', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `jam`
--

CREATE TABLE `jam` (
  `id` int(10) UNSIGNED NOT NULL,
  `Jam` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jam`
--

INSERT INTO `jam` (`id`, `Jam`, `created_at`, `updated_at`) VALUES
(1, '07.00 - 07.50', '2020-01-29 05:40:34', NULL),
(2, '07.50 - 08.40', '2020-01-29 05:40:47', NULL),
(3, '08.40 - 09.30', '2020-01-29 05:41:37', NULL),
(4, '09.30 - 10.20', '2020-01-29 05:41:51', NULL),
(5, '10.20 - 11.10', '2020-01-29 05:42:09', NULL),
(6, '11.10 - 12.00', '2020-01-29 05:42:18', NULL),
(7, '13.00 - 13.50', '2020-01-29 05:42:51', NULL),
(8, '13.50 - 14.40', '2020-01-29 05:43:03', NULL),
(10, '14.40 - 15.30', '2020-01-29 05:46:11', NULL),
(11, '15.30 - 16.20', '2020-01-29 05:46:27', NULL),
(13, '16.30 - 17.20', '2020-01-29 05:47:48', NULL),
(15, '17.20 - 18.05', '2020-02-04 06:44:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE `jurusan` (
  `id` int(10) UNSIGNED NOT NULL,
  `Nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `singkatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`id`, `Nama`, `created_at`, `updated_at`, `singkatan`) VALUES
(1, 'ILMU HADITS', '2020-01-29 05:39:30', NULL, 'IH'),
(2, 'ILMU TAFSIR DAN QUR\'AN', '2020-01-29 05:39:54', NULL, 'ITQ'),
(3, 'TASAWUF PSIKOTERAPI', '2020-01-29 06:00:06', NULL, 'TP'),
(4, 'STUDI AGAMA-AGAMA', '2020-01-29 06:00:17', NULL, 'SAA'),
(5, 'SASTRA INGGRIS', '2020-02-02 21:11:13', NULL, 'SI');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id` int(10) UNSIGNED NOT NULL,
  `Nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id`, `Nama`, `created_at`, `updated_at`) VALUES
(4, '1.1', '2020-02-02 20:23:19', NULL),
(5, '1.2', '2020-02-02 20:23:26', NULL),
(6, '1.3', '2020-02-02 20:23:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kelas_jam`
--

CREATE TABLE `kelas_jam` (
  `id` int(10) UNSIGNED NOT NULL,
  `Id_Kelas` int(10) UNSIGNED NOT NULL,
  `Id_Jadwal` int(10) UNSIGNED NOT NULL,
  `id_dos_mat` int(10) UNSIGNED DEFAULT NULL,
  `Hari` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kelas_jam`
--

INSERT INTO `kelas_jam` (`id`, `Id_Kelas`, `Id_Jadwal`, `id_dos_mat`, `Hari`, `created_at`, `updated_at`) VALUES
(1831, 4, 1, 12, 'Senin', NULL, NULL),
(1832, 4, 1, 11, 'Selasa', NULL, NULL),
(1833, 4, 1, 10, 'Rabu', NULL, NULL),
(1834, 4, 1, 13, 'Kamis', NULL, NULL),
(1835, 4, 1, 9, 'Jumat', NULL, NULL),
(1836, 4, 1, NULL, 'Sabtu', NULL, NULL),
(1837, 4, 2, 12, 'Senin', NULL, NULL),
(1838, 4, 2, 11, 'Selasa', NULL, NULL),
(1839, 4, 2, NULL, 'Rabu', NULL, NULL),
(1840, 4, 2, 13, 'Kamis', NULL, NULL),
(1841, 4, 2, 9, 'Jumat', NULL, NULL),
(1842, 4, 2, NULL, 'Sabtu', NULL, NULL),
(1843, 4, 3, NULL, 'Senin', NULL, NULL),
(1844, 4, 3, NULL, 'Selasa', NULL, NULL),
(1845, 4, 3, NULL, 'Rabu', NULL, NULL),
(1846, 4, 3, NULL, 'Kamis', NULL, NULL),
(1847, 4, 3, NULL, 'Jumat', NULL, NULL),
(1848, 4, 3, NULL, 'Sabtu', NULL, NULL),
(1849, 4, 4, NULL, 'Senin', NULL, NULL),
(1850, 4, 4, NULL, 'Selasa', NULL, NULL),
(1851, 4, 4, NULL, 'Rabu', NULL, NULL),
(1852, 4, 4, NULL, 'Kamis', NULL, NULL),
(1853, 4, 4, NULL, 'Jumat', NULL, NULL),
(1854, 4, 4, NULL, 'Sabtu', NULL, NULL),
(1855, 4, 5, NULL, 'Senin', NULL, NULL),
(1856, 4, 5, NULL, 'Selasa', NULL, NULL),
(1857, 4, 5, NULL, 'Rabu', NULL, NULL),
(1858, 4, 5, NULL, 'Kamis', NULL, NULL),
(1859, 4, 5, NULL, 'Jumat', NULL, NULL),
(1860, 4, 5, NULL, 'Sabtu', NULL, NULL),
(1861, 4, 6, NULL, 'Senin', NULL, NULL),
(1862, 4, 6, NULL, 'Selasa', NULL, NULL),
(1863, 4, 6, NULL, 'Rabu', NULL, NULL),
(1864, 4, 6, NULL, 'Kamis', NULL, NULL),
(1865, 4, 6, NULL, 'Jumat', NULL, NULL),
(1866, 4, 6, 8, 'Sabtu', NULL, NULL),
(1867, 4, 7, NULL, 'Senin', NULL, NULL),
(1868, 4, 7, NULL, 'Selasa', NULL, NULL),
(1869, 4, 7, NULL, 'Rabu', NULL, NULL),
(1870, 4, 7, NULL, 'Kamis', NULL, NULL),
(1871, 4, 7, NULL, 'Jumat', NULL, NULL),
(1872, 4, 7, 8, 'Sabtu', NULL, NULL),
(1873, 4, 8, NULL, 'Senin', NULL, NULL),
(1874, 4, 8, NULL, 'Selasa', NULL, NULL),
(1875, 4, 8, NULL, 'Rabu', NULL, NULL),
(1876, 4, 8, NULL, 'Kamis', NULL, NULL),
(1877, 4, 8, NULL, 'Jumat', NULL, NULL),
(1878, 4, 8, NULL, 'Sabtu', NULL, NULL),
(1879, 4, 10, NULL, 'Senin', NULL, NULL),
(1880, 4, 10, NULL, 'Selasa', NULL, NULL),
(1881, 4, 10, NULL, 'Rabu', NULL, NULL),
(1882, 4, 10, NULL, 'Kamis', NULL, NULL),
(1883, 4, 10, NULL, 'Jumat', NULL, NULL),
(1884, 4, 10, NULL, 'Sabtu', NULL, NULL),
(1885, 4, 11, NULL, 'Senin', NULL, NULL),
(1886, 4, 11, NULL, 'Selasa', NULL, NULL),
(1887, 4, 11, NULL, 'Rabu', NULL, NULL),
(1888, 4, 11, NULL, 'Kamis', NULL, NULL),
(1889, 4, 11, NULL, 'Jumat', NULL, NULL),
(1890, 4, 11, NULL, 'Sabtu', NULL, NULL),
(1891, 4, 13, NULL, 'Senin', NULL, NULL),
(1892, 4, 13, NULL, 'Selasa', NULL, NULL),
(1893, 4, 13, NULL, 'Rabu', NULL, NULL),
(1894, 4, 13, NULL, 'Kamis', NULL, NULL),
(1895, 4, 13, NULL, 'Jumat', NULL, NULL),
(1896, 4, 13, NULL, 'Sabtu', NULL, NULL),
(1897, 4, 15, NULL, 'Senin', NULL, NULL),
(1898, 4, 15, NULL, 'Selasa', NULL, NULL),
(1899, 4, 15, NULL, 'Rabu', NULL, NULL),
(1900, 4, 15, NULL, 'Kamis', NULL, NULL),
(1901, 4, 15, NULL, 'Jumat', NULL, NULL),
(1902, 4, 15, NULL, 'Sabtu', NULL, NULL),
(1903, 5, 1, NULL, 'Senin', NULL, NULL),
(1904, 5, 1, NULL, 'Selasa', NULL, NULL),
(1905, 5, 1, 10, 'Rabu', NULL, NULL),
(1906, 5, 1, NULL, 'Kamis', NULL, NULL),
(1907, 5, 1, NULL, 'Jumat', NULL, NULL),
(1908, 5, 1, NULL, 'Sabtu', NULL, NULL),
(1909, 5, 2, NULL, 'Senin', NULL, NULL),
(1910, 5, 2, NULL, 'Selasa', NULL, NULL),
(1911, 5, 2, NULL, 'Rabu', NULL, NULL),
(1912, 5, 2, NULL, 'Kamis', NULL, NULL),
(1913, 5, 2, NULL, 'Jumat', NULL, NULL),
(1914, 5, 2, NULL, 'Sabtu', NULL, NULL),
(1915, 5, 3, NULL, 'Senin', NULL, NULL),
(1916, 5, 3, NULL, 'Selasa', NULL, NULL),
(1917, 5, 3, NULL, 'Rabu', NULL, NULL),
(1918, 5, 3, NULL, 'Kamis', NULL, NULL),
(1919, 5, 3, NULL, 'Jumat', NULL, NULL),
(1920, 5, 3, NULL, 'Sabtu', NULL, NULL),
(1921, 5, 4, NULL, 'Senin', NULL, NULL),
(1922, 5, 4, NULL, 'Selasa', NULL, NULL),
(1923, 5, 4, NULL, 'Rabu', NULL, NULL),
(1924, 5, 4, NULL, 'Kamis', NULL, NULL),
(1925, 5, 4, NULL, 'Jumat', NULL, NULL),
(1926, 5, 4, NULL, 'Sabtu', NULL, NULL),
(1927, 5, 5, NULL, 'Senin', NULL, NULL),
(1928, 5, 5, NULL, 'Selasa', NULL, NULL),
(1929, 5, 5, NULL, 'Rabu', NULL, NULL),
(1930, 5, 5, NULL, 'Kamis', NULL, NULL),
(1931, 5, 5, NULL, 'Jumat', NULL, NULL),
(1932, 5, 5, NULL, 'Sabtu', NULL, NULL),
(1933, 5, 6, NULL, 'Senin', NULL, NULL),
(1934, 5, 6, NULL, 'Selasa', NULL, NULL),
(1935, 5, 6, NULL, 'Rabu', NULL, NULL),
(1936, 5, 6, NULL, 'Kamis', NULL, NULL),
(1937, 5, 6, NULL, 'Jumat', NULL, NULL),
(1938, 5, 6, NULL, 'Sabtu', NULL, NULL),
(1939, 5, 7, NULL, 'Senin', NULL, NULL),
(1940, 5, 7, NULL, 'Selasa', NULL, NULL),
(1941, 5, 7, NULL, 'Rabu', NULL, NULL),
(1942, 5, 7, NULL, 'Kamis', NULL, NULL),
(1943, 5, 7, NULL, 'Jumat', NULL, NULL),
(1944, 5, 7, NULL, 'Sabtu', NULL, NULL),
(1945, 5, 8, NULL, 'Senin', NULL, NULL),
(1946, 5, 8, NULL, 'Selasa', NULL, NULL),
(1947, 5, 8, NULL, 'Rabu', NULL, NULL),
(1948, 5, 8, NULL, 'Kamis', NULL, NULL),
(1949, 5, 8, NULL, 'Jumat', NULL, NULL),
(1950, 5, 8, NULL, 'Sabtu', NULL, NULL),
(1951, 5, 10, NULL, 'Senin', NULL, NULL),
(1952, 5, 10, NULL, 'Selasa', NULL, NULL),
(1953, 5, 10, NULL, 'Rabu', NULL, NULL),
(1954, 5, 10, NULL, 'Kamis', NULL, NULL),
(1955, 5, 10, NULL, 'Jumat', NULL, NULL),
(1956, 5, 10, NULL, 'Sabtu', NULL, NULL),
(1957, 5, 11, NULL, 'Senin', NULL, NULL),
(1958, 5, 11, NULL, 'Selasa', NULL, NULL),
(1959, 5, 11, NULL, 'Rabu', NULL, NULL),
(1960, 5, 11, NULL, 'Kamis', NULL, NULL),
(1961, 5, 11, NULL, 'Jumat', NULL, NULL),
(1962, 5, 11, NULL, 'Sabtu', NULL, NULL),
(1963, 5, 13, NULL, 'Senin', NULL, NULL),
(1964, 5, 13, NULL, 'Selasa', NULL, NULL),
(1965, 5, 13, NULL, 'Rabu', NULL, NULL),
(1966, 5, 13, NULL, 'Kamis', NULL, NULL),
(1967, 5, 13, NULL, 'Jumat', NULL, NULL),
(1968, 5, 13, NULL, 'Sabtu', NULL, NULL),
(1969, 5, 15, NULL, 'Senin', NULL, NULL),
(1970, 5, 15, NULL, 'Selasa', NULL, NULL),
(1971, 5, 15, NULL, 'Rabu', NULL, NULL),
(1972, 5, 15, NULL, 'Kamis', NULL, NULL),
(1973, 5, 15, NULL, 'Jumat', NULL, NULL),
(1974, 5, 15, NULL, 'Sabtu', NULL, NULL),
(1975, 6, 1, NULL, 'Senin', NULL, NULL),
(1976, 6, 1, NULL, 'Selasa', NULL, NULL),
(1977, 6, 1, NULL, 'Rabu', NULL, NULL),
(1978, 6, 1, NULL, 'Kamis', NULL, NULL),
(1979, 6, 1, NULL, 'Jumat', NULL, NULL),
(1980, 6, 1, NULL, 'Sabtu', NULL, NULL),
(1981, 6, 2, NULL, 'Senin', NULL, NULL),
(1982, 6, 2, NULL, 'Selasa', NULL, NULL),
(1983, 6, 2, NULL, 'Rabu', NULL, NULL),
(1984, 6, 2, NULL, 'Kamis', NULL, NULL),
(1985, 6, 2, NULL, 'Jumat', NULL, NULL),
(1986, 6, 2, NULL, 'Sabtu', NULL, NULL),
(1987, 6, 3, NULL, 'Senin', NULL, NULL),
(1988, 6, 3, NULL, 'Selasa', NULL, NULL),
(1989, 6, 3, NULL, 'Rabu', NULL, NULL),
(1990, 6, 3, NULL, 'Kamis', NULL, NULL),
(1991, 6, 3, NULL, 'Jumat', NULL, NULL),
(1992, 6, 3, NULL, 'Sabtu', NULL, NULL),
(1993, 6, 4, NULL, 'Senin', NULL, NULL),
(1994, 6, 4, NULL, 'Selasa', NULL, NULL),
(1995, 6, 4, NULL, 'Rabu', NULL, NULL),
(1996, 6, 4, NULL, 'Kamis', NULL, NULL),
(1997, 6, 4, NULL, 'Jumat', NULL, NULL),
(1998, 6, 4, NULL, 'Sabtu', NULL, NULL),
(1999, 6, 5, NULL, 'Senin', NULL, NULL),
(2000, 6, 5, NULL, 'Selasa', NULL, NULL),
(2001, 6, 5, NULL, 'Rabu', NULL, NULL),
(2002, 6, 5, NULL, 'Kamis', NULL, NULL),
(2003, 6, 5, NULL, 'Jumat', NULL, NULL),
(2004, 6, 5, NULL, 'Sabtu', NULL, NULL),
(2005, 6, 6, NULL, 'Senin', NULL, NULL),
(2006, 6, 6, NULL, 'Selasa', NULL, NULL),
(2007, 6, 6, NULL, 'Rabu', NULL, NULL),
(2008, 6, 6, NULL, 'Kamis', NULL, NULL),
(2009, 6, 6, NULL, 'Jumat', NULL, NULL),
(2010, 6, 6, NULL, 'Sabtu', NULL, NULL),
(2011, 6, 7, NULL, 'Senin', NULL, NULL),
(2012, 6, 7, NULL, 'Selasa', NULL, NULL),
(2013, 6, 7, NULL, 'Rabu', NULL, NULL),
(2014, 6, 7, NULL, 'Kamis', NULL, NULL),
(2015, 6, 7, NULL, 'Jumat', NULL, NULL),
(2016, 6, 7, NULL, 'Sabtu', NULL, NULL),
(2017, 6, 8, NULL, 'Senin', NULL, NULL),
(2018, 6, 8, NULL, 'Selasa', NULL, NULL),
(2019, 6, 8, NULL, 'Rabu', NULL, NULL),
(2020, 6, 8, NULL, 'Kamis', NULL, NULL),
(2021, 6, 8, NULL, 'Jumat', NULL, NULL),
(2022, 6, 8, NULL, 'Sabtu', NULL, NULL),
(2023, 6, 10, NULL, 'Senin', NULL, NULL),
(2024, 6, 10, NULL, 'Selasa', NULL, NULL),
(2025, 6, 10, NULL, 'Rabu', NULL, NULL),
(2026, 6, 10, NULL, 'Kamis', NULL, NULL),
(2027, 6, 10, NULL, 'Jumat', NULL, NULL),
(2028, 6, 10, NULL, 'Sabtu', NULL, NULL),
(2029, 6, 11, NULL, 'Senin', NULL, NULL),
(2030, 6, 11, NULL, 'Selasa', NULL, NULL),
(2031, 6, 11, NULL, 'Rabu', NULL, NULL),
(2032, 6, 11, NULL, 'Kamis', NULL, NULL),
(2033, 6, 11, NULL, 'Jumat', NULL, NULL),
(2034, 6, 11, NULL, 'Sabtu', NULL, NULL),
(2035, 6, 13, NULL, 'Senin', NULL, NULL),
(2036, 6, 13, NULL, 'Selasa', NULL, NULL),
(2037, 6, 13, NULL, 'Rabu', NULL, NULL),
(2038, 6, 13, NULL, 'Kamis', NULL, NULL),
(2039, 6, 13, NULL, 'Jumat', NULL, NULL),
(2040, 6, 13, NULL, 'Sabtu', NULL, NULL),
(2041, 6, 15, NULL, 'Senin', NULL, NULL),
(2042, 6, 15, NULL, 'Selasa', NULL, NULL),
(2043, 6, 15, NULL, 'Rabu', NULL, NULL),
(2044, 6, 15, NULL, 'Kamis', NULL, NULL),
(2045, 6, 15, NULL, 'Jumat', NULL, NULL),
(2046, 6, 15, NULL, 'Sabtu', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `matkul`
--

CREATE TABLE `matkul` (
  `id` int(10) UNSIGNED NOT NULL,
  `Nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `matkul`
--

INSERT INTO `matkul` (`id`, `Nama`, `created_at`, `updated_at`) VALUES
(6, 'Bahasa Indonesia', '2020-02-02 20:22:18', NULL),
(7, 'Bahasa Inggris', '2020-02-02 20:22:44', NULL),
(8, 'Bahasa Sunda', '2020-02-04 06:31:58', NULL),
(9, 'Bahasa Jawa', '2020-02-04 06:32:06', NULL),
(10, 'Bahasa Mandarin', '2020-02-04 06:32:20', NULL),
(11, 'Bahasa Arab', '2020-02-04 06:32:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2016_08_07_145904_add_table_cms_apicustom', 1),
(2, '2016_08_07_150834_add_table_cms_dashboard', 1),
(3, '2016_08_07_151210_add_table_cms_logs', 1),
(4, '2016_08_07_151211_add_details_cms_logs', 1),
(5, '2016_08_07_152014_add_table_cms_privileges', 1),
(6, '2016_08_07_152214_add_table_cms_privileges_roles', 1),
(7, '2016_08_07_152320_add_table_cms_settings', 1),
(8, '2016_08_07_152421_add_table_cms_users', 1),
(9, '2016_08_07_154624_add_table_cms_menus_privileges', 1),
(10, '2016_08_07_154624_add_table_cms_moduls', 1),
(11, '2016_08_17_225409_add_status_cms_users', 1),
(12, '2016_08_20_125418_add_table_cms_notifications', 1),
(13, '2016_09_04_033706_add_table_cms_email_queues', 1),
(14, '2016_09_16_035347_add_group_setting', 1),
(15, '2016_09_16_045425_add_label_setting', 1),
(16, '2016_09_17_104728_create_nullable_cms_apicustom', 1),
(17, '2016_10_01_141740_add_method_type_apicustom', 1),
(18, '2016_10_01_141846_add_parameters_apicustom', 1),
(19, '2016_10_01_141934_add_responses_apicustom', 1),
(20, '2016_10_01_144826_add_table_apikey', 1),
(21, '2016_11_14_141657_create_cms_menus', 1),
(22, '2016_11_15_132350_create_cms_email_templates', 1),
(23, '2016_11_15_190410_create_cms_statistics', 1),
(24, '2016_11_17_102740_create_cms_statistic_components', 1),
(25, '2017_06_06_164501_add_deleted_at_cms_moduls', 1),
(68, '2020_01_02_181312_dosen', 2),
(69, '2020_01_02_181350_matkul', 2),
(70, '2020_01_02_181436_dos-_mat', 2),
(71, '2020_01_02_181509_kelas', 2),
(72, '2020_01_02_181534_jam', 2),
(73, '2020_01_02_181601_kelas-_jam', 2),
(74, '2020_01_10_083636_jurusan', 2),
(75, '2020_01_26_093613_dos_mat_kelas', 2),
(76, '2020_01_26_114214_dos_mat_sks_jurusan', 2),
(77, '2020_01_26_115622_singkatan', 2),
(79, '2020_02_02_115717_surattugas', 3),
(81, '2020_02_02_123146_waktukuliah', 4),
(82, '2020_02_04_160730_jumlah_sks_dosen', 5);

-- --------------------------------------------------------

--
-- Table structure for table `surattugas`
--

CREATE TABLE `surattugas` (
  `id` int(10) UNSIGNED NOT NULL,
  `nomersrt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bulan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahunakademik` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggalrapat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `waktukuliah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggalsurat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `akhirkuliah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Semester` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `surattugas`
--

INSERT INTO `surattugas` (`id`, `nomersrt`, `bulan`, `tahun`, `tahunakademik`, `tanggalrapat`, `waktukuliah`, `tanggalsurat`, `akhirkuliah`, `Semester`) VALUES
(1, '1269', '08', '2019', '2019/2020', '20 Agustus 2019', '02 September 2019', '27 Agustus 2019', '02 September 2020', 'genap');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_apikey`
--
ALTER TABLE `cms_apikey`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_logs`
--
ALTER TABLE `cms_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_menus`
--
ALTER TABLE `cms_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_moduls`
--
ALTER TABLE `cms_moduls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_notifications`
--
ALTER TABLE `cms_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_privileges`
--
ALTER TABLE `cms_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_settings`
--
ALTER TABLE `cms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_statistics`
--
ALTER TABLE `cms_statistics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_users`
--
ALTER TABLE `cms_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dos_mat`
--
ALTER TABLE `dos_mat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dos_mat_id_dosen_foreign` (`Id_Dosen`),
  ADD KEY `dos_mat_id_matkul_foreign` (`Id_Matkul`),
  ADD KEY `dos_mat_jurusan_id_foreign` (`Jurusan_id`);

--
-- Indexes for table `jam`
--
ALTER TABLE `jam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kelas_jam`
--
ALTER TABLE `kelas_jam`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kelas_jam_id_kelas_foreign` (`Id_Kelas`),
  ADD KEY `kelas_jam_id_jadwal_foreign` (`Id_Jadwal`),
  ADD KEY `kelas_jam_id_dos_mat_foreign` (`id_dos_mat`);

--
-- Indexes for table `matkul`
--
ALTER TABLE `matkul`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `surattugas`
--
ALTER TABLE `surattugas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_apikey`
--
ALTER TABLE `cms_apikey`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_logs`
--
ALTER TABLE `cms_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=290;

--
-- AUTO_INCREMENT for table `cms_menus`
--
ALTER TABLE `cms_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `cms_moduls`
--
ALTER TABLE `cms_moduls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `cms_notifications`
--
ALTER TABLE `cms_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_privileges`
--
ALTER TABLE `cms_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `cms_settings`
--
ALTER TABLE `cms_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `cms_statistics`
--
ALTER TABLE `cms_statistics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_users`
--
ALTER TABLE `cms_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `dosen`
--
ALTER TABLE `dosen`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `dos_mat`
--
ALTER TABLE `dos_mat`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `jam`
--
ALTER TABLE `jam`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `kelas_jam`
--
ALTER TABLE `kelas_jam`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2047;

--
-- AUTO_INCREMENT for table `matkul`
--
ALTER TABLE `matkul`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `surattugas`
--
ALTER TABLE `surattugas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dos_mat`
--
ALTER TABLE `dos_mat`
  ADD CONSTRAINT `dos_mat_id_dosen_foreign` FOREIGN KEY (`Id_Dosen`) REFERENCES `dosen` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `dos_mat_id_matkul_foreign` FOREIGN KEY (`Id_Matkul`) REFERENCES `matkul` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `dos_mat_jurusan_id_foreign` FOREIGN KEY (`Jurusan_id`) REFERENCES `jurusan` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `kelas_jam`
--
ALTER TABLE `kelas_jam`
  ADD CONSTRAINT `kelas_jam_id_dos_mat_foreign` FOREIGN KEY (`id_dos_mat`) REFERENCES `dos_mat` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `kelas_jam_id_jadwal_foreign` FOREIGN KEY (`Id_Jadwal`) REFERENCES `jam` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `kelas_jam_id_kelas_foreign` FOREIGN KEY (`Id_Kelas`) REFERENCES `kelas` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
