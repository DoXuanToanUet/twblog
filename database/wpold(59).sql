-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 05, 2022 lúc 04:25 AM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `wpold`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_actionscheduler_actions`
--

CREATE TABLE `wp_actionscheduler_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `hook` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scheduled_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime DEFAULT '0000-00-00 00:00:00',
  `args` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schedule` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `attempts` int(11) NOT NULL DEFAULT 0,
  `last_attempt_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `extended_args` varchar(8000) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_actionscheduler_actions`
--

INSERT INTO `wp_actionscheduler_actions` (`action_id`, `hook`, `status`, `scheduled_date_gmt`, `scheduled_date_local`, `args`, `schedule`, `group_id`, `attempts`, `last_attempt_gmt`, `last_attempt_local`, `claim_id`, `extended_args`) VALUES
(61, 'rank_math/analytics/data_fetch', 'complete', '2022-08-05 02:32:57', '2022-08-05 02:32:57', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1659666777;s:18:\"\0*\0first_timestamp\";i:1658430540;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1659666777;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}', 3, 1, '2022-08-17 03:37:51', '2022-08-17 03:37:51', 0, NULL),
(62, 'rank_math/analytics/data_fetch', 'complete', '2022-08-24 03:37:51', '2022-08-24 03:37:51', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1661312271;s:18:\"\0*\0first_timestamp\";i:1658430540;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1661312271;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}', 3, 1, '2022-08-29 07:33:46', '2022-08-29 07:33:46', 0, NULL),
(63, 'rank_math/analytics/data_fetch', 'pending', '2022-09-05 07:33:46', '2022-09-05 07:33:46', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1662363226;s:18:\"\0*\0first_timestamp\";i:1658430540;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1662363226;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}', 3, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_actionscheduler_claims`
--

