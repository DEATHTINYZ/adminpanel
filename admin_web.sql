-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2021 at 12:55 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admin_web`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(1, 'admin'),
(2, 'user');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_group_permissions`
--

INSERT INTO `auth_group_permissions` (`id`, `group_id`, `permission_id`) VALUES
(37, 1, 1),
(38, 1, 2),
(39, 1, 3),
(40, 1, 4),
(41, 1, 5),
(42, 1, 6),
(43, 1, 7),
(44, 1, 8),
(45, 1, 9),
(46, 1, 10),
(47, 1, 11),
(48, 1, 12),
(49, 1, 13),
(50, 1, 14),
(51, 1, 15),
(52, 1, 16),
(53, 1, 17),
(54, 1, 18),
(55, 1, 19),
(56, 1, 20),
(57, 1, 21),
(58, 1, 22),
(59, 1, 23),
(60, 1, 24),
(61, 1, 25),
(62, 1, 26),
(63, 1, 27),
(64, 1, 28),
(65, 1, 29),
(66, 1, 30),
(67, 1, 31),
(68, 1, 32),
(69, 1, 33),
(70, 1, 34),
(71, 1, 35),
(72, 1, 36),
(74, 2, 28),
(73, 2, 32),
(75, 2, 36);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add driver', 7, 'add_driver'),
(26, 'Can change driver', 7, 'change_driver'),
(27, 'Can delete driver', 7, 'delete_driver'),
(28, 'Can view driver', 7, 'view_driver'),
(29, 'Can add school', 8, 'add_school'),
(30, 'Can change school', 8, 'change_school'),
(31, 'Can delete school', 8, 'delete_school'),
(32, 'Can view school', 8, 'view_school'),
(33, 'Can add std_parents', 9, 'add_std_parents'),
(34, 'Can change std_parents', 9, 'change_std_parents'),
(35, 'Can delete std_parents', 9, 'delete_std_parents'),
(36, 'Can view std_parents', 9, 'view_std_parents');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$jPqLP5wLGhb2Ywk5UKR7f7$E5wndiK3h0U242kJAhR/NZnCoDPSTzt8Qx1kq5SKWTo=', '2021-05-26 18:52:27.032713', 1, 'dream', '', '', 'disneyza123@gmail.com', 1, 1, '2021-05-26 07:39:05.000000'),
(2, 'pbkdf2_sha256$260000$tugrEAEs16OsdzUBgc86xd$Ov+dsA7pVQB//Hf72L4qiQlFsI6w7Zi1vNkwSWSQs3g=', '2021-05-26 17:31:55.335695', 0, 'boat', '', '', '', 0, 1, '2021-05-26 14:55:29.000000');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user_groups`
--

INSERT INTO `auth_user_groups` (`id`, `user_id`, `group_id`) VALUES
(2, 1, 1),
(3, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `backadmin_driver`
--

CREATE TABLE `backadmin_driver` (
  `id` bigint(20) NOT NULL,
  `driverfname` varchar(30) NOT NULL,
  `driverlname` varchar(30) NOT NULL,
  `drivertel` int(11) NOT NULL,
  `attendantfname` varchar(30) NOT NULL,
  `attendantlname` varchar(30) NOT NULL,
  `attendanttel` int(11) NOT NULL,
  `brand` varchar(30) NOT NULL,
  `vancode` varchar(30) NOT NULL,
  `schoolcode` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `backadmin_driver`
--

INSERT INTO `backadmin_driver` (`id`, `driverfname`, `driverlname`, `drivertel`, `attendantfname`, `attendantlname`, `attendanttel`, `brand`, `vancode`, `schoolcode`) VALUES
(1, 'aaa', 'aa', 922708584, 'aaa', 'aaa', 922708584, 'kimochi', 'กก113', '0123456789');

-- --------------------------------------------------------

--
-- Table structure for table `backadmin_school`
--

CREATE TABLE `backadmin_school` (
  `id` bigint(20) NOT NULL,
  `schoolname` varchar(50) NOT NULL,
  `schoolcode` varchar(50) NOT NULL,
  `schooladdress` varchar(100) NOT NULL,
  `schoolmail` varchar(30) NOT NULL,
  `schooltel` int(11) NOT NULL,
  `schoolfax` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `backadmin_school`
--

INSERT INTO `backadmin_school` (`id`, `schoolname`, `schoolcode`, `schooladdress`, `schoolmail`, `schooltel`, `schoolfax`) VALUES
(1, 'โรงเรียนบดินทรเดชา (สิงห์ สิงหเสนี)', '0123456789', 'ซอยรามคำแหง 43/1. แขวงพลับพลา เขตวังทองหลาง กรุงเทพมหานคร 10310', 'chayutpong.jamn@bumail.net', 642399648, '1150');

-- --------------------------------------------------------

--
-- Table structure for table `backadmin_std_parents`
--

CREATE TABLE `backadmin_std_parents` (
  `id` bigint(20) NOT NULL,
  `stdfname` varchar(30) NOT NULL,
  `stdlname` varchar(30) NOT NULL,
  `stdaddress` varchar(100) NOT NULL,
  `stdemail` varchar(30) NOT NULL,
  `stdcounty` varchar(30) NOT NULL,
  `stdpostalcode` int(11) NOT NULL,
  `stdmacaddress` varchar(30) NOT NULL,
  `fatherfname` varchar(30) NOT NULL,
  `fatherlname` varchar(30) NOT NULL,
  `motherfname` varchar(30) NOT NULL,
  `motherlname` varchar(30) NOT NULL,
  `parenttel` int(11) NOT NULL,
  `parenttelback` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `backadmin_std_parents`
--

INSERT INTO `backadmin_std_parents` (`id`, `stdfname`, `stdlname`, `stdaddress`, `stdemail`, `stdcounty`, `stdpostalcode`, `stdmacaddress`, `fatherfname`, `fatherlname`, `motherfname`, `motherlname`, `parenttel`, `parenttelback`) VALUES
(9, 'นายชยุตพงศ์', 'จำเนียรพงษ์พันธ์', '215/49 ซ.ลาดพร้าว 126 เขตวังทองหลาง แขวงพลับพลา กรุงเทพมหานคร', 'chayutpong.jamn@bumail.net', 'กรุงเทพมหานคร', 10310, '215/49 ถนน.ลาดพร้าว', 'นายธีรภพ', 'จำเนียรพงษ์พันธ์', 'นายธีรภัทร', 'จำเนียรพงษ์พันธ์', 2147483647, 922718584),
(10, 'นายชยุตพงศ์', 'จำเนียรพงษ์พันธ์', '215/49 ซ.ลาดพร้าว 126 เขตวังทองหลาง แขวงพลับพลา กรุงเทพมหานคร', 'chayutpong.jamn@bumail.net', 'กรุงเทพมหานคร', 10310, '215/49 ถนน.ลาดพร้าว', 'นายธีรภพ', 'จำเนียรพงษ์พันธ์', 'นายธีรภัทร', 'จำเนียรพงษ์พันธ์', 2147483647, 922718584),
(11, 'นายชยุตพงศ์', 'จำเนียรพงษ์พันธ์', '215/49 ซ.ลาดพร้าว 126 เขตวังทองหลาง แขวงพลับพลา กรุงเทพมหานคร', 'chayutpong.jamn@bumail.net', 'กรุงเทพมหานคร', 10310, '215/49 ถนน.ลาดพร้าว', 'นายธีรภพ', 'จำเนียรพงษ์พันธ์', 'นายธีรภัทร', 'จำเนียรพงษ์พันธ์', 2147483647, 922718584),
(12, 'นายชยุตพงศ์', 'จำเนียรพงษ์พันธ์', '215/49 ซ.ลาดพร้าว 126 เขตวังทองหลาง แขวงพลับพลา กรุงเทพมหานคร', 'chayutpong.jamn@bumail.net', 'กรุงเทพมหานคร', 10310, '215/49 ถนน.ลาดพร้าว', 'นายธีรภพ', 'จำเนียรพงษ์พันธ์', 'นายธีรภัทร', 'จำเนียรพงษ์พันธ์', 2147483647, 922718584),
(13, 'นายชยุตพงศ์', 'จำเนียรพงษ์พันธ์', '215/49 ซ.ลาดพร้าว 126 เขตวังทองหลาง แขวงพลับพลา กรุงเทพมหานคร', 'chayutpong.jamn@bumail.net', 'กรุงเทพมหานคร', 10310, '215/49 ถนน.ลาดพร้าว', 'นายธีรภพ', 'จำเนียรพงษ์พันธ์', 'นายธีรภัทร', 'จำเนียรพงษ์พันธ์', 2147483647, 922718584);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-05-26 14:55:30.216274', '2', 'boat', 1, '[{\"added\": {}}]', 4, 1),
(2, '2021-05-26 15:00:31.915844', '1', 'admin', 1, '[{\"added\": {}}]', 3, 1),
(3, '2021-05-26 15:07:05.880500', '1', 'admin', 2, '[{\"changed\": {\"fields\": [\"Permissions\"]}}]', 3, 1),
(4, '2021-05-26 15:10:23.577997', '2', 'user', 1, '[{\"added\": {}}]', 3, 1),
(5, '2021-05-26 16:19:50.167986', '1', 'admin', 2, '[{\"changed\": {\"fields\": [\"Permissions\"]}}]', 3, 1),
(6, '2021-05-26 16:21:18.389817', '2', 'boat', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 1),
(7, '2021-05-26 16:21:38.799389', '1', 'dream', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 1),
(8, '2021-05-26 16:24:14.632344', '2', 'boat', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 1),
(9, '2021-05-26 16:24:52.231677', '2', 'user', 2, '[{\"changed\": {\"fields\": [\"Permissions\"]}}]', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(7, 'backadmin', 'driver'),
(8, 'backadmin', 'school'),
(9, 'backadmin', 'std_parents'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-05-26 07:18:00.189075'),
(2, 'auth', '0001_initial', '2021-05-26 07:18:00.708344'),
(3, 'admin', '0001_initial', '2021-05-26 07:18:00.869847'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-05-26 07:18:00.882496'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-05-26 07:18:00.890854'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-05-26 07:18:00.954247'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-05-26 07:18:01.020971'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-05-26 07:18:01.040764'),
(9, 'auth', '0004_alter_user_username_opts', '2021-05-26 07:18:01.052735'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-05-26 07:18:01.107216'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-05-26 07:18:01.113210'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-05-26 07:18:01.123365'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-05-26 07:18:01.144231'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-05-26 07:18:01.166755'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-05-26 07:18:01.186167'),
(16, 'auth', '0011_update_proxy_permissions', '2021-05-26 07:18:01.198012'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-05-26 07:18:01.219947'),
(18, 'sessions', '0001_initial', '2021-05-26 07:18:01.271872'),
(19, 'backadmin', '0001_initial', '2021-05-26 07:30:48.714669');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('s9da1q5br99sbky0tan51eeiqnye5cr2', '.eJxVjMEOwiAQRP-FsyGwiwIevfcbyMJSqRpISnsy_rtt0oMeZ96beYtA61LC2vMcJhZXocXpt4uUnrnugB9U702mVpd5inJX5EG7HBrn1-1w_w4K9bKtTSRgREbvTNaQlDobYBOzdzha5yJDAgPaKkarbcTLmAxjIoYtei0-X84SNzU:1llydn:gZ2CeA9g239AMeCX90lqLeAz5TBhqd-k7JdS71_Pr0w', '2021-06-09 18:52:27.038129');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `backadmin_driver`
--
ALTER TABLE `backadmin_driver`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `backadmin_school`
--
ALTER TABLE `backadmin_school`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `backadmin_std_parents`
--
ALTER TABLE `backadmin_std_parents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `backadmin_driver`
--
ALTER TABLE `backadmin_driver`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `backadmin_school`
--
ALTER TABLE `backadmin_school`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `backadmin_std_parents`
--
ALTER TABLE `backadmin_std_parents`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
