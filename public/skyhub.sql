-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: Dec 07, 2022 at 03:14 PM
-- Server version: 10.7.3-MariaDB-1:10.7.3+maria~focal
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `skyhub`
--

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `index` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`id`, `created_at`, `updated_at`, `question`, `answer`, `index`) VALUES
(1, '2020-05-28 07:55:07', '2020-05-28 07:55:07', 'Reset your SkyHub password', '<p>Go to your <a href=\"/dashboard\">Dashboard</a> to reset your password.</p>', 1),
(2, '2020-05-28 07:55:38', '2020-05-28 07:55:38', 'How do I change or reset my password?', '<p>You can change your password from the <a href=\"/dashboard/profile\">profile section of your Dashboard</a> page. Click on &ldquo;Change Password&hellip;&rdquo;</p>', 2),
(3, '2020-05-28 07:55:59', '2020-05-28 07:55:59', 'Why am I not receiving any emails from SkyHub', '<p>This is usually down to emails being considered junk or spam. Check your mailbox junk or spam folder, and ensure that you whitelist email from skyhub.aero if possible.</p>', 3),
(4, '2020-05-28 07:56:24', '2020-05-28 07:56:24', 'How do I receive email notifications for successful payments or disputes?', '<p>This is usually down to emails being considered junk or spam. Check your mailbox junk or spam folder, and ensure that you whitelist email from skyhub.aero if possible.</p>', 4),
(5, '2020-05-28 07:56:40', '2020-05-28 07:56:40', 'How can I get notified by email for certain account activities?', '<p>Notification settings are available in the user settings, and are specific to the logged-in user.</p>', 5);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `object_id` int(11) NOT NULL,
  `object_type` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `src` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `width` int(11) NOT NULL,
  `height` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `created_at`, `updated_at`, `object_id`, `object_type`, `parent_id`, `src`, `type`, `mime`, `width`, `height`) VALUES
(2, '2020-06-09 10:12:12', '2020-06-09 10:12:12', 2, 1, NULL, '/images/87/13/8713817a861a3573134b5c2c1f94cf10.png', 'original', 'image/png', 169, 36),
(3, '2020-06-09 10:12:12', '2020-06-09 10:12:12', 2, 1, 2, '/images/87/13/8713817a861a3573134b5c2c1f94cf10_default.png', 'default', 'image/png', 500, 315),
(4, '2020-06-09 10:12:12', '2020-06-09 10:12:12', 2, 1, 2, '/images/87/13/8713817a861a3573134b5c2c1f94cf10_thumb_h.png', 'thumb_h', 'image/png', 200, 42),
(5, '2020-06-09 10:12:12', '2020-06-09 10:12:12', 2, 1, 2, '/images/87/13/8713817a861a3573134b5c2c1f94cf10_wide.png', 'wide', 'image/png', 1920, 540),
(6, '2020-06-09 10:12:12', '2020-06-09 10:12:12', 2, 1, 2, '/images/87/13/8713817a861a3573134b5c2c1f94cf10_mobile.png', 'mobile', 'image/png', 320, 68),
(7, '2020-06-09 10:12:12', '2020-06-09 10:12:12', 2, 1, 2, '/images/87/13/8713817a861a3573134b5c2c1f94cf10_square.png', 'square', 'image/png', 320, 320),
(8, '2020-06-09 10:12:12', '2020-06-09 10:12:12', 2, 1, 2, '/images/87/13/8713817a861a3573134b5c2c1f94cf10_square_small.png', 'square_small', 'image/png', 75, 75),
(9, '2020-06-26 13:01:45', '2020-06-26 13:01:45', 3, 1, NULL, '/images/08/40/0840153de5381eb47bd9dc41ae46c3d8.png', 'original', 'image/png', 500, 500),
(10, '2020-06-26 13:01:45', '2020-06-26 13:01:45', 3, 1, 9, '/images/08/40/0840153de5381eb47bd9dc41ae46c3d8_default.png', 'default', 'image/png', 500, 315),
(11, '2020-06-26 13:01:45', '2020-06-26 13:01:45', 3, 1, 9, '/images/08/40/0840153de5381eb47bd9dc41ae46c3d8_thumb_h.png', 'thumb_h', 'image/png', 200, 200),
(12, '2020-06-26 13:01:45', '2020-06-26 13:01:45', 3, 1, 9, '/images/08/40/0840153de5381eb47bd9dc41ae46c3d8_wide.png', 'wide', 'image/png', 1920, 540),
(13, '2020-06-26 13:01:45', '2020-06-26 13:01:45', 3, 1, 9, '/images/08/40/0840153de5381eb47bd9dc41ae46c3d8_mobile.png', 'mobile', 'image/png', 320, 320),
(14, '2020-06-26 13:01:45', '2020-06-26 13:01:45', 3, 1, 9, '/images/08/40/0840153de5381eb47bd9dc41ae46c3d8_square.png', 'square', 'image/png', 320, 320),
(15, '2020-06-26 13:01:45', '2020-06-26 13:01:45', 3, 1, 9, '/images/08/40/0840153de5381eb47bd9dc41ae46c3d8_square_small.png', 'square_small', 'image/png', 75, 75),
(16, '2020-12-26 13:02:03', '2020-12-26 13:02:03', 4, 1, NULL, '/images/a3/21/a3212ddc33f45993004d19e882acef16.jpg', 'original', 'image/jpeg', 1821, 842),
(17, '2020-12-26 13:02:03', '2020-12-26 13:02:03', 4, 1, 16, '/images/a3/21/a3212ddc33f45993004d19e882acef16_default.jpg', 'default', 'image/jpeg', 500, 315),
(18, '2020-12-26 13:02:03', '2020-12-26 13:02:03', 4, 1, 16, '/images/a3/21/a3212ddc33f45993004d19e882acef16_thumb_h.jpg', 'thumb_h', 'image/jpeg', 200, 92),
(19, '2020-12-26 13:02:03', '2020-12-26 13:02:03', 4, 1, 16, '/images/a3/21/a3212ddc33f45993004d19e882acef16_wide.jpg', 'wide', 'image/jpeg', 1920, 540),
(20, '2020-12-26 13:02:04', '2020-12-26 13:02:04', 4, 1, 16, '/images/a3/21/a3212ddc33f45993004d19e882acef16_mobile.jpg', 'mobile', 'image/jpeg', 320, 147),
(21, '2020-12-26 13:02:04', '2020-12-26 13:02:04', 4, 1, 16, '/images/a3/21/a3212ddc33f45993004d19e882acef16_square.jpg', 'square', 'image/jpeg', 320, 320),
(22, '2020-12-26 13:02:04', '2020-12-26 13:02:04', 4, 1, 16, '/images/a3/21/a3212ddc33f45993004d19e882acef16_square_small.jpg', 'square_small', 'image/jpeg', 75, 75),
(23, '2020-12-26 13:14:19', '2020-12-26 13:14:19', 5, 1, NULL, '/images/58/2f/582fc8b953fb92c821a1b45ee6085710.jpg', 'original', 'image/jpeg', 1821, 842),
(24, '2020-12-26 13:14:19', '2020-12-26 13:14:19', 5, 1, 23, '/images/58/2f/582fc8b953fb92c821a1b45ee6085710_default.jpg', 'default', 'image/jpeg', 500, 315),
(25, '2020-12-26 13:14:20', '2020-12-26 13:14:20', 5, 1, 23, '/images/58/2f/582fc8b953fb92c821a1b45ee6085710_thumb_h.jpg', 'thumb_h', 'image/jpeg', 200, 92),
(26, '2020-12-26 13:14:20', '2020-12-26 13:14:20', 5, 1, 23, '/images/58/2f/582fc8b953fb92c821a1b45ee6085710_wide.jpg', 'wide', 'image/jpeg', 1920, 540),
(27, '2020-12-26 13:14:20', '2020-12-26 13:14:20', 5, 1, 23, '/images/58/2f/582fc8b953fb92c821a1b45ee6085710_mobile.jpg', 'mobile', 'image/jpeg', 320, 147),
(28, '2020-12-26 13:14:20', '2020-12-26 13:14:20', 5, 1, 23, '/images/58/2f/582fc8b953fb92c821a1b45ee6085710_square.jpg', 'square', 'image/jpeg', 320, 320),
(29, '2020-12-26 13:14:20', '2020-12-26 13:14:20', 5, 1, 23, '/images/58/2f/582fc8b953fb92c821a1b45ee6085710_square_small.jpg', 'square_small', 'image/jpeg', 75, 75),
(30, '2020-12-26 13:30:17', '2020-12-26 13:30:17', 6, 1, NULL, '/images/24/9d/249d216c00991af9969ec14571db3321.jpg', 'original', 'image/jpeg', 1441, 361),
(31, '2020-12-26 13:30:17', '2020-12-26 13:30:17', 6, 1, 30, '/images/24/9d/249d216c00991af9969ec14571db3321_default.jpg', 'default', 'image/jpeg', 500, 315),
(32, '2020-12-26 13:30:17', '2020-12-26 13:30:17', 6, 1, 30, '/images/24/9d/249d216c00991af9969ec14571db3321_thumb_h.jpg', 'thumb_h', 'image/jpeg', 200, 50),
(33, '2020-12-26 13:30:17', '2020-12-26 13:30:17', 6, 1, 30, '/images/24/9d/249d216c00991af9969ec14571db3321_wide.jpg', 'wide', 'image/jpeg', 1920, 540),
(34, '2020-12-26 13:30:17', '2020-12-26 13:30:17', 6, 1, 30, '/images/24/9d/249d216c00991af9969ec14571db3321_mobile.jpg', 'mobile', 'image/jpeg', 320, 80),
(35, '2020-12-26 13:30:17', '2020-12-26 13:30:17', 6, 1, 30, '/images/24/9d/249d216c00991af9969ec14571db3321_square.jpg', 'square', 'image/jpeg', 320, 320),
(36, '2020-12-26 13:30:17', '2020-12-26 13:30:17', 6, 1, 30, '/images/24/9d/249d216c00991af9969ec14571db3321_square_small.jpg', 'square_small', 'image/jpeg', 75, 75),
(37, '2020-12-26 19:39:59', '2020-12-26 19:39:59', 7, 1, NULL, '/images/80/a6/80a603d1834aea895b4908e8ab97cd23.png', 'original', 'image/png', 2340, 1560),
(38, '2020-12-26 19:39:59', '2020-12-26 19:39:59', 7, 1, 37, '/images/80/a6/80a603d1834aea895b4908e8ab97cd23_default.png', 'default', 'image/png', 500, 315),
(39, '2020-12-26 19:40:00', '2020-12-26 19:40:00', 7, 1, 37, '/images/80/a6/80a603d1834aea895b4908e8ab97cd23_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(40, '2020-12-26 19:40:00', '2020-12-26 19:40:00', 7, 1, 37, '/images/80/a6/80a603d1834aea895b4908e8ab97cd23_wide.png', 'wide', 'image/png', 1920, 540),
(41, '2020-12-26 19:40:00', '2020-12-26 19:40:00', 7, 1, 37, '/images/80/a6/80a603d1834aea895b4908e8ab97cd23_mobile.png', 'mobile', 'image/png', 320, 213),
(42, '2020-12-26 19:40:00', '2020-12-26 19:40:00', 7, 1, 37, '/images/80/a6/80a603d1834aea895b4908e8ab97cd23_square.png', 'square', 'image/png', 320, 320),
(43, '2020-12-26 19:40:00', '2020-12-26 19:40:00', 7, 1, 37, '/images/80/a6/80a603d1834aea895b4908e8ab97cd23_square_small.png', 'square_small', 'image/png', 75, 75),
(44, '2020-12-26 19:46:58', '2020-12-26 19:46:58', 8, 1, NULL, '/images/ee/c3/eec34327832ae9e45f075503147427c8.png', 'original', 'image/png', 2340, 1560),
(45, '2020-12-26 19:46:58', '2020-12-26 19:46:58', 8, 1, 44, '/images/ee/c3/eec34327832ae9e45f075503147427c8_default.png', 'default', 'image/png', 500, 315),
(46, '2020-12-26 19:46:58', '2020-12-26 19:46:58', 8, 1, 44, '/images/ee/c3/eec34327832ae9e45f075503147427c8_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(47, '2020-12-26 19:46:59', '2020-12-26 19:46:59', 8, 1, 44, '/images/ee/c3/eec34327832ae9e45f075503147427c8_wide.png', 'wide', 'image/png', 1920, 540),
(48, '2020-12-26 19:46:59', '2020-12-26 19:46:59', 8, 1, 44, '/images/ee/c3/eec34327832ae9e45f075503147427c8_mobile.png', 'mobile', 'image/png', 320, 213),
(49, '2020-12-26 19:46:59', '2020-12-26 19:46:59', 8, 1, 44, '/images/ee/c3/eec34327832ae9e45f075503147427c8_square.png', 'square', 'image/png', 320, 320),
(50, '2020-12-26 19:46:59', '2020-12-26 19:46:59', 8, 1, 44, '/images/ee/c3/eec34327832ae9e45f075503147427c8_square_small.png', 'square_small', 'image/png', 75, 75),
(51, '2020-12-26 19:48:49', '2020-12-26 19:48:49', 9, 1, NULL, '/images/8d/13/8d137f92fb0399d9af85cc3fd3f256d4.png', 'original', 'image/png', 2340, 1560),
(52, '2020-12-26 19:48:49', '2020-12-26 19:48:49', 9, 1, 51, '/images/8d/13/8d137f92fb0399d9af85cc3fd3f256d4_default.png', 'default', 'image/png', 500, 315),
(53, '2020-12-26 19:48:49', '2020-12-26 19:48:49', 9, 1, 51, '/images/8d/13/8d137f92fb0399d9af85cc3fd3f256d4_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(54, '2020-12-26 19:48:49', '2020-12-26 19:48:49', 9, 1, 51, '/images/8d/13/8d137f92fb0399d9af85cc3fd3f256d4_wide.png', 'wide', 'image/png', 1920, 540),
(55, '2020-12-26 19:48:50', '2020-12-26 19:48:50', 9, 1, 51, '/images/8d/13/8d137f92fb0399d9af85cc3fd3f256d4_mobile.png', 'mobile', 'image/png', 320, 213),
(56, '2020-12-26 19:48:50', '2020-12-26 19:48:50', 9, 1, 51, '/images/8d/13/8d137f92fb0399d9af85cc3fd3f256d4_square.png', 'square', 'image/png', 320, 320),
(57, '2020-12-26 19:48:50', '2020-12-26 19:48:50', 9, 1, 51, '/images/8d/13/8d137f92fb0399d9af85cc3fd3f256d4_square_small.png', 'square_small', 'image/png', 75, 75),
(58, '2020-12-26 21:05:51', '2020-12-26 21:05:51', 10, 1, NULL, '/images/0b/74/0b7486a59bc30b269d9f2a6b7479b07a.png', 'original', 'image/png', 2340, 1560),
(59, '2020-12-26 21:05:51', '2020-12-26 21:05:51', 10, 1, 58, '/images/0b/74/0b7486a59bc30b269d9f2a6b7479b07a_default.png', 'default', 'image/png', 500, 315),
(60, '2020-12-26 21:05:51', '2020-12-26 21:05:51', 10, 1, 58, '/images/0b/74/0b7486a59bc30b269d9f2a6b7479b07a_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(61, '2020-12-26 21:05:52', '2020-12-26 21:05:52', 10, 1, 58, '/images/0b/74/0b7486a59bc30b269d9f2a6b7479b07a_wide.png', 'wide', 'image/png', 1920, 540),
(62, '2020-12-26 21:05:52', '2020-12-26 21:05:52', 10, 1, 58, '/images/0b/74/0b7486a59bc30b269d9f2a6b7479b07a_mobile.png', 'mobile', 'image/png', 320, 213),
(63, '2020-12-26 21:05:52', '2020-12-26 21:05:52', 10, 1, 58, '/images/0b/74/0b7486a59bc30b269d9f2a6b7479b07a_square.png', 'square', 'image/png', 320, 320),
(64, '2020-12-26 21:05:52', '2020-12-26 21:05:52', 10, 1, 58, '/images/0b/74/0b7486a59bc30b269d9f2a6b7479b07a_square_small.png', 'square_small', 'image/png', 75, 75),
(65, '2020-12-26 21:07:37', '2020-12-26 21:07:37', 11, 1, NULL, '/images/35/f8/35f800ce8776ec008766ab130a27959f.png', 'original', 'image/png', 2340, 1560),
(66, '2020-12-26 21:07:37', '2020-12-26 21:07:37', 11, 1, 65, '/images/35/f8/35f800ce8776ec008766ab130a27959f_default.png', 'default', 'image/png', 500, 315),
(67, '2020-12-26 21:07:38', '2020-12-26 21:07:38', 11, 1, 65, '/images/35/f8/35f800ce8776ec008766ab130a27959f_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(68, '2020-12-26 21:07:38', '2020-12-26 21:07:38', 11, 1, 65, '/images/35/f8/35f800ce8776ec008766ab130a27959f_wide.png', 'wide', 'image/png', 1920, 540),
(69, '2020-12-26 21:07:38', '2020-12-26 21:07:38', 11, 1, 65, '/images/35/f8/35f800ce8776ec008766ab130a27959f_mobile.png', 'mobile', 'image/png', 320, 213),
(70, '2020-12-26 21:07:38', '2020-12-26 21:07:38', 11, 1, 65, '/images/35/f8/35f800ce8776ec008766ab130a27959f_square.png', 'square', 'image/png', 320, 320),
(71, '2020-12-26 21:07:38', '2020-12-26 21:07:38', 11, 1, 65, '/images/35/f8/35f800ce8776ec008766ab130a27959f_square_small.png', 'square_small', 'image/png', 75, 75),
(72, '2020-12-26 21:09:21', '2020-12-26 21:09:21', 12, 1, NULL, '/images/cd/a6/cda6df1a29f8ca0230dba95bcfb5b4ac.png', 'original', 'image/png', 2340, 1560),
(73, '2020-12-26 21:09:21', '2020-12-26 21:09:21', 12, 1, 72, '/images/cd/a6/cda6df1a29f8ca0230dba95bcfb5b4ac_default.png', 'default', 'image/png', 500, 315),
(74, '2020-12-26 21:09:21', '2020-12-26 21:09:21', 12, 1, 72, '/images/cd/a6/cda6df1a29f8ca0230dba95bcfb5b4ac_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(75, '2020-12-26 21:09:22', '2020-12-26 21:09:22', 12, 1, 72, '/images/cd/a6/cda6df1a29f8ca0230dba95bcfb5b4ac_wide.png', 'wide', 'image/png', 1920, 540),
(76, '2020-12-26 21:09:22', '2020-12-26 21:09:22', 12, 1, 72, '/images/cd/a6/cda6df1a29f8ca0230dba95bcfb5b4ac_mobile.png', 'mobile', 'image/png', 320, 213),
(77, '2020-12-26 21:09:22', '2020-12-26 21:09:22', 12, 1, 72, '/images/cd/a6/cda6df1a29f8ca0230dba95bcfb5b4ac_square.png', 'square', 'image/png', 320, 320),
(78, '2020-12-26 21:09:22', '2020-12-26 21:09:22', 12, 1, 72, '/images/cd/a6/cda6df1a29f8ca0230dba95bcfb5b4ac_square_small.png', 'square_small', 'image/png', 75, 75),
(79, '2020-12-26 21:10:34', '2020-12-26 21:10:34', 13, 1, NULL, '/images/0d/22/0d22796f0cea1b6f3dc845d93e50f718.png', 'original', 'image/png', 2340, 1560),
(80, '2020-12-26 21:10:34', '2020-12-26 21:10:34', 13, 1, 79, '/images/0d/22/0d22796f0cea1b6f3dc845d93e50f718_default.png', 'default', 'image/png', 500, 315),
(81, '2020-12-26 21:10:34', '2020-12-26 21:10:34', 13, 1, 79, '/images/0d/22/0d22796f0cea1b6f3dc845d93e50f718_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(82, '2020-12-26 21:10:34', '2020-12-26 21:10:34', 13, 1, 79, '/images/0d/22/0d22796f0cea1b6f3dc845d93e50f718_wide.png', 'wide', 'image/png', 1920, 540),
(83, '2020-12-26 21:10:35', '2020-12-26 21:10:35', 13, 1, 79, '/images/0d/22/0d22796f0cea1b6f3dc845d93e50f718_mobile.png', 'mobile', 'image/png', 320, 213),
(84, '2020-12-26 21:10:35', '2020-12-26 21:10:35', 13, 1, 79, '/images/0d/22/0d22796f0cea1b6f3dc845d93e50f718_square.png', 'square', 'image/png', 320, 320),
(85, '2020-12-26 21:10:35', '2020-12-26 21:10:35', 13, 1, 79, '/images/0d/22/0d22796f0cea1b6f3dc845d93e50f718_square_small.png', 'square_small', 'image/png', 75, 75),
(86, '2020-12-26 21:13:55', '2020-12-26 21:13:55', 14, 1, NULL, '/images/61/d0/61d07761825a04b05679d095c6bf8363.png', 'original', 'image/png', 2340, 1560),
(87, '2020-12-26 21:13:56', '2020-12-26 21:13:56', 14, 1, 86, '/images/61/d0/61d07761825a04b05679d095c6bf8363_default.png', 'default', 'image/png', 500, 315),
(88, '2020-12-26 21:13:56', '2020-12-26 21:13:56', 14, 1, 86, '/images/61/d0/61d07761825a04b05679d095c6bf8363_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(89, '2020-12-26 21:13:56', '2020-12-26 21:13:56', 14, 1, 86, '/images/61/d0/61d07761825a04b05679d095c6bf8363_wide.png', 'wide', 'image/png', 1920, 540),
(90, '2020-12-26 21:13:56', '2020-12-26 21:13:56', 14, 1, 86, '/images/61/d0/61d07761825a04b05679d095c6bf8363_mobile.png', 'mobile', 'image/png', 320, 213),
(91, '2020-12-26 21:13:57', '2020-12-26 21:13:57', 14, 1, 86, '/images/61/d0/61d07761825a04b05679d095c6bf8363_square.png', 'square', 'image/png', 320, 320),
(92, '2020-12-26 21:13:57', '2020-12-26 21:13:57', 14, 1, 86, '/images/61/d0/61d07761825a04b05679d095c6bf8363_square_small.png', 'square_small', 'image/png', 75, 75),
(93, '2020-12-26 21:15:30', '2020-12-26 21:15:30', 15, 1, NULL, '/images/8f/35/8f35fa4676e8b94d0a1baf1dfed87238.png', 'original', 'image/png', 2340, 1560),
(94, '2020-12-26 21:15:30', '2020-12-26 21:15:30', 15, 1, 93, '/images/8f/35/8f35fa4676e8b94d0a1baf1dfed87238_default.png', 'default', 'image/png', 500, 315),
(95, '2020-12-26 21:15:30', '2020-12-26 21:15:30', 15, 1, 93, '/images/8f/35/8f35fa4676e8b94d0a1baf1dfed87238_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(96, '2020-12-26 21:15:30', '2020-12-26 21:15:30', 15, 1, 93, '/images/8f/35/8f35fa4676e8b94d0a1baf1dfed87238_wide.png', 'wide', 'image/png', 1920, 540),
(97, '2020-12-26 21:15:30', '2020-12-26 21:15:30', 15, 1, 93, '/images/8f/35/8f35fa4676e8b94d0a1baf1dfed87238_mobile.png', 'mobile', 'image/png', 320, 213),
(98, '2020-12-26 21:15:31', '2020-12-26 21:15:31', 15, 1, 93, '/images/8f/35/8f35fa4676e8b94d0a1baf1dfed87238_square.png', 'square', 'image/png', 320, 320),
(99, '2020-12-26 21:15:31', '2020-12-26 21:15:31', 15, 1, 93, '/images/8f/35/8f35fa4676e8b94d0a1baf1dfed87238_square_small.png', 'square_small', 'image/png', 75, 75),
(100, '2020-12-27 11:50:16', '2020-12-27 11:50:16', 16, 1, NULL, '/images/e2/42/e2425a68086a62bfb77387f03b559d0d.png', 'original', 'image/png', 2340, 1560),
(101, '2020-12-27 11:50:17', '2020-12-27 11:50:17', 16, 1, 100, '/images/e2/42/e2425a68086a62bfb77387f03b559d0d_default.png', 'default', 'image/png', 500, 315),
(102, '2020-12-27 11:50:17', '2020-12-27 11:50:17', 16, 1, 100, '/images/e2/42/e2425a68086a62bfb77387f03b559d0d_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(103, '2020-12-27 11:50:17', '2020-12-27 11:50:17', 16, 1, 100, '/images/e2/42/e2425a68086a62bfb77387f03b559d0d_wide.png', 'wide', 'image/png', 1920, 540),
(104, '2020-12-27 11:50:17', '2020-12-27 11:50:17', 16, 1, 100, '/images/e2/42/e2425a68086a62bfb77387f03b559d0d_mobile.png', 'mobile', 'image/png', 320, 213),
(105, '2020-12-27 11:50:17', '2020-12-27 11:50:17', 16, 1, 100, '/images/e2/42/e2425a68086a62bfb77387f03b559d0d_square.png', 'square', 'image/png', 320, 320),
(106, '2020-12-27 11:50:18', '2020-12-27 11:50:18', 16, 1, 100, '/images/e2/42/e2425a68086a62bfb77387f03b559d0d_square_small.png', 'square_small', 'image/png', 75, 75),
(107, '2020-12-27 11:52:02', '2020-12-27 11:52:02', 17, 1, NULL, '/images/04/f3/04f38d6be4b6d3239bcc66f65ecbc471.png', 'original', 'image/png', 2340, 1560),
(108, '2020-12-27 11:52:02', '2020-12-27 11:52:02', 17, 1, 107, '/images/04/f3/04f38d6be4b6d3239bcc66f65ecbc471_default.png', 'default', 'image/png', 500, 315),
(109, '2020-12-27 11:52:02', '2020-12-27 11:52:02', 17, 1, 107, '/images/04/f3/04f38d6be4b6d3239bcc66f65ecbc471_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(110, '2020-12-27 11:52:02', '2020-12-27 11:52:02', 17, 1, 107, '/images/04/f3/04f38d6be4b6d3239bcc66f65ecbc471_wide.png', 'wide', 'image/png', 1920, 540),
(111, '2020-12-27 11:52:03', '2020-12-27 11:52:03', 17, 1, 107, '/images/04/f3/04f38d6be4b6d3239bcc66f65ecbc471_mobile.png', 'mobile', 'image/png', 320, 213),
(112, '2020-12-27 11:52:03', '2020-12-27 11:52:03', 17, 1, 107, '/images/04/f3/04f38d6be4b6d3239bcc66f65ecbc471_square.png', 'square', 'image/png', 320, 320),
(113, '2020-12-27 11:52:03', '2020-12-27 11:52:03', 17, 1, 107, '/images/04/f3/04f38d6be4b6d3239bcc66f65ecbc471_square_small.png', 'square_small', 'image/png', 75, 75),
(114, '2020-12-27 11:53:15', '2020-12-27 11:53:15', 18, 1, NULL, '/images/e9/6a/e96a2254d8d940adeb776606820b7e53.png', 'original', 'image/png', 2340, 1560),
(115, '2020-12-27 11:53:16', '2020-12-27 11:53:16', 18, 1, 114, '/images/e9/6a/e96a2254d8d940adeb776606820b7e53_default.png', 'default', 'image/png', 500, 315),
(116, '2020-12-27 11:53:16', '2020-12-27 11:53:16', 18, 1, 114, '/images/e9/6a/e96a2254d8d940adeb776606820b7e53_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(117, '2020-12-27 11:53:16', '2020-12-27 11:53:16', 18, 1, 114, '/images/e9/6a/e96a2254d8d940adeb776606820b7e53_wide.png', 'wide', 'image/png', 1920, 540),
(118, '2020-12-27 11:53:16', '2020-12-27 11:53:16', 18, 1, 114, '/images/e9/6a/e96a2254d8d940adeb776606820b7e53_mobile.png', 'mobile', 'image/png', 320, 213),
(119, '2020-12-27 11:53:16', '2020-12-27 11:53:16', 18, 1, 114, '/images/e9/6a/e96a2254d8d940adeb776606820b7e53_square.png', 'square', 'image/png', 320, 320),
(120, '2020-12-27 11:53:17', '2020-12-27 11:53:17', 18, 1, 114, '/images/e9/6a/e96a2254d8d940adeb776606820b7e53_square_small.png', 'square_small', 'image/png', 75, 75),
(121, '2020-12-27 11:54:36', '2020-12-27 11:54:36', 19, 1, NULL, '/images/8d/b8/8db8cda8128bc424475523860a755bbb.png', 'original', 'image/png', 2340, 1560),
(122, '2020-12-27 11:54:37', '2020-12-27 11:54:37', 19, 1, 121, '/images/8d/b8/8db8cda8128bc424475523860a755bbb_default.png', 'default', 'image/png', 500, 315),
(123, '2020-12-27 11:54:37', '2020-12-27 11:54:37', 19, 1, 121, '/images/8d/b8/8db8cda8128bc424475523860a755bbb_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(124, '2020-12-27 11:54:37', '2020-12-27 11:54:37', 19, 1, 121, '/images/8d/b8/8db8cda8128bc424475523860a755bbb_wide.png', 'wide', 'image/png', 1920, 540),
(125, '2020-12-27 11:54:37', '2020-12-27 11:54:37', 19, 1, 121, '/images/8d/b8/8db8cda8128bc424475523860a755bbb_mobile.png', 'mobile', 'image/png', 320, 213),
(126, '2020-12-27 11:54:37', '2020-12-27 11:54:37', 19, 1, 121, '/images/8d/b8/8db8cda8128bc424475523860a755bbb_square.png', 'square', 'image/png', 320, 320),
(127, '2020-12-27 11:54:38', '2020-12-27 11:54:38', 19, 1, 121, '/images/8d/b8/8db8cda8128bc424475523860a755bbb_square_small.png', 'square_small', 'image/png', 75, 75),
(128, '2020-12-27 11:57:39', '2020-12-27 11:57:39', 20, 1, NULL, '/images/c9/21/c921605247dc03d0ff33d25548e71ab7.png', 'original', 'image/png', 2340, 1560),
(129, '2020-12-27 11:57:39', '2020-12-27 11:57:39', 20, 1, 128, '/images/c9/21/c921605247dc03d0ff33d25548e71ab7_default.png', 'default', 'image/png', 500, 315),
(130, '2020-12-27 11:57:39', '2020-12-27 11:57:39', 20, 1, 128, '/images/c9/21/c921605247dc03d0ff33d25548e71ab7_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(131, '2020-12-27 11:57:39', '2020-12-27 11:57:39', 20, 1, 128, '/images/c9/21/c921605247dc03d0ff33d25548e71ab7_wide.png', 'wide', 'image/png', 1920, 540),
(132, '2020-12-27 11:57:40', '2020-12-27 11:57:40', 20, 1, 128, '/images/c9/21/c921605247dc03d0ff33d25548e71ab7_mobile.png', 'mobile', 'image/png', 320, 213),
(133, '2020-12-27 11:57:40', '2020-12-27 11:57:40', 20, 1, 128, '/images/c9/21/c921605247dc03d0ff33d25548e71ab7_square.png', 'square', 'image/png', 320, 320),
(134, '2020-12-27 11:57:40', '2020-12-27 11:57:40', 20, 1, 128, '/images/c9/21/c921605247dc03d0ff33d25548e71ab7_square_small.png', 'square_small', 'image/png', 75, 75),
(135, '2020-12-27 11:59:13', '2020-12-27 11:59:13', 21, 1, NULL, '/images/1b/d7/1bd70cee02989edb717fc50e9b283881.png', 'original', 'image/png', 2340, 1560),
(136, '2020-12-27 11:59:13', '2020-12-27 11:59:13', 21, 1, 135, '/images/1b/d7/1bd70cee02989edb717fc50e9b283881_default.png', 'default', 'image/png', 500, 315),
(137, '2020-12-27 11:59:13', '2020-12-27 11:59:13', 21, 1, 135, '/images/1b/d7/1bd70cee02989edb717fc50e9b283881_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(138, '2020-12-27 11:59:13', '2020-12-27 11:59:13', 21, 1, 135, '/images/1b/d7/1bd70cee02989edb717fc50e9b283881_wide.png', 'wide', 'image/png', 1920, 540),
(139, '2020-12-27 11:59:14', '2020-12-27 11:59:14', 21, 1, 135, '/images/1b/d7/1bd70cee02989edb717fc50e9b283881_mobile.png', 'mobile', 'image/png', 320, 213),
(140, '2020-12-27 11:59:14', '2020-12-27 11:59:14', 21, 1, 135, '/images/1b/d7/1bd70cee02989edb717fc50e9b283881_square.png', 'square', 'image/png', 320, 320),
(141, '2020-12-27 11:59:14', '2020-12-27 11:59:14', 21, 1, 135, '/images/1b/d7/1bd70cee02989edb717fc50e9b283881_square_small.png', 'square_small', 'image/png', 75, 75),
(142, '2020-12-27 12:05:09', '2020-12-27 12:05:09', 23, 1, NULL, '/images/c4/19/c419ac64faf8be212bc5467b688a545e.png', 'original', 'image/png', 2340, 1560),
(143, '2020-12-27 12:05:09', '2020-12-27 12:05:09', 23, 1, 142, '/images/c4/19/c419ac64faf8be212bc5467b688a545e_default.png', 'default', 'image/png', 500, 315),
(144, '2020-12-27 12:05:09', '2020-12-27 12:05:09', 23, 1, 142, '/images/c4/19/c419ac64faf8be212bc5467b688a545e_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(145, '2020-12-27 12:05:10', '2020-12-27 12:05:10', 23, 1, 142, '/images/c4/19/c419ac64faf8be212bc5467b688a545e_wide.png', 'wide', 'image/png', 1920, 540),
(146, '2020-12-27 12:05:10', '2020-12-27 12:05:10', 23, 1, 142, '/images/c4/19/c419ac64faf8be212bc5467b688a545e_mobile.png', 'mobile', 'image/png', 320, 213),
(147, '2020-12-27 12:05:10', '2020-12-27 12:05:10', 23, 1, 142, '/images/c4/19/c419ac64faf8be212bc5467b688a545e_square.png', 'square', 'image/png', 320, 320),
(148, '2020-12-27 12:05:10', '2020-12-27 12:05:10', 23, 1, 142, '/images/c4/19/c419ac64faf8be212bc5467b688a545e_square_small.png', 'square_small', 'image/png', 75, 75),
(149, '2020-12-27 12:06:11', '2020-12-27 12:06:11', 24, 1, NULL, '/images/83/b9/83b95618b195851587485b95eefbd4b0.png', 'original', 'image/png', 2340, 1560),
(150, '2020-12-27 12:06:11', '2020-12-27 12:06:11', 24, 1, 149, '/images/83/b9/83b95618b195851587485b95eefbd4b0_default.png', 'default', 'image/png', 500, 315),
(151, '2020-12-27 12:06:11', '2020-12-27 12:06:11', 24, 1, 149, '/images/83/b9/83b95618b195851587485b95eefbd4b0_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(152, '2020-12-27 12:06:11', '2020-12-27 12:06:11', 24, 1, 149, '/images/83/b9/83b95618b195851587485b95eefbd4b0_wide.png', 'wide', 'image/png', 1920, 540),
(153, '2020-12-27 12:06:12', '2020-12-27 12:06:12', 24, 1, 149, '/images/83/b9/83b95618b195851587485b95eefbd4b0_mobile.png', 'mobile', 'image/png', 320, 213),
(154, '2020-12-27 12:06:12', '2020-12-27 12:06:12', 24, 1, 149, '/images/83/b9/83b95618b195851587485b95eefbd4b0_square.png', 'square', 'image/png', 320, 320),
(155, '2020-12-27 12:06:12', '2020-12-27 12:06:12', 24, 1, 149, '/images/83/b9/83b95618b195851587485b95eefbd4b0_square_small.png', 'square_small', 'image/png', 75, 75),
(156, '2020-12-27 12:06:55', '2020-12-27 12:06:55', 25, 1, NULL, '/images/30/5a/305abdf3bfa4286085cd841ab961741e.png', 'original', 'image/png', 2340, 1560),
(157, '2020-12-27 12:06:56', '2020-12-27 12:06:56', 25, 1, 156, '/images/30/5a/305abdf3bfa4286085cd841ab961741e_default.png', 'default', 'image/png', 500, 315),
(158, '2020-12-27 12:06:56', '2020-12-27 12:06:56', 25, 1, 156, '/images/30/5a/305abdf3bfa4286085cd841ab961741e_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(159, '2020-12-27 12:06:56', '2020-12-27 12:06:56', 25, 1, 156, '/images/30/5a/305abdf3bfa4286085cd841ab961741e_wide.png', 'wide', 'image/png', 1920, 540),
(160, '2020-12-27 12:06:56', '2020-12-27 12:06:56', 25, 1, 156, '/images/30/5a/305abdf3bfa4286085cd841ab961741e_mobile.png', 'mobile', 'image/png', 320, 213),
(161, '2020-12-27 12:06:56', '2020-12-27 12:06:56', 25, 1, 156, '/images/30/5a/305abdf3bfa4286085cd841ab961741e_square.png', 'square', 'image/png', 320, 320),
(162, '2020-12-27 12:06:57', '2020-12-27 12:06:57', 25, 1, 156, '/images/30/5a/305abdf3bfa4286085cd841ab961741e_square_small.png', 'square_small', 'image/png', 75, 75),
(163, '2020-12-27 12:11:47', '2020-12-27 12:11:47', 26, 1, NULL, '/images/18/1e/181e048afe2b4495072f48ec45540c4c.png', 'original', 'image/png', 2340, 1560),
(164, '2020-12-27 12:11:47', '2020-12-27 12:11:47', 26, 1, 163, '/images/18/1e/181e048afe2b4495072f48ec45540c4c_default.png', 'default', 'image/png', 500, 315),
(165, '2020-12-27 12:11:48', '2020-12-27 12:11:48', 26, 1, 163, '/images/18/1e/181e048afe2b4495072f48ec45540c4c_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(166, '2020-12-27 12:11:48', '2020-12-27 12:11:48', 26, 1, 163, '/images/18/1e/181e048afe2b4495072f48ec45540c4c_wide.png', 'wide', 'image/png', 1920, 540),
(167, '2020-12-27 12:11:48', '2020-12-27 12:11:48', 26, 1, 163, '/images/18/1e/181e048afe2b4495072f48ec45540c4c_mobile.png', 'mobile', 'image/png', 320, 213),
(168, '2020-12-27 12:11:48', '2020-12-27 12:11:48', 26, 1, 163, '/images/18/1e/181e048afe2b4495072f48ec45540c4c_square.png', 'square', 'image/png', 320, 320),
(169, '2020-12-27 12:11:48', '2020-12-27 12:11:48', 26, 1, 163, '/images/18/1e/181e048afe2b4495072f48ec45540c4c_square_small.png', 'square_small', 'image/png', 75, 75),
(170, '2020-12-27 12:13:08', '2020-12-27 12:13:08', 27, 1, NULL, '/images/33/f1/33f100a739f5f0c10f41992593105c28.png', 'original', 'image/png', 2340, 1560),
(171, '2020-12-27 12:13:08', '2020-12-27 12:13:08', 27, 1, 170, '/images/33/f1/33f100a739f5f0c10f41992593105c28_default.png', 'default', 'image/png', 500, 315),
(172, '2020-12-27 12:13:08', '2020-12-27 12:13:08', 27, 1, 170, '/images/33/f1/33f100a739f5f0c10f41992593105c28_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(173, '2020-12-27 12:13:09', '2020-12-27 12:13:09', 27, 1, 170, '/images/33/f1/33f100a739f5f0c10f41992593105c28_wide.png', 'wide', 'image/png', 1920, 540),
(174, '2020-12-27 12:13:09', '2020-12-27 12:13:09', 27, 1, 170, '/images/33/f1/33f100a739f5f0c10f41992593105c28_mobile.png', 'mobile', 'image/png', 320, 213),
(175, '2020-12-27 12:13:09', '2020-12-27 12:13:09', 27, 1, 170, '/images/33/f1/33f100a739f5f0c10f41992593105c28_square.png', 'square', 'image/png', 320, 320),
(176, '2020-12-27 12:13:09', '2020-12-27 12:13:09', 27, 1, 170, '/images/33/f1/33f100a739f5f0c10f41992593105c28_square_small.png', 'square_small', 'image/png', 75, 75),
(177, '2020-12-27 12:14:13', '2020-12-27 12:14:13', 28, 1, NULL, '/images/ac/d4/acd4d57394f0c578118dd190aa5ac859.png', 'original', 'image/png', 2340, 1560),
(178, '2020-12-27 12:14:13', '2020-12-27 12:14:13', 28, 1, 177, '/images/ac/d4/acd4d57394f0c578118dd190aa5ac859_default.png', 'default', 'image/png', 500, 315),
(179, '2020-12-27 12:14:13', '2020-12-27 12:14:13', 28, 1, 177, '/images/ac/d4/acd4d57394f0c578118dd190aa5ac859_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(180, '2020-12-27 12:14:13', '2020-12-27 12:14:13', 28, 1, 177, '/images/ac/d4/acd4d57394f0c578118dd190aa5ac859_wide.png', 'wide', 'image/png', 1920, 540),
(181, '2020-12-27 12:14:13', '2020-12-27 12:14:13', 28, 1, 177, '/images/ac/d4/acd4d57394f0c578118dd190aa5ac859_mobile.png', 'mobile', 'image/png', 320, 213),
(182, '2020-12-27 12:14:14', '2020-12-27 12:14:14', 28, 1, 177, '/images/ac/d4/acd4d57394f0c578118dd190aa5ac859_square.png', 'square', 'image/png', 320, 320),
(183, '2020-12-27 12:14:14', '2020-12-27 12:14:14', 28, 1, 177, '/images/ac/d4/acd4d57394f0c578118dd190aa5ac859_square_small.png', 'square_small', 'image/png', 75, 75),
(184, '2020-12-27 12:16:59', '2020-12-27 12:16:59', 29, 1, NULL, '/images/cb/66/cb669ad7779ec256734ed77379b93c7e.png', 'original', 'image/png', 2340, 1560),
(185, '2020-12-27 12:16:59', '2020-12-27 12:16:59', 29, 1, 184, '/images/cb/66/cb669ad7779ec256734ed77379b93c7e_default.png', 'default', 'image/png', 500, 315),
(186, '2020-12-27 12:16:59', '2020-12-27 12:16:59', 29, 1, 184, '/images/cb/66/cb669ad7779ec256734ed77379b93c7e_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(187, '2020-12-27 12:16:59', '2020-12-27 12:16:59', 29, 1, 184, '/images/cb/66/cb669ad7779ec256734ed77379b93c7e_wide.png', 'wide', 'image/png', 1920, 540),
(188, '2020-12-27 12:17:00', '2020-12-27 12:17:00', 29, 1, 184, '/images/cb/66/cb669ad7779ec256734ed77379b93c7e_mobile.png', 'mobile', 'image/png', 320, 213),
(189, '2020-12-27 12:17:00', '2020-12-27 12:17:00', 29, 1, 184, '/images/cb/66/cb669ad7779ec256734ed77379b93c7e_square.png', 'square', 'image/png', 320, 320),
(190, '2020-12-27 12:17:00', '2020-12-27 12:17:00', 29, 1, 184, '/images/cb/66/cb669ad7779ec256734ed77379b93c7e_square_small.png', 'square_small', 'image/png', 75, 75),
(191, '2020-12-27 12:18:07', '2020-12-27 12:18:07', 30, 1, NULL, '/images/34/ef/34ef75f4c614462ff95e8bcaa6ae79dd.png', 'original', 'image/png', 2340, 1560),
(192, '2020-12-27 12:18:07', '2020-12-27 12:18:07', 30, 1, 191, '/images/34/ef/34ef75f4c614462ff95e8bcaa6ae79dd_default.png', 'default', 'image/png', 500, 315),
(193, '2020-12-27 12:18:07', '2020-12-27 12:18:07', 30, 1, 191, '/images/34/ef/34ef75f4c614462ff95e8bcaa6ae79dd_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(194, '2020-12-27 12:18:07', '2020-12-27 12:18:07', 30, 1, 191, '/images/34/ef/34ef75f4c614462ff95e8bcaa6ae79dd_wide.png', 'wide', 'image/png', 1920, 540),
(195, '2020-12-27 12:18:08', '2020-12-27 12:18:08', 30, 1, 191, '/images/34/ef/34ef75f4c614462ff95e8bcaa6ae79dd_mobile.png', 'mobile', 'image/png', 320, 213),
(196, '2020-12-27 12:18:08', '2020-12-27 12:18:08', 30, 1, 191, '/images/34/ef/34ef75f4c614462ff95e8bcaa6ae79dd_square.png', 'square', 'image/png', 320, 320),
(197, '2020-12-27 12:18:08', '2020-12-27 12:18:08', 30, 1, 191, '/images/34/ef/34ef75f4c614462ff95e8bcaa6ae79dd_square_small.png', 'square_small', 'image/png', 75, 75),
(198, '2020-12-27 12:19:06', '2020-12-27 12:19:06', 31, 1, NULL, '/images/e0/f3/e0f356c1ba0a91f83e476337c961db12.png', 'original', 'image/png', 2340, 1560),
(199, '2020-12-27 12:19:07', '2020-12-27 12:19:07', 31, 1, 198, '/images/e0/f3/e0f356c1ba0a91f83e476337c961db12_default.png', 'default', 'image/png', 500, 315),
(200, '2020-12-27 12:19:07', '2020-12-27 12:19:07', 31, 1, 198, '/images/e0/f3/e0f356c1ba0a91f83e476337c961db12_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(201, '2020-12-27 12:19:07', '2020-12-27 12:19:07', 31, 1, 198, '/images/e0/f3/e0f356c1ba0a91f83e476337c961db12_wide.png', 'wide', 'image/png', 1920, 540),
(202, '2020-12-27 12:19:07', '2020-12-27 12:19:07', 31, 1, 198, '/images/e0/f3/e0f356c1ba0a91f83e476337c961db12_mobile.png', 'mobile', 'image/png', 320, 213),
(203, '2020-12-27 12:19:07', '2020-12-27 12:19:07', 31, 1, 198, '/images/e0/f3/e0f356c1ba0a91f83e476337c961db12_square.png', 'square', 'image/png', 320, 320),
(204, '2020-12-27 12:19:08', '2020-12-27 12:19:08', 31, 1, 198, '/images/e0/f3/e0f356c1ba0a91f83e476337c961db12_square_small.png', 'square_small', 'image/png', 75, 75),
(205, '2020-12-27 12:20:42', '2020-12-27 12:20:42', 32, 1, NULL, '/images/fd/31/fd317cc3b9c633b47cbf16426ddeec20.png', 'original', 'image/png', 2340, 1560),
(206, '2020-12-27 12:20:42', '2020-12-27 12:20:42', 32, 1, 205, '/images/fd/31/fd317cc3b9c633b47cbf16426ddeec20_default.png', 'default', 'image/png', 500, 315),
(207, '2020-12-27 12:20:42', '2020-12-27 12:20:42', 32, 1, 205, '/images/fd/31/fd317cc3b9c633b47cbf16426ddeec20_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(208, '2020-12-27 12:20:42', '2020-12-27 12:20:42', 32, 1, 205, '/images/fd/31/fd317cc3b9c633b47cbf16426ddeec20_wide.png', 'wide', 'image/png', 1920, 540),
(209, '2020-12-27 12:20:42', '2020-12-27 12:20:42', 32, 1, 205, '/images/fd/31/fd317cc3b9c633b47cbf16426ddeec20_mobile.png', 'mobile', 'image/png', 320, 213),
(210, '2020-12-27 12:20:43', '2020-12-27 12:20:43', 32, 1, 205, '/images/fd/31/fd317cc3b9c633b47cbf16426ddeec20_square.png', 'square', 'image/png', 320, 320),
(211, '2020-12-27 12:20:43', '2020-12-27 12:20:43', 32, 1, 205, '/images/fd/31/fd317cc3b9c633b47cbf16426ddeec20_square_small.png', 'square_small', 'image/png', 75, 75),
(212, '2020-12-27 12:21:48', '2020-12-27 12:21:48', 33, 1, NULL, '/images/80/da/80da8dc32994a932df39b8df7fe118f8.png', 'original', 'image/png', 2340, 1560),
(213, '2020-12-27 12:21:48', '2020-12-27 12:21:48', 33, 1, 212, '/images/80/da/80da8dc32994a932df39b8df7fe118f8_default.png', 'default', 'image/png', 500, 315),
(214, '2020-12-27 12:21:48', '2020-12-27 12:21:48', 33, 1, 212, '/images/80/da/80da8dc32994a932df39b8df7fe118f8_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(215, '2020-12-27 12:21:48', '2020-12-27 12:21:48', 33, 1, 212, '/images/80/da/80da8dc32994a932df39b8df7fe118f8_wide.png', 'wide', 'image/png', 1920, 540),
(216, '2020-12-27 12:21:49', '2020-12-27 12:21:49', 33, 1, 212, '/images/80/da/80da8dc32994a932df39b8df7fe118f8_mobile.png', 'mobile', 'image/png', 320, 213),
(217, '2020-12-27 12:21:49', '2020-12-27 12:21:49', 33, 1, 212, '/images/80/da/80da8dc32994a932df39b8df7fe118f8_square.png', 'square', 'image/png', 320, 320),
(218, '2020-12-27 12:21:49', '2020-12-27 12:21:49', 33, 1, 212, '/images/80/da/80da8dc32994a932df39b8df7fe118f8_square_small.png', 'square_small', 'image/png', 75, 75),
(219, '2020-12-27 12:26:15', '2020-12-27 12:26:15', 34, 1, NULL, '/images/1d/f5/1df571566b2726466aa69f0c021bfa34.png', 'original', 'image/png', 2340, 1560),
(220, '2020-12-27 12:26:16', '2020-12-27 12:26:16', 34, 1, 219, '/images/1d/f5/1df571566b2726466aa69f0c021bfa34_default.png', 'default', 'image/png', 500, 315),
(221, '2020-12-27 12:26:16', '2020-12-27 12:26:16', 34, 1, 219, '/images/1d/f5/1df571566b2726466aa69f0c021bfa34_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(222, '2020-12-27 12:26:16', '2020-12-27 12:26:16', 34, 1, 219, '/images/1d/f5/1df571566b2726466aa69f0c021bfa34_wide.png', 'wide', 'image/png', 1920, 540),
(223, '2020-12-27 12:26:16', '2020-12-27 12:26:16', 34, 1, 219, '/images/1d/f5/1df571566b2726466aa69f0c021bfa34_mobile.png', 'mobile', 'image/png', 320, 213),
(224, '2020-12-27 12:26:16', '2020-12-27 12:26:16', 34, 1, 219, '/images/1d/f5/1df571566b2726466aa69f0c021bfa34_square.png', 'square', 'image/png', 320, 320),
(225, '2020-12-27 12:26:17', '2020-12-27 12:26:17', 34, 1, 219, '/images/1d/f5/1df571566b2726466aa69f0c021bfa34_square_small.png', 'square_small', 'image/png', 75, 75),
(226, '2020-12-27 12:28:13', '2020-12-27 12:28:13', 35, 1, NULL, '/images/7d/aa/7daa37279396399515f5a790d39ea04f.png', 'original', 'image/png', 2340, 1560),
(227, '2020-12-27 12:28:13', '2020-12-27 12:28:13', 35, 1, 226, '/images/7d/aa/7daa37279396399515f5a790d39ea04f_default.png', 'default', 'image/png', 500, 315),
(228, '2020-12-27 12:28:13', '2020-12-27 12:28:13', 35, 1, 226, '/images/7d/aa/7daa37279396399515f5a790d39ea04f_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(229, '2020-12-27 12:28:14', '2020-12-27 12:28:14', 35, 1, 226, '/images/7d/aa/7daa37279396399515f5a790d39ea04f_wide.png', 'wide', 'image/png', 1920, 540),
(230, '2020-12-27 12:28:14', '2020-12-27 12:28:14', 35, 1, 226, '/images/7d/aa/7daa37279396399515f5a790d39ea04f_mobile.png', 'mobile', 'image/png', 320, 213),
(231, '2020-12-27 12:28:14', '2020-12-27 12:28:14', 35, 1, 226, '/images/7d/aa/7daa37279396399515f5a790d39ea04f_square.png', 'square', 'image/png', 320, 320),
(232, '2020-12-27 12:28:14', '2020-12-27 12:28:14', 35, 1, 226, '/images/7d/aa/7daa37279396399515f5a790d39ea04f_square_small.png', 'square_small', 'image/png', 75, 75),
(233, '2020-12-27 12:31:02', '2020-12-27 12:31:02', 36, 1, NULL, '/images/68/75/6875db47f9e88b56a173bdbeb514fab7.png', 'original', 'image/png', 2340, 1560),
(234, '2020-12-27 12:31:02', '2020-12-27 12:31:02', 36, 1, 233, '/images/68/75/6875db47f9e88b56a173bdbeb514fab7_default.png', 'default', 'image/png', 500, 315),
(235, '2020-12-27 12:31:02', '2020-12-27 12:31:02', 36, 1, 233, '/images/68/75/6875db47f9e88b56a173bdbeb514fab7_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(236, '2020-12-27 12:31:03', '2020-12-27 12:31:03', 36, 1, 233, '/images/68/75/6875db47f9e88b56a173bdbeb514fab7_wide.png', 'wide', 'image/png', 1920, 540),
(237, '2020-12-27 12:31:03', '2020-12-27 12:31:03', 36, 1, 233, '/images/68/75/6875db47f9e88b56a173bdbeb514fab7_mobile.png', 'mobile', 'image/png', 320, 213),
(238, '2020-12-27 12:31:03', '2020-12-27 12:31:03', 36, 1, 233, '/images/68/75/6875db47f9e88b56a173bdbeb514fab7_square.png', 'square', 'image/png', 320, 320),
(239, '2020-12-27 12:31:03', '2020-12-27 12:31:03', 36, 1, 233, '/images/68/75/6875db47f9e88b56a173bdbeb514fab7_square_small.png', 'square_small', 'image/png', 75, 75),
(240, '2020-12-27 13:27:47', '2020-12-27 13:27:47', 37, 1, NULL, '/images/a5/ee/a5ee57222f5a0f587ab1e7fa411c71ab.png', 'original', 'image/png', 2340, 1560),
(241, '2020-12-27 13:27:48', '2020-12-27 13:27:48', 37, 1, 240, '/images/a5/ee/a5ee57222f5a0f587ab1e7fa411c71ab_default.png', 'default', 'image/png', 500, 315),
(242, '2020-12-27 13:27:48', '2020-12-27 13:27:48', 37, 1, 240, '/images/a5/ee/a5ee57222f5a0f587ab1e7fa411c71ab_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(243, '2020-12-27 13:27:48', '2020-12-27 13:27:48', 37, 1, 240, '/images/a5/ee/a5ee57222f5a0f587ab1e7fa411c71ab_wide.png', 'wide', 'image/png', 1920, 540),
(244, '2020-12-27 13:27:48', '2020-12-27 13:27:48', 37, 1, 240, '/images/a5/ee/a5ee57222f5a0f587ab1e7fa411c71ab_mobile.png', 'mobile', 'image/png', 320, 213),
(245, '2020-12-27 13:27:48', '2020-12-27 13:27:48', 37, 1, 240, '/images/a5/ee/a5ee57222f5a0f587ab1e7fa411c71ab_square.png', 'square', 'image/png', 320, 320),
(246, '2020-12-27 13:27:49', '2020-12-27 13:27:49', 37, 1, 240, '/images/a5/ee/a5ee57222f5a0f587ab1e7fa411c71ab_square_small.png', 'square_small', 'image/png', 75, 75),
(247, '2020-12-27 13:30:35', '2020-12-27 13:30:35', 38, 1, NULL, '/images/3f/37/3f3758d567477c2c6dfdabbd49f1e1d4.png', 'original', 'image/png', 2340, 1560),
(248, '2020-12-27 13:30:36', '2020-12-27 13:30:36', 38, 1, 247, '/images/3f/37/3f3758d567477c2c6dfdabbd49f1e1d4_default.png', 'default', 'image/png', 500, 315),
(249, '2020-12-27 13:30:36', '2020-12-27 13:30:36', 38, 1, 247, '/images/3f/37/3f3758d567477c2c6dfdabbd49f1e1d4_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(250, '2020-12-27 13:30:36', '2020-12-27 13:30:36', 38, 1, 247, '/images/3f/37/3f3758d567477c2c6dfdabbd49f1e1d4_wide.png', 'wide', 'image/png', 1920, 540),
(251, '2020-12-27 13:30:36', '2020-12-27 13:30:36', 38, 1, 247, '/images/3f/37/3f3758d567477c2c6dfdabbd49f1e1d4_mobile.png', 'mobile', 'image/png', 320, 213),
(252, '2020-12-27 13:30:36', '2020-12-27 13:30:36', 38, 1, 247, '/images/3f/37/3f3758d567477c2c6dfdabbd49f1e1d4_square.png', 'square', 'image/png', 320, 320),
(253, '2020-12-27 13:30:36', '2020-12-27 13:30:36', 38, 1, 247, '/images/3f/37/3f3758d567477c2c6dfdabbd49f1e1d4_square_small.png', 'square_small', 'image/png', 75, 75),
(254, '2020-12-27 13:34:18', '2020-12-27 13:34:18', 39, 1, NULL, '/images/03/b2/03b27ea6d40f4b0a5e502a370ba37254.png', 'original', 'image/png', 2340, 1560),
(255, '2020-12-27 13:34:19', '2020-12-27 13:34:19', 39, 1, 254, '/images/03/b2/03b27ea6d40f4b0a5e502a370ba37254_default.png', 'default', 'image/png', 500, 315),
(256, '2020-12-27 13:34:19', '2020-12-27 13:34:19', 39, 1, 254, '/images/03/b2/03b27ea6d40f4b0a5e502a370ba37254_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(257, '2020-12-27 13:34:19', '2020-12-27 13:34:19', 39, 1, 254, '/images/03/b2/03b27ea6d40f4b0a5e502a370ba37254_wide.png', 'wide', 'image/png', 1920, 540),
(258, '2020-12-27 13:34:19', '2020-12-27 13:34:19', 39, 1, 254, '/images/03/b2/03b27ea6d40f4b0a5e502a370ba37254_mobile.png', 'mobile', 'image/png', 320, 213),
(259, '2020-12-27 13:34:19', '2020-12-27 13:34:19', 39, 1, 254, '/images/03/b2/03b27ea6d40f4b0a5e502a370ba37254_square.png', 'square', 'image/png', 320, 320),
(260, '2020-12-27 13:34:20', '2020-12-27 13:34:20', 39, 1, 254, '/images/03/b2/03b27ea6d40f4b0a5e502a370ba37254_square_small.png', 'square_small', 'image/png', 75, 75),
(261, '2020-12-27 13:35:46', '2020-12-27 13:35:46', 40, 1, NULL, '/images/a0/81/a081d26c91072499b0d7857e4e3280e8.png', 'original', 'image/png', 2340, 1560),
(262, '2020-12-27 13:35:46', '2020-12-27 13:35:46', 40, 1, 261, '/images/a0/81/a081d26c91072499b0d7857e4e3280e8_default.png', 'default', 'image/png', 500, 315),
(263, '2020-12-27 13:35:46', '2020-12-27 13:35:46', 40, 1, 261, '/images/a0/81/a081d26c91072499b0d7857e4e3280e8_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(264, '2020-12-27 13:35:46', '2020-12-27 13:35:46', 40, 1, 261, '/images/a0/81/a081d26c91072499b0d7857e4e3280e8_wide.png', 'wide', 'image/png', 1920, 540),
(265, '2020-12-27 13:35:47', '2020-12-27 13:35:47', 40, 1, 261, '/images/a0/81/a081d26c91072499b0d7857e4e3280e8_mobile.png', 'mobile', 'image/png', 320, 213),
(266, '2020-12-27 13:35:47', '2020-12-27 13:35:47', 40, 1, 261, '/images/a0/81/a081d26c91072499b0d7857e4e3280e8_square.png', 'square', 'image/png', 320, 320),
(267, '2020-12-27 13:35:47', '2020-12-27 13:35:47', 40, 1, 261, '/images/a0/81/a081d26c91072499b0d7857e4e3280e8_square_small.png', 'square_small', 'image/png', 75, 75),
(268, '2020-12-27 13:41:04', '2020-12-27 13:41:04', 41, 1, NULL, '/images/8b/79/8b7940f51073a76f4388ccc6d5da39c5.png', 'original', 'image/png', 2340, 1560),
(269, '2020-12-27 13:41:04', '2020-12-27 13:41:04', 41, 1, 268, '/images/8b/79/8b7940f51073a76f4388ccc6d5da39c5_default.png', 'default', 'image/png', 500, 315),
(270, '2020-12-27 13:41:04', '2020-12-27 13:41:04', 41, 1, 268, '/images/8b/79/8b7940f51073a76f4388ccc6d5da39c5_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(271, '2020-12-27 13:41:04', '2020-12-27 13:41:04', 41, 1, 268, '/images/8b/79/8b7940f51073a76f4388ccc6d5da39c5_wide.png', 'wide', 'image/png', 1920, 540),
(272, '2020-12-27 13:41:05', '2020-12-27 13:41:05', 41, 1, 268, '/images/8b/79/8b7940f51073a76f4388ccc6d5da39c5_mobile.png', 'mobile', 'image/png', 320, 213),
(273, '2020-12-27 13:41:05', '2020-12-27 13:41:05', 41, 1, 268, '/images/8b/79/8b7940f51073a76f4388ccc6d5da39c5_square.png', 'square', 'image/png', 320, 320),
(274, '2020-12-27 13:41:05', '2020-12-27 13:41:05', 41, 1, 268, '/images/8b/79/8b7940f51073a76f4388ccc6d5da39c5_square_small.png', 'square_small', 'image/png', 75, 75),
(275, '2020-12-27 13:43:35', '2020-12-27 13:43:35', 42, 1, NULL, '/images/8d/4f/8d4f7689c9bc200906127f58e8abffd7.png', 'original', 'image/png', 2340, 1560),
(276, '2020-12-27 13:43:35', '2020-12-27 13:43:35', 42, 1, 275, '/images/8d/4f/8d4f7689c9bc200906127f58e8abffd7_default.png', 'default', 'image/png', 500, 315),
(277, '2020-12-27 13:43:35', '2020-12-27 13:43:35', 42, 1, 275, '/images/8d/4f/8d4f7689c9bc200906127f58e8abffd7_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(278, '2020-12-27 13:43:36', '2020-12-27 13:43:36', 42, 1, 275, '/images/8d/4f/8d4f7689c9bc200906127f58e8abffd7_wide.png', 'wide', 'image/png', 1920, 540),
(279, '2020-12-27 13:43:36', '2020-12-27 13:43:36', 42, 1, 275, '/images/8d/4f/8d4f7689c9bc200906127f58e8abffd7_mobile.png', 'mobile', 'image/png', 320, 213),
(280, '2020-12-27 13:43:36', '2020-12-27 13:43:36', 42, 1, 275, '/images/8d/4f/8d4f7689c9bc200906127f58e8abffd7_square.png', 'square', 'image/png', 320, 320),
(281, '2020-12-27 13:43:36', '2020-12-27 13:43:36', 42, 1, 275, '/images/8d/4f/8d4f7689c9bc200906127f58e8abffd7_square_small.png', 'square_small', 'image/png', 75, 75),
(282, '2020-12-27 13:45:45', '2020-12-27 13:45:45', 43, 1, NULL, '/images/a7/a5/a7a5100df5ef50923d98d8a4c480bc7d.png', 'original', 'image/png', 2340, 1560),
(283, '2020-12-27 13:45:45', '2020-12-27 13:45:45', 43, 1, 282, '/images/a7/a5/a7a5100df5ef50923d98d8a4c480bc7d_default.png', 'default', 'image/png', 500, 315),
(284, '2020-12-27 13:45:45', '2020-12-27 13:45:45', 43, 1, 282, '/images/a7/a5/a7a5100df5ef50923d98d8a4c480bc7d_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(285, '2020-12-27 13:45:45', '2020-12-27 13:45:45', 43, 1, 282, '/images/a7/a5/a7a5100df5ef50923d98d8a4c480bc7d_wide.png', 'wide', 'image/png', 1920, 540),
(286, '2020-12-27 13:45:45', '2020-12-27 13:45:45', 43, 1, 282, '/images/a7/a5/a7a5100df5ef50923d98d8a4c480bc7d_mobile.png', 'mobile', 'image/png', 320, 213),
(287, '2020-12-27 13:45:46', '2020-12-27 13:45:46', 43, 1, 282, '/images/a7/a5/a7a5100df5ef50923d98d8a4c480bc7d_square.png', 'square', 'image/png', 320, 320),
(288, '2020-12-27 13:45:46', '2020-12-27 13:45:46', 43, 1, 282, '/images/a7/a5/a7a5100df5ef50923d98d8a4c480bc7d_square_small.png', 'square_small', 'image/png', 75, 75),
(289, '2020-12-27 13:49:00', '2020-12-27 13:49:00', 44, 1, NULL, '/images/0c/2f/0c2fad691acd0b67bc71818fd66f88ef.png', 'original', 'image/png', 2340, 1560),
(290, '2020-12-27 13:49:01', '2020-12-27 13:49:01', 44, 1, 289, '/images/0c/2f/0c2fad691acd0b67bc71818fd66f88ef_default.png', 'default', 'image/png', 500, 315),
(291, '2020-12-27 13:49:01', '2020-12-27 13:49:01', 44, 1, 289, '/images/0c/2f/0c2fad691acd0b67bc71818fd66f88ef_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(292, '2020-12-27 13:49:01', '2020-12-27 13:49:01', 44, 1, 289, '/images/0c/2f/0c2fad691acd0b67bc71818fd66f88ef_wide.png', 'wide', 'image/png', 1920, 540),
(293, '2020-12-27 13:49:01', '2020-12-27 13:49:01', 44, 1, 289, '/images/0c/2f/0c2fad691acd0b67bc71818fd66f88ef_mobile.png', 'mobile', 'image/png', 320, 213),
(294, '2020-12-27 13:49:02', '2020-12-27 13:49:02', 44, 1, 289, '/images/0c/2f/0c2fad691acd0b67bc71818fd66f88ef_square.png', 'square', 'image/png', 320, 320),
(295, '2020-12-27 13:49:02', '2020-12-27 13:49:02', 44, 1, 289, '/images/0c/2f/0c2fad691acd0b67bc71818fd66f88ef_square_small.png', 'square_small', 'image/png', 75, 75),
(296, '2020-12-27 13:51:33', '2020-12-27 13:51:33', 45, 1, NULL, '/images/e5/3d/e53d144c4c887855ced70400cf3e5f39.png', 'original', 'image/png', 2340, 1560),
(297, '2020-12-27 13:51:33', '2020-12-27 13:51:33', 45, 1, 296, '/images/e5/3d/e53d144c4c887855ced70400cf3e5f39_default.png', 'default', 'image/png', 500, 315),
(298, '2020-12-27 13:51:33', '2020-12-27 13:51:33', 45, 1, 296, '/images/e5/3d/e53d144c4c887855ced70400cf3e5f39_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(299, '2020-12-27 13:51:33', '2020-12-27 13:51:33', 45, 1, 296, '/images/e5/3d/e53d144c4c887855ced70400cf3e5f39_wide.png', 'wide', 'image/png', 1920, 540),
(300, '2020-12-27 13:51:34', '2020-12-27 13:51:34', 45, 1, 296, '/images/e5/3d/e53d144c4c887855ced70400cf3e5f39_mobile.png', 'mobile', 'image/png', 320, 213),
(301, '2020-12-27 13:51:34', '2020-12-27 13:51:34', 45, 1, 296, '/images/e5/3d/e53d144c4c887855ced70400cf3e5f39_square.png', 'square', 'image/png', 320, 320),
(302, '2020-12-27 13:51:34', '2020-12-27 13:51:34', 45, 1, 296, '/images/e5/3d/e53d144c4c887855ced70400cf3e5f39_square_small.png', 'square_small', 'image/png', 75, 75),
(303, '2020-12-27 13:52:50', '2020-12-27 13:52:50', 46, 1, NULL, '/images/57/17/5717473386578116096694448e7a6689.png', 'original', 'image/png', 2340, 1560),
(304, '2020-12-27 13:52:50', '2020-12-27 13:52:50', 46, 1, 303, '/images/57/17/5717473386578116096694448e7a6689_default.png', 'default', 'image/png', 500, 315),
(305, '2020-12-27 13:52:50', '2020-12-27 13:52:50', 46, 1, 303, '/images/57/17/5717473386578116096694448e7a6689_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(306, '2020-12-27 13:52:50', '2020-12-27 13:52:50', 46, 1, 303, '/images/57/17/5717473386578116096694448e7a6689_wide.png', 'wide', 'image/png', 1920, 540),
(307, '2020-12-27 13:52:50', '2020-12-27 13:52:50', 46, 1, 303, '/images/57/17/5717473386578116096694448e7a6689_mobile.png', 'mobile', 'image/png', 320, 213),
(308, '2020-12-27 13:52:51', '2020-12-27 13:52:51', 46, 1, 303, '/images/57/17/5717473386578116096694448e7a6689_square.png', 'square', 'image/png', 320, 320),
(309, '2020-12-27 13:52:51', '2020-12-27 13:52:51', 46, 1, 303, '/images/57/17/5717473386578116096694448e7a6689_square_small.png', 'square_small', 'image/png', 75, 75),
(310, '2020-12-27 13:54:14', '2020-12-27 13:54:14', 47, 1, NULL, '/images/fe/a1/fea14dfdc069d185fbad8320c77d30e0.png', 'original', 'image/png', 2340, 1560),
(311, '2020-12-27 13:54:15', '2020-12-27 13:54:15', 47, 1, 310, '/images/fe/a1/fea14dfdc069d185fbad8320c77d30e0_default.png', 'default', 'image/png', 500, 315),
(312, '2020-12-27 13:54:15', '2020-12-27 13:54:15', 47, 1, 310, '/images/fe/a1/fea14dfdc069d185fbad8320c77d30e0_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(313, '2020-12-27 13:54:15', '2020-12-27 13:54:15', 47, 1, 310, '/images/fe/a1/fea14dfdc069d185fbad8320c77d30e0_wide.png', 'wide', 'image/png', 1920, 540),
(314, '2020-12-27 13:54:15', '2020-12-27 13:54:15', 47, 1, 310, '/images/fe/a1/fea14dfdc069d185fbad8320c77d30e0_mobile.png', 'mobile', 'image/png', 320, 213),
(315, '2020-12-27 13:54:15', '2020-12-27 13:54:15', 47, 1, 310, '/images/fe/a1/fea14dfdc069d185fbad8320c77d30e0_square.png', 'square', 'image/png', 320, 320),
(316, '2020-12-27 13:54:16', '2020-12-27 13:54:16', 47, 1, 310, '/images/fe/a1/fea14dfdc069d185fbad8320c77d30e0_square_small.png', 'square_small', 'image/png', 75, 75),
(317, '2020-12-27 13:58:34', '2020-12-27 13:58:34', 48, 1, NULL, '/images/94/ec/94ec763f4cf40e1a435af028bccc0a87.png', 'original', 'image/png', 2340, 1560);
INSERT INTO `images` (`id`, `created_at`, `updated_at`, `object_id`, `object_type`, `parent_id`, `src`, `type`, `mime`, `width`, `height`) VALUES
(318, '2020-12-27 13:58:35', '2020-12-27 13:58:35', 48, 1, 317, '/images/94/ec/94ec763f4cf40e1a435af028bccc0a87_default.png', 'default', 'image/png', 500, 315),
(319, '2020-12-27 13:58:35', '2020-12-27 13:58:35', 48, 1, 317, '/images/94/ec/94ec763f4cf40e1a435af028bccc0a87_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(320, '2020-12-27 13:58:35', '2020-12-27 13:58:35', 48, 1, 317, '/images/94/ec/94ec763f4cf40e1a435af028bccc0a87_wide.png', 'wide', 'image/png', 1920, 540),
(321, '2020-12-27 13:58:35', '2020-12-27 13:58:35', 48, 1, 317, '/images/94/ec/94ec763f4cf40e1a435af028bccc0a87_mobile.png', 'mobile', 'image/png', 320, 213),
(322, '2020-12-27 13:58:35', '2020-12-27 13:58:35', 48, 1, 317, '/images/94/ec/94ec763f4cf40e1a435af028bccc0a87_square.png', 'square', 'image/png', 320, 320),
(323, '2020-12-27 13:58:35', '2020-12-27 13:58:35', 48, 1, 317, '/images/94/ec/94ec763f4cf40e1a435af028bccc0a87_square_small.png', 'square_small', 'image/png', 75, 75),
(324, '2020-12-27 14:00:24', '2020-12-27 14:00:24', 49, 1, NULL, '/images/b9/cf/b9cffc9d7aa5627e31d38d88ba2ac531.png', 'original', 'image/png', 2340, 1560),
(325, '2020-12-27 14:00:25', '2020-12-27 14:00:25', 49, 1, 324, '/images/b9/cf/b9cffc9d7aa5627e31d38d88ba2ac531_default.png', 'default', 'image/png', 500, 315),
(326, '2020-12-27 14:00:25', '2020-12-27 14:00:25', 49, 1, 324, '/images/b9/cf/b9cffc9d7aa5627e31d38d88ba2ac531_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(327, '2020-12-27 14:00:25', '2020-12-27 14:00:25', 49, 1, 324, '/images/b9/cf/b9cffc9d7aa5627e31d38d88ba2ac531_wide.png', 'wide', 'image/png', 1920, 540),
(328, '2020-12-27 14:00:25', '2020-12-27 14:00:25', 49, 1, 324, '/images/b9/cf/b9cffc9d7aa5627e31d38d88ba2ac531_mobile.png', 'mobile', 'image/png', 320, 213),
(329, '2020-12-27 14:00:25', '2020-12-27 14:00:25', 49, 1, 324, '/images/b9/cf/b9cffc9d7aa5627e31d38d88ba2ac531_square.png', 'square', 'image/png', 320, 320),
(330, '2020-12-27 14:00:25', '2020-12-27 14:00:25', 49, 1, 324, '/images/b9/cf/b9cffc9d7aa5627e31d38d88ba2ac531_square_small.png', 'square_small', 'image/png', 75, 75),
(331, '2020-12-27 14:01:58', '2020-12-27 14:01:58', 50, 1, NULL, '/images/12/cd/12cde990d933502d97dd072116265bf3.png', 'original', 'image/png', 2340, 1560),
(332, '2020-12-27 14:01:58', '2020-12-27 14:01:58', 50, 1, 331, '/images/12/cd/12cde990d933502d97dd072116265bf3_default.png', 'default', 'image/png', 500, 315),
(333, '2020-12-27 14:01:58', '2020-12-27 14:01:58', 50, 1, 331, '/images/12/cd/12cde990d933502d97dd072116265bf3_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(334, '2020-12-27 14:01:59', '2020-12-27 14:01:59', 50, 1, 331, '/images/12/cd/12cde990d933502d97dd072116265bf3_wide.png', 'wide', 'image/png', 1920, 540),
(335, '2020-12-27 14:01:59', '2020-12-27 14:01:59', 50, 1, 331, '/images/12/cd/12cde990d933502d97dd072116265bf3_mobile.png', 'mobile', 'image/png', 320, 213),
(336, '2020-12-27 14:01:59', '2020-12-27 14:01:59', 50, 1, 331, '/images/12/cd/12cde990d933502d97dd072116265bf3_square.png', 'square', 'image/png', 320, 320),
(337, '2020-12-27 14:01:59', '2020-12-27 14:01:59', 50, 1, 331, '/images/12/cd/12cde990d933502d97dd072116265bf3_square_small.png', 'square_small', 'image/png', 75, 75),
(338, '2020-12-27 14:03:57', '2020-12-27 14:03:57', 51, 1, NULL, '/images/37/f3/37f395010a1ee954f0cdbd06555e8f2a.png', 'original', 'image/png', 2340, 1560),
(339, '2020-12-27 14:03:57', '2020-12-27 14:03:57', 51, 1, 338, '/images/37/f3/37f395010a1ee954f0cdbd06555e8f2a_default.png', 'default', 'image/png', 500, 315),
(340, '2020-12-27 14:03:58', '2020-12-27 14:03:58', 51, 1, 338, '/images/37/f3/37f395010a1ee954f0cdbd06555e8f2a_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(341, '2020-12-27 14:03:58', '2020-12-27 14:03:58', 51, 1, 338, '/images/37/f3/37f395010a1ee954f0cdbd06555e8f2a_wide.png', 'wide', 'image/png', 1920, 540),
(342, '2020-12-27 14:03:58', '2020-12-27 14:03:58', 51, 1, 338, '/images/37/f3/37f395010a1ee954f0cdbd06555e8f2a_mobile.png', 'mobile', 'image/png', 320, 213),
(343, '2020-12-27 14:03:58', '2020-12-27 14:03:58', 51, 1, 338, '/images/37/f3/37f395010a1ee954f0cdbd06555e8f2a_square.png', 'square', 'image/png', 320, 320),
(344, '2020-12-27 14:03:58', '2020-12-27 14:03:58', 51, 1, 338, '/images/37/f3/37f395010a1ee954f0cdbd06555e8f2a_square_small.png', 'square_small', 'image/png', 75, 75),
(345, '2020-12-27 14:05:59', '2020-12-27 14:05:59', 52, 1, NULL, '/images/92/1d/921d716dc52d06ff2cc1ac682229f4d6.png', 'original', 'image/png', 2340, 1560),
(346, '2020-12-27 14:06:00', '2020-12-27 14:06:00', 52, 1, 345, '/images/92/1d/921d716dc52d06ff2cc1ac682229f4d6_default.png', 'default', 'image/png', 500, 315),
(347, '2020-12-27 14:06:00', '2020-12-27 14:06:00', 52, 1, 345, '/images/92/1d/921d716dc52d06ff2cc1ac682229f4d6_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(348, '2020-12-27 14:06:00', '2020-12-27 14:06:00', 52, 1, 345, '/images/92/1d/921d716dc52d06ff2cc1ac682229f4d6_wide.png', 'wide', 'image/png', 1920, 540),
(349, '2020-12-27 14:06:00', '2020-12-27 14:06:00', 52, 1, 345, '/images/92/1d/921d716dc52d06ff2cc1ac682229f4d6_mobile.png', 'mobile', 'image/png', 320, 213),
(350, '2020-12-27 14:06:00', '2020-12-27 14:06:00', 52, 1, 345, '/images/92/1d/921d716dc52d06ff2cc1ac682229f4d6_square.png', 'square', 'image/png', 320, 320),
(351, '2020-12-27 14:06:01', '2020-12-27 14:06:01', 52, 1, 345, '/images/92/1d/921d716dc52d06ff2cc1ac682229f4d6_square_small.png', 'square_small', 'image/png', 75, 75),
(352, '2020-12-27 14:08:36', '2020-12-27 14:08:36', 53, 1, NULL, '/images/e1/7e/e17ed14681ba8acd23175f73f35f200d.png', 'original', 'image/png', 2340, 1560),
(353, '2020-12-27 14:08:36', '2020-12-27 14:08:36', 53, 1, 352, '/images/e1/7e/e17ed14681ba8acd23175f73f35f200d_default.png', 'default', 'image/png', 500, 315),
(354, '2020-12-27 14:08:37', '2020-12-27 14:08:37', 53, 1, 352, '/images/e1/7e/e17ed14681ba8acd23175f73f35f200d_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(355, '2020-12-27 14:08:37', '2020-12-27 14:08:37', 53, 1, 352, '/images/e1/7e/e17ed14681ba8acd23175f73f35f200d_wide.png', 'wide', 'image/png', 1920, 540),
(356, '2020-12-27 14:08:37', '2020-12-27 14:08:37', 53, 1, 352, '/images/e1/7e/e17ed14681ba8acd23175f73f35f200d_mobile.png', 'mobile', 'image/png', 320, 213),
(357, '2020-12-27 14:08:37', '2020-12-27 14:08:37', 53, 1, 352, '/images/e1/7e/e17ed14681ba8acd23175f73f35f200d_square.png', 'square', 'image/png', 320, 320),
(358, '2020-12-27 14:08:37', '2020-12-27 14:08:37', 53, 1, 352, '/images/e1/7e/e17ed14681ba8acd23175f73f35f200d_square_small.png', 'square_small', 'image/png', 75, 75),
(359, '2020-12-27 14:11:27', '2020-12-27 14:11:27', 54, 1, NULL, '/images/a8/90/a890b858df2ad3a2758c8507b42b3236.png', 'original', 'image/png', 2340, 1560),
(360, '2020-12-27 14:11:27', '2020-12-27 14:11:27', 54, 1, 359, '/images/a8/90/a890b858df2ad3a2758c8507b42b3236_default.png', 'default', 'image/png', 500, 315),
(361, '2020-12-27 14:11:28', '2020-12-27 14:11:28', 54, 1, 359, '/images/a8/90/a890b858df2ad3a2758c8507b42b3236_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(362, '2020-12-27 14:11:28', '2020-12-27 14:11:28', 54, 1, 359, '/images/a8/90/a890b858df2ad3a2758c8507b42b3236_wide.png', 'wide', 'image/png', 1920, 540),
(363, '2020-12-27 14:11:28', '2020-12-27 14:11:28', 54, 1, 359, '/images/a8/90/a890b858df2ad3a2758c8507b42b3236_mobile.png', 'mobile', 'image/png', 320, 213),
(364, '2020-12-27 14:11:28', '2020-12-27 14:11:28', 54, 1, 359, '/images/a8/90/a890b858df2ad3a2758c8507b42b3236_square.png', 'square', 'image/png', 320, 320),
(365, '2020-12-27 14:11:28', '2020-12-27 14:11:28', 54, 1, 359, '/images/a8/90/a890b858df2ad3a2758c8507b42b3236_square_small.png', 'square_small', 'image/png', 75, 75),
(366, '2020-12-27 14:13:02', '2020-12-27 14:13:02', 55, 1, NULL, '/images/a0/fa/a0fad48189b091417038c1b8eb7538f5.png', 'original', 'image/png', 2340, 1560),
(367, '2020-12-27 14:13:02', '2020-12-27 14:13:02', 55, 1, 366, '/images/a0/fa/a0fad48189b091417038c1b8eb7538f5_default.png', 'default', 'image/png', 500, 315),
(368, '2020-12-27 14:13:02', '2020-12-27 14:13:02', 55, 1, 366, '/images/a0/fa/a0fad48189b091417038c1b8eb7538f5_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(369, '2020-12-27 14:13:02', '2020-12-27 14:13:02', 55, 1, 366, '/images/a0/fa/a0fad48189b091417038c1b8eb7538f5_wide.png', 'wide', 'image/png', 1920, 540),
(370, '2020-12-27 14:13:03', '2020-12-27 14:13:03', 55, 1, 366, '/images/a0/fa/a0fad48189b091417038c1b8eb7538f5_mobile.png', 'mobile', 'image/png', 320, 213),
(371, '2020-12-27 14:13:03', '2020-12-27 14:13:03', 55, 1, 366, '/images/a0/fa/a0fad48189b091417038c1b8eb7538f5_square.png', 'square', 'image/png', 320, 320),
(372, '2020-12-27 14:13:03', '2020-12-27 14:13:03', 55, 1, 366, '/images/a0/fa/a0fad48189b091417038c1b8eb7538f5_square_small.png', 'square_small', 'image/png', 75, 75),
(373, '2020-12-27 14:14:51', '2020-12-27 14:14:51', 56, 1, NULL, '/images/80/61/8061d71bf7a4216a7c4a8d83d7fdd3c5.png', 'original', 'image/png', 2340, 1560),
(374, '2020-12-27 14:14:51', '2020-12-27 14:14:51', 56, 1, 373, '/images/80/61/8061d71bf7a4216a7c4a8d83d7fdd3c5_default.png', 'default', 'image/png', 500, 315),
(375, '2020-12-27 14:14:51', '2020-12-27 14:14:51', 56, 1, 373, '/images/80/61/8061d71bf7a4216a7c4a8d83d7fdd3c5_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(376, '2020-12-27 14:14:52', '2020-12-27 14:14:52', 56, 1, 373, '/images/80/61/8061d71bf7a4216a7c4a8d83d7fdd3c5_wide.png', 'wide', 'image/png', 1920, 540),
(377, '2020-12-27 14:14:52', '2020-12-27 14:14:52', 56, 1, 373, '/images/80/61/8061d71bf7a4216a7c4a8d83d7fdd3c5_mobile.png', 'mobile', 'image/png', 320, 213),
(378, '2020-12-27 14:14:52', '2020-12-27 14:14:52', 56, 1, 373, '/images/80/61/8061d71bf7a4216a7c4a8d83d7fdd3c5_square.png', 'square', 'image/png', 320, 320),
(379, '2020-12-27 14:14:52', '2020-12-27 14:14:52', 56, 1, 373, '/images/80/61/8061d71bf7a4216a7c4a8d83d7fdd3c5_square_small.png', 'square_small', 'image/png', 75, 75),
(380, '2020-12-27 14:16:41', '2020-12-27 14:16:41', 57, 1, NULL, '/images/10/df/10df53df009aed9d3dcc8d269d62b5fc.png', 'original', 'image/png', 2340, 1560),
(381, '2020-12-27 14:16:42', '2020-12-27 14:16:42', 57, 1, 380, '/images/10/df/10df53df009aed9d3dcc8d269d62b5fc_default.png', 'default', 'image/png', 500, 315),
(382, '2020-12-27 14:16:42', '2020-12-27 14:16:42', 57, 1, 380, '/images/10/df/10df53df009aed9d3dcc8d269d62b5fc_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(383, '2020-12-27 14:16:42', '2020-12-27 14:16:42', 57, 1, 380, '/images/10/df/10df53df009aed9d3dcc8d269d62b5fc_wide.png', 'wide', 'image/png', 1920, 540),
(384, '2020-12-27 14:16:42', '2020-12-27 14:16:42', 57, 1, 380, '/images/10/df/10df53df009aed9d3dcc8d269d62b5fc_mobile.png', 'mobile', 'image/png', 320, 213),
(385, '2020-12-27 14:16:42', '2020-12-27 14:16:42', 57, 1, 380, '/images/10/df/10df53df009aed9d3dcc8d269d62b5fc_square.png', 'square', 'image/png', 320, 320),
(386, '2020-12-27 14:16:43', '2020-12-27 14:16:43', 57, 1, 380, '/images/10/df/10df53df009aed9d3dcc8d269d62b5fc_square_small.png', 'square_small', 'image/png', 75, 75),
(387, '2020-12-27 14:20:50', '2020-12-27 14:20:50', 58, 1, NULL, '/images/30/3d/303d9ee6579ce8e24f6c93fae0f7eb93.png', 'original', 'image/png', 2340, 1560),
(388, '2020-12-27 14:20:50', '2020-12-27 14:20:50', 58, 1, 387, '/images/30/3d/303d9ee6579ce8e24f6c93fae0f7eb93_default.png', 'default', 'image/png', 500, 315),
(389, '2020-12-27 14:20:51', '2020-12-27 14:20:51', 58, 1, 387, '/images/30/3d/303d9ee6579ce8e24f6c93fae0f7eb93_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(390, '2020-12-27 14:20:51', '2020-12-27 14:20:51', 58, 1, 387, '/images/30/3d/303d9ee6579ce8e24f6c93fae0f7eb93_wide.png', 'wide', 'image/png', 1920, 540),
(391, '2020-12-27 14:20:51', '2020-12-27 14:20:51', 58, 1, 387, '/images/30/3d/303d9ee6579ce8e24f6c93fae0f7eb93_mobile.png', 'mobile', 'image/png', 320, 213),
(392, '2020-12-27 14:20:51', '2020-12-27 14:20:51', 58, 1, 387, '/images/30/3d/303d9ee6579ce8e24f6c93fae0f7eb93_square.png', 'square', 'image/png', 320, 320),
(393, '2020-12-27 14:20:52', '2020-12-27 14:20:52', 58, 1, 387, '/images/30/3d/303d9ee6579ce8e24f6c93fae0f7eb93_square_small.png', 'square_small', 'image/png', 75, 75),
(394, '2020-12-27 14:22:47', '2020-12-27 14:22:47', 59, 1, NULL, '/images/f4/82/f482c29c3269416cc9acae4c1b6ec18a.png', 'original', 'image/png', 2340, 1560),
(395, '2020-12-27 14:22:47', '2020-12-27 14:22:47', 59, 1, 394, '/images/f4/82/f482c29c3269416cc9acae4c1b6ec18a_default.png', 'default', 'image/png', 500, 315),
(396, '2020-12-27 14:22:47', '2020-12-27 14:22:47', 59, 1, 394, '/images/f4/82/f482c29c3269416cc9acae4c1b6ec18a_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(397, '2020-12-27 14:22:47', '2020-12-27 14:22:47', 59, 1, 394, '/images/f4/82/f482c29c3269416cc9acae4c1b6ec18a_wide.png', 'wide', 'image/png', 1920, 540),
(398, '2020-12-27 14:22:48', '2020-12-27 14:22:48', 59, 1, 394, '/images/f4/82/f482c29c3269416cc9acae4c1b6ec18a_mobile.png', 'mobile', 'image/png', 320, 213),
(399, '2020-12-27 14:22:48', '2020-12-27 14:22:48', 59, 1, 394, '/images/f4/82/f482c29c3269416cc9acae4c1b6ec18a_square.png', 'square', 'image/png', 320, 320),
(400, '2020-12-27 14:22:48', '2020-12-27 14:22:48', 59, 1, 394, '/images/f4/82/f482c29c3269416cc9acae4c1b6ec18a_square_small.png', 'square_small', 'image/png', 75, 75),
(401, '2020-12-27 14:26:42', '2020-12-27 14:26:42', 60, 1, NULL, '/images/d0/34/d034d5b8ba4a9cf148f6895339804ef4.png', 'original', 'image/png', 2340, 1560),
(402, '2020-12-27 14:26:42', '2020-12-27 14:26:42', 60, 1, 401, '/images/d0/34/d034d5b8ba4a9cf148f6895339804ef4_default.png', 'default', 'image/png', 500, 315),
(403, '2020-12-27 14:26:42', '2020-12-27 14:26:42', 60, 1, 401, '/images/d0/34/d034d5b8ba4a9cf148f6895339804ef4_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(404, '2020-12-27 14:26:43', '2020-12-27 14:26:43', 60, 1, 401, '/images/d0/34/d034d5b8ba4a9cf148f6895339804ef4_wide.png', 'wide', 'image/png', 1920, 540),
(405, '2020-12-27 14:26:43', '2020-12-27 14:26:43', 60, 1, 401, '/images/d0/34/d034d5b8ba4a9cf148f6895339804ef4_mobile.png', 'mobile', 'image/png', 320, 213),
(406, '2020-12-27 14:26:43', '2020-12-27 14:26:43', 60, 1, 401, '/images/d0/34/d034d5b8ba4a9cf148f6895339804ef4_square.png', 'square', 'image/png', 320, 320),
(407, '2020-12-27 14:26:43', '2020-12-27 14:26:43', 60, 1, 401, '/images/d0/34/d034d5b8ba4a9cf148f6895339804ef4_square_small.png', 'square_small', 'image/png', 75, 75),
(408, '2020-12-27 14:29:43', '2020-12-27 14:29:43', 61, 1, NULL, '/images/7f/75/7f7593e45ea4c48c9ed5e42289746971.png', 'original', 'image/png', 2340, 1560),
(409, '2020-12-27 14:29:43', '2020-12-27 14:29:43', 61, 1, 408, '/images/7f/75/7f7593e45ea4c48c9ed5e42289746971_default.png', 'default', 'image/png', 500, 315),
(410, '2020-12-27 14:29:43', '2020-12-27 14:29:43', 61, 1, 408, '/images/7f/75/7f7593e45ea4c48c9ed5e42289746971_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(411, '2020-12-27 14:29:44', '2020-12-27 14:29:44', 61, 1, 408, '/images/7f/75/7f7593e45ea4c48c9ed5e42289746971_wide.png', 'wide', 'image/png', 1920, 540),
(412, '2020-12-27 14:29:44', '2020-12-27 14:29:44', 61, 1, 408, '/images/7f/75/7f7593e45ea4c48c9ed5e42289746971_mobile.png', 'mobile', 'image/png', 320, 213),
(413, '2020-12-27 14:29:44', '2020-12-27 14:29:44', 61, 1, 408, '/images/7f/75/7f7593e45ea4c48c9ed5e42289746971_square.png', 'square', 'image/png', 320, 320),
(414, '2020-12-27 14:29:44', '2020-12-27 14:29:44', 61, 1, 408, '/images/7f/75/7f7593e45ea4c48c9ed5e42289746971_square_small.png', 'square_small', 'image/png', 75, 75),
(415, '2020-12-27 14:30:43', '2020-12-27 14:30:43', 62, 1, NULL, '/images/c8/5d/c85d8610a758201aac5e6e49f0db40db.png', 'original', 'image/png', 2340, 1560),
(416, '2020-12-27 14:30:43', '2020-12-27 14:30:43', 62, 1, 415, '/images/c8/5d/c85d8610a758201aac5e6e49f0db40db_default.png', 'default', 'image/png', 500, 315),
(417, '2020-12-27 14:30:43', '2020-12-27 14:30:43', 62, 1, 415, '/images/c8/5d/c85d8610a758201aac5e6e49f0db40db_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(418, '2020-12-27 14:30:43', '2020-12-27 14:30:43', 62, 1, 415, '/images/c8/5d/c85d8610a758201aac5e6e49f0db40db_wide.png', 'wide', 'image/png', 1920, 540),
(419, '2020-12-27 14:30:44', '2020-12-27 14:30:44', 62, 1, 415, '/images/c8/5d/c85d8610a758201aac5e6e49f0db40db_mobile.png', 'mobile', 'image/png', 320, 213),
(420, '2020-12-27 14:30:44', '2020-12-27 14:30:44', 62, 1, 415, '/images/c8/5d/c85d8610a758201aac5e6e49f0db40db_square.png', 'square', 'image/png', 320, 320),
(421, '2020-12-27 14:30:44', '2020-12-27 14:30:44', 62, 1, 415, '/images/c8/5d/c85d8610a758201aac5e6e49f0db40db_square_small.png', 'square_small', 'image/png', 75, 75),
(422, '2020-12-27 14:32:51', '2020-12-27 14:32:51', 63, 1, NULL, '/images/1e/cf/1ecfe4ae4f481c57b8734405b2c33e33.png', 'original', 'image/png', 2340, 1560),
(423, '2020-12-27 14:32:51', '2020-12-27 14:32:51', 63, 1, 422, '/images/1e/cf/1ecfe4ae4f481c57b8734405b2c33e33_default.png', 'default', 'image/png', 500, 315),
(424, '2020-12-27 14:32:52', '2020-12-27 14:32:52', 63, 1, 422, '/images/1e/cf/1ecfe4ae4f481c57b8734405b2c33e33_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(425, '2020-12-27 14:32:52', '2020-12-27 14:32:52', 63, 1, 422, '/images/1e/cf/1ecfe4ae4f481c57b8734405b2c33e33_wide.png', 'wide', 'image/png', 1920, 540),
(426, '2020-12-27 14:32:52', '2020-12-27 14:32:52', 63, 1, 422, '/images/1e/cf/1ecfe4ae4f481c57b8734405b2c33e33_mobile.png', 'mobile', 'image/png', 320, 213),
(427, '2020-12-27 14:32:52', '2020-12-27 14:32:52', 63, 1, 422, '/images/1e/cf/1ecfe4ae4f481c57b8734405b2c33e33_square.png', 'square', 'image/png', 320, 320),
(428, '2020-12-27 14:32:52', '2020-12-27 14:32:52', 63, 1, 422, '/images/1e/cf/1ecfe4ae4f481c57b8734405b2c33e33_square_small.png', 'square_small', 'image/png', 75, 75),
(429, '2020-12-27 14:35:33', '2020-12-27 14:35:33', 64, 1, NULL, '/images/29/86/29860529b3b386ae33d877340a32930f.png', 'original', 'image/png', 2340, 1560),
(430, '2020-12-27 14:35:33', '2020-12-27 14:35:33', 64, 1, 429, '/images/29/86/29860529b3b386ae33d877340a32930f_default.png', 'default', 'image/png', 500, 315),
(431, '2020-12-27 14:35:33', '2020-12-27 14:35:33', 64, 1, 429, '/images/29/86/29860529b3b386ae33d877340a32930f_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(432, '2020-12-27 14:35:34', '2020-12-27 14:35:34', 64, 1, 429, '/images/29/86/29860529b3b386ae33d877340a32930f_wide.png', 'wide', 'image/png', 1920, 540),
(433, '2020-12-27 14:35:34', '2020-12-27 14:35:34', 64, 1, 429, '/images/29/86/29860529b3b386ae33d877340a32930f_mobile.png', 'mobile', 'image/png', 320, 213),
(434, '2020-12-27 14:35:34', '2020-12-27 14:35:34', 64, 1, 429, '/images/29/86/29860529b3b386ae33d877340a32930f_square.png', 'square', 'image/png', 320, 320),
(435, '2020-12-27 14:35:34', '2020-12-27 14:35:34', 64, 1, 429, '/images/29/86/29860529b3b386ae33d877340a32930f_square_small.png', 'square_small', 'image/png', 75, 75),
(436, '2020-12-27 14:39:34', '2020-12-27 14:39:34', 65, 1, NULL, '/images/2d/82/2d82e93f3642c036a4b609eccb515475.png', 'original', 'image/png', 2340, 1560),
(437, '2020-12-27 14:39:35', '2020-12-27 14:39:35', 65, 1, 436, '/images/2d/82/2d82e93f3642c036a4b609eccb515475_default.png', 'default', 'image/png', 500, 315),
(438, '2020-12-27 14:39:35', '2020-12-27 14:39:35', 65, 1, 436, '/images/2d/82/2d82e93f3642c036a4b609eccb515475_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(439, '2020-12-27 14:39:35', '2020-12-27 14:39:35', 65, 1, 436, '/images/2d/82/2d82e93f3642c036a4b609eccb515475_wide.png', 'wide', 'image/png', 1920, 540),
(440, '2020-12-27 14:39:35', '2020-12-27 14:39:35', 65, 1, 436, '/images/2d/82/2d82e93f3642c036a4b609eccb515475_mobile.png', 'mobile', 'image/png', 320, 213),
(441, '2020-12-27 14:39:36', '2020-12-27 14:39:36', 65, 1, 436, '/images/2d/82/2d82e93f3642c036a4b609eccb515475_square.png', 'square', 'image/png', 320, 320),
(442, '2020-12-27 14:39:36', '2020-12-27 14:39:36', 65, 1, 436, '/images/2d/82/2d82e93f3642c036a4b609eccb515475_square_small.png', 'square_small', 'image/png', 75, 75),
(443, '2020-12-27 14:42:12', '2020-12-27 14:42:12', 66, 1, NULL, '/images/d9/94/d994073eb7b8cd61641c8756c8c0b225.png', 'original', 'image/png', 2340, 1560),
(444, '2020-12-27 14:42:13', '2020-12-27 14:42:13', 66, 1, 443, '/images/d9/94/d994073eb7b8cd61641c8756c8c0b225_default.png', 'default', 'image/png', 500, 315),
(445, '2020-12-27 14:42:13', '2020-12-27 14:42:13', 66, 1, 443, '/images/d9/94/d994073eb7b8cd61641c8756c8c0b225_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(446, '2020-12-27 14:42:13', '2020-12-27 14:42:13', 66, 1, 443, '/images/d9/94/d994073eb7b8cd61641c8756c8c0b225_wide.png', 'wide', 'image/png', 1920, 540),
(447, '2020-12-27 14:42:13', '2020-12-27 14:42:13', 66, 1, 443, '/images/d9/94/d994073eb7b8cd61641c8756c8c0b225_mobile.png', 'mobile', 'image/png', 320, 213),
(448, '2020-12-27 14:42:13', '2020-12-27 14:42:13', 66, 1, 443, '/images/d9/94/d994073eb7b8cd61641c8756c8c0b225_square.png', 'square', 'image/png', 320, 320),
(449, '2020-12-27 14:42:14', '2020-12-27 14:42:14', 66, 1, 443, '/images/d9/94/d994073eb7b8cd61641c8756c8c0b225_square_small.png', 'square_small', 'image/png', 75, 75),
(450, '2020-12-27 14:44:58', '2020-12-27 14:44:58', 67, 1, NULL, '/images/e8/99/e899d9aa69ce00eac54184b7f50fef70.png', 'original', 'image/png', 2340, 1560),
(451, '2020-12-27 14:44:58', '2020-12-27 14:44:58', 67, 1, 450, '/images/e8/99/e899d9aa69ce00eac54184b7f50fef70_default.png', 'default', 'image/png', 500, 315),
(452, '2020-12-27 14:44:58', '2020-12-27 14:44:58', 67, 1, 450, '/images/e8/99/e899d9aa69ce00eac54184b7f50fef70_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(453, '2020-12-27 14:44:59', '2020-12-27 14:44:59', 67, 1, 450, '/images/e8/99/e899d9aa69ce00eac54184b7f50fef70_wide.png', 'wide', 'image/png', 1920, 540),
(454, '2020-12-27 14:44:59', '2020-12-27 14:44:59', 67, 1, 450, '/images/e8/99/e899d9aa69ce00eac54184b7f50fef70_mobile.png', 'mobile', 'image/png', 320, 213),
(455, '2020-12-27 14:44:59', '2020-12-27 14:44:59', 67, 1, 450, '/images/e8/99/e899d9aa69ce00eac54184b7f50fef70_square.png', 'square', 'image/png', 320, 320),
(456, '2020-12-27 14:44:59', '2020-12-27 14:44:59', 67, 1, 450, '/images/e8/99/e899d9aa69ce00eac54184b7f50fef70_square_small.png', 'square_small', 'image/png', 75, 75),
(457, '2020-12-27 14:47:40', '2020-12-27 14:47:40', 68, 1, NULL, '/images/17/da/17da374efc9506448369ae13aaade3b3.png', 'original', 'image/png', 2340, 1560),
(458, '2020-12-27 14:47:40', '2020-12-27 14:47:40', 68, 1, 457, '/images/17/da/17da374efc9506448369ae13aaade3b3_default.png', 'default', 'image/png', 500, 315),
(459, '2020-12-27 14:47:41', '2020-12-27 14:47:41', 68, 1, 457, '/images/17/da/17da374efc9506448369ae13aaade3b3_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(460, '2020-12-27 14:47:41', '2020-12-27 14:47:41', 68, 1, 457, '/images/17/da/17da374efc9506448369ae13aaade3b3_wide.png', 'wide', 'image/png', 1920, 540),
(461, '2020-12-27 14:47:41', '2020-12-27 14:47:41', 68, 1, 457, '/images/17/da/17da374efc9506448369ae13aaade3b3_mobile.png', 'mobile', 'image/png', 320, 213),
(462, '2020-12-27 14:47:41', '2020-12-27 14:47:41', 68, 1, 457, '/images/17/da/17da374efc9506448369ae13aaade3b3_square.png', 'square', 'image/png', 320, 320),
(463, '2020-12-27 14:47:41', '2020-12-27 14:47:41', 68, 1, 457, '/images/17/da/17da374efc9506448369ae13aaade3b3_square_small.png', 'square_small', 'image/png', 75, 75),
(464, '2020-12-27 14:50:31', '2020-12-27 14:50:31', 69, 1, NULL, '/images/ba/03/ba03eebf107ca7957f249238425eab19.png', 'original', 'image/png', 2340, 1560),
(465, '2020-12-27 14:50:31', '2020-12-27 14:50:31', 69, 1, 464, '/images/ba/03/ba03eebf107ca7957f249238425eab19_default.png', 'default', 'image/png', 500, 315),
(466, '2020-12-27 14:50:31', '2020-12-27 14:50:31', 69, 1, 464, '/images/ba/03/ba03eebf107ca7957f249238425eab19_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(467, '2020-12-27 14:50:32', '2020-12-27 14:50:32', 69, 1, 464, '/images/ba/03/ba03eebf107ca7957f249238425eab19_wide.png', 'wide', 'image/png', 1920, 540),
(468, '2020-12-27 14:50:32', '2020-12-27 14:50:32', 69, 1, 464, '/images/ba/03/ba03eebf107ca7957f249238425eab19_mobile.png', 'mobile', 'image/png', 320, 213),
(469, '2020-12-27 14:50:32', '2020-12-27 14:50:32', 69, 1, 464, '/images/ba/03/ba03eebf107ca7957f249238425eab19_square.png', 'square', 'image/png', 320, 320),
(470, '2020-12-27 14:50:32', '2020-12-27 14:50:32', 69, 1, 464, '/images/ba/03/ba03eebf107ca7957f249238425eab19_square_small.png', 'square_small', 'image/png', 75, 75),
(471, '2020-12-27 14:52:43', '2020-12-27 14:52:43', 70, 1, NULL, '/images/ef/98/ef9867d8c643bac281d3d9e5dc417c51.png', 'original', 'image/png', 2340, 1560),
(472, '2020-12-27 14:52:44', '2020-12-27 14:52:44', 70, 1, 471, '/images/ef/98/ef9867d8c643bac281d3d9e5dc417c51_default.png', 'default', 'image/png', 500, 315),
(473, '2020-12-27 14:52:44', '2020-12-27 14:52:44', 70, 1, 471, '/images/ef/98/ef9867d8c643bac281d3d9e5dc417c51_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(474, '2020-12-27 14:52:44', '2020-12-27 14:52:44', 70, 1, 471, '/images/ef/98/ef9867d8c643bac281d3d9e5dc417c51_wide.png', 'wide', 'image/png', 1920, 540),
(475, '2020-12-27 14:52:44', '2020-12-27 14:52:44', 70, 1, 471, '/images/ef/98/ef9867d8c643bac281d3d9e5dc417c51_mobile.png', 'mobile', 'image/png', 320, 213),
(476, '2020-12-27 14:52:44', '2020-12-27 14:52:44', 70, 1, 471, '/images/ef/98/ef9867d8c643bac281d3d9e5dc417c51_square.png', 'square', 'image/png', 320, 320),
(477, '2020-12-27 14:52:45', '2020-12-27 14:52:45', 70, 1, 471, '/images/ef/98/ef9867d8c643bac281d3d9e5dc417c51_square_small.png', 'square_small', 'image/png', 75, 75),
(478, '2020-12-27 14:54:47', '2020-12-27 14:54:47', 71, 1, NULL, '/images/29/50/2950da5d6ea9782620a935f16c3fcbb3.png', 'original', 'image/png', 2340, 1560),
(479, '2020-12-27 14:54:48', '2020-12-27 14:54:48', 71, 1, 478, '/images/29/50/2950da5d6ea9782620a935f16c3fcbb3_default.png', 'default', 'image/png', 500, 315),
(480, '2020-12-27 14:54:48', '2020-12-27 14:54:48', 71, 1, 478, '/images/29/50/2950da5d6ea9782620a935f16c3fcbb3_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(481, '2020-12-27 14:54:48', '2020-12-27 14:54:48', 71, 1, 478, '/images/29/50/2950da5d6ea9782620a935f16c3fcbb3_wide.png', 'wide', 'image/png', 1920, 540),
(482, '2020-12-27 14:54:48', '2020-12-27 14:54:48', 71, 1, 478, '/images/29/50/2950da5d6ea9782620a935f16c3fcbb3_mobile.png', 'mobile', 'image/png', 320, 213),
(483, '2020-12-27 14:54:48', '2020-12-27 14:54:48', 71, 1, 478, '/images/29/50/2950da5d6ea9782620a935f16c3fcbb3_square.png', 'square', 'image/png', 320, 320),
(484, '2020-12-27 14:54:49', '2020-12-27 14:54:49', 71, 1, 478, '/images/29/50/2950da5d6ea9782620a935f16c3fcbb3_square_small.png', 'square_small', 'image/png', 75, 75),
(485, '2020-12-27 16:04:18', '2020-12-27 16:04:18', 72, 1, NULL, '/images/45/7e/457e261d40f6d581df72dafa3f7bedca.png', 'original', 'image/png', 2340, 1560),
(486, '2020-12-27 16:04:18', '2020-12-27 16:04:18', 72, 1, 485, '/images/45/7e/457e261d40f6d581df72dafa3f7bedca_default.png', 'default', 'image/png', 500, 315),
(487, '2020-12-27 16:04:18', '2020-12-27 16:04:18', 72, 1, 485, '/images/45/7e/457e261d40f6d581df72dafa3f7bedca_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(488, '2020-12-27 16:04:19', '2020-12-27 16:04:19', 72, 1, 485, '/images/45/7e/457e261d40f6d581df72dafa3f7bedca_wide.png', 'wide', 'image/png', 1920, 540),
(489, '2020-12-27 16:04:19', '2020-12-27 16:04:19', 72, 1, 485, '/images/45/7e/457e261d40f6d581df72dafa3f7bedca_mobile.png', 'mobile', 'image/png', 320, 213),
(490, '2020-12-27 16:04:19', '2020-12-27 16:04:19', 72, 1, 485, '/images/45/7e/457e261d40f6d581df72dafa3f7bedca_square.png', 'square', 'image/png', 320, 320),
(491, '2020-12-27 16:04:19', '2020-12-27 16:04:19', 72, 1, 485, '/images/45/7e/457e261d40f6d581df72dafa3f7bedca_square_small.png', 'square_small', 'image/png', 75, 75),
(492, '2020-12-27 16:05:36', '2020-12-27 16:05:36', 73, 1, NULL, '/images/c5/94/c5940b5e9a4b712e8b9393cdf777d40e.png', 'original', 'image/png', 2340, 1560),
(493, '2020-12-27 16:05:36', '2020-12-27 16:05:36', 73, 1, 492, '/images/c5/94/c5940b5e9a4b712e8b9393cdf777d40e_default.png', 'default', 'image/png', 500, 315),
(494, '2020-12-27 16:05:36', '2020-12-27 16:05:36', 73, 1, 492, '/images/c5/94/c5940b5e9a4b712e8b9393cdf777d40e_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(495, '2020-12-27 16:05:37', '2020-12-27 16:05:37', 73, 1, 492, '/images/c5/94/c5940b5e9a4b712e8b9393cdf777d40e_wide.png', 'wide', 'image/png', 1920, 540),
(496, '2020-12-27 16:05:37', '2020-12-27 16:05:37', 73, 1, 492, '/images/c5/94/c5940b5e9a4b712e8b9393cdf777d40e_mobile.png', 'mobile', 'image/png', 320, 213),
(497, '2020-12-27 16:05:37', '2020-12-27 16:05:37', 73, 1, 492, '/images/c5/94/c5940b5e9a4b712e8b9393cdf777d40e_square.png', 'square', 'image/png', 320, 320),
(498, '2020-12-27 16:05:37', '2020-12-27 16:05:37', 73, 1, 492, '/images/c5/94/c5940b5e9a4b712e8b9393cdf777d40e_square_small.png', 'square_small', 'image/png', 75, 75),
(499, '2020-12-27 16:07:20', '2020-12-27 16:07:20', 74, 1, NULL, '/images/77/d0/77d058ac04a1a96f5fa3b445f3d2ff04.png', 'original', 'image/png', 2340, 1560),
(500, '2020-12-27 16:07:20', '2020-12-27 16:07:20', 74, 1, 499, '/images/77/d0/77d058ac04a1a96f5fa3b445f3d2ff04_default.png', 'default', 'image/png', 500, 315),
(501, '2020-12-27 16:07:20', '2020-12-27 16:07:20', 74, 1, 499, '/images/77/d0/77d058ac04a1a96f5fa3b445f3d2ff04_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(502, '2020-12-27 16:07:20', '2020-12-27 16:07:20', 74, 1, 499, '/images/77/d0/77d058ac04a1a96f5fa3b445f3d2ff04_wide.png', 'wide', 'image/png', 1920, 540),
(503, '2020-12-27 16:07:21', '2020-12-27 16:07:21', 74, 1, 499, '/images/77/d0/77d058ac04a1a96f5fa3b445f3d2ff04_mobile.png', 'mobile', 'image/png', 320, 213),
(504, '2020-12-27 16:07:21', '2020-12-27 16:07:21', 74, 1, 499, '/images/77/d0/77d058ac04a1a96f5fa3b445f3d2ff04_square.png', 'square', 'image/png', 320, 320),
(505, '2020-12-27 16:07:21', '2020-12-27 16:07:21', 74, 1, 499, '/images/77/d0/77d058ac04a1a96f5fa3b445f3d2ff04_square_small.png', 'square_small', 'image/png', 75, 75),
(506, '2020-12-27 16:08:45', '2020-12-27 16:08:45', 75, 1, NULL, '/images/10/bc/10bc8c8d370a19e60af7297ee30c6c25.png', 'original', 'image/png', 2340, 1560),
(507, '2020-12-27 16:08:45', '2020-12-27 16:08:45', 75, 1, 506, '/images/10/bc/10bc8c8d370a19e60af7297ee30c6c25_default.png', 'default', 'image/png', 500, 315),
(508, '2020-12-27 16:08:45', '2020-12-27 16:08:45', 75, 1, 506, '/images/10/bc/10bc8c8d370a19e60af7297ee30c6c25_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(509, '2020-12-27 16:08:46', '2020-12-27 16:08:46', 75, 1, 506, '/images/10/bc/10bc8c8d370a19e60af7297ee30c6c25_wide.png', 'wide', 'image/png', 1920, 540),
(510, '2020-12-27 16:08:46', '2020-12-27 16:08:46', 75, 1, 506, '/images/10/bc/10bc8c8d370a19e60af7297ee30c6c25_mobile.png', 'mobile', 'image/png', 320, 213),
(511, '2020-12-27 16:08:46', '2020-12-27 16:08:46', 75, 1, 506, '/images/10/bc/10bc8c8d370a19e60af7297ee30c6c25_square.png', 'square', 'image/png', 320, 320),
(512, '2020-12-27 16:08:46', '2020-12-27 16:08:46', 75, 1, 506, '/images/10/bc/10bc8c8d370a19e60af7297ee30c6c25_square_small.png', 'square_small', 'image/png', 75, 75),
(513, '2020-12-27 16:11:30', '2020-12-27 16:11:30', 76, 1, NULL, '/images/4a/4f/4a4f9b9e6a699ccd509a3456b6fb276a.png', 'original', 'image/png', 2340, 1560),
(514, '2020-12-27 16:11:30', '2020-12-27 16:11:30', 76, 1, 513, '/images/4a/4f/4a4f9b9e6a699ccd509a3456b6fb276a_default.png', 'default', 'image/png', 500, 315),
(515, '2020-12-27 16:11:30', '2020-12-27 16:11:30', 76, 1, 513, '/images/4a/4f/4a4f9b9e6a699ccd509a3456b6fb276a_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(516, '2020-12-27 16:11:31', '2020-12-27 16:11:31', 76, 1, 513, '/images/4a/4f/4a4f9b9e6a699ccd509a3456b6fb276a_wide.png', 'wide', 'image/png', 1920, 540),
(517, '2020-12-27 16:11:31', '2020-12-27 16:11:31', 76, 1, 513, '/images/4a/4f/4a4f9b9e6a699ccd509a3456b6fb276a_mobile.png', 'mobile', 'image/png', 320, 213),
(518, '2020-12-27 16:11:31', '2020-12-27 16:11:31', 76, 1, 513, '/images/4a/4f/4a4f9b9e6a699ccd509a3456b6fb276a_square.png', 'square', 'image/png', 320, 320),
(519, '2020-12-27 16:11:31', '2020-12-27 16:11:31', 76, 1, 513, '/images/4a/4f/4a4f9b9e6a699ccd509a3456b6fb276a_square_small.png', 'square_small', 'image/png', 75, 75),
(520, '2020-12-27 16:14:10', '2020-12-27 16:14:10', 77, 1, NULL, '/images/86/82/86823478c70b891dc098dec5562e5cd2.png', 'original', 'image/png', 2340, 1560),
(521, '2020-12-27 16:14:10', '2020-12-27 16:14:10', 77, 1, 520, '/images/86/82/86823478c70b891dc098dec5562e5cd2_default.png', 'default', 'image/png', 500, 315),
(522, '2020-12-27 16:14:10', '2020-12-27 16:14:10', 77, 1, 520, '/images/86/82/86823478c70b891dc098dec5562e5cd2_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(523, '2020-12-27 16:14:11', '2020-12-27 16:14:11', 77, 1, 520, '/images/86/82/86823478c70b891dc098dec5562e5cd2_wide.png', 'wide', 'image/png', 1920, 540),
(524, '2020-12-27 16:14:11', '2020-12-27 16:14:11', 77, 1, 520, '/images/86/82/86823478c70b891dc098dec5562e5cd2_mobile.png', 'mobile', 'image/png', 320, 213),
(525, '2020-12-27 16:14:11', '2020-12-27 16:14:11', 77, 1, 520, '/images/86/82/86823478c70b891dc098dec5562e5cd2_square.png', 'square', 'image/png', 320, 320),
(526, '2020-12-27 16:14:11', '2020-12-27 16:14:11', 77, 1, 520, '/images/86/82/86823478c70b891dc098dec5562e5cd2_square_small.png', 'square_small', 'image/png', 75, 75),
(527, '2020-12-27 16:16:08', '2020-12-27 16:16:08', 78, 1, NULL, '/images/50/b7/50b7f22da6ad1d1169a573d18c6e621a.png', 'original', 'image/png', 2340, 1560),
(528, '2020-12-27 16:16:09', '2020-12-27 16:16:09', 78, 1, 527, '/images/50/b7/50b7f22da6ad1d1169a573d18c6e621a_default.png', 'default', 'image/png', 500, 315),
(529, '2020-12-27 16:16:09', '2020-12-27 16:16:09', 78, 1, 527, '/images/50/b7/50b7f22da6ad1d1169a573d18c6e621a_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(530, '2020-12-27 16:16:09', '2020-12-27 16:16:09', 78, 1, 527, '/images/50/b7/50b7f22da6ad1d1169a573d18c6e621a_wide.png', 'wide', 'image/png', 1920, 540),
(531, '2020-12-27 16:16:10', '2020-12-27 16:16:10', 78, 1, 527, '/images/50/b7/50b7f22da6ad1d1169a573d18c6e621a_mobile.png', 'mobile', 'image/png', 320, 213),
(532, '2020-12-27 16:16:10', '2020-12-27 16:16:10', 78, 1, 527, '/images/50/b7/50b7f22da6ad1d1169a573d18c6e621a_square.png', 'square', 'image/png', 320, 320),
(533, '2020-12-27 16:16:10', '2020-12-27 16:16:10', 78, 1, 527, '/images/50/b7/50b7f22da6ad1d1169a573d18c6e621a_square_small.png', 'square_small', 'image/png', 75, 75),
(534, '2020-12-27 16:19:30', '2020-12-27 16:19:30', 79, 1, NULL, '/images/de/59/de59e534f94d0d20f5a7104c8d67f0a9.png', 'original', 'image/png', 2340, 1560),
(535, '2020-12-27 16:19:30', '2020-12-27 16:19:30', 79, 1, 534, '/images/de/59/de59e534f94d0d20f5a7104c8d67f0a9_default.png', 'default', 'image/png', 500, 315),
(536, '2020-12-27 16:19:30', '2020-12-27 16:19:30', 79, 1, 534, '/images/de/59/de59e534f94d0d20f5a7104c8d67f0a9_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(537, '2020-12-27 16:19:31', '2020-12-27 16:19:31', 79, 1, 534, '/images/de/59/de59e534f94d0d20f5a7104c8d67f0a9_wide.png', 'wide', 'image/png', 1920, 540),
(538, '2020-12-27 16:19:31', '2020-12-27 16:19:31', 79, 1, 534, '/images/de/59/de59e534f94d0d20f5a7104c8d67f0a9_mobile.png', 'mobile', 'image/png', 320, 213),
(539, '2020-12-27 16:19:31', '2020-12-27 16:19:31', 79, 1, 534, '/images/de/59/de59e534f94d0d20f5a7104c8d67f0a9_square.png', 'square', 'image/png', 320, 320),
(540, '2020-12-27 16:19:31', '2020-12-27 16:19:31', 79, 1, 534, '/images/de/59/de59e534f94d0d20f5a7104c8d67f0a9_square_small.png', 'square_small', 'image/png', 75, 75),
(541, '2020-12-27 16:21:08', '2020-12-27 16:21:08', 80, 1, NULL, '/images/0f/93/0f9391e761dae8a8de0b4697e167e33e.png', 'original', 'image/png', 2340, 1560),
(542, '2020-12-27 16:21:08', '2020-12-27 16:21:08', 80, 1, 541, '/images/0f/93/0f9391e761dae8a8de0b4697e167e33e_default.png', 'default', 'image/png', 500, 315),
(543, '2020-12-27 16:21:08', '2020-12-27 16:21:08', 80, 1, 541, '/images/0f/93/0f9391e761dae8a8de0b4697e167e33e_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(544, '2020-12-27 16:21:09', '2020-12-27 16:21:09', 80, 1, 541, '/images/0f/93/0f9391e761dae8a8de0b4697e167e33e_wide.png', 'wide', 'image/png', 1920, 540),
(545, '2020-12-27 16:21:09', '2020-12-27 16:21:09', 80, 1, 541, '/images/0f/93/0f9391e761dae8a8de0b4697e167e33e_mobile.png', 'mobile', 'image/png', 320, 213),
(546, '2020-12-27 16:21:09', '2020-12-27 16:21:09', 80, 1, 541, '/images/0f/93/0f9391e761dae8a8de0b4697e167e33e_square.png', 'square', 'image/png', 320, 320),
(547, '2020-12-27 16:21:09', '2020-12-27 16:21:09', 80, 1, 541, '/images/0f/93/0f9391e761dae8a8de0b4697e167e33e_square_small.png', 'square_small', 'image/png', 75, 75),
(548, '2020-12-27 16:23:17', '2020-12-27 16:23:17', 81, 1, NULL, '/images/d8/f9/d8f9ee915437cf1a22af2d4cd46e8898.png', 'original', 'image/png', 2340, 1560),
(549, '2020-12-27 16:23:18', '2020-12-27 16:23:18', 81, 1, 548, '/images/d8/f9/d8f9ee915437cf1a22af2d4cd46e8898_default.png', 'default', 'image/png', 500, 315),
(550, '2020-12-27 16:23:18', '2020-12-27 16:23:18', 81, 1, 548, '/images/d8/f9/d8f9ee915437cf1a22af2d4cd46e8898_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(551, '2020-12-27 16:23:18', '2020-12-27 16:23:18', 81, 1, 548, '/images/d8/f9/d8f9ee915437cf1a22af2d4cd46e8898_wide.png', 'wide', 'image/png', 1920, 540),
(552, '2020-12-27 16:23:18', '2020-12-27 16:23:18', 81, 1, 548, '/images/d8/f9/d8f9ee915437cf1a22af2d4cd46e8898_mobile.png', 'mobile', 'image/png', 320, 213),
(553, '2020-12-27 16:23:18', '2020-12-27 16:23:18', 81, 1, 548, '/images/d8/f9/d8f9ee915437cf1a22af2d4cd46e8898_square.png', 'square', 'image/png', 320, 320),
(554, '2020-12-27 16:23:19', '2020-12-27 16:23:19', 81, 1, 548, '/images/d8/f9/d8f9ee915437cf1a22af2d4cd46e8898_square_small.png', 'square_small', 'image/png', 75, 75),
(555, '2020-12-27 16:25:18', '2020-12-27 16:25:18', 82, 1, NULL, '/images/51/9a/519aaf1ef2ddca04455e2b22349480e1.png', 'original', 'image/png', 2340, 1560),
(556, '2020-12-27 16:25:18', '2020-12-27 16:25:18', 82, 1, 555, '/images/51/9a/519aaf1ef2ddca04455e2b22349480e1_default.png', 'default', 'image/png', 500, 315),
(557, '2020-12-27 16:25:19', '2020-12-27 16:25:19', 82, 1, 555, '/images/51/9a/519aaf1ef2ddca04455e2b22349480e1_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(558, '2020-12-27 16:25:19', '2020-12-27 16:25:19', 82, 1, 555, '/images/51/9a/519aaf1ef2ddca04455e2b22349480e1_wide.png', 'wide', 'image/png', 1920, 540),
(559, '2020-12-27 16:25:19', '2020-12-27 16:25:19', 82, 1, 555, '/images/51/9a/519aaf1ef2ddca04455e2b22349480e1_mobile.png', 'mobile', 'image/png', 320, 213),
(560, '2020-12-27 16:25:19', '2020-12-27 16:25:19', 82, 1, 555, '/images/51/9a/519aaf1ef2ddca04455e2b22349480e1_square.png', 'square', 'image/png', 320, 320),
(561, '2020-12-27 16:25:20', '2020-12-27 16:25:20', 82, 1, 555, '/images/51/9a/519aaf1ef2ddca04455e2b22349480e1_square_small.png', 'square_small', 'image/png', 75, 75),
(562, '2020-12-27 16:27:32', '2020-12-27 16:27:32', 83, 1, NULL, '/images/73/92/739250e6233c5b5999731f7a20bf96f2.png', 'original', 'image/png', 2340, 1560),
(563, '2020-12-27 16:27:32', '2020-12-27 16:27:32', 83, 1, 562, '/images/73/92/739250e6233c5b5999731f7a20bf96f2_default.png', 'default', 'image/png', 500, 315),
(564, '2020-12-27 16:27:32', '2020-12-27 16:27:32', 83, 1, 562, '/images/73/92/739250e6233c5b5999731f7a20bf96f2_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(565, '2020-12-27 16:27:33', '2020-12-27 16:27:33', 83, 1, 562, '/images/73/92/739250e6233c5b5999731f7a20bf96f2_wide.png', 'wide', 'image/png', 1920, 540),
(566, '2020-12-27 16:27:33', '2020-12-27 16:27:33', 83, 1, 562, '/images/73/92/739250e6233c5b5999731f7a20bf96f2_mobile.png', 'mobile', 'image/png', 320, 213),
(567, '2020-12-27 16:27:33', '2020-12-27 16:27:33', 83, 1, 562, '/images/73/92/739250e6233c5b5999731f7a20bf96f2_square.png', 'square', 'image/png', 320, 320),
(568, '2020-12-27 16:27:33', '2020-12-27 16:27:33', 83, 1, 562, '/images/73/92/739250e6233c5b5999731f7a20bf96f2_square_small.png', 'square_small', 'image/png', 75, 75),
(569, '2020-12-27 16:30:16', '2020-12-27 16:30:16', 84, 1, NULL, '/images/58/f2/58f2424201fef0e201e1a7ed5e1e08b7.png', 'original', 'image/png', 2340, 1560),
(570, '2020-12-27 16:30:16', '2020-12-27 16:30:16', 84, 1, 569, '/images/58/f2/58f2424201fef0e201e1a7ed5e1e08b7_default.png', 'default', 'image/png', 500, 315),
(571, '2020-12-27 16:30:17', '2020-12-27 16:30:17', 84, 1, 569, '/images/58/f2/58f2424201fef0e201e1a7ed5e1e08b7_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(572, '2020-12-27 16:30:17', '2020-12-27 16:30:17', 84, 1, 569, '/images/58/f2/58f2424201fef0e201e1a7ed5e1e08b7_wide.png', 'wide', 'image/png', 1920, 540),
(573, '2020-12-27 16:30:17', '2020-12-27 16:30:17', 84, 1, 569, '/images/58/f2/58f2424201fef0e201e1a7ed5e1e08b7_mobile.png', 'mobile', 'image/png', 320, 213),
(574, '2020-12-27 16:30:17', '2020-12-27 16:30:17', 84, 1, 569, '/images/58/f2/58f2424201fef0e201e1a7ed5e1e08b7_square.png', 'square', 'image/png', 320, 320),
(575, '2020-12-27 16:30:17', '2020-12-27 16:30:17', 84, 1, 569, '/images/58/f2/58f2424201fef0e201e1a7ed5e1e08b7_square_small.png', 'square_small', 'image/png', 75, 75),
(576, '2020-12-27 16:32:33', '2020-12-27 16:32:33', 85, 1, NULL, '/images/7e/8b/7e8bac3342635ed2450eaa04957fa22e.png', 'original', 'image/png', 2340, 1560),
(577, '2020-12-27 16:32:33', '2020-12-27 16:32:33', 85, 1, 576, '/images/7e/8b/7e8bac3342635ed2450eaa04957fa22e_default.png', 'default', 'image/png', 500, 315),
(578, '2020-12-27 16:32:33', '2020-12-27 16:32:33', 85, 1, 576, '/images/7e/8b/7e8bac3342635ed2450eaa04957fa22e_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(579, '2020-12-27 16:32:33', '2020-12-27 16:32:33', 85, 1, 576, '/images/7e/8b/7e8bac3342635ed2450eaa04957fa22e_wide.png', 'wide', 'image/png', 1920, 540),
(580, '2020-12-27 16:32:34', '2020-12-27 16:32:34', 85, 1, 576, '/images/7e/8b/7e8bac3342635ed2450eaa04957fa22e_mobile.png', 'mobile', 'image/png', 320, 213),
(581, '2020-12-27 16:32:34', '2020-12-27 16:32:34', 85, 1, 576, '/images/7e/8b/7e8bac3342635ed2450eaa04957fa22e_square.png', 'square', 'image/png', 320, 320),
(582, '2020-12-27 16:32:34', '2020-12-27 16:32:34', 85, 1, 576, '/images/7e/8b/7e8bac3342635ed2450eaa04957fa22e_square_small.png', 'square_small', 'image/png', 75, 75),
(583, '2020-12-27 16:34:34', '2020-12-27 16:34:34', 86, 1, NULL, '/images/1a/fb/1afb471cfd789bbbdbcdfb9d0fb991a9.png', 'original', 'image/png', 2340, 1560),
(584, '2020-12-27 16:34:35', '2020-12-27 16:34:35', 86, 1, 583, '/images/1a/fb/1afb471cfd789bbbdbcdfb9d0fb991a9_default.png', 'default', 'image/png', 500, 315),
(585, '2020-12-27 16:34:35', '2020-12-27 16:34:35', 86, 1, 583, '/images/1a/fb/1afb471cfd789bbbdbcdfb9d0fb991a9_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(586, '2020-12-27 16:34:35', '2020-12-27 16:34:35', 86, 1, 583, '/images/1a/fb/1afb471cfd789bbbdbcdfb9d0fb991a9_wide.png', 'wide', 'image/png', 1920, 540),
(587, '2020-12-27 16:34:35', '2020-12-27 16:34:35', 86, 1, 583, '/images/1a/fb/1afb471cfd789bbbdbcdfb9d0fb991a9_mobile.png', 'mobile', 'image/png', 320, 213),
(588, '2020-12-27 16:34:35', '2020-12-27 16:34:35', 86, 1, 583, '/images/1a/fb/1afb471cfd789bbbdbcdfb9d0fb991a9_square.png', 'square', 'image/png', 320, 320),
(589, '2020-12-27 16:34:35', '2020-12-27 16:34:35', 86, 1, 583, '/images/1a/fb/1afb471cfd789bbbdbcdfb9d0fb991a9_square_small.png', 'square_small', 'image/png', 75, 75),
(590, '2020-12-27 16:41:36', '2020-12-27 16:41:36', 87, 1, NULL, '/images/1e/67/1e67add1f2bacee6866bc95f25aceb2d.png', 'original', 'image/png', 2340, 1560),
(591, '2020-12-27 16:41:37', '2020-12-27 16:41:37', 87, 1, 590, '/images/1e/67/1e67add1f2bacee6866bc95f25aceb2d_default.png', 'default', 'image/png', 500, 315),
(592, '2020-12-27 16:41:37', '2020-12-27 16:41:37', 87, 1, 590, '/images/1e/67/1e67add1f2bacee6866bc95f25aceb2d_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(593, '2020-12-27 16:41:37', '2020-12-27 16:41:37', 87, 1, 590, '/images/1e/67/1e67add1f2bacee6866bc95f25aceb2d_wide.png', 'wide', 'image/png', 1920, 540),
(594, '2020-12-27 16:41:37', '2020-12-27 16:41:37', 87, 1, 590, '/images/1e/67/1e67add1f2bacee6866bc95f25aceb2d_mobile.png', 'mobile', 'image/png', 320, 213),
(595, '2020-12-27 16:41:38', '2020-12-27 16:41:38', 87, 1, 590, '/images/1e/67/1e67add1f2bacee6866bc95f25aceb2d_square.png', 'square', 'image/png', 320, 320),
(596, '2020-12-27 16:41:38', '2020-12-27 16:41:38', 87, 1, 590, '/images/1e/67/1e67add1f2bacee6866bc95f25aceb2d_square_small.png', 'square_small', 'image/png', 75, 75),
(597, '2020-12-27 16:43:40', '2020-12-27 16:43:40', 88, 1, NULL, '/images/82/36/8236b4d895ff196e4a0f3a67c290c7d6.png', 'original', 'image/png', 2340, 1560),
(598, '2020-12-27 16:43:40', '2020-12-27 16:43:40', 88, 1, 597, '/images/82/36/8236b4d895ff196e4a0f3a67c290c7d6_default.png', 'default', 'image/png', 500, 315),
(599, '2020-12-27 16:43:40', '2020-12-27 16:43:40', 88, 1, 597, '/images/82/36/8236b4d895ff196e4a0f3a67c290c7d6_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(600, '2020-12-27 16:43:40', '2020-12-27 16:43:40', 88, 1, 597, '/images/82/36/8236b4d895ff196e4a0f3a67c290c7d6_wide.png', 'wide', 'image/png', 1920, 540),
(601, '2020-12-27 16:43:41', '2020-12-27 16:43:41', 88, 1, 597, '/images/82/36/8236b4d895ff196e4a0f3a67c290c7d6_mobile.png', 'mobile', 'image/png', 320, 213),
(602, '2020-12-27 16:43:41', '2020-12-27 16:43:41', 88, 1, 597, '/images/82/36/8236b4d895ff196e4a0f3a67c290c7d6_square.png', 'square', 'image/png', 320, 320),
(603, '2020-12-27 16:43:41', '2020-12-27 16:43:41', 88, 1, 597, '/images/82/36/8236b4d895ff196e4a0f3a67c290c7d6_square_small.png', 'square_small', 'image/png', 75, 75),
(604, '2020-12-27 16:45:34', '2020-12-27 16:45:34', 89, 1, NULL, '/images/f6/17/f617725480ec8f5d3ec941e6f58b89fb.png', 'original', 'image/png', 2340, 1560),
(605, '2020-12-27 16:45:34', '2020-12-27 16:45:34', 89, 1, 604, '/images/f6/17/f617725480ec8f5d3ec941e6f58b89fb_default.png', 'default', 'image/png', 500, 315),
(606, '2020-12-27 16:45:35', '2020-12-27 16:45:35', 89, 1, 604, '/images/f6/17/f617725480ec8f5d3ec941e6f58b89fb_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(607, '2020-12-27 16:45:35', '2020-12-27 16:45:35', 89, 1, 604, '/images/f6/17/f617725480ec8f5d3ec941e6f58b89fb_wide.png', 'wide', 'image/png', 1920, 540),
(608, '2020-12-27 16:45:35', '2020-12-27 16:45:35', 89, 1, 604, '/images/f6/17/f617725480ec8f5d3ec941e6f58b89fb_mobile.png', 'mobile', 'image/png', 320, 213),
(609, '2020-12-27 16:45:35', '2020-12-27 16:45:35', 89, 1, 604, '/images/f6/17/f617725480ec8f5d3ec941e6f58b89fb_square.png', 'square', 'image/png', 320, 320),
(610, '2020-12-27 16:45:35', '2020-12-27 16:45:35', 89, 1, 604, '/images/f6/17/f617725480ec8f5d3ec941e6f58b89fb_square_small.png', 'square_small', 'image/png', 75, 75),
(611, '2020-12-27 16:47:20', '2020-12-27 16:47:20', 90, 1, NULL, '/images/f2/fa/f2fae2e8430aca80a94f02b25b8e7364.png', 'original', 'image/png', 2340, 1560),
(612, '2020-12-27 16:47:21', '2020-12-27 16:47:21', 90, 1, 611, '/images/f2/fa/f2fae2e8430aca80a94f02b25b8e7364_default.png', 'default', 'image/png', 500, 315),
(613, '2020-12-27 16:47:21', '2020-12-27 16:47:21', 90, 1, 611, '/images/f2/fa/f2fae2e8430aca80a94f02b25b8e7364_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(614, '2020-12-27 16:47:21', '2020-12-27 16:47:21', 90, 1, 611, '/images/f2/fa/f2fae2e8430aca80a94f02b25b8e7364_wide.png', 'wide', 'image/png', 1920, 540),
(615, '2020-12-27 16:47:21', '2020-12-27 16:47:21', 90, 1, 611, '/images/f2/fa/f2fae2e8430aca80a94f02b25b8e7364_mobile.png', 'mobile', 'image/png', 320, 213),
(616, '2020-12-27 16:47:22', '2020-12-27 16:47:22', 90, 1, 611, '/images/f2/fa/f2fae2e8430aca80a94f02b25b8e7364_square.png', 'square', 'image/png', 320, 320),
(617, '2020-12-27 16:47:22', '2020-12-27 16:47:22', 90, 1, 611, '/images/f2/fa/f2fae2e8430aca80a94f02b25b8e7364_square_small.png', 'square_small', 'image/png', 75, 75),
(618, '2020-12-27 16:49:22', '2020-12-27 16:49:22', 91, 1, NULL, '/images/d1/19/d1195eb65e77fa80d52c330a969626a9.png', 'original', 'image/png', 2340, 1560),
(619, '2020-12-27 16:49:23', '2020-12-27 16:49:23', 91, 1, 618, '/images/d1/19/d1195eb65e77fa80d52c330a969626a9_default.png', 'default', 'image/png', 500, 315),
(620, '2020-12-27 16:49:23', '2020-12-27 16:49:23', 91, 1, 618, '/images/d1/19/d1195eb65e77fa80d52c330a969626a9_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(621, '2020-12-27 16:49:23', '2020-12-27 16:49:23', 91, 1, 618, '/images/d1/19/d1195eb65e77fa80d52c330a969626a9_wide.png', 'wide', 'image/png', 1920, 540),
(622, '2020-12-27 16:49:23', '2020-12-27 16:49:23', 91, 1, 618, '/images/d1/19/d1195eb65e77fa80d52c330a969626a9_mobile.png', 'mobile', 'image/png', 320, 213),
(623, '2020-12-27 16:49:23', '2020-12-27 16:49:23', 91, 1, 618, '/images/d1/19/d1195eb65e77fa80d52c330a969626a9_square.png', 'square', 'image/png', 320, 320),
(624, '2020-12-27 16:49:23', '2020-12-27 16:49:23', 91, 1, 618, '/images/d1/19/d1195eb65e77fa80d52c330a969626a9_square_small.png', 'square_small', 'image/png', 75, 75),
(625, '2020-12-27 16:51:25', '2020-12-27 16:51:25', 92, 1, NULL, '/images/92/18/9218f32409ffad1f4d239313567a8195.png', 'original', 'image/png', 2340, 1560),
(626, '2020-12-27 16:51:25', '2020-12-27 16:51:25', 92, 1, 625, '/images/92/18/9218f32409ffad1f4d239313567a8195_default.png', 'default', 'image/png', 500, 315),
(627, '2020-12-27 16:51:26', '2020-12-27 16:51:26', 92, 1, 625, '/images/92/18/9218f32409ffad1f4d239313567a8195_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(628, '2020-12-27 16:51:26', '2020-12-27 16:51:26', 92, 1, 625, '/images/92/18/9218f32409ffad1f4d239313567a8195_wide.png', 'wide', 'image/png', 1920, 540),
(629, '2020-12-27 16:51:26', '2020-12-27 16:51:26', 92, 1, 625, '/images/92/18/9218f32409ffad1f4d239313567a8195_mobile.png', 'mobile', 'image/png', 320, 213),
(630, '2020-12-27 16:51:26', '2020-12-27 16:51:26', 92, 1, 625, '/images/92/18/9218f32409ffad1f4d239313567a8195_square.png', 'square', 'image/png', 320, 320),
(631, '2020-12-27 16:51:26', '2020-12-27 16:51:26', 92, 1, 625, '/images/92/18/9218f32409ffad1f4d239313567a8195_square_small.png', 'square_small', 'image/png', 75, 75);
INSERT INTO `images` (`id`, `created_at`, `updated_at`, `object_id`, `object_type`, `parent_id`, `src`, `type`, `mime`, `width`, `height`) VALUES
(632, '2020-12-27 16:53:49', '2020-12-27 16:53:49', 93, 1, NULL, '/images/04/d7/04d78438ea623662f53a4e776e74e8d2.png', 'original', 'image/png', 2340, 1560),
(633, '2020-12-27 16:53:49', '2020-12-27 16:53:49', 93, 1, 632, '/images/04/d7/04d78438ea623662f53a4e776e74e8d2_default.png', 'default', 'image/png', 500, 315),
(634, '2020-12-27 16:53:49', '2020-12-27 16:53:49', 93, 1, 632, '/images/04/d7/04d78438ea623662f53a4e776e74e8d2_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(635, '2020-12-27 16:53:49', '2020-12-27 16:53:49', 93, 1, 632, '/images/04/d7/04d78438ea623662f53a4e776e74e8d2_wide.png', 'wide', 'image/png', 1920, 540),
(636, '2020-12-27 16:53:50', '2020-12-27 16:53:50', 93, 1, 632, '/images/04/d7/04d78438ea623662f53a4e776e74e8d2_mobile.png', 'mobile', 'image/png', 320, 213),
(637, '2020-12-27 16:53:50', '2020-12-27 16:53:50', 93, 1, 632, '/images/04/d7/04d78438ea623662f53a4e776e74e8d2_square.png', 'square', 'image/png', 320, 320),
(638, '2020-12-27 16:53:50', '2020-12-27 16:53:50', 93, 1, 632, '/images/04/d7/04d78438ea623662f53a4e776e74e8d2_square_small.png', 'square_small', 'image/png', 75, 75),
(639, '2020-12-27 16:55:32', '2020-12-27 16:55:32', 94, 1, NULL, '/images/a0/83/a083a776d8ce4563edcb0b5e40491976.png', 'original', 'image/png', 2340, 1560),
(640, '2020-12-27 16:55:32', '2020-12-27 16:55:32', 94, 1, 639, '/images/a0/83/a083a776d8ce4563edcb0b5e40491976_default.png', 'default', 'image/png', 500, 315),
(641, '2020-12-27 16:55:32', '2020-12-27 16:55:32', 94, 1, 639, '/images/a0/83/a083a776d8ce4563edcb0b5e40491976_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(642, '2020-12-27 16:55:33', '2020-12-27 16:55:33', 94, 1, 639, '/images/a0/83/a083a776d8ce4563edcb0b5e40491976_wide.png', 'wide', 'image/png', 1920, 540),
(643, '2020-12-27 16:55:33', '2020-12-27 16:55:33', 94, 1, 639, '/images/a0/83/a083a776d8ce4563edcb0b5e40491976_mobile.png', 'mobile', 'image/png', 320, 213),
(644, '2020-12-27 16:55:33', '2020-12-27 16:55:33', 94, 1, 639, '/images/a0/83/a083a776d8ce4563edcb0b5e40491976_square.png', 'square', 'image/png', 320, 320),
(645, '2020-12-27 16:55:33', '2020-12-27 16:55:33', 94, 1, 639, '/images/a0/83/a083a776d8ce4563edcb0b5e40491976_square_small.png', 'square_small', 'image/png', 75, 75),
(646, '2020-12-27 16:58:02', '2020-12-27 16:58:02', 95, 1, NULL, '/images/22/2f/222faedf4f380d8636c24b90b092b5cf.png', 'original', 'image/png', 2340, 1560),
(647, '2020-12-27 16:58:02', '2020-12-27 16:58:02', 95, 1, 646, '/images/22/2f/222faedf4f380d8636c24b90b092b5cf_default.png', 'default', 'image/png', 500, 315),
(648, '2020-12-27 16:58:02', '2020-12-27 16:58:02', 95, 1, 646, '/images/22/2f/222faedf4f380d8636c24b90b092b5cf_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(649, '2020-12-27 16:58:02', '2020-12-27 16:58:02', 95, 1, 646, '/images/22/2f/222faedf4f380d8636c24b90b092b5cf_wide.png', 'wide', 'image/png', 1920, 540),
(650, '2020-12-27 16:58:03', '2020-12-27 16:58:03', 95, 1, 646, '/images/22/2f/222faedf4f380d8636c24b90b092b5cf_mobile.png', 'mobile', 'image/png', 320, 213),
(651, '2020-12-27 16:58:03', '2020-12-27 16:58:03', 95, 1, 646, '/images/22/2f/222faedf4f380d8636c24b90b092b5cf_square.png', 'square', 'image/png', 320, 320),
(652, '2020-12-27 16:58:03', '2020-12-27 16:58:03', 95, 1, 646, '/images/22/2f/222faedf4f380d8636c24b90b092b5cf_square_small.png', 'square_small', 'image/png', 75, 75),
(653, '2020-12-27 17:00:00', '2020-12-27 17:00:00', 96, 1, NULL, '/images/58/79/58796c97e3e6ece8fa83af23a43d45df.png', 'original', 'image/png', 2340, 1560),
(654, '2020-12-27 17:00:00', '2020-12-27 17:00:00', 96, 1, 653, '/images/58/79/58796c97e3e6ece8fa83af23a43d45df_default.png', 'default', 'image/png', 500, 315),
(655, '2020-12-27 17:00:00', '2020-12-27 17:00:00', 96, 1, 653, '/images/58/79/58796c97e3e6ece8fa83af23a43d45df_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(656, '2020-12-27 17:00:01', '2020-12-27 17:00:01', 96, 1, 653, '/images/58/79/58796c97e3e6ece8fa83af23a43d45df_wide.png', 'wide', 'image/png', 1920, 540),
(657, '2020-12-27 17:00:01', '2020-12-27 17:00:01', 96, 1, 653, '/images/58/79/58796c97e3e6ece8fa83af23a43d45df_mobile.png', 'mobile', 'image/png', 320, 213),
(658, '2020-12-27 17:00:01', '2020-12-27 17:00:01', 96, 1, 653, '/images/58/79/58796c97e3e6ece8fa83af23a43d45df_square.png', 'square', 'image/png', 320, 320),
(659, '2020-12-27 17:00:01', '2020-12-27 17:00:01', 96, 1, 653, '/images/58/79/58796c97e3e6ece8fa83af23a43d45df_square_small.png', 'square_small', 'image/png', 75, 75),
(660, '2020-12-27 17:03:39', '2020-12-27 17:03:39', 97, 1, NULL, '/images/6e/f9/6ef954b968080da54c1a062d1a2f44c1.png', 'original', 'image/png', 2340, 1560),
(661, '2020-12-27 17:03:39', '2020-12-27 17:03:39', 97, 1, 660, '/images/6e/f9/6ef954b968080da54c1a062d1a2f44c1_default.png', 'default', 'image/png', 500, 315),
(662, '2020-12-27 17:03:39', '2020-12-27 17:03:39', 97, 1, 660, '/images/6e/f9/6ef954b968080da54c1a062d1a2f44c1_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(663, '2020-12-27 17:03:39', '2020-12-27 17:03:39', 97, 1, 660, '/images/6e/f9/6ef954b968080da54c1a062d1a2f44c1_wide.png', 'wide', 'image/png', 1920, 540),
(664, '2020-12-27 17:03:40', '2020-12-27 17:03:40', 97, 1, 660, '/images/6e/f9/6ef954b968080da54c1a062d1a2f44c1_mobile.png', 'mobile', 'image/png', 320, 213),
(665, '2020-12-27 17:03:40', '2020-12-27 17:03:40', 97, 1, 660, '/images/6e/f9/6ef954b968080da54c1a062d1a2f44c1_square.png', 'square', 'image/png', 320, 320),
(666, '2020-12-27 17:03:40', '2020-12-27 17:03:40', 97, 1, 660, '/images/6e/f9/6ef954b968080da54c1a062d1a2f44c1_square_small.png', 'square_small', 'image/png', 75, 75),
(667, '2020-12-27 17:05:55', '2020-12-27 17:05:55', 98, 1, NULL, '/images/9c/a0/9ca041ba255a5b85f45dccc75f3518aa.png', 'original', 'image/png', 2340, 1560),
(668, '2020-12-27 17:05:55', '2020-12-27 17:05:55', 98, 1, 667, '/images/9c/a0/9ca041ba255a5b85f45dccc75f3518aa_default.png', 'default', 'image/png', 500, 315),
(669, '2020-12-27 17:05:55', '2020-12-27 17:05:55', 98, 1, 667, '/images/9c/a0/9ca041ba255a5b85f45dccc75f3518aa_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(670, '2020-12-27 17:05:56', '2020-12-27 17:05:56', 98, 1, 667, '/images/9c/a0/9ca041ba255a5b85f45dccc75f3518aa_wide.png', 'wide', 'image/png', 1920, 540),
(671, '2020-12-27 17:05:56', '2020-12-27 17:05:56', 98, 1, 667, '/images/9c/a0/9ca041ba255a5b85f45dccc75f3518aa_mobile.png', 'mobile', 'image/png', 320, 213),
(672, '2020-12-27 17:05:56', '2020-12-27 17:05:56', 98, 1, 667, '/images/9c/a0/9ca041ba255a5b85f45dccc75f3518aa_square.png', 'square', 'image/png', 320, 320),
(673, '2020-12-27 17:05:56', '2020-12-27 17:05:56', 98, 1, 667, '/images/9c/a0/9ca041ba255a5b85f45dccc75f3518aa_square_small.png', 'square_small', 'image/png', 75, 75),
(674, '2020-12-30 19:08:32', '2020-12-30 19:08:32', 99, 1, NULL, '/images/24/13/2413017f9f9542f4938346da8a7ac3e5.png', 'original', 'image/png', 2340, 1560),
(675, '2020-12-30 19:08:33', '2020-12-30 19:08:33', 99, 1, 674, '/images/24/13/2413017f9f9542f4938346da8a7ac3e5_default.png', 'default', 'image/png', 500, 315),
(676, '2020-12-30 19:08:33', '2020-12-30 19:08:33', 99, 1, 674, '/images/24/13/2413017f9f9542f4938346da8a7ac3e5_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(677, '2020-12-30 19:08:33', '2020-12-30 19:08:33', 99, 1, 674, '/images/24/13/2413017f9f9542f4938346da8a7ac3e5_wide.png', 'wide', 'image/png', 1920, 540),
(678, '2020-12-30 19:08:33', '2020-12-30 19:08:33', 99, 1, 674, '/images/24/13/2413017f9f9542f4938346da8a7ac3e5_mobile.png', 'mobile', 'image/png', 320, 213),
(679, '2020-12-30 19:08:33', '2020-12-30 19:08:33', 99, 1, 674, '/images/24/13/2413017f9f9542f4938346da8a7ac3e5_square.png', 'square', 'image/png', 320, 320),
(680, '2020-12-30 19:08:34', '2020-12-30 19:08:34', 99, 1, 674, '/images/24/13/2413017f9f9542f4938346da8a7ac3e5_square_small.png', 'square_small', 'image/png', 75, 75),
(681, '2020-12-30 19:10:32', '2020-12-30 19:10:32', 100, 1, NULL, '/images/2b/ed/2bede27cee9921370b75007a63d24be2.png', 'original', 'image/png', 2340, 1560),
(682, '2020-12-30 19:10:32', '2020-12-30 19:10:32', 100, 1, 681, '/images/2b/ed/2bede27cee9921370b75007a63d24be2_default.png', 'default', 'image/png', 500, 315),
(683, '2020-12-30 19:10:32', '2020-12-30 19:10:32', 100, 1, 681, '/images/2b/ed/2bede27cee9921370b75007a63d24be2_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(684, '2020-12-30 19:10:33', '2020-12-30 19:10:33', 100, 1, 681, '/images/2b/ed/2bede27cee9921370b75007a63d24be2_wide.png', 'wide', 'image/png', 1920, 540),
(685, '2020-12-30 19:10:33', '2020-12-30 19:10:33', 100, 1, 681, '/images/2b/ed/2bede27cee9921370b75007a63d24be2_mobile.png', 'mobile', 'image/png', 320, 213),
(686, '2020-12-30 19:10:33', '2020-12-30 19:10:33', 100, 1, 681, '/images/2b/ed/2bede27cee9921370b75007a63d24be2_square.png', 'square', 'image/png', 320, 320),
(687, '2020-12-30 19:10:33', '2020-12-30 19:10:33', 100, 1, 681, '/images/2b/ed/2bede27cee9921370b75007a63d24be2_square_small.png', 'square_small', 'image/png', 75, 75),
(688, '2020-12-30 19:12:40', '2020-12-30 19:12:40', 101, 1, NULL, '/images/77/dd/77dd3a2a17ed4e3706f34bcf3a993244.png', 'original', 'image/png', 2340, 1560),
(689, '2020-12-30 19:12:40', '2020-12-30 19:12:40', 101, 1, 688, '/images/77/dd/77dd3a2a17ed4e3706f34bcf3a993244_default.png', 'default', 'image/png', 500, 315),
(690, '2020-12-30 19:12:40', '2020-12-30 19:12:40', 101, 1, 688, '/images/77/dd/77dd3a2a17ed4e3706f34bcf3a993244_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(691, '2020-12-30 19:12:40', '2020-12-30 19:12:40', 101, 1, 688, '/images/77/dd/77dd3a2a17ed4e3706f34bcf3a993244_wide.png', 'wide', 'image/png', 1920, 540),
(692, '2020-12-30 19:12:41', '2020-12-30 19:12:41', 101, 1, 688, '/images/77/dd/77dd3a2a17ed4e3706f34bcf3a993244_mobile.png', 'mobile', 'image/png', 320, 213),
(693, '2020-12-30 19:12:41', '2020-12-30 19:12:41', 101, 1, 688, '/images/77/dd/77dd3a2a17ed4e3706f34bcf3a993244_square.png', 'square', 'image/png', 320, 320),
(694, '2020-12-30 19:12:41', '2020-12-30 19:12:41', 101, 1, 688, '/images/77/dd/77dd3a2a17ed4e3706f34bcf3a993244_square_small.png', 'square_small', 'image/png', 75, 75),
(695, '2020-12-30 19:14:27', '2020-12-30 19:14:27', 102, 1, NULL, '/images/36/1c/361c4529ee671a73560e6c0050aa4cbb.png', 'original', 'image/png', 2340, 1560),
(696, '2020-12-30 19:14:28', '2020-12-30 19:14:28', 102, 1, 695, '/images/36/1c/361c4529ee671a73560e6c0050aa4cbb_default.png', 'default', 'image/png', 500, 315),
(697, '2020-12-30 19:14:28', '2020-12-30 19:14:28', 102, 1, 695, '/images/36/1c/361c4529ee671a73560e6c0050aa4cbb_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(698, '2020-12-30 19:14:28', '2020-12-30 19:14:28', 102, 1, 695, '/images/36/1c/361c4529ee671a73560e6c0050aa4cbb_wide.png', 'wide', 'image/png', 1920, 540),
(699, '2020-12-30 19:14:28', '2020-12-30 19:14:28', 102, 1, 695, '/images/36/1c/361c4529ee671a73560e6c0050aa4cbb_mobile.png', 'mobile', 'image/png', 320, 213),
(700, '2020-12-30 19:14:28', '2020-12-30 19:14:28', 102, 1, 695, '/images/36/1c/361c4529ee671a73560e6c0050aa4cbb_square.png', 'square', 'image/png', 320, 320),
(701, '2020-12-30 19:14:29', '2020-12-30 19:14:29', 102, 1, 695, '/images/36/1c/361c4529ee671a73560e6c0050aa4cbb_square_small.png', 'square_small', 'image/png', 75, 75),
(702, '2020-12-30 19:18:32', '2020-12-30 19:18:32', 103, 1, NULL, '/images/1f/20/1f20510840f43e47762472fd3b7a2e15.png', 'original', 'image/png', 2340, 1560),
(703, '2020-12-30 19:18:33', '2020-12-30 19:18:33', 103, 1, 702, '/images/1f/20/1f20510840f43e47762472fd3b7a2e15_default.png', 'default', 'image/png', 500, 315),
(704, '2020-12-30 19:18:33', '2020-12-30 19:18:33', 103, 1, 702, '/images/1f/20/1f20510840f43e47762472fd3b7a2e15_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(705, '2020-12-30 19:18:33', '2020-12-30 19:18:33', 103, 1, 702, '/images/1f/20/1f20510840f43e47762472fd3b7a2e15_wide.png', 'wide', 'image/png', 1920, 540),
(706, '2020-12-30 19:18:33', '2020-12-30 19:18:33', 103, 1, 702, '/images/1f/20/1f20510840f43e47762472fd3b7a2e15_mobile.png', 'mobile', 'image/png', 320, 213),
(707, '2020-12-30 19:18:33', '2020-12-30 19:18:33', 103, 1, 702, '/images/1f/20/1f20510840f43e47762472fd3b7a2e15_square.png', 'square', 'image/png', 320, 320),
(708, '2020-12-30 19:18:34', '2020-12-30 19:18:34', 103, 1, 702, '/images/1f/20/1f20510840f43e47762472fd3b7a2e15_square_small.png', 'square_small', 'image/png', 75, 75),
(709, '2020-12-30 19:20:16', '2020-12-30 19:20:16', 104, 1, NULL, '/images/69/53/6953509a9792df832d11d93579ed520d.png', 'original', 'image/png', 2340, 1560),
(710, '2020-12-30 19:20:17', '2020-12-30 19:20:17', 104, 1, 709, '/images/69/53/6953509a9792df832d11d93579ed520d_default.png', 'default', 'image/png', 500, 315),
(711, '2020-12-30 19:20:17', '2020-12-30 19:20:17', 104, 1, 709, '/images/69/53/6953509a9792df832d11d93579ed520d_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(712, '2020-12-30 19:20:17', '2020-12-30 19:20:17', 104, 1, 709, '/images/69/53/6953509a9792df832d11d93579ed520d_wide.png', 'wide', 'image/png', 1920, 540),
(713, '2020-12-30 19:20:17', '2020-12-30 19:20:17', 104, 1, 709, '/images/69/53/6953509a9792df832d11d93579ed520d_mobile.png', 'mobile', 'image/png', 320, 213),
(714, '2020-12-30 19:20:18', '2020-12-30 19:20:18', 104, 1, 709, '/images/69/53/6953509a9792df832d11d93579ed520d_square.png', 'square', 'image/png', 320, 320),
(715, '2020-12-30 19:20:18', '2020-12-30 19:20:18', 104, 1, 709, '/images/69/53/6953509a9792df832d11d93579ed520d_square_small.png', 'square_small', 'image/png', 75, 75),
(716, '2020-12-30 19:22:23', '2020-12-30 19:22:23', 105, 1, NULL, '/images/1a/bd/1abd791afc8107c95dda94a3b461ede1.png', 'original', 'image/png', 2340, 1560),
(717, '2020-12-30 19:22:23', '2020-12-30 19:22:23', 105, 1, 716, '/images/1a/bd/1abd791afc8107c95dda94a3b461ede1_default.png', 'default', 'image/png', 500, 315),
(718, '2020-12-30 19:22:23', '2020-12-30 19:22:23', 105, 1, 716, '/images/1a/bd/1abd791afc8107c95dda94a3b461ede1_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(719, '2020-12-30 19:22:23', '2020-12-30 19:22:23', 105, 1, 716, '/images/1a/bd/1abd791afc8107c95dda94a3b461ede1_wide.png', 'wide', 'image/png', 1920, 540),
(720, '2020-12-30 19:22:24', '2020-12-30 19:22:24', 105, 1, 716, '/images/1a/bd/1abd791afc8107c95dda94a3b461ede1_mobile.png', 'mobile', 'image/png', 320, 213),
(721, '2020-12-30 19:22:24', '2020-12-30 19:22:24', 105, 1, 716, '/images/1a/bd/1abd791afc8107c95dda94a3b461ede1_square.png', 'square', 'image/png', 320, 320),
(722, '2020-12-30 19:22:24', '2020-12-30 19:22:24', 105, 1, 716, '/images/1a/bd/1abd791afc8107c95dda94a3b461ede1_square_small.png', 'square_small', 'image/png', 75, 75),
(723, '2020-12-30 19:28:09', '2020-12-30 19:28:09', 106, 1, NULL, '/images/fa/27/fa27a5415d5bc8218f7ec880e678ce7d.png', 'original', 'image/png', 2340, 1560),
(724, '2020-12-30 19:28:09', '2020-12-30 19:28:09', 106, 1, 723, '/images/fa/27/fa27a5415d5bc8218f7ec880e678ce7d_default.png', 'default', 'image/png', 500, 315),
(725, '2020-12-30 19:28:10', '2020-12-30 19:28:10', 106, 1, 723, '/images/fa/27/fa27a5415d5bc8218f7ec880e678ce7d_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(726, '2020-12-30 19:28:10', '2020-12-30 19:28:10', 106, 1, 723, '/images/fa/27/fa27a5415d5bc8218f7ec880e678ce7d_wide.png', 'wide', 'image/png', 1920, 540),
(727, '2020-12-30 19:28:10', '2020-12-30 19:28:10', 106, 1, 723, '/images/fa/27/fa27a5415d5bc8218f7ec880e678ce7d_mobile.png', 'mobile', 'image/png', 320, 213),
(728, '2020-12-30 19:28:10', '2020-12-30 19:28:10', 106, 1, 723, '/images/fa/27/fa27a5415d5bc8218f7ec880e678ce7d_square.png', 'square', 'image/png', 320, 320),
(729, '2020-12-30 19:28:10', '2020-12-30 19:28:10', 106, 1, 723, '/images/fa/27/fa27a5415d5bc8218f7ec880e678ce7d_square_small.png', 'square_small', 'image/png', 75, 75),
(730, '2020-12-30 19:30:36', '2020-12-30 19:30:36', 107, 1, NULL, '/images/0f/5b/0f5b67b10d37b49d2935fbc9a78d5cd3.png', 'original', 'image/png', 2340, 1560),
(731, '2020-12-30 19:30:37', '2020-12-30 19:30:37', 107, 1, 730, '/images/0f/5b/0f5b67b10d37b49d2935fbc9a78d5cd3_default.png', 'default', 'image/png', 500, 315),
(732, '2020-12-30 19:30:37', '2020-12-30 19:30:37', 107, 1, 730, '/images/0f/5b/0f5b67b10d37b49d2935fbc9a78d5cd3_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(733, '2020-12-30 19:30:37', '2020-12-30 19:30:37', 107, 1, 730, '/images/0f/5b/0f5b67b10d37b49d2935fbc9a78d5cd3_wide.png', 'wide', 'image/png', 1920, 540),
(734, '2020-12-30 19:30:37', '2020-12-30 19:30:37', 107, 1, 730, '/images/0f/5b/0f5b67b10d37b49d2935fbc9a78d5cd3_mobile.png', 'mobile', 'image/png', 320, 213),
(735, '2020-12-30 19:30:38', '2020-12-30 19:30:38', 107, 1, 730, '/images/0f/5b/0f5b67b10d37b49d2935fbc9a78d5cd3_square.png', 'square', 'image/png', 320, 320),
(736, '2020-12-30 19:30:38', '2020-12-30 19:30:38', 107, 1, 730, '/images/0f/5b/0f5b67b10d37b49d2935fbc9a78d5cd3_square_small.png', 'square_small', 'image/png', 75, 75),
(737, '2020-12-30 19:38:26', '2020-12-30 19:38:26', 110, 1, NULL, '/images/42/87/42870ecaa307381fe1e1f98833e08124.png', 'original', 'image/png', 2340, 1560),
(738, '2020-12-30 19:38:26', '2020-12-30 19:38:26', 110, 1, 737, '/images/42/87/42870ecaa307381fe1e1f98833e08124_default.png', 'default', 'image/png', 500, 315),
(739, '2020-12-30 19:38:26', '2020-12-30 19:38:26', 110, 1, 737, '/images/42/87/42870ecaa307381fe1e1f98833e08124_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(740, '2020-12-30 19:38:27', '2020-12-30 19:38:27', 110, 1, 737, '/images/42/87/42870ecaa307381fe1e1f98833e08124_wide.png', 'wide', 'image/png', 1920, 540),
(741, '2020-12-30 19:38:27', '2020-12-30 19:38:27', 110, 1, 737, '/images/42/87/42870ecaa307381fe1e1f98833e08124_mobile.png', 'mobile', 'image/png', 320, 213),
(742, '2020-12-30 19:38:27', '2020-12-30 19:38:27', 110, 1, 737, '/images/42/87/42870ecaa307381fe1e1f98833e08124_square.png', 'square', 'image/png', 320, 320),
(743, '2020-12-30 19:38:27', '2020-12-30 19:38:27', 110, 1, 737, '/images/42/87/42870ecaa307381fe1e1f98833e08124_square_small.png', 'square_small', 'image/png', 75, 75),
(744, '2020-12-30 19:41:42', '2020-12-30 19:41:42', 111, 1, NULL, '/images/56/6e/566e2fed3792a781f9e78cf246f417ab.png', 'original', 'image/png', 2340, 1560),
(745, '2020-12-30 19:41:42', '2020-12-30 19:41:42', 111, 1, 744, '/images/56/6e/566e2fed3792a781f9e78cf246f417ab_default.png', 'default', 'image/png', 500, 315),
(746, '2020-12-30 19:41:42', '2020-12-30 19:41:42', 111, 1, 744, '/images/56/6e/566e2fed3792a781f9e78cf246f417ab_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(747, '2020-12-30 19:41:43', '2020-12-30 19:41:43', 111, 1, 744, '/images/56/6e/566e2fed3792a781f9e78cf246f417ab_wide.png', 'wide', 'image/png', 1920, 540),
(748, '2020-12-30 19:41:43', '2020-12-30 19:41:43', 111, 1, 744, '/images/56/6e/566e2fed3792a781f9e78cf246f417ab_mobile.png', 'mobile', 'image/png', 320, 213),
(749, '2020-12-30 19:41:43', '2020-12-30 19:41:43', 111, 1, 744, '/images/56/6e/566e2fed3792a781f9e78cf246f417ab_square.png', 'square', 'image/png', 320, 320),
(750, '2020-12-30 19:41:43', '2020-12-30 19:41:43', 111, 1, 744, '/images/56/6e/566e2fed3792a781f9e78cf246f417ab_square_small.png', 'square_small', 'image/png', 75, 75),
(751, '2020-12-30 19:44:51', '2020-12-30 19:44:51', 112, 1, NULL, '/images/68/4c/684c55077b480c2ceb7470c02a55c954.png', 'original', 'image/png', 2340, 1560),
(752, '2020-12-30 19:44:52', '2020-12-30 19:44:52', 112, 1, 751, '/images/68/4c/684c55077b480c2ceb7470c02a55c954_default.png', 'default', 'image/png', 500, 315),
(753, '2020-12-30 19:44:52', '2020-12-30 19:44:52', 112, 1, 751, '/images/68/4c/684c55077b480c2ceb7470c02a55c954_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(754, '2020-12-30 19:44:52', '2020-12-30 19:44:52', 112, 1, 751, '/images/68/4c/684c55077b480c2ceb7470c02a55c954_wide.png', 'wide', 'image/png', 1920, 540),
(755, '2020-12-30 19:44:52', '2020-12-30 19:44:52', 112, 1, 751, '/images/68/4c/684c55077b480c2ceb7470c02a55c954_mobile.png', 'mobile', 'image/png', 320, 213),
(756, '2020-12-30 19:44:52', '2020-12-30 19:44:52', 112, 1, 751, '/images/68/4c/684c55077b480c2ceb7470c02a55c954_square.png', 'square', 'image/png', 320, 320),
(757, '2020-12-30 19:44:53', '2020-12-30 19:44:53', 112, 1, 751, '/images/68/4c/684c55077b480c2ceb7470c02a55c954_square_small.png', 'square_small', 'image/png', 75, 75),
(758, '2020-12-30 19:45:16', '2020-12-30 19:45:16', 108, 1, NULL, '/images/f3/b7/f3b7b265c9f103cb91edb9a455019fbb.png', 'original', 'image/png', 2340, 1560),
(759, '2020-12-30 19:45:17', '2020-12-30 19:45:17', 108, 1, 758, '/images/f3/b7/f3b7b265c9f103cb91edb9a455019fbb_default.png', 'default', 'image/png', 500, 315),
(760, '2020-12-30 19:45:17', '2020-12-30 19:45:17', 108, 1, 758, '/images/f3/b7/f3b7b265c9f103cb91edb9a455019fbb_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(761, '2020-12-30 19:45:17', '2020-12-30 19:45:17', 108, 1, 758, '/images/f3/b7/f3b7b265c9f103cb91edb9a455019fbb_wide.png', 'wide', 'image/png', 1920, 540),
(762, '2020-12-30 19:45:17', '2020-12-30 19:45:17', 108, 1, 758, '/images/f3/b7/f3b7b265c9f103cb91edb9a455019fbb_mobile.png', 'mobile', 'image/png', 320, 213),
(763, '2020-12-30 19:45:17', '2020-12-30 19:45:17', 108, 1, 758, '/images/f3/b7/f3b7b265c9f103cb91edb9a455019fbb_square.png', 'square', 'image/png', 320, 320),
(764, '2020-12-30 19:45:18', '2020-12-30 19:45:18', 108, 1, 758, '/images/f3/b7/f3b7b265c9f103cb91edb9a455019fbb_square_small.png', 'square_small', 'image/png', 75, 75),
(765, '2020-12-30 19:45:36', '2020-12-30 19:45:36', 109, 1, NULL, '/images/81/d6/81d6d8e15be27360b628b442652de523.png', 'original', 'image/png', 2340, 1560),
(766, '2020-12-30 19:45:37', '2020-12-30 19:45:37', 109, 1, 765, '/images/81/d6/81d6d8e15be27360b628b442652de523_default.png', 'default', 'image/png', 500, 315),
(767, '2020-12-30 19:45:37', '2020-12-30 19:45:37', 109, 1, 765, '/images/81/d6/81d6d8e15be27360b628b442652de523_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(768, '2020-12-30 19:45:37', '2020-12-30 19:45:37', 109, 1, 765, '/images/81/d6/81d6d8e15be27360b628b442652de523_wide.png', 'wide', 'image/png', 1920, 540),
(769, '2020-12-30 19:45:37', '2020-12-30 19:45:37', 109, 1, 765, '/images/81/d6/81d6d8e15be27360b628b442652de523_mobile.png', 'mobile', 'image/png', 320, 213),
(770, '2020-12-30 19:45:38', '2020-12-30 19:45:38', 109, 1, 765, '/images/81/d6/81d6d8e15be27360b628b442652de523_square.png', 'square', 'image/png', 320, 320),
(771, '2020-12-30 19:45:38', '2020-12-30 19:45:38', 109, 1, 765, '/images/81/d6/81d6d8e15be27360b628b442652de523_square_small.png', 'square_small', 'image/png', 75, 75),
(772, '2020-12-30 19:48:19', '2020-12-30 19:48:19', 113, 1, NULL, '/images/b4/9d/b49d20c55499016a7eaece17ff12bfbc.png', 'original', 'image/png', 2340, 1560),
(773, '2020-12-30 19:48:19', '2020-12-30 19:48:19', 113, 1, 772, '/images/b4/9d/b49d20c55499016a7eaece17ff12bfbc_default.png', 'default', 'image/png', 500, 315),
(774, '2020-12-30 19:48:19', '2020-12-30 19:48:19', 113, 1, 772, '/images/b4/9d/b49d20c55499016a7eaece17ff12bfbc_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(775, '2020-12-30 19:48:20', '2020-12-30 19:48:20', 113, 1, 772, '/images/b4/9d/b49d20c55499016a7eaece17ff12bfbc_wide.png', 'wide', 'image/png', 1920, 540),
(776, '2020-12-30 19:48:20', '2020-12-30 19:48:20', 113, 1, 772, '/images/b4/9d/b49d20c55499016a7eaece17ff12bfbc_mobile.png', 'mobile', 'image/png', 320, 213),
(777, '2020-12-30 19:48:20', '2020-12-30 19:48:20', 113, 1, 772, '/images/b4/9d/b49d20c55499016a7eaece17ff12bfbc_square.png', 'square', 'image/png', 320, 320),
(778, '2020-12-30 19:48:20', '2020-12-30 19:48:20', 113, 1, 772, '/images/b4/9d/b49d20c55499016a7eaece17ff12bfbc_square_small.png', 'square_small', 'image/png', 75, 75),
(779, '2020-12-30 19:50:20', '2020-12-30 19:50:20', 114, 1, NULL, '/images/92/d4/92d44ebc68a48cb0ef1b57857ee74dab.png', 'original', 'image/png', 2340, 1560),
(780, '2020-12-30 19:50:20', '2020-12-30 19:50:20', 114, 1, 779, '/images/92/d4/92d44ebc68a48cb0ef1b57857ee74dab_default.png', 'default', 'image/png', 500, 315),
(781, '2020-12-30 19:50:21', '2020-12-30 19:50:21', 114, 1, 779, '/images/92/d4/92d44ebc68a48cb0ef1b57857ee74dab_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(782, '2020-12-30 19:50:21', '2020-12-30 19:50:21', 114, 1, 779, '/images/92/d4/92d44ebc68a48cb0ef1b57857ee74dab_wide.png', 'wide', 'image/png', 1920, 540),
(783, '2020-12-30 19:50:21', '2020-12-30 19:50:21', 114, 1, 779, '/images/92/d4/92d44ebc68a48cb0ef1b57857ee74dab_mobile.png', 'mobile', 'image/png', 320, 213),
(784, '2020-12-30 19:50:21', '2020-12-30 19:50:21', 114, 1, 779, '/images/92/d4/92d44ebc68a48cb0ef1b57857ee74dab_square.png', 'square', 'image/png', 320, 320),
(785, '2020-12-30 19:50:21', '2020-12-30 19:50:21', 114, 1, 779, '/images/92/d4/92d44ebc68a48cb0ef1b57857ee74dab_square_small.png', 'square_small', 'image/png', 75, 75),
(786, '2020-12-30 19:56:13', '2020-12-30 19:56:13', 115, 1, NULL, '/images/b7/bd/b7bdc73d4b4d0d207b69d9d7a0e9c36c.png', 'original', 'image/png', 2340, 1560),
(787, '2020-12-30 19:56:13', '2020-12-30 19:56:13', 115, 1, 786, '/images/b7/bd/b7bdc73d4b4d0d207b69d9d7a0e9c36c_default.png', 'default', 'image/png', 500, 315),
(788, '2020-12-30 19:56:13', '2020-12-30 19:56:13', 115, 1, 786, '/images/b7/bd/b7bdc73d4b4d0d207b69d9d7a0e9c36c_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(789, '2020-12-30 19:56:14', '2020-12-30 19:56:14', 115, 1, 786, '/images/b7/bd/b7bdc73d4b4d0d207b69d9d7a0e9c36c_wide.png', 'wide', 'image/png', 1920, 540),
(790, '2020-12-30 19:56:14', '2020-12-30 19:56:14', 115, 1, 786, '/images/b7/bd/b7bdc73d4b4d0d207b69d9d7a0e9c36c_mobile.png', 'mobile', 'image/png', 320, 213),
(791, '2020-12-30 19:56:14', '2020-12-30 19:56:14', 115, 1, 786, '/images/b7/bd/b7bdc73d4b4d0d207b69d9d7a0e9c36c_square.png', 'square', 'image/png', 320, 320),
(792, '2020-12-30 19:56:14', '2020-12-30 19:56:14', 115, 1, 786, '/images/b7/bd/b7bdc73d4b4d0d207b69d9d7a0e9c36c_square_small.png', 'square_small', 'image/png', 75, 75),
(793, '2020-12-30 19:58:03', '2020-12-30 19:58:03', 115, 1, NULL, '/images/13/6d/136da352f213a9e5db3bba2e52263feb.png', 'original', 'image/png', 2340, 1560),
(794, '2020-12-30 19:58:03', '2020-12-30 19:58:03', 115, 1, 793, '/images/13/6d/136da352f213a9e5db3bba2e52263feb_default.png', 'default', 'image/png', 500, 315),
(795, '2020-12-30 19:58:03', '2020-12-30 19:58:03', 115, 1, 793, '/images/13/6d/136da352f213a9e5db3bba2e52263feb_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(796, '2020-12-30 19:58:04', '2020-12-30 19:58:04', 115, 1, 793, '/images/13/6d/136da352f213a9e5db3bba2e52263feb_wide.png', 'wide', 'image/png', 1920, 540),
(797, '2020-12-30 19:58:04', '2020-12-30 19:58:04', 115, 1, 793, '/images/13/6d/136da352f213a9e5db3bba2e52263feb_mobile.png', 'mobile', 'image/png', 320, 213),
(798, '2020-12-30 19:58:04', '2020-12-30 19:58:04', 115, 1, 793, '/images/13/6d/136da352f213a9e5db3bba2e52263feb_square.png', 'square', 'image/png', 320, 320),
(799, '2020-12-30 19:58:04', '2020-12-30 19:58:04', 115, 1, 793, '/images/13/6d/136da352f213a9e5db3bba2e52263feb_square_small.png', 'square_small', 'image/png', 75, 75),
(800, '2021-01-09 11:11:45', '2021-01-09 11:11:45', 7, 1, NULL, '/images/55/32/55327f102d628f39fddb65696bce0447.png', 'original', 'image/png', 1920, 1080),
(801, '2021-01-09 11:11:46', '2021-01-09 11:11:46', 7, 1, 800, '/images/55/32/55327f102d628f39fddb65696bce0447_default.png', 'default', 'image/png', 500, 315),
(802, '2021-01-09 11:11:46', '2021-01-09 11:11:46', 7, 1, 800, '/images/55/32/55327f102d628f39fddb65696bce0447_thumb_h.png', 'thumb_h', 'image/png', 200, 112),
(803, '2021-01-09 11:11:46', '2021-01-09 11:11:46', 7, 1, 800, '/images/55/32/55327f102d628f39fddb65696bce0447_wide.png', 'wide', 'image/png', 1920, 540),
(804, '2021-01-09 11:11:46', '2021-01-09 11:11:46', 7, 1, 800, '/images/55/32/55327f102d628f39fddb65696bce0447_mobile.png', 'mobile', 'image/png', 320, 180),
(805, '2021-01-09 11:11:46', '2021-01-09 11:11:46', 7, 1, 800, '/images/55/32/55327f102d628f39fddb65696bce0447_square.png', 'square', 'image/png', 320, 320),
(806, '2021-01-09 11:11:46', '2021-01-09 11:11:46', 7, 1, 800, '/images/55/32/55327f102d628f39fddb65696bce0447_square_small.png', 'square_small', 'image/png', 75, 75),
(807, '2021-01-09 11:25:07', '2021-01-09 11:25:07', 8, 1, NULL, '/images/b3/cf/b3cf63ffcb448c4a17ae96b8a4d5e5e0.png', 'original', 'image/png', 1200, 600),
(808, '2021-01-09 11:25:07', '2021-01-09 11:25:07', 8, 1, 807, '/images/b3/cf/b3cf63ffcb448c4a17ae96b8a4d5e5e0_default.png', 'default', 'image/png', 500, 315),
(809, '2021-01-09 11:25:07', '2021-01-09 11:25:07', 8, 1, 807, '/images/b3/cf/b3cf63ffcb448c4a17ae96b8a4d5e5e0_thumb_h.png', 'thumb_h', 'image/png', 200, 100),
(810, '2021-01-09 11:25:07', '2021-01-09 11:25:07', 8, 1, 807, '/images/b3/cf/b3cf63ffcb448c4a17ae96b8a4d5e5e0_wide.png', 'wide', 'image/png', 1920, 540),
(811, '2021-01-09 11:25:07', '2021-01-09 11:25:07', 8, 1, 807, '/images/b3/cf/b3cf63ffcb448c4a17ae96b8a4d5e5e0_mobile.png', 'mobile', 'image/png', 320, 160),
(812, '2021-01-09 11:25:07', '2021-01-09 11:25:07', 8, 1, 807, '/images/b3/cf/b3cf63ffcb448c4a17ae96b8a4d5e5e0_square.png', 'square', 'image/png', 320, 320),
(813, '2021-01-09 11:25:07', '2021-01-09 11:25:07', 8, 1, 807, '/images/b3/cf/b3cf63ffcb448c4a17ae96b8a4d5e5e0_square_small.png', 'square_small', 'image/png', 75, 75),
(814, '2021-01-09 11:33:33', '2021-01-09 11:33:33', 9, 1, NULL, '/images/69/79/6979c32250c10afbafb534239234064d.png', 'original', 'image/png', 900, 500),
(815, '2021-01-09 11:33:33', '2021-01-09 11:33:33', 9, 1, 814, '/images/69/79/6979c32250c10afbafb534239234064d_default.png', 'default', 'image/png', 500, 315),
(816, '2021-01-09 11:33:33', '2021-01-09 11:33:33', 9, 1, 814, '/images/69/79/6979c32250c10afbafb534239234064d_thumb_h.png', 'thumb_h', 'image/png', 200, 111),
(817, '2021-01-09 11:33:34', '2021-01-09 11:33:34', 9, 1, 814, '/images/69/79/6979c32250c10afbafb534239234064d_wide.png', 'wide', 'image/png', 1920, 540),
(818, '2021-01-09 11:33:34', '2021-01-09 11:33:34', 9, 1, 814, '/images/69/79/6979c32250c10afbafb534239234064d_mobile.png', 'mobile', 'image/png', 320, 177),
(819, '2021-01-09 11:33:34', '2021-01-09 11:33:34', 9, 1, 814, '/images/69/79/6979c32250c10afbafb534239234064d_square.png', 'square', 'image/png', 320, 320),
(820, '2021-01-09 11:33:34', '2021-01-09 11:33:34', 9, 1, 814, '/images/69/79/6979c32250c10afbafb534239234064d_square_small.png', 'square_small', 'image/png', 75, 75),
(821, '2021-01-09 11:39:51', '2021-01-09 11:39:51', 10, 1, NULL, '/images/e1/be/e1be95c3853e9df9234c3a3e7af94fa7.png', 'original', 'image/png', 566, 126),
(822, '2021-01-09 11:39:51', '2021-01-09 11:39:51', 10, 1, 821, '/images/e1/be/e1be95c3853e9df9234c3a3e7af94fa7_default.png', 'default', 'image/png', 500, 315),
(823, '2021-01-09 11:39:51', '2021-01-09 11:39:51', 10, 1, 821, '/images/e1/be/e1be95c3853e9df9234c3a3e7af94fa7_thumb_h.png', 'thumb_h', 'image/png', 200, 44),
(824, '2021-01-09 11:39:51', '2021-01-09 11:39:51', 10, 1, 821, '/images/e1/be/e1be95c3853e9df9234c3a3e7af94fa7_wide.png', 'wide', 'image/png', 1920, 540),
(825, '2021-01-09 11:39:51', '2021-01-09 11:39:51', 10, 1, 821, '/images/e1/be/e1be95c3853e9df9234c3a3e7af94fa7_mobile.png', 'mobile', 'image/png', 320, 71),
(826, '2021-01-09 11:39:51', '2021-01-09 11:39:51', 10, 1, 821, '/images/e1/be/e1be95c3853e9df9234c3a3e7af94fa7_square.png', 'square', 'image/png', 320, 320),
(827, '2021-01-09 11:39:51', '2021-01-09 11:39:51', 10, 1, 821, '/images/e1/be/e1be95c3853e9df9234c3a3e7af94fa7_square_small.png', 'square_small', 'image/png', 75, 75),
(828, '2021-01-09 11:40:38', '2021-01-09 11:40:38', 10, 1, NULL, '/images/78/a4/78a4dba32da442d97682aa7207137962.jpg', 'original', 'image/jpeg', 2560, 1440),
(829, '2021-01-09 11:40:38', '2021-01-09 11:40:38', 10, 1, 828, '/images/78/a4/78a4dba32da442d97682aa7207137962_default.jpg', 'default', 'image/jpeg', 500, 315),
(830, '2021-01-09 11:40:39', '2021-01-09 11:40:39', 10, 1, 828, '/images/78/a4/78a4dba32da442d97682aa7207137962_thumb_h.jpg', 'thumb_h', 'image/jpeg', 200, 112),
(831, '2021-01-09 11:40:39', '2021-01-09 11:40:39', 10, 1, 828, '/images/78/a4/78a4dba32da442d97682aa7207137962_wide.jpg', 'wide', 'image/jpeg', 1920, 540),
(832, '2021-01-09 11:40:39', '2021-01-09 11:40:39', 10, 1, 828, '/images/78/a4/78a4dba32da442d97682aa7207137962_mobile.jpg', 'mobile', 'image/jpeg', 320, 180),
(833, '2021-01-09 11:40:39', '2021-01-09 11:40:39', 10, 1, 828, '/images/78/a4/78a4dba32da442d97682aa7207137962_square.jpg', 'square', 'image/jpeg', 320, 320),
(834, '2021-01-09 11:40:40', '2021-01-09 11:40:40', 10, 1, 828, '/images/78/a4/78a4dba32da442d97682aa7207137962_square_small.jpg', 'square_small', 'image/jpeg', 75, 75),
(835, '2021-01-09 11:41:33', '2021-01-09 11:41:33', 8, 1, NULL, '/images/95/35/9535165b9aee4522836af73db765a15c.jpg', 'original', 'image/jpeg', 600, 400),
(836, '2021-01-09 11:41:33', '2021-01-09 11:41:33', 8, 1, 835, '/images/95/35/9535165b9aee4522836af73db765a15c_default.jpg', 'default', 'image/jpeg', 500, 315),
(837, '2021-01-09 11:41:33', '2021-01-09 11:41:33', 8, 1, 835, '/images/95/35/9535165b9aee4522836af73db765a15c_thumb_h.jpg', 'thumb_h', 'image/jpeg', 200, 133),
(838, '2021-01-09 11:41:34', '2021-01-09 11:41:34', 8, 1, 835, '/images/95/35/9535165b9aee4522836af73db765a15c_wide.jpg', 'wide', 'image/jpeg', 1920, 540),
(839, '2021-01-09 11:41:34', '2021-01-09 11:41:34', 8, 1, 835, '/images/95/35/9535165b9aee4522836af73db765a15c_mobile.jpg', 'mobile', 'image/jpeg', 320, 213),
(840, '2021-01-09 11:41:34', '2021-01-09 11:41:34', 8, 1, 835, '/images/95/35/9535165b9aee4522836af73db765a15c_square.jpg', 'square', 'image/jpeg', 320, 320),
(841, '2021-01-09 11:41:34', '2021-01-09 11:41:34', 8, 1, 835, '/images/95/35/9535165b9aee4522836af73db765a15c_square_small.jpg', 'square_small', 'image/jpeg', 75, 75),
(842, '2021-01-09 11:42:12', '2021-01-09 11:42:12', 7, 1, NULL, '/images/17/44/1744f016619c23d6cfc5b1c91a297464.jpg', 'original', 'image/jpeg', 1200, 630),
(843, '2021-01-09 11:42:12', '2021-01-09 11:42:12', 7, 1, 842, '/images/17/44/1744f016619c23d6cfc5b1c91a297464_default.jpg', 'default', 'image/jpeg', 500, 315),
(844, '2021-01-09 11:42:12', '2021-01-09 11:42:12', 7, 1, 842, '/images/17/44/1744f016619c23d6cfc5b1c91a297464_thumb_h.jpg', 'thumb_h', 'image/jpeg', 200, 105),
(845, '2021-01-09 11:42:13', '2021-01-09 11:42:13', 7, 1, 842, '/images/17/44/1744f016619c23d6cfc5b1c91a297464_wide.jpg', 'wide', 'image/jpeg', 1920, 540),
(846, '2021-01-09 11:42:13', '2021-01-09 11:42:13', 7, 1, 842, '/images/17/44/1744f016619c23d6cfc5b1c91a297464_mobile.jpg', 'mobile', 'image/jpeg', 320, 168),
(847, '2021-01-09 11:42:13', '2021-01-09 11:42:13', 7, 1, 842, '/images/17/44/1744f016619c23d6cfc5b1c91a297464_square.jpg', 'square', 'image/jpeg', 320, 320),
(848, '2021-01-09 11:42:13', '2021-01-09 11:42:13', 7, 1, 842, '/images/17/44/1744f016619c23d6cfc5b1c91a297464_square_small.jpg', 'square_small', 'image/jpeg', 75, 75),
(849, '2021-01-09 11:43:58', '2021-01-09 11:43:58', 3, 1, NULL, '/images/0a/1d/0a1d31946a3a5fb05f146223cce6a7e5.png', 'original', 'image/png', 900, 500),
(850, '2021-01-09 11:43:58', '2021-01-09 11:43:58', 3, 1, 849, '/images/0a/1d/0a1d31946a3a5fb05f146223cce6a7e5_default.png', 'default', 'image/png', 500, 315),
(851, '2021-01-09 11:43:58', '2021-01-09 11:43:58', 3, 1, 849, '/images/0a/1d/0a1d31946a3a5fb05f146223cce6a7e5_thumb_h.png', 'thumb_h', 'image/png', 200, 111),
(852, '2021-01-09 11:43:58', '2021-01-09 11:43:58', 3, 1, 849, '/images/0a/1d/0a1d31946a3a5fb05f146223cce6a7e5_wide.png', 'wide', 'image/png', 1920, 540),
(853, '2021-01-09 11:43:58', '2021-01-09 11:43:58', 3, 1, 849, '/images/0a/1d/0a1d31946a3a5fb05f146223cce6a7e5_mobile.png', 'mobile', 'image/png', 320, 177),
(854, '2021-01-09 11:43:58', '2021-01-09 11:43:58', 3, 1, 849, '/images/0a/1d/0a1d31946a3a5fb05f146223cce6a7e5_square.png', 'square', 'image/png', 320, 320),
(855, '2021-01-09 11:43:58', '2021-01-09 11:43:58', 3, 1, 849, '/images/0a/1d/0a1d31946a3a5fb05f146223cce6a7e5_square_small.png', 'square_small', 'image/png', 75, 75),
(856, '2021-01-09 11:50:11', '2021-01-09 11:50:11', 11, 1, NULL, '/images/43/40/434091cc9d0b0ae3f0d86490b1ff533a.png', 'original', 'image/png', 300, 168),
(857, '2021-01-09 11:50:11', '2021-01-09 11:50:11', 11, 1, 856, '/images/43/40/434091cc9d0b0ae3f0d86490b1ff533a_default.png', 'default', 'image/png', 500, 315),
(858, '2021-01-09 11:50:11', '2021-01-09 11:50:11', 11, 1, 856, '/images/43/40/434091cc9d0b0ae3f0d86490b1ff533a_thumb_h.png', 'thumb_h', 'image/png', 200, 112),
(859, '2021-01-09 11:50:11', '2021-01-09 11:50:11', 11, 1, 856, '/images/43/40/434091cc9d0b0ae3f0d86490b1ff533a_wide.png', 'wide', 'image/png', 1920, 540),
(860, '2021-01-09 11:50:11', '2021-01-09 11:50:11', 11, 1, 856, '/images/43/40/434091cc9d0b0ae3f0d86490b1ff533a_mobile.png', 'mobile', 'image/png', 320, 179),
(861, '2021-01-09 11:50:11', '2021-01-09 11:50:11', 11, 1, 856, '/images/43/40/434091cc9d0b0ae3f0d86490b1ff533a_square.png', 'square', 'image/png', 320, 320),
(862, '2021-01-09 11:50:11', '2021-01-09 11:50:11', 11, 1, 856, '/images/43/40/434091cc9d0b0ae3f0d86490b1ff533a_square_small.png', 'square_small', 'image/png', 75, 75),
(863, '2021-01-09 11:56:25', '2021-01-09 11:56:25', 12, 1, NULL, '/images/2d/f5/2df5ca6bd655cc9f96e62ee6ebed311a.png', 'original', 'image/png', 1200, 584),
(864, '2021-01-09 11:56:25', '2021-01-09 11:56:25', 12, 1, 863, '/images/2d/f5/2df5ca6bd655cc9f96e62ee6ebed311a_default.png', 'default', 'image/png', 500, 315),
(865, '2021-01-09 11:56:25', '2021-01-09 11:56:25', 12, 1, 863, '/images/2d/f5/2df5ca6bd655cc9f96e62ee6ebed311a_thumb_h.png', 'thumb_h', 'image/png', 200, 97),
(866, '2021-01-09 11:56:26', '2021-01-09 11:56:26', 12, 1, 863, '/images/2d/f5/2df5ca6bd655cc9f96e62ee6ebed311a_wide.png', 'wide', 'image/png', 1920, 540),
(867, '2021-01-09 11:56:26', '2021-01-09 11:56:26', 12, 1, 863, '/images/2d/f5/2df5ca6bd655cc9f96e62ee6ebed311a_mobile.png', 'mobile', 'image/png', 320, 155),
(868, '2021-01-09 11:56:26', '2021-01-09 11:56:26', 12, 1, 863, '/images/2d/f5/2df5ca6bd655cc9f96e62ee6ebed311a_square.png', 'square', 'image/png', 320, 320),
(869, '2021-01-09 11:56:26', '2021-01-09 11:56:26', 12, 1, 863, '/images/2d/f5/2df5ca6bd655cc9f96e62ee6ebed311a_square_small.png', 'square_small', 'image/png', 75, 75),
(870, '2021-01-09 11:57:28', '2021-01-09 11:57:28', 12, 1, NULL, '/images/a6/89/a6896ea827b214cfbff4707303e80b73.png', 'original', 'image/png', 512, 384),
(871, '2021-01-09 11:57:28', '2021-01-09 11:57:28', 12, 1, 870, '/images/a6/89/a6896ea827b214cfbff4707303e80b73_default.png', 'default', 'image/png', 500, 315),
(872, '2021-01-09 11:57:28', '2021-01-09 11:57:28', 12, 1, 870, '/images/a6/89/a6896ea827b214cfbff4707303e80b73_thumb_h.png', 'thumb_h', 'image/png', 200, 150),
(873, '2021-01-09 11:57:28', '2021-01-09 11:57:28', 12, 1, 870, '/images/a6/89/a6896ea827b214cfbff4707303e80b73_wide.png', 'wide', 'image/png', 1920, 540),
(874, '2021-01-09 11:57:28', '2021-01-09 11:57:28', 12, 1, 870, '/images/a6/89/a6896ea827b214cfbff4707303e80b73_mobile.png', 'mobile', 'image/png', 320, 240),
(875, '2021-01-09 11:57:28', '2021-01-09 11:57:28', 12, 1, 870, '/images/a6/89/a6896ea827b214cfbff4707303e80b73_square.png', 'square', 'image/png', 320, 320),
(876, '2021-01-09 11:57:28', '2021-01-09 11:57:28', 12, 1, 870, '/images/a6/89/a6896ea827b214cfbff4707303e80b73_square_small.png', 'square_small', 'image/png', 75, 75),
(877, '2021-01-09 11:57:54', '2021-01-09 11:57:54', 12, 1, NULL, '/images/6c/c0/6cc05aaf8c0ce8161dcb099e19b8e57d.jpg', 'original', 'image/jpeg', 600, 408),
(878, '2021-01-09 11:57:54', '2021-01-09 11:57:54', 12, 1, 877, '/images/6c/c0/6cc05aaf8c0ce8161dcb099e19b8e57d_default.jpg', 'default', 'image/jpeg', 500, 315),
(879, '2021-01-09 11:57:54', '2021-01-09 11:57:54', 12, 1, 877, '/images/6c/c0/6cc05aaf8c0ce8161dcb099e19b8e57d_thumb_h.jpg', 'thumb_h', 'image/jpeg', 200, 136),
(880, '2021-01-09 11:57:54', '2021-01-09 11:57:54', 12, 1, 877, '/images/6c/c0/6cc05aaf8c0ce8161dcb099e19b8e57d_wide.jpg', 'wide', 'image/jpeg', 1920, 540),
(881, '2021-01-09 11:57:54', '2021-01-09 11:57:54', 12, 1, 877, '/images/6c/c0/6cc05aaf8c0ce8161dcb099e19b8e57d_mobile.jpg', 'mobile', 'image/jpeg', 320, 217),
(882, '2021-01-09 11:57:54', '2021-01-09 11:57:54', 12, 1, 877, '/images/6c/c0/6cc05aaf8c0ce8161dcb099e19b8e57d_square.jpg', 'square', 'image/jpeg', 320, 320),
(883, '2021-01-09 11:57:54', '2021-01-09 11:57:54', 12, 1, 877, '/images/6c/c0/6cc05aaf8c0ce8161dcb099e19b8e57d_square_small.jpg', 'square_small', 'image/jpeg', 75, 75),
(884, '2021-01-09 12:02:59', '2021-01-09 12:02:59', 13, 1, NULL, '/images/47/b1/47b1c191ab31c479da3d6ba8f29252e8.png', 'original', 'image/png', 500, 500),
(885, '2021-01-09 12:02:59', '2021-01-09 12:02:59', 13, 1, 884, '/images/47/b1/47b1c191ab31c479da3d6ba8f29252e8_default.png', 'default', 'image/png', 500, 315),
(886, '2021-01-09 12:02:59', '2021-01-09 12:02:59', 13, 1, 884, '/images/47/b1/47b1c191ab31c479da3d6ba8f29252e8_thumb_h.png', 'thumb_h', 'image/png', 200, 200),
(887, '2021-01-09 12:02:59', '2021-01-09 12:02:59', 13, 1, 884, '/images/47/b1/47b1c191ab31c479da3d6ba8f29252e8_wide.png', 'wide', 'image/png', 1920, 540),
(888, '2021-01-09 12:02:59', '2021-01-09 12:02:59', 13, 1, 884, '/images/47/b1/47b1c191ab31c479da3d6ba8f29252e8_mobile.png', 'mobile', 'image/png', 320, 320),
(889, '2021-01-09 12:03:00', '2021-01-09 12:03:00', 13, 1, 884, '/images/47/b1/47b1c191ab31c479da3d6ba8f29252e8_square.png', 'square', 'image/png', 320, 320),
(890, '2021-01-09 12:03:00', '2021-01-09 12:03:00', 13, 1, 884, '/images/47/b1/47b1c191ab31c479da3d6ba8f29252e8_square_small.png', 'square_small', 'image/png', 75, 75),
(891, '2021-01-09 12:03:25', '2021-01-09 12:03:25', 13, 1, NULL, '/images/00/5c/005caa7e015361c78d66bb35f9ce6abc.jpg', 'original', 'image/jpeg', 1575, 825),
(892, '2021-01-09 12:03:25', '2021-01-09 12:03:25', 13, 1, 891, '/images/00/5c/005caa7e015361c78d66bb35f9ce6abc_default.jpg', 'default', 'image/jpeg', 500, 315),
(893, '2021-01-09 12:03:25', '2021-01-09 12:03:25', 13, 1, 891, '/images/00/5c/005caa7e015361c78d66bb35f9ce6abc_thumb_h.jpg', 'thumb_h', 'image/jpeg', 200, 104),
(894, '2021-01-09 12:03:25', '2021-01-09 12:03:25', 13, 1, 891, '/images/00/5c/005caa7e015361c78d66bb35f9ce6abc_wide.jpg', 'wide', 'image/jpeg', 1920, 540),
(895, '2021-01-09 12:03:25', '2021-01-09 12:03:25', 13, 1, 891, '/images/00/5c/005caa7e015361c78d66bb35f9ce6abc_mobile.jpg', 'mobile', 'image/jpeg', 320, 167),
(896, '2021-01-09 12:03:25', '2021-01-09 12:03:25', 13, 1, 891, '/images/00/5c/005caa7e015361c78d66bb35f9ce6abc_square.jpg', 'square', 'image/jpeg', 320, 320),
(897, '2021-01-09 12:03:25', '2021-01-09 12:03:25', 13, 1, 891, '/images/00/5c/005caa7e015361c78d66bb35f9ce6abc_square_small.jpg', 'square_small', 'image/jpeg', 75, 75),
(898, '2021-01-09 12:09:03', '2021-01-09 12:09:03', 14, 1, NULL, '/images/fa/0d/fa0da285ee9e6f4ad5e607e472024b59.png', 'original', 'image/png', 1020, 680),
(899, '2021-01-09 12:09:04', '2021-01-09 12:09:04', 14, 1, 898, '/images/fa/0d/fa0da285ee9e6f4ad5e607e472024b59_default.png', 'default', 'image/png', 500, 315),
(900, '2021-01-09 12:09:04', '2021-01-09 12:09:04', 14, 1, 898, '/images/fa/0d/fa0da285ee9e6f4ad5e607e472024b59_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(901, '2021-01-09 12:09:04', '2021-01-09 12:09:04', 14, 1, 898, '/images/fa/0d/fa0da285ee9e6f4ad5e607e472024b59_wide.png', 'wide', 'image/png', 1920, 540),
(902, '2021-01-09 12:09:04', '2021-01-09 12:09:04', 14, 1, 898, '/images/fa/0d/fa0da285ee9e6f4ad5e607e472024b59_mobile.png', 'mobile', 'image/png', 320, 213),
(903, '2021-01-09 12:09:04', '2021-01-09 12:09:04', 14, 1, 898, '/images/fa/0d/fa0da285ee9e6f4ad5e607e472024b59_square.png', 'square', 'image/png', 320, 320),
(904, '2021-01-09 12:09:04', '2021-01-09 12:09:04', 14, 1, 898, '/images/fa/0d/fa0da285ee9e6f4ad5e607e472024b59_square_small.png', 'square_small', 'image/png', 75, 75),
(905, '2021-01-11 12:01:07', '2021-01-11 12:01:07', 15, 1, NULL, '/images/85/e3/85e3c53d0513cbffb70543bd0c0f6a36.png', 'original', 'image/png', 1000, 1000),
(906, '2021-01-11 12:01:07', '2021-01-11 12:01:07', 15, 1, 905, '/images/85/e3/85e3c53d0513cbffb70543bd0c0f6a36_default.png', 'default', 'image/png', 500, 315),
(907, '2021-01-11 12:01:07', '2021-01-11 12:01:07', 15, 1, 905, '/images/85/e3/85e3c53d0513cbffb70543bd0c0f6a36_thumb_h.png', 'thumb_h', 'image/png', 200, 200),
(908, '2021-01-11 12:01:08', '2021-01-11 12:01:08', 15, 1, 905, '/images/85/e3/85e3c53d0513cbffb70543bd0c0f6a36_wide.png', 'wide', 'image/png', 1920, 540),
(909, '2021-01-11 12:01:08', '2021-01-11 12:01:08', 15, 1, 905, '/images/85/e3/85e3c53d0513cbffb70543bd0c0f6a36_mobile.png', 'mobile', 'image/png', 320, 320),
(910, '2021-01-11 12:01:08', '2021-01-11 12:01:08', 15, 1, 905, '/images/85/e3/85e3c53d0513cbffb70543bd0c0f6a36_square.png', 'square', 'image/png', 320, 320),
(911, '2021-01-11 12:01:08', '2021-01-11 12:01:08', 15, 1, 905, '/images/85/e3/85e3c53d0513cbffb70543bd0c0f6a36_square_small.png', 'square_small', 'image/png', 75, 75),
(912, '2021-01-11 12:02:03', '2021-01-11 12:02:03', 15, 1, NULL, '/images/57/69/5769ced977d725aaa25cf89f2f0a3c3d.png', 'original', 'image/png', 225, 225),
(913, '2021-01-11 12:02:03', '2021-01-11 12:02:03', 15, 1, 912, '/images/57/69/5769ced977d725aaa25cf89f2f0a3c3d_default.png', 'default', 'image/png', 500, 315),
(914, '2021-01-11 12:02:03', '2021-01-11 12:02:03', 15, 1, 912, '/images/57/69/5769ced977d725aaa25cf89f2f0a3c3d_thumb_h.png', 'thumb_h', 'image/png', 200, 200),
(915, '2021-01-11 12:02:03', '2021-01-11 12:02:03', 15, 1, 912, '/images/57/69/5769ced977d725aaa25cf89f2f0a3c3d_wide.png', 'wide', 'image/png', 1920, 540),
(916, '2021-01-11 12:02:03', '2021-01-11 12:02:03', 15, 1, 912, '/images/57/69/5769ced977d725aaa25cf89f2f0a3c3d_mobile.png', 'mobile', 'image/png', 320, 320),
(917, '2021-01-11 12:02:03', '2021-01-11 12:02:03', 15, 1, 912, '/images/57/69/5769ced977d725aaa25cf89f2f0a3c3d_square.png', 'square', 'image/png', 320, 320),
(918, '2021-01-11 12:02:03', '2021-01-11 12:02:03', 15, 1, 912, '/images/57/69/5769ced977d725aaa25cf89f2f0a3c3d_square_small.png', 'square_small', 'image/png', 75, 75),
(919, '2021-01-11 12:03:14', '2021-01-11 12:03:14', 16, 1, NULL, '/images/6f/7e/6f7e9ed5a23ad09c18797bd2d0566364.jpg', 'original', 'image/jpeg', 512, 365),
(920, '2021-01-11 12:03:14', '2021-01-11 12:03:14', 16, 1, 919, '/images/6f/7e/6f7e9ed5a23ad09c18797bd2d0566364_default.jpg', 'default', 'image/jpeg', 500, 315),
(921, '2021-01-11 12:03:14', '2021-01-11 12:03:14', 16, 1, 919, '/images/6f/7e/6f7e9ed5a23ad09c18797bd2d0566364_thumb_h.jpg', 'thumb_h', 'image/jpeg', 200, 142),
(922, '2021-01-11 12:03:14', '2021-01-11 12:03:14', 16, 1, 919, '/images/6f/7e/6f7e9ed5a23ad09c18797bd2d0566364_wide.jpg', 'wide', 'image/jpeg', 1920, 540),
(923, '2021-01-11 12:03:14', '2021-01-11 12:03:14', 16, 1, 919, '/images/6f/7e/6f7e9ed5a23ad09c18797bd2d0566364_mobile.jpg', 'mobile', 'image/jpeg', 320, 228),
(924, '2021-01-11 12:03:14', '2021-01-11 12:03:14', 16, 1, 919, '/images/6f/7e/6f7e9ed5a23ad09c18797bd2d0566364_square.jpg', 'square', 'image/jpeg', 320, 320),
(925, '2021-01-11 12:03:14', '2021-01-11 12:03:14', 16, 1, 919, '/images/6f/7e/6f7e9ed5a23ad09c18797bd2d0566364_square_small.jpg', 'square_small', 'image/jpeg', 75, 75),
(926, '2021-01-11 12:04:02', '2021-01-11 12:04:02', 16, 1, NULL, '/images/9e/60/9e600050aca4a72f400e7c88809a8414.jpg', 'original', 'image/jpeg', 500, 277),
(927, '2021-01-11 12:04:02', '2021-01-11 12:04:02', 16, 1, 926, '/images/9e/60/9e600050aca4a72f400e7c88809a8414_default.jpg', 'default', 'image/jpeg', 500, 315),
(928, '2021-01-11 12:04:02', '2021-01-11 12:04:02', 16, 1, 926, '/images/9e/60/9e600050aca4a72f400e7c88809a8414_thumb_h.jpg', 'thumb_h', 'image/jpeg', 200, 110),
(929, '2021-01-11 12:04:02', '2021-01-11 12:04:02', 16, 1, 926, '/images/9e/60/9e600050aca4a72f400e7c88809a8414_wide.jpg', 'wide', 'image/jpeg', 1920, 540),
(930, '2021-01-11 12:04:02', '2021-01-11 12:04:02', 16, 1, 926, '/images/9e/60/9e600050aca4a72f400e7c88809a8414_mobile.jpg', 'mobile', 'image/jpeg', 320, 177),
(931, '2021-01-11 12:04:02', '2021-01-11 12:04:02', 16, 1, 926, '/images/9e/60/9e600050aca4a72f400e7c88809a8414_square.jpg', 'square', 'image/jpeg', 320, 320),
(932, '2021-01-11 12:04:02', '2021-01-11 12:04:02', 16, 1, 926, '/images/9e/60/9e600050aca4a72f400e7c88809a8414_square_small.jpg', 'square_small', 'image/jpeg', 75, 75),
(933, '2021-01-11 12:06:32', '2021-01-11 12:06:32', 17, 1, NULL, '/images/80/ee/80ee3298fa671206a27eb7b95591fdfd.jpg', 'original', 'image/jpeg', 960, 540),
(934, '2021-01-11 12:06:32', '2021-01-11 12:06:32', 17, 1, 933, '/images/80/ee/80ee3298fa671206a27eb7b95591fdfd_default.jpg', 'default', 'image/jpeg', 500, 315),
(935, '2021-01-11 12:06:32', '2021-01-11 12:06:32', 17, 1, 933, '/images/80/ee/80ee3298fa671206a27eb7b95591fdfd_thumb_h.jpg', 'thumb_h', 'image/jpeg', 200, 112),
(936, '2021-01-11 12:06:32', '2021-01-11 12:06:32', 17, 1, 933, '/images/80/ee/80ee3298fa671206a27eb7b95591fdfd_wide.jpg', 'wide', 'image/jpeg', 1920, 540),
(937, '2021-01-11 12:06:32', '2021-01-11 12:06:32', 17, 1, 933, '/images/80/ee/80ee3298fa671206a27eb7b95591fdfd_mobile.jpg', 'mobile', 'image/jpeg', 320, 180),
(938, '2021-01-11 12:06:32', '2021-01-11 12:06:32', 17, 1, 933, '/images/80/ee/80ee3298fa671206a27eb7b95591fdfd_square.jpg', 'square', 'image/jpeg', 320, 320),
(939, '2021-01-11 12:06:32', '2021-01-11 12:06:32', 17, 1, 933, '/images/80/ee/80ee3298fa671206a27eb7b95591fdfd_square_small.jpg', 'square_small', 'image/jpeg', 75, 75),
(940, '2021-01-11 12:35:56', '2021-01-11 12:35:56', 18, 1, NULL, '/images/d6/71/d671030a7aa3cd46c2e42a2c181b1a6b.png', 'original', 'image/png', 763, 763),
(941, '2021-01-11 12:35:56', '2021-01-11 12:35:56', 18, 1, 940, '/images/d6/71/d671030a7aa3cd46c2e42a2c181b1a6b_default.png', 'default', 'image/png', 500, 315),
(942, '2021-01-11 12:35:56', '2021-01-11 12:35:56', 18, 1, 940, '/images/d6/71/d671030a7aa3cd46c2e42a2c181b1a6b_thumb_h.png', 'thumb_h', 'image/png', 200, 200),
(943, '2021-01-11 12:35:56', '2021-01-11 12:35:56', 18, 1, 940, '/images/d6/71/d671030a7aa3cd46c2e42a2c181b1a6b_wide.png', 'wide', 'image/png', 1920, 540),
(944, '2021-01-11 12:35:57', '2021-01-11 12:35:57', 18, 1, 940, '/images/d6/71/d671030a7aa3cd46c2e42a2c181b1a6b_mobile.png', 'mobile', 'image/png', 320, 320),
(945, '2021-01-11 12:35:57', '2021-01-11 12:35:57', 18, 1, 940, '/images/d6/71/d671030a7aa3cd46c2e42a2c181b1a6b_square.png', 'square', 'image/png', 320, 320);
INSERT INTO `images` (`id`, `created_at`, `updated_at`, `object_id`, `object_type`, `parent_id`, `src`, `type`, `mime`, `width`, `height`) VALUES
(946, '2021-01-11 12:35:57', '2021-01-11 12:35:57', 18, 1, 940, '/images/d6/71/d671030a7aa3cd46c2e42a2c181b1a6b_square_small.png', 'square_small', 'image/png', 75, 75),
(947, '2021-01-11 12:37:15', '2021-01-11 12:37:15', 19, 1, NULL, '/images/62/d2/62d23253caf0832dbf9893f996c6dbda.jpg', 'original', 'image/jpeg', 800, 350),
(948, '2021-01-11 12:37:15', '2021-01-11 12:37:15', 19, 1, 947, '/images/62/d2/62d23253caf0832dbf9893f996c6dbda_default.jpg', 'default', 'image/jpeg', 500, 315),
(949, '2021-01-11 12:37:15', '2021-01-11 12:37:15', 19, 1, 947, '/images/62/d2/62d23253caf0832dbf9893f996c6dbda_thumb_h.jpg', 'thumb_h', 'image/jpeg', 200, 87),
(950, '2021-01-11 12:37:15', '2021-01-11 12:37:15', 19, 1, 947, '/images/62/d2/62d23253caf0832dbf9893f996c6dbda_wide.jpg', 'wide', 'image/jpeg', 1920, 540),
(951, '2021-01-11 12:37:15', '2021-01-11 12:37:15', 19, 1, 947, '/images/62/d2/62d23253caf0832dbf9893f996c6dbda_mobile.jpg', 'mobile', 'image/jpeg', 320, 140),
(952, '2021-01-11 12:37:15', '2021-01-11 12:37:15', 19, 1, 947, '/images/62/d2/62d23253caf0832dbf9893f996c6dbda_square.jpg', 'square', 'image/jpeg', 320, 320),
(953, '2021-01-11 12:37:15', '2021-01-11 12:37:15', 19, 1, 947, '/images/62/d2/62d23253caf0832dbf9893f996c6dbda_square_small.jpg', 'square_small', 'image/jpeg', 75, 75),
(954, '2021-01-11 12:38:14', '2021-01-11 12:38:14', 20, 1, NULL, '/images/78/c6/78c647baa658f2d557265561c91226ed.jpg', 'original', 'image/jpeg', 2560, 1536),
(955, '2021-01-11 12:38:15', '2021-01-11 12:38:15', 20, 1, 954, '/images/78/c6/78c647baa658f2d557265561c91226ed_default.jpg', 'default', 'image/jpeg', 500, 315),
(956, '2021-01-11 12:38:15', '2021-01-11 12:38:15', 20, 1, 954, '/images/78/c6/78c647baa658f2d557265561c91226ed_thumb_h.jpg', 'thumb_h', 'image/jpeg', 200, 120),
(957, '2021-01-11 12:38:16', '2021-01-11 12:38:16', 20, 1, 954, '/images/78/c6/78c647baa658f2d557265561c91226ed_wide.jpg', 'wide', 'image/jpeg', 1920, 540),
(958, '2021-01-11 12:38:16', '2021-01-11 12:38:16', 20, 1, 954, '/images/78/c6/78c647baa658f2d557265561c91226ed_mobile.jpg', 'mobile', 'image/jpeg', 320, 192),
(959, '2021-01-11 12:38:16', '2021-01-11 12:38:16', 20, 1, 954, '/images/78/c6/78c647baa658f2d557265561c91226ed_square.jpg', 'square', 'image/jpeg', 320, 320),
(960, '2021-01-11 12:38:17', '2021-01-11 12:38:17', 20, 1, 954, '/images/78/c6/78c647baa658f2d557265561c91226ed_square_small.jpg', 'square_small', 'image/jpeg', 75, 75),
(961, '2021-01-11 12:42:40', '2021-01-11 12:42:40', 21, 1, NULL, '/images/fe/46/fe46b65cdbdfeab201e7a141c63d6c87.jpg', 'original', 'image/jpeg', 512, 341),
(962, '2021-01-11 12:42:40', '2021-01-11 12:42:40', 21, 1, 961, '/images/fe/46/fe46b65cdbdfeab201e7a141c63d6c87_default.jpg', 'default', 'image/jpeg', 500, 315),
(963, '2021-01-11 12:42:40', '2021-01-11 12:42:40', 21, 1, 961, '/images/fe/46/fe46b65cdbdfeab201e7a141c63d6c87_thumb_h.jpg', 'thumb_h', 'image/jpeg', 200, 133),
(964, '2021-01-11 12:42:40', '2021-01-11 12:42:40', 21, 1, 961, '/images/fe/46/fe46b65cdbdfeab201e7a141c63d6c87_wide.jpg', 'wide', 'image/jpeg', 1920, 540),
(965, '2021-01-11 12:42:41', '2021-01-11 12:42:41', 21, 1, 961, '/images/fe/46/fe46b65cdbdfeab201e7a141c63d6c87_mobile.jpg', 'mobile', 'image/jpeg', 320, 213),
(966, '2021-01-11 12:42:41', '2021-01-11 12:42:41', 21, 1, 961, '/images/fe/46/fe46b65cdbdfeab201e7a141c63d6c87_square.jpg', 'square', 'image/jpeg', 320, 320),
(967, '2021-01-11 12:42:41', '2021-01-11 12:42:41', 21, 1, 961, '/images/fe/46/fe46b65cdbdfeab201e7a141c63d6c87_square_small.jpg', 'square_small', 'image/jpeg', 75, 75),
(968, '2021-01-11 12:43:46', '2021-01-11 12:43:46', 22, 1, NULL, '/images/87/be/87be724cfdf060554ea6890c6f120f16.jpg', 'original', 'image/jpeg', 740, 493),
(969, '2021-01-11 12:43:46', '2021-01-11 12:43:46', 22, 1, 968, '/images/87/be/87be724cfdf060554ea6890c6f120f16_default.jpg', 'default', 'image/jpeg', 500, 315),
(970, '2021-01-11 12:43:46', '2021-01-11 12:43:46', 22, 1, 968, '/images/87/be/87be724cfdf060554ea6890c6f120f16_thumb_h.jpg', 'thumb_h', 'image/jpeg', 200, 133),
(971, '2021-01-11 12:43:46', '2021-01-11 12:43:47', 22, 1, 968, '/images/87/be/87be724cfdf060554ea6890c6f120f16_wide.jpg', 'wide', 'image/jpeg', 1920, 540),
(972, '2021-01-11 12:43:47', '2021-01-11 12:43:47', 22, 1, 968, '/images/87/be/87be724cfdf060554ea6890c6f120f16_mobile.jpg', 'mobile', 'image/jpeg', 320, 213),
(973, '2021-01-11 12:43:47', '2021-01-11 12:43:47', 22, 1, 968, '/images/87/be/87be724cfdf060554ea6890c6f120f16_square.jpg', 'square', 'image/jpeg', 320, 320),
(974, '2021-01-11 12:43:47', '2021-01-11 12:43:47', 22, 1, 968, '/images/87/be/87be724cfdf060554ea6890c6f120f16_square_small.jpg', 'square_small', 'image/jpeg', 75, 75),
(975, '2021-01-11 12:44:32', '2021-01-11 12:44:32', 22, 1, NULL, '/images/7c/7c/7c7c89fa822e2a7e91d83a9e23ff5d3d.png', 'original', 'image/png', 1680, 899),
(976, '2021-01-11 12:44:32', '2021-01-11 12:44:32', 22, 1, 975, '/images/7c/7c/7c7c89fa822e2a7e91d83a9e23ff5d3d_default.png', 'default', 'image/png', 500, 315),
(977, '2021-01-11 12:44:32', '2021-01-11 12:44:32', 22, 1, 975, '/images/7c/7c/7c7c89fa822e2a7e91d83a9e23ff5d3d_thumb_h.png', 'thumb_h', 'image/png', 200, 107),
(978, '2021-01-11 12:44:32', '2021-01-11 12:44:32', 22, 1, 975, '/images/7c/7c/7c7c89fa822e2a7e91d83a9e23ff5d3d_wide.png', 'wide', 'image/png', 1920, 540),
(979, '2021-01-11 12:44:32', '2021-01-11 12:44:32', 22, 1, 975, '/images/7c/7c/7c7c89fa822e2a7e91d83a9e23ff5d3d_mobile.png', 'mobile', 'image/png', 320, 171),
(980, '2021-01-11 12:44:32', '2021-01-11 12:44:32', 22, 1, 975, '/images/7c/7c/7c7c89fa822e2a7e91d83a9e23ff5d3d_square.png', 'square', 'image/png', 320, 320),
(981, '2021-01-11 12:44:32', '2021-01-11 12:44:32', 22, 1, 975, '/images/7c/7c/7c7c89fa822e2a7e91d83a9e23ff5d3d_square_small.png', 'square_small', 'image/png', 75, 75),
(982, '2021-01-11 12:44:50', '2021-01-11 12:44:50', 22, 1, NULL, '/images/8f/59/8f596b7152a9a87572d520d5c7298268.jpg', 'original', 'image/jpeg', 740, 493),
(983, '2021-01-11 12:44:50', '2021-01-11 12:44:50', 22, 1, 982, '/images/8f/59/8f596b7152a9a87572d520d5c7298268_default.jpg', 'default', 'image/jpeg', 500, 315),
(984, '2021-01-11 12:44:50', '2021-01-11 12:44:50', 22, 1, 982, '/images/8f/59/8f596b7152a9a87572d520d5c7298268_thumb_h.jpg', 'thumb_h', 'image/jpeg', 200, 133),
(985, '2021-01-11 12:44:50', '2021-01-11 12:44:50', 22, 1, 982, '/images/8f/59/8f596b7152a9a87572d520d5c7298268_wide.jpg', 'wide', 'image/jpeg', 1920, 540),
(986, '2021-01-11 12:44:50', '2021-01-11 12:44:50', 22, 1, 982, '/images/8f/59/8f596b7152a9a87572d520d5c7298268_mobile.jpg', 'mobile', 'image/jpeg', 320, 213),
(987, '2021-01-11 12:44:50', '2021-01-11 12:44:50', 22, 1, 982, '/images/8f/59/8f596b7152a9a87572d520d5c7298268_square.jpg', 'square', 'image/jpeg', 320, 320),
(988, '2021-01-11 12:44:50', '2021-01-11 12:44:50', 22, 1, 982, '/images/8f/59/8f596b7152a9a87572d520d5c7298268_square_small.jpg', 'square_small', 'image/jpeg', 75, 75),
(989, '2021-01-11 12:45:24', '2021-01-11 12:45:24', 23, 1, NULL, '/images/38/2f/382feaed7f05ef4648a74550622f15a5.png', 'original', 'image/png', 1680, 899),
(990, '2021-01-11 12:45:24', '2021-01-11 12:45:24', 23, 1, 989, '/images/38/2f/382feaed7f05ef4648a74550622f15a5_default.png', 'default', 'image/png', 500, 315),
(991, '2021-01-11 12:45:25', '2021-01-11 12:45:25', 23, 1, 989, '/images/38/2f/382feaed7f05ef4648a74550622f15a5_thumb_h.png', 'thumb_h', 'image/png', 200, 107),
(992, '2021-01-11 12:45:25', '2021-01-11 12:45:25', 23, 1, 989, '/images/38/2f/382feaed7f05ef4648a74550622f15a5_wide.png', 'wide', 'image/png', 1920, 540),
(993, '2021-01-11 12:45:25', '2021-01-11 12:45:25', 23, 1, 989, '/images/38/2f/382feaed7f05ef4648a74550622f15a5_mobile.png', 'mobile', 'image/png', 320, 171),
(994, '2021-01-11 12:45:25', '2021-01-11 12:45:25', 23, 1, 989, '/images/38/2f/382feaed7f05ef4648a74550622f15a5_square.png', 'square', 'image/png', 320, 320),
(995, '2021-01-11 12:45:25', '2021-01-11 12:45:25', 23, 1, 989, '/images/38/2f/382feaed7f05ef4648a74550622f15a5_square_small.png', 'square_small', 'image/png', 75, 75),
(996, '2021-01-11 12:46:26', '2021-01-11 12:46:26', 24, 1, NULL, '/images/bc/57/bc5719ad30076173f4b32e6f3215f750.png', 'original', 'image/png', 320, 320),
(997, '2021-01-11 12:46:26', '2021-01-11 12:46:26', 24, 1, 996, '/images/bc/57/bc5719ad30076173f4b32e6f3215f750_default.png', 'default', 'image/png', 500, 315),
(998, '2021-01-11 12:46:26', '2021-01-11 12:46:26', 24, 1, 996, '/images/bc/57/bc5719ad30076173f4b32e6f3215f750_thumb_h.png', 'thumb_h', 'image/png', 200, 200),
(999, '2021-01-11 12:46:26', '2021-01-11 12:46:26', 24, 1, 996, '/images/bc/57/bc5719ad30076173f4b32e6f3215f750_wide.png', 'wide', 'image/png', 1920, 540),
(1000, '2021-01-11 12:46:26', '2021-01-11 12:46:26', 24, 1, 996, '/images/bc/57/bc5719ad30076173f4b32e6f3215f750_mobile.png', 'mobile', 'image/png', 320, 320),
(1001, '2021-01-11 12:46:26', '2021-01-11 12:46:26', 24, 1, 996, '/images/bc/57/bc5719ad30076173f4b32e6f3215f750_square.png', 'square', 'image/png', 320, 320),
(1002, '2021-01-11 12:46:26', '2021-01-11 12:46:26', 24, 1, 996, '/images/bc/57/bc5719ad30076173f4b32e6f3215f750_square_small.png', 'square_small', 'image/png', 75, 75),
(1003, '2021-01-11 18:47:56', '2021-01-11 18:47:56', 25, 1, NULL, '/images/45/a5/45a5954a3c162856220e0f6cf3740d84.png', 'original', 'image/png', 1000, 600),
(1004, '2021-01-11 18:47:56', '2021-01-11 18:47:56', 25, 1, 1003, '/images/45/a5/45a5954a3c162856220e0f6cf3740d84_default.png', 'default', 'image/png', 500, 315),
(1005, '2021-01-11 18:47:56', '2021-01-11 18:47:56', 25, 1, 1003, '/images/45/a5/45a5954a3c162856220e0f6cf3740d84_thumb_h.png', 'thumb_h', 'image/png', 200, 120),
(1006, '2021-01-11 18:47:57', '2021-01-11 18:47:57', 25, 1, 1003, '/images/45/a5/45a5954a3c162856220e0f6cf3740d84_wide.png', 'wide', 'image/png', 1920, 540),
(1007, '2021-01-11 18:47:57', '2021-01-11 18:47:57', 25, 1, 1003, '/images/45/a5/45a5954a3c162856220e0f6cf3740d84_mobile.png', 'mobile', 'image/png', 320, 192),
(1008, '2021-01-11 18:47:57', '2021-01-11 18:47:57', 25, 1, 1003, '/images/45/a5/45a5954a3c162856220e0f6cf3740d84_square.png', 'square', 'image/png', 320, 320),
(1009, '2021-01-11 18:47:57', '2021-01-11 18:47:57', 25, 1, 1003, '/images/45/a5/45a5954a3c162856220e0f6cf3740d84_square_small.png', 'square_small', 'image/png', 75, 75),
(1010, '2021-01-19 15:34:32', '2021-01-19 15:34:32', 108, 1, NULL, '/images/89/8d/898da2786d4ebd392b4efaa54ab69a57.jpg', 'original', 'image/jpeg', 800, 534),
(1011, '2021-01-19 15:34:32', '2021-01-19 15:34:32', 108, 1, 1010, '/images/89/8d/898da2786d4ebd392b4efaa54ab69a57_default.jpg', 'default', 'image/jpeg', 500, 315),
(1012, '2021-01-19 15:34:32', '2021-01-19 15:34:32', 108, 1, 1010, '/images/89/8d/898da2786d4ebd392b4efaa54ab69a57_thumb_h.jpg', 'thumb_h', 'image/jpeg', 200, 133),
(1013, '2021-01-19 15:34:32', '2021-01-19 15:34:32', 108, 1, 1010, '/images/89/8d/898da2786d4ebd392b4efaa54ab69a57_wide.jpg', 'wide', 'image/jpeg', 1920, 540),
(1014, '2021-01-19 15:34:32', '2021-01-19 15:34:32', 108, 1, 1010, '/images/89/8d/898da2786d4ebd392b4efaa54ab69a57_mobile.jpg', 'mobile', 'image/jpeg', 320, 213),
(1015, '2021-01-19 15:34:32', '2021-01-19 15:34:32', 108, 1, 1010, '/images/89/8d/898da2786d4ebd392b4efaa54ab69a57_square.jpg', 'square', 'image/jpeg', 320, 320),
(1016, '2021-01-19 15:34:32', '2021-01-19 15:34:32', 108, 1, 1010, '/images/89/8d/898da2786d4ebd392b4efaa54ab69a57_square_small.jpg', 'square_small', 'image/jpeg', 75, 75),
(1017, '2021-01-19 15:36:22', '2021-01-19 15:36:22', 114, 1, NULL, '/images/93/24/9324c2011989391f5b20ebfac0a54e46.png', 'original', 'image/png', 541, 93),
(1018, '2021-01-19 15:36:22', '2021-01-19 15:36:22', 114, 1, 1017, '/images/93/24/9324c2011989391f5b20ebfac0a54e46_default.png', 'default', 'image/png', 500, 315),
(1019, '2021-01-19 15:36:22', '2021-01-19 15:36:22', 114, 1, 1017, '/images/93/24/9324c2011989391f5b20ebfac0a54e46_thumb_h.png', 'thumb_h', 'image/png', 200, 34),
(1020, '2021-01-19 15:36:22', '2021-01-19 15:36:22', 114, 1, 1017, '/images/93/24/9324c2011989391f5b20ebfac0a54e46_wide.png', 'wide', 'image/png', 1920, 540),
(1021, '2021-01-19 15:36:22', '2021-01-19 15:36:22', 114, 1, 1017, '/images/93/24/9324c2011989391f5b20ebfac0a54e46_mobile.png', 'mobile', 'image/png', 320, 55),
(1022, '2021-01-19 15:36:22', '2021-01-19 15:36:22', 114, 1, 1017, '/images/93/24/9324c2011989391f5b20ebfac0a54e46_square.png', 'square', 'image/png', 320, 320),
(1023, '2021-01-19 15:36:22', '2021-01-19 15:36:22', 114, 1, 1017, '/images/93/24/9324c2011989391f5b20ebfac0a54e46_square_small.png', 'square_small', 'image/png', 75, 75),
(1024, '2021-01-19 15:38:16', '2021-01-19 15:38:16', 113, 1, NULL, '/images/2d/a7/2da7f181031f2de486be66a7b794e4b6.gif', 'original', 'image/gif', 2362, 709),
(1025, '2021-01-19 15:38:16', '2021-01-19 15:38:16', 113, 1, 1024, '/images/2d/a7/2da7f181031f2de486be66a7b794e4b6_default.gif', 'default', 'image/gif', 500, 315),
(1026, '2021-01-19 15:38:16', '2021-01-19 15:38:16', 113, 1, 1024, '/images/2d/a7/2da7f181031f2de486be66a7b794e4b6_thumb_h.gif', 'thumb_h', 'image/gif', 200, 60),
(1027, '2021-01-19 15:38:16', '2021-01-19 15:38:16', 113, 1, 1024, '/images/2d/a7/2da7f181031f2de486be66a7b794e4b6_wide.gif', 'wide', 'image/gif', 1920, 540),
(1028, '2021-01-19 15:38:16', '2021-01-19 15:38:16', 113, 1, 1024, '/images/2d/a7/2da7f181031f2de486be66a7b794e4b6_mobile.gif', 'mobile', 'image/gif', 320, 96),
(1029, '2021-01-19 15:38:16', '2021-01-19 15:38:16', 113, 1, 1024, '/images/2d/a7/2da7f181031f2de486be66a7b794e4b6_square.gif', 'square', 'image/gif', 320, 320),
(1030, '2021-01-19 15:38:16', '2021-01-19 15:38:16', 113, 1, 1024, '/images/2d/a7/2da7f181031f2de486be66a7b794e4b6_square_small.gif', 'square_small', 'image/gif', 75, 75),
(1031, '2021-01-19 15:38:53', '2021-01-19 15:38:53', 112, 1, NULL, '/images/f7/7a/f77a5018f807d4a17b3e129ee06ba667.jpg', 'original', 'image/jpeg', 653, 316),
(1032, '2021-01-19 15:38:53', '2021-01-19 15:38:53', 112, 1, 1031, '/images/f7/7a/f77a5018f807d4a17b3e129ee06ba667_default.jpg', 'default', 'image/jpeg', 500, 315),
(1033, '2021-01-19 15:38:53', '2021-01-19 15:38:53', 112, 1, 1031, '/images/f7/7a/f77a5018f807d4a17b3e129ee06ba667_thumb_h.jpg', 'thumb_h', 'image/jpeg', 200, 96),
(1034, '2021-01-19 15:38:53', '2021-01-19 15:38:53', 112, 1, 1031, '/images/f7/7a/f77a5018f807d4a17b3e129ee06ba667_wide.jpg', 'wide', 'image/jpeg', 1920, 540),
(1035, '2021-01-19 15:38:53', '2021-01-19 15:38:53', 112, 1, 1031, '/images/f7/7a/f77a5018f807d4a17b3e129ee06ba667_mobile.jpg', 'mobile', 'image/jpeg', 320, 154),
(1036, '2021-01-19 15:38:53', '2021-01-19 15:38:53', 112, 1, 1031, '/images/f7/7a/f77a5018f807d4a17b3e129ee06ba667_square.jpg', 'square', 'image/jpeg', 320, 320),
(1037, '2021-01-19 15:38:53', '2021-01-19 15:38:53', 112, 1, 1031, '/images/f7/7a/f77a5018f807d4a17b3e129ee06ba667_square_small.jpg', 'square_small', 'image/jpeg', 75, 75),
(1038, '2021-01-19 15:39:45', '2021-01-19 15:39:45', 111, 1, NULL, '/images/e4/0d/e40da3a8eafabb68017d4bac7dfa5e18.jpg', 'original', 'image/jpeg', 2400, 1292),
(1039, '2021-01-19 15:39:45', '2021-01-19 15:39:45', 111, 1, 1038, '/images/e4/0d/e40da3a8eafabb68017d4bac7dfa5e18_default.jpg', 'default', 'image/jpeg', 500, 315),
(1040, '2021-01-19 15:39:45', '2021-01-19 15:39:45', 111, 1, 1038, '/images/e4/0d/e40da3a8eafabb68017d4bac7dfa5e18_thumb_h.jpg', 'thumb_h', 'image/jpeg', 200, 107),
(1041, '2021-01-19 15:39:45', '2021-01-19 15:39:45', 111, 1, 1038, '/images/e4/0d/e40da3a8eafabb68017d4bac7dfa5e18_wide.jpg', 'wide', 'image/jpeg', 1920, 540),
(1042, '2021-01-19 15:39:46', '2021-01-19 15:39:46', 111, 1, 1038, '/images/e4/0d/e40da3a8eafabb68017d4bac7dfa5e18_mobile.jpg', 'mobile', 'image/jpeg', 320, 172),
(1043, '2021-01-19 15:39:46', '2021-01-19 15:39:46', 111, 1, 1038, '/images/e4/0d/e40da3a8eafabb68017d4bac7dfa5e18_square.jpg', 'square', 'image/jpeg', 320, 320),
(1044, '2021-01-19 15:39:46', '2021-01-19 15:39:46', 111, 1, 1038, '/images/e4/0d/e40da3a8eafabb68017d4bac7dfa5e18_square_small.jpg', 'square_small', 'image/jpeg', 75, 75),
(1045, '2021-01-19 15:40:36', '2021-01-19 15:40:36', 110, 1, NULL, '/images/f9/cb/f9cb9007c96db3b07256b9dd516eb63e.jpg', 'original', 'image/jpeg', 1800, 1200),
(1046, '2021-01-19 15:40:36', '2021-01-19 15:40:36', 110, 1, 1045, '/images/f9/cb/f9cb9007c96db3b07256b9dd516eb63e_default.jpg', 'default', 'image/jpeg', 500, 315),
(1047, '2021-01-19 15:40:36', '2021-01-19 15:40:36', 110, 1, 1045, '/images/f9/cb/f9cb9007c96db3b07256b9dd516eb63e_thumb_h.jpg', 'thumb_h', 'image/jpeg', 200, 133),
(1048, '2021-01-19 15:40:37', '2021-01-19 15:40:37', 110, 1, 1045, '/images/f9/cb/f9cb9007c96db3b07256b9dd516eb63e_wide.jpg', 'wide', 'image/jpeg', 1920, 540),
(1049, '2021-01-19 15:40:37', '2021-01-19 15:40:37', 110, 1, 1045, '/images/f9/cb/f9cb9007c96db3b07256b9dd516eb63e_mobile.jpg', 'mobile', 'image/jpeg', 320, 213),
(1050, '2021-01-19 15:40:37', '2021-01-19 15:40:37', 110, 1, 1045, '/images/f9/cb/f9cb9007c96db3b07256b9dd516eb63e_square.jpg', 'square', 'image/jpeg', 320, 320),
(1051, '2021-01-19 15:40:37', '2021-01-19 15:40:37', 110, 1, 1045, '/images/f9/cb/f9cb9007c96db3b07256b9dd516eb63e_square_small.jpg', 'square_small', 'image/jpeg', 75, 75),
(1052, '2021-01-19 15:41:07', '2021-01-19 15:41:07', 109, 1, NULL, '/images/cd/36/cd363f2fa39e30d8edff5d6669580a43.png', 'original', 'image/png', 439, 198),
(1053, '2021-01-19 15:41:07', '2021-01-19 15:41:07', 109, 1, 1052, '/images/cd/36/cd363f2fa39e30d8edff5d6669580a43_default.png', 'default', 'image/png', 500, 315),
(1054, '2021-01-19 15:41:07', '2021-01-19 15:41:07', 109, 1, 1052, '/images/cd/36/cd363f2fa39e30d8edff5d6669580a43_thumb_h.png', 'thumb_h', 'image/png', 200, 90),
(1055, '2021-01-19 15:41:07', '2021-01-19 15:41:07', 109, 1, 1052, '/images/cd/36/cd363f2fa39e30d8edff5d6669580a43_wide.png', 'wide', 'image/png', 1920, 540),
(1056, '2021-01-19 15:41:08', '2021-01-19 15:41:08', 109, 1, 1052, '/images/cd/36/cd363f2fa39e30d8edff5d6669580a43_mobile.png', 'mobile', 'image/png', 320, 144),
(1057, '2021-01-19 15:41:08', '2021-01-19 15:41:08', 109, 1, 1052, '/images/cd/36/cd363f2fa39e30d8edff5d6669580a43_square.png', 'square', 'image/png', 320, 320),
(1058, '2021-01-19 15:41:08', '2021-01-19 15:41:08', 109, 1, 1052, '/images/cd/36/cd363f2fa39e30d8edff5d6669580a43_square_small.png', 'square_small', 'image/png', 75, 75),
(1059, '2021-01-19 15:42:15', '2021-01-19 15:42:15', 107, 1, NULL, '/images/6b/ed/6beda8a5b34ca56b4208f7edad1e913e.jpg', 'original', 'image/jpeg', 480, 320),
(1060, '2021-01-19 15:42:15', '2021-01-19 15:42:15', 107, 1, 1059, '/images/6b/ed/6beda8a5b34ca56b4208f7edad1e913e_default.jpg', 'default', 'image/jpeg', 500, 315),
(1061, '2021-01-19 15:42:15', '2021-01-19 15:42:15', 107, 1, 1059, '/images/6b/ed/6beda8a5b34ca56b4208f7edad1e913e_thumb_h.jpg', 'thumb_h', 'image/jpeg', 200, 133),
(1062, '2021-01-19 15:42:15', '2021-01-19 15:42:15', 107, 1, 1059, '/images/6b/ed/6beda8a5b34ca56b4208f7edad1e913e_wide.jpg', 'wide', 'image/jpeg', 1920, 540),
(1063, '2021-01-19 15:42:15', '2021-01-19 15:42:15', 107, 1, 1059, '/images/6b/ed/6beda8a5b34ca56b4208f7edad1e913e_mobile.jpg', 'mobile', 'image/jpeg', 320, 213),
(1064, '2021-01-19 15:42:15', '2021-01-19 15:42:15', 107, 1, 1059, '/images/6b/ed/6beda8a5b34ca56b4208f7edad1e913e_square.jpg', 'square', 'image/jpeg', 320, 320),
(1065, '2021-01-19 15:42:15', '2021-01-19 15:42:15', 107, 1, 1059, '/images/6b/ed/6beda8a5b34ca56b4208f7edad1e913e_square_small.jpg', 'square_small', 'image/jpeg', 75, 75),
(1066, '2021-01-19 15:43:24', '2021-01-19 15:43:24', 107, 1, NULL, '/images/48/2b/482b3c6438bf89f238e003029d35fd97.jpg', 'original', 'image/jpeg', 480, 320),
(1067, '2021-01-19 15:43:24', '2021-01-19 15:43:24', 107, 1, 1066, '/images/48/2b/482b3c6438bf89f238e003029d35fd97_default.jpg', 'default', 'image/jpeg', 500, 315),
(1068, '2021-01-19 15:43:24', '2021-01-19 15:43:24', 107, 1, 1066, '/images/48/2b/482b3c6438bf89f238e003029d35fd97_thumb_h.jpg', 'thumb_h', 'image/jpeg', 200, 133),
(1069, '2021-01-19 15:43:24', '2021-01-19 15:43:24', 107, 1, 1066, '/images/48/2b/482b3c6438bf89f238e003029d35fd97_wide.jpg', 'wide', 'image/jpeg', 1920, 540),
(1070, '2021-01-19 15:43:24', '2021-01-19 15:43:24', 107, 1, 1066, '/images/48/2b/482b3c6438bf89f238e003029d35fd97_mobile.jpg', 'mobile', 'image/jpeg', 320, 213),
(1071, '2021-01-19 15:43:24', '2021-01-19 15:43:24', 107, 1, 1066, '/images/48/2b/482b3c6438bf89f238e003029d35fd97_square.jpg', 'square', 'image/jpeg', 320, 320),
(1072, '2021-01-19 15:43:24', '2021-01-19 15:43:24', 107, 1, 1066, '/images/48/2b/482b3c6438bf89f238e003029d35fd97_square_small.jpg', 'square_small', 'image/jpeg', 75, 75),
(1073, '2021-01-19 15:45:05', '2021-01-19 15:45:05', 106, 1, NULL, '/images/fb/1b/fb1b97508e6044790a4ef449931d8eb4.jpg', 'original', 'image/jpeg', 960, 960),
(1074, '2021-01-19 15:45:05', '2021-01-19 15:45:05', 106, 1, 1073, '/images/fb/1b/fb1b97508e6044790a4ef449931d8eb4_default.jpg', 'default', 'image/jpeg', 500, 315),
(1075, '2021-01-19 15:45:05', '2021-01-19 15:45:05', 106, 1, 1073, '/images/fb/1b/fb1b97508e6044790a4ef449931d8eb4_thumb_h.jpg', 'thumb_h', 'image/jpeg', 200, 200),
(1076, '2021-01-19 15:45:05', '2021-01-19 15:45:05', 106, 1, 1073, '/images/fb/1b/fb1b97508e6044790a4ef449931d8eb4_wide.jpg', 'wide', 'image/jpeg', 1920, 540),
(1077, '2021-01-19 15:45:05', '2021-01-19 15:45:05', 106, 1, 1073, '/images/fb/1b/fb1b97508e6044790a4ef449931d8eb4_mobile.jpg', 'mobile', 'image/jpeg', 320, 320),
(1078, '2021-01-19 15:45:05', '2021-01-19 15:45:05', 106, 1, 1073, '/images/fb/1b/fb1b97508e6044790a4ef449931d8eb4_square.jpg', 'square', 'image/jpeg', 320, 320),
(1079, '2021-01-19 15:45:05', '2021-01-19 15:45:05', 106, 1, 1073, '/images/fb/1b/fb1b97508e6044790a4ef449931d8eb4_square_small.jpg', 'square_small', 'image/jpeg', 75, 75),
(1080, '2021-01-19 15:45:37', '2021-01-19 15:45:37', 105, 1, NULL, '/images/86/a2/86a2038ff2a662ea06f075e3069e6297.png', 'original', 'image/png', 493, 493),
(1081, '2021-01-19 15:45:37', '2021-01-19 15:45:37', 105, 1, 1080, '/images/86/a2/86a2038ff2a662ea06f075e3069e6297_default.png', 'default', 'image/png', 500, 315),
(1082, '2021-01-19 15:45:37', '2021-01-19 15:45:37', 105, 1, 1080, '/images/86/a2/86a2038ff2a662ea06f075e3069e6297_thumb_h.png', 'thumb_h', 'image/png', 200, 200),
(1083, '2021-01-19 15:45:37', '2021-01-19 15:45:37', 105, 1, 1080, '/images/86/a2/86a2038ff2a662ea06f075e3069e6297_wide.png', 'wide', 'image/png', 1920, 540),
(1084, '2021-01-19 15:45:37', '2021-01-19 15:45:37', 105, 1, 1080, '/images/86/a2/86a2038ff2a662ea06f075e3069e6297_mobile.png', 'mobile', 'image/png', 320, 320),
(1085, '2021-01-19 15:45:37', '2021-01-19 15:45:37', 105, 1, 1080, '/images/86/a2/86a2038ff2a662ea06f075e3069e6297_square.png', 'square', 'image/png', 320, 320),
(1086, '2021-01-19 15:45:37', '2021-01-19 15:45:37', 105, 1, 1080, '/images/86/a2/86a2038ff2a662ea06f075e3069e6297_square_small.png', 'square_small', 'image/png', 75, 75),
(1087, '2021-01-19 15:46:24', '2021-01-19 15:46:24', 106, 1, NULL, '/images/eb/24/eb244dad4d62a68d42c80f1846cdfbe7.png', 'original', 'image/png', 1200, 423),
(1088, '2021-01-19 15:46:24', '2021-01-19 15:46:24', 106, 1, 1087, '/images/eb/24/eb244dad4d62a68d42c80f1846cdfbe7_default.png', 'default', 'image/png', 500, 315),
(1089, '2021-01-19 15:46:24', '2021-01-19 15:46:24', 106, 1, 1087, '/images/eb/24/eb244dad4d62a68d42c80f1846cdfbe7_thumb_h.png', 'thumb_h', 'image/png', 200, 70),
(1090, '2021-01-19 15:46:24', '2021-01-19 15:46:24', 106, 1, 1087, '/images/eb/24/eb244dad4d62a68d42c80f1846cdfbe7_wide.png', 'wide', 'image/png', 1920, 540),
(1091, '2021-01-19 15:46:24', '2021-01-19 15:46:24', 106, 1, 1087, '/images/eb/24/eb244dad4d62a68d42c80f1846cdfbe7_mobile.png', 'mobile', 'image/png', 320, 112),
(1092, '2021-01-19 15:46:24', '2021-01-19 15:46:24', 106, 1, 1087, '/images/eb/24/eb244dad4d62a68d42c80f1846cdfbe7_square.png', 'square', 'image/png', 320, 320),
(1093, '2021-01-19 15:46:24', '2021-01-19 15:46:24', 106, 1, 1087, '/images/eb/24/eb244dad4d62a68d42c80f1846cdfbe7_square_small.png', 'square_small', 'image/png', 75, 75),
(1094, '2021-01-19 15:47:31', '2021-01-19 15:47:31', 104, 1, NULL, '/images/36/80/3680beff2e55093d082233c9bb37badf.png', 'original', 'image/png', 400, 400),
(1095, '2021-01-19 15:47:31', '2021-01-19 15:47:31', 104, 1, 1094, '/images/36/80/3680beff2e55093d082233c9bb37badf_default.png', 'default', 'image/png', 500, 315),
(1096, '2021-01-19 15:47:31', '2021-01-19 15:47:31', 104, 1, 1094, '/images/36/80/3680beff2e55093d082233c9bb37badf_thumb_h.png', 'thumb_h', 'image/png', 200, 200),
(1097, '2021-01-19 15:47:31', '2021-01-19 15:47:31', 104, 1, 1094, '/images/36/80/3680beff2e55093d082233c9bb37badf_wide.png', 'wide', 'image/png', 1920, 540),
(1098, '2021-01-19 15:47:31', '2021-01-19 15:47:31', 104, 1, 1094, '/images/36/80/3680beff2e55093d082233c9bb37badf_mobile.png', 'mobile', 'image/png', 320, 320),
(1099, '2021-01-19 15:47:31', '2021-01-19 15:47:31', 104, 1, 1094, '/images/36/80/3680beff2e55093d082233c9bb37badf_square.png', 'square', 'image/png', 320, 320),
(1100, '2021-01-19 15:47:31', '2021-01-19 15:47:31', 104, 1, 1094, '/images/36/80/3680beff2e55093d082233c9bb37badf_square_small.png', 'square_small', 'image/png', 75, 75),
(1101, '2021-01-19 15:48:07', '2021-01-19 15:48:07', 103, 1, NULL, '/images/d6/b1/d6b150df909404173841a030627c0e24.jpg', 'original', 'image/jpeg', 1782, 801),
(1102, '2021-01-19 15:48:07', '2021-01-19 15:48:07', 103, 1, 1101, '/images/d6/b1/d6b150df909404173841a030627c0e24_default.jpg', 'default', 'image/jpeg', 500, 315),
(1103, '2021-01-19 15:48:07', '2021-01-19 15:48:07', 103, 1, 1101, '/images/d6/b1/d6b150df909404173841a030627c0e24_thumb_h.jpg', 'thumb_h', 'image/jpeg', 200, 89),
(1104, '2021-01-19 15:48:07', '2021-01-19 15:48:07', 103, 1, 1101, '/images/d6/b1/d6b150df909404173841a030627c0e24_wide.jpg', 'wide', 'image/jpeg', 1920, 540),
(1105, '2021-01-19 15:48:07', '2021-01-19 15:48:07', 103, 1, 1101, '/images/d6/b1/d6b150df909404173841a030627c0e24_mobile.jpg', 'mobile', 'image/jpeg', 320, 143),
(1106, '2021-01-19 15:48:07', '2021-01-19 15:48:07', 103, 1, 1101, '/images/d6/b1/d6b150df909404173841a030627c0e24_square.jpg', 'square', 'image/jpeg', 320, 320),
(1107, '2021-01-19 15:48:07', '2021-01-19 15:48:07', 103, 1, 1101, '/images/d6/b1/d6b150df909404173841a030627c0e24_square_small.jpg', 'square_small', 'image/jpeg', 75, 75),
(1108, '2021-01-19 15:48:40', '2021-01-19 15:48:40', 102, 1, NULL, '/images/4b/b3/4bb3bdc37aea8fc2c213facab199573d.jpg', 'original', 'image/jpeg', 662, 342),
(1109, '2021-01-19 15:48:40', '2021-01-19 15:48:40', 102, 1, 1108, '/images/4b/b3/4bb3bdc37aea8fc2c213facab199573d_default.jpg', 'default', 'image/jpeg', 500, 315),
(1110, '2021-01-19 15:48:40', '2021-01-19 15:48:40', 102, 1, 1108, '/images/4b/b3/4bb3bdc37aea8fc2c213facab199573d_thumb_h.jpg', 'thumb_h', 'image/jpeg', 200, 103),
(1111, '2021-01-19 15:48:40', '2021-01-19 15:48:40', 102, 1, 1108, '/images/4b/b3/4bb3bdc37aea8fc2c213facab199573d_wide.jpg', 'wide', 'image/jpeg', 1920, 540),
(1112, '2021-01-19 15:48:40', '2021-01-19 15:48:40', 102, 1, 1108, '/images/4b/b3/4bb3bdc37aea8fc2c213facab199573d_mobile.jpg', 'mobile', 'image/jpeg', 320, 165),
(1113, '2021-01-19 15:48:40', '2021-01-19 15:48:40', 102, 1, 1108, '/images/4b/b3/4bb3bdc37aea8fc2c213facab199573d_square.jpg', 'square', 'image/jpeg', 320, 320),
(1114, '2021-01-19 15:48:40', '2021-01-19 15:48:40', 102, 1, 1108, '/images/4b/b3/4bb3bdc37aea8fc2c213facab199573d_square_small.jpg', 'square_small', 'image/jpeg', 75, 75),
(1115, '2021-01-19 15:52:47', '2021-01-19 15:52:47', 101, 1, NULL, '/images/59/3f/593fee9be0246b55f66db6d76319896d.jpg', 'original', 'image/jpeg', 400, 300),
(1116, '2021-01-19 15:52:47', '2021-01-19 15:52:47', 101, 1, 1115, '/images/59/3f/593fee9be0246b55f66db6d76319896d_default.jpg', 'default', 'image/jpeg', 500, 315),
(1117, '2021-01-19 15:52:47', '2021-01-19 15:52:47', 101, 1, 1115, '/images/59/3f/593fee9be0246b55f66db6d76319896d_thumb_h.jpg', 'thumb_h', 'image/jpeg', 200, 150),
(1118, '2021-01-19 15:52:48', '2021-01-19 15:52:48', 101, 1, 1115, '/images/59/3f/593fee9be0246b55f66db6d76319896d_wide.jpg', 'wide', 'image/jpeg', 1920, 540),
(1119, '2021-01-19 15:52:48', '2021-01-19 15:52:48', 101, 1, 1115, '/images/59/3f/593fee9be0246b55f66db6d76319896d_mobile.jpg', 'mobile', 'image/jpeg', 320, 240),
(1120, '2021-01-19 15:52:48', '2021-01-19 15:52:48', 101, 1, 1115, '/images/59/3f/593fee9be0246b55f66db6d76319896d_square.jpg', 'square', 'image/jpeg', 320, 320),
(1121, '2021-01-19 15:52:48', '2021-01-19 15:52:48', 101, 1, 1115, '/images/59/3f/593fee9be0246b55f66db6d76319896d_square_small.jpg', 'square_small', 'image/jpeg', 75, 75),
(1122, '2021-01-19 15:53:51', '2021-01-19 15:53:51', 100, 1, NULL, '/images/e8/18/e818ccfc400d9aea3a8f10aad7ae52dd.jpg', 'original', 'image/jpeg', 625, 416),
(1123, '2021-01-19 15:53:51', '2021-01-19 15:53:51', 100, 1, 1122, '/images/e8/18/e818ccfc400d9aea3a8f10aad7ae52dd_default.jpg', 'default', 'image/jpeg', 500, 315),
(1124, '2021-01-19 15:53:51', '2021-01-19 15:53:51', 100, 1, 1122, '/images/e8/18/e818ccfc400d9aea3a8f10aad7ae52dd_thumb_h.jpg', 'thumb_h', 'image/jpeg', 200, 133),
(1125, '2021-01-19 15:53:51', '2021-01-19 15:53:51', 100, 1, 1122, '/images/e8/18/e818ccfc400d9aea3a8f10aad7ae52dd_wide.jpg', 'wide', 'image/jpeg', 1920, 540),
(1126, '2021-01-19 15:53:51', '2021-01-19 15:53:51', 100, 1, 1122, '/images/e8/18/e818ccfc400d9aea3a8f10aad7ae52dd_mobile.jpg', 'mobile', 'image/jpeg', 320, 212),
(1127, '2021-01-19 15:53:51', '2021-01-19 15:53:51', 100, 1, 1122, '/images/e8/18/e818ccfc400d9aea3a8f10aad7ae52dd_square.jpg', 'square', 'image/jpeg', 320, 320),
(1128, '2021-01-19 15:53:51', '2021-01-19 15:53:51', 100, 1, 1122, '/images/e8/18/e818ccfc400d9aea3a8f10aad7ae52dd_square_small.jpg', 'square_small', 'image/jpeg', 75, 75),
(1129, '2021-01-19 15:54:21', '2021-01-19 15:54:21', 99, 1, NULL, '/images/f9/17/f91764d3d1a45e231c40f97c1bb948e6.jpg', 'original', 'image/jpeg', 1600, 900),
(1130, '2021-01-19 15:54:21', '2021-01-19 15:54:21', 99, 1, 1129, '/images/f9/17/f91764d3d1a45e231c40f97c1bb948e6_default.jpg', 'default', 'image/jpeg', 500, 315),
(1131, '2021-01-19 15:54:21', '2021-01-19 15:54:21', 99, 1, 1129, '/images/f9/17/f91764d3d1a45e231c40f97c1bb948e6_thumb_h.jpg', 'thumb_h', 'image/jpeg', 200, 112),
(1132, '2021-01-19 15:54:21', '2021-01-19 15:54:21', 99, 1, 1129, '/images/f9/17/f91764d3d1a45e231c40f97c1bb948e6_wide.jpg', 'wide', 'image/jpeg', 1920, 540),
(1133, '2021-01-19 15:54:22', '2021-01-19 15:54:22', 99, 1, 1129, '/images/f9/17/f91764d3d1a45e231c40f97c1bb948e6_mobile.jpg', 'mobile', 'image/jpeg', 320, 180),
(1134, '2021-01-19 15:54:22', '2021-01-19 15:54:22', 99, 1, 1129, '/images/f9/17/f91764d3d1a45e231c40f97c1bb948e6_square.jpg', 'square', 'image/jpeg', 320, 320),
(1135, '2021-01-19 15:54:22', '2021-01-19 15:54:22', 99, 1, 1129, '/images/f9/17/f91764d3d1a45e231c40f97c1bb948e6_square_small.jpg', 'square_small', 'image/jpeg', 75, 75),
(1136, '2021-01-19 15:55:38', '2021-01-19 15:55:38', 98, 1, NULL, '/images/75/cc/75cc0948201cd91f18e592766e1bec96.png', 'original', 'image/png', 355, 200),
(1137, '2021-01-19 15:55:39', '2021-01-19 15:55:39', 98, 1, 1136, '/images/75/cc/75cc0948201cd91f18e592766e1bec96_default.png', 'default', 'image/png', 500, 315),
(1138, '2021-01-19 15:55:39', '2021-01-19 15:55:39', 98, 1, 1136, '/images/75/cc/75cc0948201cd91f18e592766e1bec96_thumb_h.png', 'thumb_h', 'image/png', 200, 112),
(1139, '2021-01-19 15:55:39', '2021-01-19 15:55:39', 98, 1, 1136, '/images/75/cc/75cc0948201cd91f18e592766e1bec96_wide.png', 'wide', 'image/png', 1920, 540),
(1140, '2021-01-19 15:55:39', '2021-01-19 15:55:39', 98, 1, 1136, '/images/75/cc/75cc0948201cd91f18e592766e1bec96_mobile.png', 'mobile', 'image/png', 320, 180),
(1141, '2021-01-19 15:55:39', '2021-01-19 15:55:39', 98, 1, 1136, '/images/75/cc/75cc0948201cd91f18e592766e1bec96_square.png', 'square', 'image/png', 320, 320),
(1142, '2021-01-19 15:55:39', '2021-01-19 15:55:39', 98, 1, 1136, '/images/75/cc/75cc0948201cd91f18e592766e1bec96_square_small.png', 'square_small', 'image/png', 75, 75),
(1143, '2021-01-19 15:57:04', '2021-01-19 15:57:04', 97, 1, NULL, '/images/ab/9e/ab9e51db44dbc4e162b266303ad42575.jpg', 'original', 'image/jpeg', 1281, 726),
(1144, '2021-01-19 15:57:04', '2021-01-19 15:57:04', 97, 1, 1143, '/images/ab/9e/ab9e51db44dbc4e162b266303ad42575_default.jpg', 'default', 'image/jpeg', 500, 315),
(1145, '2021-01-19 15:57:05', '2021-01-19 15:57:05', 97, 1, 1143, '/images/ab/9e/ab9e51db44dbc4e162b266303ad42575_thumb_h.jpg', 'thumb_h', 'image/jpeg', 200, 113),
(1146, '2021-01-19 15:57:05', '2021-01-19 15:57:05', 97, 1, 1143, '/images/ab/9e/ab9e51db44dbc4e162b266303ad42575_wide.jpg', 'wide', 'image/jpeg', 1920, 540),
(1147, '2021-01-19 15:57:05', '2021-01-19 15:57:05', 97, 1, 1143, '/images/ab/9e/ab9e51db44dbc4e162b266303ad42575_mobile.jpg', 'mobile', 'image/jpeg', 320, 181),
(1148, '2021-01-19 15:57:05', '2021-01-19 15:57:05', 97, 1, 1143, '/images/ab/9e/ab9e51db44dbc4e162b266303ad42575_square.jpg', 'square', 'image/jpeg', 320, 320),
(1149, '2021-01-19 15:57:05', '2021-01-19 15:57:05', 97, 1, 1143, '/images/ab/9e/ab9e51db44dbc4e162b266303ad42575_square_small.jpg', 'square_small', 'image/jpeg', 75, 75),
(1150, '2021-01-19 15:59:29', '2021-01-19 15:59:29', 96, 1, NULL, '/images/f4/27/f427b8350579b478b996f017b0d71e41.png', 'original', 'image/png', 303, 166),
(1151, '2021-01-19 15:59:29', '2021-01-19 15:59:29', 96, 1, 1150, '/images/f4/27/f427b8350579b478b996f017b0d71e41_default.png', 'default', 'image/png', 500, 315),
(1152, '2021-01-19 15:59:29', '2021-01-19 15:59:29', 96, 1, 1150, '/images/f4/27/f427b8350579b478b996f017b0d71e41_thumb_h.png', 'thumb_h', 'image/png', 200, 109),
(1153, '2021-01-19 15:59:29', '2021-01-19 15:59:29', 96, 1, 1150, '/images/f4/27/f427b8350579b478b996f017b0d71e41_wide.png', 'wide', 'image/png', 1920, 540),
(1154, '2021-01-19 15:59:29', '2021-01-19 15:59:29', 96, 1, 1150, '/images/f4/27/f427b8350579b478b996f017b0d71e41_mobile.png', 'mobile', 'image/png', 320, 175),
(1155, '2021-01-19 15:59:29', '2021-01-19 15:59:29', 96, 1, 1150, '/images/f4/27/f427b8350579b478b996f017b0d71e41_square.png', 'square', 'image/png', 320, 320),
(1156, '2021-01-19 15:59:29', '2021-01-19 15:59:29', 96, 1, 1150, '/images/f4/27/f427b8350579b478b996f017b0d71e41_square_small.png', 'square_small', 'image/png', 75, 75),
(1157, '2021-01-19 16:00:09', '2021-01-19 16:00:09', 95, 1, NULL, '/images/87/62/87621b3f4fc7f34030b96a5642f9dfbe.jpg', 'original', 'image/jpeg', 819, 451),
(1158, '2021-01-19 16:00:09', '2021-01-19 16:00:09', 95, 1, 1157, '/images/87/62/87621b3f4fc7f34030b96a5642f9dfbe_default.jpg', 'default', 'image/jpeg', 500, 315),
(1159, '2021-01-19 16:00:09', '2021-01-19 16:00:09', 95, 1, 1157, '/images/87/62/87621b3f4fc7f34030b96a5642f9dfbe_thumb_h.jpg', 'thumb_h', 'image/jpeg', 200, 110),
(1160, '2021-01-19 16:00:09', '2021-01-19 16:00:09', 95, 1, 1157, '/images/87/62/87621b3f4fc7f34030b96a5642f9dfbe_wide.jpg', 'wide', 'image/jpeg', 1920, 540),
(1161, '2021-01-19 16:00:09', '2021-01-19 16:00:09', 95, 1, 1157, '/images/87/62/87621b3f4fc7f34030b96a5642f9dfbe_mobile.jpg', 'mobile', 'image/jpeg', 320, 176),
(1162, '2021-01-19 16:00:09', '2021-01-19 16:00:09', 95, 1, 1157, '/images/87/62/87621b3f4fc7f34030b96a5642f9dfbe_square.jpg', 'square', 'image/jpeg', 320, 320),
(1163, '2021-01-19 16:00:09', '2021-01-19 16:00:09', 95, 1, 1157, '/images/87/62/87621b3f4fc7f34030b96a5642f9dfbe_square_small.jpg', 'square_small', 'image/jpeg', 75, 75),
(1164, '2021-01-19 16:00:59', '2021-01-19 16:00:59', 94, 1, NULL, '/images/ee/b2/eeb2db9180e291575ef021ccfb06c182.jpg', 'original', 'image/jpeg', 500, 292),
(1165, '2021-01-19 16:00:59', '2021-01-19 16:00:59', 94, 1, 1164, '/images/ee/b2/eeb2db9180e291575ef021ccfb06c182_default.jpg', 'default', 'image/jpeg', 500, 315),
(1166, '2021-01-19 16:00:59', '2021-01-19 16:00:59', 94, 1, 1164, '/images/ee/b2/eeb2db9180e291575ef021ccfb06c182_thumb_h.jpg', 'thumb_h', 'image/jpeg', 200, 116),
(1167, '2021-01-19 16:00:59', '2021-01-19 16:00:59', 94, 1, 1164, '/images/ee/b2/eeb2db9180e291575ef021ccfb06c182_wide.jpg', 'wide', 'image/jpeg', 1920, 540),
(1168, '2021-01-19 16:00:59', '2021-01-19 16:00:59', 94, 1, 1164, '/images/ee/b2/eeb2db9180e291575ef021ccfb06c182_mobile.jpg', 'mobile', 'image/jpeg', 320, 186),
(1169, '2021-01-19 16:00:59', '2021-01-19 16:00:59', 94, 1, 1164, '/images/ee/b2/eeb2db9180e291575ef021ccfb06c182_square.jpg', 'square', 'image/jpeg', 320, 320),
(1170, '2021-01-19 16:00:59', '2021-01-19 16:00:59', 94, 1, 1164, '/images/ee/b2/eeb2db9180e291575ef021ccfb06c182_square_small.jpg', 'square_small', 'image/jpeg', 75, 75),
(1171, '2021-01-19 16:01:40', '2021-01-19 16:01:40', 93, 1, NULL, '/images/15/f7/15f7c6148b81480ee08645df60b29aa3.jpg', 'original', 'image/jpeg', 500, 367),
(1172, '2021-01-19 16:01:40', '2021-01-19 16:01:40', 93, 1, 1171, '/images/15/f7/15f7c6148b81480ee08645df60b29aa3_default.jpg', 'default', 'image/jpeg', 500, 315),
(1173, '2021-01-19 16:01:41', '2021-01-19 16:01:41', 93, 1, 1171, '/images/15/f7/15f7c6148b81480ee08645df60b29aa3_thumb_h.jpg', 'thumb_h', 'image/jpeg', 200, 146),
(1174, '2021-01-19 16:01:41', '2021-01-19 16:01:41', 93, 1, 1171, '/images/15/f7/15f7c6148b81480ee08645df60b29aa3_wide.jpg', 'wide', 'image/jpeg', 1920, 540),
(1175, '2021-01-19 16:01:41', '2021-01-19 16:01:41', 93, 1, 1171, '/images/15/f7/15f7c6148b81480ee08645df60b29aa3_mobile.jpg', 'mobile', 'image/jpeg', 320, 234),
(1176, '2021-01-19 16:01:41', '2021-01-19 16:01:41', 93, 1, 1171, '/images/15/f7/15f7c6148b81480ee08645df60b29aa3_square.jpg', 'square', 'image/jpeg', 320, 320),
(1177, '2021-01-19 16:01:41', '2021-01-19 16:01:41', 93, 1, 1171, '/images/15/f7/15f7c6148b81480ee08645df60b29aa3_square_small.jpg', 'square_small', 'image/jpeg', 75, 75),
(1178, '2021-01-19 16:02:11', '2021-01-19 16:02:11', 92, 1, NULL, '/images/c4/ee/c4ee8c1f4baa3b89c99f84ac9613c742.jpg', 'original', 'image/jpeg', 866, 650),
(1179, '2021-01-19 16:02:11', '2021-01-19 16:02:11', 92, 1, 1178, '/images/c4/ee/c4ee8c1f4baa3b89c99f84ac9613c742_default.jpg', 'default', 'image/jpeg', 500, 315),
(1180, '2021-01-19 16:02:11', '2021-01-19 16:02:11', 92, 1, 1178, '/images/c4/ee/c4ee8c1f4baa3b89c99f84ac9613c742_thumb_h.jpg', 'thumb_h', 'image/jpeg', 200, 150),
(1181, '2021-01-19 16:02:11', '2021-01-19 16:02:11', 92, 1, 1178, '/images/c4/ee/c4ee8c1f4baa3b89c99f84ac9613c742_wide.jpg', 'wide', 'image/jpeg', 1920, 540),
(1182, '2021-01-19 16:02:11', '2021-01-19 16:02:11', 92, 1, 1178, '/images/c4/ee/c4ee8c1f4baa3b89c99f84ac9613c742_mobile.jpg', 'mobile', 'image/jpeg', 320, 240),
(1183, '2021-01-19 16:02:11', '2021-01-19 16:02:11', 92, 1, 1178, '/images/c4/ee/c4ee8c1f4baa3b89c99f84ac9613c742_square.jpg', 'square', 'image/jpeg', 320, 320),
(1184, '2021-01-19 16:02:11', '2021-01-19 16:02:11', 92, 1, 1178, '/images/c4/ee/c4ee8c1f4baa3b89c99f84ac9613c742_square_small.jpg', 'square_small', 'image/jpeg', 75, 75),
(1185, '2021-01-19 16:02:44', '2021-01-19 16:02:44', 91, 1, NULL, '/images/8e/a0/8ea0d361e27529c7b6909a4f146835fb.png', 'original', 'image/png', 900, 500),
(1186, '2021-01-19 16:02:44', '2021-01-19 16:02:44', 91, 1, 1185, '/images/8e/a0/8ea0d361e27529c7b6909a4f146835fb_default.png', 'default', 'image/png', 500, 315),
(1187, '2021-01-19 16:02:44', '2021-01-19 16:02:44', 91, 1, 1185, '/images/8e/a0/8ea0d361e27529c7b6909a4f146835fb_thumb_h.png', 'thumb_h', 'image/png', 200, 111),
(1188, '2021-01-19 16:02:45', '2021-01-19 16:02:45', 91, 1, 1185, '/images/8e/a0/8ea0d361e27529c7b6909a4f146835fb_wide.png', 'wide', 'image/png', 1920, 540),
(1189, '2021-01-19 16:02:45', '2021-01-19 16:02:45', 91, 1, 1185, '/images/8e/a0/8ea0d361e27529c7b6909a4f146835fb_mobile.png', 'mobile', 'image/png', 320, 177),
(1190, '2021-01-19 16:02:45', '2021-01-19 16:02:45', 91, 1, 1185, '/images/8e/a0/8ea0d361e27529c7b6909a4f146835fb_square.png', 'square', 'image/png', 320, 320),
(1191, '2021-01-19 16:02:45', '2021-01-19 16:02:45', 91, 1, 1185, '/images/8e/a0/8ea0d361e27529c7b6909a4f146835fb_square_small.png', 'square_small', 'image/png', 75, 75),
(1192, '2021-01-19 16:03:20', '2021-01-19 16:03:20', 90, 1, NULL, '/images/12/b3/12b371fafbf3807b602d2a510055c55a.png', 'original', 'image/png', 318, 159),
(1193, '2021-01-19 16:03:20', '2021-01-19 16:03:20', 90, 1, 1192, '/images/12/b3/12b371fafbf3807b602d2a510055c55a_default.png', 'default', 'image/png', 500, 315),
(1194, '2021-01-19 16:03:20', '2021-01-19 16:03:20', 90, 1, 1192, '/images/12/b3/12b371fafbf3807b602d2a510055c55a_thumb_h.png', 'thumb_h', 'image/png', 200, 100),
(1195, '2021-01-19 16:03:20', '2021-01-19 16:03:20', 90, 1, 1192, '/images/12/b3/12b371fafbf3807b602d2a510055c55a_wide.png', 'wide', 'image/png', 1920, 540),
(1196, '2021-01-19 16:03:20', '2021-01-19 16:03:20', 90, 1, 1192, '/images/12/b3/12b371fafbf3807b602d2a510055c55a_mobile.png', 'mobile', 'image/png', 320, 160),
(1197, '2021-01-19 16:03:20', '2021-01-19 16:03:20', 90, 1, 1192, '/images/12/b3/12b371fafbf3807b602d2a510055c55a_square.png', 'square', 'image/png', 320, 320),
(1198, '2021-01-19 16:03:20', '2021-01-19 16:03:20', 90, 1, 1192, '/images/12/b3/12b371fafbf3807b602d2a510055c55a_square_small.png', 'square_small', 'image/png', 75, 75),
(1199, '2021-01-19 16:03:34', '2021-01-19 16:03:34', 89, 1, NULL, '/images/8e/83/8e83ecfb8615c1e6ca93581fa7d63d49.png', 'original', 'image/png', 318, 159),
(1200, '2021-01-19 16:03:34', '2021-01-19 16:03:34', 89, 1, 1199, '/images/8e/83/8e83ecfb8615c1e6ca93581fa7d63d49_default.png', 'default', 'image/png', 500, 315),
(1201, '2021-01-19 16:03:34', '2021-01-19 16:03:34', 89, 1, 1199, '/images/8e/83/8e83ecfb8615c1e6ca93581fa7d63d49_thumb_h.png', 'thumb_h', 'image/png', 200, 100),
(1202, '2021-01-19 16:03:34', '2021-01-19 16:03:34', 89, 1, 1199, '/images/8e/83/8e83ecfb8615c1e6ca93581fa7d63d49_wide.png', 'wide', 'image/png', 1920, 540),
(1203, '2021-01-19 16:03:34', '2021-01-19 16:03:34', 89, 1, 1199, '/images/8e/83/8e83ecfb8615c1e6ca93581fa7d63d49_mobile.png', 'mobile', 'image/png', 320, 160),
(1204, '2021-01-19 16:03:34', '2021-01-19 16:03:34', 89, 1, 1199, '/images/8e/83/8e83ecfb8615c1e6ca93581fa7d63d49_square.png', 'square', 'image/png', 320, 320),
(1205, '2021-01-19 16:03:34', '2021-01-19 16:03:34', 89, 1, 1199, '/images/8e/83/8e83ecfb8615c1e6ca93581fa7d63d49_square_small.png', 'square_small', 'image/png', 75, 75),
(1206, '2021-01-19 16:04:19', '2021-01-19 16:04:19', 89, 1, NULL, '/images/84/81/8481b6e3628376c6cef46597d09c0f14.jpg', 'original', 'image/jpeg', 439, 198),
(1207, '2021-01-19 16:04:19', '2021-01-19 16:04:19', 89, 1, 1206, '/images/84/81/8481b6e3628376c6cef46597d09c0f14_default.jpg', 'default', 'image/jpeg', 500, 315),
(1208, '2021-01-19 16:04:19', '2021-01-19 16:04:19', 89, 1, 1206, '/images/84/81/8481b6e3628376c6cef46597d09c0f14_thumb_h.jpg', 'thumb_h', 'image/jpeg', 200, 90),
(1209, '2021-01-19 16:04:19', '2021-01-19 16:04:19', 89, 1, 1206, '/images/84/81/8481b6e3628376c6cef46597d09c0f14_wide.jpg', 'wide', 'image/jpeg', 1920, 540),
(1210, '2021-01-19 16:04:19', '2021-01-19 16:04:19', 89, 1, 1206, '/images/84/81/8481b6e3628376c6cef46597d09c0f14_mobile.jpg', 'mobile', 'image/jpeg', 320, 144),
(1211, '2021-01-19 16:04:19', '2021-01-19 16:04:19', 89, 1, 1206, '/images/84/81/8481b6e3628376c6cef46597d09c0f14_square.jpg', 'square', 'image/jpeg', 320, 320),
(1212, '2021-01-19 16:04:19', '2021-01-19 16:04:19', 89, 1, 1206, '/images/84/81/8481b6e3628376c6cef46597d09c0f14_square_small.jpg', 'square_small', 'image/jpeg', 75, 75),
(1213, '2021-01-19 16:05:26', '2021-01-19 16:05:26', 88, 1, NULL, '/images/30/0a/300ab6a1a1bffdc739e0683097807432.png', 'original', 'image/png', 318, 159),
(1214, '2021-01-19 16:05:26', '2021-01-19 16:05:26', 88, 1, 1213, '/images/30/0a/300ab6a1a1bffdc739e0683097807432_default.png', 'default', 'image/png', 500, 315),
(1215, '2021-01-19 16:05:26', '2021-01-19 16:05:26', 88, 1, 1213, '/images/30/0a/300ab6a1a1bffdc739e0683097807432_thumb_h.png', 'thumb_h', 'image/png', 200, 100),
(1216, '2021-01-19 16:05:26', '2021-01-19 16:05:26', 88, 1, 1213, '/images/30/0a/300ab6a1a1bffdc739e0683097807432_wide.png', 'wide', 'image/png', 1920, 540),
(1217, '2021-01-19 16:05:26', '2021-01-19 16:05:26', 88, 1, 1213, '/images/30/0a/300ab6a1a1bffdc739e0683097807432_mobile.png', 'mobile', 'image/png', 320, 160),
(1218, '2021-01-19 16:05:26', '2021-01-19 16:05:26', 88, 1, 1213, '/images/30/0a/300ab6a1a1bffdc739e0683097807432_square.png', 'square', 'image/png', 320, 320),
(1219, '2021-01-19 16:05:26', '2021-01-19 16:05:26', 88, 1, 1213, '/images/30/0a/300ab6a1a1bffdc739e0683097807432_square_small.png', 'square_small', 'image/png', 75, 75),
(1220, '2021-01-19 16:07:13', '2021-01-19 16:07:13', 87, 1, NULL, '/images/6a/4b/6a4bd11671d7f8bd9b151401dc9144f8.png', 'original', 'image/png', 300, 168),
(1221, '2021-01-19 16:07:13', '2021-01-19 16:07:13', 87, 1, 1220, '/images/6a/4b/6a4bd11671d7f8bd9b151401dc9144f8_default.png', 'default', 'image/png', 500, 315),
(1222, '2021-01-19 16:07:13', '2021-01-19 16:07:13', 87, 1, 1220, '/images/6a/4b/6a4bd11671d7f8bd9b151401dc9144f8_thumb_h.png', 'thumb_h', 'image/png', 200, 112),
(1223, '2021-01-19 16:07:13', '2021-01-19 16:07:13', 87, 1, 1220, '/images/6a/4b/6a4bd11671d7f8bd9b151401dc9144f8_wide.png', 'wide', 'image/png', 1920, 540),
(1224, '2021-01-19 16:07:13', '2021-01-19 16:07:13', 87, 1, 1220, '/images/6a/4b/6a4bd11671d7f8bd9b151401dc9144f8_mobile.png', 'mobile', 'image/png', 320, 179),
(1225, '2021-01-19 16:07:13', '2021-01-19 16:07:13', 87, 1, 1220, '/images/6a/4b/6a4bd11671d7f8bd9b151401dc9144f8_square.png', 'square', 'image/png', 320, 320),
(1226, '2021-01-19 16:07:13', '2021-01-19 16:07:13', 87, 1, 1220, '/images/6a/4b/6a4bd11671d7f8bd9b151401dc9144f8_square_small.png', 'square_small', 'image/png', 75, 75),
(1227, '2021-01-19 16:09:47', '2021-01-19 16:09:47', 86, 1, NULL, '/images/85/02/8502f720aa772ee11fcf59170636afb5.png', 'original', 'image/png', 293, 172),
(1228, '2021-01-19 16:09:47', '2021-01-19 16:09:47', 86, 1, 1227, '/images/85/02/8502f720aa772ee11fcf59170636afb5_default.png', 'default', 'image/png', 500, 315),
(1229, '2021-01-19 16:09:47', '2021-01-19 16:09:47', 86, 1, 1227, '/images/85/02/8502f720aa772ee11fcf59170636afb5_thumb_h.png', 'thumb_h', 'image/png', 200, 117),
(1230, '2021-01-19 16:09:47', '2021-01-19 16:09:47', 86, 1, 1227, '/images/85/02/8502f720aa772ee11fcf59170636afb5_wide.png', 'wide', 'image/png', 1920, 540),
(1231, '2021-01-19 16:09:47', '2021-01-19 16:09:47', 86, 1, 1227, '/images/85/02/8502f720aa772ee11fcf59170636afb5_mobile.png', 'mobile', 'image/png', 320, 187),
(1232, '2021-01-19 16:09:47', '2021-01-19 16:09:47', 86, 1, 1227, '/images/85/02/8502f720aa772ee11fcf59170636afb5_square.png', 'square', 'image/png', 320, 320),
(1233, '2021-01-19 16:09:47', '2021-01-19 16:09:47', 86, 1, 1227, '/images/85/02/8502f720aa772ee11fcf59170636afb5_square_small.png', 'square_small', 'image/png', 75, 75),
(1234, '2021-01-19 16:10:46', '2021-01-19 16:10:46', 85, 1, NULL, '/images/4c/99/4c993ad740b7357f0f8eae903d3da134.png', 'original', 'image/png', 1000, 667),
(1235, '2021-01-19 16:10:46', '2021-01-19 16:10:46', 85, 1, 1234, '/images/4c/99/4c993ad740b7357f0f8eae903d3da134_default.png', 'default', 'image/png', 500, 315),
(1236, '2021-01-19 16:10:46', '2021-01-19 16:10:46', 85, 1, 1234, '/images/4c/99/4c993ad740b7357f0f8eae903d3da134_thumb_h.png', 'thumb_h', 'image/png', 200, 133),
(1237, '2021-01-19 16:10:46', '2021-01-19 16:10:46', 85, 1, 1234, '/images/4c/99/4c993ad740b7357f0f8eae903d3da134_wide.png', 'wide', 'image/png', 1920, 540),
(1238, '2021-01-19 16:10:46', '2021-01-19 16:10:46', 85, 1, 1234, '/images/4c/99/4c993ad740b7357f0f8eae903d3da134_mobile.png', 'mobile', 'image/png', 320, 213),
(1239, '2021-01-19 16:10:46', '2021-01-19 16:10:46', 85, 1, 1234, '/images/4c/99/4c993ad740b7357f0f8eae903d3da134_square.png', 'square', 'image/png', 320, 320),
(1240, '2021-01-19 16:10:46', '2021-01-19 16:10:46', 85, 1, 1234, '/images/4c/99/4c993ad740b7357f0f8eae903d3da134_square_small.png', 'square_small', 'image/png', 75, 75),
(1241, '2021-01-19 16:12:28', '2021-01-19 16:12:28', 83, 1, NULL, '/images/13/dc/13dc31ade11ce0dcf512d36ae9124c17.jpg', 'original', 'image/jpeg', 2560, 1536),
(1242, '2021-01-19 16:12:29', '2021-01-19 16:12:29', 83, 1, 1241, '/images/13/dc/13dc31ade11ce0dcf512d36ae9124c17_default.jpg', 'default', 'image/jpeg', 500, 315),
(1243, '2021-01-19 16:12:29', '2021-01-19 16:12:29', 83, 1, 1241, '/images/13/dc/13dc31ade11ce0dcf512d36ae9124c17_thumb_h.jpg', 'thumb_h', 'image/jpeg', 200, 120),
(1244, '2021-01-19 16:12:30', '2021-01-19 16:12:30', 83, 1, 1241, '/images/13/dc/13dc31ade11ce0dcf512d36ae9124c17_wide.jpg', 'wide', 'image/jpeg', 1920, 540),
(1245, '2021-01-19 16:12:30', '2021-01-19 16:12:30', 83, 1, 1241, '/images/13/dc/13dc31ade11ce0dcf512d36ae9124c17_mobile.jpg', 'mobile', 'image/jpeg', 320, 192),
(1246, '2021-01-19 16:12:31', '2021-01-19 16:12:31', 83, 1, 1241, '/images/13/dc/13dc31ade11ce0dcf512d36ae9124c17_square.jpg', 'square', 'image/jpeg', 320, 320),
(1247, '2021-01-19 16:12:31', '2021-01-19 16:12:31', 83, 1, 1241, '/images/13/dc/13dc31ade11ce0dcf512d36ae9124c17_square_small.jpg', 'square_small', 'image/jpeg', 75, 75),
(1248, '2021-01-19 16:12:44', '2021-01-19 16:12:44', 82, 1, NULL, '/images/d9/d9/d9d9c081ea87ac8a3554e13c9fedfa82.jpg', 'original', 'image/jpeg', 2560, 1536),
(1249, '2021-01-19 16:12:45', '2021-01-19 16:12:45', 82, 1, 1248, '/images/d9/d9/d9d9c081ea87ac8a3554e13c9fedfa82_default.jpg', 'default', 'image/jpeg', 500, 315),
(1250, '2021-01-19 16:12:45', '2021-01-19 16:12:45', 82, 1, 1248, '/images/d9/d9/d9d9c081ea87ac8a3554e13c9fedfa82_thumb_h.jpg', 'thumb_h', 'image/jpeg', 200, 120),
(1251, '2021-01-19 16:12:46', '2021-01-19 16:12:46', 82, 1, 1248, '/images/d9/d9/d9d9c081ea87ac8a3554e13c9fedfa82_wide.jpg', 'wide', 'image/jpeg', 1920, 540),
(1252, '2021-01-19 16:12:46', '2021-01-19 16:12:46', 82, 1, 1248, '/images/d9/d9/d9d9c081ea87ac8a3554e13c9fedfa82_mobile.jpg', 'mobile', 'image/jpeg', 320, 192),
(1253, '2021-01-19 16:12:46', '2021-01-19 16:12:46', 82, 1, 1248, '/images/d9/d9/d9d9c081ea87ac8a3554e13c9fedfa82_square.jpg', 'square', 'image/jpeg', 320, 320),
(1254, '2021-01-19 16:12:47', '2021-01-19 16:12:47', 82, 1, 1248, '/images/d9/d9/d9d9c081ea87ac8a3554e13c9fedfa82_square_small.jpg', 'square_small', 'image/jpeg', 75, 75),
(1255, '2021-01-19 16:13:48', '2021-01-19 16:13:48', 81, 1, NULL, '/images/be/17/be1720484e9cf82b987ea10bf67174b5.png', 'original', 'image/png', 500, 335);
INSERT INTO `images` (`id`, `created_at`, `updated_at`, `object_id`, `object_type`, `parent_id`, `src`, `type`, `mime`, `width`, `height`) VALUES
(1256, '2021-01-19 16:13:48', '2021-01-19 16:13:48', 81, 1, 1255, '/images/be/17/be1720484e9cf82b987ea10bf67174b5_default.png', 'default', 'image/png', 500, 315),
(1257, '2021-01-19 16:13:48', '2021-01-19 16:13:48', 81, 1, 1255, '/images/be/17/be1720484e9cf82b987ea10bf67174b5_thumb_h.png', 'thumb_h', 'image/png', 200, 134),
(1258, '2021-01-19 16:13:48', '2021-01-19 16:13:48', 81, 1, 1255, '/images/be/17/be1720484e9cf82b987ea10bf67174b5_wide.png', 'wide', 'image/png', 1920, 540),
(1259, '2021-01-19 16:13:48', '2021-01-19 16:13:48', 81, 1, 1255, '/images/be/17/be1720484e9cf82b987ea10bf67174b5_mobile.png', 'mobile', 'image/png', 320, 214),
(1260, '2021-01-19 16:13:48', '2021-01-19 16:13:48', 81, 1, 1255, '/images/be/17/be1720484e9cf82b987ea10bf67174b5_square.png', 'square', 'image/png', 320, 320),
(1261, '2021-01-19 16:13:48', '2021-01-19 16:13:48', 81, 1, 1255, '/images/be/17/be1720484e9cf82b987ea10bf67174b5_square_small.png', 'square_small', 'image/png', 75, 75),
(1262, '2021-01-19 16:14:12', '2021-01-19 16:14:12', 80, 1, NULL, '/images/9a/e5/9ae562c11dcc906eb91ef25f6d25121f.jpg', 'original', 'image/jpeg', 827, 414),
(1263, '2021-01-19 16:14:12', '2021-01-19 16:14:12', 80, 1, 1262, '/images/9a/e5/9ae562c11dcc906eb91ef25f6d25121f_default.jpg', 'default', 'image/jpeg', 500, 315),
(1264, '2021-01-19 16:14:12', '2021-01-19 16:14:12', 80, 1, 1262, '/images/9a/e5/9ae562c11dcc906eb91ef25f6d25121f_thumb_h.jpg', 'thumb_h', 'image/jpeg', 200, 100),
(1265, '2021-01-19 16:14:12', '2021-01-19 16:14:12', 80, 1, 1262, '/images/9a/e5/9ae562c11dcc906eb91ef25f6d25121f_wide.jpg', 'wide', 'image/jpeg', 1920, 540),
(1266, '2021-01-19 16:14:12', '2021-01-19 16:14:12', 80, 1, 1262, '/images/9a/e5/9ae562c11dcc906eb91ef25f6d25121f_mobile.jpg', 'mobile', 'image/jpeg', 320, 160),
(1267, '2021-01-19 16:14:12', '2021-01-19 16:14:12', 80, 1, 1262, '/images/9a/e5/9ae562c11dcc906eb91ef25f6d25121f_square.jpg', 'square', 'image/jpeg', 320, 320),
(1268, '2021-01-19 16:14:12', '2021-01-19 16:14:12', 80, 1, 1262, '/images/9a/e5/9ae562c11dcc906eb91ef25f6d25121f_square_small.jpg', 'square_small', 'image/jpeg', 75, 75),
(1269, '2021-01-19 16:14:41', '2021-01-19 16:14:41', 79, 1, NULL, '/images/2f/f1/2ff14dd1bdfc50b7862e380e325e303d.png', 'original', 'image/png', 900, 500),
(1270, '2021-01-19 16:14:41', '2021-01-19 16:14:41', 79, 1, 1269, '/images/2f/f1/2ff14dd1bdfc50b7862e380e325e303d_default.png', 'default', 'image/png', 500, 315),
(1271, '2021-01-19 16:14:41', '2021-01-19 16:14:41', 79, 1, 1269, '/images/2f/f1/2ff14dd1bdfc50b7862e380e325e303d_thumb_h.png', 'thumb_h', 'image/png', 200, 111),
(1272, '2021-01-19 16:14:41', '2021-01-19 16:14:41', 79, 1, 1269, '/images/2f/f1/2ff14dd1bdfc50b7862e380e325e303d_wide.png', 'wide', 'image/png', 1920, 540),
(1273, '2021-01-19 16:14:41', '2021-01-19 16:14:41', 79, 1, 1269, '/images/2f/f1/2ff14dd1bdfc50b7862e380e325e303d_mobile.png', 'mobile', 'image/png', 320, 177),
(1274, '2021-01-19 16:14:41', '2021-01-19 16:14:41', 79, 1, 1269, '/images/2f/f1/2ff14dd1bdfc50b7862e380e325e303d_square.png', 'square', 'image/png', 320, 320),
(1275, '2021-01-19 16:14:41', '2021-01-19 16:14:41', 79, 1, 1269, '/images/2f/f1/2ff14dd1bdfc50b7862e380e325e303d_square_small.png', 'square_small', 'image/png', 75, 75),
(1276, '2021-01-19 16:15:07', '2021-01-19 16:15:07', 78, 1, NULL, '/images/f6/9c/f69cabde1eb1c03d28d04f0fec02f938.png', 'original', 'image/png', 1200, 630),
(1277, '2021-01-19 16:15:07', '2021-01-19 16:15:07', 78, 1, 1276, '/images/f6/9c/f69cabde1eb1c03d28d04f0fec02f938_default.png', 'default', 'image/png', 500, 315),
(1278, '2021-01-19 16:15:07', '2021-01-19 16:15:07', 78, 1, 1276, '/images/f6/9c/f69cabde1eb1c03d28d04f0fec02f938_thumb_h.png', 'thumb_h', 'image/png', 200, 105),
(1279, '2021-01-19 16:15:07', '2021-01-19 16:15:07', 78, 1, 1276, '/images/f6/9c/f69cabde1eb1c03d28d04f0fec02f938_wide.png', 'wide', 'image/png', 1920, 540),
(1280, '2021-01-19 16:15:07', '2021-01-19 16:15:07', 78, 1, 1276, '/images/f6/9c/f69cabde1eb1c03d28d04f0fec02f938_mobile.png', 'mobile', 'image/png', 320, 168),
(1281, '2021-01-19 16:15:07', '2021-01-19 16:15:07', 78, 1, 1276, '/images/f6/9c/f69cabde1eb1c03d28d04f0fec02f938_square.png', 'square', 'image/png', 320, 320),
(1282, '2021-01-19 16:15:07', '2021-01-19 16:15:07', 78, 1, 1276, '/images/f6/9c/f69cabde1eb1c03d28d04f0fec02f938_square_small.png', 'square_small', 'image/png', 75, 75),
(1283, '2021-01-19 16:15:36', '2021-01-19 16:15:36', 78, 1, NULL, '/images/68/ec/68ec6e3f7b62f5ae717f60689fd10f61.png', 'original', 'image/png', 1200, 630),
(1284, '2021-01-19 16:15:36', '2021-01-19 16:15:36', 78, 1, 1283, '/images/68/ec/68ec6e3f7b62f5ae717f60689fd10f61_default.png', 'default', 'image/png', 500, 315),
(1285, '2021-01-19 16:15:36', '2021-01-19 16:15:36', 78, 1, 1283, '/images/68/ec/68ec6e3f7b62f5ae717f60689fd10f61_thumb_h.png', 'thumb_h', 'image/png', 200, 105),
(1286, '2021-01-19 16:15:36', '2021-01-19 16:15:36', 78, 1, 1283, '/images/68/ec/68ec6e3f7b62f5ae717f60689fd10f61_wide.png', 'wide', 'image/png', 1920, 540),
(1287, '2021-01-19 16:15:36', '2021-01-19 16:15:36', 78, 1, 1283, '/images/68/ec/68ec6e3f7b62f5ae717f60689fd10f61_mobile.png', 'mobile', 'image/png', 320, 168),
(1288, '2021-01-19 16:15:36', '2021-01-19 16:15:36', 78, 1, 1283, '/images/68/ec/68ec6e3f7b62f5ae717f60689fd10f61_square.png', 'square', 'image/png', 320, 320),
(1289, '2021-01-19 16:15:36', '2021-01-19 16:15:36', 78, 1, 1283, '/images/68/ec/68ec6e3f7b62f5ae717f60689fd10f61_square_small.png', 'square_small', 'image/png', 75, 75),
(1290, '2021-01-19 16:16:27', '2021-01-19 16:16:27', 77, 1, NULL, '/images/df/07/df0766c3f5865a37ffbef0d5716df6a7.png', 'original', 'image/png', 1000, 223),
(1291, '2021-01-19 16:16:27', '2021-01-19 16:16:27', 77, 1, 1290, '/images/df/07/df0766c3f5865a37ffbef0d5716df6a7_default.png', 'default', 'image/png', 500, 315),
(1292, '2021-01-19 16:16:27', '2021-01-19 16:16:27', 77, 1, 1290, '/images/df/07/df0766c3f5865a37ffbef0d5716df6a7_thumb_h.png', 'thumb_h', 'image/png', 200, 44),
(1293, '2021-01-19 16:16:27', '2021-01-19 16:16:27', 77, 1, 1290, '/images/df/07/df0766c3f5865a37ffbef0d5716df6a7_wide.png', 'wide', 'image/png', 1920, 540),
(1294, '2021-01-19 16:16:27', '2021-01-19 16:16:27', 77, 1, 1290, '/images/df/07/df0766c3f5865a37ffbef0d5716df6a7_mobile.png', 'mobile', 'image/png', 320, 71),
(1295, '2021-01-19 16:16:27', '2021-01-19 16:16:27', 77, 1, 1290, '/images/df/07/df0766c3f5865a37ffbef0d5716df6a7_square.png', 'square', 'image/png', 320, 320),
(1296, '2021-01-19 16:16:27', '2021-01-19 16:16:27', 77, 1, 1290, '/images/df/07/df0766c3f5865a37ffbef0d5716df6a7_square_small.png', 'square_small', 'image/png', 75, 75),
(1297, '2021-01-19 16:17:22', '2021-01-19 16:17:22', 84, 1, NULL, '/images/30/e3/30e36aa9e08a761d66656f2c535adcfa.jpg', 'original', 'image/jpeg', 1600, 700),
(1298, '2021-01-19 16:17:22', '2021-01-19 16:17:22', 84, 1, 1297, '/images/30/e3/30e36aa9e08a761d66656f2c535adcfa_default.jpg', 'default', 'image/jpeg', 500, 315),
(1299, '2021-01-19 16:17:22', '2021-01-19 16:17:22', 84, 1, 1297, '/images/30/e3/30e36aa9e08a761d66656f2c535adcfa_thumb_h.jpg', 'thumb_h', 'image/jpeg', 200, 87),
(1300, '2021-01-19 16:17:23', '2021-01-19 16:17:23', 84, 1, 1297, '/images/30/e3/30e36aa9e08a761d66656f2c535adcfa_wide.jpg', 'wide', 'image/jpeg', 1920, 540),
(1301, '2021-01-19 16:17:23', '2021-01-19 16:17:23', 84, 1, 1297, '/images/30/e3/30e36aa9e08a761d66656f2c535adcfa_mobile.jpg', 'mobile', 'image/jpeg', 320, 140),
(1302, '2021-01-19 16:17:23', '2021-01-19 16:17:23', 84, 1, 1297, '/images/30/e3/30e36aa9e08a761d66656f2c535adcfa_square.jpg', 'square', 'image/jpeg', 320, 320),
(1303, '2021-01-19 16:17:23', '2021-01-19 16:17:23', 84, 1, 1297, '/images/30/e3/30e36aa9e08a761d66656f2c535adcfa_square_small.jpg', 'square_small', 'image/jpeg', 75, 75),
(1304, '2021-01-19 16:18:30', '2021-01-19 16:18:30', 84, 1, NULL, '/images/3e/73/3e7393cfc4471c5abff0e1ad37d388df.png', 'original', 'image/png', 1065, 342),
(1305, '2021-01-19 16:18:30', '2021-01-19 16:18:30', 84, 1, 1304, '/images/3e/73/3e7393cfc4471c5abff0e1ad37d388df_default.png', 'default', 'image/png', 500, 315),
(1306, '2021-01-19 16:18:30', '2021-01-19 16:18:30', 84, 1, 1304, '/images/3e/73/3e7393cfc4471c5abff0e1ad37d388df_thumb_h.png', 'thumb_h', 'image/png', 200, 64),
(1307, '2021-01-19 16:18:30', '2021-01-19 16:18:30', 84, 1, 1304, '/images/3e/73/3e7393cfc4471c5abff0e1ad37d388df_wide.png', 'wide', 'image/png', 1920, 540),
(1308, '2021-01-19 16:18:30', '2021-01-19 16:18:30', 84, 1, 1304, '/images/3e/73/3e7393cfc4471c5abff0e1ad37d388df_mobile.png', 'mobile', 'image/png', 320, 102),
(1309, '2021-01-19 16:18:30', '2021-01-19 16:18:30', 84, 1, 1304, '/images/3e/73/3e7393cfc4471c5abff0e1ad37d388df_square.png', 'square', 'image/png', 320, 320),
(1310, '2021-01-19 16:18:30', '2021-01-19 16:18:30', 84, 1, 1304, '/images/3e/73/3e7393cfc4471c5abff0e1ad37d388df_square_small.png', 'square_small', 'image/png', 75, 75);

-- --------------------------------------------------------

--
-- Table structure for table `insights`
--

CREATE TABLE `insights` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_id` int(11) DEFAULT NULL,
  `founding` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `headquarter` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employees` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profits` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `destinations` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `callsign` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fleet` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `orders` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `assessments` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `benefits` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary_captain_max` int(11) DEFAULT NULL,
  `salary_captain_avg` int(11) DEFAULT NULL,
  `salary_captain_min` int(11) DEFAULT NULL,
  `salary_sfo_max` int(11) DEFAULT NULL,
  `salary_sfo_avg` int(11) DEFAULT NULL,
  `salary_sfo_min` int(11) DEFAULT NULL,
  `salary_fo_max` int(11) DEFAULT NULL,
  `salary_fo_avg` int(11) DEFAULT NULL,
  `salary_fo_min` int(11) DEFAULT NULL,
  `salary_so_max` int(11) DEFAULT NULL,
  `salary_so_avg` int(11) DEFAULT NULL,
  `salary_so_min` int(11) DEFAULT NULL,
  `region` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assessments_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `has_draft` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `insights`
--

INSERT INTO `insights` (`id`, `created_at`, `updated_at`, `slug`, `name`, `image_id`, `founding`, `headquarter`, `employees`, `profits`, `destinations`, `callsign`, `fleet`, `orders`, `assessments`, `benefits`, `salary_captain_max`, `salary_captain_avg`, `salary_captain_min`, `salary_sfo_max`, `salary_sfo_avg`, `salary_sfo_min`, `salary_fo_max`, `salary_fo_avg`, `salary_fo_min`, `salary_so_max`, `salary_so_avg`, `salary_so_min`, `region`, `type`, `assessments_link`, `job_type`, `has_draft`) VALUES
(2, '2020-06-09 10:12:12', '2021-01-06 12:17:04', 'eva', 'Eva Air', 2, '1989', 'Luzhu, Taiwan', '11147 (2018)', 'NT$6.06 billion', '> 60', 'Eva', '<p>24x Airbus A321-200</p>\n\n<p>3x Airbus A330-200</p>\n\n<p>9x Airbus A330-300</p>\n\n<p>33x Boeing 777-300ER</p>\n\n<p>5x Boeing 777F</p>\n\n<p>4x Boeing 787-9</p>\n\n<p>4x Boeing 787-10</p>', '<p>2x Boeing 777-300ER</p>\n\n<p>15x Boeing 787-10</p>', '<ul>\n	<li>Cut-e Aptitude Tests (Online) Cadets Only</li>\n	<li>ATPL Test (Online) Cadets Only</li>\n	<li>Technical Questions</li>\n	<li>Human Resource Questions</li>\n	<li>Human Resource Questions</li>\n</ul>', '<p><strong>Roster:</strong>&nbsp;Commuting Contract &ndash; Guaranteed 8 Block Days OFF each month</p>\n\n<p><strong>Leave: </strong>Annual Leave 22 days, Sick Leave 30 days</p>\n\n<p><strong>Staff Travel: </strong>Privilege&nbsp;Travel (after 3 months), Concessional Travel (after first flight, including family members)</p>\n\n<p><strong>Per Diem:&nbsp;</strong>Currently set at US$3 per duty hour</p>\n\n<p><strong>Additional:</strong>&nbsp;Medical Coverage + Loss of License &amp; Accident Insurances</p>\n\n<ul>\n	<li>\n	<p>Live rent free at the crew apartments or opt in for accommodation allowances</p>\n	</li>\n</ul>', 8100, 6900, 5600, NULL, NULL, NULL, 105409, 96471, 87533, NULL, NULL, NULL, 'asia', 'legacy', 'www.google.com', 'pilot', 0),
(3, '2020-06-22 13:47:08', '2021-01-09 11:44:26', 'ryr', 'Ryanair', 849, '1985', 'Dublin, Ireland', '19000 (2020)', '1,667 Billion €', '>210', 'Ryanair', '<p>485x Boeing 737-800</p>\n\n<p>1x Boeing 737-700</p>\n\n<p>4x Learjet 45</p>\n\n<p>&nbsp;</p>', '<p>210x Boeing 737-Max</p>', '<ul>\n	<li>Cut-E Online Test</li>\n</ul>\n\n<p>When invited to Dublin:</p>\n\n<ul>\n	<li>English language test&nbsp;</li>\n	<li>Technical assessment&nbsp;</li>\n	<li>Personnel interview</li>\n	<li>Simulator assessment</li>\n</ul>', '<p><strong>Roster: </strong>5 days ON - 4 days OFF, no planned overnights</p>\n\n<p><strong>Leave: </strong>28 days</p>\n\n<p><strong>Staff Travel: </strong>Unlimited staff travel for pilots on Ryanair Network, Parents and spouses also eligible</p>\n\n<p><strong>Per Diem:&nbsp;</strong>CPT 39&euro;, FO 15&euro;</p>\n\n<p><strong>Additional:</strong></p>', 155000, NULL, NULL, NULL, 72000, NULL, NULL, 36000, NULL, NULL, 16000, NULL, 'europe', 'legacy', '/', 'pilot', 0),
(4, '2020-12-26 13:02:03', '2021-01-05 19:31:02', 'eurowingsde', 'Eurowings', 16, '1993', 'Düsseldorf', '1400', '171€ million', '<210', 'Eurowings', '<p>34x Airbus A319-100 (19 inactive)</p>\n\n<p>50x Airbus A320-200</p>\n\n<p>5x Airbus A321-200&nbsp;</p>\n\n<p>4x Airbus A321-300</p>', '<p>20x Airbus A320-Neo</p>', '<p><strong>Interpersonal Assessment</strong></p>\n\n<ul>\n	<li>Basic Qualification</li>\n	<li>Sim Screening (FTD or Airbus FFS)</li>\n	<li>Corporate Qualification (Interview)</li>\n</ul>', '<p><strong>Roster: </strong>Minimum 10 OFF/month</p>\n\n<p><strong>Leave: </strong>42&nbsp;days</p>\n\n<p><strong>Staff Travel: </strong>Staff ID-Travel</p>\n\n<p><strong>Per Diem: </strong>n/a</p>\n\n<p><strong>Additional: </strong>Access to Lufthansa Group corporate benefits</p>', 152000, 123750, 95500, NULL, NULL, NULL, 109000, 83950, 59000, NULL, NULL, NULL, 'europe', 'legacy', NULL, 'pilot', 0),
(5, '2020-12-26 13:14:19', '2021-01-09 10:55:57', 'eurowingseu', 'Eurowings Europe', 23, '2015', 'Vienna', 'See Eurowings', 'See Eurowings', '<210', 'Eurowings', '<p>6x Airbus A319-100</p>\n\n<p>6x Airbus A320-200</p>', '<p>none</p>', '<p><strong>Interpersonal Assessment</strong></p>\n\n<ul>\n	<li>Basic Qualification</li>\n	<li>Sim Screening (FTD or Airbus FFS)</li>\n	<li>Corporate Qualification (Interview)</li>\n</ul>', '<p><strong>Roster: </strong>fixed OFF days</p>\n\n<p><strong>Leave: </strong>-</p>\n\n<p><strong>Staff Travel: </strong>Staff ID-Travel</p>\n\n<p><strong>Per Diem: </strong>CPT 35&euro;, FO 20&euro;</p>\n\n<p><strong>Additional: </strong>Access to Lufthansa Group corporate benefits</p>', 139000, 117250, 95500, NULL, NULL, NULL, 70200, 63950, 57700, NULL, NULL, NULL, 'europe', 'national', '/', 'pilot', 0),
(6, '2022-04-12 18:28:17', '2022-04-12 18:28:17', 'lufthansa', 'Lufthansa', 30, '1953', 'Frankfurt', '138000(group)', '16€ billion', '<250', 'Lufthansa', '<p>19x Airbus A319-100</p>\r\n\r\n<p>60x&nbsp;Airbus A320-200</p>\r\n\r\n<p>29x&nbsp;Airbus A320neo</p>\r\n\r\n<p>20x&nbsp;Airbus A321-100</p>\r\n\r\n<p>43x&nbsp;Airbus A321-200</p>\r\n\r\n<p>6x&nbsp;Airbus A321neo</p>\r\n\r\n<p>15x&nbsp;Airbus A330-300</p>\r\n\r\n<p>17x&nbsp;Airbus A340-300</p>\r\n\r\n<p>17x&nbsp;Airbus A340-600</p>\r\n\r\n<p>17x&nbsp;Airbus A350-900</p>\r\n\r\n<p>14x&nbsp;Airbus A380-800</p>\r\n\r\n<p>12x&nbsp;Boeing 747-400</p>\r\n\r\n<p>19x&nbsp;Boeing 747-8I</p>\r\n\r\n<p>&nbsp;</p>', '<p>39x&nbsp;Airbus A320neo</p>\r\n\r\n<p>37x&nbsp;Airbus A321neo</p>\r\n\r\n<p>26x&nbsp;Airbus A350-900</p>\r\n\r\n<p>20x&nbsp;Boeing 777-9</p>\r\n\r\n<p>20x&nbsp;Boeing 787-9</p>\r\n\r\n<p>&nbsp;</p>', '<p><strong>DLR</strong></p>\r\n\r\n<ul>\r\n	<li>BU</li>\r\n	<li>Sim Screening</li>\r\n	<li>GQ</li>\r\n	<li>Medical</li>\r\n</ul>', '<p><strong>Roster: </strong>Minimum 10 OFF/month</p>\r\n\r\n<p><strong>Leave: </strong>42&nbsp;days</p>\r\n\r\n<p><strong>Staff Travel: </strong>Staff ID-Travel</p>\r\n\r\n<p><strong>Per Diem: </strong>CPT 50&euro;, FO48&euro;</p>\r\n\r\n<p><strong>Additional: </strong>Access to Lufthansa Group corporate benefits</p>', 240000, 201000, 162000, NULL, NULL, NULL, 146400, 106300, 66000, NULL, NULL, NULL, 'europe', 'legacy', '', 'pilot', 0),
(7, '2020-12-26 19:39:59', '2021-01-09 11:42:13', 'csa', 'Czech Airlines', 842, '1923', 'Prague', '692', '8.1 billion (CZK)', '-', 'CSA-Lines', '<p>2x Airbus A319-100</p>\n\n<p>1x Airbus A320-200</p>\n\n<p>5x ATR 72-500</p>', '<p>4x Airbus A220-300</p>\n\n<p>3x Airbus A321XLR</p>', '<ul>\n	<li>Psychomotoric Tests</li>\n	<li>English Test</li>\n	<li>ATPL Test</li>\n	<li>Interview</li>\n	<li>Sim assessment</li>\n</ul>', '<p><strong>Roster: </strong>mostly stable</p>\n\n<p><strong>Leave: </strong>35</p>\n\n<p><strong>Staff Travel:&nbsp;</strong>ID 90 Travel</p>\n\n<p><strong>Per Diem: </strong>CPT 30&euro;, 20&euro; FO</p>\n\n<p><strong>Additional:&nbsp;</strong></p>', 56400, 53190, 49980, NULL, NULL, NULL, 40680, 38160, 35640, NULL, NULL, NULL, 'europe', 'legacy', '/', 'pilot', 0),
(8, '2020-12-26 19:46:58', '2021-01-09 11:41:34', 'sas', 'Scandinavian Airlines', 835, '1946', 'Stockholm', '10710', '39.5 billion (SEK)', '123', 'Scandinavian', '<p>4x Airbus A319-100</p>\n\n<p>11x Airbus A320-200</p>\n\n<p>42x Airbus A320neo (6x Wet-leased)</p>\n\n<p>8x Airbus A321-200</p>\n\n<p>1x Airbus A321LR</p>\n\n<p>9x Airbus A330-300</p>\n\n<p>4x Airbus A350-900</p>\n\n<p>18x Boeing 737-700</p>\n\n<p>18x Boeing 737-800</p>\n\n<p>7x ATR 72-600 (Wet-leased)</p>\n\n<p>14x Bombardier CRJ900 (Wet-leased)</p>\n\n<p>&nbsp;</p>', '<p>38x Airbus A320neo</p>\n\n<p>2x Airbus A321LR</p>\n\n<p>4x Airbus A350-900</p>', '<ul>\n	<li>Online Aptitude test</li>\n	<li>Interviews</li>\n	<li>Sim assessment</li>\n</ul>', '<p><strong>Roster:&nbsp;</strong></p>\n\n<p><strong>Leave:&nbsp;</strong>36 days</p>\n\n<p><strong>Staff Travel: </strong>ID 90</p>\n\n<p><strong>Per Diem: </strong>400-800&euro; /month CPT&amp;FO</p>\n\n<p><strong>Additional:&nbsp;</strong></p>', 147384, 122574, 97764, NULL, NULL, NULL, 122004, 87792, 53580, NULL, NULL, NULL, 'europe', 'legacy', '/', 'pilot', 0),
(9, '2020-12-26 19:48:49', '2021-01-09 11:33:34', 'fin', 'Finnair', 814, '1923', 'Vantaa', '6700', '2.3 billion (EUR)', '116', 'Finnair', '<p>8x Airbus A319-100</p>\n\n<p>10x Airbus A320-200</p>\n\n<p>19x Airbus A321-200</p>\n\n<p>8x Airbus A330-300</p>\n\n<p>16x Airbus A350-900</p>\n\n<p>12x ATR 72-500</p>\n\n<p>12x Embraer 190</p>', '<p>3x Airbus A350-900</p>', '<ul>\n	<li>Computer aptitude tests</li>\n	<li>Interview</li>\n	<li>Sim assessment</li>\n	<li>Company medical</li>\n</ul>', '<p><strong>Roster:&nbsp;</strong></p>\n\n<p><strong>Leave:&nbsp;</strong></p>\n\n<p><strong>Staff Travel: </strong>ID 90</p>\n\n<p><strong>Per Diem: </strong>200-500&euro; / month CPT,FO,SO</p>\n\n<p><strong>Additional:&nbsp;</strong></p>', 144000, 106800, 69600, NULL, NULL, NULL, 102000, 71400, 40800, NULL, 51510, NULL, 'europe', 'legacy', '/', 'pilot', 0),
(10, '2020-12-26 21:05:51', '2021-01-09 11:40:40', 'afr', 'AirFrance', 828, '1933', 'Paris', '48124', '26.1€ billion', '211', 'Airfrans', '<p>18x Airbus A318-100</p>\n\n<p>33x Airbus A319-100</p>\n\n<p>44x Airbus A320-200</p>\n\n<p>5x Airbus A321-100</p>\n\n<p>15x Airbus A321-200</p>\n\n<p>15x Airbus A330-200</p>\n\n<p>5x Airbus A350-900</p>\n\n<p>25x Boeing 777-200ER</p>\n\n<p>2x Boeing 777F</p>\n\n<p>43x Boeing 777-300ER</p>\n\n<p>10x Boeing 787-9</p>', '<p>60x Airbus A220-300</p>\n\n<p>33x Airbus A350-900</p>\n\n<p>&nbsp;</p>', '<ul>\n	<li>Online aptitude tests</li>\n	<li>Interview</li>\n	<li>Sim assessment</li>\n</ul>', '<p><strong>Roster:&nbsp;</strong></p>\n\n<p><strong>Leave: </strong>48</p>\n\n<p><strong>Staff Travel: </strong>ID 90&nbsp;</p>\n\n<p><strong>Per Diem: </strong>30-130 / day CPT,FO</p>\n\n<p><strong>Additional:&nbsp;</strong></p>', 156000, 126000, 96000, NULL, NULL, NULL, 120000, 84000, 48000, NULL, NULL, NULL, 'europe', 'legacy', '/', 'pilot', 0),
(11, '2020-12-26 21:07:37', '2021-01-09 11:50:35', 'ein', 'Aer Lingus', 856, '1936', 'Dublin', '4500', '2.2 billion (EUR)', '93', 'Shamrock', '<p>31x Airbus A320-200</p>\n\n<p>5x Airbus A321LR</p>\n\n<p>4x Airbus A330-200</p>\n\n<p>11x Airbus 330-300</p>\n\n<p>&nbsp;</p>', '<p>3x Airbus A321LR</p>\n\n<p>6x Airbus A321XLR</p>\n\n<p>5x Airbus A350-900</p>', '<ul>\n	<li>Interview</li>\n	<li>Sim assessment</li>\n	<li>Psychometric test</li>\n</ul>', '<p><strong>Roster: </strong>5/3 pattern</p>\n\n<p><strong>Leave:&nbsp;</strong>44 days</p>\n\n<p><strong>Staff Travel:&nbsp;</strong>ID 90, standby travel</p>\n\n<p><strong>Per Diem:&nbsp;</strong></p>\n\n<p><strong>Additional:&nbsp;</strong></p>', 201100, 144562, 88025, NULL, NULL, NULL, 138800, 99760, 60720, NULL, 46000, NULL, 'europe', 'legacy', '/', 'pilot', 0),
(12, '2020-12-26 21:09:21', '2021-01-09 11:57:54', 'klm', 'KLM', 877, '1919', 'Amstelveen', '31876', '9.8€ billion', '145', 'KLM', '<p>8x Airbus A330-200</p>\n\n<p>5x Airbus A330-300</p>\n\n<p>16x Boeing 737-700</p>\n\n<p>31x Boeing 737-800</p>\n\n<p>5x Boeing 737-900</p>\n\n<p>2x Boeing 747-400M</p>\n\n<p>15x Boeing 777-200ER</p>\n\n<p>14x Boeing 777-300ER</p>\n\n<p>13x Boeing 787-9</p>\n\n<p>5x Boeing 787-10</p>', '<p>2x Boeing 777-300ER</p>\n\n<p>7x Boeing 787-9</p>\n\n<p>3x Boeing 787-10</p>', '<ul>\n	<li>Psychometric test</li>\n	<li>Interview</li>\n	<li>Sim assessment</li>\n</ul>', '<p><strong>Roster:&nbsp;</strong></p>\n\n<p><strong>Leave: 4</strong>1 days</p>\n\n<p><strong>Staff Travel:&nbsp;</strong>ZED Travel</p>\n\n<p><strong>Per Diem:&nbsp;</strong></p>\n\n<p><strong>Additional:&nbsp;</strong></p>', 257000, 195500, 134000, NULL, NULL, NULL, 185000, 117000, 49000, NULL, NULL, NULL, 'europe', 'legacy', '/', 'pilot', 0),
(13, '2020-12-26 21:10:34', '2021-01-09 12:03:25', 'afl', 'Aeroflot', 891, '1923', 'Moscow', '21600', '11.6 billion (RUB)', '146', 'Aeroflot', '<p>72x AIrbus A320-200</p>\n\n<p>33x Airbus A321-200</p>\n\n<p>5x Airbus A330-200</p>\n\n<p>12x Airbus A330-300</p>\n\n<p>1x Airbus A350-900</p>\n\n<p>48x Boeing 737-800</p>\n\n<p>19x Boeing 777-300ER</p>\n\n<p>54x Sukhoi Superjet 100</p>', '<p>21x Airbus A350-900</p>\n\n<p>3x Boeing 777-300ER</p>\n\n<p>50x Irkut Ms-21</p>\n\n<p>85x Sukhoi Superjet 100</p>', '<p>-</p>', '<p><strong>Roster:&nbsp;</strong></p>\n\n<p><strong>Leave:&nbsp;</strong>70 days</p>\n\n<p><strong>Staff Travel:&nbsp;</strong></p>\n\n<p><strong>Per Diem:&nbsp;</strong></p>\n\n<p><strong>Additional:&nbsp;</strong></p>', 66252, NULL, NULL, NULL, NULL, NULL, 37104, NULL, NULL, NULL, NULL, NULL, 'europe', 'legacy', '/', 'pilot', 0),
(14, '2020-12-26 21:13:55', '2021-01-09 12:09:04', 'swr', 'Swiss Internation Air Lines', 898, '2002', 'Basel', '9560', '5.33 billion (CHF)', '102', 'Swiss', '<p>9x Airbus A220-100</p>\n\n<p>20x Airbus A220-300</p>\n\n<p>19x Airbus A320-200</p>\n\n<p>3x Airbus A320neo</p>\n\n<p>6x Airbus A321-100</p>\n\n<p>3x Airbus A321-200</p>\n\n<p>2x Airbus A321neo</p>\n\n<p>14x Airbus A330-300</p>\n\n<p>5x Airbus A340-300</p>\n\n<p>12x Boeing 777-300ER</p>', '<p>1x Airbus A220-300</p>\n\n<p>14x Airbus A320neo</p>\n\n<p>6x Airbus A321neo</p>', '<p>-</p>', '<p><strong>Roster:&nbsp;</strong></p>\n\n<p><strong>Leave:&nbsp;</strong>40 days</p>\n\n<p><strong>Staff Travel:&nbsp;</strong>ID 90</p>\n\n<p><strong>Per Diem:&nbsp;</strong></p>\n\n<p><strong>Additional:&nbsp;</strong></p>', 211200, NULL, 106800, NULL, NULL, NULL, 165000, NULL, 79000, NULL, NULL, NULL, 'europe', 'legacy', '/', 'pilot', 0),
(15, '2020-12-26 21:15:29', '2021-01-11 12:04:20', 'thy', 'Turkish Airlines', 912, '1933', 'Istanbul', '25570', '$13.23 billion', '-', 'Turkish', '<p>-</p>', '<p>-</p>', '<p>-</p>', '<p>-</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'europe', 'legacy', '/', 'pilot', 0),
(16, '2020-12-27 11:50:16', '2021-01-11 12:04:02', 'ba', 'British Airways', 926, '1974', 'London', '43125', '12.2 billion (GBP)', '-', 'Speedbird', '<p>-</p>', '<p>-</p>', '<p>-</p>', '<p>-</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'europe', 'legacy', '/', 'pilot', 0),
(17, '2020-12-27 11:51:23', '2021-01-11 12:06:32', 'vir', 'Virgin Atlantic', 933, '1984', 'Crawley, UK', '-', '2.8 billion (EUR)', '-', 'Virgin', '<p>-</p>', '<p>-</p>', '<p>-</p>', '<p>-</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'europe', 'legacy', '/', 'pilot', 0),
(18, '2020-12-27 11:53:15', '2021-01-11 12:39:04', 'abn', 'Air Albania', 940, '2018', 'Rinas, Albania', '-', '-', '-', 'Air Albania', '<p>-</p>', '<p>-</p>', '<p>-</p>', '<p>-</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'europe', 'national', '/', 'pilot', 0),
(19, '2020-12-27 11:54:36', '2021-01-11 12:38:42', 'aua', 'Austrian Airlines', 947, '1957', 'Vienna, Austria', '7000', '2,1 million (EUR)', '-', 'Austrian', '<p>-</p>', '<p>-</p>', '<p>-</p>', '<p>-</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'europe', 'national', '/', 'pilot', 0),
(20, '2020-12-27 11:57:38', '2021-01-11 12:38:17', 'eju', 'EasyJet Europe', 954, '2017', 'Vienna, Austria', '-', '-', '-', 'Alpine', '<p>-</p>', '<p>-</p>', '<p>-</p>', '<p>-</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'europe', 'national', '/', 'pilot', 0),
(21, '2020-12-27 11:59:13', '2021-01-11 12:42:41', 'bru', 'Belavia', 961, '1996', 'Minsk, White Russia', '-', '-', '-', 'Belarus Avia', '<p>-</p>', '<p>-</p>', '<p>-</p>', '<p>-</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'europe', 'national', '/', 'pilot', 0),
(22, '2020-12-27 12:00:04', '2021-01-11 12:44:51', 'bel', 'Brussels Airlines', 982, '2007', 'Brussels, Belgium', '3500', '1.44 billion (EUR)', '-', 'Beeline', '<p>-</p>', '<p>-</p>', '<p>-</p>', '<p>-</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'europe', 'national', '/', 'pilot', 0),
(23, '2020-12-27 12:05:09', '2021-01-11 12:45:25', 'jaf', 'TUI Belgium', 989, '2004', 'Zaventem, Belgium', '-', '-', '-', 'Beauty', '<p>-</p>', '<p>-</p>', '<p>-</p>', '<p>-</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'europe', 'national', '/', 'pilot', 0),
(24, '2020-12-27 12:06:10', '2021-01-11 12:46:26', 'bah', 'BH Air', 996, '2001', 'Sofia, Bulgaria', '-', '67.9 million (EUR)', '-', 'Balkan Holidays', '<p>-</p>', '<p>-</p>', '<p>-</p>', '<p>-</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'europe', 'national', '/', 'pilot', 0),
(25, '2020-12-27 12:06:55', '2021-01-11 18:48:42', 'lzb', 'Bulgaria Air', 1003, '2002', 'Sofia, Bulgaria', '-', '148.4 million (EUR)', '-', 'Flying Bulgaria', '<p>-</p>', '<p>-</p>', '<p>-</p>', '<p>-</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'europe', 'national', '/', 'pilot', 0),
(26, '2020-12-27 12:11:47', '2020-12-27 12:11:48', 'ctn', 'Croatia Airlines', 163, '1990', 'Zagreb, Crotia', '900', '1.56 billion (HRK)', '-', 'Croatia Airlines', '<p>-</p>', '<p>-</p>', '<p>-</p>', '<p>-</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pilot', 0),
(27, '2020-12-27 12:13:08', '2020-12-27 12:13:09', 'cyf', 'Tus Airways', 170, '2015', 'Larnaca, Cyprus', '-', '-', '-', 'Tus Air', '<p>-</p>', '<p>-</p>', '<p>-</p>', '<p>-</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pilot', 0),
(28, '2020-12-27 12:14:12', '2020-12-27 12:14:14', 'est', 'Nordica', 177, '2015', 'Tallinn, Estonia', '-', '-', '-', 'Reval', '<p>-</p>', '<p>-</p>', '<p>-</p>', '<p>-</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pilot', 0),
(29, '2020-12-27 12:16:59', '2020-12-27 12:17:00', 'fwi', 'Air Caraïbes', 184, '2000', 'Les Abymes, France', '1105', '482 million (EUR)', '-', 'French West', '<p>-</p>', '<p>-</p>', '<p>-</p>', '<p>-</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pilot', 0),
(30, '2020-12-27 12:18:06', '2020-12-27 12:18:08', 'ccm', 'Air Corsica', 191, '1989', 'Ajaccio, France', '-', '-', '-', 'Corsica', '<p>-</p>', '<p>-</p>', '<p>-</p>', '<p>-</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pilot', 0),
(31, '2020-12-27 12:19:06', '2020-12-27 13:37:15', 'fbu', 'French Bee', 198, '2016', 'Paris, France', '-', '-', '-', 'French Bee', '<p>-</p>', '<p>-</p>', '<p>-</p>', '<p><strong>Roster:&nbsp;</strong></p>\n\n<p><strong>Leave:&nbsp;</strong></p>\n\n<p><strong>Staff Travel:&nbsp;</strong></p>\n\n<p><strong>Per Diem:&nbsp;</strong></p>\n\n<p><strong>Additional:&nbsp;</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pilot', 0),
(32, '2020-12-27 12:20:41', '2020-12-27 13:37:06', 'hop', 'HOP', 205, '2013', 'Bouguenais, France', '3000', '-', '-', 'Air Hop', '<p>-</p>', '<p>-</p>', '<p>-</p>', '<p><strong>Roster:&nbsp;</strong></p>\n\n<p><strong>Leave:&nbsp;</strong></p>\n\n<p><strong>Staff Travel:&nbsp;</strong></p>\n\n<p><strong>Per Diem:&nbsp;</strong></p>\n\n<p><strong>Additional:&nbsp;</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pilot', 0),
(33, '2020-12-27 12:21:48', '2020-12-27 12:21:49', 'djt', 'La Compagnie', 212, '2013', 'Paris, France', '-', '-', '-', 'Dreamjet', '<p>-</p>', '<p>-</p>', '<p>-</p>', '<p>-</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pilot', 0),
(34, '2020-12-27 12:26:15', '2020-12-27 13:36:56', 'may', 'Malta Air', 219, '2019', 'Birkirkara, Malta', '-', '-', '-', 'Blue Med', '<p>120x Boeing 737-800</p>', '<p>-</p>', '<p>-</p>', '<p><strong>Roster:&nbsp;</strong></p>\n\n<p><strong>Leave:&nbsp;</strong></p>\n\n<p><strong>Staff Travel:&nbsp;</strong></p>\n\n<p><strong>Per Diem:&nbsp;</strong></p>\n\n<p><strong>Additional:&nbsp;</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pilot', 0),
(35, '2020-12-27 12:28:13', '2020-12-27 13:36:38', 'tvf', 'Transavia France', 226, '2007', 'Party-Vieille-Poste, France', '202', '132.7 million (EUR)', '-', 'France Soleil', '<p>40x Boeing 737-800</p>', '<p>-</p>', '<p>-</p>', '<p><strong>Roster:&nbsp;</strong></p>\n\n<p><strong>Leave:&nbsp;</strong></p>\n\n<p><strong>Staff Travel:&nbsp;</strong></p>\n\n<p><strong>Per Diem:&nbsp;</strong></p>\n\n<p><strong>Additional:&nbsp;</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pilot', 0),
(36, '2020-12-27 12:31:02', '2020-12-27 13:36:26', 'tgz', 'Georgian Airways', 233, '1994', 'Tbilisi, Georgia', '-', '-', '-', 'Tamazi', '<p>-</p>', '<p>-</p>', '<p>-</p>', '<p><strong>Roster:&nbsp;</strong></p>\n\n<p><strong>Leave:&nbsp;</strong></p>\n\n<p><strong>Staff Travel:&nbsp;</strong></p>\n\n<p><strong>Per Diem:&nbsp;</strong></p>\n\n<p><strong>Additional:&nbsp;</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pilot', 0),
(37, '2020-12-27 13:27:47', '2020-12-27 13:27:49', 'clh', 'Lufthansa Cityline', 240, '1958', 'Munich, Germany', '2236', '-', '-', 'Lufthansa (Hansaline)', '<p>6x Airbus A319-100</p>\n\n<p>35x Bombardier CRJ900</p>\n\n<p>9x Embraer 190</p>\n\n<p>2x Embraer 195</p>\n\n<p>&nbsp;</p>', '<p>-</p>', '<p><strong>DLR</strong></p>\n\n<ul>\n	<li>BU</li>\n	<li>Sim Screening</li>\n	<li>GQ</li>\n	<li>Medical</li>\n</ul>', '<p><strong>Roster:&nbsp;</strong>Minimum 10 OFF/month</p>\n\n<p><strong>Leave:&nbsp;</strong>42&nbsp;days</p>\n\n<p><strong>Staff Travel:&nbsp;</strong>Staff ID-Travel</p>\n\n<p><strong>Per Diem:&nbsp;</strong>CPT 50&euro;, FO48&euro;</p>\n\n<p><strong>Additional:&nbsp;</strong>Access to Lufthansa Group corporate benefits</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pilot', 0),
(38, '2020-12-27 13:30:35', '2020-12-27 13:30:36', 'aee', 'Aegean Airlines', 247, '1987', 'Kifisia, Greece', '2100', '1.02 billion (EUR)', '-', 'Aegean', '<p>1x Airbus A319-100</p>\n\n<p>35x Airbus A320-200</p>\n\n<p>5x Airbus A320neo</p>\n\n<p>10x Airbus A321-200</p>\n\n<p>3x Airbus A321neo</p>', '<p>31x Airbus A320neo</p>\n\n<p>7x Airbus A321neo</p>', '<p>-</p>', '<p><strong>Roster:&nbsp;</strong></p>\n\n<p><strong>Leave:&nbsp;</strong></p>\n\n<p><strong>Staff Travel:&nbsp;</strong></p>\n\n<p><strong>Per Diem:&nbsp;</strong></p>\n\n<p><strong>Additional:&nbsp;</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pilot', 0),
(39, '2020-12-27 13:34:18', '2020-12-27 13:36:08', 'oal', 'Olympic Air', 254, '2009', 'Athens, Greece', '-', '-', '31', 'Olympic', '<p>2x ATR 42-600</p>\n\n<p>2x De&nbsp;Havilland Canada Dash 8-100</p>\n\n<p>9x De Havilland Canada Dash 8-Q400</p>', '<p>-</p>', '<p>-</p>', '<p><strong>Roster:&nbsp;</strong></p>\n\n<p><strong>Leave:&nbsp;</strong></p>\n\n<p><strong>Staff Travel:&nbsp;</strong></p>\n\n<p><strong>Per Diem:&nbsp;</strong></p>\n\n<p><strong>Additional:&nbsp;</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pilot', 0),
(40, '2020-12-27 13:35:46', '2020-12-27 13:35:47', 'otf', 'Orange2Fly', 261, '2015', 'Athens, Greece', '-', '-', '-', 'Orangesky', '<p>1x Airbus A320-200</p>', '<p>-</p>', '<p>-</p>', '<p><strong>Roster:&nbsp;</strong></p>\n\n<p><strong>Leave:&nbsp;</strong></p>\n\n<p><strong>Staff Travel:&nbsp;</strong></p>\n\n<p><strong>Per Diem:&nbsp;</strong></p>\n\n<p><strong>Additional:&nbsp;</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pilot', 0),
(41, '2020-12-27 13:41:04', '2020-12-27 13:41:05', 'grl', 'Air Greenland', 268, '1960', 'Nuuk, Greenland', '631', '1.37 billion (DKK)', '-', 'Greenland', '<p>1x Airbus A330-200</p>\n\n<p>1x Beechcraft Super King Air B200</p>\n\n<p>7x De Havilland DHC-8-200</p>\n\n<p>&nbsp;</p>\n\n<p>8x Bell 212</p>\n\n<p>9x Eurocopter AS 350</p>\n\n<p>2x Eurocopter EC 225</p>\n\n<p>2x Sikorsky S-61N</p>', '<p>1x Airbus A330-800 (replaces Airbus A330-200)</p>', '<p>-</p>', '<p><strong>Roster:&nbsp;</strong></p>\n\n<p><strong>Leave:&nbsp;</strong></p>\n\n<p><strong>Staff Travel:&nbsp;</strong></p>\n\n<p><strong>Per Diem:&nbsp;</strong></p>\n\n<p><strong>Additional:&nbsp;</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pilot', 0),
(42, '2020-12-27 13:43:35', '2020-12-27 13:43:36', 'wzz', 'Wizz Air', 275, '2003', 'Budapest, Hungary', '4550', '2.31 billion (EUR)', '-', 'Wizz Air', '<p>60x Airbus A320-200</p>\n\n<p>6x Airbus A320neo</p>\n\n<p>34x Airbus A321-200</p>\n\n<p>13x Airbus A321neo</p>\n\n<p>1x Airbus A330-200F</p>', '<p>63x Airbus A320neo</p>\n\n<p>182x Airbus A321neo</p>\n\n<p>20x Airbus A321XLR</p>', '<p>-</p>', '<p><strong>Roster:&nbsp;</strong></p>\n\n<p><strong>Leave:&nbsp;</strong></p>\n\n<p><strong>Staff Travel:&nbsp;</strong></p>\n\n<p><strong>Per Diem:&nbsp;</strong></p>\n\n<p><strong>Additional:&nbsp;</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pilot', 0),
(43, '2020-12-27 13:45:44', '2020-12-27 13:45:46', 'fxi', 'Air Iceland Connect', 282, '1997', 'Reykjavik, Iceland', '240', '-', '-', 'Faxi', '<p>3x De Havilland DHC-8-200</p>\n\n<p>2x De Havilland DHC-8-400</p>', '<p>-</p>', '<p>-</p>', '<p><strong>Roster:&nbsp;</strong></p>\n\n<p><strong>Leave:&nbsp;</strong></p>\n\n<p><strong>Staff Travel:&nbsp;</strong></p>\n\n<p><strong>Per Diem:&nbsp;</strong></p>\n\n<p><strong>Additional:&nbsp;</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pilot', 0),
(44, '2020-12-27 13:49:00', '2020-12-27 13:49:02', 'ice', 'Icelandair', 289, '1979', 'Keflavik, Iceland', '1982', '$1.3 billion', '-', 'Ice Air', '<p>5x Boeing 737-Max&nbsp;8</p>\n\n<p>1x Boeing 737-Max&nbsp;9</p>\n\n<p>25x Boeing 757-200</p>\n\n<p>2x Boeing 757-300</p>\n\n<p>4x Boeing 767-300ER</p>\n\n<p>&nbsp;</p>', '<p>4x Boeing 737-Max 8</p>\n\n<p>6x Boeing 737-Max 9</p>\n\n<p>1x Boeing 787-8</p>', '<p>-</p>', '<p><strong>Roster:&nbsp;</strong></p>\n\n<p><strong>Leave:&nbsp;</strong></p>\n\n<p><strong>Staff Travel:&nbsp;</strong></p>\n\n<p><strong>Per Diem:&nbsp;</strong></p>\n\n<p><strong>Additional:&nbsp;</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pilot', 0),
(45, '2020-12-27 13:51:33', '2020-12-27 13:51:34', 'aza', 'Alitalia', 296, '1946', 'Rome, Italy', '10272', '2.92 billion (EUR)', '-', 'Alitalia', '<p>22x Airbus A319-100</p>\n\n<p>28x Airbus A320-200</p>\n\n<p>5x Airbus A321-100</p>\n\n<p>14x Airbus A330-200</p>\n\n<p>11x Boeing 777-200ER</p>\n\n<p>1x Boeing 777-300ER</p>', '<p>-</p>', '<p>-</p>', '<p><strong>Roster:&nbsp;</strong></p>\n\n<p><strong>Leave:&nbsp;</strong></p>\n\n<p><strong>Staff Travel:&nbsp;</strong></p>\n\n<p><strong>Per Diem:&nbsp;</strong></p>\n\n<p><strong>Additional:&nbsp;</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pilot', 0),
(46, '2020-12-27 13:52:49', '2020-12-27 13:52:51', 'cyl', 'Alitalia CityLiner', 303, '2006', 'Rome, Italy', '-', '-', '-', 'Cityliner', '<p>15x Embraer 175</p>\n\n<p>5x Embraer 190</p>', '<p>-</p>', '<p>-</p>', '<p><strong>Roster:&nbsp;</strong></p>\n\n<p><strong>Leave:&nbsp;</strong></p>\n\n<p><strong>Staff Travel:&nbsp;</strong></p>\n\n<p><strong>Per Diem:&nbsp;</strong></p>\n\n<p><strong>Additional:&nbsp;</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pilot', 0),
(47, '2020-12-27 13:54:14', '2020-12-27 13:54:16', 'bpa', 'Blue Panorama Airlines', 310, '1998', 'Rome, Italy', '-', '-', '-', 'Blue Panorama', '<p>1x Boeing 737-300</p>\n\n<p>1x Boeing 737-400</p>\n\n<p>8x Boeing 737-800</p>\n\n<p>1x Boeing 767-300ER</p>', '<p>-</p>', '<p>-</p>', '<p><strong>Roster:&nbsp;</strong></p>\n\n<p><strong>Leave:&nbsp;</strong></p>\n\n<p><strong>Staff Travel:&nbsp;</strong></p>\n\n<p><strong>Per Diem:&nbsp;</strong></p>\n\n<p><strong>Additional:&nbsp;</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pilot', 0),
(48, '2020-12-27 13:58:34', '2020-12-27 13:58:35', 'vsv', 'SCAT Airlines', 317, '1997', 'Shymkent, Kazakhstan', '-', '-', '-', 'Vlasta', '<p>5x Boeing 737-300</p>\n\n<p>3x Boeing 737-500</p>\n\n<p>1x Boeing 737-700</p>\n\n<p>1x Boeing 737-Max 8</p>\n\n<p>3x Boeing 757-200</p>\n\n<p>7x Bombardier CRJ200</p>', '<p>5x Boeing 737-Max 8</p>', '<p>-</p>', '<p><strong>Roster:&nbsp;</strong></p>\n\n<p><strong>Leave:&nbsp;</strong></p>\n\n<p><strong>Staff Travel:&nbsp;</strong></p>\n\n<p><strong>Per Diem:&nbsp;</strong></p>\n\n<p><strong>Additional:&nbsp;</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pilot', 0),
(49, '2020-12-27 14:00:24', '2020-12-27 14:00:25', 'bti', 'Air Baltic', 324, '1995', 'Riga, Latvia', '>1500', '286 Million (EUR)', '-', 'Air Baltic', '<p>23x Airbus A220-300</p>\n\n<p>4x Boeing 737-300</p>\n\n<p>12x De Havilland DHC-8</p>', '<p>28x Airbus A220-300</p>', '<p>-</p>', '<p><strong>Roster:&nbsp;</strong></p>\n\n<p><strong>Leave:&nbsp;</strong></p>\n\n<p><strong>Staff Travel:&nbsp;</strong></p>\n\n<p><strong>Per Diem:&nbsp;</strong></p>\n\n<p><strong>Additional:&nbsp;</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pilot', 0),
(50, '2020-12-27 14:01:58', '2020-12-27 14:01:59', 'dnu', 'DOT LT', 331, '2003', 'Kaunas, Lithuania', '-', '-', '-', 'Danu', '<p>1x ATR 42-300</p>\n\n<p>1x ATR 42-500</p>', '<p>-</p>', '<p>-</p>', '<p><strong>Roster:&nbsp;</strong></p>\n\n<p><strong>Leave:&nbsp;</strong></p>\n\n<p><strong>Staff Travel:&nbsp;</strong></p>\n\n<p><strong>Per Diem:&nbsp;</strong></p>\n\n<p><strong>Additional:&nbsp;</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pilot', 0),
(51, '2020-12-27 14:03:57', '2020-12-27 14:03:58', 'lgl', 'Luxair', 338, '1962', 'Sandweiler, Luxembourg', '>2400', '505.4 million (EUR)', '-', 'Luxair', '<p>4x Boeing 737-700</p>\n\n<p>4x Boeing 737-800</p>\n\n<p>11x De Havilland DHC-8-400</p>', '<p>-</p>', '<p>-</p>', '<p><strong>Roster:&nbsp;</strong></p>\n\n<p><strong>Leave:&nbsp;</strong></p>\n\n<p><strong>Staff Travel:&nbsp;</strong></p>\n\n<p><strong>Per Diem:&nbsp;</strong></p>\n\n<p><strong>Additional:&nbsp;</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pilot', 0),
(52, '2020-12-27 14:05:59', '2020-12-27 14:06:01', 'amc', 'Air Malta', 345, '1973', 'Luqa, Malta', '-', '-', '-', 'Air Malta', '<p>4x Airbus A320-200</p>\n\n<p>4x AIrbus A320neo</p>', '<p>-</p>', '<p>-</p>', '<p><strong>Roster:&nbsp;</strong></p>\n\n<p><strong>Leave:&nbsp;</strong></p>\n\n<p><strong>Staff Travel:&nbsp;</strong></p>\n\n<p><strong>Per Diem:&nbsp;</strong></p>\n\n<p><strong>Additional:&nbsp;</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pilot', 0),
(53, '2020-12-27 14:08:36', '2020-12-27 14:08:37', 'mld', 'Air Moldova', 352, '1993', 'Chișinău, Moldova', '-', '2.5 billion (MDL)', '-', 'Air Moldova', '<p>2x Airbus A319-100</p>\n\n<p>1x Airbus A320-200</p>\n\n<p>1x Airbus A321-200</p>', '<p>-</p>', '<p>-</p>', '<p><strong>Roster:&nbsp;</strong></p>\n\n<p><strong>Leave:&nbsp;</strong></p>\n\n<p><strong>Staff Travel:&nbsp;</strong></p>\n\n<p><strong>Per Diem:&nbsp;</strong></p>\n\n<p><strong>Additional:&nbsp;</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pilot', 0),
(54, '2020-12-27 14:11:27', '2020-12-27 14:11:28', 'tfl', 'TUI Nederland', 359, '2005', 'Haarlemmermeer, Netherland', '-', '-', '-', 'Orange', '<p>1x Boeing 737-800</p>\n\n<p>3x Boeing 737-Max 8</p>\n\n<p>1x Boeing 767-30ER</p>\n\n<p>3x Boeing 787-8</p>', '<p>1x Boeing 737-Max 8</p>', '<p>-</p>', '<p><strong>Roster:&nbsp;</strong></p>\n\n<p><strong>Leave:&nbsp;</strong></p>\n\n<p><strong>Staff Travel:&nbsp;</strong></p>\n\n<p><strong>Per Diem:&nbsp;</strong></p>\n\n<p><strong>Additional:&nbsp;</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pilot', 0),
(55, '2020-12-27 14:13:02', '2020-12-27 14:13:03', 'tra', 'Transavia Airlines', 366, '1965', 'Haarlemmermeer, Netherland', '2666', '1.2 billion (EUR)', '-', 'Transavia', '<p>7x Boeing 737-700</p>\n\n<p>35x Boeing 737-800</p>', '<p>-</p>', '<p>-</p>', '<p><strong>Roster:&nbsp;</strong></p>\n\n<p><strong>Leave:&nbsp;</strong></p>\n\n<p><strong>Staff Travel:&nbsp;</strong></p>\n\n<p><strong>Per Diem:&nbsp;</strong></p>\n\n<p><strong>Additional:&nbsp;</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pilot', 0),
(56, '2020-12-27 14:14:51', '2020-12-27 14:14:52', 'nax', 'Norwegian Air Shuttle', 373, '1993', 'Fornebu, Norway', '9388', '43.522 billion (NOK)', '-', 'Nor Shuttle', '<p>18x Boeing 737-800</p>', '<p>65x Airbus A320neo</p>\n\n<p>30x Airbus A321LR</p>', '<p>-</p>', '<p><strong>Roster:&nbsp;</strong></p>\n\n<p><strong>Leave:&nbsp;</strong></p>\n\n<p><strong>Staff Travel:&nbsp;</strong></p>\n\n<p><strong>Per Diem:&nbsp;</strong></p>\n\n<p><strong>Additional:&nbsp;</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pilot', 0),
(57, '2020-12-27 14:16:41', '2020-12-27 14:16:43', 'nrs', 'Norwegian Air UK', 380, '2015', 'London, UK', '-', '-', '-', 'Rednose', '<p>13x Boeing 787-9</p>\n\n<p>&nbsp;</p>', '<p>1x Boeing 787-9</p>', '<p>-</p>', '<p><strong>Roster:&nbsp;</strong></p>\n\n<p><strong>Leave:&nbsp;</strong></p>\n\n<p><strong>Staff Travel:&nbsp;</strong></p>\n\n<p><strong>Per Diem:&nbsp;</strong></p>\n\n<p><strong>Additional:&nbsp;</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pilot', 0),
(58, '2020-12-27 14:20:50', '2020-12-27 14:20:52', 'lot', 'LOT Polish Airlines', 387, '1928 - (1945)', 'Warsaw, Poland', '2028', '300 million (PLN)', '-', 'Lot', '<p>2x Boeing 737-400</p>\n\n<p>1x Boeing 737.700</p>\n\n<p>7x Boeing 737-800</p>\n\n<p>5x Boeing 737-Max 8</p>\n\n<p>8x Boeing 787-8</p>\n\n<p>7x Boeing 787-9</p>\n\n<p>1x Bombardier CRJ900</p>\n\n<p>12x De Havilland DHC-8-400</p>\n\n<p>6x Embraer 170</p>\n\n<p>10x Embraer 175</p>\n\n<p>4x Embraer 190</p>\n\n<p>15x Embraer 195</p>', '<p>10x Boeing 737-Max 8</p>\n\n<p>2x Boeing 787-9</p>', '<p>-</p>', '<p><strong>Roster:&nbsp;</strong></p>\n\n<p><strong>Leave:&nbsp;</strong></p>\n\n<p><strong>Staff Travel:&nbsp;</strong></p>\n\n<p><strong>Per Diem:&nbsp;</strong></p>\n\n<p><strong>Additional:&nbsp;</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pilot', 0),
(59, '2020-12-27 14:22:47', '2020-12-27 14:22:48', 'rzo', 'Azores Airlines', 394, '1990', 'Ponta Delgada, Portugal', '-', '-', '-', 'Air Azores', '<p>3x Airbus A320-200</p>\n\n<p>2x Airbus A321neo</p>\n\n<p>1x Airbus A321LR</p>', '<p>3x Airbus A321LR</p>', '<p>-</p>', '<p><strong>Roster:&nbsp;</strong></p>\n\n<p><strong>Leave:&nbsp;</strong></p>\n\n<p><strong>Staff Travel:&nbsp;</strong></p>\n\n<p><strong>Per Diem:&nbsp;</strong></p>\n\n<p><strong>Additional:&nbsp;</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pilot', 0),
(60, '2020-12-27 14:26:42', '2020-12-27 14:26:43', 'tap', 'TAP Air Portugal', 401, '1945', 'Lisbon, Portugal', '7385', '1.65 billion (EUR)', '93', 'Air Portugal', '<p>14x Airbus A319-100</p>\n\n<p>18x Airbus A320-200</p>\n\n<p>8x Airbus A320neo</p>\n\n<p>3x Airbus A321-200</p>\n\n<p>6x Airbus A321neo</p>\n\n<p>10x A321LR</p>\n\n<p>6x Airbus A330-200</p>\n\n<p>19x Airbus A330-900</p>\n\n<p>8x ATR 72-600</p>\n\n<p>8x Embraer 190</p>\n\n<p>4x Embraer 195</p>', '<p>7x Airbus A320neo</p>\n\n<p>18x Airbus A321neo</p>\n\n<p>4x Airbus A321LR</p>', '<p>-</p>', '<p><strong>Roster:&nbsp;</strong></p>\n\n<p><strong>Leave:&nbsp;</strong></p>\n\n<p><strong>Staff Travel:&nbsp;</strong></p>\n\n<p><strong>Per Diem:&nbsp;</strong></p>\n\n<p><strong>Additional:&nbsp;</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pilot', 0),
(61, '2020-12-27 14:29:43', '2020-12-27 14:29:44', 'bla', 'Blue Air', 408, '2004', 'Bucharest, Romania', '-', '458 million (EUR)', '57', 'Blue Air', '<p>2x Boeing 737-700</p>\n\n<p>6x Boeing 737-500</p>\n\n<p>1x Boeing 737-700</p>\n\n<p>10x Boeing 737-800</p>\n\n<p>&nbsp;</p>', '<p>1x Boeing 737-Max 8</p>', '<p>-</p>', '<p><strong>Roster:&nbsp;</strong></p>\n\n<p><strong>Leave:&nbsp;</strong></p>\n\n<p><strong>Staff Travel:&nbsp;</strong></p>\n\n<p><strong>Per Diem:&nbsp;</strong></p>\n\n<p><strong>Additional:&nbsp;</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pilot', 0),
(62, '2020-12-27 14:30:43', '2020-12-27 14:30:44', 'sek', 'Star East AIrlines', 415, '2016', 'Bucharest, Romania', '-', '-', '-', 'East Rider', '<p>1x Airbus A320-200</p>\n\n<p>1x Boeing 737-400</p>\n\n<p>&nbsp;</p>', '<p>-</p>', '<p>-</p>', '<p><strong>Roster:&nbsp;</strong></p>\n\n<p><strong>Leave:&nbsp;</strong></p>\n\n<p><strong>Staff Travel:&nbsp;</strong></p>\n\n<p><strong>Per Diem:&nbsp;</strong></p>\n\n<p><strong>Additional:&nbsp;</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pilot', 0),
(63, '2020-12-27 14:32:51', '2020-12-27 14:32:52', 'rot', 'TAROM', 422, '1920', 'Bucharest, Romania', '2020', '315 million (EUR)', '52', 'Tarom', '<p>4x Airbus A318-100</p>\n\n<p>7x ATR 42-500</p>\n\n<p>2x ATR 72-500</p>\n\n<p>4x ATR 72-600</p>\n\n<p>4x Boeing 737-300</p>\n\n<p>4x Boeing 737-700</p>\n\n<p>4x Boeing 737-800</p>\n\n<p>&nbsp;</p>', '<p>5x Boeing 737-Max 8</p>', '<p>-</p>', '<p><strong>Roster:&nbsp;</strong></p>\n\n<p><strong>Leave:&nbsp;</strong></p>\n\n<p><strong>Staff Travel:&nbsp;</strong></p>\n\n<p><strong>Per Diem:&nbsp;</strong></p>\n\n<p><strong>Additional:&nbsp;</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pilot', 0),
(64, '2020-12-27 14:35:33', '2020-12-27 14:35:34', 'shu', 'Aurora Airlines', 429, '2013', 'Juschno-Sachalinsk, Russia', '-', '-', '-', 'Satair', '<p>10x AIrbus A319-100</p>\n\n<p>1x De Havilland DHC-8-200</p>\n\n<p>3x De Havilland DHC-8-300</p>\n\n<p>5x De Havilland DHC-8-400</p>', '<p>5x De Havilland DHC-8-400</p>', '<p>-</p>', '<p><strong>Roster:&nbsp;</strong></p>\n\n<p><strong>Leave:&nbsp;</strong></p>\n\n<p><strong>Staff Travel:&nbsp;</strong></p>\n\n<p><strong>Per Diem:&nbsp;</strong></p>\n\n<p><strong>Additional:&nbsp;</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pilot', 0),
(65, '2020-12-27 14:39:34', '2020-12-27 14:39:36', 'nws', 'Nordwind Airlines', 436, '2008', 'Moscow, Russia', '-', '-', '81', 'Nordland', '<p>8x AIrbus A321-200</p>\n\n<p>2x Airbus A330-200</p>\n\n<p>12x Boeing 737-800</p>\n\n<p>6x Boeing 777-200ER</p>\n\n<p>3x Boeing 777-300ER</p>', '<p>3x Airbus A330-200</p>\n\n<p>5x Irkut MC-21-300</p>', '<p>-</p>', '<p><strong>Roster:&nbsp;</strong></p>\n\n<p><strong>Leave:&nbsp;</strong></p>\n\n<p><strong>Staff Travel:&nbsp;</strong></p>\n\n<p><strong>Per Diem:&nbsp;</strong></p>\n\n<p><strong>Additional:&nbsp;</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pilot', 0),
(66, '2020-12-27 14:42:12', '2020-12-27 14:45:22', 'rwz', 'Red Wings Airlines', 443, '1999', 'Moscow, Russia', '-', '-', '20', 'Air Red', '<p>3x Sukhoi Superjet 100</p>\n\n<p>4x Airbus A320-200</p>\n\n<p>11x Airbus A321-200</p>\n\n<p>&nbsp;</p>', '<p>57x Sukhoi Superjet 100</p>', '<p>-</p>', '<p><strong>Roster:&nbsp;</strong></p>\n\n<p><strong>Leave:&nbsp;</strong></p>\n\n<p><strong>Staff Travel:&nbsp;</strong></p>\n\n<p><strong>Per Diem:&nbsp;</strong></p>\n\n<p><strong>Additional:&nbsp;</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pilot', 0),
(67, '2020-12-27 14:44:58', '2020-12-27 14:44:59', 'sdm', 'Rossiya', 450, '1992', 'Saint Petersburg, Russia', '7200', '-', '53', 'Rossiya', '<p>20x Airbus A319-100</p>\n\n<p>6x Airbus A320-200</p>\n\n<p>9x Boeing 737-800</p>\n\n<p>9x Boeing 747-400</p>\n\n<p>5x Boeing 777-300</p>\n\n<p>5x Boeing 777-300ER</p>\n\n<p>1x Sukhoi Superjet 100</p>', '<p>4x Airbus A320-200</p>\n\n<p>66x Sukhoi Superjet 100</p>', '<p>-</p>', '<p><strong>Roster:&nbsp;</strong></p>\n\n<p><strong>Leave:&nbsp;</strong></p>\n\n<p><strong>Staff Travel:&nbsp;</strong></p>\n\n<p><strong>Per Diem:&nbsp;</strong></p>\n\n<p><strong>Additional:&nbsp;</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pilot', 0),
(68, '2020-12-27 14:47:40', '2020-12-27 14:47:41', 'sbi', 'S7 Airlines', 457, '1992', 'Moscow, Russia', '3000', '-', '150', 'Siberian', '<p>11x Airbus A319-100</p>\n\n<p>18x Airbus A320-200</p>\n\n<p>24x AIrbus A320neo</p>\n\n<p>7x Airbus A321-200</p>\n\n<p>4x Airbus A321neo</p>\n\n<p>21x Boeing 737-800</p>\n\n<p>2x Boeing 737-Max 8</p>\n\n<p>18x Embraer 170LR</p>', '<p>3x Airbus A320neo</p>\n\n<p>5x Boeing 737-Max 8</p>', '<p>-</p>', '<p><strong>Roster:&nbsp;</strong></p>\n\n<p><strong>Leave:&nbsp;</strong></p>\n\n<p><strong>Staff Travel:&nbsp;</strong></p>\n\n<p><strong>Per Diem:&nbsp;</strong></p>\n\n<p><strong>Additional:&nbsp;</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pilot', 0),
(69, '2020-12-27 14:50:31', '2020-12-27 14:50:32', 'uta', 'Utair', 464, '1991', 'Chanty-Mansijsk, Russia', '1850', '-', '72', 'Utair', '<p>15x ATR 72-500</p>\n\n<p>6x Boeing 737-400</p>\n\n<p>30x Boeing 737-500</p>\n\n<p>9x Boeing 737-800</p>\n\n<p>3x Boeing 767-200ER</p>', '<p>30x Boeing 737-Max 8</p>', '<p>-</p>', '<p><strong>Roster:&nbsp;</strong></p>\n\n<p><strong>Leave:&nbsp;</strong></p>\n\n<p><strong>Staff Travel:&nbsp;</strong></p>\n\n<p><strong>Per Diem:&nbsp;</strong></p>\n\n<p><strong>Additional:&nbsp;</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pilot', 0),
(70, '2020-12-27 14:52:43', '2020-12-27 14:52:45', 'svr', 'Ural Airlines', 471, '1993', 'Jekaterinburg, Russia', '-', '-', '101', 'Sverdlovsk Air', '<p>5x Airbus A319-100</p>\n\n<p>23x Airbus A320-200</p>\n\n<p>3x Airbus A320neo</p>\n\n<p>15x Airbus A321-200</p>\n\n<p>2x Airbus A321neo</p>', '<p>7x Airbus A320-200</p>\n\n<p>14x Boeing 737-Max 8</p>', '<p>-</p>', '<p><strong>Roster:&nbsp;</strong></p>\n\n<p><strong>Leave:&nbsp;</strong></p>\n\n<p><strong>Staff Travel:&nbsp;</strong></p>\n\n<p><strong>Per Diem:&nbsp;</strong></p>\n\n<p><strong>Additional:&nbsp;</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pilot', 0),
(71, '2020-12-27 14:54:47', '2020-12-27 14:54:49', 'asl', 'Air Serbia', 478, '1927', 'Belgrade, Serbia', '1750', '290.73 million (EUR)', '63', 'Air Serbia', '<p>11x Airbus A319-100</p>\n\n<p>2x Airbus A320-200</p>\n\n<p>1x Airbus A330-200</p>\n\n<p>3x ATR 72-200</p>\n\n<p>2x ATR 72-500</p>\n\n<p>3x Boeing 737-300</p>', '<p>-</p>', '<p>-</p>', '<p><strong>Roster:&nbsp;</strong></p>\n\n<p><strong>Leave:&nbsp;</strong></p>\n\n<p><strong>Staff Travel:&nbsp;</strong></p>\n\n<p><strong>Per Diem:&nbsp;</strong></p>\n\n<p><strong>Additional:&nbsp;</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pilot', 0),
(72, '2020-12-27 16:04:18', '2020-12-27 16:04:19', 'aea', 'Air Europa', 485, '1986', 'Llucmajor, Spain', '-', '1.68 billion (EUR)', '44', 'Europa', '<p>8x Airbus A330-200</p>\n\n<p>2x Airbus 330-300</p>\n\n<p>20x Boeing 737-800</p>\n\n<p>8x Boeing 787-8</p>\n\n<p>5x Boeing 787-9</p>', '<p>22x Boeing 737-Max 8</p>\n\n<p>13x Boeing 787-9</p>', '<p>-</p>', '<p><strong>Roster:&nbsp;</strong></p>\n\n<p><strong>Leave:&nbsp;</strong></p>\n\n<p><strong>Staff Travel:&nbsp;</strong></p>\n\n<p><strong>Per Diem:&nbsp;</strong></p>\n\n<p><strong>Additional:&nbsp;</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pilot', 0),
(73, '2020-12-27 16:05:36', '2020-12-27 16:05:37', 'ova', 'Air Europa Express', 492, '1996', 'Llucmajor, Spain', '-', '-', '-', 'Aeronova', '<p>4x ATR 72-500</p>\n\n<p>2x Boeing 737-800</p>\n\n<p>11x Embraer 195</p>', '<p>-</p>', '<p>-</p>', '<p><strong>Roster:&nbsp;</strong></p>\n\n<p><strong>Leave:&nbsp;</strong></p>\n\n<p><strong>Staff Travel:&nbsp;</strong></p>\n\n<p><strong>Per Diem:&nbsp;</strong></p>\n\n<p><strong>Additional:&nbsp;</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pilot', 0),
(74, '2020-12-27 16:07:20', '2020-12-27 16:07:21', 'ane', 'Air Nostrum', 499, '1994', 'Valencia, Spain', '-', '-', '58', 'Air Nostrum', '<p>11x ATR 72.600</p>\n\n<p>7x Bombardier CRJ200</p>\n\n<p>6x Bombardier CRJ900</p>\n\n<p>27x Bombardier CRJ1000</p>', '<p>-</p>', '<p>-</p>', '<p><strong>Roster:&nbsp;</strong></p>\n\n<p><strong>Leave:&nbsp;</strong></p>\n\n<p><strong>Staff Travel:&nbsp;</strong></p>\n\n<p><strong>Per Diem:&nbsp;</strong></p>\n\n<p><strong>Additional:&nbsp;</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pilot', 0),
(75, '2020-12-27 16:08:45', '2020-12-27 16:08:46', 'lav', 'Alba Star', 506, '2009', 'Palma, Spain', '250', '-', '-', 'Albastar', '<p>1x Boeing 737-400</p>\n\n<p>5x Boeing 737-800</p>', '<p>-</p>', '<p>-</p>', '<p><strong>Roster:&nbsp;</strong></p>\n\n<p><strong>Leave:&nbsp;</strong></p>\n\n<p><strong>Staff Travel:&nbsp;</strong></p>\n\n<p><strong>Per Diem:&nbsp;</strong></p>\n\n<p><strong>Additional:&nbsp;</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pilot', 0),
(76, '2020-12-27 16:11:30', '2020-12-27 16:11:31', 'ibs', 'Iberia Express', 513, '2011', 'Madrid, Spain', '-', '-', '44', 'Iberexpress', '<p>17x Airbus A320-200</p>\n\n<p>4x Airbus A321-200</p>\n\n<p>3x Airbus A321neo</p>', '<p>-</p>', '<p>-</p>', '<p><strong>Roster:&nbsp;</strong></p>\n\n<p><strong>Leave:&nbsp;</strong></p>\n\n<p><strong>Staff Travel:&nbsp;</strong></p>\n\n<p><strong>Per Diem:&nbsp;</strong></p>\n\n<p><strong>Additional:&nbsp;</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pilot', 0),
(77, '2020-12-27 16:14:10', '2021-01-19 16:16:27', 'ibe', 'Iberia', 1290, '1927', 'Madrid, Spain', '22500', '4.6 billion (EUR)', '-', 'Iberia', '<p>10x Airbus A319-100</p>\n\n<p>14x Airbus A320-200</p>\n\n<p>8x Airbus A320neo</p>\n\n<p>11x Airbus A321-200</p>\n\n<p>12x Airbus A330-200</p>\n\n<p>8x Airbus A330-300</p>\n\n<p>9x Airbus A350-900</p>\n\n<p>&nbsp;</p>', '<p>10x Airbus A320neo</p>\n\n<p>4x Airbus A321neo</p>\n\n<p>8x Airbus A321XLR</p>\n\n<p>11x Airbus A350-900</p>', '<p>-</p>', '<p><strong>Roster:&nbsp;</strong></p>\n\n<p><strong>Leave:&nbsp;</strong></p>\n\n<p><strong>Staff Travel:&nbsp;</strong></p>\n\n<p><strong>Per Diem:&nbsp;</strong></p>\n\n<p><strong>Additional:&nbsp;</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'europe', 'national', '/', 'pilot', 0),
(78, '2020-12-27 16:16:08', '2021-01-19 16:15:36', 'bos', 'Level', 1283, '2017', 'El Prat de Llobregat', '-', '-', '11', 'Mistral / Iberia', '<p>7x Airbus A330-200</p>', '<p>-</p>', '<p>-</p>', '<p><strong>Roster:&nbsp;</strong></p>\n\n<p><strong>Leave:&nbsp;</strong></p>\n\n<p><strong>Staff Travel:&nbsp;</strong></p>\n\n<p><strong>Per Diem:&nbsp;</strong></p>\n\n<p><strong>Additional:&nbsp;</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'europe', 'national', '/', 'pilot', 0),
(79, '2020-12-27 16:19:30', '2021-01-19 16:14:41', 'pue', 'Plus Ultra Líneas Aéreas', 1269, '2011', 'Madrid, Spain', '-', '-', '6', 'Spanish', '<p>2x Airbus A340-300</p>\n\n<p>1x Airbus A340-600</p>', '<p>-</p>', '<p>-</p>', '<p><strong>Roster:&nbsp;</strong></p>\n\n<p><strong>Leave:&nbsp;</strong></p>\n\n<p><strong>Staff Travel:&nbsp;</strong></p>\n\n<p><strong>Per Diem:&nbsp;</strong></p>\n\n<p><strong>Additional:&nbsp;</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'europe', 'national', '/', 'pilot', 0),
(80, '2020-12-27 16:21:08', '2021-01-19 16:14:12', 'voe', 'Volotea', 1262, '2011', 'Oviedo, Spain', '1300', '396.1 million (EUR)', '79', 'Volotea', '<p>20x Airbus A319-100</p>\n\n<p>9x Boeing 717-200</p>\n\n<p>&nbsp;</p>', '<p>3x Airbus A319-100</p>\n\n<p>&nbsp;</p>', '<p>-</p>', '<p><strong>Roster:&nbsp;</strong></p>\n\n<p><strong>Leave:&nbsp;</strong></p>\n\n<p><strong>Staff Travel:&nbsp;</strong></p>\n\n<p><strong>Per Diem:&nbsp;</strong></p>\n\n<p><strong>Additional:&nbsp;</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'europe', 'national', '/', 'pilot', 0),
(81, '2020-12-27 16:23:17', '2021-01-19 16:13:48', 'vlg', 'Vueling', 1255, '2004', 'El Prat de Llobregat', '2200', '2 billion (EUR)', '148', 'Vueling', '<p>6x Airbus A319-100</p>\n\n<p>77x Airbus A320-200</p>\n\n<p>25x Airbus A320neo</p>\n\n<p>18x Airbus A321-200</p>\n\n<p>&nbsp;</p>', '<p>8x Airbus A320neo</p>\n\n<p>14x Airbus A321neo</p>', '<p>-</p>', '<p><strong>Roster:&nbsp;</strong></p>\n\n<p><strong>Leave:&nbsp;</strong></p>\n\n<p><strong>Staff Travel:&nbsp;</strong></p>\n\n<p><strong>Per Diem:&nbsp;</strong></p>\n\n<p><strong>Additional:&nbsp;</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'europe', 'national', '/', 'pilot', 0);
INSERT INTO `insights` (`id`, `created_at`, `updated_at`, `slug`, `name`, `image_id`, `founding`, `headquarter`, `employees`, `profits`, `destinations`, `callsign`, `fleet`, `orders`, `assessments`, `benefits`, `salary_captain_max`, `salary_captain_avg`, `salary_captain_min`, `salary_sfo_max`, `salary_sfo_avg`, `salary_sfo_min`, `salary_fo_max`, `salary_fo_avg`, `salary_fo_min`, `salary_so_max`, `salary_so_avg`, `salary_so_min`, `region`, `type`, `assessments_link`, `job_type`, `has_draft`) VALUES
(82, '2020-12-27 16:25:18', '2021-01-19 16:12:47', 'ezs', 'EasyJet Switzerland', 1248, '1999', 'Meyrin, Switzerland', '1020', '-', '80', 'Topswiss', '<p>7x Airbus A319-100</p>\n\n<p>23x Airbus A320-200</p>\n\n<p>&nbsp;</p>', '<p>-</p>', '<p>-</p>', '<p><strong>Roster:&nbsp;</strong></p>\n\n<p><strong>Leave:&nbsp;</strong></p>\n\n<p><strong>Staff Travel:&nbsp;</strong></p>\n\n<p><strong>Per Diem:&nbsp;</strong></p>\n\n<p><strong>Additional:&nbsp;</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'europe', 'national', '/', 'pilot', 0),
(83, '2020-12-27 16:27:32', '2021-01-19 16:12:31', 'ezy', 'EasyJet', 1241, '1995', 'Luton, UK', '8446', '5.4 billion (EUR)', '-', 'Easy', '<p>61x Airbus A319-100</p>\n\n<p>55x Airbus A320-200</p>\n\n<p>37x Airbus A320neo</p>\n\n<p>10x Airbus A321neo</p>', '<p>93x Airbus A320neo</p>\n\n<p>17x Airbus A321neo</p>', '<p>-</p>', '<p><strong>Roster:&nbsp;</strong></p>\n\n<p><strong>Leave:&nbsp;</strong></p>\n\n<p><strong>Staff Travel:&nbsp;</strong></p>\n\n<p><strong>Per Diem:&nbsp;</strong></p>\n\n<p><strong>Additional:&nbsp;</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'europe', 'national', '/', 'pilot', 0),
(84, '2020-12-27 16:30:16', '2021-01-19 16:18:30', 'gsw', 'Chair Airlines', 1304, '2014', 'Opfikon, Switzerland', '150', '-', '20', 'Eiger', '<p>3x Airbus A319-100</p>', '<p>-</p>', '<p>-</p>', '<p><strong>Roster:&nbsp;</strong></p>\n\n<p><strong>Leave:&nbsp;</strong></p>\n\n<p><strong>Staff Travel:&nbsp;</strong></p>\n\n<p><strong>Per Diem:&nbsp;</strong></p>\n\n<p><strong>Additional:&nbsp;</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'europe', 'national', '/', 'pilot', 0),
(85, '2020-12-27 16:32:33', '2021-01-19 16:10:46', 'edw', 'Edelweiss Air', 1234, '1995', 'Kloten, Switzerland', '-', '652 million (CHF)', '65', 'Edelweiss', '<p>10x Airbus A320-200</p>\n\n<p>2x Airbus A330-300</p>\n\n<p>4x Airbus 340-400</p>', '<p>-</p>', '<p>-</p>', '<p><strong>Roster:&nbsp;</strong></p>\n\n<p><strong>Leave:&nbsp;</strong></p>\n\n<p><strong>Staff Travel:&nbsp;</strong></p>\n\n<p><strong>Per Diem:&nbsp;</strong></p>\n\n<p><strong>Additional:&nbsp;</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'europe', 'national', '/', 'pilot', 0),
(86, '2020-12-27 16:34:34', '2021-01-19 16:09:47', 'oaw', 'Helvetic', 1227, '2003', 'Wilen, Switzerland', '450', '-', '34', 'Helvetic', '<p>6x Embraer 190</p>\n\n<p>7x Embraer 190-E2</p>', '<p>2x Embraer 190-E2</p>\n\n<p>4x Embraer 195-E2</p>', '<p>-</p>', '<p><strong>Roster:&nbsp;</strong></p>\n\n<p><strong>Leave:&nbsp;</strong></p>\n\n<p><strong>Staff Travel:&nbsp;</strong></p>\n\n<p><strong>Per Diem:&nbsp;</strong></p>\n\n<p><strong>Additional:&nbsp;</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'europe', 'national', '/', 'pilot', 0),
(87, '2020-12-27 16:41:36', '2021-01-19 16:07:13', 'lni', 'Lion Air', 1220, '1999', 'Jakarta, Indonesia', '-', '-', '60', 'Lion Inter', '<p>6x Airbus A330-300</p>\n\n<p>4x Airbus A330-900neo</p>\n\n<p>39x Boeing 737-800</p>\n\n<p>65x Boeing 737-900ER</p>\n\n<p>10x Boeing 737-Max 8</p>', '<p>112x Airbus A320neo</p>\n\n<p>65x Airbus A321neo</p>\n\n<p>8x Airbus A330-900neo</p>\n\n<p>5x Boeing 737-900ER</p>\n\n<p>237x Boeing 737-Max 8</p>\n\n<p>237x Boeing 737-Max9</p>', '<p>-</p>', '<p><strong>Roster:&nbsp;</strong></p>\n\n<p><strong>Leave:&nbsp;</strong></p>\n\n<p><strong>Staff Travel:&nbsp;</strong></p>\n\n<p><strong>Per Diem:&nbsp;</strong></p>\n\n<p><strong>Additional:&nbsp;</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'asia', 'national', '/', 'pilot', 0),
(88, '2020-12-27 16:43:40', '2021-01-19 16:05:26', 'cai', 'Corendon Airlines', 1213, '2004', 'Antalya, Turkey', '-', '-', '145', 'Corendon', '<p>23x Boeing 737-800</p>\n\n<p>1x Boeing 737-Max 8</p>', '<p>-</p>', '<p>-</p>', '<p><strong>Roster:&nbsp;</strong></p>\n\n<p><strong>Leave:&nbsp;</strong></p>\n\n<p><strong>Staff Travel:&nbsp;</strong></p>\n\n<p><strong>Per Diem:&nbsp;</strong></p>\n\n<p><strong>Additional:&nbsp;</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'europe', 'national', '/', 'pilot', 0),
(89, '2020-12-27 16:45:34', '2021-01-19 16:04:19', 'cnd', 'Corendon Dutch Airlines', 1206, '2010', 'Haarlemmermeer, Netherlands', '-', '-', '35', 'Dutch Corendon', '<p>3x Boeing 737-800</p>', '<p>1x Boeing 737-Max 9</p>', '<p>-</p>', '<p><strong>Roster:&nbsp;</strong></p>\n\n<p><strong>Leave:&nbsp;</strong></p>\n\n<p><strong>Staff Travel:&nbsp;</strong></p>\n\n<p><strong>Per Diem:&nbsp;</strong></p>\n\n<p><strong>Additional:&nbsp;</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'europe', 'national', '/', 'pilot', 0),
(90, '2020-12-27 16:47:20', '2021-01-19 16:03:20', 'cxi', 'Corendon Airlines Europe', 1192, '2017', 'Luqa, Malta', '-', '-', '-', 'Touristic', '<p>6x Boeing 737-800</p>\n\n<p>&nbsp;</p>', '<p>1x Boeing 737-Max 8</p>', '<p>-</p>', '<p><strong>Roster:&nbsp;</strong></p>\n\n<p><strong>Leave:&nbsp;</strong></p>\n\n<p><strong>Staff Travel:&nbsp;</strong></p>\n\n<p><strong>Per Diem:&nbsp;</strong></p>\n\n<p><strong>Additional:&nbsp;</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'europe', 'national', '/', 'pilot', 0),
(91, '2020-12-27 16:49:22', '2021-01-19 16:02:45', 'sxs', 'SunExpress', 1185, '1989', 'Antalya, Turkey', '5000', '1.15 billion (EUR)', '>90', 'Sunexpress', '<p>62x Boeing 737-800</p>', '<p>42x Boeing 737-Max 8</p>', '<p>-</p>', '<p><strong>Roster:&nbsp;</strong></p>\n\n<p><strong>Leave:&nbsp;</strong></p>\n\n<p><strong>Staff Travel:&nbsp;</strong></p>\n\n<p><strong>Per Diem:&nbsp;</strong></p>\n\n<p><strong>Additional:&nbsp;</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'europe', 'national', '/', 'pilot', 0),
(92, '2020-12-27 16:51:25', '2021-01-19 16:02:11', 'ohy', 'Onur Air', 1178, '1992', 'Istanbul, Turkey', '4000', '-', '10', 'Onur Air', '<p>8x Airbus A320-200</p>\n\n<p>2x Airbus A321-100</p>\n\n<p>3x Airbus A321-200</p>\n\n<p>9x Airbus A330-200</p>\n\n<p>1x Airbus A330-300</p>', '<p>1x Airbus A330-200</p>\n\n<p>2x Airbus A330-300</p>', '<p>-</p>', '<p><strong>Roster:&nbsp;</strong></p>\n\n<p><strong>Leave:&nbsp;</strong></p>\n\n<p><strong>Staff Travel:&nbsp;</strong></p>\n\n<p><strong>Per Diem:&nbsp;</strong></p>\n\n<p><strong>Additional:&nbsp;</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'europe', 'national', '/', 'pilot', 0),
(93, '2020-12-27 16:53:49', '2021-01-19 16:01:41', 'pgt', 'Pegasus Airlines', 1171, '1991', 'Istanbul, Turkey', '5621', '8.297 billion (EUR)', '111', 'Sunturk', '<p>12x Airbus A320-200</p>\n\n<p>40x Airbus A320neo</p>\n\n<p>7x Airbus A321neo</p>\n\n<p>35x Boeing 737-800</p>', '<p>21x Airbus A320neo</p>\n\n<p>35x Airbus A321neo</p>', '<p>-</p>', '<p><strong>Roster:&nbsp;</strong></p>\n\n<p><strong>Leave:&nbsp;</strong></p>\n\n<p><strong>Staff Travel:&nbsp;</strong></p>\n\n<p><strong>Per Diem:&nbsp;</strong></p>\n\n<p><strong>Additional:&nbsp;</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'europe', 'national', '/', 'pilot', 0),
(94, '2020-12-27 16:55:32', '2021-01-19 16:00:59', 'cfe', 'BA CityFlyer', 1164, '2007', 'Manchester, UK', '-', '-', '26', 'Flyer', '<p>2x Embraer 170</p>\n\n<p>22x Embraer 190</p>', '<p>2x Embraer 190</p>', '<p>-</p>', '<p><strong>Roster:&nbsp;</strong></p>\n\n<p><strong>Leave:&nbsp;</strong></p>\n\n<p><strong>Staff Travel:&nbsp;</strong></p>\n\n<p><strong>Per Diem:&nbsp;</strong></p>\n\n<p><strong>Additional:&nbsp;</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'europe', 'national', '/', 'pilot', 0),
(95, '2020-12-27 16:58:02', '2021-01-19 16:00:09', 'exs', 'Jet2.com', 1157, '2002', 'Leeds, UK', '13000', '-', '82', 'Channex', '<p>1x Airbus A321-200</p>\n\n<p>7x Boeing 737-300</p>\n\n<p>74x Boeing 737-800</p>\n\n<p>8x Boeing 757-200</p>', '<p>3x Airbus A321-200</p>', '<p>-</p>', '<p><strong>Roster:&nbsp;</strong></p>\n\n<p><strong>Leave:&nbsp;</strong></p>\n\n<p><strong>Staff Travel:&nbsp;</strong></p>\n\n<p><strong>Per Diem:&nbsp;</strong></p>\n\n<p><strong>Additional:&nbsp;</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'europe', 'national', '/', 'pilot', 0),
(96, '2020-12-27 17:00:00', '2021-01-19 15:59:29', 'wuk', 'Wizz Air UK', 1150, '2017', 'Luton, UK', '-', '-', '-', 'Wizz Go', '<p>3x Airbus A320-200</p>\n\n<p>7x Airbus A321-200</p>', '<p>-</p>', '<p><strong>-</strong></p>', '<p><strong>Roster:&nbsp;</strong></p>\n\n<p><strong>Leave:&nbsp;</strong></p>\n\n<p><strong>Staff Travel:&nbsp;</strong></p>\n\n<p><strong>Per Diem:&nbsp;</strong></p>\n\n<p><strong>Additional:&nbsp;</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'europe', 'national', '/', 'pilot', 0),
(97, '2020-12-27 17:03:39', '2021-01-19 15:57:05', 'sqp', 'SkyUp Airlines', 1143, '2016', 'Kiev, Ukraine', '-', '-', '33', 'Skyup', '<p>2x Boeing 737-700</p>\n\n<p>6x Boeing 737-800</p>\n\n<p>3x Boeing 737-900ER</p>', '<p>1x Boeing 737-900ER</p>\n\n<p>4x Boeing 737-Max 8</p>\n\n<p>3x Boeing 737-Max 10</p>', '<p>-</p>', '<p><strong>Roster:&nbsp;</strong></p>\n\n<p><strong>Leave:&nbsp;</strong></p>\n\n<p><strong>Staff Travel:&nbsp;</strong></p>\n\n<p><strong>Per Diem:&nbsp;</strong></p>\n\n<p><strong>Additional:&nbsp;</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'europe', 'national', '/', 'pilot', 0),
(98, '2020-12-27 17:05:55', '2021-01-19 15:55:39', 'aui', 'Ukraine International Airlines', 1136, '1992', 'Kiev, Ukraine', '3500', '-', '88', 'Ukraine International', '<p>19x Boeing 737-800</p>\n\n<p>4x Boeing 737-900ER</p>\n\n<p>2x Boeing 767-300ER</p>\n\n<p>3x Boeing 777-200ER</p>\n\n<p>5x Embraer 190</p>\n\n<p>2x Embraer 195</p>', '<p>-</p>', '<p>-</p>', '<p><strong>Roster:&nbsp;</strong></p>\n\n<p><strong>Leave:&nbsp;</strong></p>\n\n<p><strong>Staff Travel:&nbsp;</strong></p>\n\n<p><strong>Per Diem:&nbsp;</strong></p>\n\n<p><strong>Additional:&nbsp;</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'europe', 'national', '/', 'pilot', 0),
(99, '2020-12-30 19:08:32', '2021-01-19 15:54:22', 'gac', 'GlobeAir', 1129, '2007', 'Hörsching, Austria', '135', '26.7 million (EUR)', '-', 'Dream Team', '<p>20x Cessna Citation Mustang</p>', '<p>-</p>', '<p>-</p>', '<p><strong>Roster:&nbsp;</strong></p>\n\n<p><strong>Leave:&nbsp;</strong></p>\n\n<p><strong>Staff Travel:&nbsp;</strong></p>\n\n<p><strong>Per Diem:&nbsp;</strong></p>\n\n<p><strong>Additional:&nbsp;</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'europe', 'charter', '/', 'pilot', 0),
(100, '2020-12-30 19:10:32', '2021-01-19 15:53:51', 'abb', 'Air Belgium', 1122, '2016', 'Brussels, Belgium', '278', '-', '5', 'Air Belgium', '<p>4x Aribus A340-300</p>', '<p>-</p>', '<p>-</p>', '<p><strong>Roster:&nbsp;</strong></p>\n\n<p><strong>Leave:&nbsp;</strong></p>\n\n<p><strong>Staff Travel:&nbsp;</strong></p>\n\n<p><strong>Per Diem:&nbsp;</strong></p>\n\n<p><strong>Additional:&nbsp;</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'europe', 'charter', '/', 'pilot', 0),
(101, '2020-12-30 19:12:39', '2021-01-19 15:52:48', 'buc', 'Bulgarian Air Charter', 1115, '2000', 'Sofia, Bulgaria', '-', '82 million (EUR)', '-', 'Bulgarian Charter', '<p>6x Airbus A320-200</p>\n\n<p>9x McDonnell Douglas MD-82</p>', '<p>-</p>', '<p>-</p>', '<p><strong>Roster:&nbsp;</strong></p>\n\n<p><strong>Leave:&nbsp;</strong></p>\n\n<p><strong>Staff Travel:&nbsp;</strong></p>\n\n<p><strong>Per Diem:&nbsp;</strong></p>\n\n<p><strong>Additional:&nbsp;</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'europe', 'charter', '/', 'pilot', 0),
(102, '2020-12-30 19:14:27', '2021-01-19 15:48:40', 'hes', 'Holiday Europe', 1108, '2019', 'Sofia, Bulgaria', '-', '-', '-', 'Holiday Europe', '<p>1x Airbus A321-200</p>\n\n<p>2x Airbus A321neo</p>', '<p>2x Airbus A321-200</p>', '<p>-</p>', '<p><strong>Roster:&nbsp;</strong></p>\n\n<p><strong>Leave:&nbsp;</strong></p>\n\n<p><strong>Staff Travel:&nbsp;</strong></p>\n\n<p><strong>Per Diem:&nbsp;</strong></p>\n\n<p><strong>Additional:&nbsp;</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'europe', 'charter', '/', 'pilot', 0),
(103, '2020-12-30 19:18:32', '2021-01-19 15:48:07', 'vrg', 'Voyage Air', 1101, '2006', 'Varna, Bulgaria', '-', '-', '-', 'Varna Lines', '<p>1x Boeing 737-300</p>\n\n<p>1x Boeing 737-400</p>\n\n<p>1x Boeing 737-500</p>', '<p>-</p>', '<p>-</p>', '<p><strong>Roster:&nbsp;</strong></p>\n\n<p><strong>Leave:&nbsp;</strong></p>\n\n<p><strong>Staff Travel:&nbsp;</strong></p>\n\n<p><strong>Per Diem:&nbsp;</strong></p>\n\n<p><strong>Additional:&nbsp;</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'europe', 'charter', '/', 'pilot', 0),
(104, '2020-12-30 19:20:16', '2021-01-19 15:47:31', 'tdr', 'Trade Air', 1094, '1994', 'Zagreb, Croatia', '-', '-', '6', 'Trade Air', '<p>3x Airbus A320-200</p>\n\n<p>1x Fokker 100</p>', '<p>-</p>', '<p>-</p>', '<p><strong>Roster:&nbsp;</strong></p>\n\n<p><strong>Leave:&nbsp;</strong></p>\n\n<p><strong>Staff Travel:&nbsp;</strong></p>\n\n<p><strong>Per Diem:&nbsp;</strong></p>\n\n<p><strong>Additional:&nbsp;</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'europe', 'charter', '/', 'pilot', 0),
(105, '2020-12-30 19:22:23', '2021-01-19 15:45:37', 'tvs', 'Smartwings', 1080, '2004', 'Prague, Czech Republic', '2440', '-', '92', 'Skytravel', '<p>2x Boeing 737-700</p>\n\n<p>24x Boeing 737-800</p>\n\n<p>2x Boeing 737-900ER</p>\n\n<p>7x Boeing 737-Max 8</p>\n\n<p>&nbsp;</p>', '<p>11x Boeing 737-Max 8</p>', '<p>-</p>', '<p><strong>Roster:&nbsp;</strong></p>\n\n<p><strong>Leave:&nbsp;</strong></p>\n\n<p><strong>Staff Travel:&nbsp;</strong></p>\n\n<p><strong>Per Diem:&nbsp;</strong></p>\n\n<p><strong>Additional:&nbsp;</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'europe', 'charter', '/', 'pilot', 0),
(106, '2020-12-30 19:28:09', '2021-01-19 15:46:24', 'tie', 'Time Air', 1087, '2001', 'Prague, Czech Republic', '-', '-', '-', 'Time Air', '<p>4x BE40</p>', '<p>-</p>', '<p>-</p>', '<p><strong>Roster:&nbsp;</strong></p>\n\n<p><strong>Leave: </strong>25</p>\n\n<p><strong>Staff Travel:&nbsp;</strong></p>\n\n<p><strong>Per Diem:&nbsp;</strong></p>\n\n<p><strong>Additional:&nbsp;</strong></p>', 120000, 96000, 72000, NULL, NULL, NULL, 72000, 56000, 40000, NULL, NULL, NULL, 'europe', 'charter', '/', 'pilot', 0),
(107, '2020-12-30 19:30:36', '2021-01-19 15:43:24', 'gde', 'Great Dane Airlines', 1066, '2018', 'Aalborg, Denmark', '-', '-', '15', 'Great Dane', '<p>3x Embraer 195</p>', '<p>1x Embraer 195</p>', '<p>-</p>', '<p><strong>Roster:&nbsp;</strong></p>\n\n<p><strong>Leave:&nbsp;</strong></p>\n\n<p><strong>Staff Travel:&nbsp;</strong></p>\n\n<p><strong>Per Diem:&nbsp;</strong></p>\n\n<p><strong>Additional:&nbsp;</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'europe', 'charter', '/', 'pilot', 0),
(108, '2020-12-30 19:33:00', '2021-01-19 15:34:32', 'vkg', 'Sunclass Airlines', 1010, '2019', 'Copenhagen, Denmark', '-', '-', '34', 'Viking', '<p>8x Airbus A321-200</p>\n\n<p>1x Airbus A330-200</p>\n\n<p>3x Airbus A330-300</p>', '<p>-</p>', '<p>-</p>', '<p><strong>Roster:&nbsp;</strong></p>\n\n<p><strong>Leave:&nbsp;</strong></p>\n\n<p><strong>Staff Travel:&nbsp;</strong></p>\n\n<p><strong>Per Diem:&nbsp;</strong></p>\n\n<p><strong>Additional:&nbsp;</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'europe', 'charter', '/', 'pilot', 0),
(109, '2020-12-30 19:37:18', '2021-01-19 15:41:08', 'aze', 'Arcus Air', 1052, '1973', 'Zweibrücken, Germany', '-', '-', '-', 'Arcus Air', '<p>7x Ambraer Phenom 100</p>\n\n<p>2x Dornier Do 228-212</p>', '<p>-</p>', '<p>-</p>', '<p><strong>Roster:&nbsp;</strong></p>\n\n<p><strong>Leave:&nbsp;</strong></p>\n\n<p><strong>Staff Travel:&nbsp;</strong></p>\n\n<p><strong>Per Diem:&nbsp;</strong></p>\n\n<p><strong>Additional:&nbsp;</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'europe', 'charter', '/', 'pilot', 0),
(110, '2020-12-30 19:38:26', '2021-01-19 15:40:37', 'atv', 'Avanti Air', 1045, '1994', 'Burbach, Germany', '-', '-', '-', 'Avanti Air', '<p>2x Fokker 100</p>', '<p>-</p>', '<p>-</p>', '<p><strong>Roster:&nbsp;</strong></p>\n\n<p><strong>Leave:&nbsp;</strong></p>\n\n<p><strong>Staff Travel:&nbsp;</strong></p>\n\n<p><strong>Per Diem:&nbsp;</strong></p>\n\n<p><strong>Additional:&nbsp;</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'europe', 'charter', '/', 'pilot', 0),
(111, '2020-12-30 19:41:23', '2021-01-19 15:39:46', 'cfg', 'Condor', 1038, '1955', 'Frankfurt, Germany', '>4000', '1.7 billion (EUR)', '81', 'Condor', '<p>13x Airbus A320-200</p>\n\n<p>10x Airbus A321-200</p>\n\n<p>15 Boeing 757-300</p>\n\n<p>16x Boeing 767-300ER</p>', '<p>-</p>', '<p><strong>Interpersonal Assessment</strong></p>\n\n<ul>\n	<li>Basic Qualification</li>\n	<li>Sim Screening (FTD or&nbsp;FFS)</li>\n	<li>Corporate Qualification (Interview)</li>\n</ul>', '<p><strong>Roster:&nbsp;</strong></p>\n\n<p><strong>Leave:&nbsp;</strong></p>\n\n<p><strong>Staff Travel:&nbsp;</strong></p>\n\n<p><strong>Per Diem:&nbsp;</strong></p>\n\n<p><strong>Additional:&nbsp;</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'europe', 'charter', '/', 'pilot', 0),
(112, '2020-12-30 19:44:51', '2021-01-19 15:38:53', 'ger', 'German Airways', 1031, '1980', 'Düsseldorf, Germany', '3000', '-', '-', 'German Eagle', '<p>-</p>', '<p>-</p>', '<p>-</p>', '<p><strong>Roster:&nbsp;</strong></p>\n\n<p><strong>Leave:&nbsp;</strong></p>\n\n<p><strong>Staff Travel:&nbsp;</strong></p>\n\n<p><strong>Per Diem:&nbsp;</strong></p>\n\n<p><strong>Additional:&nbsp;</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'europe', 'charter', '/', 'pilot', 0),
(113, '2020-12-30 19:48:19', '2021-01-19 15:38:16', 'hhn', 'Hahn Air', 1024, '2006', 'Dreieich, Germany', '300', '-', '-', 'Rooster', '<p>1x Cessna Citation Latitude</p>\n\n<p>1x Cessna Citation CJ4</p>', '<p>-</p>', '<p>-</p>', '<p><strong>Roster:&nbsp;</strong></p>\n\n<p><strong>Leave:&nbsp;</strong></p>\n\n<p><strong>Staff Travel:&nbsp;</strong></p>\n\n<p><strong>Per Diem:&nbsp;</strong></p>\n\n<p><strong>Additional:&nbsp;</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'europe', 'charter', '/', 'pilot', 0),
(114, '2022-03-14 15:15:34', '2022-03-14 15:15:34', 'pwf', 'Private Wings', 1017, '1991', 'Berlin, Germany', '-', '-', '-', 'Private Wings', '<p>1x Beechcraft 1900D</p>\r\n\r\n<p>9x Dornier 328-100</p>\r\n\r\n<p>1x Dornier 328-300</p>', '<p>-</p>', '<p>-</p>', '<p><strong>Roster:&nbsp;</strong></p>\r\n\r\n<p><strong>Leave:&nbsp;</strong></p>\r\n\r\n<p><strong>Staff Travel:&nbsp;</strong></p>\r\n\r\n<p><strong>Per Diem:&nbsp;</strong></p>\r\n\r\n<p><strong>Additional:&nbsp;</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, 50000, NULL, NULL, NULL, NULL, NULL, 'europe', 'charter', '/', 'pilot', 0),
(115, '2022-03-16 16:48:46', '2022-03-16 16:51:38', 'fnk', 'IAS Itzehoer Airservice', 793, '2013', 'Hohenlockstedt, Germany', '-', '-', '-', 'Funky', '<p>1x Cessna 208</p>\r\n\r\n<p>1x Cessna 208B</p>', '<p>-</p>', '<p>-</p>', '<p><strong>Roster:&nbsp;</strong></p>\r\n\r\n<p><strong>Leave:&nbsp;</strong></p>\r\n\r\n<p><strong>Staff Travel:&nbsp;</strong></p>\r\n\r\n<p><strong>Per Diem:&nbsp;</strong></p>\r\n\r\n<p><strong>Additional:&nbsp;</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'europe', 'charter', '/', 'pilot', 0),
(116, '2022-03-15 09:44:25', '2022-03-29 13:20:23', 'tst', 'Test', NULL, '2022', 'Gernany', '1', '0', '1', 'Test', '<p>Xx</p>', '<p>None&nbsp;</p>', '<p>None</p>', '<p>None</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'africa', 'legacy', '/', 'atc', 0);

-- --------------------------------------------------------

--
-- Table structure for table `insight_drafts`
--

CREATE TABLE `insight_drafts` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `insight_id` bigint(20) NOT NULL,
  `draft_status` int(11) NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_id` int(11) DEFAULT NULL,
  `region` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assessments_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `founding` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `headquarter` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employees` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profits` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `destinations` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `callsign` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fleet` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `orders` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `assessments` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `benefits` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary_captain_max` int(11) DEFAULT NULL,
  `salary_captain_avg` int(11) DEFAULT NULL,
  `salary_captain_min` int(11) DEFAULT NULL,
  `salary_sfo_max` int(11) DEFAULT NULL,
  `salary_sfo_avg` int(11) DEFAULT NULL,
  `salary_sfo_min` int(11) DEFAULT NULL,
  `salary_fo_max` int(11) DEFAULT NULL,
  `salary_fo_avg` int(11) DEFAULT NULL,
  `salary_fo_min` int(11) DEFAULT NULL,
  `salary_so_max` int(11) DEFAULT NULL,
  `salary_so_avg` int(11) DEFAULT NULL,
  `salary_so_min` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_atcs`
--

CREATE TABLE `job_atcs` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `aircraft` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `airline` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aircraft_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `base` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `min_hours` int(11) NOT NULL,
  `certificates` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `roster` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `insurance` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` int(11) NOT NULL,
  `benefits` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `apply_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apply_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apply_mail` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apply_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `insight_id` bigint(20) NOT NULL,
  `has_draft` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_cabins`
--

CREATE TABLE `job_cabins` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `aircraft` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `airline` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aircraft_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `base` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `min_hours` int(11) NOT NULL,
  `certificates` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `roster` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `insurance` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` int(11) NOT NULL,
  `benefits` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `apply_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apply_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apply_mail` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apply_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `insight_id` bigint(20) NOT NULL,
  `has_draft` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_draft_atcs`
--

CREATE TABLE `job_draft_atcs` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `job_id` bigint(20) NOT NULL,
  `draft_status` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `aircraft` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `airline` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aircraft_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `base` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `min_hours` int(11) NOT NULL,
  `certificates` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `roster` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `insurance` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` int(11) NOT NULL,
  `benefits` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `apply_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apply_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apply_mail` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apply_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `insight_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_draft_cabins`
--

CREATE TABLE `job_draft_cabins` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `job_id` bigint(20) NOT NULL,
  `draft_status` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `aircraft` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `airline` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aircraft_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `base` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `min_hours` int(11) NOT NULL,
  `certificates` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `roster` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `insurance` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` int(11) NOT NULL,
  `benefits` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `apply_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apply_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apply_mail` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apply_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `insight_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_draft_pilots`
--

CREATE TABLE `job_draft_pilots` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `job_id` bigint(20) NOT NULL,
  `draft_status` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `aircraft` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `airline` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aircraft_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `base` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `min_hours` int(11) NOT NULL,
  `certificates` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `roster` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `insurance` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` int(11) NOT NULL,
  `benefits` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `apply_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apply_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apply_mail` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apply_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `insight_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_pilots`
--

CREATE TABLE `job_pilots` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `aircraft` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `airline` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aircraft_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `base` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `min_hours` int(11) NOT NULL,
  `certificates` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `roster` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `insurance` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` int(11) NOT NULL,
  `benefits` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `apply_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apply_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apply_mail` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apply_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `insight_id` bigint(20) NOT NULL,
  `has_draft` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_pilots`
--

INSERT INTO `job_pilots` (`id`, `created_at`, `updated_at`, `user_id`, `type`, `status`, `title`, `content`, `rating`, `position`, `aircraft`, `airline`, `aircraft_type`, `base`, `min_hours`, `certificates`, `roster`, `insurance`, `salary`, `benefits`, `apply_type`, `apply_link`, `apply_mail`, `apply_phone`, `insight_id`, `has_draft`) VALUES
(1, '2021-12-14 14:17:40', '2021-12-14 14:18:24', 3, 0, 1, 'First Officer Boeing 737', '<p>This is just a test</p>', 1, 1, 'Boeing 737', 'Aegean Airlines', 'Boeing 737', 'Athens, Greence', 1000, 'EASA ATPL(A), Valid B737 Type Rating', '-', '-', 50000, '-', 'link', 'www.skyhub.iyorki.com', NULL, NULL, 38, 0),
(2, '2021-12-14 19:07:39', '2022-03-16 20:39:15', 3, 0, 1, 'Captain Boeing 737', '<p>TEST</p>', 2, 1, 'Boeing 737', 'Aegean AIrlines', 'Jet Aircraft', 'Athens, Greece', 3000, 'EASA ATPL(A)', '-', '-', 200000, '-', 'link', 'www.skyhub.iyorki.com', NULL, '01234585', 38, 0),
(3, '2022-04-26 18:37:54', '2022-04-26 18:46:46', 2, 0, 0, 'First Officer CRJ 900', '<p>Test</p>', 2, 1, 'CRJ 900', 'Lufthansa', 'CRJ 900', 'München', 1000, 'ATPL', '-', '-', 70999, '-', 'link', '#', NULL, NULL, 6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_11_29_114005_create_setting_table', 1),
(4, '2017_12_08_110908_create_todo_table', 1),
(5, '2017_12_08_121307_create_todo_comment_table', 1),
(6, '2017_12_09_070127_create_static_page_table', 1),
(7, '2019_05_05_150306_add_access_to_users_table', 1),
(8, '2019_05_16_161342_add_fields_to_static_page_table', 1),
(9, '2019_05_16_164057_add_widgets_to_static_page_table', 1),
(10, '2019_05_19_111651_add_airline_info_to_users_table', 1),
(11, '2019_05_19_130349_create_job_pilots_table', 1),
(12, '2019_05_19_130425_create_job_cabins_table', 1),
(13, '2019_05_19_130457_create_job_atcs_table', 1),
(14, '2020_05_28_101353_create_faq_table', 1),
(15, '2020_06_09_121723_create_insights_table', 1),
(16, '2020_06_09_130508_create_images_table', 1),
(17, '2021_01_05_184726_add_region_and_type_to_insights_table', 1),
(18, '2021_01_05_191110_add_index_to_insights_table', 1),
(19, '2021_01_06_115457_add_assessments_link_to_insights_table', 1),
(20, '2021_01_07_163041_add_insight_id_to_job_pilots_table', 1),
(21, '2021_01_08_134219_add_insight_id_to_job_cabins_table', 1),
(22, '2021_01_08_134240_add_insight_id_to_job_atcs_table', 1),
(23, '2021_12_10_133747_create_user_insights_table', 1),
(24, '2021_12_10_143914_create_job_draft_atcs_table', 1),
(25, '2021_12_10_143931_create_job_draft_pilots_table', 1),
(26, '2021_12_10_143944_create_job_draft_cabins_table', 1),
(27, '2021_12_10_144204_add_has_draft_to_job_pilots_table', 1),
(28, '2021_12_10_144425_add_has_draft_to_job_atcs_table', 1),
(29, '2021_12_10_144437_add_has_draft_to_job_cabins_table', 1),
(30, '2022_02_21_091926_add_job_type_to_insights_table', 2),
(31, '2022_02_21_103554_add_has_draft_to_insights_table', 2),
(33, '2022_02_21_103923_create_insight_drafts_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group` varchar(128) NOT NULL,
  `name` varchar(128) NOT NULL,
  `value` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `created_at`, `updated_at`, `group`, `name`, `value`) VALUES
(1, '2021-12-10 17:15:48', '2022-03-14 20:44:59', 'general', 'robots', 'noindex, nofollow'),
(2, '2021-12-10 17:15:48', '2022-03-14 20:44:59', 'general', 'analytics_id', ''),
(3, '2021-12-10 17:15:48', '2022-03-14 20:44:59', 'general', 'email_welcome', 'Welcome {{ user.name }},\r\n\r\nPlease activate your account <a href=\"{{ activation_url }}\">here</a>'),
(4, '2022-03-14 13:36:00', '2022-03-14 20:44:59', 'general', 'landing_find_text', 'dream job\r\npassion\r\nairline \r\nsalary');

-- --------------------------------------------------------

--
-- Table structure for table `static_page`
--

CREATE TABLE `static_page` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(128) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `domain` varchar(191) NOT NULL DEFAULT '',
  `css_class` varchar(191) NOT NULL DEFAULT '',
  `add_widgets` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `static_page`
--

INSERT INTO `static_page` (`id`, `created_at`, `updated_at`, `slug`, `title`, `content`, `domain`, `css_class`, `add_widgets`) VALUES
(1, '2019-05-16 13:01:49', '2022-05-27 16:53:47', 'apply', 'Application', '<h1>Have you made up your mind?<br />\r\nHow to find the right flight school or airline for you.</h1>\r\n\r\n<h2><em><strong>Im folgenden wirst du herausfinden worauf du bei der Wahl der richtigen Flugschule achten solltest, aber auch falls du bereits mit deinem Training fertig bist und dich nun bei einer richtigen Airline bewerben m&ouml;chtest</strong></em></h2>\r\n\r\n<p>Let&#39;s start with choosing the right flight school. First of all, you should take enough time for the search. After all, your final decision will have a big impact on your career if you are honest. Nowadays, in almost all cases, you have to pay for your pilot training yourself. You probably already know that this is not cheap, anyway, you can find all the information about the exact costs at SKYHUB.&nbsp;<br />\r\nWith such a big investment it should be clear that you are definitely in good hands with the flight school you want to start with and that you can expect a smooth training process.&nbsp;There are now hundreds of flight schools spread all over the world. Here, of course, you also have to look a bit at your own requirements. Would you perhaps prefer to choose a flight school that is close to your home, or is a flight school abroad also a possibility for you?</p>\r\n\r\n<ul>\r\n	<li>Therefore the first take-home message: Start&nbsp;your research early by searching the internet for possible flight schools in your area or internationally and check their websites for more information</li>\r\n</ul>\r\n\r\n<p>Have you now found some flight schools that give a solid impression? Make an appointment for a first meeting. This is important because you should make yourself a personal impression of the flight school on site. Here you will get to know the staff and possibly the management of the school. You can also take a tour of the school and see the aircraft.</p>\r\n\r\n<ul>\r\n	<li>So the next step:&nbsp;Look at the flight schools in person. Look at several, so you can better decide between them.</li>\r\n</ul>\r\n\r\n<p>Now that you have visited several flight schools, you will be able to get a good idea of whether you and your favourite school are a good match.<br />\r\nHowever, don&#39;t be overly euphoric and sign your training contract right away.</p>\r\n\r\n<p>It would not be bad to contact some of the students of the school and ask them about their experiences.</p>\r\n\r\n<p>In the following, we give you a few points to which you should pay attention with your flight school.</p>\r\n\r\n<ul>\r\n	<li>Larger flight schools usually have the advantage that they have a larger fleet of training aircraft and also their own maintenance. This ensures that you usually have to expect fewer delays due to aircraft availability.&nbsp;</li>\r\n	<li>Large flight schools usually have more flight instructors as well. This can also be an important point because if there are no instructors available, e.g. due to illness, your training will be delayed.</li>\r\n	<li>Does the flight school have a large, modern, robust fleet of training aircraft?</li>\r\n	<li>Does the flight school have its own maintenance?</li>\r\n	<li>Does the flight school offer modern training equipment,&nbsp;facilities and rooms?</li>\r\n	<li><em><strong>Ansprechpartner vor ort</strong></em></li>\r\n	<li><em><strong>preis</strong></em></li>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3 style=\"text-align:center\">Of course, every decision is individual - it is all about you!</h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>Welcome to the cockpit</strong></h3>\r\n\r\n<p>Have you already successfully completed your pilot training? Now it&#39;s time for the next important step - your job in the cockpit.</p>\r\n\r\n<p>Maybe you have already realized during your training which area of aviation you want to dive into?&nbsp;<br />\r\nDo you want to join a classic passenger airline, do you want to become a cargo pilot, start in business aviation or maybe you want to go somewhere completely different?<br />\r\nBefore you start your job search, first make sure you have a solid application. Usually, you will be expected to submit a resume and a cover letter. Make sure it&#39;s tailored to the airline you&#39;re applying to and authentically conveys your personality and interests.<br />\r\nOften, a list of your previous flying hours is expected in the flying resume. Therefore, it is recommended that you take care to keep your logbook accurate during your training. Also you should attach your license and your medical to your application. Of course, the required documents may vary from application to application.</p>\r\n\r\n<p><br />\r\nWith your documents, you create&nbsp;a solid basis. You can now start looking for a job. Here you can use the job portal at <span style=\"color:#ec008c\">SKYHUB</span>.<br />\r\nOf course, there are also various other job boards where you can find pilot positions. Also, a look at the websites of the airlines themselves can help you to find job offers.<br />\r\nFor smaller business aviation companies, you may even be able to ask directly at their offices.</p>\r\n\r\n<p>So now you&#39;ve applied to an airline. After your documents have been reviewed and have aroused interest, you will be invited to the first stage of an assessment. There you will usually complete multiple&nbsp;aptitude and psychomotor tests.</p>\r\n\r\n<p>Once you passed this first stage it is usually followed by a flying assessment where you prove your flying skills&nbsp;in a&nbsp;flight simulator. If you have overcome this challenge, the final stage is waiting for you.</p>\r\n\r\n<p>In the last step&nbsp;of the assessment, you can expect an individual interview, various group games and personality tests.&nbsp;<br />\r\nBasically, it is about checking whether you and the aviation company are a good match.&nbsp;<br />\r\n&nbsp;</p>\r\n\r\n<h3 style=\"text-align:center\"><em>Good Luck!</em></h3>', 'pilot', 'bg-header-blue-light-5', 1),
(2, '2019-05-16 13:03:01', '2022-06-03 18:41:12', 'costs', 'Costs', '<h1>Wow, that&#39;s a lot!</h1>\r\n\r\n<h2>this is probably the first thought you had upon receiving the cost summary from your flight school.</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Let&#39;s face it pilot training is one of the most time demanding and cost-intensive training programs you can find. In contrast to the past, when the training was often financed and completed directly with an airline, nowadays the training is usually&nbsp;carried out at private flight schools at one&#39;s own expense.&nbsp;Although costs are very high, you can expect to earn above-average starting salaries in your first job after successful training.&nbsp;However, the risks remain high, since you will have to pay in advance with no guarantee of landing a prestigious job until you start earning money.<br />\r\n&nbsp;</p>\r\n\r\n<p>To give you an overview we have divided the costs into three categories:</p>\r\n\r\n<h3>General Training Costs</h3>\r\n\r\n<p>This is the largest cost factor and consists of the following:</p>\r\n\r\n<ul>\r\n	<li>Theoretical Classes</li>\r\n	<li>Flight Hours</li>\r\n	<li>MCC/JOC Course (if applicable)</li>\r\n</ul>\r\n\r\n<h3>Supplementary Training Costs</h3>\r\n\r\n<p>Significant aspects of the total costs are:</p>\r\n\r\n<ul>\r\n	<li>Flight Equipment (e.g Headset, Flight-bag, ...)</li>\r\n	<li>Flight Charts</li>\r\n	<li>Books supplementing classes</li>\r\n	<li>License/Medical/Examination fees</li>\r\n	<li>Uniform (if applicable)</li>\r\n</ul>\r\n\r\n<h3>Living Costs</h3>\r\n\r\n<p>Don&#39;t forget the obvious costs during to your training:&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Rent</li>\r\n	<li>Food/Drinks</li>\r\n	<li>Car</li>\r\n	<li>&quot;Social Live&quot;</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Depending on the school and the country in which you attend your training, these costs may vary. The price range for an integrated ATPL training can range from 40000&euro; up to 130000&euro;+. In Central Europe, you can expect to pay around 80000&euro;. This does not include the variable expenses listed above.</p>', 'pilot', 'bg-header-yellow-3', 1),
(4, '2019-05-16 13:04:53', '2022-06-06 12:23:56', 'training', 'Training', '<h1>Back to school!</h1>\r\n\r\n<h2>What to expect during your training.</h2>\r\n\r\n<p>Well, after all the rather formal topics and hurdles you have to face before you start the training, we now look at the content of your pilot training.&nbsp;<br />\r\nBefore we start, it should be emphasized that each flight school typically has its own training concept, although the content is of course the same for all of the schools.<br />\r\n&nbsp;</p>\r\n\r\n<h3>Integrated or Modular</h3>\r\n\r\n<p>Here again a small digression on the subject of which flight school and especially which form of training is best suited for you. There are two ways to complete your training. On the one hand, there is the integrated or ab-initio called training. This is completed in one continuous course and is, therefore, the fastest way to become a pilot. Your course follows a fixed scheme and schedule.<br />\r\nThe other option is the modular training course. This is much more flexible and offers some advantages, especially for people who are already working. Here, your training is conducted in modules that you gradually work through over a longer period of time.&nbsp;You can attend the theory courses from home or in the evening, depending on the flight school, and fly with your instructor after work or on the weekend. A modular training course can also help you to agree on the costs more conveniently.</p>\r\n\r\n<h3>What your training could look like:</h3>\r\n\r\n<p>Let&#39;s assume that you have no prior experience and have chosen the integrated training path.<br />\r\nOf course, we&#39;ll start with theory in the classroom. Because before you fly the really big airplanes, you also start, like everyone small!<br />\r\nIn the first theory block, you learn several subjects and everything you need to know to acquire your private pilot license. Additionally, you will get your first radiotelephony certificate. After the theory phase is completed, things will finally get exciting. Your time has come for the initial practical phase. You are going to fly in a single piston airplane for the first time. After a few hours of flying with your instructor, you will have your very first solo flight.<br />\r\nWith 45 hours of flying time, you can take your exam and become a private pilot.</p>\r\n\r\n<p>After that, it&#39;s back to the classroom, because now it&#39;s time to get down to business. 14 subjects await you, in which you will learn all the technical knowledge to fly commercially. You will acquire this in at least 750 hours of instruction and your schedule includes Air Law, Performance, Meteorology, Navigation, Principles of Flight and many more. This phase lasts about 8 months and is completed by passing the exams at the respective aviation authority.&nbsp;<br />\r\nProbably for most students, this is the most demanding time of the training because it requires a lot of discipline and you have to stay motivated and prepare yourself for the challenging exams.</p>\r\n\r\n<p>Afterwards, however, you go back into the cockpit and collect a few more flying hours. The next step is your instrument rating (IR). You strengthen your flight skills from your first practical phase and now learn the basic skills for everyday life as a professional pilot.As the name suggests, you will learn how to fly with the aircraft instruments, how to fly holdings and precision and non-precision approaches.</p>\r\n\r\n<p>Continue with the Multi Engine Class Rating by flying a two-engine aircraft, master more complex situations and enhance your basic and instrument flying skills. In a final exam, you will obtain your Commercial Pilot License with the Instrument Rating (IR) and the Multi Engine Runway Rating (MEP) included. This is how fast you can become an official commercial pilot.</p>\r\n\r\n<p>&nbsp;</p>', 'pilot', 'bg-header-red-4', 1),
(5, '2019-05-22 13:26:32', '2022-04-26 21:25:01', 'general', 'General', '<h1>You are looking for an office above the clouds?</h1>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>But before you fasten your seatbelt in the cockpit, there are a few hurdles to overcome. But, don&#39;t worry! In the following, you will learn everything you need to know in advance.&nbsp;Here at SKYHUB.aero, you will find information about the requirements you need to meet, how to apply to airlines and flight schools, how your pilot training will proceed and what costs you can expect.&nbsp;</p>\r\n\r\n<p>Furthermore, you can read about careers as a <span style=\"color:#ec008c\"><strong>Flight Attendant</strong></span> or, if you prefer to stay on the ground, as an <span style=\"color:#ec008c\"><strong>Air Traffic Controller</strong></span>.</p>\r\n\r\n<p>See the sun every day and travel to countless places. That already sounds tempting. Typically, you fly in a commercial airliner at an altitude of 41000 feet at a speed of 800 mph. In addition, you are not in a traffic jam and are confronted with new situations every day. Your task is, of course, to fly an airplane from A to B. As simple as that may sound, it is unfortunately not, because your tasks are much more diverse than that. <span style=\"color:#ffffff\"><span style=\"background-color:#2980b9\">Mehr positive Aspekte und erw&auml;hnen das diese skills im Training erlernt werden, Mut machen&nbsp;</span></span></p>\r\n\r\n<p>It is also important to know that there are three different types of commercial&nbsp;pilot licenses. Here you have to consider in which area of aviation you want to work.&nbsp;</p>\r\n\r\n<ul>\r\n	<li>\r\n	<h3><strong>Commercial Pilot Licence (CPL)</strong></h3>\r\n	</li>\r\n	<li>\r\n	<h3><strong>Airline Transport Pilot Licence (ATPL)</strong></h3>\r\n	</li>\r\n	<li>\r\n	<h3><strong>Multi Pilot Licence (MPL)</strong></h3>\r\n	</li>\r\n</ul>\r\n\r\n<p>You will find all information about those different licence types in the&nbsp;<span style=\"color:#ec008c\"><strong>TRAINING</strong></span>&nbsp;section.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>As a pilot, you can be employed in various areas. As mentioned at the beginning, this depends partly on the licenses you hold.<br />\r\nBut in the end, you decide what you want to work as a pilot.<br />\r\nThe classic way to start after your training is with an airline that flies passengers to their destination. Furthermore, there are cargo airlines where you obviously only transport cargo of any kind.&nbsp;<br />\r\nIn business aviation, you often have to deal with the wealthy and prominent passengers and fly to popular destinations.&nbsp;</p>\r\n\r\n<p>These are the three areas most pilots work in, but there are other opportunities to work as a pilot such as flight instructor, tow banners or gliders or flying aerial photographers.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>So let&#39;s say you finished all your training. What are the tasks you have to do as a pilot? And how will a usual working day look like?</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Flight Planning</h3>\r\n\r\n<ul>\r\n	<li>Depending on how big your airline or the company you will work for is, you will be more or less involved in active flight planning. Most of the time, however, you don&#39;t have to plan the route yourself. There is a separate department for that. They prepare a complete package for you, which you have to check before the flight. There you will find information about your flight route, fuel and special information so-called &quot;NOTAMS&quot;.&nbsp;</li>\r\n</ul>\r\n\r\n<h3>Weather Check</h3>\r\n\r\n<ul>\r\n	<li>Weather is one of the biggest external influences on aviation and will really keep you busy every day. Depending on the weather, there are a lot of things to consider.&nbsp;The wind will of course influence whether you need a shorter or longer time for the flight. Accordingly, the amount of fuel is adjusted by the flight planners. But if you have a thunderstorm or a bad weather front at your destination airport, it is recommended to load extra fuel, because one thing is clear: too little kerosene in your aircraft tanks can have serious consequences. Therefore, the cockpit crew always discusses whether there are weather conditions for the flight that will lead to the need for extra fuel.&nbsp;</li>\r\n</ul>\r\n\r\n<h3>Check and Prepare&nbsp;</h3>\r\n\r\n<ul>\r\n	<li>On every flight, there is a certain division of tasks in the cockpit. Namely, there is once the pilot who will actively fly the flight. He is called Pilot Flying. The other pilot then takes over the part of the Pilot Monitoring.&nbsp;<br />\r\n	Before the flight, the pilot flying will power up the systems and enter the route into the on-board computer. The Pilot Monitoring usually does the exterior inspection of the aircraft. The so-called &quot;walk-around&quot;.&nbsp;<br />\r\n	Before the flight, there are of course one or two checklists and briefings to work through. After all, you want to be well prepared for the flight.&nbsp;</li>\r\n</ul>\r\n\r\n<h3>Fly</h3>\r\n\r\n<ul>\r\n	<li>Then, of course, comes the actual flying.<br />\r\n	Takeoff and landing are normally done by hand. These are also the most critical phases of the flight and the highest concentration is required from all pilots. In cruise flight, the autopilot usually takes over. After all, it does not get tired and follows the programmed route.&nbsp;<br />\r\n	But even the automatic system is not error-free, so it is important that both pilots actively monitor the autopilot and can always intervene in case of doubt.&nbsp;</li>\r\n</ul>\r\n\r\n<h3>Communication</h3>\r\n\r\n<ul>\r\n	<li>During the flight, pilots are in constant contact with air traffic control. They give route clearances and climb or descent instructions. While in cruise flight, of course, there is also communication with the cabin crew who check if you and your crew partner are alright as well as&nbsp;inform you about the passengers and also just very often want to know how much time is left until landing.&nbsp;</li>\r\n</ul>\r\n\r\n<h3>After Flight</h3>\r\n\r\n<ul>\r\n	<li>Landed. And now?<br />\r\n	You&#39;re not quite finished yet. After the flight, there is still some paperwork to do. Most modern airlines nowadays work with a &quot;paperless cockpit system&quot;. After all the necessary data has been entered and the aircraft techlog has been filled out, your workday is done or maybe your next flight will leave in a few minutes and everything will start all over again.</li>\r\n</ul>\r\n\r\n<h3 style=\"text-align:center\">Sounds interesting...?</h3>\r\n\r\n<h3 style=\"text-align:center\">It is!</h3>', 'pilot', 'bg-header-blue-5', 1),
(6, '2019-05-22 14:41:08', '2022-04-14 17:46:07', 'apply', 'Application', '<h2>Einstieg ab sofort f&uuml;r 6 Monate<br />\r\nFrankfurt am Main</h2>\r\n\r\n<p>F&uuml;r unser Konzernunternehmen Deutsche Lufthansa Airlines suchen wir Sie als Praktikant (m/w/divers) im Bereich Personalmanagement mit dem Schwerpunkt Strategische Personalplanung und Personalcontrolling.</p>\r\n\r\n<p>Die Strategische Personalplanung der Lufthansa Airlines besch&auml;ftigt sich umfassend mit Szenarien der Entwicklung von Personalbest&auml;nden und -bedarfen. Aus datenbasierten Analysen werden gemeinsam mit den Fachbereichen innovative und zukunftsweisende HR Ma&szlig;nahmen abgeleitet, um den Herausforderungen der Arbeitswelt von morgen schon heute zu begegnen.</p>\r\n\r\n<h3>Ihre Aufgaben:</h3>\r\n\r\n<ul>\r\n	<li>Sie werden Kompetenzen zur Simulation von zuk&uuml;nftigen Personalbedarfen, zu Szenarien des demographischen Wandels und des Kompetenzmodells der Deutschen Lufthansa AG aufbauen</li>\r\n	<li>Ebenfalls werden Sie bei der Entwicklung korrespondierender Kennzahlen und deren Einbettung in HR Management Prozesse einen wichtigen Beitrag im Team leisten</li>\r\n</ul>\r\n\r\n<h3>&Uuml;ber Deutsche Lufthansa AG</h3>\r\n\r\n<p><em>Die Deutsche Lufthansa AG ist ein weltweit operierender Luftverkehrskonzern. Im Gesch&auml;ftsjahr 2017 erzielte sie mit durchschnittlich 128.856 Mitarbeitern einen Jahresumsatz von 35,6 Mrd. EUR. Die Deutsche Lufthansa AG ist in den Gesch&auml;ftsfeldern Network Airlines, Point-to-Point Airlines, dem Bereich Aviation Services mit den Gesch&auml;ftsfeldern Logistik, Technik und Catering sowie den weiteren Gesellschaften und Konzernfunktionen organisiert.</em></p>', 'cabin', 'bg-header-blue-light-5', 1),
(7, '2019-05-22 14:41:35', '2022-04-14 17:46:55', 'apply', 'Application', '<h2>Einstieg ab sofort f&uuml;r 6 Monate<br />\r\nFrankfurt am Main</h2>\r\n\r\n<p>F&uuml;r unser Konzernunternehmen Deutsche Lufthansa Airlines suchen wir Sie als Praktikant (m/w/divers) im Bereich Personalmanagement mit dem Schwerpunkt Strategische Personalplanung und Personalcontrolling.</p>\r\n\r\n<p>Die Strategische Personalplanung der Lufthansa Airlines besch&auml;ftigt sich umfassend mit Szenarien der Entwicklung von Personalbest&auml;nden und -bedarfen. Aus datenbasierten Analysen werden gemeinsam mit den Fachbereichen innovative und zukunftsweisende HR Ma&szlig;nahmen abgeleitet, um den Herausforderungen der Arbeitswelt von morgen schon heute zu begegnen.</p>\r\n\r\n<h3>Ihre Aufgaben:</h3>\r\n\r\n<ul>\r\n	<li>Sie werden Kompetenzen zur Simulation von zuk&uuml;nftigen Personalbedarfen, zu Szenarien des demographischen Wandels und des Kompetenzmodells der Deutschen Lufthansa AG aufbauen</li>\r\n	<li>Ebenfalls werden Sie bei der Entwicklung korrespondierender Kennzahlen und deren Einbettung in HR Management Prozesse einen wichtigen Beitrag im Team leisten</li>\r\n</ul>\r\n\r\n<h3>&Uuml;ber Deutsche Lufthansa AG</h3>\r\n\r\n<p><em>Die Deutsche Lufthansa AG ist ein weltweit operierender Luftverkehrskonzern. Im Gesch&auml;ftsjahr 2017 erzielte sie mit durchschnittlich 128.856 Mitarbeitern einen Jahresumsatz von 35,6 Mrd. EUR. Die Deutsche Lufthansa AG ist in den Gesch&auml;ftsfeldern Network Airlines, Point-to-Point Airlines, dem Bereich Aviation Services mit den Gesch&auml;ftsfeldern Logistik, Technik und Catering sowie den weiteren Gesellschaften und Konzernfunktionen organisiert.</em></p>', 'atc', 'bg-header-blue-light-5', 1),
(8, '2019-05-22 14:42:29', '2022-04-21 11:43:46', 'costs', 'Costs', '<h2>Einstieg ab sofort f&uuml;r 6 Monate<br />\r\nFrankfurt am Main</h2>\r\n\r\n<p>F&uuml;r unser Konzernunternehmen Deutsche Lufthansa Airlines suchen wir Sie als Praktikant (m/w/divers) im Bereich Personalmanagement mit dem Schwerpunkt Strategische Personalplanung und Personalcontrolling.</p>\r\n\r\n<p>Die Strategische Personalplanung der Lufthansa Airlines besch&auml;ftigt sich umfassend mit Szenarien der Entwicklung von Personalbest&auml;nden und -bedarfen. Aus datenbasierten Analysen werden gemeinsam mit den Fachbereichen innovative und zukunftsweisende HR Ma&szlig;nahmen abgeleitet, um den Herausforderungen der Arbeitswelt von morgen schon heute zu begegnen.</p>\r\n\r\n<h3>Ihre Aufgaben:</h3>\r\n\r\n<ul>\r\n	<li>Sie werden Kompetenzen zur Simulation von zuk&uuml;nftigen Personalbedarfen, zu Szenarien des demographischen Wandels und des Kompetenzmodells der Deutschen Lufthansa AG aufbauen</li>\r\n	<li>Ebenfalls werden Sie bei der Entwicklung korrespondierender Kennzahlen und deren Einbettung in HR Management Prozesse einen wichtigen Beitrag im Team leisten</li>\r\n</ul>\r\n\r\n<h3>&Uuml;ber Deutsche Lufthansa AG</h3>\r\n\r\n<p><em>Die Deutsche Lufthansa AG ist ein weltweit operierender Luftverkehrskonzern. Im Gesch&auml;ftsjahr 2017 erzielte sie mit durchschnittlich 128.856 Mitarbeitern einen Jahresumsatz von 35,6 Mrd. EUR. Die Deutsche Lufthansa AG ist in den Gesch&auml;ftsfeldern Network Airlines, Point-to-Point Airlines, dem Bereich Aviation Services mit den Gesch&auml;ftsfeldern Logistik, Technik und Catering sowie den weiteren Gesellschaften und Konzernfunktionen organisiert.</em></p>', 'cabin', 'bg-header-yellow-3', 1),
(9, '2019-05-22 14:43:00', '2022-04-14 16:45:37', 'costs', 'Costs', '<h2>Einstieg ab sofort f&uuml;r 6 Monate<br />\r\nFrankfurt am Main</h2>\r\n\r\n<p>F&uuml;r unser Konzernunternehmen Deutsche Lufthansa Airlines suchen wir Sie als Praktikant (m/w/divers) im Bereich Personalmanagement mit dem Schwerpunkt Strategische Personalplanung und Personalcontrolling.</p>\r\n\r\n<p>Die Strategische Personalplanung der Lufthansa Airlines besch&auml;ftigt sich umfassend mit Szenarien der Entwicklung von Personalbest&auml;nden und -bedarfen. Aus datenbasierten Analysen werden gemeinsam mit den Fachbereichen innovative und zukunftsweisende HR Ma&szlig;nahmen abgeleitet, um den Herausforderungen der Arbeitswelt von morgen schon heute zu begegnen.</p>\r\n\r\n<h3>Ihre Aufgaben:</h3>\r\n\r\n<ul>\r\n	<li>Sie werden Kompetenzen zur Simulation von zuk&uuml;nftigen Personalbedarfen, zu Szenarien des demographischen Wandels und des Kompetenzmodells der Deutschen Lufthansa AG aufbauen</li>\r\n	<li>Ebenfalls werden Sie bei der Entwicklung korrespondierender Kennzahlen und deren Einbettung in HR Management Prozesse einen wichtigen Beitrag im Team leisten</li>\r\n</ul>\r\n\r\n<h3>&Uuml;ber Deutsche Lufthansa AG</h3>\r\n\r\n<p><em>Die Deutsche Lufthansa AG ist ein weltweit operierender Luftverkehrskonzern. Im Gesch&auml;ftsjahr 2017 erzielte sie mit durchschnittlich 128.856 Mitarbeitern einen Jahresumsatz von 35,6 Mrd. EUR. Die Deutsche Lufthansa AG ist in den Gesch&auml;ftsfeldern Network Airlines, Point-to-Point Airlines, dem Bereich Aviation Services mit den Gesch&auml;ftsfeldern Logistik, Technik und Catering sowie den weiteren Gesellschaften und Konzernfunktionen organisiert.</em></p>', 'atc', 'bg-header-yellow-3', 1),
(10, '2019-05-22 14:58:48', '2022-04-14 16:39:18', 'general', 'General', '<h2>Einstieg ab sofort f&uuml;r 6 Monate<br />\r\nFrankfurt am Main</h2>\r\n\r\n<p>F&uuml;r unser Konzernunternehmen Deutsche Lufthansa Airlines suchen wir Sie als Praktikant (m/w/divers) im Bereich Personalmanagement mit dem Schwerpunkt Strategische Personalplanung und Personalcontrolling.</p>\r\n\r\n<p>Die Strategische Personalplanung der Lufthansa Airlines besch&auml;ftigt sich umfassend mit Szenarien der Entwicklung von Personalbest&auml;nden und -bedarfen. Aus datenbasierten Analysen werden gemeinsam mit den Fachbereichen innovative und zukunftsweisende HR Ma&szlig;nahmen abgeleitet, um den Herausforderungen der Arbeitswelt von morgen schon heute zu begegnen.</p>\r\n\r\n<h3>Ihre Aufgaben:</h3>\r\n\r\n<ul>\r\n	<li>Sie werden Kompetenzen zur Simulation von zuk&uuml;nftigen Personalbedarfen, zu Szenarien des demographischen Wandels und des Kompetenzmodells der Deutschen Lufthansa AG aufbauen</li>\r\n	<li>Ebenfalls werden Sie bei der Entwicklung korrespondierender Kennzahlen und deren Einbettung in HR Management Prozesse einen wichtigen Beitrag im Team leisten</li>\r\n</ul>\r\n\r\n<h3>&Uuml;ber Deutsche Lufthansa AG</h3>\r\n\r\n<p><em>Die Deutsche Lufthansa AG ist ein weltweit operierender Luftverkehrskonzern. Im Gesch&auml;ftsjahr 2017 erzielte sie mit durchschnittlich 128.856 Mitarbeitern einen Jahresumsatz von 35,6 Mrd. EUR. Die Deutsche Lufthansa AG ist in den Gesch&auml;ftsfeldern Network Airlines, Point-to-Point Airlines, dem Bereich Aviation Services mit den Gesch&auml;ftsfeldern Logistik, Technik und Catering sowie den weiteren Gesellschaften und Konzernfunktionen organisiert.</em></p>', 'cabin', 'bg-header-blue-6', 1),
(11, '2019-05-22 14:59:16', '2022-04-14 16:39:31', 'general', 'General', '<h2>Einstieg ab sofort f&uuml;r 6 Monate<br />\r\nFrankfurt am Main</h2>\r\n\r\n<p>F&uuml;r unser Konzernunternehmen Deutsche Lufthansa Airlines suchen wir Sie als Praktikant (m/w/divers) im Bereich Personalmanagement mit dem Schwerpunkt Strategische Personalplanung und Personalcontrolling.</p>\r\n\r\n<p>Die Strategische Personalplanung der Lufthansa Airlines besch&auml;ftigt sich umfassend mit Szenarien der Entwicklung von Personalbest&auml;nden und -bedarfen. Aus datenbasierten Analysen werden gemeinsam mit den Fachbereichen innovative und zukunftsweisende HR Ma&szlig;nahmen abgeleitet, um den Herausforderungen der Arbeitswelt von morgen schon heute zu begegnen.</p>\r\n\r\n<h3>Ihre Aufgaben:</h3>\r\n\r\n<ul>\r\n	<li>Sie werden Kompetenzen zur Simulation von zuk&uuml;nftigen Personalbedarfen, zu Szenarien des demographischen Wandels und des Kompetenzmodells der Deutschen Lufthansa AG aufbauen</li>\r\n	<li>Ebenfalls werden Sie bei der Entwicklung korrespondierender Kennzahlen und deren Einbettung in HR Management Prozesse einen wichtigen Beitrag im Team leisten</li>\r\n</ul>\r\n\r\n<h3>&Uuml;ber Deutsche Lufthansa AG</h3>\r\n\r\n<p><em>Die Deutsche Lufthansa AG ist ein weltweit operierender Luftverkehrskonzern. Im Gesch&auml;ftsjahr 2017 erzielte sie mit durchschnittlich 128.856 Mitarbeitern einen Jahresumsatz von 35,6 Mrd. EUR. Die Deutsche Lufthansa AG ist in den Gesch&auml;ftsfeldern Network Airlines, Point-to-Point Airlines, dem Bereich Aviation Services mit den Gesch&auml;ftsfeldern Logistik, Technik und Catering sowie den weiteren Gesellschaften und Konzernfunktionen organisiert.</em></p>', 'atc', 'bg-header-blue-7', 1),
(12, '2019-05-22 15:01:59', '2022-04-14 16:40:43', 'requirements', 'Requirements', '<h2>Einstieg ab sofort f&uuml;r 6 Monate<br />\r\nFrankfurt am Main</h2>\r\n\r\n<p>F&uuml;r unser Konzernunternehmen Deutsche Lufthansa Airlines suchen wir Sie als Praktikant (m/w/divers) im Bereich Personalmanagement mit dem Schwerpunkt Strategische Personalplanung und Personalcontrolling.</p>\r\n\r\n<p>Die Strategische Personalplanung der Lufthansa Airlines besch&auml;ftigt sich umfassend mit Szenarien der Entwicklung von Personalbest&auml;nden und -bedarfen. Aus datenbasierten Analysen werden gemeinsam mit den Fachbereichen innovative und zukunftsweisende HR Ma&szlig;nahmen abgeleitet, um den Herausforderungen der Arbeitswelt von morgen schon heute zu begegnen.</p>\r\n\r\n<h3>Ihre Aufgaben:</h3>\r\n\r\n<ul>\r\n	<li>Sie werden Kompetenzen zur Simulation von zuk&uuml;nftigen Personalbedarfen, zu Szenarien des demographischen Wandels und des Kompetenzmodells der Deutschen Lufthansa AG aufbauen</li>\r\n	<li>Ebenfalls werden Sie bei der Entwicklung korrespondierender Kennzahlen und deren Einbettung in HR Management Prozesse einen wichtigen Beitrag im Team leisten</li>\r\n</ul>\r\n\r\n<h3>&Uuml;ber Deutsche Lufthansa AG</h3>\r\n\r\n<p><em>Die Deutsche Lufthansa AG ist ein weltweit operierender Luftverkehrskonzern. Im Gesch&auml;ftsjahr 2017 erzielte sie mit durchschnittlich 128.856 Mitarbeitern einen Jahresumsatz von 35,6 Mrd. EUR. Die Deutsche Lufthansa AG ist in den Gesch&auml;ftsfeldern Network Airlines, Point-to-Point Airlines, dem Bereich Aviation Services mit den Gesch&auml;ftsfeldern Logistik, Technik und Catering sowie den weiteren Gesellschaften und Konzernfunktionen organisiert.</em></p>', 'cabin', 'bg-header-blue-light-9', 1),
(13, '2019-05-22 15:02:46', '2022-04-14 16:40:48', 'requirements', 'Requirements', '<h2>Einstieg ab sofort f&uuml;r 6 Monate<br />\r\nFrankfurt am Main</h2>\r\n\r\n<p>F&uuml;r unser Konzernunternehmen Deutsche Lufthansa Airlines suchen wir Sie als Praktikant (m/w/divers) im Bereich Personalmanagement mit dem Schwerpunkt Strategische Personalplanung und Personalcontrolling.</p>\r\n\r\n<p>Die Strategische Personalplanung der Lufthansa Airlines besch&auml;ftigt sich umfassend mit Szenarien der Entwicklung von Personalbest&auml;nden und -bedarfen. Aus datenbasierten Analysen werden gemeinsam mit den Fachbereichen innovative und zukunftsweisende HR Ma&szlig;nahmen abgeleitet, um den Herausforderungen der Arbeitswelt von morgen schon heute zu begegnen.</p>\r\n\r\n<h3>Ihre Aufgaben:</h3>\r\n\r\n<ul>\r\n	<li>Sie werden Kompetenzen zur Simulation von zuk&uuml;nftigen Personalbedarfen, zu Szenarien des demographischen Wandels und des Kompetenzmodells der Deutschen Lufthansa AG aufbauen</li>\r\n	<li>Ebenfalls werden Sie bei der Entwicklung korrespondierender Kennzahlen und deren Einbettung in HR Management Prozesse einen wichtigen Beitrag im Team leisten</li>\r\n</ul>\r\n\r\n<h3>&Uuml;ber Deutsche Lufthansa AG</h3>\r\n\r\n<p><em>Die Deutsche Lufthansa AG ist ein weltweit operierender Luftverkehrskonzern. Im Gesch&auml;ftsjahr 2017 erzielte sie mit durchschnittlich 128.856 Mitarbeitern einen Jahresumsatz von 35,6 Mrd. EUR. Die Deutsche Lufthansa AG ist in den Gesch&auml;ftsfeldern Network Airlines, Point-to-Point Airlines, dem Bereich Aviation Services mit den Gesch&auml;ftsfeldern Logistik, Technik und Catering sowie den weiteren Gesellschaften und Konzernfunktionen organisiert.</em></p>', 'atc', 'bg-header-blue-light-9', 1),
(14, '2020-05-16 15:48:28', '2022-04-14 17:57:40', 'training', 'Training', '<h2>Einstieg ab sofort f&uuml;r 6 Monate<br />\r\nFrankfurt am Main</h2>\r\n\r\n<p>F&uuml;r unser Konzernunternehmen Deutsche Lufthansa Airlines suchen wir Sie als Praktikant (m/w/divers) im Bereich Personalmanagement mit dem Schwerpunkt Strategische Personalplanung und Personalcontrolling.</p>\r\n\r\n<p>Die Strategische Personalplanung der Lufthansa Airlines besch&auml;ftigt sich umfassend mit Szenarien der Entwicklung von Personalbest&auml;nden und -bedarfen. Aus datenbasierten Analysen werden gemeinsam mit den Fachbereichen innovative und zukunftsweisende HR Ma&szlig;nahmen abgeleitet, um den Herausforderungen der Arbeitswelt von morgen schon heute zu begegnen.</p>\r\n\r\n<h3>Ihre Aufgaben:</h3>\r\n\r\n<ul>\r\n	<li>Sie werden Kompetenzen zur Simulation von zuk&uuml;nftigen Personalbedarfen, zu Szenarien des demographischen Wandels und des Kompetenzmodells der Deutschen Lufthansa AG aufbauen</li>\r\n	<li>Ebenfalls werden Sie bei der Entwicklung korrespondierender Kennzahlen und deren Einbettung in HR Management Prozesse einen wichtigen Beitrag im Team leisten</li>\r\n</ul>\r\n\r\n<h3>&Uuml;ber Deutsche Lufthansa AG</h3>\r\n\r\n<p><em>Die Deutsche Lufthansa AG ist ein weltweit operierender Luftverkehrskonzern. Im Gesch&auml;ftsjahr 2017 erzielte sie mit durchschnittlich 128.856 Mitarbeitern einen Jahresumsatz von 35,6 Mrd. EUR. Die Deutsche Lufthansa AG ist in den Gesch&auml;ftsfeldern Network Airlines, Point-to-Point Airlines, dem Bereich Aviation Services mit den Gesch&auml;ftsfeldern Logistik, Technik und Catering sowie den weiteren Gesellschaften und Konzernfunktionen organisiert.</em></p>\r\n\r\n<p>&nbsp;</p>', 'cabin', 'bg-header-red-2', 1),
(15, '2020-05-16 15:49:32', '2022-04-14 16:42:08', 'training', 'Training', '<h2>Einstieg ab sofort f&uuml;r 6 Monate<br />\r\nFrankfurt am Main</h2>\r\n\r\n<p>F&uuml;r unser Konzernunternehmen Deutsche Lufthansa Airlines suchen wir Sie als Praktikant (m/w/divers) im Bereich Personalmanagement mit dem Schwerpunkt Strategische Personalplanung und Personalcontrolling.</p>\r\n\r\n<p>Die Strategische Personalplanung der Lufthansa Airlines besch&auml;ftigt sich umfassend mit Szenarien der Entwicklung von Personalbest&auml;nden und -bedarfen. Aus datenbasierten Analysen werden gemeinsam mit den Fachbereichen innovative und zukunftsweisende HR Ma&szlig;nahmen abgeleitet, um den Herausforderungen der Arbeitswelt von morgen schon heute zu begegnen.</p>\r\n\r\n<h3>Ihre Aufgaben:</h3>\r\n\r\n<ul>\r\n	<li>Sie werden Kompetenzen zur Simulation von zuk&uuml;nftigen Personalbedarfen, zu Szenarien des demographischen Wandels und des Kompetenzmodells der Deutschen Lufthansa AG aufbauen</li>\r\n	<li>Ebenfalls werden Sie bei der Entwicklung korrespondierender Kennzahlen und deren Einbettung in HR Management Prozesse einen wichtigen Beitrag im Team leisten</li>\r\n</ul>\r\n\r\n<h3>&Uuml;ber Deutsche Lufthansa AG</h3>\r\n\r\n<p><em>Die Deutsche Lufthansa AG ist ein weltweit operierender Luftverkehrskonzern. Im Gesch&auml;ftsjahr 2017 erzielte sie mit durchschnittlich 128.856 Mitarbeitern einen Jahresumsatz von 35,6 Mrd. EUR. Die Deutsche Lufthansa AG ist in den Gesch&auml;ftsfeldern Network Airlines, Point-to-Point Airlines, dem Bereich Aviation Services mit den Gesch&auml;ftsfeldern Logistik, Technik und Catering sowie den weiteren Gesellschaften und Konzernfunktionen organisiert.</em></p>', 'atc', 'bg-header-red-3', 1),
(16, '2021-01-05 15:52:16', '2022-04-26 21:31:46', 'requirements', 'Requirements', '<h1>As a pilot, you have to deal with numerous checklists.</h1>\r\n\r\n<h1><span style=\"color:#ec008c\">Here is your first one!</span></h1>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>You can probably already imagine that the job of a pilot involves a great deal of responsibility. &nbsp;</h2>\r\n\r\n<p><br />\r\nAs a pilot, you have the responsibility for countless lives. After all, you are not alone in the airplane. You are part of a crew that you help lead and usually have several hundred passengers and or valuable cargo on board. With the ever-increasing volume of traffic, airports and airspaces are becoming more and more crowded, requiring the highest level of concentration on the ground and in the air.<br />\r\nWith such a demanding work environment, it is inevitable that you will find yourself in situations that will demand everything from you. It is important that you can remain calm in such moments and immediately be able to master them.&nbsp;<br />\r\nYour daily work routine demands physical and mental performance and may often expose you to a lot of stress.</p>\r\n\r\n<p>Taking control should not be a foreign word for you!</p>\r\n\r\n<p>Therefore, as a pilot, you should ideally fulfil the following personal requirements.<br />\r\n<strong>You are:</strong></p>\r\n\r\n<ul>\r\n	<li>reliable</li>\r\n	<li>a team player</li>\r\n	<li>able to take criticism</li>\r\n	<li>accurate</li>\r\n	<li>punctual&nbsp;</li>\r\n</ul>\r\n\r\n<p><strong>additionally, you possess</strong></p>\r\n\r\n<ul>\r\n	<li>a high ability to concentrate</li>\r\n	<li>&nbsp;good reactivity</li>\r\n	<li>&nbsp;good&nbsp;spatial orientation</li>\r\n	<li>&nbsp;high resilience</li>\r\n	<li>&nbsp;technical understanding&nbsp;</li>\r\n	<li>&nbsp;good English language skills</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><span style=\"color:#ec008c\">Even if the list of requirements seems very extensive, no master fell from the sky and in many aspects you can prepare yourself well and improve in these areas if you might still have deficits.&nbsp;</span></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>On top of those personal requirements, you should also meet a few formal requirements:</p>\r\n\r\n<h3>Medical Class 1</h3>\r\n\r\n<ul>\r\n	<li>As a pilot, you need to be fit and healthy. This is examined by an Aero-Medical Examiner (AME) and certified with the Medical Class 1.&nbsp;</li>\r\n	<li>Your first medical must be completed at an Aero Medical Center (AMC). &nbsp;You must renew your medical at an AME once a year until you reach the age of 40.&nbsp;From the age of 41 even every 6 months</li>\r\n	<li style=\"text-align:justify\">During your medical exam following will be checked:&nbsp;\r\n	<ul>\r\n		<li style=\"text-align:justify\">General Exam:&nbsp;Your general health will be checked, as well as your heart(ECG) and lung function.</li>\r\n		<li style=\"text-align:justify\">Vision:&nbsp;Having a good view is enormously important. You will be checked if you are colour blind or have blind spots.&nbsp;Your eyesight will also be checked. If you already wear glasses, this does not necessarily have to be a criterion for exclusion.</li>\r\n		<li style=\"text-align:justify\">Hearing:&nbsp;Your general health will be checked, as well as your heart and lung function.</li>\r\n		<li style=\"text-align:justify\">Blood Samples</li>\r\n		<li style=\"text-align:justify\">Urine Samples</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<h3>Fluent in English&nbsp;(ICAO Level)</h3>\r\n\r\n<ul>\r\n	<li>The main language in aviation is English. Thus, it is mandatory that you can speak fluently and without problems.<br />\r\n	Your fluency in&nbsp;aviation English is certified with the so-called ICAO language levels.</li>\r\n	<li>There are three levels to the ICAO Levels. The first is ICAO Level 4, which is the &quot;lowest level&quot; and must be renewed every 4 years.&nbsp;The ICAO Level 5 certifies advanced language skills and must be renewed every 5 years.&nbsp;With the ICAO Level 6, you have the highest level and do not have to renew it, because it is valid indefinitely.</li>\r\n	<li>(The ICAO Level is <strong>NOT&nbsp;</strong>required when you start your pilot training at your flight school but when you apply with an airline!&nbsp;If you are applying to a flight school and are not a native speaker, you will have to prove your language skills by taking a language test such as the IELTS or the TOEFL&nbsp;test.)</li>\r\n</ul>\r\n\r\n<h3>Body Height</h3>\r\n\r\n<ul>\r\n	<li>Usually, the height requirements are in the area of:&nbsp;minimum&nbsp;157cm(5ft 2in) and maximum 191cm(6ft 3in)</li>\r\n	<li>\r\n	<p>In fact, there are minimum and maximum sizes that are considered when selecting pilots. In most commercial aircraft, the overhead panel is an important part of the cockpit. This is where the aircraft systems are usually configured before takeoff.<br />\r\n	Accordingly, it is important that you can reach all switches there while seated.&nbsp;<br />\r\n	This can be a problem if you are smaller than average. On the other hand, it is also problematic if you are taller than average because you may sit too high to look through the windows and your head will bump into the overhead panel.</p>\r\n	</li>\r\n</ul>\r\n\r\n<blockquote>\r\n<p>Note: Those numbers may differ&nbsp;depending on the aircraft / airline</p>\r\n</blockquote>\r\n\r\n<h3><br />\r\nAge</h3>\r\n\r\n<ul>\r\n	<li>It is never to early or to start right? That is true however if you want to fly commercially at the time of applying to a flight school you must be at least 17. years old and 18. at the time you start your training.</li>\r\n	<li>If you apply to airlines after training, the minimum age is usually 18, but this can vary.</li>\r\n	<li>However, there is often a maximum age when you apply to airlines. For positions as First Officer this is usually 35 years. For Captain roles this age limit is usually more higher. But also here it should be said that it varies from airline to airline.</li>\r\n</ul>', 'pilot', 'bg-header-blue-light-9', 1),
(17, '2022-03-29 14:41:25', '2022-04-14 16:47:35', 'terms-of-service', 'Terms of Service', '<p>Hallo</p>', '', 'bg-header-blue-4', 0),
(18, '2022-03-29 14:42:43', '2022-04-14 16:46:55', 'privacy-policy', 'Privacy Policy', '<p>Hallo</p>', '', 'bg-header-blue-4', 0);

-- --------------------------------------------------------

--
-- Table structure for table `todo`
--

CREATE TABLE `todo` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `done_at` datetime DEFAULT NULL,
  `done_by` int(11) DEFAULT NULL,
  `priority` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `todo_comment`
--

CREATE TABLE `todo_comment` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `todo_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `access` int(11) NOT NULL DEFAULT 0,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `access`, `company_name`, `contact_name`, `phone`) VALUES
(1, 'admin', 'philipp.hochstetter+skyhub.admin@yahoo.de', '2021-12-10 17:14:18', '$2y$10$fqAnqjhFC8cytt1sQRakU.my/eG9pzrTijvIec70keWBSD/DBt.He', 'IuEdPMl7pjDkW5VEaC7t43AUXTql6cDVlUWD6UKeQAhzbESG3phjriw9C0Ly', '2021-12-10 16:51:44', '2021-12-10 17:14:18', 1, NULL, NULL, NULL),
(2, 'philipp', 'philipp.hochstetter+skyhub.philipp@yahoo.de', '2022-04-26 20:36:28', '$2y$10$xXkYumBDcQ9WEniM/bMOxu4XXXLyUB1UekyvJwxLvPXy0JuLRnCc6', 'UiLGC9wPS6G9DIpKdPQeQCb4b7MLlFyCrQDogZeRdRxaUNYT27yRnl6uDjI0', '2021-12-11 16:34:47', '2021-12-14 12:39:48', 32, NULL, NULL, NULL),
(3, 'ryanair', 'philipp.hochstetter+skyhub.ryanair@yahoo.de', '2021-12-14 14:14:57', '$2y$10$7XmAlsoMvaEMg9F0nATLx.ATMt.qwn.O9Q5MhyagLQXtAx0/cfRcW', 'dtPURiMkwy3ctTAoxP7WNgFG7P9O6TucRaIIIx5LLp571Wbzff6QP2sCWHBR', '2021-12-14 11:28:23', '2021-12-14 14:15:45', 8, 'Ryanair', 'Ryanair Recruitment', '+3531234567'),
(4, 'test', 'philipp.hochstetter+skyhub.test@yahoo.de', '2021-12-14 13:53:58', '$2y$10$ChCcVcOMn0rpLTIQJ2c2H.v9YCanhgM4DLjcvYYrogJXUMvv9PseG', 'tidy6QNP6XnpXoYposuaAjWBaLQDjfxSUQgir0PfhLjeUHtwF3BDSBDAyM7a', '2021-12-14 12:28:17', '2021-12-14 13:53:58', 8, 'test', 'test', '123456789'),
(5, 'david-alexander-pfeiffer', 'david.pfeiffer971@gmail.com', NULL, '$2y$10$5oduybRHikxyMAS0WlDq3unFIC/8iVNpJe3.BiD0/0DbxIP48EyEa', 'VfKAZKUavoIBGfLa1D9hpBYsw7MTKzyd1iT7krGWuGYVVCb7L65Q4uv5UbAl', '2022-03-29 11:31:36', '2022-03-29 11:31:36', 1, 'David Alexander Pfeiffer Software & IT', 'David Alexander Pfeiffer', '+491735675204');

-- --------------------------------------------------------

--
-- Table structure for table `user_insights`
--

CREATE TABLE `user_insights` (
  `user_id` bigint(20) NOT NULL,
  `insight_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_insights`
--

INSERT INTO `user_insights` (`user_id`, `insight_id`) VALUES
(2, 6),
(2, 10),
(2, 38),
(3, 38),
(4, 42);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_object_id_object_type_index` (`object_id`,`object_type`),
  ADD KEY `images_parent_id_index` (`parent_id`);

--
-- Indexes for table `insights`
--
ALTER TABLE `insights`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `insights_job_type_slug_unique` (`job_type`,`slug`),
  ADD KEY `insights_slug_index` (`slug`),
  ADD KEY `insights_region_type_index` (`region`,`type`),
  ADD KEY `insights_type_index` (`type`);

--
-- Indexes for table `insight_drafts`
--
ALTER TABLE `insight_drafts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `insight_drafts_insight_id_index` (`insight_id`);

--
-- Indexes for table `job_atcs`
--
ALTER TABLE `job_atcs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_atcs_type_status_index` (`type`,`status`),
  ADD KEY `job_atcs_user_id_index` (`user_id`),
  ADD KEY `job_atcs_insight_id_index` (`insight_id`);

--
-- Indexes for table `job_cabins`
--
ALTER TABLE `job_cabins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_cabins_type_status_index` (`type`,`status`),
  ADD KEY `job_cabins_user_id_index` (`user_id`),
  ADD KEY `job_cabins_insight_id_index` (`insight_id`);

--
-- Indexes for table `job_draft_atcs`
--
ALTER TABLE `job_draft_atcs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_draft_atcs_job_id_index` (`job_id`);

--
-- Indexes for table `job_draft_cabins`
--
ALTER TABLE `job_draft_cabins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_draft_cabins_job_id_index` (`job_id`);

--
-- Indexes for table `job_draft_pilots`
--
ALTER TABLE `job_draft_pilots`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_draft_pilots_job_id_index` (`job_id`);

--
-- Indexes for table `job_pilots`
--
ALTER TABLE `job_pilots`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_pilots_type_status_index` (`type`,`status`),
  ADD KEY `job_pilots_user_id_index` (`user_id`),
  ADD KEY `job_pilots_insight_id_index` (`insight_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `setting_group_name_unique` (`group`,`name`),
  ADD KEY `setting_group_name_index` (`group`,`name`);

--
-- Indexes for table `static_page`
--
ALTER TABLE `static_page`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `static_page_slug_domain_unique` (`slug`,`domain`);

--
-- Indexes for table `todo`
--
ALTER TABLE `todo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `todo_comment`
--
ALTER TABLE `todo_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `todo_comment_todo_id_index` (`todo_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_insights`
--
ALTER TABLE `user_insights`
  ADD UNIQUE KEY `user_insights_user_id_insight_id_unique` (`user_id`,`insight_id`),
  ADD KEY `user_insights_user_id_index` (`user_id`),
  ADD KEY `user_insights_insight_id_index` (`insight_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1311;

--
-- AUTO_INCREMENT for table `insights`
--
ALTER TABLE `insights`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `insight_drafts`
--
ALTER TABLE `insight_drafts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `job_atcs`
--
ALTER TABLE `job_atcs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_cabins`
--
ALTER TABLE `job_cabins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_draft_atcs`
--
ALTER TABLE `job_draft_atcs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_draft_cabins`
--
ALTER TABLE `job_draft_cabins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_draft_pilots`
--
ALTER TABLE `job_draft_pilots`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `job_pilots`
--
ALTER TABLE `job_pilots`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `static_page`
--
ALTER TABLE `static_page`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `todo`
--
ALTER TABLE `todo`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `todo_comment`
--
ALTER TABLE `todo_comment`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
