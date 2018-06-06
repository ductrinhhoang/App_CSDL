-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 06, 2018 lúc 07:45 AM
-- Phiên bản máy phục vụ: 10.1.32-MariaDB
-- Phiên bản PHP: 7.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db_mobile`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill`
--

CREATE TABLE `bill` (
  `maHD` int(10) UNSIGNED NOT NULL,
  `maSP` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `maKH` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `maNV` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `soLuong` int(11) NOT NULL,
  `tongTien` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bill`
--

INSERT INTO `bill` (`maHD`, `maSP`, `maKH`, `maNV`, `soLuong`, `tongTien`, `created_at`, `updated_at`) VALUES
(2, '1', '20160000', '2015003', 5, 31250000, '2018-06-04 06:10:11', '2018-06-04 06:10:11'),
(3, '5', '20160003', '2015005', 10, 69900000, '2018-06-04 07:20:32', '2018-06-04 07:20:32'),
(4, '4', '20160000', '2015003', 2, 10000000, '2018-06-04 21:39:09', '2018-06-04 21:39:09');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id`, `created_at`, `updated_at`, `content`, `seen`, `user_id`, `post_id`) VALUES
(1, '2018-06-01 20:13:28', '2018-06-01 20:13:28', '<p>\nLorem ipsum ullamcorper platea cursus pellentesque leo dui lectus curabitur, euismod ad erat curae non elit ultrices placerat, netus metus feugiat non conubia fusce porttitor sociosqu. \nDiam commodo metus in himenaeos vitae aptent consequat luctus purus, eleifend enim sollicitudin eleifend porta malesuada ac class, conubia condimentum mauris facilisis conubia quis scelerisque lacinia. \nTempus nullam felis fusce ac potenti netus ornare semper molestie, iaculis fermentum ornare curabitur tincidunt imperdiet scelerisque imperdiet euismod, scelerisque torquent curae rhoncus sollicitudin tortor placerat aptent. \nHac nec posuere suscipit sed tortor neque urna hendrerit vehicula, duis litora tristique congue nec auctor felis libero, ornare habitasse nec elit felis inceptos tellus inceptos. \n</p>\n<p>\nCubilia quis mattis faucibus sem non odio, fringilla class aliquam metus ipsum lorem luctus, pharetra dictum vehicula tempus in. \nVenenatis gravida ut gravida proin orci quis sed platea, mi quisque hendrerit semper hendrerit facilisis ante, sapien faucibus ligula commodo vestibulum rutrum pretium. \nVarius sem aliquet himenaeos dolor cursus nunc habitasse aliquam ut curabitur, ipsum luctus ut rutrum odio condimentum donec suscipit. \nMolestie est etiam sit rutrum dui nostra sem, aliquet conubia nullam sollicitudin rhoncus venenatis vivamus, rhoncus netus risus tortor non mauris. \nTurpis eget integer nibh dolor, commodo venenatis ut molestie semper, adipiscing amet cras. \n</p>', 0, 2, 1),
(2, '2018-06-01 20:13:28', '2018-06-01 20:13:28', '<p>\nLorem ipsum nisl pellentesque a malesuada auctor sapien arcu, inceptos aenean consequat metus litora mattis vivamus feugiat arcu, adipiscing mauris primis ante ullamcorper ad nisi. \nLobortis arcu per orci malesuada blandit metus tortor urna turpis consectetur porttitor, egestas sed eleifend eget tincidunt pharetra varius tincidunt morbi. \nMalesuada elementum mi torquent mollis eu lobortis curae, purus amet vivamus amet nulla torquent nibh, eu diam aliquam pretium donec aliquam. \nTempus lacus tempus feugiat lectus cras non velit mollis sit, et integer egestas habitant auctor integer sem at nam, massa himenaeos netus vel dapibus nibh malesuada leo. \n</p>\n<p>\nFusce tortor sociosqu semper facilisis semper class, tempus faucibus tristique duis eros cubilia quisque, habitasse aliquam fringilla orci non. \nVel laoreet dolor enim justo facilisis neque accumsan in ad venenatis, hac per dictumst nulla ligula donec mollis massa porttitor ullamcorper risus, eu platea fringilla habitasse suscipit pellentesque donec est habitant. \nVehicula tempor ultrices placerat sociosqu ultrices consectetur ullamcorper tincidunt quisque, tellus ante nostra euismod nec suspendisse sem curabitur, elit malesuada lacus viverra sagittis sit ornare orci. \nAugue nullam adipiscing pulvinar, libero aliquam vestibulum platea, cursus pellentesque. \nLeo dui lectus curabitur euismod ad erat curae non elit ultrices, placerat netus metus feugiat non conubia fusce porttitor sociosqu. \n</p>', 0, 2, 2),
(3, '2018-06-01 20:13:28', '2018-06-01 20:13:28', '<p>\nLorem ipsum lacinia commodo metus in himenaeos vitae, aptent consequat luctus purus eleifend enim, sollicitudin eleifend porta malesuada ac class. \nConubia condimentum mauris facilisis conubia quis scelerisque, lacinia tempus nullam felis fusce ac, potenti netus ornare semper molestie. \nIaculis fermentum ornare curabitur tincidunt imperdiet scelerisque imperdiet euismod scelerisque torquent, curae rhoncus sollicitudin tortor placerat aptent hac nec posuere, suscipit sed tortor neque urna hendrerit vehicula duis litora. \nTristique congue nec auctor felis libero ornare habitasse nec elit felis, inceptos tellus inceptos cubilia quis mattis faucibus sem non odio, fringilla class aliquam metus ipsum lorem luctus pharetra dictum. \n</p>\n<p>\nVehicula tempus in venenatis gravida ut gravida proin orci quis, sed platea mi quisque hendrerit semper hendrerit facilisis, ante sapien faucibus ligula commodo vestibulum rutrum pretium. \nVarius sem aliquet himenaeos dolor cursus nunc, habitasse aliquam ut curabitur ipsum, luctus ut rutrum odio condimentum. \nDonec suscipit molestie est etiam sit rutrum dui nostra sem aliquet conubia, nullam sollicitudin rhoncus venenatis vivamus rhoncus netus risus tortor non mauris turpis, eget integer nibh dolor commodo venenatis ut molestie semper adipiscing. \nAmet cras class donec sapien malesuada auctor sapien arcu inceptos, aenean consequat metus litora mattis vivamus feugiat arcu, adipiscing mauris primis ante ullamcorper ad nisi lobortis. \n</p>', 0, 3, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `text`, `seen`, `created_at`, `updated_at`) VALUES
(1, 'Dupont', 'dupont@la.fr', 'Lorem ipsum inceptos malesuada leo fusce tortor sociosqu semper, facilisis semper class tempus faucibus tristique duis eros, cubilia quisque habitasse aliquam fringilla orci non. Vel laoreet dolor enim justo facilisis neque accumsan, in ad venenatis hac per dictumst nulla ligula, donec mollis massa porttitor ullamcorper risus. Eu platea fringilla, habitasse.', 0, '2018-06-01 20:13:26', '2018-06-01 20:13:26'),
(2, 'Durand', 'durand@la.fr', ' Lorem ipsum erat non elit ultrices placerat, netus metus feugiat non conubia fusce porttitor, sociosqu diam commodo metus in. Himenaeos vitae aptent consequat luctus purus eleifend enim, sollicitudin eleifend porta malesuada ac class conubia, condimentum mauris facilisis conubia quis scelerisque. Lacinia tempus nullam felis fusce ac potenti netus ornare semper molestie, iaculis fermentum ornare curabitur tincidunt imperdiet scelerisque imperdiet euismod.', 0, '2018-06-01 20:13:26', '2018-06-01 20:13:26'),
(3, 'Martin', 'martin@la.fr', 'Lorem ipsum tempor netus aenean ligula habitant vehicula tempor ultrices, placerat sociosqu ultrices consectetur ullamcorper tincidunt quisque tellus, ante nostra euismod nec suspendisse sem curabitur elit. Malesuada lacus viverra sagittis sit ornare orci, augue nullam adipiscing pulvinar libero aliquam vestibulum, platea cursus pellentesque leo dui. Lectus curabitur euismod ad, erat.', 1, '2018-06-01 20:13:27', '2018-06-01 20:13:27'),
(4, 'hihi', 'haha@gmail.com', 'abc xyz', 0, '2018-06-02 03:28:15', '2018-06-02 03:28:15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `maKH` int(10) UNSIGNED NOT NULL,
  `hoTen` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sdt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`maKH`, `hoTen`, `email`, `sdt`, `created_at`, `updated_at`) VALUES