CREATE TABLE `wp_actionscheduler_claims` (
  `claim_id` bigint(20) UNSIGNED NOT NULL,
  `date_created_gmt` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_actionscheduler_groups`
--

CREATE TABLE `wp_actionscheduler_groups` (
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_actionscheduler_groups`
--

INSERT INTO `wp_actionscheduler_groups` (`group_id`, `slug`) VALUES
(1, 'action-scheduler-migration'),
(2, 'workflow'),
(3, 'rank-math');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_actionscheduler_logs`
--

CREATE TABLE `wp_actionscheduler_logs` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_actionscheduler_logs`
--

INSERT INTO `wp_actionscheduler_logs` (`log_id`, `action_id`, `message`, `log_date_gmt`, `log_date_local`) VALUES
(25, 61, 'action created', '2022-07-29 02:32:57', '2022-07-29 02:32:57'),
(26, 61, 'action started via WP Cron', '2022-08-17 03:37:51', '2022-08-17 03:37:51'),
(27, 61, 'action complete via WP Cron', '2022-08-17 03:37:51', '2022-08-17 03:37:51'),
(28, 62, 'action created', '2022-08-17 03:37:51', '2022-08-17 03:37:51'),
(29, 62, 'action started via WP Cron', '2022-08-29 07:33:46', '2022-08-29 07:33:46'),
(30, 62, 'action complete via WP Cron', '2022-08-29 07:33:46', '2022-08-29 07:33:46'),
(31, 63, 'action created', '2022-08-29 07:33:46', '2022-08-29 07:33:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr Wordpress', '', 'https://wordpress.org/', '', '2022-07-06 06:44:04', '2022-07-06 06:44:04', 'Chào, đây là một bình luận.\nĐể xóa một bình luận, chỉ cần đăng nhập và xem các bình luận của bài viết. Tại đó bạn sẽ có thể lựa chọn biên tập lại hoặc xóa bình luận.', 0, '1', '', 'comment', 0, 0),
(2, 14, 'd', 'dd@gmail.com', '', '127.0.0.1', '2022-07-19 06:57:09', '2022-07-19 06:57:09', 'd', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'comment', 0, 0),
(3, 14, 'Do Xuan Toan', 'toan@gmail.com', '', '127.0.0.1', '2022-07-19 07:28:42', '2022-07-19 07:28:42', 'suc khoe la vang', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'comment', 0, 0),
(4, 14, 'admin', 'toanwordpresstheme@gmail.com', '', '127.0.0.1', '2022-07-19 07:46:57', '2022-07-19 07:46:57', 'lợi ích không ngời của đọc sách', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'comment', 0, 1),
(5, 14, 'admin', 'toanwordpresstheme@gmail.com', '', '127.0.0.1', '2022-07-19 08:06:08', '2022-07-19 08:06:08', 'bạn nên thảo luận với bác sĩ để được tư vấn chính xác', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'comment', 0, 1),
(6, 14, 'admin', 'toanwordpresstheme@gmail.com', '', '127.0.0.1', '2022-07-19 08:06:14', '2022-07-19 08:06:14', 'Thay vào đó, việc uống nước nên được cá nhân hóa tùy thuộc vào tình trạng sức khỏe của mỗi người.', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'comment', 0, 1),
(7, 14, 'admin', 'toanwordpresstheme@gmail.com', '', '127.0.0.1', '2022-07-19 08:06:19', '2022-07-19 08:06:19', 'ấn đề cần quan tâm là với những người thuộc nhóm đối', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'comment', 0, 1),
(8, 14, 'admin', 'toanwordpresstheme@gmail.com', '', '127.0.0.1', '2022-07-19 08:06:24', '2022-07-19 08:06:24', 'Mỗi ngày nên uống bao nhiêu nước?', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'comment', 0, 1),
(9, 14, 'admin', 'toanwordpresstheme@gmail.com', '', '127.0.0.1', '2022-07-19 08:06:32', '2022-07-19 08:06:32', 'Nếu bạn đọc được một cuốn sách có nội dung hấp dẫn', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'comment', 0, 1),
(10, 14, 'admin', 'toanwordpresstheme@gmail.com', '', '127.0.0.1', '2022-07-19 08:06:40', '2022-07-19 08:06:40', 'Những yếu tố nào giúp bạn quyết định lượng nước cần bổ sung hàng ngày', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'comment', 0, 1),
(11, 14, 'admin', 'toanwordpresstheme@gmail.com', '', '127.0.0.1', '2022-07-19 08:06:48', '2022-07-19 08:06:48', 'ỗi ngày nên uống bao nhiêu nước là vấn đề được khá', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'comment', 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://twblog.local/', 'yes'),
(2, 'home', 'http://twblog.local/', 'yes'),
(3, 'blogname', 'Toan Web', 'yes'),
(4, 'blogdescription', 'Một trang web mới sử dụng WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'toanwordpresstheme@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:31:\"query-monitor/query-monitor.php\";i:1;s:30:\"seo-by-rank-math/rank-math.php\";i:2;s:33:\"wc-city-select/wc-city-select.php\";i:3;s:41:\"wordpress-importer/wordpress-importer.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(37, 'comment_max_links', '2', 'yes'),
(38, 'gmt_offset', '0', 'yes'),
(39, 'default_email_category', '1', 'yes'),
(40, 'recently_edited', '', 'no'),
(41, 'template', 'twblog', 'yes'),
(42, 'stylesheet', 'twblog', 'yes'),
(45, 'comment_registration', '', 'yes'),
(46, 'html_type', 'text/html', 'yes'),
(47, 'use_trackback', '0', 'yes'),
(48, 'default_role', 'subscriber', 'yes'),
(49, 'db_version', '51917', 'yes'),
(50, 'uploads_use_yearmonth_folders', '1', 'yes'),
(51, 'upload_path', '', 'yes'),
(52, 'blog_public', '1', 'yes'),
(53, 'default_link_category', '2', 'yes'),
(54, 'show_on_front', 'page', 'yes'),
(55, 'tag_base', '', 'yes'),
(56, 'show_avatars', '1', 'yes'),
(57, 'avatar_rating', 'G', 'yes'),
(58, 'upload_url_path', '', 'yes'),
(59, 'thumbnail_size_w', '150', 'yes'),
(60, 'thumbnail_size_h', '150', 'yes'),
(61, 'thumbnail_crop', '1', 'yes'),
(62, 'medium_size_w', '300', 'yes'),
(63, 'medium_size_h', '300', 'yes'),
(64, 'avatar_default', 'mystery', 'yes'),
(65, 'large_size_w', '1024', 'yes'),
(66, 'large_size_h', '1024', 'yes'),
(67, 'image_default_link_type', 'file', 'yes'),
(68, 'image_default_size', '', 'yes'),
(69, 'image_default_align', '', 'yes'),
(70, 'close_comments_for_old_posts', '', 'yes'),
(71, 'close_comments_days_old', '14', 'yes'),
(72, 'thread_comments', '1', 'yes'),
(73, 'thread_comments_depth', '5', 'yes'),
(74, 'page_comments', '1', 'yes'),
(75, 'comments_per_page', '5', 'yes'),
(76, 'default_comments_page', 'newest', 'yes'),
(77, 'comment_order', 'desc', 'yes'),
(78, 'sticky_posts', 'a:0:{}', 'yes'),
(79, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_text', 'a:0:{}', 'yes'),
(81, 'widget_rss', 'a:0:{}', 'yes'),
(82, 'uninstall_plugins', 'a:0:{}', 'no'),
(83, 'timezone_string', '', 'yes'),
(84, 'page_for_posts', '0', 'yes'),
(85, 'page_on_front', '4', 'yes'),
(86, 'default_post_format', '0', 'yes'),
(87, 'link_manager_enabled', '0', 'yes'),
(88, 'initial_db_version', '30135', 'yes'),
(89, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:78:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:23:\"rank_math_edit_htaccess\";b:1;s:16:\"rank_math_titles\";b:1;s:17:\"rank_math_general\";b:1;s:17:\"rank_math_sitemap\";b:1;s:21:\"rank_math_404_monitor\";b:1;s:22:\"rank_math_link_builder\";b:1;s:22:\"rank_math_redirections\";b:1;s:22:\"rank_math_role_manager\";b:1;s:19:\"rank_math_analytics\";b:1;s:23:\"rank_math_site_analysis\";b:1;s:25:\"rank_math_onpage_analysis\";b:1;s:24:\"rank_math_onpage_general\";b:1;s:25:\"rank_math_onpage_advanced\";b:1;s:24:\"rank_math_onpage_snippet\";b:1;s:23:\"rank_math_onpage_social\";b:1;s:20:\"rank_math_content_ai\";b:1;s:19:\"rank_math_admin_bar\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:39:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:23:\"rank_math_site_analysis\";b:1;s:25:\"rank_math_onpage_analysis\";b:1;s:24:\"rank_math_onpage_general\";b:1;s:24:\"rank_math_onpage_snippet\";b:1;s:23:\"rank_math_onpage_social\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:14:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:25:\"rank_math_onpage_analysis\";b:1;s:24:\"rank_math_onpage_general\";b:1;s:24:\"rank_math_onpage_snippet\";b:1;s:23:\"rank_math_onpage_social\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(90, 'WPLANG', 'vi', 'yes'),
(91, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(92, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(93, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(94, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(95, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(97, 'cron', 'a:9:{i:1662344577;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"0d04ed39571b55704c122d726248bbac\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:1:{i:0;s:7:\"WP Cron\";}s:8:\"interval\";i:60;}}}i:1662345340;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1662360249;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1662366940;a:2:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1662366954;a:3:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1662366957;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1662422400;a:2:{s:35:\"rank_math/redirection/clean_trashed\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"rank_math/links/internal_links\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1662626140;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(107, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:28:\"toanwordpresstheme@gmail.com\";s:7:\"version\";s:6:\"4.1.35\";s:9:\"timestamp\";i:1657089880;}', 'yes'),
(108, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_block', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'recovery_keys', 'a:0:{}', 'yes'),
(120, 'https_detection_errors', 'a:2:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:36:\"Xác thực SSL không thành công.\";}s:19:\"bad_response_source\";a:1:{i:0;s:61:\"Có vẻ như phản hồi không đến từ trang web này.\";}}', 'yes'),
(123, 'admin_email_lifespan', '1662026620', 'yes'),
(124, 'rewrite_rules', 'a:105:{s:19:\"sitemap_index\\.xml$\";s:19:\"index.php?sitemap=1\";s:31:\"([^/]+?)-sitemap([0-9]+)?\\.xml$\";s:51:\"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]\";s:24:\"([a-z]+)?-?sitemap\\.xsl$\";s:25:\"index.php?xsl=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:57:\"(cham-soc-giac-ngu)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:40:\"(cham-soc-giac-ngu)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:22:\"(cham-soc-giac-ngu)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:55:\"(khong-phan-loai)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:38:\"(khong-phan-loai)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:20:\"(khong-phan-loai)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:56:\"(the-duc-the-thao)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:39:\"(the-duc-the-thao)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:21:\"(the-duc-the-thao)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:59:\"(thoi-quen-lanh-manh)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"(thoi-quen-lanh-manh)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:24:\"(thoi-quen-lanh-manh)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:14:\"category/(.+)$\";s:49:\"index.php?rank_math_category_redirect=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=4&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(125, 'finished_splitting_shared_terms', '1', 'yes'),
(126, 'site_icon', '0', 'yes'),
(127, 'medium_large_size_w', '768', 'yes'),
(128, 'medium_large_size_h', '0', 'yes'),
(129, 'wp_page_for_privacy_policy', '0', 'yes'),
(130, 'show_comments_cookies_opt_in', '1', 'yes'),
(131, 'disallowed_keys', '', 'no'),
(132, 'comment_previously_approved', '1', 'yes'),
(133, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(134, 'auto_update_core_dev', 'enabled', 'yes'),
(135, 'auto_update_core_minor', 'enabled', 'yes'),
(136, 'auto_update_core_major', 'unset', 'yes'),
(137, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(138, 'finished_updating_comment_type', '1', 'yes'),
(139, 'user_count', '1', 'no'),
(140, 'db_upgraded', '', 'yes'),
(146, 'can_compress_scripts', '1', 'no'),
(155, 'theme_mods_twentyfifteen', 'a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1657096561;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(156, 'current_theme', 'TwBlog', 'yes'),
(157, 'theme_mods_twentytwentytwo', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1657246861;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(158, 'theme_switched', '', 'yes'),
(179, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:3:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:62:\"https://downloads.wordpress.org/release/vi/wordpress-6.0.2.zip\";s:6:\"locale\";s:2:\"vi\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:62:\"https://downloads.wordpress.org/release/vi/wordpress-6.0.2.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.0.2\";s:7:\"version\";s:5:\"6.0.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.0.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.0.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.0.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.0.2-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-6.0.2-partial-0.zip\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.0.2\";s:7:\"version\";s:5:\"6.0.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:3:\"6.0\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:62:\"https://downloads.wordpress.org/release/vi/wordpress-6.0.2.zip\";s:6:\"locale\";s:2:\"vi\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:62:\"https://downloads.wordpress.org/release/vi/wordpress-6.0.2.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.0.2\";s:7:\"version\";s:5:\"6.0.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1662344501;s:15:\"version_checked\";s:3:\"6.0\";s:12:\"translations\";a:0:{}}', 'no'),
(181, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1662344503;s:7:\"checked\";a:4:{s:6:\"twblog\";s:3:\"1.1\";s:12:\"twentytwenty\";s:3:\"2.0\";s:15:\"twentytwentyone\";s:3:\"1.6\";s:15:\"twentytwentytwo\";s:3:\"1.2\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.2.0.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.6.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.2\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.2.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(182, 'recently_activated', 'a:0:{}', 'yes'),
(194, '_transient_health-check-site-status-result', '{\"good\":12,\"recommended\":5,\"critical\":2}', 'yes'),
(222, 'theme_mods_twblog', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:8:\"mainmenu\";i:6;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(231, 'fresh_site', '0', 'yes'),
(277, 'wp_calendar_block_has_published_posts', '1', 'yes'),
(302, 'category_children', 'a:0:{}', 'yes'),
(328, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(390, 'action_scheduler_hybrid_store_demarkation', '52', 'yes'),
(391, 'schema-ActionScheduler_StoreSchema', '6.0.1658137497', 'yes'),
(392, 'schema-ActionScheduler_LoggerSchema', '3.0.1658137497', 'yes'),
(393, 'rank_math_known_post_types', 'a:3:{s:4:\"post\";s:4:\"post\";s:4:\"page\";s:4:\"page\";s:10:\"attachment\";s:10:\"attachment\";}', 'yes'),
(394, 'rank_math_modules', 'a:12:{i:0;s:12:\"link-counter\";i:1;s:9:\"analytics\";i:2;s:12:\"seo-analysis\";i:3;s:7:\"sitemap\";i:4;s:12:\"rich-snippet\";i:5;s:11:\"woocommerce\";i:6;s:10:\"buddypress\";i:7;s:7:\"bbpress\";i:8;s:3:\"acf\";i:9;s:11:\"web-stories\";i:10;s:10:\"content-ai\";i:11;s:16:\"instant-indexing\";}', 'yes'),
(395, 'rank-math-options-general', 'a:47:{s:19:\"strip_category_base\";s:2:\"on\";s:24:\"attachment_redirect_urls\";s:2:\"on\";s:27:\"attachment_redirect_default\";s:19:\"http://twblog.local\";s:23:\"nofollow_external_links\";s:3:\"off\";s:20:\"nofollow_image_links\";s:3:\"off\";s:25:\"new_window_external_links\";s:2:\"on\";s:11:\"add_img_alt\";s:3:\"off\";s:14:\"img_alt_format\";s:11:\" %filename%\";s:13:\"add_img_title\";s:3:\"off\";s:16:\"img_title_format\";s:22:\"%title% %count(title)%\";s:11:\"breadcrumbs\";s:3:\"off\";s:21:\"breadcrumbs_separator\";s:1:\"-\";s:16:\"breadcrumbs_home\";s:2:\"on\";s:22:\"breadcrumbs_home_label\";s:4:\"Home\";s:26:\"breadcrumbs_archive_format\";s:15:\"Archives for %s\";s:25:\"breadcrumbs_search_format\";s:14:\"Results for %s\";s:21:\"breadcrumbs_404_label\";s:25:\"404 Error: page not found\";s:31:\"breadcrumbs_ancestor_categories\";s:3:\"off\";s:21:\"breadcrumbs_blog_page\";s:3:\"off\";s:16:\"404_monitor_mode\";s:6:\"simple\";s:17:\"404_monitor_limit\";i:100;s:35:\"404_monitor_ignore_query_parameters\";s:2:\"on\";s:24:\"redirections_header_code\";s:3:\"301\";s:18:\"redirections_debug\";s:3:\"off\";s:23:\"console_caching_control\";s:2:\"90\";s:21:\"console_email_reports\";s:2:\"on\";s:23:\"console_email_frequency\";s:7:\"monthly\";s:27:\"link_builder_links_per_page\";s:1:\"7\";s:29:\"link_builder_links_per_target\";s:1:\"1\";s:22:\"wc_remove_product_base\";s:3:\"off\";s:23:\"wc_remove_category_base\";s:3:\"off\";s:31:\"wc_remove_category_parent_slugs\";s:3:\"off\";s:19:\"wc_remove_generator\";s:2:\"on\";s:24:\"remove_shop_snippet_data\";s:2:\"on\";s:18:\"frontend_seo_score\";s:3:\"off\";s:29:\"frontend_seo_score_post_types\";a:1:{i:0;s:4:\"post\";}s:27:\"frontend_seo_score_position\";s:3:\"top\";s:10:\"setup_mode\";s:8:\"advanced\";s:21:\"content_ai_post_types\";a:2:{i:0;s:4:\"post\";i:1;s:4:\"page\";}s:15:\"analytics_stats\";s:2:\"on\";s:21:\"breadcrumbs_home_link\";s:19:\"http://twblog.local\";s:29:\"breadcrumbs_remove_post_title\";s:3:\"off\";s:30:\"breadcrumbs_hide_taxonomy_name\";s:3:\"off\";s:16:\"headless_support\";s:3:\"off\";s:27:\"frontend_seo_score_template\";s:6:\"circle\";s:17:\"support_rank_math\";s:2:\"on\";s:18:\"content_ai_country\";s:3:\"all\";}', 'yes'),
(396, 'rank-math-options-titles', 'a:104:{s:24:\"noindex_empty_taxonomies\";s:2:\"on\";s:15:\"title_separator\";s:1:\"-\";s:17:\"capitalize_titles\";s:3:\"off\";s:17:\"twitter_card_type\";s:19:\"summary_large_image\";s:19:\"knowledgegraph_type\";s:6:\"person\";s:19:\"knowledgegraph_name\";s:8:\"Toan Web\";s:19:\"local_business_type\";s:12:\"Organization\";s:20:\"local_address_format\";s:43:\"{address} {locality}, {region} {postalcode}\";s:13:\"opening_hours\";a:7:{i:0;a:2:{s:3:\"day\";s:6:\"Monday\";s:4:\"time\";s:11:\"09:00-17:00\";}i:1;a:2:{s:3:\"day\";s:7:\"Tuesday\";s:4:\"time\";s:11:\"09:00-17:00\";}i:2;a:2:{s:3:\"day\";s:9:\"Wednesday\";s:4:\"time\";s:11:\"09:00-17:00\";}i:3;a:2:{s:3:\"day\";s:8:\"Thursday\";s:4:\"time\";s:11:\"09:00-17:00\";}i:4;a:2:{s:3:\"day\";s:6:\"Friday\";s:4:\"time\";s:11:\"09:00-17:00\";}i:5;a:2:{s:3:\"day\";s:8:\"Saturday\";s:4:\"time\";s:11:\"09:00-17:00\";}i:6;a:2:{s:3:\"day\";s:6:\"Sunday\";s:4:\"time\";s:11:\"09:00-17:00\";}}s:20:\"opening_hours_format\";s:3:\"off\";s:14:\"homepage_title\";s:34:\"%sitename% %page% %sep% %sitedesc%\";s:20:\"homepage_description\";s:0:\"\";s:22:\"homepage_custom_robots\";s:3:\"off\";s:23:\"disable_author_archives\";s:3:\"off\";s:15:\"url_author_base\";s:6:\"author\";s:20:\"author_custom_robots\";s:2:\"on\";s:13:\"author_robots\";a:1:{i:0;s:7:\"noindex\";}s:20:\"author_archive_title\";s:30:\"%name% %sep% %sitename% %page%\";s:19:\"author_add_meta_box\";s:2:\"on\";s:21:\"disable_date_archives\";s:2:\"on\";s:18:\"date_archive_title\";s:30:\"%date% %page% %sep% %sitename%\";s:12:\"search_title\";s:38:\"%search_query% %page% %sep% %sitename%\";s:9:\"404_title\";s:31:\"Page Not Found %sep% %sitename%\";s:19:\"date_archive_robots\";a:1:{i:0;s:7:\"noindex\";}s:14:\"noindex_search\";s:2:\"on\";s:24:\"noindex_archive_subpages\";s:3:\"off\";s:26:\"noindex_password_protected\";s:3:\"off\";s:32:\"pt_download_default_rich_snippet\";s:7:\"product\";s:29:\"author_slack_enhanced_sharing\";s:2:\"on\";s:13:\"pt_post_title\";s:24:\"%title% %sep% %sitename%\";s:19:\"pt_post_description\";s:9:\"%excerpt%\";s:14:\"pt_post_robots\";a:0:{}s:21:\"pt_post_custom_robots\";s:3:\"off\";s:28:\"pt_post_default_rich_snippet\";s:7:\"article\";s:28:\"pt_post_default_article_type\";s:11:\"BlogPosting\";s:28:\"pt_post_default_snippet_name\";s:11:\"%seo_title%\";s:28:\"pt_post_default_snippet_desc\";s:17:\"%seo_description%\";s:30:\"pt_post_slack_enhanced_sharing\";s:2:\"on\";s:17:\"pt_post_ls_use_fk\";s:6:\"titles\";s:20:\"pt_post_add_meta_box\";s:2:\"on\";s:20:\"pt_post_bulk_editing\";s:7:\"editing\";s:24:\"pt_post_link_suggestions\";s:2:\"on\";s:24:\"pt_post_primary_taxonomy\";s:8:\"category\";s:13:\"pt_page_title\";s:24:\"%title% %sep% %sitename%\";s:19:\"pt_page_description\";s:9:\"%excerpt%\";s:14:\"pt_page_robots\";a:0:{}s:21:\"pt_page_custom_robots\";s:3:\"off\";s:28:\"pt_page_default_rich_snippet\";s:7:\"article\";s:28:\"pt_page_default_article_type\";s:7:\"Article\";s:28:\"pt_page_default_snippet_name\";s:11:\"%seo_title%\";s:28:\"pt_page_default_snippet_desc\";s:17:\"%seo_description%\";s:30:\"pt_page_slack_enhanced_sharing\";s:2:\"on\";s:17:\"pt_page_ls_use_fk\";s:6:\"titles\";s:20:\"pt_page_add_meta_box\";s:2:\"on\";s:20:\"pt_page_bulk_editing\";s:7:\"editing\";s:24:\"pt_page_link_suggestions\";s:2:\"on\";s:19:\"pt_attachment_title\";s:24:\"%title% %sep% %sitename%\";s:25:\"pt_attachment_description\";s:9:\"%excerpt%\";s:20:\"pt_attachment_robots\";a:1:{i:0;s:7:\"noindex\";}s:27:\"pt_attachment_custom_robots\";s:2:\"on\";s:34:\"pt_attachment_default_rich_snippet\";s:3:\"off\";s:34:\"pt_attachment_default_article_type\";s:7:\"Article\";s:34:\"pt_attachment_default_snippet_name\";s:11:\"%seo_title%\";s:34:\"pt_attachment_default_snippet_desc\";s:17:\"%seo_description%\";s:36:\"pt_attachment_slack_enhanced_sharing\";s:3:\"off\";s:26:\"pt_attachment_add_meta_box\";s:3:\"off\";s:16:\"pt_product_title\";s:24:\"%title% %sep% %sitename%\";s:22:\"pt_product_description\";s:9:\"%excerpt%\";s:17:\"pt_product_robots\";a:0:{}s:24:\"pt_product_custom_robots\";s:3:\"off\";s:31:\"pt_product_default_rich_snippet\";s:7:\"product\";s:31:\"pt_product_default_article_type\";s:7:\"Article\";s:31:\"pt_product_default_snippet_name\";s:11:\"%seo_title%\";s:31:\"pt_product_default_snippet_desc\";s:17:\"%seo_description%\";s:33:\"pt_product_slack_enhanced_sharing\";s:2:\"on\";s:20:\"pt_product_ls_use_fk\";s:6:\"titles\";s:23:\"pt_product_add_meta_box\";s:2:\"on\";s:23:\"pt_product_bulk_editing\";s:7:\"editing\";s:27:\"pt_product_link_suggestions\";s:2:\"on\";s:27:\"pt_product_primary_taxonomy\";s:11:\"product_cat\";s:18:\"pt_web-story_title\";s:24:\"%title% %sep% %sitename%\";s:24:\"pt_web-story_description\";s:9:\"%excerpt%\";s:19:\"pt_web-story_robots\";a:0:{}s:26:\"pt_web-story_custom_robots\";s:3:\"off\";s:33:\"pt_web-story_default_rich_snippet\";s:7:\"article\";s:33:\"pt_web-story_default_article_type\";s:7:\"Article\";s:33:\"pt_web-story_default_snippet_name\";s:11:\"%seo_title%\";s:33:\"pt_web-story_default_snippet_desc\";s:17:\"%seo_description%\";s:35:\"pt_web-story_slack_enhanced_sharing\";s:3:\"off\";s:25:\"pt_web-story_add_meta_box\";s:3:\"off\";s:18:\"tax_category_title\";s:23:\"%term% %sep% %sitename%\";s:19:\"tax_category_robots\";a:0:{}s:25:\"tax_category_add_meta_box\";s:2:\"on\";s:26:\"tax_category_custom_robots\";s:3:\"off\";s:24:\"tax_category_description\";s:18:\"%term_description%\";s:35:\"tax_category_slack_enhanced_sharing\";s:2:\"on\";s:18:\"tax_post_tag_title\";s:23:\"%term% %sep% %sitename%\";s:19:\"tax_post_tag_robots\";a:1:{i:0;s:7:\"noindex\";}s:25:\"tax_post_tag_add_meta_box\";s:3:\"off\";s:26:\"tax_post_tag_custom_robots\";s:2:\"on\";s:24:\"tax_post_tag_description\";s:18:\"%term_description%\";s:35:\"tax_post_tag_slack_enhanced_sharing\";s:2:\"on\";s:31:\"remove_product_cat_snippet_data\";s:2:\"on\";s:31:\"remove_product_tag_snippet_data\";s:2:\"on\";}', 'yes'),
(397, 'rank-math-options-sitemap', 'a:12:{s:14:\"items_per_page\";i:200;s:14:\"include_images\";s:2:\"on\";s:22:\"include_featured_image\";s:3:\"off\";s:19:\"ping_search_engines\";s:2:\"on\";s:13:\"exclude_roles\";a:2:{s:11:\"contributor\";s:11:\"Contributor\";s:10:\"subscriber\";s:10:\"Subscriber\";}s:15:\"pt_post_sitemap\";s:2:\"on\";s:15:\"pt_page_sitemap\";s:2:\"on\";s:21:\"pt_attachment_sitemap\";s:3:\"off\";s:18:\"pt_product_sitemap\";s:2:\"on\";s:20:\"pt_web-story_sitemap\";s:3:\"off\";s:20:\"tax_category_sitemap\";s:2:\"on\";s:20:\"tax_post_tag_sitemap\";s:3:\"off\";}', 'yes'),
(398, 'rank-math-options-instant-indexing', 'a:2:{s:15:\"bing_post_types\";a:2:{i:0;s:4:\"post\";i:1;s:4:\"page\";}s:16:\"indexnow_api_key\";s:32:\"710f82e7035440549ff8fbdcd5c1d10f\";}', 'yes'),
(401, 'rank_math_version', '1.0.93.1', 'yes'),
(402, 'rank_math_db_version', '1', 'yes'),
(403, 'rank_math_install_date', '1658137498', 'yes'),
(405, 'action_scheduler_lock_async-request-runner', '1661768625', 'yes'),
(411, 'rank_math_registration_skip', '1', 'yes'),
(414, 'rank_math_review_posts_converted', '1', 'yes'),
(415, '_transient_rank_math_first_submenu_id', 'rank-math', 'yes'),
(416, 'rank_math_wizard_completed', '1', 'yes'),
(417, 'rank_math_google_analytic_options', 'a:10:{s:10:\"account_id\";b:0;s:11:\"property_id\";b:0;s:7:\"view_id\";b:0;s:14:\"measurement_id\";b:0;s:11:\"stream_name\";b:0;s:7:\"country\";s:3:\"all\";s:12:\"install_code\";b:0;s:12:\"anonymize_ip\";b:0;s:11:\"local_ga_js\";b:0;s:16:\"exclude_loggedin\";b:0;}', 'yes'),
(418, 'rank_math_analytics_all_services', 'a:1:{s:5:\"sites\";a:1:{i:0;b:0;}}', 'yes'),
(420, 'rank_math_is_configured', '1', 'yes'),
(421, 'rank_math_google_analytic_profile', 'a:3:{s:7:\"country\";s:3:\"all\";s:7:\"profile\";b:0;s:19:\"enable_index_status\";b:0;}', 'yes'),
(423, 'rank_math_analytics_installed', '1', 'yes'),
(424, 'action_scheduler_migration_status', 'complete', 'yes'),
(444, 'recovery_mode_email_last_sent', '1658139575', 'yes'),
(470, 'rank_math_yoast_block_posts', 'a:2:{s:5:\"posts\";a:0:{}s:5:\"count\";i:0;}', 'yes'),
(471, 'rank_math_old_schema_data', 'a:0:{}', 'yes'),
(550, 'rank_math_content_ai_viewed', '1', 'yes'),
(551, 'rank_math_sitemap_cache_files', 'a:0:{}', 'yes'),
(560, 'rank_math_indexnow_log', 'a:1:{i:0;a:5:{s:3:\"url\";s:31:\"http://twblog.local/gioi-thieu/\";s:6:\"status\";i:202;s:17:\"manual_submission\";b:0;s:7:\"message\";s:2:\"OK\";s:4:\"time\";i:1658219159;}}', 'no'),
(695, 'rank_math_pro_notice_delayed', '1', 'no'),
(696, 'rank_math_pro_notice_date', '1659926534', 'no'),
(745, 'rank_math_review_notice_delayed', '1', 'no'),
(747, 'rank_math_review_notice_date', '1661917178', 'no'),
(748, 'rank_math_pro_notice_added', '1', 'no'),
(749, 'rank_math_already_upgraded', '1660707587', 'yes'),
(750, 'rank_math_notifications', 'a:0:{}', 'yes'),
(918, '_site_transient_timeout_php_check_71beb58986fe81ec54207f069dd45eee', '1662363232', 'no'),
(919, '_site_transient_php_check_71beb58986fe81ec54207f069dd45eee', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(944, '_site_transient_timeout_browser_b20f96e5878b0a47ff8626c8f757e35b', '1662372225', 'no'),
(945, '_site_transient_browser_b20f96e5878b0a47ff8626c8f757e35b', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"104.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(965, '_site_transient_timeout_theme_roots', '1662346303', 'no'),
(966, '_site_transient_theme_roots', 'a:4:{s:6:\"twblog\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}', 'no'),
(967, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1662344504;s:8:\"response\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"5.0\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.5.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";s:6:\"tested\";s:5:\"6.0.2\";s:12:\"requires_php\";b:0;}s:30:\"seo-by-rank-math/rank-math.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:30:\"w.org/plugins/seo-by-rank-math\";s:4:\"slug\";s:16:\"seo-by-rank-math\";s:6:\"plugin\";s:30:\"seo-by-rank-math/rank-math.php\";s:11:\"new_version\";s:6:\"1.0.96\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/seo-by-rank-math/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/plugin/seo-by-rank-math.1.0.96.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:69:\"https://ps.w.org/seo-by-rank-math/assets/icon-256x256.png?rev=2654292\";s:2:\"1x\";s:61:\"https://ps.w.org/seo-by-rank-math/assets/icon.svg?rev=2654292\";s:3:\"svg\";s:61:\"https://ps.w.org/seo-by-rank-math/assets/icon.svg?rev=2654292\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/seo-by-rank-math/assets/banner-1544x500.png?rev=2639678\";s:2:\"1x\";s:71:\"https://ps.w.org/seo-by-rank-math/assets/banner-772x250.png?rev=2639678\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.6\";s:6:\"tested\";s:5:\"6.0.2\";s:12:\"requires_php\";s:3:\"7.2\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}s:31:\"query-monitor/query-monitor.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:27:\"w.org/plugins/query-monitor\";s:4:\"slug\";s:13:\"query-monitor\";s:6:\"plugin\";s:31:\"query-monitor/query-monitor.php\";s:11:\"new_version\";s:5:\"3.9.0\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/query-monitor/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/query-monitor.3.9.0.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:66:\"https://ps.w.org/query-monitor/assets/icon-256x256.png?rev=2301273\";s:2:\"1x\";s:58:\"https://ps.w.org/query-monitor/assets/icon.svg?rev=2056073\";s:3:\"svg\";s:58:\"https://ps.w.org/query-monitor/assets/icon.svg?rev=2056073\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/query-monitor/assets/banner-1544x500.png?rev=2457098\";s:2:\"1x\";s:68:\"https://ps.w.org/query-monitor/assets/banner-772x250.png?rev=2457098\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.7\";}s:33:\"wc-city-select/wc-city-select.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/wc-city-select\";s:4:\"slug\";s:14:\"wc-city-select\";s:6:\"plugin\";s:33:\"wc-city-select/wc-city-select.php\";s:11:\"new_version\";s:5:\"1.0.6\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/wc-city-select/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/wc-city-select.1.0.6.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:58:\"https://s.w.org/plugins/geopattern-icon/wc-city-select.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.0\";}s:41:\"wordpress-importer/wordpress-importer.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:32:\"w.org/plugins/wordpress-importer\";s:4:\"slug\";s:18:\"wordpress-importer\";s:6:\"plugin\";s:41:\"wordpress-importer/wordpress-importer.php\";s:11:\"new_version\";s:3:\"0.7\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/wordpress-importer/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/wordpress-importer.0.7.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:71:\"https://ps.w.org/wordpress-importer/assets/icon-256x256.png?rev=1908375\";s:2:\"1x\";s:63:\"https://ps.w.org/wordpress-importer/assets/icon.svg?rev=1908375\";s:3:\"svg\";s:63:\"https://ps.w.org/wordpress-importer/assets/icon.svg?rev=1908375\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-importer/assets/banner-772x250.png?rev=547654\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.7\";}}s:7:\"checked\";a:6:{s:19:\"akismet/akismet.php\";s:5:\"4.2.4\";s:9:\"hello.php\";s:5:\"1.7.2\";s:31:\"query-monitor/query-monitor.php\";s:5:\"3.9.0\";s:30:\"seo-by-rank-math/rank-math.php\";s:8:\"1.0.93.1\";s:33:\"wc-city-select/wc-city-select.php\";s:5:\"1.0.6\";s:41:\"wordpress-importer/wordpress-importer.php\";s:3:\"0.7\";}}', 'no');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_edit_lock', '1657247077:1'),
(3, 8, '_edit_lock', '1657764101:1'),
(6, 10, '_edit_lock', '1657764084:1'),
(9, 12, '_edit_lock', '1657765470:1'),
(12, 14, '_edit_lock', '1658137164:1'),
(15, 16, '_wp_attached_file', '2022/07/wallpaperflare.com_wallpaper-scaled.jpg'),
(16, 16, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1440;s:4:\"file\";s:47:\"2022/07/wallpaperflare.com_wallpaper-scaled.jpg\";s:8:\"filesize\";i:102050;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:40:\"wallpaperflare.com_wallpaper-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4316;}s:5:\"large\";a:5:{s:4:\"file\";s:41:\"wallpaperflare.com_wallpaper-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:23247;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:40:\"wallpaperflare.com_wallpaper-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2755;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:40:\"wallpaperflare.com_wallpaper-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:15030;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:41:\"wallpaperflare.com_wallpaper-1536x864.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:43378;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:42:\"wallpaperflare.com_wallpaper-2048x1152.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:69287;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:32:\"wallpaperflare.com_wallpaper.jpg\";}'),
(19, 14, '_thumbnail_id', '16'),
(20, 17, '_wp_attached_file', '2022/07/wallpaperflare.com_wallpaper-1-scaled.jpg'),
(21, 17, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1440;s:4:\"file\";s:49:\"2022/07/wallpaperflare.com_wallpaper-1-scaled.jpg\";s:8:\"filesize\";i:136542;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:42:\"wallpaperflare.com_wallpaper-1-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5291;}s:5:\"large\";a:5:{s:4:\"file\";s:43:\"wallpaperflare.com_wallpaper-1-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:31811;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:42:\"wallpaperflare.com_wallpaper-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2881;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:42:\"wallpaperflare.com_wallpaper-1-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:20164;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:43:\"wallpaperflare.com_wallpaper-1-1536x864.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:60998;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:44:\"wallpaperflare.com_wallpaper-1-2048x1152.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:97292;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:34:\"wallpaperflare.com_wallpaper-1.jpg\";}'),
(24, 12, '_thumbnail_id', '17'),
(25, 18, '_edit_lock', '1657763561:1'),
(26, 19, '_wp_attached_file', '2022/07/nhung-viec-lam-nen-lam-khi-di-xe-dap.jpg'),
(27, 19, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1000;s:6:\"height\";i:667;s:4:\"file\";s:48:\"2022/07/nhung-viec-lam-nen-lam-khi-di-xe-dap.jpg\";s:8:\"filesize\";i:90456;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:48:\"nhung-viec-lam-nen-lam-khi-di-xe-dap-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:21139;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:48:\"nhung-viec-lam-nen-lam-khi-di-xe-dap-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9043;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:48:\"nhung-viec-lam-nen-lam-khi-di-xe-dap-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:104259;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(28, 20, '_wp_attached_file', '2022/07/review-may-loc-khong-khi-1.jpg'),
(29, 20, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1000;s:6:\"height\";i:667;s:4:\"file\";s:38:\"2022/07/review-may-loc-khong-khi-1.jpg\";s:8:\"filesize\";i:37432;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:38:\"review-may-loc-khong-khi-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:10121;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:38:\"review-may-loc-khong-khi-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4702;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:38:\"review-may-loc-khong-khi-1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:41854;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(30, 21, '_wp_attached_file', '2022/07/thoi-quen-ngoi-vat-cheo-chan.jpg'),
(31, 21, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1000;s:6:\"height\";i:667;s:4:\"file\";s:40:\"2022/07/thoi-quen-ngoi-vat-cheo-chan.jpg\";s:8:\"filesize\";i:40581;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:40:\"thoi-quen-ngoi-vat-cheo-chan-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:12413;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:40:\"thoi-quen-ngoi-vat-cheo-chan-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6313;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:40:\"thoi-quen-ngoi-vat-cheo-chan-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:50256;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(34, 18, '_thumbnail_id', '21'),
(35, 23, '_edit_lock', '1657763572:1'),
(38, 23, '_thumbnail_id', '19'),
(39, 14, '_edit_last', '1'),
(42, 12, '_edit_last', '1'),
(45, 10, '_edit_last', '1'),
(48, 8, '_edit_last', '1'),
(51, 18, '_edit_last', '1'),
(54, 23, '_edit_last', '1'),
(58, 25, '_edit_lock', '1657763890:1'),
(59, 26, '_wp_attached_file', '2022/07/dong-tac-yoga-3.jpg'),
(60, 26, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1000;s:6:\"height\";i:667;s:4:\"file\";s:27:\"2022/07/dong-tac-yoga-3.jpg\";s:8:\"filesize\";i:37632;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:27:\"dong-tac-yoga-3-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11154;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:27:\"dong-tac-yoga-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5239;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:27:\"dong-tac-yoga-3-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:47018;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(61, 27, '_wp_attached_file', '2022/07/tap-the-duc-xong-buon-non-1751311082.jpg'),
(62, 27, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1000;s:6:\"height\";i:667;s:4:\"file\";s:48:\"2022/07/tap-the-duc-xong-buon-non-1751311082.jpg\";s:8:\"filesize\";i:53048;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:48:\"tap-the-duc-xong-buon-non-1751311082-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:16552;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:48:\"tap-the-duc-xong-buon-non-1751311082-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7201;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:48:\"tap-the-duc-xong-buon-non-1751311082-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:76221;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(65, 25, '_thumbnail_id', '26'),
(66, 29, '_edit_lock', '1657763895:1'),
(69, 29, '_thumbnail_id', '27'),
(70, 31, '_edit_lock', '1657764157:1'),
(71, 32, '_wp_attached_file', '2022/07/bai-tap-cho-nguoi-dau-lung_566255782.jpg'),
(72, 32, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1000;s:6:\"height\";i:667;s:4:\"file\";s:48:\"2022/07/bai-tap-cho-nguoi-dau-lung_566255782.jpg\";s:8:\"filesize\";i:33804;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:48:\"bai-tap-cho-nguoi-dau-lung_566255782-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:10469;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:48:\"bai-tap-cho-nguoi-dau-lung_566255782-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5378;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:48:\"bai-tap-cho-nguoi-dau-lung_566255782-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:38439;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(75, 31, '_thumbnail_id', '32'),
(76, 25, '_edit_last', '1'),
(79, 29, '_edit_last', '1'),
(82, 31, '_edit_last', '1'),
(85, 34, '_wp_attached_file', '2022/07/benh-ve-mat-1.jpg'),
(86, 34, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1428;s:6:\"height\";i:953;s:4:\"file\";s:25:\"2022/07/benh-ve-mat-1.jpg\";s:8:\"filesize\";i:184759;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:25:\"benh-ve-mat-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:10813;}s:5:\"large\";a:5:{s:4:\"file\";s:26:\"benh-ve-mat-1-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:65667;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:25:\"benh-ve-mat-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5654;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:25:\"benh-ve-mat-1-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:42493;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(87, 35, '_wp_attached_file', '2022/07/cau-hoi-thuong-gap-ve-kham-mat-dinh-ky.jpg'),
(88, 35, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1000;s:6:\"height\";i:667;s:4:\"file\";s:50:\"2022/07/cau-hoi-thuong-gap-ve-kham-mat-dinh-ky.jpg\";s:8:\"filesize\";i:43195;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:50:\"cau-hoi-thuong-gap-ve-kham-mat-dinh-ky-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:13347;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:50:\"cau-hoi-thuong-gap-ve-kham-mat-dinh-ky-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6909;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:50:\"cau-hoi-thuong-gap-ve-kham-mat-dinh-ky-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:52841;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(91, 8, '_thumbnail_id', '20'),
(94, 10, '_thumbnail_id', '34'),
(99, 37, '_menu_item_type', 'post_type'),
(100, 37, '_menu_item_menu_item_parent', '0'),
(101, 37, '_menu_item_object_id', '4'),
(102, 37, '_menu_item_object', 'page'),
(103, 37, '_menu_item_target', ''),
(104, 37, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(105, 37, '_menu_item_xfn', ''),
(106, 37, '_menu_item_url', ''),
(117, 39, '_menu_item_type', 'custom'),
(118, 39, '_menu_item_menu_item_parent', '0'),
(119, 39, '_menu_item_object_id', '39'),
(120, 39, '_menu_item_object', 'custom'),
(121, 39, '_menu_item_target', ''),
(122, 39, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(123, 39, '_menu_item_xfn', ''),
(124, 39, '_menu_item_url', '#'),
(126, 40, '_menu_item_type', 'custom'),
(127, 40, '_menu_item_menu_item_parent', '0'),
(128, 40, '_menu_item_object_id', '40'),
(129, 40, '_menu_item_object', 'custom'),
(130, 40, '_menu_item_target', ''),
(131, 40, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(132, 40, '_menu_item_xfn', ''),
(133, 40, '_menu_item_url', '#'),
(135, 41, '_menu_item_type', 'custom'),
(136, 41, '_menu_item_menu_item_parent', '0'),
(137, 41, '_menu_item_object_id', '41'),
(138, 41, '_menu_item_object', 'custom'),
(139, 41, '_menu_item_target', ''),
(140, 41, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(141, 41, '_menu_item_xfn', ''),
(142, 41, '_menu_item_url', '#'),
(144, 42, '_menu_item_type', 'post_type'),
(145, 42, '_menu_item_menu_item_parent', '0'),
(146, 42, '_menu_item_object_id', '10'),
(147, 42, '_menu_item_object', 'post'),
(148, 42, '_menu_item_target', ''),
(149, 42, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(150, 42, '_menu_item_xfn', ''),
(151, 42, '_menu_item_url', ''),
(152, 42, '_menu_item_orphaned', '1657767305'),
(153, 43, '_menu_item_type', 'post_type'),
(154, 43, '_menu_item_menu_item_parent', '0'),
(155, 43, '_menu_item_object_id', '8'),
(156, 43, '_menu_item_object', 'post'),
(157, 43, '_menu_item_target', ''),
(158, 43, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(159, 43, '_menu_item_xfn', ''),
(160, 43, '_menu_item_url', ''),
(161, 43, '_menu_item_orphaned', '1657767305'),
(162, 44, '_menu_item_type', 'custom'),
(163, 44, '_menu_item_menu_item_parent', '41'),
(164, 44, '_menu_item_object_id', '44'),
(165, 44, '_menu_item_object', 'custom'),
(166, 44, '_menu_item_target', ''),
(167, 44, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(168, 44, '_menu_item_xfn', ''),
(169, 44, '_menu_item_url', '#'),
(171, 45, '_menu_item_type', 'custom'),
(172, 45, '_menu_item_menu_item_parent', '41'),
(173, 45, '_menu_item_object_id', '45'),
(174, 45, '_menu_item_object', 'custom'),
(175, 45, '_menu_item_target', ''),
(176, 45, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(177, 45, '_menu_item_xfn', ''),
(178, 45, '_menu_item_url', '#'),
(180, 46, '_menu_item_type', 'custom'),
(181, 46, '_menu_item_menu_item_parent', '41'),
(182, 46, '_menu_item_object_id', '46'),
(183, 46, '_menu_item_object', 'custom'),
(184, 46, '_menu_item_target', ''),
(185, 46, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(186, 46, '_menu_item_xfn', ''),
(187, 46, '_menu_item_url', '#'),
(189, 47, '_menu_item_type', 'custom'),
(190, 47, '_menu_item_menu_item_parent', '41'),
(191, 47, '_menu_item_object_id', '47'),
(192, 47, '_menu_item_object', 'custom'),
(193, 47, '_menu_item_target', ''),
(194, 47, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(195, 47, '_menu_item_xfn', ''),
(196, 47, '_menu_item_url', '#'),
(198, 48, '_menu_item_type', 'custom'),
(199, 48, '_menu_item_menu_item_parent', '41'),
(200, 48, '_menu_item_object_id', '48'),
(201, 48, '_menu_item_object', 'custom'),
(202, 48, '_menu_item_target', ''),
(203, 48, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(204, 48, '_menu_item_xfn', ''),
(205, 48, '_menu_item_url', '#'),
(207, 50, '_wp_attached_file', '2022/07/image.png'),
(208, 50, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1000;s:6:\"height\";i:667;s:4:\"file\";s:17:\"2022/07/image.png\";s:8:\"filesize\";i:367781;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:17:\"image-300x200.png\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:71113;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:17:\"image-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:32840;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:17:\"image-768x512.png\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:297632;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(211, 31, 'rank_math_analytic_object_id', '1'),
(212, 29, 'rank_math_analytic_object_id', '2'),
(213, 25, 'rank_math_analytic_object_id', '3'),
(214, 23, 'rank_math_analytic_object_id', '4'),
(215, 18, 'rank_math_analytic_object_id', '5'),
(216, 14, 'rank_math_analytic_object_id', '6'),
(217, 12, 'rank_math_analytic_object_id', '7'),
(218, 10, 'rank_math_analytic_object_id', '8'),
(219, 8, 'rank_math_analytic_object_id', '9'),
(220, 4, 'rank_math_analytic_object_id', '10'),
(221, 1, 'rank_math_analytic_object_id', '11'),
(222, 2, 'rank_math_analytic_object_id', '12'),
(223, 31, 'rank_math_internal_links_processed', '1'),
(224, 29, 'rank_math_internal_links_processed', '1'),
(225, 25, 'rank_math_internal_links_processed', '1'),
(226, 23, 'rank_math_internal_links_processed', '1'),
(227, 18, 'rank_math_internal_links_processed', '1'),
(228, 52, '_edit_lock', '1658219386:1'),
(229, 52, 'rank_math_internal_links_processed', '1'),
(230, 52, '_wp_page_template', 'template-page/tbl-about.php'),
(231, 52, '_edit_last', '1'),
(232, 14, 'rank_math_internal_links_processed', '1'),
(233, 12, 'rank_math_internal_links_processed', '1'),
(234, 10, 'rank_math_internal_links_processed', '1'),
(235, 8, 'rank_math_internal_links_processed', '1'),
(236, 4, 'rank_math_internal_links_processed', '1'),
(237, 1, 'rank_math_internal_links_processed', '1'),
(238, 2, 'rank_math_internal_links_processed', '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2022-07-06 06:44:04', '2022-07-06 06:44:04', 'Chúc mừng đến với WordPress. Đây là bài viết đầu tiên của bạn. Hãy chỉnh sửa hay xóa bài viết này, và bắt đầu viết blog!', 'Chào tất cả mọi người!', '', 'publish', 'open', 'open', '', 'chao-moi-nguoi', '', '', '2022-07-06 06:44:04', '2022-07-06 06:44:04', '', 0, 'http://wpold.local/?p=1', 0, 'post', '', 1),
(2, 1, '2022-07-06 06:44:04', '2022-07-06 06:44:04', 'Đây là một trang tĩnh mẫu. Nó khác với một bài viết ở chỗ nó sẽ luôn ở một vị trí và sẽ được hiển thị tại thực đơn điều hướng trên trang mạng của bạn (với hầu hết các giao diện). Hầu hết mọi người bắt đầu với trang Giới Thiệu kể về họ với người đọc. Nó có thể được viết như sau:\n\n<blockquote>Xin chào! tôi là người chuyển hàng bằng xe đạp vào ban ngày, diễn viên luôn nỗ lực tiến bộ vào buổi tối, và đây là trang nhật ký trực tuyến của tôi. Tôi sống ở Los Angeles, tôi nuôi một con chó tuyệt vời tên là Jack, và tôi thích pi&#241;a coladas. (Và có thể gặp trong mưa.)</blockquote>\n\n...hoặc tương tự như:\n\n<blockquote>Công ty Đồ dùng XYZ được thành lập năm 1971, và đã cung cấp đồ dùng chất lượng cho cộng đồng từ thời điểm đó. Tại thành phố Gotham, XYZ tạo ra việc làm cho hơn 2,000 người và làm ra những đồ dùng tuyệt vời phục vụ mọi nhu cầu cho người dân Gotham.</blockquote>\n\nLà một người sử dụng WordPress mới, bạn nên truy cập <a href=\"http://wpold.local/wp-admin/\">bảng thống kê</a> để xóa trang tĩnh này và tạo trang tĩnh mới cho nội dung của bạn. Hãy tận hưởng!', 'Trang Mẫu', '', 'publish', 'open', 'open', '', 'Trang mẫu', '', '', '2022-07-06 06:44:04', '2022-07-06 06:44:04', '', 0, 'http://wpold.local/?page_id=2', 0, 'page', '', 0),
(4, 1, '2022-07-08 02:27:00', '2022-07-08 02:27:00', '', 'Homepage', '', 'publish', 'closed', 'closed', '', 'homepage', '', '', '2022-07-08 02:27:00', '2022-07-08 02:27:00', '', 0, 'http://twblog.local/?page_id=4', 0, 'page', '', 0),
(5, 1, '2022-07-08 02:26:54', '2022-07-08 02:26:54', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-twblog', '', '', '2022-07-08 02:26:54', '2022-07-08 02:26:54', '', 0, 'http://twblog.local/wp-global-styles-twblog/', 0, 'wp_global_styles', '', 0),
(6, 1, '2022-07-08 02:27:00', '2022-07-08 02:27:00', '', 'Homepage', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2022-07-08 02:27:00', '2022-07-08 02:27:00', '', 4, 'http://twblog.local/?p=6', 0, 'revision', '', 0),
(8, 1, '2022-07-13 08:46:57', '2022-07-13 08:46:57', '<!-- wp:paragraph -->\n<p>Theo <a rel=\"noreferrer noopener\" href=\"https://medlineplus.gov/ency/article/002332.htm\" target=\"_blank\">the National Library of Medicine</a>, trong cấp độ phân tử, Tryptophan là một axit amin cần thiết nhưng cơ thể con người không tự sản sinh, mà phải lấy từ chế độ ăn uống với nhiều loại thực phẩm chứa protein. Khi bạn tiêu thụ tryptophan từ sữa hoặc thực phẩm, cơ thể sẽ tiếp nạp và sản sinh <a rel=\"noreferrer noopener\" href=\"https://hellobacsi.com/tam-ly-tam-than/6-cach-tang-cuong-serotonin-khong-dung-thuoc/\" target=\"_blank\">serotonin</a> (cân bằng và cải thiện cảm xúc tâm trạng của con người). Từ đó được chuyển đổi thành hormone melatonin hỗ trợ giấc ngủ.</p>\n<!-- /wp:paragraph -->', 'Uống sữa trước khi ngủ có tốt không?', '', 'publish', 'open', 'open', '', 'uong-sua-truoc-khi-ngu-co-tot-khong', '', '', '2022-07-14 02:04:03', '2022-07-14 02:04:03', '', 0, 'http://twblog.local/?p=8', 0, 'post', '', 0),
(9, 1, '2022-07-13 08:46:57', '2022-07-13 08:46:57', '<!-- wp:paragraph -->\n<p>Theo <a rel=\"noreferrer noopener\" href=\"https://medlineplus.gov/ency/article/002332.htm\" target=\"_blank\">the National Library of Medicine</a>, trong cấp độ phân tử, Tryptophan là một axit amin cần thiết nhưng cơ thể con người không tự sản sinh, mà phải lấy từ chế độ ăn uống với nhiều loại thực phẩm chứa protein. Khi bạn tiêu thụ tryptophan từ sữa hoặc thực phẩm, cơ thể sẽ tiếp nạp và sản sinh <a rel=\"noreferrer noopener\" href=\"https://hellobacsi.com/tam-ly-tam-than/6-cach-tang-cuong-serotonin-khong-dung-thuoc/\" target=\"_blank\">serotonin</a> (cân bằng và cải thiện cảm xúc tâm trạng của con người). Từ đó được chuyển đổi thành hormone melatonin hỗ trợ giấc ngủ.</p>\n<!-- /wp:paragraph -->', 'Uống sữa trước khi ngủ có tốt không?', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2022-07-13 08:46:57', '2022-07-13 08:46:57', '', 8, 'http://twblog.local/?p=9', 0, 'revision', '', 0),
(10, 1, '2022-07-13 08:47:34', '2022-07-13 08:47:34', '<!-- wp:paragraph -->\n<p>Việc tiêu thụ thực phẩm hoặc uống sữa giàu tryptophan có thể khiến bạn cảm thấy buồn ngủ. Nguyên nhân là vì cơ thể chuyển đổi tryptophan thành hormone ngủ khiến bạn dễ buồn ngủ hơn. Ví dụ, lý do cho việc mọi người thường cảm thấy buồn ngủ sau các bữa ăn là do tiêu thụ nhiều lượng tryptophan (trong sữa và các thức ăn nhiều tryptophan khác).</p>\n<!-- /wp:paragraph -->', 'Mắt nhạy cảm với ánh sáng ảnh hưởng giấc ngủ: Làm sao để khắc phục?', '', 'publish', 'open', 'open', '', 'mat-nhay-cam-voi-anh-sang-anh-huong-giac-ngu-lam-sao-de-khac-phuc', '', '', '2022-07-14 02:03:40', '2022-07-14 02:03:40', '', 0, 'http://twblog.local/?p=10', 0, 'post', '', 0),
(11, 1, '2022-07-13 08:47:34', '2022-07-13 08:47:34', '<!-- wp:paragraph -->\n<p>Việc tiêu thụ thực phẩm hoặc uống sữa giàu tryptophan có thể khiến bạn cảm thấy buồn ngủ. Nguyên nhân là vì cơ thể chuyển đổi tryptophan thành hormone ngủ khiến bạn dễ buồn ngủ hơn. Ví dụ, lý do cho việc mọi người thường cảm thấy buồn ngủ sau các bữa ăn là do tiêu thụ nhiều lượng tryptophan (trong sữa và các thức ăn nhiều tryptophan khác).</p>\n<!-- /wp:paragraph -->', 'Mắt nhạy cảm với ánh sáng ảnh hưởng giấc ngủ: Làm sao để khắc phục?', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2022-07-13 08:47:34', '2022-07-13 08:47:34', '', 10, 'http://twblog.local/?p=11', 0, 'revision', '', 0),
(12, 1, '2022-07-13 08:48:10', '2022-07-13 08:48:10', '<!-- wp:paragraph -->\n<p>Nếu bạn đọc được một cuốn sách có nội dung hấp dẫn, đầy ý nghĩa thì bạn có thể dễ ngủ hơn khi bắt đầu nghiền ngẫm về những gì bạn đọc. Đọc sách trước khi ngủ sẽ giúp bạn không phải bận tâm đến những lo lắng, nghi ngờ và cảm giác bất lực – được xem là các dấu hiệu đặc trưng cho chứng lo lắng và trầm cảm.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 id=\"nen-chon-doc-sach-ebooks-hay-sach-giay\"><strong>Nên chọn đọc sách Ebooks hay sách giấy?</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Nhiều người thích đọc sách giấy vì muốn cảm nhận độ nặng của cuốn sách, hương thơm mùi giấy, mực in và chất lượng trang giấy. Tuy nhiên, một số khác lại cho rằng việc cầm 1 cuốn sách để đọc trên tay có thể khiến cho bạn mỏi tay do bìa sách khá nặng, từ đó làm cho bạn mất đi động lực để tiếp tục đọc sách. Vì thế, với sự phổ biến đến từ các ứng dụng và thiết bị đọc sách điện tử, điều này cho phép bạn đọc sách trên điện thoại thông minh và máy tính bảng ở bất kỳ nơi đâu.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Bạn chỉ cần lưu ý 1 điều rằng là phải nên giới hạn việc đọc sách trên điện thoại hoặc máy tính bảng vào các giờ ban đêm – trừ khi bạn sử dụng thiết bị đọc sách điện tử chuyên dụng với màn hình đơn sắc không phát ra <a href=\"https://hellobacsi.com/giac-ngu/giac-ngu-ngon/anh-sang-xanh-anh-huong-den-giac-ngu-nhu-the-nao/\" target=\"_blank\" rel=\"noreferrer noopener\">ánh sáng xanh</a>.</p>\n<!-- /wp:paragraph -->', 'Lợi ích không ngờ của việc đọc sách trước khi ngủ', '', 'publish', 'open', 'open', '', 'loi-ich-khong-ngo-cua-viec-doc-sach-truoc-khi-ngu', '', '', '2022-07-14 02:17:40', '2022-07-14 02:17:40', '', 0, 'http://twblog.local/?p=12', 0, 'post', '', 0),
(13, 1, '2022-07-13 08:48:10', '2022-07-13 08:48:10', '<!-- wp:paragraph -->\n<p>Nếu bạn đọc được một cuốn sách có nội dung hấp dẫn, đầy ý nghĩa thì bạn có thể dễ ngủ hơn khi bắt đầu nghiền ngẫm về những gì bạn đọc. Đọc sách trước khi ngủ sẽ giúp bạn không phải bận tâm đến những lo lắng, nghi ngờ và cảm giác bất lực – được xem là các dấu hiệu đặc trưng cho chứng lo lắng và trầm cảm.</p>\n<!-- /wp:paragraph -->', 'Lợi ích không ngờ của việc đọc sách trước khi ngủ', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2022-07-13 08:48:10', '2022-07-13 08:48:10', '', 12, 'http://twblog.local/?p=13', 0, 'revision', '', 0),
(14, 1, '2022-07-13 08:48:39', '2022-07-13 08:48:39', '<!-- wp:paragraph -->\n<p>Nếu bạn đọc được một cuốn sách có nội dung hấp dẫn, đầy ý nghĩa thì bạn có thể dễ ngủ hơn khi bắt đầu nghiền ngẫm về những gì bạn đọc. Đọc sách trước khi ngủ sẽ giúp bạn không phải bận tâm đến những lo lắng, nghi ngờ và cảm giác bất lực – được xem là các dấu hiệu đặc trưng cho chứng lo lắng và trầm cảm.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Thông thường chúng ta chỉ uống nước khi cảm thấy khát hoặc khi tiết trời nóng bứt. Tuy nhiên, sự thật là bạn luôn phải uống đủ nước dù cho nhiệt độ môi trường bên ngoài như thế nào. Vậy mỗi ngày nên uống bao nhiêu nước? Những yếu tố nào giúp bạn quyết định lượng nước cần bổ sung hàng ngày? Hãy khám phá ngay những thông tin hữu ích được chia sẻ trong bài viết sau để chăm sóc sức khỏe tốt hơn.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Mỗi ngày nên uống bao nhiêu nước?</h2>\n<!-- /wp:heading -->\n\n<!-- wp:image {\"id\":50,\"sizeSlug\":\"full\",\"linkDestination\":\"media\"} -->\n<figure class=\"wp-block-image size-full\"><a href=\"http://twblog.local/wp-content/uploads/2022/07/image.png\"><img src=\"http://twblog.local/wp-content/uploads/2022/07/image.png\" alt=\"\" class=\"wp-image-50\"/></a></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Mỗi ngày nên uống bao nhiêu nước là vấn đề được khá nhiều người quan tâm. Thông thường, hầu hết những người khỏe mạnh đều cần bổ sung khoảng 6 đến 8 cốc nước (tương đương khoảng 1.5 – 2 lít) mỗi ngày. Đối với nam giới hoặc người hoạt động thể chất thường xuyên thì con số có thể cao hơn, đối tượng này thường cần bổ sung khoảng 2.7 – 3.7 lít nước mỗi ngày.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ngoài ra, với những người mắc một số bệnh lý như <a href=\"https://hellobacsi.com/suc-khoe-phu-nu/benh-tuyen-giap/benh-tuyen-giap/\">bệnh tuyến giáp</a>, các vấn đề liên quan đến thận, gan hoặc tim sẽ khiến cơ thể hấp thụ nhiều nước hơn. Bên cạnh đó, trong trường hợp bạn đang dùng thuốc như thuốc chống viêm không steroid (NSAID), thuốc giảm đau opioids hay một số loại <a href=\"https://hellobacsi.com/tam-ly-tam-than/tram-cam-roi-loan-cam-xuc/thuoc-chong-tram-cam-tot-nhat/\">thuốc chống trầm cảm</a> thì cũng sẽ khiến cơ thể giữ nhiều nước.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Do đó, vấn đề cần quan tâm là với những người thuộc nhóm đối tượng này thì mỗi ngày nên uống bao nhiêu nước sẽ phù hợp? Theo các chuyên gia thì không có một tiêu chuẩn cụ thể nào về việc nên bổ sung bao nhiêu nước mỗi ngày. Thay vào đó, việc uống nước nên được cá nhân hóa tùy thuộc vào tình trạng sức khỏe của mỗi người.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nếu không biết chắc chắn, bạn nên thảo luận với bác sĩ để được tư vấn chính xác về việc mỗi ngày nên uống bao nhiêu nước nhé.</p>\n<!-- /wp:paragraph -->', 'Lợi ích không ngờ của việc đọc sách trước khi ngủ', '', 'publish', 'open', 'open', '', 'loi-ich-khong-ngo-cua-viec-doc-sach-truoc-khi-ngu-2', '', '', '2022-07-18 08:40:21', '2022-07-18 08:40:21', '', 0, 'http://twblog.local/?p=14', 0, 'post', '', 10),
(15, 1, '2022-07-13 08:48:39', '2022-07-13 08:48:39', '<!-- wp:paragraph -->\n<p>Nếu bạn đọc được một cuốn sách có nội dung hấp dẫn, đầy ý nghĩa thì bạn có thể dễ ngủ hơn khi bắt đầu nghiền ngẫm về những gì bạn đọc. Đọc sách trước khi ngủ sẽ giúp bạn không phải bận tâm đến những lo lắng, nghi ngờ và cảm giác bất lực – được xem là các dấu hiệu đặc trưng cho chứng lo lắng và trầm cảm.</p>\n<!-- /wp:paragraph -->', 'Lợi ích không ngờ của việc đọc sách trước khi ngủ', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2022-07-13 08:48:39', '2022-07-13 08:48:39', '', 14, 'http://twblog.local/?p=15', 0, 'revision', '', 0),
(16, 1, '2022-07-13 09:10:08', '2022-07-13 09:10:08', '', 'wallpaperflare.com_wallpaper', '', 'inherit', 'open', 'closed', '', 'wallpaperflare-com_wallpaper', '', '', '2022-07-13 09:10:08', '2022-07-13 09:10:08', '', 14, 'http://twblog.local/wp-content/uploads/2022/07/wallpaperflare.com_wallpaper.jpg', 0, 'attachment', 'image/jpeg', 0),
(17, 1, '2022-07-13 10:14:38', '2022-07-13 10:14:38', '', 'wallpaperflare.com_wallpaper (1)', '', 'inherit', 'open', 'closed', '', 'wallpaperflare-com_wallpaper-1', '', '', '2022-07-13 10:14:38', '2022-07-13 10:14:38', '', 12, 'http://twblog.local/wp-content/uploads/2022/07/wallpaperflare.com_wallpaper-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(18, 1, '2022-07-14 01:50:36', '2022-07-14 01:50:36', '<!-- wp:heading -->\n<h2 id=\"tai-sao-mot-so-nguoi-co-thoi-quen-ngoi-bat-cheo-chan\"><strong>Tại sao một số người có thói quen ngồi bắt chéo chân?</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Những người có thói quen ngồi vắt chéo chân đều xuất phát do tâm lý và sinh lý. Mặc dù một số người cho rằng tư thế ngồi bắt chéo chân thể hiện quyền lực trong giao tiếp, kinh doanh và chính trị, từ hành vi biến thành thói quen. Tùy vào tình huống, tư thế ngồi bắt chéo chân có thể có nghĩa người đó đang cảm thấy thoải mái hoặc phòng thủ.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ngoài ra, theo ngôn ngữ cơ thể, nếu ai đó ngồi bắt chéo chân trong cuộc họp, người đó có thể đang trong tâm lý phòng thủ, soi xét kỹ lưỡng hơn. Lúc này đối tác sẽ gặp khó khăn hơn để thuyết phục họ trong đàm phán đó.</p>\n<!-- /wp:paragraph -->', 'Tại sao không nên ngồi bắt chéo chân?', '', 'publish', 'open', 'open', '', 'tai-sao-khong-nen-ngoi-bat-cheo-chan', '', '', '2022-07-14 01:52:41', '2022-07-14 01:52:41', '', 0, 'http://twblog.local/?p=18', 0, 'post', '', 0),
(19, 1, '2022-07-14 01:50:29', '2022-07-14 01:50:29', '', 'nhung-viec-lam-nen-lam-khi-di-xe-dap', '', 'inherit', 'open', 'closed', '', 'nhung-viec-lam-nen-lam-khi-di-xe-dap', '', '', '2022-07-14 01:50:29', '2022-07-14 01:50:29', '', 18, 'http://twblog.local/wp-content/uploads/2022/07/nhung-viec-lam-nen-lam-khi-di-xe-dap.jpg', 0, 'attachment', 'image/jpeg', 0),
(20, 1, '2022-07-14 01:50:29', '2022-07-14 01:50:29', '', 'review-may-loc-khong-khi-1', '', 'inherit', 'open', 'closed', '', 'review-may-loc-khong-khi-1', '', '', '2022-07-14 01:50:29', '2022-07-14 01:50:29', '', 18, 'http://twblog.local/wp-content/uploads/2022/07/review-may-loc-khong-khi-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(21, 1, '2022-07-14 01:50:30', '2022-07-14 01:50:30', '', 'thoi-quen-ngoi-vat-cheo-chan', '', 'inherit', 'open', 'closed', '', 'thoi-quen-ngoi-vat-cheo-chan', '', '', '2022-07-14 01:50:30', '2022-07-14 01:50:30', '', 18, 'http://twblog.local/wp-content/uploads/2022/07/thoi-quen-ngoi-vat-cheo-chan.jpg', 0, 'attachment', 'image/jpeg', 0),
(22, 1, '2022-07-14 01:50:36', '2022-07-14 01:50:36', '<!-- wp:heading -->\n<h2 id=\"tai-sao-mot-so-nguoi-co-thoi-quen-ngoi-bat-cheo-chan\"><strong>Tại sao một số người có thói quen ngồi bắt chéo chân?</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Những người có thói quen ngồi vắt chéo chân đều xuất phát do tâm lý và sinh lý. Mặc dù một số người cho rằng tư thế ngồi bắt chéo chân thể hiện quyền lực trong giao tiếp, kinh doanh và chính trị, từ hành vi biến thành thói quen. Tùy vào tình huống, tư thế ngồi bắt chéo chân có thể có nghĩa người đó đang cảm thấy thoải mái hoặc phòng thủ.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ngoài ra, theo ngôn ngữ cơ thể, nếu ai đó ngồi bắt chéo chân trong cuộc họp, người đó có thể đang trong tâm lý phòng thủ, soi xét kỹ lưỡng hơn. Lúc này đối tác sẽ gặp khó khăn hơn để thuyết phục họ trong đàm phán đó.</p>\n<!-- /wp:paragraph -->', 'Tại sao không nên ngồi bắt chéo chân?', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2022-07-14 01:50:36', '2022-07-14 01:50:36', '', 18, 'http://twblog.local/?p=22', 0, 'revision', '', 0),
(23, 1, '2022-07-14 01:51:25', '2022-07-14 01:51:25', '<!-- wp:heading -->\n<h2 id=\"loi-ich-cua-dap-xe-di-lam\"><strong>Lợi ích của đạp xe đi làm</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Đạp xe đi làm cũng được coi là một hoạt động thể chất. Nếu bạn đang lên kế hoạch tập thể dục mỗi ngày nhưng không có thời gian, thì đạp xe đi làm có thể một lựa chọn hợp lý giúp bạn tận dụng được thời gian di chuyển trên đường để hoạt động thể chất. Những lợi ích nổi bật khi đạp xe đi làm có thể kể đến như sau:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li><strong>Tiết kiệm chi phí</strong></li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Đi xe đạp là cách giúp bạn cắt giảm chi phí tiêu dùng hàng tháng khi không cần sử dụng xăng. Hơn nữa, các khoản phí như sửa chữa, chi phí đậu xe, bảo dưỡng, bảo hiểm hằng tháng cũng cao hơn so với xe đạp.</p>\n<!-- /wp:paragraph -->', 'Đạp xe đi làm: Những điều nên làm để tránh bất tiện', '', 'publish', 'open', 'open', '', 'dap-xe-di-lam-nhung-dieu-nen-lam-de-tranh-bat-tien', '', '', '2022-07-14 01:52:52', '2022-07-14 01:52:52', '', 0, 'http://twblog.local/?p=23', 0, 'post', '', 0),
(24, 1, '2022-07-14 01:51:25', '2022-07-14 01:51:25', '<!-- wp:heading -->\n<h2 id=\"loi-ich-cua-dap-xe-di-lam\"><strong>Lợi ích của đạp xe đi làm</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Đạp xe đi làm cũng được coi là một hoạt động thể chất. Nếu bạn đang lên kế hoạch tập thể dục mỗi ngày nhưng không có thời gian, thì đạp xe đi làm có thể một lựa chọn hợp lý giúp bạn tận dụng được thời gian di chuyển trên đường để hoạt động thể chất. Những lợi ích nổi bật khi đạp xe đi làm có thể kể đến như sau:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li><strong>Tiết kiệm chi phí</strong></li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Đi xe đạp là cách giúp bạn cắt giảm chi phí tiêu dùng hàng tháng khi không cần sử dụng xăng. Hơn nữa, các khoản phí như sửa chữa, chi phí đậu xe, bảo dưỡng, bảo hiểm hằng tháng cũng cao hơn so với xe đạp.</p>\n<!-- /wp:paragraph -->', 'Đạp xe đi làm: Những điều nên làm để tránh bất tiện', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2022-07-14 01:51:25', '2022-07-14 01:51:25', '', 23, 'http://twblog.local/?p=24', 0, 'revision', '', 0),
(25, 1, '2022-07-14 01:55:25', '2022-07-14 01:55:25', '<!-- wp:heading {\"level\":4} -->\n<h4><strong>Các bước thực hiện động tác yoga như sau:</strong></h4>\n<!-- /wp:heading -->\n\n<!-- wp:list -->\n<ul><li>Đứng thẳng với hai chân dang rộng.</li><li>Xoay một bàn chân ra ngoài 90 độ và bàn chân kia vào trong khoảng 15 độ. Hãy đảm bảo rằng gót chân của bàn chân điều chỉnh 15 độ, thẳng hàng với tâm của bàn chân còn lại.</li><li>Đặt hai tay lên hông và xoay vai, ngực và xương chậu về phía trước.</li><li>Trong khi hít vào, đưa cánh tay từ hai bên qua đầu. Giữ lòng bàn tay của bạn chấp tay qua đầu.</li><li>Đưa vai của bạn xuống phía sau trong khi giữ cho chân sau vững chắc.</li><li>Gập đầu gối sau và thở ra thật sâu giữ thẳng với mắt cá chân còn lại.</li><li>Vòm lưng và ngả đầu ra sau, nhìn lên trên.</li><li>Tiếp đất chân trước xuống để đảm bảo mép ngoài của bàn chân được ấn chặt vào thảm. Hóp bụng vào.</li><li>Giữ nguyên tư thế trong 10 – 20 giây.</li><li>Hít vào và duỗi thẳng chân sau. Sau đó thở ra và thả cánh tay, bước hai chân vào nhau. Đổi bên và lặp lại quy trình tương tự để có lợi ích tối đa.</li></ul>\n<!-- /wp:list -->', '9 tư thế yoga đẹp để chụp hình xinh lung linh', '', 'publish', 'open', 'open', '', '9-tu-the-yoga-dep-de-chup-hinh-xinh-lung-linh', '', '', '2022-07-14 01:58:10', '2022-07-14 01:58:10', '', 0, 'http://twblog.local/?p=25', 0, 'post', '', 0),
(26, 1, '2022-07-14 01:55:20', '2022-07-14 01:55:20', '', 'dong-tac-yoga-3', '', 'inherit', 'open', 'closed', '', 'dong-tac-yoga-3', '', '', '2022-07-14 01:55:20', '2022-07-14 01:55:20', '', 25, 'http://twblog.local/wp-content/uploads/2022/07/dong-tac-yoga-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(27, 1, '2022-07-14 01:55:20', '2022-07-14 01:55:20', '', 'tap-the-duc-xong-buon-non-1751311082', '', 'inherit', 'open', 'closed', '', 'tap-the-duc-xong-buon-non-1751311082', '', '', '2022-07-14 01:55:20', '2022-07-14 01:55:20', '', 25, 'http://twblog.local/wp-content/uploads/2022/07/tap-the-duc-xong-buon-non-1751311082.jpg', 0, 'attachment', 'image/jpeg', 0),
(28, 1, '2022-07-14 01:55:25', '2022-07-14 01:55:25', '<!-- wp:heading {\"level\":4} -->\n<h4><strong>Các bước thực hiện động tác yoga như sau:</strong></h4>\n<!-- /wp:heading -->\n\n<!-- wp:list -->\n<ul><li>Đứng thẳng với hai chân dang rộng.</li><li>Xoay một bàn chân ra ngoài 90 độ và bàn chân kia vào trong khoảng 15 độ. Hãy đảm bảo rằng gót chân của bàn chân điều chỉnh 15 độ, thẳng hàng với tâm của bàn chân còn lại.</li><li>Đặt hai tay lên hông và xoay vai, ngực và xương chậu về phía trước.</li><li>Trong khi hít vào, đưa cánh tay từ hai bên qua đầu. Giữ lòng bàn tay của bạn chấp tay qua đầu.</li><li>Đưa vai của bạn xuống phía sau trong khi giữ cho chân sau vững chắc.</li><li>Gập đầu gối sau và thở ra thật sâu giữ thẳng với mắt cá chân còn lại.</li><li>Vòm lưng và ngả đầu ra sau, nhìn lên trên.</li><li>Tiếp đất chân trước xuống để đảm bảo mép ngoài của bàn chân được ấn chặt vào thảm. Hóp bụng vào.</li><li>Giữ nguyên tư thế trong 10 – 20 giây.</li><li>Hít vào và duỗi thẳng chân sau. Sau đó thở ra và thả cánh tay, bước hai chân vào nhau. Đổi bên và lặp lại quy trình tương tự để có lợi ích tối đa.</li></ul>\n<!-- /wp:list -->', '9 tư thế yoga đẹp để chụp hình xinh lung linh', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2022-07-14 01:55:25', '2022-07-14 01:55:25', '', 25, 'http://twblog.local/?p=28', 0, 'revision', '', 0),
(29, 1, '2022-07-14 01:55:44', '2022-07-14 01:55:44', '<!-- wp:heading -->\n<h2 id=\"trieu-chung-tap-the-duc-xong-buon-non-la-benh-gi\"><strong>Triệu chứng tập thể dục xong buồn nôn là bệnh gì?</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Tập thể dục rất tốt cho sức khỏe, giúp cơ thể dẻo dai, cải thiện tâm trạng, duy trì vóc dáng… Tuy nhiên, có rất nhiều người không thể tập được thói quen tốt này bởi vì bị hiện tượng đang tập hoặc tập thể dục xong chóng mặt, buồn nôn. Dấu hiệu này thường xuất hiện khi tập những động tác khó như ngồi xổm, chạy nhanh, chạy liên tục khiến đầu óc choáng váng, buồn nôn.</p>\n<!-- /wp:paragraph -->', 'Tập thể dục xong buồn nôn do đâu? Làm sao để khắc phục?', '', 'publish', 'open', 'open', '', 'tap-the-duc-xong-buon-non-do-dau-lam-sao-de-khac-phuc', '', '', '2022-07-14 01:58:15', '2022-07-14 01:58:15', '', 0, 'http://twblog.local/?p=29', 0, 'post', '', 0),
(30, 1, '2022-07-14 01:55:44', '2022-07-14 01:55:44', '<!-- wp:heading -->\n<h2 id=\"trieu-chung-tap-the-duc-xong-buon-non-la-benh-gi\"><strong>Triệu chứng tập thể dục xong buồn nôn là bệnh gì?</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Tập thể dục rất tốt cho sức khỏe, giúp cơ thể dẻo dai, cải thiện tâm trạng, duy trì vóc dáng… Tuy nhiên, có rất nhiều người không thể tập được thói quen tốt này bởi vì bị hiện tượng đang tập hoặc tập thể dục xong chóng mặt, buồn nôn. Dấu hiệu này thường xuất hiện khi tập những động tác khó như ngồi xổm, chạy nhanh, chạy liên tục khiến đầu óc choáng váng, buồn nôn.</p>\n<!-- /wp:paragraph -->', 'Tập thể dục xong buồn nôn do đâu? Làm sao để khắc phục?', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2022-07-14 01:55:44', '2022-07-14 01:55:44', '', 29, 'http://twblog.local/?p=30', 0, 'revision', '', 0),
(31, 1, '2022-07-14 01:57:55', '2022-07-14 01:57:55', '<!-- wp:paragraph -->\n<p><strong>Đau lưng là tình trạng khá phổ biến ngày nay, đặc biệt với những người có thói quen ngồi làm việc lâu, ít vận động lâu ngày. Thực hiện bài tập cho người đau lưng sẽ là lựa chọn bổ trợ hoàn hảo dành cho những ai đang bị đau nhức vùng lưng trên, lưng dưới hoặc đau cột sống.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Những bài tập cho người người đau lưng bao gồm 2 loại bài tập: giãn cơ lưng và tập tăng cường cải thiện sức mạnh cho cơ lưng và bụng. Các bài tập này sẽ giúp hạn chế tình trạng căng cơ, thư giãn cột sống và giảm đau hiệu quả.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Để luyện tập đúng cách giúp giảm cơn đau nhức, bạn có thể áp dụng 13 bài tập hỗ trợ cải thiện đau lưng sau đây.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lưu ý: bạn nên tham vấn HLV đề điều chỉnh tư thế cho bạn đúng trước khi bạn thực hiện các bài tập này vì nếu tập sai tư thế có thể làm nặng hơn tình trạng đau lưng của bạn.</p>\n<!-- /wp:paragraph -->', '12 bài tập cho người đau lưng đơn giản, dễ áp dụng tại nhà', '', 'publish', 'open', 'open', '', '12-bai-tap-cho-nguoi-dau-lung-don-gian-de-ap-dung-tai-nha', '', '', '2022-07-14 01:58:19', '2022-07-14 01:58:19', '', 0, 'http://twblog.local/?p=31', 0, 'post', '', 0),
(32, 1, '2022-07-14 01:57:50', '2022-07-14 01:57:50', '', 'bai-tap-cho-nguoi-dau-lung_566255782', '', 'inherit', 'open', 'closed', '', 'bai-tap-cho-nguoi-dau-lung_566255782', '', '', '2022-07-14 01:57:50', '2022-07-14 01:57:50', '', 31, 'http://twblog.local/wp-content/uploads/2022/07/bai-tap-cho-nguoi-dau-lung_566255782.jpg', 0, 'attachment', 'image/jpeg', 0),
(33, 1, '2022-07-14 01:57:55', '2022-07-14 01:57:55', '<!-- wp:paragraph -->\n<p><strong>Đau lưng là tình trạng khá phổ biến ngày nay, đặc biệt với những người có thói quen ngồi làm việc lâu, ít vận động lâu ngày. Thực hiện bài tập cho người đau lưng sẽ là lựa chọn bổ trợ hoàn hảo dành cho những ai đang bị đau nhức vùng lưng trên, lưng dưới hoặc đau cột sống.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Những bài tập cho người người đau lưng bao gồm 2 loại bài tập: giãn cơ lưng và tập tăng cường cải thiện sức mạnh cho cơ lưng và bụng. Các bài tập này sẽ giúp hạn chế tình trạng căng cơ, thư giãn cột sống và giảm đau hiệu quả.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Để luyện tập đúng cách giúp giảm cơn đau nhức, bạn có thể áp dụng 13 bài tập hỗ trợ cải thiện đau lưng sau đây.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lưu ý: bạn nên tham vấn HLV đề điều chỉnh tư thế cho bạn đúng trước khi bạn thực hiện các bài tập này vì nếu tập sai tư thế có thể làm nặng hơn tình trạng đau lưng của bạn.</p>\n<!-- /wp:paragraph -->', '12 bài tập cho người đau lưng đơn giản, dễ áp dụng tại nhà', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2022-07-14 01:57:55', '2022-07-14 01:57:55', '', 31, 'http://twblog.local/?p=33', 0, 'revision', '', 0),
(34, 1, '2022-07-14 02:03:22', '2022-07-14 02:03:22', '', 'benh-ve-mat-1', '', 'inherit', 'open', 'closed', '', 'benh-ve-mat-1', '', '', '2022-07-14 02:03:22', '2022-07-14 02:03:22', '', 8, 'http://twblog.local/wp-content/uploads/2022/07/benh-ve-mat-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(35, 1, '2022-07-14 02:03:23', '2022-07-14 02:03:23', '', 'cau-hoi-thuong-gap-ve-kham-mat-dinh-ky', '', 'inherit', 'open', 'closed', '', 'cau-hoi-thuong-gap-ve-kham-mat-dinh-ky', '', '', '2022-07-14 02:03:23', '2022-07-14 02:03:23', '', 8, 'http://twblog.local/wp-content/uploads/2022/07/cau-hoi-thuong-gap-ve-kham-mat-dinh-ky.jpg', 0, 'attachment', 'image/jpeg', 0),
(36, 1, '2022-07-14 02:17:40', '2022-07-14 02:17:40', '<!-- wp:paragraph -->\n<p>Nếu bạn đọc được một cuốn sách có nội dung hấp dẫn, đầy ý nghĩa thì bạn có thể dễ ngủ hơn khi bắt đầu nghiền ngẫm về những gì bạn đọc. Đọc sách trước khi ngủ sẽ giúp bạn không phải bận tâm đến những lo lắng, nghi ngờ và cảm giác bất lực – được xem là các dấu hiệu đặc trưng cho chứng lo lắng và trầm cảm.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 id=\"nen-chon-doc-sach-ebooks-hay-sach-giay\"><strong>Nên chọn đọc sách Ebooks hay sách giấy?</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Nhiều người thích đọc sách giấy vì muốn cảm nhận độ nặng của cuốn sách, hương thơm mùi giấy, mực in và chất lượng trang giấy. Tuy nhiên, một số khác lại cho rằng việc cầm 1 cuốn sách để đọc trên tay có thể khiến cho bạn mỏi tay do bìa sách khá nặng, từ đó làm cho bạn mất đi động lực để tiếp tục đọc sách. Vì thế, với sự phổ biến đến từ các ứng dụng và thiết bị đọc sách điện tử, điều này cho phép bạn đọc sách trên điện thoại thông minh và máy tính bảng ở bất kỳ nơi đâu.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Bạn chỉ cần lưu ý 1 điều rằng là phải nên giới hạn việc đọc sách trên điện thoại hoặc máy tính bảng vào các giờ ban đêm – trừ khi bạn sử dụng thiết bị đọc sách điện tử chuyên dụng với màn hình đơn sắc không phát ra <a href=\"https://hellobacsi.com/giac-ngu/giac-ngu-ngon/anh-sang-xanh-anh-huong-den-giac-ngu-nhu-the-nao/\" target=\"_blank\" rel=\"noreferrer noopener\">ánh sáng xanh</a>.</p>\n<!-- /wp:paragraph -->', 'Lợi ích không ngờ của việc đọc sách trước khi ngủ', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2022-07-14 02:17:40', '2022-07-14 02:17:40', '', 12, 'http://twblog.local/?p=36', 0, 'revision', '', 0),
(37, 1, '2022-07-14 03:03:15', '2022-07-14 02:24:46', '', 'Trang chủ', '', 'publish', 'closed', 'closed', '', '37', '', '', '2022-07-14 03:03:15', '2022-07-14 03:03:15', '', 0, 'http://twblog.local/?p=37', 1, 'nav_menu_item', '', 0),
(39, 1, '2022-07-14 03:03:15', '2022-07-14 02:27:30', '', 'Chuyên mục', '', 'publish', 'closed', 'closed', '', 'chuyen-muc', '', '', '2022-07-14 03:03:15', '2022-07-14 03:03:15', '', 0, 'http://twblog.local/?p=39', 2, 'nav_menu_item', '', 0),
(40, 1, '2022-07-14 03:03:15', '2022-07-14 02:27:30', '', 'Kiểm tra sức khỏe', '', 'publish', 'closed', 'closed', '', 'kiem-tra-suc-khoe', '', '', '2022-07-14 03:03:15', '2022-07-14 03:03:15', '', 0, 'http://twblog.local/?p=40', 3, 'nav_menu_item', '', 0),
(41, 1, '2022-07-14 03:03:15', '2022-07-14 02:27:30', '', 'Cộng đồng', '', 'publish', 'closed', 'closed', '', 'cong-dong', '', '', '2022-07-14 03:03:15', '2022-07-14 03:03:15', '', 0, 'http://twblog.local/?p=41', 4, 'nav_menu_item', '', 0),
(42, 1, '2022-07-14 02:55:05', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2022-07-14 02:55:05', '0000-00-00 00:00:00', '', 0, 'http://twblog.local/?p=42', 1, 'nav_menu_item', '', 0),
(43, 1, '2022-07-14 02:55:05', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2022-07-14 02:55:05', '0000-00-00 00:00:00', '', 0, 'http://twblog.local/?p=43', 1, 'nav_menu_item', '', 0),
(44, 1, '2022-07-14 03:03:15', '2022-07-14 02:56:13', '', 'Chăm sóc giấc ngủ', '', 'publish', 'closed', 'closed', '', 'cham-soc-giac-ngu', '', '', '2022-07-14 03:03:15', '2022-07-14 03:03:15', '', 0, 'http://twblog.local/?p=44', 5, 'nav_menu_item', '', 0),
(45, 1, '2022-07-14 03:03:15', '2022-07-14 02:56:13', '', 'Thể dục thể thao', '', 'publish', 'closed', 'closed', '', 'the-duc-the-thao', '', '', '2022-07-14 03:03:15', '2022-07-14 03:03:15', '', 0, 'http://twblog.local/?p=45', 6, 'nav_menu_item', '', 0),
(46, 1, '2022-07-14 03:03:15', '2022-07-14 03:03:15', '', 'Sức khỏe da liễu', '', 'publish', 'closed', 'closed', '', 'suc-khoe-da-lieu', '', '', '2022-07-14 03:03:15', '2022-07-14 03:03:15', '', 0, 'http://twblog.local/?p=46', 7, 'nav_menu_item', '', 0),
(47, 1, '2022-07-14 03:03:15', '2022-07-14 03:03:15', '', 'Mắt', '', 'publish', 'closed', 'closed', '', 'mat', '', '', '2022-07-14 03:03:15', '2022-07-14 03:03:15', '', 0, 'http://twblog.local/?p=47', 8, 'nav_menu_item', '', 0),
(48, 1, '2022-07-14 03:03:15', '2022-07-14 03:03:15', '', 'Sức khỏe', '', 'publish', 'closed', 'closed', '', 'suc-khoe', '', '', '2022-07-14 03:03:15', '2022-07-14 03:03:15', '', 0, 'http://twblog.local/?p=48', 9, 'nav_menu_item', '', 0),
(49, 1, '2022-07-18 08:40:15', '2022-07-18 08:40:15', '<!-- wp:paragraph -->\n<p>Nếu bạn đọc được một cuốn sách có nội dung hấp dẫn, đầy ý nghĩa thì bạn có thể dễ ngủ hơn khi bắt đầu nghiền ngẫm về những gì bạn đọc. Đọc sách trước khi ngủ sẽ giúp bạn không phải bận tâm đến những lo lắng, nghi ngờ và cảm giác bất lực – được xem là các dấu hiệu đặc trưng cho chứng lo lắng và trầm cảm.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Thông thường chúng ta chỉ uống nước khi cảm thấy khát hoặc khi tiết trời nóng bứt. Tuy nhiên, sự thật là bạn luôn phải uống đủ nước dù cho nhiệt độ môi trường bên ngoài như thế nào. Vậy mỗi ngày nên uống bao nhiêu nước? Những yếu tố nào giúp bạn quyết định lượng nước cần bổ sung hàng ngày? Hãy khám phá ngay những thông tin hữu ích được chia sẻ trong bài viết sau để chăm sóc sức khỏe tốt hơn.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Mỗi ngày nên uống bao nhiêu nước?</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Mỗi ngày nên uống bao nhiêu nước là vấn đề được khá nhiều người quan tâm. Thông thường, hầu hết những người khỏe mạnh đều cần bổ sung khoảng 6 đến 8 cốc nước (tương đương khoảng 1.5 – 2 lít) mỗi ngày. Đối với nam giới hoặc người hoạt động thể chất thường xuyên thì con số có thể cao hơn, đối tượng này thường cần bổ sung khoảng 2.7 – 3.7 lít nước mỗi ngày.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ngoài ra, với những người mắc một số bệnh lý như <a href=\"https://hellobacsi.com/suc-khoe-phu-nu/benh-tuyen-giap/benh-tuyen-giap/\">bệnh tuyến giáp</a>, các vấn đề liên quan đến thận, gan hoặc tim sẽ khiến cơ thể hấp thụ nhiều nước hơn. Bên cạnh đó, trong trường hợp bạn đang dùng thuốc như thuốc chống viêm không steroid (NSAID), thuốc giảm đau opioids hay một số loại <a href=\"https://hellobacsi.com/tam-ly-tam-than/tram-cam-roi-loan-cam-xuc/thuoc-chong-tram-cam-tot-nhat/\">thuốc chống trầm cảm</a> thì cũng sẽ khiến cơ thể giữ nhiều nước.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Do đó, vấn đề cần quan tâm là với những người thuộc nhóm đối tượng này thì mỗi ngày nên uống bao nhiêu nước sẽ phù hợp? Theo các chuyên gia thì không có một tiêu chuẩn cụ thể nào về việc nên bổ sung bao nhiêu nước mỗi ngày. Thay vào đó, việc uống nước nên được cá nhân hóa tùy thuộc vào tình trạng sức khỏe của mỗi người.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nếu không biết chắc chắn, bạn nên thảo luận với bác sĩ để được tư vấn chính xác về việc mỗi ngày nên uống bao nhiêu nước nhé.</p>\n<!-- /wp:paragraph -->', 'Lợi ích không ngờ của việc đọc sách trước khi ngủ', '', 'inherit', 'closed', 'closed', '', '14-autosave-v1', '', '', '2022-07-18 08:40:15', '2022-07-18 08:40:15', '', 14, 'http://twblog.local/?p=49', 0, 'revision', '', 0),
(50, 1, '2022-07-18 08:40:20', '2022-07-18 08:40:20', '', 'image', '', 'inherit', 'open', 'closed', '', 'image', '', '', '2022-07-18 08:40:20', '2022-07-18 08:40:20', '', 14, 'http://twblog.local/wp-content/uploads/2022/07/image.png', 0, 'attachment', 'image/png', 0),
(51, 1, '2022-07-18 08:40:21', '2022-07-18 08:40:21', '<!-- wp:paragraph -->\n<p>Nếu bạn đọc được một cuốn sách có nội dung hấp dẫn, đầy ý nghĩa thì bạn có thể dễ ngủ hơn khi bắt đầu nghiền ngẫm về những gì bạn đọc. Đọc sách trước khi ngủ sẽ giúp bạn không phải bận tâm đến những lo lắng, nghi ngờ và cảm giác bất lực – được xem là các dấu hiệu đặc trưng cho chứng lo lắng và trầm cảm.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Thông thường chúng ta chỉ uống nước khi cảm thấy khát hoặc khi tiết trời nóng bứt. Tuy nhiên, sự thật là bạn luôn phải uống đủ nước dù cho nhiệt độ môi trường bên ngoài như thế nào. Vậy mỗi ngày nên uống bao nhiêu nước? Những yếu tố nào giúp bạn quyết định lượng nước cần bổ sung hàng ngày? Hãy khám phá ngay những thông tin hữu ích được chia sẻ trong bài viết sau để chăm sóc sức khỏe tốt hơn.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Mỗi ngày nên uống bao nhiêu nước?</h2>\n<!-- /wp:heading -->\n\n<!-- wp:image {\"id\":50,\"sizeSlug\":\"full\",\"linkDestination\":\"media\"} -->\n<figure class=\"wp-block-image size-full\"><a href=\"http://twblog.local/wp-content/uploads/2022/07/image.png\"><img src=\"http://twblog.local/wp-content/uploads/2022/07/image.png\" alt=\"\" class=\"wp-image-50\"/></a></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Mỗi ngày nên uống bao nhiêu nước là vấn đề được khá nhiều người quan tâm. Thông thường, hầu hết những người khỏe mạnh đều cần bổ sung khoảng 6 đến 8 cốc nước (tương đương khoảng 1.5 – 2 lít) mỗi ngày. Đối với nam giới hoặc người hoạt động thể chất thường xuyên thì con số có thể cao hơn, đối tượng này thường cần bổ sung khoảng 2.7 – 3.7 lít nước mỗi ngày.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ngoài ra, với những người mắc một số bệnh lý như <a href=\"https://hellobacsi.com/suc-khoe-phu-nu/benh-tuyen-giap/benh-tuyen-giap/\">bệnh tuyến giáp</a>, các vấn đề liên quan đến thận, gan hoặc tim sẽ khiến cơ thể hấp thụ nhiều nước hơn. Bên cạnh đó, trong trường hợp bạn đang dùng thuốc như thuốc chống viêm không steroid (NSAID), thuốc giảm đau opioids hay một số loại <a href=\"https://hellobacsi.com/tam-ly-tam-than/tram-cam-roi-loan-cam-xuc/thuoc-chong-tram-cam-tot-nhat/\">thuốc chống trầm cảm</a> thì cũng sẽ khiến cơ thể giữ nhiều nước.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Do đó, vấn đề cần quan tâm là với những người thuộc nhóm đối tượng này thì mỗi ngày nên uống bao nhiêu nước sẽ phù hợp? Theo các chuyên gia thì không có một tiêu chuẩn cụ thể nào về việc nên bổ sung bao nhiêu nước mỗi ngày. Thay vào đó, việc uống nước nên được cá nhân hóa tùy thuộc vào tình trạng sức khỏe của mỗi người.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nếu không biết chắc chắn, bạn nên thảo luận với bác sĩ để được tư vấn chính xác về việc mỗi ngày nên uống bao nhiêu nước nhé.</p>\n<!-- /wp:paragraph -->', 'Lợi ích không ngờ của việc đọc sách trước khi ngủ', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2022-07-18 08:40:21', '2022-07-18 08:40:21', '', 14, 'http://twblog.local/?p=51', 0, 'revision', '', 0),
(52, 1, '2022-07-19 08:25:57', '2022-07-19 08:25:57', '', 'Giới thiệu', '', 'publish', 'closed', 'closed', '', 'gioi-thieu', '', '', '2022-07-19 08:25:59', '2022-07-19 08:25:59', '', 0, 'http://twblog.local/?page_id=52', 0, 'page', '', 0),
(53, 1, '2022-07-19 08:25:57', '2022-07-19 08:25:57', '', 'Giới thiệu', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2022-07-19 08:25:57', '2022-07-19 08:25:57', '', 52, 'http://twblog.local/?p=53', 0, 'revision', '', 0),
(56, 1, '2022-08-29 10:03:45', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2022-08-29 10:03:45', '0000-00-00 00:00:00', '', 0, 'http://twblog.local/?p=56', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_rank_math_analytics_objects`
--

CREATE TABLE `wp_rank_math_analytics_objects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `page` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `object_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `object_subtype` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `object_id` bigint(20) UNSIGNED NOT NULL,
  `primary_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_score` tinyint(4) NOT NULL DEFAULT 0,
  `page_score` tinyint(4) NOT NULL DEFAULT 0,
  `is_indexable` tinyint(1) NOT NULL DEFAULT 1,
  `schemas_in_use` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desktop_interactive` double DEFAULT 0,
  `desktop_pagescore` double DEFAULT 0,
  `mobile_interactive` double DEFAULT 0,
  `mobile_pagescore` double DEFAULT 0,
  `pagespeed_refreshed` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_rank_math_analytics_objects`
--

INSERT INTO `wp_rank_math_analytics_objects` (`id`, `created`, `title`, `page`, `object_type`, `object_subtype`, `object_id`, `primary_key`, `seo_score`, `page_score`, `is_indexable`, `schemas_in_use`, `desktop_interactive`, `desktop_pagescore`, `mobile_interactive`, `mobile_pagescore`, `pagespeed_refreshed`) VALUES
(1, '2022-07-13 18:58:19', '12 bài tập cho người đau lưng đơn giản, dễ áp dụng tại nhà', '/12-bai-tap-cho-nguoi-dau-lung-don-gian-de-ap-dung-tai-nha/', 'post', 'post', 31, '', 0, 0, 1, 'Article', 0, 0, 0, 0, '0000-00-00 00:00:00'),
(2, '2022-07-13 18:58:15', 'Tập thể dục xong buồn nôn do đâu? Làm sao để khắc phục?', '/tap-the-duc-xong-buon-non-do-dau-lam-sao-de-khac-phuc/', 'post', 'post', 29, '', 0, 0, 1, 'Article', 0, 0, 0, 0, '0000-00-00 00:00:00'),
(3, '2022-07-13 18:58:10', '9 tư thế yoga đẹp để chụp hình xinh lung linh', '/9-tu-the-yoga-dep-de-chup-hinh-xinh-lung-linh/', 'post', 'post', 25, '', 0, 0, 1, 'Article', 0, 0, 0, 0, '0000-00-00 00:00:00'),
(4, '2022-07-13 18:52:52', 'Đạp xe đi làm: Những điều nên làm để tránh bất tiện', '/dap-xe-di-lam-nhung-dieu-nen-lam-de-tranh-bat-tien/', 'post', 'post', 23, '', 0, 0, 1, 'Article', 0, 0, 0, 0, '0000-00-00 00:00:00'),
(5, '2022-07-13 18:52:41', 'Tại sao không nên ngồi bắt chéo chân?', '/tai-sao-khong-nen-ngoi-bat-cheo-chan/', 'post', 'post', 18, '', 0, 0, 1, 'Article', 0, 0, 0, 0, '0000-00-00 00:00:00'),
(6, '2022-07-18 01:40:21', 'Lợi ích không ngờ của việc đọc sách trước khi ngủ', '/loi-ich-khong-ngo-cua-viec-doc-sach-truoc-khi-ngu-2/', 'post', 'post', 14, '', 0, 0, 1, 'Article', 0, 0, 0, 0, '0000-00-00 00:00:00'),
(7, '2022-07-13 19:17:40', 'Lợi ích không ngờ của việc đọc sách trước khi ngủ', '/loi-ich-khong-ngo-cua-viec-doc-sach-truoc-khi-ngu/', 'post', 'post', 12, '', 0, 0, 1, 'Article', 0, 0, 0, 0, '0000-00-00 00:00:00'),
(8, '2022-07-13 19:03:40', 'Mắt nhạy cảm với ánh sáng ảnh hưởng giấc ngủ: Làm sao để khắc phục?', '/mat-nhay-cam-voi-anh-sang-anh-huong-giac-ngu-lam-sao-de-khac-phuc/', 'post', 'post', 10, '', 0, 0, 1, 'Article', 0, 0, 0, 0, '0000-00-00 00:00:00'),
(9, '2022-07-13 19:04:03', 'Uống sữa trước khi ngủ có tốt không?', '/uong-sua-truoc-khi-ngu-co-tot-khong/', 'post', 'post', 8, '', 0, 0, 1, 'Article', 0, 0, 0, 0, '0000-00-00 00:00:00'),
(10, '2022-07-07 19:27:00', 'Homepage', '/', 'post', 'page', 4, '', 0, 0, 1, 'Article', 0, 0, 0, 0, '0000-00-00 00:00:00'),
(11, '2022-07-05 23:44:04', 'Chào tất cả mọi người!', '/chao-moi-nguoi/', 'post', 'post', 1, '', 0, 0, 1, 'Article', 0, 0, 0, 0, '0000-00-00 00:00:00'),
(12, '2022-07-05 23:44:04', 'Trang Mẫu', '/trang mẫu/', 'post', 'page', 2, '', 0, 0, 1, 'Article', 0, 0, 0, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_rank_math_internal_links`
--

CREATE TABLE `wp_rank_math_internal_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `target_post_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_rank_math_internal_links`
--

INSERT INTO `wp_rank_math_internal_links` (`id`, `url`, `post_id`, `target_post_id`, `type`) VALUES
(1, 'https://hellobacsi.com/suc-khoe-phu-nu/benh-tuyen-giap/benh-tuyen-giap/', 14, 0, 'external'),
(2, 'https://hellobacsi.com/tam-ly-tam-than/tram-cam-roi-loan-cam-xuc/thuoc-chong-tram-cam-tot-nhat/', 14, 0, 'external'),
(3, 'https://hellobacsi.com/giac-ngu/giac-ngu-ngon/anh-sang-xanh-anh-huong-den-giac-ngu-nhu-the-nao/', 12, 0, 'external'),
(4, 'https://medlineplus.gov/ency/article/002332.htm', 8, 0, 'external'),
(5, 'https://hellobacsi.com/tam-ly-tam-than/6-cach-tang-cuong-serotonin-khong-dung-thuoc/', 8, 0, 'external'),
(6, 'http://wpold.local/wp-admin/', 2, 0, 'external');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_rank_math_internal_meta`
--

CREATE TABLE `wp_rank_math_internal_meta` (
  `object_id` bigint(20) UNSIGNED NOT NULL,
  `internal_link_count` int(10) UNSIGNED DEFAULT 0,
  `external_link_count` int(10) UNSIGNED DEFAULT 0,
  `incoming_link_count` int(10) UNSIGNED DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_rank_math_internal_meta`
--

INSERT INTO `wp_rank_math_internal_meta` (`object_id`, `internal_link_count`, `external_link_count`, `incoming_link_count`) VALUES
(1, 0, 0, 0),
(2, 0, 1, 0),
(4, 0, 0, 0),
(8, 0, 2, 0),
(10, 0, 0, 0),
(12, 0, 1, 0),
(14, 0, 2, 0),
(18, 0, 0, 0),
(23, 0, 0, 0),
(25, 0, 0, 0),
(29, 0, 0, 0),
(31, 0, 0, 0),
(52, 0, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Chưa được phân loại', 'khong-phan-loai', 0),
(2, 'twblog', 'twblog', 0),
(3, 'Chăm sóc giấc ngủ', 'cham-soc-giac-ngu', 0),
(4, 'Thể dục thể thao', 'the-duc-the-thao', 0),
(5, 'Thói quen lành mạnh', 'thoi-quen-lanh-manh', 0),
(6, 'Menu header', 'menu-header', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(5, 2, 0),
(8, 3, 0),
(10, 3, 0),
(12, 3, 0),
(14, 3, 0),
(18, 4, 0),
(23, 4, 0),
(25, 5, 0),
(29, 5, 0),
(31, 5, 0),
(37, 6, 0),
(39, 6, 0),
(40, 6, 0),
(41, 6, 0),
(44, 6, 0),
(45, 6, 0),
(46, 6, 0),
(47, 6, 0),
(48, 6, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'wp_theme', '', 0, 1),
(3, 3, 'category', '', 0, 4),
(4, 4, 'category', '', 0, 2),
(5, 5, 'category', '', 0, 3),
(6, 6, 'nav_menu', '', 0, 9);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp360_locks,wp390_widgets'),
(13, 1, 'show_welcome_panel', '0'),
(14, 1, 'session_tokens', 'a:1:{s:64:\"da033cae21ddba65c3456913b480d9f3a41da0654326614c08fd81d231e9f894\";a:4:{s:10:\"expiration\";i:1661940218;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36\";s:5:\"login\";i:1661767418;}}'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '56'),
(16, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(17, 1, 'closedpostboxes_dashboard', 'a:6:{i:0;s:26:\"rank_math_dashboard_widget\";i:1;s:21:\"dashboard_site_health\";i:2;s:19:\"dashboard_right_now\";i:3;s:18:\"dashboard_activity\";i:4;s:21:\"dashboard_quick_press\";i:5;s:17:\"dashboard_primary\";}'),
(18, 1, 'metaboxhidden_dashboard', 'a:0:{}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse'),
(20, 1, 'wp_user-settings-time', '1657703572'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(23, 1, 'nav_menu_recently_edited', '6'),
(24, 1, 'manageedit-postcolumnshidden', 'a:3:{i:0;s:0:\"\";i:1;s:15:\"rank_math_title\";i:2;s:21:\"rank_math_description\";}'),
(25, 1, 'manageedit-postcolumnshidden_default', '1'),
(26, 1, 'manageedit-pagecolumnshidden', 'a:3:{i:0;s:0:\"\";i:1;s:15:\"rank_math_title\";i:2;s:21:\"rank_math_description\";}'),
(27, 1, 'manageedit-pagecolumnshidden_default', '1'),
(28, 1, 'meta-box-order_page', 'a:2:{i:0;b:0;s:4:\"side\";s:38:\"submitdiv,rank_math_metabox_content_ai\";}'),
(29, 1, 'last_update', '1661767425');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BJxV6CILkZMvBAiY06UH4.hcCWo9XO0', 'admin', 'toanwordpresstheme@gmail.com', '', '2022-07-06 06:44:04', '', 0, 'admin');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `hook` (`hook`),
  ADD KEY `status` (`status`),
  ADD KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  ADD KEY `args` (`args`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `last_attempt_gmt` (`last_attempt_gmt`),
  ADD KEY `claim_id_status_scheduled_date_gmt` (`claim_id`,`status`,`scheduled_date_gmt`);

--
-- Chỉ mục cho bảng `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  ADD PRIMARY KEY (`claim_id`),
  ADD KEY `date_created_gmt` (`date_created_gmt`);

--
-- Chỉ mục cho bảng `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `slug` (`slug`(191));

--
-- Chỉ mục cho bảng `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `action_id` (`action_id`),
  ADD KEY `log_date_gmt` (`log_date_gmt`);

--
-- Chỉ mục cho bảng `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Chỉ mục cho bảng `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Chỉ mục cho bảng `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Chỉ mục cho bảng `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`),
  ADD KEY `post_name` (`post_name`(191));

--
-- Chỉ mục cho bảng `wp_rank_math_analytics_objects`
--
ALTER TABLE `wp_rank_math_analytics_objects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `analytics_object_page` (`page`(190));

--
-- Chỉ mục cho bảng `wp_rank_math_internal_links`
--
ALTER TABLE `wp_rank_math_internal_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link_direction` (`post_id`,`type`);

--
-- Chỉ mục cho bảng `wp_rank_math_internal_meta`
--
ALTER TABLE `wp_rank_math_internal_meta`
  ADD PRIMARY KEY (`object_id`);

--
-- Chỉ mục cho bảng `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Chỉ mục cho bảng `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Chỉ mục cho bảng `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Chỉ mục cho bảng `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT cho bảng `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  MODIFY `claim_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=399;

--
-- AUTO_INCREMENT cho bảng `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  MODIFY `group_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=970;

--
-- AUTO_INCREMENT cho bảng `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=239;

--
-- AUTO_INCREMENT cho bảng `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT cho bảng `wp_rank_math_analytics_objects`
--
ALTER TABLE `wp_rank_math_analytics_objects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `wp_rank_math_internal_links`
--
ALTER TABLE `wp_rank_math_internal_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