(20160000, 'Trịnh Hoàng Hiếu', 'hieusn91@gmail.com', '0123444123', NULL, NULL),
(20160001, 'Lê Thị Huyền', 'huyenv@facebook.com', '0156434222', NULL, NULL),
(20160002, 'Trịnh Đình Hiệp', 'hiep.py@yahoo.com', '0163111934', NULL, NULL),
(20160003, 'Hoàng văn Hoằng', 'duccc@gmail.com', '0144828111', '2018-06-02 09:26:57', '2018-06-02 09:26:57');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2014_10_21_105844_create_roles_table', 1),
('2014_10_21_110325_create_foreign_keys', 1),
('2014_10_24_205441_create_contact_table', 1),
('2014_10_26_172107_create_posts_table', 1),
('2014_10_26_172631_create_tags_table', 1),
('2014_10_26_172904_create_post_tag_table', 1),
('2014_10_26_222018_create_comments_table', 1),
('2018_06_02_033240_bang_niem_yet_gia_table', 2),
('2018_06_02_035731_bang_niem_yet_gia_1_table', 3),
('2018_06_02_040514_BNYG_table', 4),
('2018_06_02_065510_product_table', 5),
('2018_06_02_151454_nhan_vien_table', 6),
('2018_06_02_160817_khach_hang_table', 7),
('2018_06_04_114033_bill_table', 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien`
--

CREATE TABLE `nhanvien` (
  `maNV` int(10) UNSIGNED NOT NULL,
  `CMND` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `hoTen` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `gioiTinh` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `ngaySinh` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `diaChi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `luong` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhanvien`
--

INSERT INTO `nhanvien` (`maNV`, `CMND`, `hoTen`, `gioiTinh`, `ngaySinh`, `diaChi`, `luong`, `created_at`, `updated_at`) VALUES
(2015003, '172333232', 'Trịnh Phương Anh', 'Nữ', '1997-8-20', 'Đại học Nông Nghiệp', 5000000, NULL, NULL),
(2015004, '122322322', 'Nguyễn Đức Tâm', 'Nam', '1997-4-3', 'Tokyo', 7000000, NULL, NULL),
(2015005, '232333257', 'Trịnh Đình Minh', 'Nam', '1997-7-17', 'Đại học Bưu chính Viễn Thông', 10000000, NULL, NULL),
(2015006, '293939392', 'Lưu Thiện', 'Nam', '1997-3-2', 'Đại học Thủy Lợi', 15000000, NULL, NULL),
(2015007, '321242252', 'Trịnh Bá Xếp', 'Nam', '1997-9-5', 'Đại học xây dựng', 12000000, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `summary` text COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`id`, `created_at`, `updated_at`, `title`, `slug`, `summary`, `content`, `seen`, `active`, `user_id`) VALUES
(1, '2018-06-01 20:13:27', '2018-06-01 20:13:27', 'Post 1', 'post-1', '<img alt=\"\" src=\"/filemanager/userfiles/user2/mega-champignon.png\" style=\"float:left; height:128px; width:128px\" /><p>\nLorem ipsum mattis sem aliquet conubia, nullam sollicitudin rhoncus venenatis, vivamus rhoncus netus risus. \nTortor non mauris turpis eget integer nibh dolor, commodo venenatis ut molestie semper adipiscing amet, cras class donec sapien malesuada auctor. \nSapien arcu inceptos aenean consequat metus, litora mattis vivamus feugiat arcu, adipiscing mauris primis ante. \n</p>', '<p>\nLorem ipsum lobortis ad nisi lobortis arcu per orci malesuada blandit, metus tortor urna turpis consectetur porttitor egestas sed eleifend eget, tincidunt pharetra varius tincidunt morbi malesuada elementum mi torquent. \nMollis eu lobortis curae purus amet vivamus, amet nulla torquent nibh eu diam aliquam, pretium donec aliquam tempus lacus. \nTempus feugiat lectus cras non velit mollis, sit et integer egestas habitant auctor integer, sem at nam massa himenaeos. \nNetus vel dapibus nibh malesuada leo fusce tortor sociosqu semper facilisis semper, class tempus faucibus tristique duis eros cubilia quisque habitasse aliquam fringilla orci, non vel laoreet dolor enim justo facilisis neque accumsan in. \n</p>\n<p>\nAd venenatis hac per dictumst nulla ligula, donec mollis massa porttitor ullamcorper, risus eu platea fringilla habitasse. \nSuscipit pellentesque donec est habitant vehicula tempor ultrices placerat sociosqu ultrices consectetur, ullamcorper tincidunt quisque tellus ante nostra euismod nec suspendisse sem. \nCurabitur elit malesuada lacus viverra sagittis sit ornare orci augue nullam adipiscing, pulvinar libero aliquam vestibulum platea cursus pellentesque leo dui. \nLectus curabitur euismod ad erat curae non elit ultrices placerat netus metus feugiat, non conubia fusce porttitor sociosqu diam commodo metus in himenaeos. \nVitae aptent consequat luctus purus eleifend enim sollicitudin eleifend porta, malesuada ac class conubia condimentum mauris facilisis conubia quis scelerisque, lacinia tempus nullam felis fusce ac potenti netus. \n</p>\n<p>\nOrnare semper molestie iaculis fermentum ornare curabitur tincidunt imperdiet scelerisque imperdiet, euismod scelerisque torquent curae rhoncus sollicitudin tortor placerat aptent hac, nec posuere suscipit sed tortor neque urna hendrerit vehicula. \nDuis litora tristique congue nec auctor felis libero, ornare habitasse nec elit felis inceptos tellus inceptos, cubilia quis mattis faucibus sem non. \nOdio fringilla class aliquam metus ipsum lorem luctus pharetra dictum vehicula, tempus in venenatis gravida ut gravida proin orci quis, sed platea mi quisque hendrerit semper hendrerit facilisis ante. \nSapien faucibus ligula commodo vestibulum rutrum pretium varius sem aliquet, himenaeos dolor cursus nunc habitasse aliquam ut curabitur ipsum luctus, ut rutrum odio condimentum donec suscipit molestie est. \n</p>\n<p>\nEtiam sit rutrum dui nostra sem aliquet conubia nullam sollicitudin rhoncus venenatis vivamus, rhoncus netus risus tortor non mauris turpis eget integer nibh. \nDolor commodo venenatis ut molestie semper adipiscing amet cras, class donec sapien malesuada auctor sapien arcu, inceptos aenean consequat metus litora mattis vivamus. \nFeugiat arcu adipiscing mauris primis ante ullamcorper ad nisi, lobortis arcu per orci malesuada blandit metus, tortor urna turpis consectetur porttitor egestas sed. \nEleifend eget tincidunt pharetra varius tincidunt morbi malesuada elementum, mi torquent mollis eu lobortis curae purus, amet vivamus amet nulla torquent nibh eu. \n</p>\n<p>\nDiam aliquam pretium donec aliquam tempus lacus tempus feugiat lectus cras, non velit mollis sit et integer egestas habitant auctor integer sem, at nam massa himenaeos netus vel dapibus nibh malesuada. \nLeo fusce tortor sociosqu semper facilisis semper class tempus, faucibus tristique duis eros cubilia quisque habitasse aliquam, fringilla orci non vel laoreet dolor enim. \nJusto facilisis neque accumsan in ad venenatis hac per, dictumst nulla ligula donec mollis massa porttitor ullamcorper, risus eu platea fringilla habitasse suscipit pellentesque. \nDonec est habitant vehicula tempor, ultrices placerat. \n</p>', 0, 1, 1),
(2, '2018-06-01 20:13:27', '2018-06-01 20:13:27', 'Post 2', 'post-2', '<img alt=\"\" src=\"/filemanager/userfiles/user2/goomba.png\" style=\"float:left; height:128px; width:128px\" /><p>\nLorem ipsum eros ultrices consectetur ullamcorper tincidunt quisque tellus, ante nostra euismod nec suspendisse sem curabitur, elit malesuada lacus viverra sagittis sit ornare. \nOrci augue nullam adipiscing pulvinar libero aliquam vestibulum platea, cursus pellentesque leo dui lectus curabitur euismod, ad erat curae non elit ultrices placerat. \nNetus metus feugiat, non. \n</p>', '<p>Lorem ipsum convallis ac curae non elit ultrices placerat netus metus feugiat, non conubia fusce porttitor sociosqu diam commodo metus in himenaeos, vitae aptent consequat luctus purus eleifend enim sollicitudin eleifend porta. Malesuada ac class conubia condimentum mauris facilisis conubia quis scelerisque lacinia, tempus nullam felis fusce ac potenti netus ornare semper. Molestie iaculis fermentum ornare curabitur tincidunt imperdiet scelerisque, imperdiet euismod scelerisque torquent curae rhoncus, sollicitudin tortor placerat aptent hac nec. Posuere suscipit sed tortor neque urna hendrerit vehicula duis litora tristique congue nec auctor felis libero, ornare habitasse nec elit felis inceptos tellus inceptos cubilia quis mattis faucibus sem non.</p>\n\n<p>Odio fringilla class aliquam metus ipsum lorem luctus pharetra dictum, vehicula tempus in venenatis gravida ut gravida proin orci, quis sed platea mi quisque hendrerit semper hendrerit. Facilisis ante sapien faucibus ligula commodo vestibulum rutrum pretium, varius sem aliquet himenaeos dolor cursus nunc habitasse, aliquam ut curabitur ipsum luctus ut rutrum. Odio condimentum donec suscipit molestie est etiam sit rutrum dui nostra, sem aliquet conubia nullam sollicitudin rhoncus venenatis vivamus rhoncus netus, risus tortor non mauris turpis eget integer nibh dolor. Commodo venenatis ut molestie semper adipiscing amet cras, class donec sapien malesuada auctor sapien arcu inceptos, aenean consequat metus litora mattis vivamus.</p>\n\n<pre>\n<code class=\"language-php\">protected function getUserByRecaller($recaller)\n{\n	if ($this-&gt;validRecaller($recaller) &amp;&amp; ! $this-&gt;tokenRetrievalAttempted)\n	{\n		$this-&gt;tokenRetrievalAttempted = true;\n\n		list($id, $token) = explode(\"|\", $recaller, 2);\n\n		$this-&gt;viaRemember = ! is_null($user = $this-&gt;provider-&gt;retrieveByToken($id, $token));\n\n		return $user;\n	}\n}</code></pre>\n\n<p>Feugiat arcu adipiscing mauris primis ante ullamcorper ad nisi, lobortis arcu per orci malesuada blandit metus tortor, urna turpis consectetur porttitor egestas sed eleifend. Eget tincidunt pharetra varius tincidunt morbi malesuada elementum mi torquent mollis, eu lobortis curae purus amet vivamus amet nulla torquent, nibh eu diam aliquam pretium donec aliquam tempus lacus. Tempus feugiat lectus cras non velit mollis sit et integer, egestas habitant auctor integer sem at nam massa himenaeos, netus vel dapibus nibh malesuada leo fusce tortor. Sociosqu semper facilisis semper class tempus faucibus tristique duis eros, cubilia quisque habitasse aliquam fringilla orci non vel, laoreet dolor enim justo facilisis neque accumsan in.</p>\n\n<p>Ad venenatis hac per dictumst nulla ligula donec, mollis massa porttitor ullamcorper risus eu platea, fringilla habitasse suscipit pellentesque donec est. Habitant vehicula tempor ultrices placerat sociosqu ultrices consectetur ullamcorper tincidunt quisque tellus, ante nostra euismod nec suspendisse sem curabitur elit malesuada lacus. Viverra sagittis sit ornare orci augue nullam adipiscing pulvinar libero aliquam vestibulum platea cursus pellentesque leo dui lectus, curabitur euismod ad erat curae non elit ultrices placerat netus metus feugiat non conubia fusce porttitor. Sociosqu diam commodo metus in himenaeos vitae aptent consequat luctus purus eleifend enim sollicitudin eleifend, porta malesuada ac class conubia condimentum mauris facilisis conubia quis scelerisque lacinia.</p>\n\n<p>Tempus nullam felis fusce ac potenti netus ornare semper molestie iaculis, fermentum ornare curabitur tincidunt imperdiet scelerisque imperdiet euismod. Scelerisque torquent curae rhoncus sollicitudin tortor placerat aptent hac, nec posuere suscipit sed tortor neque urna hendrerit, vehicula duis litora tristique congue nec auctor. Felis libero ornare habitasse nec elit felis, inceptos tellus inceptos cubilia quis mattis, faucibus sem non odio fringilla. Class aliquam metus ipsum lorem luctus pharetra dictum vehicula, tempus in venenatis gravida ut gravida proin orci, quis sed platea mi quisque hendrerit semper.</p>\n', 0, 1, 2),
(3, '2018-06-01 20:13:27', '2018-06-01 20:13:27', 'Post 3', 'post-3', '<img alt=\"\" src=\"/filemanager/userfiles/user2/rouge-shell.png\" style=\"float:left; height:128px; width:128px\" /><p>\nLorem ipsum dapibus fusce porttitor sociosqu diam commodo metus in himenaeos vitae aptent, consequat luctus purus eleifend enim sollicitudin eleifend porta malesuada ac. \nClass conubia condimentum mauris facilisis conubia quis scelerisque lacinia tempus nullam felis fusce ac potenti, netus ornare semper molestie iaculis fermentum ornare curabitur tincidunt imperdiet scelerisque imperdiet. \n</p>', '<p>\nLorem ipsum quisque fusce torquent curae rhoncus sollicitudin tortor placerat aptent hac nec, posuere suscipit sed tortor neque urna hendrerit vehicula duis litora. \nTristique congue nec auctor felis libero ornare habitasse nec elit felis inceptos tellus inceptos, cubilia quis mattis faucibus sem non odio fringilla class aliquam metus ipsum. \nLorem luctus pharetra dictum vehicula tempus in venenatis gravida, ut gravida proin orci quis sed platea, mi quisque hendrerit semper hendrerit facilisis ante. \nSapien faucibus ligula commodo vestibulum rutrum pretium varius sem aliquet, himenaeos dolor cursus nunc habitasse aliquam ut curabitur, ipsum luctus ut rutrum odio condimentum donec suscipit. \n</p>\n<p>\nMolestie est etiam sit rutrum dui, nostra sem aliquet conubia, nullam sollicitudin rhoncus venenatis. \nVivamus rhoncus netus risus tortor non mauris turpis eget, integer nibh dolor commodo venenatis ut molestie semper adipiscing, amet cras class donec sapien malesuada auctor. \nSapien arcu inceptos aenean consequat metus litora mattis vivamus feugiat arcu, adipiscing mauris primis ante ullamcorper ad nisi lobortis arcu. \nPer orci malesuada blandit metus tortor urna turpis consectetur, porttitor egestas sed eleifend eget tincidunt pharetra varius tincidunt, morbi malesuada elementum mi torquent mollis eu. \nLobortis curae purus amet vivamus amet nulla torquent nibh eu diam aliquam pretium donec, aliquam tempus lacus tempus feugiat lectus cras non velit mollis sit. \n</p>\n<p>\nEt integer egestas habitant auctor integer sem at nam massa, himenaeos netus vel dapibus nibh malesuada leo fusce tortor, sociosqu semper facilisis semper class tempus faucibus tristique. \nDuis eros cubilia quisque habitasse aliquam fringilla orci non, vel laoreet dolor enim justo facilisis neque, accumsan in ad venenatis hac per dictumst. \nNulla ligula donec mollis massa porttitor ullamcorper risus eu platea fringilla, habitasse suscipit pellentesque donec est habitant vehicula tempor ultrices placerat, sociosqu ultrices consectetur ullamcorper tincidunt quisque tellus ante nostra. \nEuismod nec suspendisse sem curabitur elit malesuada lacus viverra sagittis sit ornare orci augue, nullam adipiscing pulvinar libero aliquam vestibulum platea cursus pellentesque leo dui. \n</p>\n<p>\nLectus curabitur euismod ad erat curae non elit ultrices, placerat netus metus feugiat non conubia fusce, porttitor sociosqu diam commodo metus in himenaeos. \nVitae aptent consequat luctus purus eleifend enim sollicitudin eleifend porta, malesuada ac class conubia condimentum mauris facilisis conubia quis scelerisque, lacinia tempus nullam felis fusce ac potenti netus. \nOrnare semper molestie iaculis fermentum ornare curabitur tincidunt imperdiet scelerisque, imperdiet euismod scelerisque torquent curae rhoncus sollicitudin tortor placerat, aptent hac nec posuere suscipit sed tortor neque. \nUrna hendrerit vehicula duis litora tristique congue nec, auctor felis libero ornare habitasse nec elit felis, inceptos tellus inceptos cubilia quis mattis. \n</p>\n<p>\nFaucibus sem non odio fringilla class aliquam metus, ipsum lorem luctus pharetra dictum vehicula tempus in, venenatis gravida ut gravida proin orci. \nQuis sed platea mi quisque hendrerit semper hendrerit facilisis, ante sapien faucibus ligula commodo vestibulum rutrum, pretium varius sem aliquet himenaeos dolor cursus. \nNunc habitasse aliquam ut, curabitur ipsum luctus, ut rutrum. \nOdio condimentum donec suscipit molestie est etiam sit rutrum, dui nostra sem aliquet conubia nullam sollicitudin, rhoncus venenatis vivamus rhoncus netus risus tortor. \nNon mauris turpis eget integer nibh dolor, commodo venenatis ut molestie. \n</p>', 0, 1, 2),
(4, '2018-06-01 20:13:27', '2018-06-01 20:13:27', 'Post 4', 'post-4', '<img alt=\"\" src=\"/filemanager/userfiles/user2/rouge-shyguy.png\" style=\"float:left; height:128px; width:128px\" /><p>\nLorem ipsum lorem cras class donec sapien malesuada auctor, sapien arcu inceptos aenean consequat metus litora, mattis vivamus feugiat arcu adipiscing mauris primis. \nAnte ullamcorper ad nisi lobortis arcu per orci, malesuada blandit metus tortor urna turpis consectetur porttitor, egestas sed eleifend eget tincidunt pharetra. \nVarius tincidunt morbi malesuada, elementum. \n</p>', '<p>\nLorem ipsum integer ad mollis eu lobortis curae purus amet, vivamus amet nulla torquent nibh eu diam aliquam, pretium donec aliquam tempus lacus tempus feugiat lectus. \nCras non velit mollis sit et integer egestas habitant auctor, integer sem at nam massa himenaeos netus vel dapibus, nibh malesuada leo fusce tortor sociosqu semper facilisis. \nSemper class tempus faucibus tristique duis, eros cubilia quisque habitasse, aliquam fringilla orci non. \nVel laoreet dolor enim justo facilisis neque accumsan in ad, venenatis hac per dictumst nulla ligula donec mollis massa porttitor, ullamcorper risus eu platea fringilla habitasse suscipit pellentesque. \n</p>\n<p>\nDonec est habitant vehicula tempor ultrices placerat sociosqu ultrices, consectetur ullamcorper tincidunt quisque tellus ante nostra euismod, nec suspendisse sem curabitur elit malesuada lacus. \nViverra sagittis sit ornare orci augue nullam adipiscing pulvinar libero aliquam vestibulum platea cursus pellentesque leo, dui lectus curabitur euismod ad erat curae non elit ultrices placerat netus metus. \nFeugiat non conubia fusce porttitor sociosqu diam commodo metus, in himenaeos vitae aptent consequat luctus purus, eleifend enim sollicitudin eleifend porta malesuada ac. \nClass conubia condimentum mauris facilisis conubia quis scelerisque, lacinia tempus nullam felis fusce ac, potenti netus ornare semper molestie iaculis. \n</p>\n<p>\nFermentum ornare curabitur tincidunt imperdiet scelerisque imperdiet euismod scelerisque torquent curae, rhoncus sollicitudin tortor placerat aptent hac nec posuere suscipit sed tortor, neque urna hendrerit vehicula duis litora tristique congue nec. \nAuctor felis libero ornare habitasse nec elit felis inceptos tellus inceptos, cubilia quis mattis faucibus sem non odio fringilla class aliquam metus, ipsum lorem luctus pharetra dictum vehicula tempus in venenatis. \nGravida ut gravida proin orci quis sed platea mi, quisque hendrerit semper hendrerit facilisis ante sapien faucibus, ligula commodo vestibulum rutrum pretium varius sem. \nAliquet himenaeos dolor cursus nunc, habitasse aliquam ut curabitur, ipsum luctus ut. \n</p>\n<p>\nRutrum odio condimentum donec suscipit molestie est etiam sit rutrum dui, nostra sem aliquet conubia nullam sollicitudin rhoncus venenatis vivamus rhoncus netus, risus tortor non mauris turpis eget integer nibh dolor. \nCommodo venenatis ut molestie semper adipiscing amet cras class donec sapien malesuada, auctor sapien arcu inceptos aenean consequat metus litora mattis vivamus feugiat, arcu adipiscing mauris primis ante ullamcorper ad nisi lobortis arcu. \nPer orci malesuada blandit metus tortor urna, turpis consectetur porttitor egestas sed eleifend, eget tincidunt pharetra varius tincidunt. \nMorbi malesuada elementum mi torquent mollis eu lobortis, curae purus amet vivamus amet nulla. \n</p>\n<p>\nTorquent nibh eu diam aliquam pretium donec aliquam tempus, lacus tempus feugiat lectus cras non velit, mollis sit et integer egestas habitant auctor. \nInteger sem at nam massa himenaeos netus vel dapibus, nibh malesuada leo fusce tortor sociosqu. \nSemper facilisis semper class tempus faucibus tristique duis eros cubilia, quisque habitasse aliquam fringilla orci non vel laoreet dolor enim, justo facilisis neque accumsan in ad venenatis hac. \nPer dictumst nulla ligula donec mollis massa porttitor, ullamcorper risus eu platea fringilla habitasse suscipit, pellentesque donec est habitant vehicula tempor. \nUltrices placerat sociosqu ultrices consectetur ullamcorper tincidunt quisque, tellus ante nostra euismod nec suspendisse sem, curabitur elit malesuada lacus viverra sagittis. \n</p>\n<p>\nSit ornare orci augue nullam, adipiscing pulvinar. \n</p>', 0, 1, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post_tag`
--

CREATE TABLE `post_tag` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `post_tag`
--

INSERT INTO `post_tag` (`id`, `post_id`, `tag_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 1),
(4, 2, 2),
(5, 2, 3),
(6, 3, 1),
(7, 3, 2),
(8, 3, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `maSP` int(10) UNSIGNED NOT NULL,
  `tenSP` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `hangSX` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `khuyenMai` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `giaTien` int(10) UNSIGNED NOT NULL,
  `giaCu` int(11) DEFAULT NULL,
  `kichThuoc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phanGiai` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `heDieuHanh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CPU` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `RAM` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mayAnhChinh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `boNhoTrong` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dungLuongPin` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`maSP`, `tenSP`, `hangSX`, `khuyenMai`, `giaTien`, `giaCu`, `kichThuoc`, `phanGiai`, `heDieuHanh`, `CPU`, `RAM`, `mayAnhChinh`, `boNhoTrong`, `dungLuongPin`, `created_at`, `updated_at`, `remember_token`, `link`) VALUES
(1, 'Apple iPhone 6 - 32GB (2017)', 'apple', 'Hỗ trợ trả góp 0% dành cho các chủ thẻ VIB, ANZ, VP Bank, Shinhan Bank & Sacombank.', 6250000, NULL, '4.7 inches', '1334 x 750px', 'iOS 10', 'Apple A8 2 nhân 64-bit', '1 GB', '8.0 MP', '32GB', '1810 mAh', NULL, NULL, NULL, 'http://cdn.fptshop.com.vn/Uploads/Thumbs/2018/5/18/636622605489276625_6-32.png'),
(2, 'Samsung Galaxy S8', 'samsung', 'Tháng 6: Chào hè rực rỡ, trúng quà bất ngờ lên đến 30 triệu đồng cùng Samsung ( Chi tiết Quý khách xem tại bài viết phía dưới )', 17850000, 0, '6.3 inches', '2K (1440 x 2960 Pixels)', 'Android 7.1', 'Exynos 8895 8 nhân 64-bit, 4 nhân 2.3 GHz và 4 nhân 1.7 GHz, Mali-G71 MP20', '4 GB', '2 camera 12 MP', '64 GB', '3300 mAh', NULL, NULL, NULL, 'http://cdn.fptshop.com.vn/Uploads/Thumbs/2017/9/7/636403755018028299_S8-S8-Plus.png'),
(3, 'Sony Xperia L2', 'sony', 'Hỗ trợ trả góp 0% dành cho các chủ thẻ VIB, ANZ, VP Bank, Shinhan Bank & Sacombank.', 3790000, NULL, '5.5 inches', '1440 x 2560px', 'Android 7.0 (Nougat)', 'Qualcomm MSM8994 Snapdragon 810, Octa-core , Adreno 430', '3GB', '16 MP', '32 GB', '3200 mAh', NULL, NULL, NULL, 'http://cdn.fptshop.com.vn/Uploads/Thumbs/2018/1/29/636528437226280672_1o.png'),
(4, 'Huawei Nova 2i - 4', 'huawei', 'Hỗ trợ trả góp 0% dành cho các chủ thẻ VIB, ANZ, VP Bank, Shinhan Bank & Sacombank.', 5000000, 0, '5.9 inches', 'Full HD (1080 x 2160 Pixels)', 'Android 7.1', 'HiSilicon Kirin 659 8 nhân, Mali-T830.', '4 GB', '16 MP và 2 MP (2 camera)', '64 GB', '3340 mAh', NULL, NULL, NULL, 'http://cdn.fptshop.com.vn/Uploads/Thumbs/2017/11/6/636455667905520763_1o.jpg'),
(5, 'Samsung Galaxy A6', 'samsung', 'Tặng PMH Phụ Kiện & Samsung trị giá 200,000đ khi mua Online', 6990000, NULL, '5.5 inches', '1080 x 1920 pixels', 'Android 7.0 (Nougat)', 'Exynos 7870 8 nhân 64-bit 1.6 GHz, Mali-T830.', '3GB', '13 MP', '32 GB', '3600 mAh', NULL, NULL, NULL, 'http://cdn.fptshop.com.vn/Uploads/Thumbs/2018/5/9/636614823903182547_1o.png'),
(459261, 'Samsung Galaxy Note 8 Orchid G', 'samsung', NULL, 23490000, NULL, '6.3 inch', '', 'Exynos 8895, 8 Nhân, Lõi Tám (lõi Tứ 2.3GHz + lõi Tứ 1.7GHz), 64 bit, vi xử lý 10nm', 'Android 7.1.1 (Nougat)', '4 GB', 'Dual 12.0 MP/ 8.0 MP', '', 'Li-Ion 3300 mAh', '2018-06-02 06:05:27', '2018-06-02 06:05:27', NULL, 'http://cdn.fptshop.com.vn/Uploads/Thumbs/2018/3/2/636555819707542109_1o.png'),
(459267, 'Oppo F7 128GB', 'oppo', NULL, 9990000, NULL, '6.3 inc', '1080 x 2280 pixels', 'Andoid 8.1 (ColorOS 5.0)', 'Mediatek Helio P60', '4 GB', '16.0 MP MP/ 25.0 MP', '128GB', '3400 mAh', '2018-06-02 08:12:48', '2018-06-02 08:12:48', NULL, 'http://cdn.fptshop.com.vn/Uploads/Thumbs/2018/4/12/636591489289250218_1o.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `title`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin', '2018-06-01 20:13:26', '2018-06-01 20:13:26'),
(2, 'Redactor', 'redac', '2018-06-01 20:13:26', '2018-06-01 20:13:26'),
(3, 'User', 'user', '2018-06-01 20:13:26', '2018-06-01 20:13:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tag` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tags`
--

INSERT INTO `tags` (`id`, `created_at`, `updated_at`, `tag`) VALUES
(1, '2018-06-01 20:13:27', '2018-06-01 20:13:27', 'Tag1'),
(2, '2018-06-01 20:13:27', '2018-06-01 20:13:27', 'Tag2'),
(3, '2018-06-01 20:13:27', '2018-06-01 20:13:27', 'Tag3'),
(4, '2018-06-01 20:13:27', '2018-06-01 20:13:27', 'Tag4');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT '0',
  `valid` tinyint(1) NOT NULL DEFAULT '0',
  `confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `confirmation_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `role_id`, `seen`, `valid`, `confirmed`, `confirmation_code`, `created_at`, `updated_at`, `remember_token`, `link`) VALUES
(1, 'GreatAdmin', 'admin@la.fr', '$2y$10$OtIAhh/JzNdyTVMQgQNcD.8ZZxCmrCT9WMniMA.nBXTC/1.nTkkRu', 1, 1, 0, 1, NULL, '2018-06-01 20:13:26', '2018-06-01 20:13:26', NULL, NULL),
(2, 'GreatRedactor', 'redac@la.fr', '$2y$10$JdYemQVKec8mcR29JwbRh.OUsZBsDih4IXvlVKK3yetnS.wpGVQwO', 2, 1, 1, 1, NULL, '2018-06-01 20:13:26', '2018-06-01 20:13:26', NULL, NULL),
(3, 'Walker', 'walker@la.fr', '$2y$10$kZke820f8it2dDpljcp.dOJ3wgcn7hSm1LNaC6Hgw/DDUIZbZVsry', 3, 0, 0, 1, NULL, '2018-06-01 20:13:26', '2018-06-01 20:13:26', NULL, NULL),
(4, 'Slacker', 'slacker@la.fr', '$2y$10$v8LTQfSZ6s3HI2cejONs0OIoPiM1wLvwWCmG9bJXO7y6/CBFFUU1u', 3, 0, 0, 1, NULL, '2018-06-01 20:13:26', '2018-06-01 20:13:26', NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`maHD`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_post_id_foreign` (`post_id`);

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`maKH`);

--
-- Chỉ mục cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`maNV`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_tag_post_id_foreign` (`post_id`),
  ADD KEY `post_tag_tag_id_foreign` (`tag_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`maSP`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_tag_unique` (`tag`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bill`
--
ALTER TABLE `bill`
  MODIFY `maHD` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `maKH` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20160004;

--
-- AUTO_INCREMENT cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `maNV` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2015008;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `maSP` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=459269;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `post_tag`
--
ALTER TABLE `post_tag`
  ADD CONSTRAINT `post_tag_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `post_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`);

--
-- Các ràng buộc cho bảng `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
