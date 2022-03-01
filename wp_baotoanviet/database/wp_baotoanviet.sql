-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 04, 2019 lúc 04:57 PM
-- Phiên bản máy phục vụ: 10.3.16-MariaDB
-- Phiên bản PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `wp_baotoanviet`
--

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
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wp_baotoanviet', 'yes'),
(2, 'home', 'http://localhost/wp_baotoanviet', 'yes'),
(3, 'blogname', 'Công Ty Cổ Phần Bảo Toàn Việt', 'yes'),
(4, 'blogdescription', 'Một trang web mới sử dụng WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'minh.nhat.dev@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '1', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '51', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '1', 'yes'),
(23, 'date_format', 'j F, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:33:\"classic-editor/classic-editor.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:2;s:29:\"easy-wp-smtp/easy-wp-smtp.php\";i:3;s:40:\"wordpress-seo-premium/wp-seo-premium.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '6', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'wp_baotoanviet', 'yes'),
(41, 'stylesheet', 'wp_baotoanviet', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '44719', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '0', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '0', 'yes'),
(59, 'thumbnail_size_h', '0', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '0', 'yes'),
(62, 'medium_size_h', '0', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '0', 'yes'),
(65, 'large_size_h', '0', 'yes'),
(66, 'image_default_link_type', '', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:2:{s:33:\"classic-editor/classic-editor.php\";a:2:{i:0;s:14:\"Classic_Editor\";i:1;s:9:\"uninstall\";}s:29:\"easy-wp-smtp/easy-wp-smtp.php\";s:17:\"swpsmtp_uninstall\";}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '143', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'initial_db_version', '44719', 'yes'),
(94, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:20:\"wpseo_manage_options\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:22:\"wpseo_manage_redirects\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:13:\"wpseo_manager\";a:2:{s:4:\"name\";s:11:\"SEO Manager\";s:12:\"capabilities\";a:38:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;s:20:\"wpseo_manage_options\";b:1;s:22:\"wpseo_manage_redirects\";b:1;}}s:12:\"wpseo_editor\";a:2:{s:4:\"name\";s:10:\"SEO Editor\";s:12:\"capabilities\";a:37:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;s:22:\"wpseo_manage_redirects\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'vi', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'cron', 'a:7:{i:1575476113;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1575508513;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1575544661;a:2:{s:41:\"wpseo-premium-prominent-words-recalculate\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:19:\"wpseo-reindex-links\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1575551712;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1575551722;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1575551725;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(104, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'recovery_keys', 'a:0:{}', 'yes'),
(129, 'can_compress_scripts', '1', 'no'),
(142, 'theme_mods_twentynineteen', 'a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1573218932;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(143, 'current_theme', 'baotoanviet', 'yes'),
(144, 'theme_mods_wp_baotoanviet', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:7:\"sp-menu\";i:24;s:12:\"primary-menu\";i:29;s:8:\"cat-menu\";i:30;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(145, 'theme_switched', '', 'yes'),
(165, 'recently_activated', 'a:0:{}', 'yes'),
(166, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.1.4\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1573295157;s:7:\"version\";s:5:\"5.1.4\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(169, 'swpsmtp_options', 'a:8:{s:16:\"from_email_field\";s:22:\"dienthangbac@gmail.com\";s:15:\"from_name_field\";s:7:\"contact\";s:23:\"force_from_name_replace\";b:0;s:13:\"smtp_settings\";a:9:{s:4:\"host\";s:14:\"smtp.gmail.com\";s:15:\"type_encryption\";s:3:\"ssl\";s:4:\"port\";s:3:\"465\";s:13:\"autentication\";s:3:\"yes\";s:8:\"username\";s:23:\"minh.nhat.dev@gmail.com\";s:8:\"password\";s:24:\"bnllZXpxZHJpcmltc3V1dQ==\";s:12:\"enable_debug\";b:0;s:12:\"insecure_ssl\";b:0;s:12:\"encrypt_pass\";b:0;}s:15:\"allowed_domains\";s:12:\"bG9jYWxob3N0\";s:14:\"reply_to_email\";s:22:\"dienthangbac@gmail.com\";s:17:\"email_ignore_list\";s:0:\"\";s:19:\"enable_domain_check\";b:0;}', 'yes'),
(208, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(250, 'wpseo', 'a:22:{s:15:\"ms_defaults_set\";b:0;s:7:\"version\";s:4:\"11.7\";s:20:\"disableadvanced_meta\";b:1;s:19:\"onpage_indexability\";b:1;s:11:\"baiduverify\";s:0:\"\";s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";s:0:\"\";s:16:\"environment_type\";s:0:\"\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:18:\"enable_xml_sitemap\";b:1;s:24:\"enable_text_link_counter\";b:1;s:22:\"show_onboarding_notice\";b:1;s:18:\"first_activated_on\";b:0;s:13:\"myyoast-oauth\";b:0;s:23:\"enable_metabox_insights\";b:0;s:23:\"enable_link_suggestions\";b:0;}', 'yes'),
(251, 'wpseo_titles', 'a:103:{s:10:\"title_test\";i:0;s:17:\"forcerewritetitle\";b:0;s:9:\"separator\";s:8:\"sc-raquo\";s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:41:\"%%name%%, Author at %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:63:\"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:35:\"Page not found %%sep%% %%sitename%%\";s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:53:\"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.\";s:20:\"noindex-author-wpseo\";b:0;s:28:\"noindex-author-noposts-wpseo\";b:1;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:1;s:18:\"disable-attachment\";b:1;s:23:\"is-media-purge-relevant\";b:0;s:20:\"breadcrumbs-404crumb\";s:25:\"Error 404: Page not found\";s:29:\"breadcrumbs-display-blog-page\";b:0;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:12:\"Archives for\";s:18:\"breadcrumbs-enable\";b:1;s:16:\"breadcrumbs-home\";s:47:\"<i class=\"ion-ios-home\" aria-hidden=\"true\"></i>\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:16:\"You searched for\";s:15:\"breadcrumbs-sep\";s:0:\"\";s:12:\"website_name\";s:0:\"\";s:11:\"person_name\";s:0:\"\";s:11:\"person_logo\";s:0:\"\";s:14:\"person_logo_id\";i:0;s:22:\"alternate_website_name\";s:0:\"\";s:12:\"company_logo\";s:0:\"\";s:15:\"company_logo_id\";i:0;s:12:\"company_name\";s:0:\"\";s:17:\"company_or_person\";s:7:\"company\";s:25:\"company_or_person_user_id\";b:0;s:17:\"stripcategorybase\";b:1;s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:9:\"%%title%%\";s:12:\"noindex-post\";b:0;s:13:\"showdate-post\";b:1;s:23:\"display-metabox-pt-post\";b:1;s:23:\"post_types-post-maintax\";i:0;s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:13:\"showdate-page\";b:0;s:23:\"display-metabox-pt-page\";b:1;s:23:\"post_types-page-maintax\";i:0;s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:19:\"showdate-attachment\";b:0;s:29:\"display-metabox-pt-attachment\";b:1;s:29:\"post_types-attachment-maintax\";i:0;s:13:\"title-product\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:16:\"metadesc-product\";s:0:\"\";s:15:\"noindex-product\";b:0;s:16:\"showdate-product\";b:0;s:26:\"display-metabox-pt-product\";b:1;s:26:\"post_types-product-maintax\";s:8:\"category\";s:23:\"title-ptarchive-product\";s:51:\"%%pt_plural%% Archive %%page%% %%sep%% %%sitename%%\";s:26:\"metadesc-ptarchive-product\";s:0:\"\";s:25:\"bctitle-ptarchive-product\";s:0:\"\";s:25:\"noindex-ptarchive-product\";b:0;s:12:\"title-banner\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:15:\"metadesc-banner\";s:0:\"\";s:14:\"noindex-banner\";b:0;s:15:\"showdate-banner\";b:0;s:25:\"display-metabox-pt-banner\";b:1;s:25:\"post_types-banner-maintax\";i:0;s:22:\"title-ptarchive-banner\";s:51:\"%%pt_plural%% Archive %%page%% %%sep%% %%sitename%%\";s:25:\"metadesc-ptarchive-banner\";s:0:\"\";s:24:\"bctitle-ptarchive-banner\";s:0:\"\";s:24:\"noindex-ptarchive-banner\";b:0;s:18:\"title-tax-category\";s:35:\"%%term_title%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:28:\"display-metabox-tax-category\";b:1;s:20:\"noindex-tax-category\";b:0;s:18:\"title-tax-post_tag\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:28:\"display-metabox-tax-post_tag\";b:1;s:20:\"noindex-tax-post_tag\";b:0;s:21:\"title-tax-post_format\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:31:\"display-metabox-tax-post_format\";b:0;s:23:\"noindex-tax-post_format\";b:1;s:22:\"title-tax-categorypost\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:25:\"metadesc-tax-categorypost\";s:0:\"\";s:32:\"display-metabox-tax-categorypost\";b:1;s:24:\"noindex-tax-categorypost\";b:0;s:30:\"taxonomy-categorypost-ptparent\";i:0;s:23:\"page-analyse-extra-post\";s:0:\"\";s:23:\"page-analyse-extra-page\";s:0:\"\";s:26:\"page-analyse-extra-product\";s:0:\"\";s:25:\"page-analyse-extra-banner\";s:0:\"\";s:26:\"taxonomy-category-ptparent\";s:1:\"0\";s:26:\"taxonomy-post_tag-ptparent\";s:1:\"0\";s:29:\"taxonomy-post_format-ptparent\";s:1:\"0\";}', 'yes'),
(252, 'wpseo_social', 'a:19:{s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:19:\"og_default_image_id\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:21:\"og_frontpage_image_id\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:19:\"summary_large_image\";s:11:\"youtube_url\";s:0:\"\";s:13:\"wikipedia_url\";s:0:\"\";s:10:\"fbadminapp\";s:0:\"\";}', 'yes'),
(254, '_transient_timeout_wpseo_link_table_inaccessible', '1604920661', 'no'),
(255, '_transient_wpseo_link_table_inaccessible', '0', 'no'),
(256, '_transient_timeout_wpseo_meta_table_inaccessible', '1604920661', 'no'),
(257, '_transient_wpseo_meta_table_inaccessible', '0', 'no'),
(259, 'wpseo_current_version', '16', 'no'),
(260, 'wpseo_premium_version', '11.7', 'yes'),
(301, 'smtp_test_mail', 'a:3:{s:10:\"swpsmtp_to\";s:22:\"dienthangbac@gmail.com\";s:15:\"swpsmtp_subject\";s:9:\"test mail\";s:15:\"swpsmtp_message\";s:6:\"ádada\";}', 'yes'),
(340, 'wpseo-premium-redirects-base', 'a:6:{i:0;a:4:{s:6:\"origin\";s:22:\"wp_baotoanviet/lien-he\";s:3:\"url\";s:31:\"wp_baotoanviet/noi-dung-lien-he\";s:4:\"type\";i:301;s:6:\"format\";s:5:\"plain\";}i:1;a:4:{s:6:\"origin\";s:27:\"wp_baotoanviet/form-lien-he\";s:3:\"url\";s:22:\"wp_baotoanviet/lien-he\";s:4:\"type\";i:301;s:6:\"format\";s:5:\"plain\";}i:13;a:4:{s:6:\"origin\";s:39:\"wp_baotoanviet/category/khong-phan-loai\";s:3:\"url\";s:27:\"wp_baotoanviet/category/aaa\";s:4:\"type\";i:301;s:6:\"format\";s:5:\"plain\";}i:14;a:4:{s:6:\"origin\";s:34:\"wp_baotoanviet/bo-chuyen-doi-quang\";s:3:\"url\";s:29:\"wp_baotoanviet/chua-phan-loai\";s:4:\"type\";i:301;s:6:\"format\";s:5:\"plain\";}i:15;a:4:{s:6:\"origin\";s:29:\"wp_baotoanviet/chua-phan-loai\";s:3:\"url\";s:44:\"wp_baotoanviet/thiet-bi-quang/chua-phan-loai\";s:4:\"type\";i:301;s:6:\"format\";s:5:\"plain\";}i:16;a:4:{s:6:\"origin\";s:44:\"wp_baotoanviet/thiet-bi-quang/chua-phan-loai\";s:3:\"url\";s:29:\"wp_baotoanviet/chua-phan-loai\";s:4:\"type\";i:301;s:6:\"format\";s:5:\"plain\";}}', 'no'),
(341, 'wpseo-premium-redirects-export-plain', 'a:6:{s:22:\"wp_baotoanviet/lien-he\";a:2:{s:3:\"url\";s:31:\"wp_baotoanviet/noi-dung-lien-he\";s:4:\"type\";i:301;}s:27:\"wp_baotoanviet/form-lien-he\";a:2:{s:3:\"url\";s:22:\"wp_baotoanviet/lien-he\";s:4:\"type\";i:301;}s:39:\"wp_baotoanviet/category/khong-phan-loai\";a:2:{s:3:\"url\";s:27:\"wp_baotoanviet/category/aaa\";s:4:\"type\";i:301;}s:34:\"wp_baotoanviet/bo-chuyen-doi-quang\";a:2:{s:3:\"url\";s:29:\"wp_baotoanviet/chua-phan-loai\";s:4:\"type\";i:301;}s:29:\"wp_baotoanviet/chua-phan-loai\";a:2:{s:3:\"url\";s:44:\"wp_baotoanviet/thiet-bi-quang/chua-phan-loai\";s:4:\"type\";i:301;}s:44:\"wp_baotoanviet/thiet-bi-quang/chua-phan-loai\";a:2:{s:3:\"url\";s:29:\"wp_baotoanviet/chua-phan-loai\";s:4:\"type\";i:301;}}', 'no'),
(342, 'wpseo-premium-redirects-export-regex', 'a:0:{}', 'no'),
(356, 'recovery_mode_email_last_sent', '1574395211', 'yes'),
(538, 'categorya_children', 'a:0:{}', 'yes'),
(577, 'categorypost_children', 'a:1:{i:45;a:3:{i:0;i:46;i:1;i:47;i:2;i:48;}}', 'yes'),
(594, 'wpseo_taxonomy_meta', 'a:1:{s:8:\"category\";a:3:{i:1;a:2:{s:13:\"wpseo_linkdex\";s:2:\"32\";s:19:\"wpseo_content_score\";s:2:\"30\";}i:6;a:2:{s:13:\"wpseo_linkdex\";s:2:\"36\";s:19:\"wpseo_content_score\";s:2:\"30\";}i:51;a:2:{s:13:\"wpseo_linkdex\";s:2:\"32\";s:19:\"wpseo_content_score\";s:2:\"30\";}}}', 'yes'),
(596, 'classic-editor-replace', 'classic', 'yes'),
(597, 'classic-editor-allow-users', 'disallow', 'yes'),
(688, 'hour_option', '0702503009', 'yes'),
(689, 'minute_option', '0702503008', 'yes'),
(690, 'second_option', '', 'yes'),
(694, 'phone_main_option', '0335866266', 'yes'),
(695, 'phone_sub_option', '0345666118', 'yes'),
(894, 'rewrite_rules', 'a:178:{s:19:\"sitemap_index\\.xml$\";s:19:\"index.php?sitemap=1\";s:31:\"([^/]+?)-sitemap([0-9]+)?\\.xml$\";s:51:\"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]\";s:24:\"([a-z]+)?-?sitemap\\.xsl$\";s:39:\"index.php?yoast-sitemap-xsl=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:10:\"product/?$\";s:27:\"index.php?post_type=product\";s:40:\"product/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:35:\"product/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:27:\"product/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:9:\"banner/?$\";s:26:\"index.php?post_type=banner\";s:39:\"banner/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=banner&feed=$matches[1]\";s:34:\"banner/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=banner&feed=$matches[1]\";s:26:\"banner/page/([0-9]{1,})/?$\";s:44:\"index.php?post_type=banner&paged=$matches[1]\";s:74:\"(thiet-bi-quang/bo-chuyen-doi-quang)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:57:\"(thiet-bi-quang/bo-chuyen-doi-quang)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:39:\"(thiet-bi-quang/bo-chuyen-doi-quang)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:101:\"(thiet-bi-quang/bo-chuyen-doi-quang/bo-chuyen-doi-quang-10-100)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:84:\"(thiet-bi-quang/bo-chuyen-doi-quang/bo-chuyen-doi-quang-10-100)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:66:\"(thiet-bi-quang/bo-chuyen-doi-quang/bo-chuyen-doi-quang-10-100)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:105:\"(thiet-bi-quang/bo-chuyen-doi-quang/bo-chuyen-doi-quang-10-100-100)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:88:\"(thiet-bi-quang/bo-chuyen-doi-quang/bo-chuyen-doi-quang-10-100-100)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:70:\"(thiet-bi-quang/bo-chuyen-doi-quang/bo-chuyen-doi-quang-10-100-100)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:102:\"(thiet-bi-quang/bo-chuyen-doi-quang/bo-chuyen-doi-rs232-485-422)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:85:\"(thiet-bi-quang/bo-chuyen-doi-quang/bo-chuyen-doi-rs232-485-422)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:67:\"(thiet-bi-quang/bo-chuyen-doi-quang/bo-chuyen-doi-rs232-485-422)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:86:\"(thiet-bi-quang/day-nhay-quang/day-han-quang-fc)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:69:\"(thiet-bi-quang/day-nhay-quang/day-han-quang-fc)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:51:\"(thiet-bi-quang/day-nhay-quang/day-han-quang-fc)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:86:\"(thiet-bi-quang/day-nhay-quang/day-han-quang-lc)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:69:\"(thiet-bi-quang/day-nhay-quang/day-han-quang-lc)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:51:\"(thiet-bi-quang/day-nhay-quang/day-han-quang-lc)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:69:\"(thiet-bi-quang/day-nhay-quang)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:52:\"(thiet-bi-quang/day-nhay-quang)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:34:\"(thiet-bi-quang/day-nhay-quang)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:84:\"(thiet-bi-quang/phu-kien-quang/khay-noi-quang)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:67:\"(thiet-bi-quang/phu-kien-quang/khay-noi-quang)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:49:\"(thiet-bi-quang/phu-kien-quang/khay-noi-quang)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:69:\"(thiet-bi-quang/phu-kien-quang)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:52:\"(thiet-bi-quang/phu-kien-quang)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:34:\"(thiet-bi-quang/phu-kien-quang)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:83:\"(thiet-bi-quang/phu-kien-quang/suy-hao-quang)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:66:\"(thiet-bi-quang/phu-kien-quang/suy-hao-quang)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:48:\"(thiet-bi-quang/phu-kien-quang/suy-hao-quang)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:54:\"(thiet-bi-cisco)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:37:\"(thiet-bi-cisco)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:19:\"(thiet-bi-cisco)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:53:\"(thiet-bi-mang)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:36:\"(thiet-bi-mang)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:18:\"(thiet-bi-mang)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:54:\"(thiet-bi-quang)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:37:\"(thiet-bi-quang)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:19:\"(thiet-bi-quang)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:55:\"(tu-mang-unirack)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:38:\"(tu-mang-unirack)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:20:\"(tu-mang-unirack)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:14:\"category/(.+)$\";s:45:\"index.php?wpseo_category_redirect=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:35:\"product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:48:\"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:43:\"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:36:\"product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:32:\"product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"banner/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"banner/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"banner/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"banner/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"banner/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"banner/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"banner/([^/]+)/embed/?$\";s:39:\"index.php?banner=$matches[1]&embed=true\";s:27:\"banner/([^/]+)/trackback/?$\";s:33:\"index.php?banner=$matches[1]&tb=1\";s:47:\"banner/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?banner=$matches[1]&feed=$matches[2]\";s:42:\"banner/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?banner=$matches[1]&feed=$matches[2]\";s:35:\"banner/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?banner=$matches[1]&paged=$matches[2]\";s:42:\"banner/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?banner=$matches[1]&cpage=$matches[2]\";s:31:\"banner/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?banner=$matches[1]&page=$matches[2]\";s:23:\"banner/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"banner/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"banner/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"banner/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"banner/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"banner/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"categorypost/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?categorypost=$matches[1]&feed=$matches[2]\";s:48:\"categorypost/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?categorypost=$matches[1]&feed=$matches[2]\";s:29:\"categorypost/([^/]+)/embed/?$\";s:45:\"index.php?categorypost=$matches[1]&embed=true\";s:41:\"categorypost/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?categorypost=$matches[1]&paged=$matches[2]\";s:23:\"categorypost/([^/]+)/?$\";s:34:\"index.php?categorypost=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(900, 'category_children', 'a:4:{i:51;a:3:{i:0;i:52;i:1;i:53;i:2;i:54;}i:52;a:3:{i:0;i:55;i:1;i:56;i:2;i:57;}i:54;a:2:{i:0;i:58;i:1;i:59;}i:53;a:2:{i:0;i:60;i:1;i:61;}}', 'yes'),
(925, '_site_transient_timeout_theme_roots', '1575469038', 'no'),
(926, '_site_transient_theme_roots', 'a:1:{s:14:\"wp_baotoanviet\";s:7:\"/themes\";}', 'no'),
(928, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:3:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:60:\"https://downloads.wordpress.org/release/vi/wordpress-5.3.zip\";s:6:\"locale\";s:2:\"vi\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:60:\"https://downloads.wordpress.org/release/vi/wordpress-5.3.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.3\";s:7:\"version\";s:3:\"5.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.3.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.3-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.3-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.3\";s:7:\"version\";s:3:\"5.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.3.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.3-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.3-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.3\";s:7:\"version\";s:3:\"5.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1575467241;s:15:\"version_checked\";s:5:\"5.2.4\";s:12:\"translations\";a:0:{}}', 'no'),
(929, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1575467242;s:7:\"checked\";a:1:{s:14:\"wp_baotoanviet\";s:0:\"\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(930, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1575467243;s:7:\"checked\";a:4:{s:33:\"classic-editor/classic-editor.php\";s:3:\"1.5\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.1.4\";s:29:\"easy-wp-smtp/easy-wp-smtp.php\";s:7:\"1.3.9.1\";s:40:\"wordpress-seo-premium/wp-seo-premium.php\";s:4:\"11.7\";}s:8:\"response\";a:1:{s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.1.6\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.3\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:4:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:14:\"classic-editor\";s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:3:\"1.5\";s:7:\"updated\";s:19:\"2019-05-02 05:32:09\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/translation/plugin/classic-editor/1.5/vi.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:14:\"contact-form-7\";s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"5.1.4\";s:7:\"updated\";s:19:\"2019-09-08 10:17:58\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/plugin/contact-form-7/5.1.4/vi.zip\";s:10:\"autoupdate\";b:1;}i:2;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:12:\"easy-wp-smtp\";s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"1.3.1\";s:7:\"updated\";s:19:\"2017-11-26 16:22:30\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/translation/plugin/easy-wp-smtp/1.3.1/vi.zip\";s:10:\"autoupdate\";b:1;}i:3;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:13:\"wordpress-seo\";s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:6:\"12.6.2\";s:7:\"updated\";s:19:\"2019-08-01 05:00:43\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/plugin/wordpress-seo/12.6.2/vi.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:3:{s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}s:29:\"easy-wp-smtp/easy-wp-smtp.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:26:\"w.org/plugins/easy-wp-smtp\";s:4:\"slug\";s:12:\"easy-wp-smtp\";s:6:\"plugin\";s:29:\"easy-wp-smtp/easy-wp-smtp.php\";s:11:\"new_version\";s:7:\"1.3.9.1\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/easy-wp-smtp/\";s:7:\"package\";s:55:\"https://downloads.wordpress.org/plugin/easy-wp-smtp.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/easy-wp-smtp/assets/icon-128x128.png?rev=1242044\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:67:\"https://ps.w.org/easy-wp-smtp/assets/banner-772x250.png?rev=1650323\";}s:11:\"banners_rtl\";a:0:{}}s:24:\"wordpress-seo/wp-seo.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:27:\"w.org/plugins/wordpress-seo\";s:4:\"slug\";s:13:\"wordpress-seo\";s:6:\"plugin\";s:24:\"wordpress-seo/wp-seo.php\";s:11:\"new_version\";s:6:\"12.6.2\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wordpress-seo/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/wordpress-seo.12.6.2.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:66:\"https://ps.w.org/wordpress-seo/assets/icon-256x256.png?rev=1834347\";s:2:\"1x\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=1946641\";s:3:\"svg\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=1946641\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=1843435\";s:2:\"1x\";s:68:\"https://ps.w.org/wordpress-seo/assets/banner-772x250.png?rev=1843435\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=1843435\";s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-seo/assets/banner-772x250-rtl.png?rev=1843435\";}}}}', 'no'),
(932, '_transient_timeout_easy_wp_smtp_sd_code', '1575518200', 'no'),
(933, '_transient_easy_wp_smtp_sd_code', '43bc46a35737d97f69baa3efc98aaa1f', 'no'),
(934, '_site_transient_timeout_browser_29729dd06001ec3e2f1c2e07501ada47', '1576075520', 'no'),
(935, '_site_transient_browser_29729dd06001ec3e2f1c2e07501ada47', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"77.0.3865.120\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(936, '_site_transient_timeout_php_check_f0b6411b8c82dcf39302e5312c1fbd33', '1576075520', 'no'),
(937, '_site_transient_php_check_f0b6411b8c82dcf39302e5312c1fbd33', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(940, '_site_transient_timeout_available_translations', '1575481533', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(941, '_site_transient_available_translations', 'a:119:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-11-06 08:13:24\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.4/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-22 22:33:28\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.4/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.7/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-22 18:59:07\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-12 20:34:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-10-29 07:54:22\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.9.12/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-11-09 13:59:01\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:22:\"Продължение\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:6:\"4.8.11\";s:7:\"updated\";s:19:\"2017-10-01 12:57:10\";s:12:\"english_name\";s:20:\"Bengali (Bangladesh)\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.8.11/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:23:\"এগিয়ে চল.\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-11-12 07:38:44\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.4/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"མུ་མཐུད།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-25 20:23:36\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-20 06:18:47\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.4/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-28 19:06:07\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-22 10:34:50\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.4/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-11-06 07:19:00\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Forts&#230;t\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-15 07:07:34\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Fortfahren\";}}s:5:\"de_AT\";a:8:{s:8:\"language\";s:5:\"de_AT\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-11-05 22:26:10\";s:12:\"english_name\";s:16:\"German (Austria)\";s:11:\"native_name\";s:21:\"Deutsch (Österreich)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/de_AT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-15 07:08:52\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/core/5.2.4/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-19 15:09:43\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Fortfahren\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-19 15:10:06\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/5.2.4/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Fortfahren\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-11-13 12:22:13\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.4/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-20 22:32:55\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:5:\"5.1.3\";s:7:\"updated\";s:19:\"2019-06-06 15:48:01\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.1.3/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-19 14:36:29\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-20 00:26:02\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-20 22:33:08\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-06-20 20:46:03\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.3/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-11-17 18:21:18\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-19 23:07:29\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:5:\"5.1.3\";s:7:\"updated\";s:19:\"2019-11-19 18:25:41\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.1.3/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:3:\"5.1\";s:7:\"updated\";s:19:\"2019-03-02 06:35:01\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.1/es_GT.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:3:\"5.0\";s:7:\"updated\";s:19:\"2018-12-06 21:26:01\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:22:\"Español de Costa Rica\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.0/es_CR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-05-23 02:23:28\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.12/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-09 09:36:22\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-23 13:47:59\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-07-22 16:47:50\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/es_CL.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:9:\"5.0-beta3\";s:7:\"updated\";s:19:\"2018-11-28 16:04:33\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.0-beta3/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-12-09 21:12:23\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.2/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-26 11:08:21\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-22 14:09:21\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.4/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-11-12 15:46:57\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-01-31 11:16:06\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-11-13 10:59:12\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:3:\"fur\";a:8:{s:8:\"language\";s:3:\"fur\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2018-01-29 17:32:35\";s:12:\"english_name\";s:8:\"Friulian\";s:11:\"native_name\";s:8:\"Friulian\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.6/fur.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"fur\";i:3;s:3:\"fur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-19 22:06:57\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-14 12:33:48\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"ચાલુ રાખવું\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:5:\"4.4.2\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-11-05 14:00:58\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"להמשיך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:5:\"4.9.7\";s:7:\"updated\";s:19:\"2018-06-17 09:33:44\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.7/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"जारी\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-28 08:31:37\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.4/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:3:\"hsb\";a:8:{s:8:\"language\";s:3:\"hsb\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-11-09 22:16:56\";s:12:\"english_name\";s:13:\"Upper Sorbian\";s:11:\"native_name\";s:17:\"Hornjoserbšćina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.2.4/hsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"hsb\";i:3;s:3:\"hsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:4:\"Dale\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"5.1.1\";s:7:\"updated\";s:19:\"2019-03-19 14:36:40\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.1.1/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Tovább\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-07-28 13:16:13\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:6:\"4.7.11\";s:7:\"updated\";s:19:\"2018-09-20 11:13:37\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.7.11/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-27 08:31:31\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-11-12 03:38:48\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.4/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"続ける\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-24 13:53:29\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nutugne\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:5:\"5.1.3\";s:7:\"updated\";s:19:\"2019-11-04 08:57:25\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.1.3/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-21 14:15:57\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.8/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:2:\"kk\";a:8:{s:8:\"language\";s:2:\"kk\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-12 08:08:32\";s:12:\"english_name\";s:6:\"Kazakh\";s:11:\"native_name\";s:19:\"Қазақ тілі\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.5/kk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kk\";i:2;s:3:\"kaz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Жалғастыру\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-09 07:34:10\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.0.3/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:2:\"kn\";a:8:{s:8:\"language\";s:2:\"kn\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-12-04 12:22:34\";s:12:\"english_name\";s:7:\"Kannada\";s:11:\"native_name\";s:15:\"ಕನ್ನಡ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.12/kn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kn\";i:2;s:3:\"kan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"ಮುಂದುವರೆಸಿ\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-11-05 01:54:57\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"4.9.9\";s:7:\"updated\";s:19:\"2018-12-18 14:32:44\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.9/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"ຕໍ່\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-19 19:23:46\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:6:\"4.7.15\";s:7:\"updated\";s:19:\"2019-05-10 10:24:08\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.15/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-09-08 12:57:25\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.3/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:43:32\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-12 07:29:35\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"Үргэлжлүүлэх\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:6:\"4.8.11\";s:7:\"updated\";s:19:\"2018-02-13 07:38:55\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.11/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-30 20:27:25\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-26 15:57:42\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.20/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ေဆာင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-11-05 14:59:03\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-27 10:30:26\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"जारीराख्नु \";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-27 08:50:23\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-25 09:24:54\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-25 09:26:04\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/5.2.4/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-24 08:39:27\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.3/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:7:\"Punjabi\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-29 19:02:29\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-29 22:19:48\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.1.20/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"دوام\";}}s:5:\"pt_AO\";a:8:{s:8:\"language\";s:5:\"pt_AO\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-20 09:41:26\";s:12:\"english_name\";s:19:\"Portuguese (Angola)\";s:11:\"native_name\";s:20:\"Português de Angola\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/pt_AO.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-11-30 04:01:37\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-07-02 07:58:03\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/5.2.3/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-19 15:13:04\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-11-22 09:34:18\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-19 14:39:35\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-11-15 09:18:40\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:3:\"skr\";a:8:{s:8:\"language\";s:3:\"skr\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-06-26 11:40:37\";s:12:\"english_name\";s:7:\"Saraiki\";s:11:\"native_name\";s:14:\"سرائیکی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.2.3/skr.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"skr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"جاری رکھو\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2018-01-04 13:33:13\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Nadaljujte\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-20 12:34:38\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.4/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-15 10:03:57\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-19 13:41:32\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:2:\"sw\";a:8:{s:8:\"language\";s:2:\"sw\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-22 00:19:41\";s:12:\"english_name\";s:7:\"Swahili\";s:11:\"native_name\";s:9:\"Kiswahili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.4/sw.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sw\";i:2;s:3:\"swa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Endelea\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-19 08:19:37\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.4/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-30 02:38:08\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-11-04 12:32:04\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-12 12:31:53\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:16:\"ئۇيغۇرچە\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-16 10:31:10\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.4/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:5:\"5.1.3\";s:7:\"updated\";s:19:\"2019-03-31 10:39:40\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.1.3/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-23 12:32:40\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.3/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-23 07:14:52\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.4/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-11-12 03:14:27\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-01 15:59:49\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:16:\"香港中文版	\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-11-14 00:33:57\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}}', 'no'),
(942, '_transient_timeout_c4cf71c30959782cee8fe845d05ddf48', '1575557134', 'no'),
(943, '_transient_c4cf71c30959782cee8fe845d05ddf48', 'a:6:{s:4:\"name\";s:0:\"\";s:5:\"email\";s:23:\"minh.nhat.dev@gmail.com\";s:17:\"WordPress Version\";s:5:\"5.2.4\";s:6:\"Server\";s:207:\"<table><tr><td>IP</td><td>127.0.0.1</td></tr><tr><td>Hostname</td><td>MINHNHAT</td></tr><tr><td>OS</td><td>Windows NT</td></tr><tr><td>PHP</td><td>7.3.6</td></tr><tr><td>CURL</td><td>7.64.0</td></tr></table>\";s:71:\"<a href=\"http://localhost/wp_baotoanviet/wp-admin/themes.php\">Theme</a>\";s:85:\"<a href=\"https://wordpress.org/themes/wp_baotoanviet/\">baotoanviet</a> v by Minh Nhat\";s:74:\"<a href=\"http://localhost/wp_baotoanviet/wp-admin/plugins.php\">Plugins</a>\";s:386:\"<a href=\"https://wordpress.org/plugins/classic-editor/\">Classic Editor</a> v1.5<br/><i class=\"icon-close1\"></i> <a href=\"https://contactform7.com/\">Contact Form 7</a> v5.1.4<br/><a href=\"https://wp-ecommerce.net/easy-wordpress-smtp-send-emails-from-your-wordpress-site-using-a-smtp-server-2197\">Easy WP SMTP</a> v1.3.9.1<br/><a href=\"https://yoa.st/2jc\">Yoast SEO Premium</a> v11.7<br/>\";}', 'no');

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
(2, 3, '_wp_page_template', 'default'),
(3, 2, '_wp_trash_meta_status', 'publish'),
(4, 2, '_wp_trash_meta_time', '1573295134'),
(5, 2, '_wp_desired_post_slug', 'Trang mẫu'),
(6, 3, '_wp_trash_meta_status', 'draft'),
(7, 3, '_wp_trash_meta_time', '1573295139'),
(8, 3, '_wp_desired_post_slug', 'chinh-sach-bao-mat'),
(10, 8, '_form', '<label> Họ và tên:\n    [text* your-name] </label>\n\n<label> Email:\n    [email* your-email] </label>\n\n<label> Số điện thoại\n    [tel tel-755] </label>\n\n<label> Tiêu đề\n    [text your-subject] </label>\n\n\n<label> Nội dung\n    [textarea your-message] </label>\n\n[submit \"Gửi\"]'),
(11, 8, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:56:\"Công Ty Cổ Phần Bảo Toàn Việt \"[your-subject]\"\";s:6:\"sender\";s:65:\"Công Ty Cổ Phần Bảo Toàn Việt <minh.nhat.dev@gmail.com>\";s:9:\"recipient\";s:23:\"minh.nhat.dev@gmail.com\";s:4:\"body\";s:209:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Công Ty Cổ Phần Bảo Toàn Việt (//localhost:3000/wp_baotoanviet)\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(12, 8, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:56:\"Công Ty Cổ Phần Bảo Toàn Việt \"[your-subject]\"\";s:6:\"sender\";s:65:\"Công Ty Cổ Phần Bảo Toàn Việt <minh.nhat.dev@gmail.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:151:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Công Ty Cổ Phần Bảo Toàn Việt (//localhost:3000/wp_baotoanviet)\";s:18:\"additional_headers\";s:33:\"Reply-To: minh.nhat.dev@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(13, 8, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:92:\"Cảm ơn bạn đã liên hệ với chúng tôi, Chúng tôi sẽ trả lời sớm nhất\";s:12:\"mail_sent_ng\";s:51:\"Hệ thống đang bận, vui lòng thử lại sau\";s:16:\"validation_error\";s:22:\"Vui lòng nhập lại\";s:4:\"spam\";s:51:\"Hệ thống đang bận, vui lòng thử lại sau\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:12:\"Bắt buộc\";s:16:\"invalid_too_long\";s:21:\"Quá nhiều kí tự\";s:17:\"invalid_too_short\";s:21:\"Quá nhiều kí tự\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(14, 8, '_additional_settings', ''),
(15, 8, '_locale', 'vi'),
(16, 9, '_edit_last', '1'),
(17, 9, '_edit_lock', '1573441547:1'),
(18, 9, '_wp_page_template', 'page.php'),
(163, 31, '_menu_item_type', 'taxonomy'),
(164, 31, '_menu_item_menu_item_parent', '18'),
(165, 31, '_menu_item_object_id', '4'),
(166, 31, '_menu_item_object', 'category'),
(167, 31, '_menu_item_target', ''),
(168, 31, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(169, 31, '_menu_item_xfn', ''),
(170, 31, '_menu_item_url', ''),
(217, 37, '_edit_last', '1'),
(218, 37, '_wp_page_template', 'default'),
(219, 37, '_edit_lock', '1573441680:1'),
(224, 43, '_edit_last', '1'),
(225, 43, '_edit_lock', '1574397279:1'),
(226, 43, '_wp_page_template', 'lienhe.php'),
(236, 46, '_menu_item_type', 'custom'),
(237, 46, '_menu_item_menu_item_parent', '0'),
(238, 46, '_menu_item_object_id', '46'),
(239, 46, '_menu_item_object', 'custom'),
(240, 46, '_menu_item_target', ''),
(241, 46, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(242, 46, '_menu_item_xfn', ''),
(243, 46, '_menu_item_url', '//localhost:3000:3000:3000:3000:3000:3000/wp_baotoanviet/'),
(281, 51, '_menu_item_type', 'post_type'),
(282, 51, '_menu_item_menu_item_parent', '0'),
(283, 51, '_menu_item_object_id', '37'),
(284, 51, '_menu_item_object', 'page'),
(285, 51, '_menu_item_target', ''),
(286, 51, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(287, 51, '_menu_item_xfn', ''),
(288, 51, '_menu_item_url', ''),
(479, 76, '_menu_item_type', 'custom'),
(480, 76, '_menu_item_menu_item_parent', '0'),
(481, 76, '_menu_item_object_id', '76'),
(482, 76, '_menu_item_object', 'custom'),
(483, 76, '_menu_item_target', ''),
(484, 76, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(485, 76, '_menu_item_xfn', ''),
(486, 76, '_menu_item_url', '//localhost:3000:3000:3000:3000:3000:3000/wp_baotoanviet/'),
(488, 77, '_menu_item_type', 'post_type'),
(489, 77, '_menu_item_menu_item_parent', '0'),
(490, 77, '_menu_item_object_id', '37'),
(491, 77, '_menu_item_object', 'page'),
(492, 77, '_menu_item_target', ''),
(493, 77, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(494, 77, '_menu_item_xfn', ''),
(495, 77, '_menu_item_url', ''),
(515, 43, '_yoast_wpseo_content_score', '90'),
(516, 43, '_yoast_wpseo_focuskeywords', ''),
(517, 43, '_yoast_wpseo_keywordsynonyms', ''),
(518, 81, '_edit_last', '1'),
(519, 81, '_edit_lock', '1573400220:1'),
(520, 81, '_wp_page_template', 'default'),
(521, 81, '_yoast_wpseo_content_score', '60'),
(522, 81, '_yoast_wpseo_focuskeywords', ''),
(523, 81, '_yoast_wpseo_keywordsynonyms', ''),
(524, 9, '_yoast_wpseo_content_score', '90'),
(525, 9, '_yoast_wpseo_focuskeywords', ''),
(526, 9, '_yoast_wpseo_keywordsynonyms', ''),
(527, 37, '_yoast_wpseo_content_score', '60'),
(528, 37, '_yoast_wpseo_focuskeywords', ''),
(529, 37, '_yoast_wpseo_keywordsynonyms', ''),
(530, 9, '_wp_trash_meta_status', 'publish'),
(531, 9, '_wp_trash_meta_time', '1573441694'),
(532, 9, '_wp_desired_post_slug', 'dia-chi'),
(533, 89, '_edit_last', '1'),
(534, 89, '_edit_lock', '1573460738:1'),
(535, 89, '_wp_page_template', 'lienhe.php'),
(536, 89, '_yoast_wpseo_content_score', '90'),
(537, 89, '_yoast_wpseo_focuskeywords', ''),
(538, 89, '_yoast_wpseo_keywordsynonyms', ''),
(539, 93, '_menu_item_type', 'post_type'),
(540, 93, '_menu_item_menu_item_parent', '0'),
(541, 93, '_menu_item_object_id', '89'),
(542, 93, '_menu_item_object', 'page'),
(543, 93, '_menu_item_target', ''),
(544, 93, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(545, 93, '_menu_item_xfn', ''),
(546, 93, '_menu_item_url', ''),
(548, 95, '_edit_last', '1'),
(549, 95, '_edit_lock', '1573446927:1'),
(553, 95, '_yoast_wpseo_primary_category', ''),
(554, 95, '_yoast_wpseo_content_score', '60'),
(555, 95, '_yoast_wpseo_focuskeywords', ''),
(556, 95, '_yoast_wpseo_keywordsynonyms', ''),
(557, 97, '_edit_last', '1'),
(558, 97, '_edit_lock', '1573451549:1'),
(563, 97, '_yoast_wpseo_primary_category', ''),
(564, 97, '_yoast_wpseo_content_score', '60'),
(565, 97, '_yoast_wpseo_focuskeywords', ''),
(566, 97, '_yoast_wpseo_keywordsynonyms', ''),
(567, 99, '_wp_attached_file', '2019/11/banner-2.jpg'),
(568, 99, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:700;s:4:\"file\";s:20:\"2019/11/banner-2.jpg\";s:5:\"sizes\";a:2:{s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"banner-2-768x280.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:280;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"img-news\";a:4:{s:4:\"file\";s:20:\"banner-2-554x330.jpg\";s:5:\"width\";i:554;s:6:\"height\";i:330;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(569, 99, '_wp_attachment_image_alt', 'Công Ty Cổ Phần Bảo Toàn Việt'),
(570, 95, '_thumbnail_id', '99'),
(571, 101, '_wp_attached_file', '2019/11/banner-1.jpg'),
(572, 101, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:700;s:4:\"file\";s:20:\"2019/11/banner-1.jpg\";s:5:\"sizes\";a:2:{s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"banner-1-768x280.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:280;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"img-news\";a:4:{s:4:\"file\";s:20:\"banner-1-554x330.jpg\";s:5:\"width\";i:554;s:6:\"height\";i:330;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(573, 101, '_wp_attachment_image_alt', 'Công Ty Cổ Phần Bảo Toàn Việt'),
(574, 97, '_thumbnail_id', '101'),
(575, 102, '_edit_last', '1'),
(576, 102, '_edit_lock', '1573452091:1'),
(577, 103, '_wp_attached_file', '2019/11/it-solutions-banner.jpg'),
(578, 103, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:750;s:4:\"file\";s:31:\"2019/11/it-solutions-banner.jpg\";s:5:\"sizes\";a:3:{s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"it-solutions-banner-768x300.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"img-banner\";a:4:{s:4:\"file\";s:32:\"it-solutions-banner-1920x700.jpg\";s:5:\"width\";i:1920;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"img-news\";a:4:{s:4:\"file\";s:31:\"it-solutions-banner-554x330.jpg\";s:5:\"width\";i:554;s:6:\"height\";i:330;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(579, 103, '_wp_attachment_image_alt', 'Công Ty Cổ Phần Bảo Toàn Việt'),
(580, 102, '_thumbnail_id', '103'),
(581, 102, '_yoast_wpseo_primary_category', ''),
(582, 102, '_yoast_wpseo_content_score', '60'),
(583, 102, '_yoast_wpseo_focuskeywords', ''),
(584, 102, '_yoast_wpseo_keywordsynonyms', ''),
(585, 120, '_edit_last', '1'),
(586, 120, '_edit_lock', '1573461754:1'),
(587, 121, '_wp_attached_file', '2019/11/1498711044cisco-MGBLH1.jpg'),
(588, 121, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:690;s:6:\"height\";i:414;s:4:\"file\";s:34:\"2019/11/1498711044cisco-MGBLH1.jpg\";s:5:\"sizes\";a:1:{s:8:\"img-news\";a:4:{s:4:\"file\";s:34:\"1498711044cisco-MGBLH1-554x330.jpg\";s:5:\"width\";i:554;s:6:\"height\";i:330;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(589, 120, '_thumbnail_id', '121'),
(590, 120, '_yoast_wpseo_primary_category', '5'),
(591, 120, '_price', '220000'),
(592, 120, '_yoast_wpseo_content_score', '60'),
(593, 120, '_yoast_wpseo_focuskeywords', ''),
(594, 120, '_yoast_wpseo_keywordsynonyms', ''),
(595, 122, '_edit_last', '1'),
(596, 122, '_edit_lock', '1573461849:1'),
(597, 123, '_wp_attached_file', '2019/11/1498809344GLC-LH-SMD-1.jpg'),
(598, 123, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:778;s:6:\"height\";i:466;s:4:\"file\";s:34:\"2019/11/1498809344GLC-LH-SMD-1.jpg\";s:5:\"sizes\";a:2:{s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"1498809344GLC-LH-SMD-1-768x460.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:460;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"img-news\";a:4:{s:4:\"file\";s:34:\"1498809344GLC-LH-SMD-1-554x330.jpg\";s:5:\"width\";i:554;s:6:\"height\";i:330;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(599, 122, '_thumbnail_id', '123'),
(600, 122, '_yoast_wpseo_primary_category', '5'),
(601, 122, '_price', '1200000'),
(602, 122, '_yoast_wpseo_content_score', '60'),
(603, 122, '_yoast_wpseo_focuskeywords', ''),
(604, 122, '_yoast_wpseo_keywordsynonyms', ''),
(605, 124, '_edit_last', '1'),
(606, 124, '_edit_lock', '1573461931:1'),
(607, 125, '_wp_attached_file', '2019/11/1416804367WS-G5486.jpg'),
(608, 125, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:506;s:6:\"height\";i:304;s:4:\"file\";s:30:\"2019/11/1416804367WS-G5486.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(609, 124, '_thumbnail_id', '125'),
(610, 124, '_yoast_wpseo_primary_category', '2'),
(611, 124, '_yoast_wpseo_content_score', '60'),
(612, 124, '_yoast_wpseo_focuskeywords', ''),
(613, 124, '_yoast_wpseo_keywordsynonyms', ''),
(614, 126, '_edit_last', '1'),
(615, 126, '_edit_lock', '1573978530:1'),
(616, 127, '_wp_attached_file', '2019/11/1571453288ODF-24FO-Cablexa.jpg'),
(617, 127, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:750;s:6:\"height\";i:450;s:4:\"file\";s:38:\"2019/11/1571453288ODF-24FO-Cablexa.jpg\";s:5:\"sizes\";a:1:{s:8:\"img-news\";a:4:{s:4:\"file\";s:38:\"1571453288ODF-24FO-Cablexa-554x330.jpg\";s:5:\"width\";i:554;s:6:\"height\";i:330;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(618, 126, '_thumbnail_id', '127'),
(619, 126, '_yoast_wpseo_primary_category', '4'),
(620, 126, '_price', '555000'),
(621, 126, '_yoast_wpseo_content_score', '60'),
(622, 126, '_yoast_wpseo_focuskeywords', ''),
(623, 126, '_yoast_wpseo_keywordsynonyms', ''),
(624, 129, '_edit_last', '1'),
(625, 129, '_edit_lock', '1573462085:1'),
(626, 130, '_wp_attached_file', '2019/11/1416454233Module-quang-SFP-copy.jpg'),
(627, 130, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:480;s:4:\"file\";s:43:\"2019/11/1416454233Module-quang-SFP-copy.jpg\";s:5:\"sizes\";a:2:{s:12:\"medium_large\";a:4:{s:4:\"file\";s:43:\"1416454233Module-quang-SFP-copy-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"img-news\";a:4:{s:4:\"file\";s:43:\"1416454233Module-quang-SFP-copy-554x330.jpg\";s:5:\"width\";i:554;s:6:\"height\";i:330;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(628, 129, '_thumbnail_id', '130'),
(629, 129, '_yoast_wpseo_primary_category', '2'),
(630, 129, '_yoast_wpseo_content_score', '60'),
(631, 129, '_yoast_wpseo_focuskeywords', ''),
(632, 129, '_yoast_wpseo_keywordsynonyms', ''),
(633, 132, '_edit_last', '1'),
(634, 132, '_edit_lock', '1573462355:1'),
(635, 133, '_wp_attached_file', '2019/11/goc_1571569294.jpg'),
(636, 133, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:480;s:4:\"file\";s:26:\"2019/11/goc_1571569294.jpg\";s:5:\"sizes\";a:2:{s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"goc_1571569294-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"img-news\";a:4:{s:4:\"file\";s:26:\"goc_1571569294-554x330.jpg\";s:5:\"width\";i:554;s:6:\"height\";i:330;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(637, 132, '_thumbnail_id', '133'),
(638, 132, '_yoast_wpseo_primary_category', '7'),
(639, 132, '_yoast_wpseo_content_score', '60'),
(640, 132, '_yoast_wpseo_focuskeywords', ''),
(641, 132, '_yoast_wpseo_keywordsynonyms', ''),
(642, 134, '_edit_last', '1'),
(643, 134, '_edit_lock', '1573462421:1'),
(644, 135, '_wp_attached_file', '2019/11/goc_1571210863.jpg'),
(645, 135, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:479;s:4:\"file\";s:26:\"2019/11/goc_1571210863.jpg\";s:5:\"sizes\";a:2:{s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"goc_1571210863-768x460.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:460;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"img-news\";a:4:{s:4:\"file\";s:26:\"goc_1571210863-554x330.jpg\";s:5:\"width\";i:554;s:6:\"height\";i:330;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(646, 134, '_thumbnail_id', '135'),
(647, 134, '_yoast_wpseo_primary_category', '7'),
(648, 134, '_price', '630000'),
(649, 134, '_yoast_wpseo_content_score', '60'),
(650, 134, '_yoast_wpseo_focuskeywords', ''),
(651, 134, '_yoast_wpseo_keywordsynonyms', ''),
(652, 137, '_edit_last', '1'),
(653, 137, '_edit_lock', '1573462708:1'),
(654, 138, '_wp_attached_file', '2019/11/1571210393WS-C2960X-24PD-L.jpg'),
(655, 138, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:642;s:6:\"height\";i:385;s:4:\"file\";s:38:\"2019/11/1571210393WS-C2960X-24PD-L.jpg\";s:5:\"sizes\";a:1:{s:8:\"img-news\";a:4:{s:4:\"file\";s:38:\"1571210393WS-C2960X-24PD-L-554x330.jpg\";s:5:\"width\";i:554;s:6:\"height\";i:330;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(656, 137, '_thumbnail_id', '138'),
(657, 137, '_yoast_wpseo_primary_category', '9'),
(658, 137, '_price', '200000'),
(659, 137, '_yoast_wpseo_content_score', '60'),
(660, 137, '_yoast_wpseo_focuskeywords', ''),
(661, 137, '_yoast_wpseo_keywordsynonyms', ''),
(662, 139, '_edit_last', '1'),
(663, 139, '_edit_lock', '1573462755:1'),
(664, 140, '_wp_attached_file', '2019/11/1572926591EX2200-24T-4G-TAA.jpg'),
(665, 140, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:750;s:6:\"height\";i:402;s:4:\"file\";s:39:\"2019/11/1572926591EX2200-24T-4G-TAA.jpg\";s:5:\"sizes\";a:1:{s:8:\"img-news\";a:4:{s:4:\"file\";s:39:\"1572926591EX2200-24T-4G-TAA-554x330.jpg\";s:5:\"width\";i:554;s:6:\"height\";i:330;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(666, 139, '_thumbnail_id', '140'),
(667, 139, '_yoast_wpseo_primary_category', '9'),
(668, 139, '_yoast_wpseo_content_score', '60'),
(669, 139, '_yoast_wpseo_focuskeywords', ''),
(670, 139, '_yoast_wpseo_keywordsynonyms', ''),
(671, 141, '_edit_last', '1'),
(672, 141, '_edit_lock', '1573921452:1'),
(673, 142, '_wp_attached_file', '2019/11/goc_1572151810.jpg'),
(674, 142, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:480;s:4:\"file\";s:26:\"2019/11/goc_1572151810.jpg\";s:5:\"sizes\";a:2:{s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"goc_1572151810-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"img-news\";a:4:{s:4:\"file\";s:26:\"goc_1572151810-554x330.jpg\";s:5:\"width\";i:554;s:6:\"height\";i:330;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(675, 141, '_thumbnail_id', '142'),
(676, 141, '_yoast_wpseo_primary_category', '8'),
(677, 141, '_yoast_wpseo_content_score', '60'),
(678, 141, '_yoast_wpseo_focuskeywords', ''),
(679, 141, '_yoast_wpseo_keywordsynonyms', ''),
(680, 143, '_wp_attached_file', '2019/11/logo.png'),
(681, 143, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:200;s:6:\"height\";i:196;s:4:\"file\";s:16:\"2019/11/logo.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(682, 144, '_wp_trash_meta_status', 'publish'),
(683, 144, '_wp_trash_meta_time', '1573548556'),
(684, 145, '_edit_last', '1'),
(685, 145, '_edit_lock', '1573552470:1'),
(689, 145, '_yoast_wpseo_primary_category', '10'),
(690, 145, '_yoast_wpseo_content_score', '60'),
(691, 145, '_yoast_wpseo_focuskeywords', ''),
(692, 145, '_yoast_wpseo_keywordsynonyms', ''),
(698, 150, '_wp_attached_file', '2019/11/goc_1547185168.jpg'),
(699, 150, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:487;s:4:\"file\";s:26:\"2019/11/goc_1547185168.jpg\";s:5:\"sizes\";a:2:{s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"goc_1547185168-768x468.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:468;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"img-news\";a:4:{s:4:\"file\";s:26:\"goc_1547185168-554x330.jpg\";s:5:\"width\";i:554;s:6:\"height\";i:330;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(709, 154, '_wp_attached_file', '2019/11/1545281074day-nhay-upc-va-apc.jpg'),
(710, 154, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:750;s:6:\"height\";i:450;s:4:\"file\";s:41:\"2019/11/1545281074day-nhay-upc-va-apc.jpg\";s:5:\"sizes\";a:1:{s:8:\"img-news\";a:4:{s:4:\"file\";s:41:\"1545281074day-nhay-upc-va-apc-554x330.jpg\";s:5:\"width\";i:554;s:6:\"height\";i:330;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(757, 145, '_wp_old_slug', 'product-demo__trashed'),
(758, 141, '_wp_old_slug', 'juniper-ex3400-24p-bao-gia-juniper-ex3400-24p-24-port-poe-4-sfp-and-2-qsfp__trashed'),
(759, 139, '_wp_old_slug', 'juniper-ex3400-48p-bao-gia-tot-juniper-ex3400-48p-48-port-poe-4-sfp-2-qsfp__trashed'),
(760, 137, '_wp_old_slug', 'juniper-ex2200-48p-4g-gia-tot-juniper-ex2200-48p-4g-48-port-10-100-1000base-t-poe__trashed'),
(761, 134, '_wp_old_slug', 'juniper-ex2300-48t-vc-juniper-ex2300-48t-vc-48-x-10-100-1000base-t-4-x-1-10gbe-sfp-sfp__trashed'),
(762, 132, '_wp_old_slug', 'juniper-ex2200-24t-4g-taa-juniper-ex2200-24t-4g-taa-24-port-10-100-1000base-t-4-sfp__trashed'),
(763, 129, '_wp_old_slug', 'module-quang-sfp-1-25gbps-loai-2-core-module-quang-sfp-1-25gbps-loai-2-core__trashed'),
(764, 126, '_wp_old_slug', 'module-quang-sfp-1-25gbps-loai-1-core-module-quang-sfp-1-25gbps__trashed'),
(765, 124, '_wp_old_slug', 'module-quang-cisco-1000base-lx-lh-gbic-module-cisco-1000base-lx-lh-gbic-2__trashed'),
(766, 122, '_wp_old_slug', 'module-sfp-cisco-glc-lh-smd-glc-lh-smd-transceiver-module-sfp-1000blx-lh__trashed'),
(767, 120, '_wp_old_slug', 'module-quang-cisco-1000base-lx-lh-gbic-module-cisco-1000base-lx-lh-gbic__trashed'),
(823, 177, '_edit_last', '1'),
(824, 177, '_edit_lock', '1573872459:1'),
(827, 177, '_yoast_wpseo_content_score', '60'),
(828, 177, '_yoast_wpseo_focuskeywords', ''),
(829, 177, '_yoast_wpseo_keywordsynonyms', ''),
(830, 177, '_yoast_wpseo_primary_category', ''),
(831, 177, '_yoast_wpseo_primary_categorypost', ''),
(832, 177, '_wp_trash_meta_status', 'publish'),
(833, 177, '_wp_trash_meta_time', '1573873744'),
(834, 177, '_wp_desired_post_slug', 'ahihi'),
(835, 189, '_edit_last', '1'),
(836, 189, '_edit_lock', '1573874696:1'),
(837, 189, '_thumbnail_id', '150'),
(840, 189, '_yoast_wpseo_content_score', '60'),
(841, 189, '_yoast_wpseo_focuskeywords', ''),
(842, 189, '_yoast_wpseo_keywordsynonyms', ''),
(843, 189, '_yoast_wpseo_primary_category', ''),
(844, 189, '_yoast_wpseo_primary_categorypost', '46'),
(845, 191, '_edit_last', '1'),
(846, 191, '_edit_lock', '1573874757:1'),
(847, 191, '_thumbnail_id', '154'),
(850, 191, '_yoast_wpseo_content_score', '60'),
(851, 191, '_yoast_wpseo_focuskeywords', ''),
(852, 191, '_yoast_wpseo_keywordsynonyms', ''),
(853, 191, '_yoast_wpseo_primary_category', ''),
(854, 191, '_yoast_wpseo_primary_categorypost', '46'),
(855, 193, '_edit_last', '1'),
(856, 193, '_edit_lock', '1573921465:1'),
(857, 193, '_thumbnail_id', '150'),
(860, 193, '_yoast_wpseo_content_score', '60'),
(861, 193, '_yoast_wpseo_focuskeywords', ''),
(862, 193, '_yoast_wpseo_keywordsynonyms', ''),
(863, 193, '_yoast_wpseo_primary_category', ''),
(864, 193, '_yoast_wpseo_primary_categorypost', '47'),
(874, 196, '_menu_item_type', 'taxonomy'),
(875, 196, '_menu_item_menu_item_parent', '0'),
(876, 196, '_menu_item_object_id', '45'),
(877, 196, '_menu_item_object', 'categorypost'),
(878, 196, '_menu_item_target', ''),
(879, 196, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(880, 196, '_menu_item_xfn', ''),
(881, 196, '_menu_item_url', ''),
(883, 197, '_menu_item_type', 'post_type'),
(884, 197, '_menu_item_menu_item_parent', '0'),
(885, 197, '_menu_item_object_id', '89'),
(886, 197, '_menu_item_object', 'page'),
(887, 197, '_menu_item_target', ''),
(888, 197, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(889, 197, '_menu_item_xfn', ''),
(890, 197, '_menu_item_url', ''),
(892, 200, '_edit_last', '1'),
(893, 200, '_edit_lock', '1573958947:1'),
(894, 201, '_wp_attached_file', '2019/11/doihinh-chinhthuc_1.jpg'),
(895, 201, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1144;s:6:\"height\";i:1144;s:4:\"file\";s:31:\"2019/11/doihinh-chinhthuc_1.jpg\";s:5:\"sizes\";a:3:{s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"doihinh-chinhthuc_1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"img-banner\";a:4:{s:4:\"file\";s:32:\"doihinh-chinhthuc_1-1144x700.jpg\";s:5:\"width\";i:1144;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"img-news\";a:4:{s:4:\"file\";s:31:\"doihinh-chinhthuc_1-554x330.jpg\";s:5:\"width\";i:554;s:6:\"height\";i:330;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(896, 200, '_thumbnail_id', '202'),
(897, 200, '_yoast_wpseo_primary_category', '18'),
(898, 200, '_price', '200000'),
(899, 200, '_yoast_wpseo_content_score', '60'),
(900, 200, '_yoast_wpseo_focuskeywords', ''),
(901, 200, '_yoast_wpseo_keywordsynonyms', ''),
(902, 202, '_wp_attached_file', '2019/11/1571105648FPC-SX-OS1.jpg'),
(903, 202, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:750;s:6:\"height\";i:450;s:4:\"file\";s:32:\"2019/11/1571105648FPC-SX-OS1.jpg\";s:5:\"sizes\";a:1:{s:8:\"img-news\";a:4:{s:4:\"file\";s:32:\"1571105648FPC-SX-OS1-554x330.jpg\";s:5:\"width\";i:554;s:6:\"height\";i:330;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(904, 204, '_edit_last', '1'),
(905, 204, '_edit_lock', '1574397783:1'),
(906, 204, '_wp_page_template', 'default'),
(907, 204, '_yoast_wpseo_content_score', '90'),
(908, 204, '_yoast_wpseo_focuskeywords', ''),
(909, 204, '_yoast_wpseo_keywordsynonyms', ''),
(910, 218, '_edit_last', '1'),
(911, 218, '_edit_lock', '1573979272:1'),
(912, 218, '_wp_page_template', 'default'),
(913, 218, '_yoast_wpseo_content_score', '90'),
(914, 218, '_yoast_wpseo_focuskeywords', ''),
(915, 218, '_yoast_wpseo_keywordsynonyms', ''),
(916, 200, '_wp_trash_meta_status', 'publish'),
(917, 200, '_wp_trash_meta_time', '1574050816'),
(918, 200, '_wp_desired_post_slug', 'xxx'),
(919, 145, '_wp_trash_meta_status', 'publish'),
(920, 145, '_wp_trash_meta_time', '1574050817'),
(921, 145, '_wp_desired_post_slug', 'product-demo'),
(922, 141, '_wp_trash_meta_status', 'publish'),
(923, 141, '_wp_trash_meta_time', '1574050817'),
(924, 141, '_wp_desired_post_slug', 'juniper-ex3400-24p-bao-gia-juniper-ex3400-24p-24-port-poe-4-sfp-and-2-qsfp'),
(925, 139, '_wp_trash_meta_status', 'publish'),
(926, 139, '_wp_trash_meta_time', '1574050818'),
(927, 139, '_wp_desired_post_slug', 'juniper-ex3400-48p-bao-gia-tot-juniper-ex3400-48p-48-port-poe-4-sfp-2-qsfp'),
(928, 137, '_wp_trash_meta_status', 'publish'),
(929, 137, '_wp_trash_meta_time', '1574050818'),
(930, 137, '_wp_desired_post_slug', 'juniper-ex2200-48p-4g-gia-tot-juniper-ex2200-48p-4g-48-port-10-100-1000base-t-poe'),
(931, 134, '_wp_trash_meta_status', 'publish'),
(932, 134, '_wp_trash_meta_time', '1574050818'),
(933, 134, '_wp_desired_post_slug', 'juniper-ex2300-48t-vc-juniper-ex2300-48t-vc-48-x-10-100-1000base-t-4-x-1-10gbe-sfp-sfp'),
(934, 132, '_wp_trash_meta_status', 'publish'),
(935, 132, '_wp_trash_meta_time', '1574050819'),
(936, 132, '_wp_desired_post_slug', 'juniper-ex2200-24t-4g-taa-juniper-ex2200-24t-4g-taa-24-port-10-100-1000base-t-4-sfp'),
(937, 129, '_wp_trash_meta_status', 'publish'),
(938, 129, '_wp_trash_meta_time', '1574050819'),
(939, 129, '_wp_desired_post_slug', 'module-quang-sfp-1-25gbps-loai-2-core-module-quang-sfp-1-25gbps-loai-2-core'),
(940, 126, '_wp_trash_meta_status', 'publish'),
(941, 126, '_wp_trash_meta_time', '1574050820'),
(942, 126, '_wp_desired_post_slug', 'module-quang-sfp-1-25gbps-loai-1-core-module-quang-sfp-1-25gbps'),
(943, 124, '_wp_trash_meta_status', 'publish'),
(944, 124, '_wp_trash_meta_time', '1574050820'),
(945, 124, '_wp_desired_post_slug', 'module-quang-cisco-1000base-lx-lh-gbic-module-cisco-1000base-lx-lh-gbic-2'),
(946, 122, '_wp_trash_meta_status', 'publish'),
(947, 122, '_wp_trash_meta_time', '1574050820'),
(948, 122, '_wp_desired_post_slug', 'module-sfp-cisco-glc-lh-smd-glc-lh-smd-transceiver-module-sfp-1000blx-lh'),
(949, 120, '_wp_trash_meta_status', 'publish'),
(950, 120, '_wp_trash_meta_time', '1574050821'),
(951, 120, '_wp_desired_post_slug', 'module-quang-cisco-1000base-lx-lh-gbic-module-cisco-1000base-lx-lh-gbic'),
(952, 224, '_menu_item_type', 'taxonomy'),
(953, 224, '_menu_item_menu_item_parent', '0'),
(954, 224, '_menu_item_object_id', '63'),
(955, 224, '_menu_item_object', 'category'),
(956, 224, '_menu_item_target', ''),
(957, 224, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(958, 224, '_menu_item_xfn', ''),
(959, 224, '_menu_item_url', ''),
(961, 225, '_menu_item_type', 'taxonomy'),
(962, 225, '_menu_item_menu_item_parent', '0'),
(963, 225, '_menu_item_object_id', '62'),
(964, 225, '_menu_item_object', 'category'),
(965, 225, '_menu_item_target', ''),
(966, 225, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(967, 225, '_menu_item_xfn', ''),
(968, 225, '_menu_item_url', ''),
(970, 226, '_menu_item_type', 'taxonomy'),
(971, 226, '_menu_item_menu_item_parent', '0'),
(972, 226, '_menu_item_object_id', '51'),
(973, 226, '_menu_item_object', 'category'),
(974, 226, '_menu_item_target', ''),
(975, 226, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(976, 226, '_menu_item_xfn', ''),
(977, 226, '_menu_item_url', ''),
(979, 227, '_menu_item_type', 'taxonomy'),
(980, 227, '_menu_item_menu_item_parent', '0'),
(981, 227, '_menu_item_object_id', '64'),
(982, 227, '_menu_item_object', 'category'),
(983, 227, '_menu_item_target', ''),
(984, 227, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(985, 227, '_menu_item_xfn', ''),
(986, 227, '_menu_item_url', ''),
(988, 228, '_menu_item_type', 'taxonomy'),
(989, 228, '_menu_item_menu_item_parent', '226'),
(990, 228, '_menu_item_object_id', '52'),
(991, 228, '_menu_item_object', 'category'),
(992, 228, '_menu_item_target', ''),
(993, 228, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(994, 228, '_menu_item_xfn', ''),
(995, 228, '_menu_item_url', ''),
(997, 229, '_menu_item_type', 'taxonomy'),
(998, 229, '_menu_item_menu_item_parent', '226'),
(999, 229, '_menu_item_object_id', '53'),
(1000, 229, '_menu_item_object', 'category'),
(1001, 229, '_menu_item_target', ''),
(1002, 229, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1003, 229, '_menu_item_xfn', ''),
(1004, 229, '_menu_item_url', ''),
(1006, 230, '_menu_item_type', 'taxonomy'),
(1007, 230, '_menu_item_menu_item_parent', '226'),
(1008, 230, '_menu_item_object_id', '54'),
(1009, 230, '_menu_item_object', 'category'),
(1010, 230, '_menu_item_target', ''),
(1011, 230, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1012, 230, '_menu_item_xfn', ''),
(1013, 230, '_menu_item_url', ''),
(1014, 234, '_edit_last', '1'),
(1015, 234, '_edit_lock', '1574066204:1'),
(1016, 236, '_edit_last', '1'),
(1017, 236, '_edit_lock', '1574072124:1'),
(1018, 236, '_thumbnail_id', '123'),
(1019, 236, '_yoast_wpseo_primary_category', '55'),
(1020, 236, '_price', '340000'),
(1021, 236, '_price_sale', '280000'),
(1022, 236, '_yoast_wpseo_content_score', '60'),
(1023, 236, '_yoast_wpseo_focuskeywords', ''),
(1024, 236, '_yoast_wpseo_keywordsynonyms', ''),
(1025, 237, '_edit_last', '1'),
(1026, 237, '_edit_lock', '1575473807:1'),
(1027, 237, '_yoast_wpseo_primary_category', '52'),
(1028, 237, '_price', '200000'),
(1029, 237, '_yoast_wpseo_content_score', '60'),
(1030, 237, '_yoast_wpseo_focuskeywords', ''),
(1031, 237, '_yoast_wpseo_keywordsynonyms', ''),
(1032, 237, '_thumbnail_id', '130'),
(1033, 234, '_wp_trash_meta_status', 'draft'),
(1034, 234, '_wp_trash_meta_time', '1574070446'),
(1035, 234, '_wp_desired_post_slug', ''),
(1036, 238, '_menu_item_type', 'taxonomy'),
(1037, 238, '_menu_item_menu_item_parent', '0'),
(1038, 238, '_menu_item_object_id', '45'),
(1039, 238, '_menu_item_object', 'categorypost'),
(1040, 238, '_menu_item_target', ''),
(1041, 238, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1042, 238, '_menu_item_xfn', ''),
(1043, 238, '_menu_item_url', ''),
(1045, 239, '_menu_item_type', 'taxonomy'),
(1046, 239, '_menu_item_menu_item_parent', '238'),
(1047, 239, '_menu_item_object_id', '47'),
(1048, 239, '_menu_item_object', 'categorypost'),
(1049, 239, '_menu_item_target', ''),
(1050, 239, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1051, 239, '_menu_item_xfn', ''),
(1052, 239, '_menu_item_url', ''),
(1054, 240, '_menu_item_type', 'taxonomy'),
(1055, 240, '_menu_item_menu_item_parent', '238'),
(1056, 240, '_menu_item_object_id', '46'),
(1057, 240, '_menu_item_object', 'categorypost'),
(1058, 240, '_menu_item_target', ''),
(1059, 240, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1060, 240, '_menu_item_xfn', ''),
(1061, 240, '_menu_item_url', ''),
(1063, 241, '_menu_item_type', 'taxonomy'),
(1064, 241, '_menu_item_menu_item_parent', '238'),
(1065, 241, '_menu_item_object_id', '48'),
(1066, 241, '_menu_item_object', 'categorypost'),
(1067, 241, '_menu_item_target', ''),
(1068, 241, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1069, 241, '_menu_item_xfn', ''),
(1070, 241, '_menu_item_url', ''),
(1081, 243, '_menu_item_type', 'post_type'),
(1082, 243, '_menu_item_menu_item_parent', '0'),
(1083, 243, '_menu_item_object_id', '89'),
(1084, 243, '_menu_item_object', 'page'),
(1085, 243, '_menu_item_target', ''),
(1086, 243, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1087, 243, '_menu_item_xfn', ''),
(1088, 243, '_menu_item_url', ''),
(1090, 244, '_menu_item_type', 'post_type'),
(1091, 244, '_menu_item_menu_item_parent', '0'),
(1092, 244, '_menu_item_object_id', '37'),
(1093, 244, '_menu_item_object', 'page'),
(1094, 244, '_menu_item_target', ''),
(1095, 244, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1096, 244, '_menu_item_xfn', ''),
(1097, 244, '_menu_item_url', ''),
(1099, 245, '_menu_item_type', 'taxonomy'),
(1100, 245, '_menu_item_menu_item_parent', '228'),
(1101, 245, '_menu_item_object_id', '55'),
(1102, 245, '_menu_item_object', 'category'),
(1103, 245, '_menu_item_target', ''),
(1104, 245, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1105, 245, '_menu_item_xfn', ''),
(1106, 245, '_menu_item_url', ''),
(1108, 246, '_menu_item_type', 'taxonomy'),
(1109, 246, '_menu_item_menu_item_parent', '228'),
(1110, 246, '_menu_item_object_id', '56'),
(1111, 246, '_menu_item_object', 'category'),
(1112, 246, '_menu_item_target', ''),
(1113, 246, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1114, 246, '_menu_item_xfn', ''),
(1115, 246, '_menu_item_url', ''),
(1117, 247, '_menu_item_type', 'taxonomy'),
(1118, 247, '_menu_item_menu_item_parent', '229'),
(1119, 247, '_menu_item_object_id', '60'),
(1120, 247, '_menu_item_object', 'category'),
(1121, 247, '_menu_item_target', ''),
(1122, 247, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1123, 247, '_menu_item_xfn', ''),
(1124, 247, '_menu_item_url', ''),
(1126, 248, '_menu_item_type', 'taxonomy'),
(1127, 248, '_menu_item_menu_item_parent', '229'),
(1128, 248, '_menu_item_object_id', '61'),
(1129, 248, '_menu_item_object', 'category'),
(1130, 248, '_menu_item_target', ''),
(1131, 248, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1132, 248, '_menu_item_xfn', ''),
(1133, 248, '_menu_item_url', ''),
(1135, 249, '_menu_item_type', 'taxonomy'),
(1136, 249, '_menu_item_menu_item_parent', '230'),
(1137, 249, '_menu_item_object_id', '58'),
(1138, 249, '_menu_item_object', 'category'),
(1139, 249, '_menu_item_target', ''),
(1140, 249, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1141, 249, '_menu_item_xfn', ''),
(1142, 249, '_menu_item_url', ''),
(1144, 250, '_menu_item_type', 'taxonomy'),
(1145, 250, '_menu_item_menu_item_parent', '230'),
(1146, 250, '_menu_item_object_id', '59'),
(1147, 250, '_menu_item_object', 'category'),
(1148, 250, '_menu_item_target', ''),
(1149, 250, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1150, 250, '_menu_item_xfn', ''),
(1151, 250, '_menu_item_url', ''),
(1153, 251, '_menu_item_type', 'custom'),
(1154, 251, '_menu_item_menu_item_parent', '0'),
(1155, 251, '_menu_item_object_id', '251'),
(1156, 251, '_menu_item_object', 'custom'),
(1157, 251, '_menu_item_target', ''),
(1158, 251, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1159, 251, '_menu_item_xfn', ''),
(1160, 251, '_menu_item_url', '//localhost:3000/wp_baotoanviet/'),
(1162, 254, '_menu_item_type', 'taxonomy'),
(1163, 254, '_menu_item_menu_item_parent', '0'),
(1164, 254, '_menu_item_object_id', '63'),
(1165, 254, '_menu_item_object', 'category'),
(1166, 254, '_menu_item_target', ''),
(1167, 254, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1168, 254, '_menu_item_xfn', ''),
(1169, 254, '_menu_item_url', ''),
(1171, 255, '_menu_item_type', 'taxonomy'),
(1172, 255, '_menu_item_menu_item_parent', '0'),
(1173, 255, '_menu_item_object_id', '62'),
(1174, 255, '_menu_item_object', 'category'),
(1175, 255, '_menu_item_target', ''),
(1176, 255, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1177, 255, '_menu_item_xfn', ''),
(1178, 255, '_menu_item_url', ''),
(1180, 256, '_menu_item_type', 'taxonomy'),
(1181, 256, '_menu_item_menu_item_parent', '0'),
(1182, 256, '_menu_item_object_id', '51'),
(1183, 256, '_menu_item_object', 'category'),
(1184, 256, '_menu_item_target', ''),
(1185, 256, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1186, 256, '_menu_item_xfn', ''),
(1187, 256, '_menu_item_url', ''),
(1189, 257, '_menu_item_type', 'taxonomy'),
(1190, 257, '_menu_item_menu_item_parent', '256'),
(1191, 257, '_menu_item_object_id', '52'),
(1192, 257, '_menu_item_object', 'category'),
(1193, 257, '_menu_item_target', ''),
(1194, 257, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1195, 257, '_menu_item_xfn', ''),
(1196, 257, '_menu_item_url', ''),
(1198, 258, '_menu_item_type', 'taxonomy'),
(1199, 258, '_menu_item_menu_item_parent', '257'),
(1200, 258, '_menu_item_object_id', '55'),
(1201, 258, '_menu_item_object', 'category'),
(1202, 258, '_menu_item_target', ''),
(1203, 258, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1204, 258, '_menu_item_xfn', ''),
(1205, 258, '_menu_item_url', ''),
(1207, 259, '_menu_item_type', 'taxonomy'),
(1208, 259, '_menu_item_menu_item_parent', '257'),
(1209, 259, '_menu_item_object_id', '56'),
(1210, 259, '_menu_item_object', 'category'),
(1211, 259, '_menu_item_target', ''),
(1212, 259, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1213, 259, '_menu_item_xfn', ''),
(1214, 259, '_menu_item_url', ''),
(1216, 260, '_menu_item_type', 'taxonomy'),
(1217, 260, '_menu_item_menu_item_parent', '257'),
(1218, 260, '_menu_item_object_id', '57'),
(1219, 260, '_menu_item_object', 'category'),
(1220, 260, '_menu_item_target', ''),
(1221, 260, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1222, 260, '_menu_item_xfn', ''),
(1223, 260, '_menu_item_url', ''),
(1225, 261, '_menu_item_type', 'taxonomy'),
(1226, 261, '_menu_item_menu_item_parent', '256'),
(1227, 261, '_menu_item_object_id', '53'),
(1228, 261, '_menu_item_object', 'category'),
(1229, 261, '_menu_item_target', ''),
(1230, 261, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1231, 261, '_menu_item_xfn', ''),
(1232, 261, '_menu_item_url', ''),
(1234, 262, '_menu_item_type', 'taxonomy'),
(1235, 262, '_menu_item_menu_item_parent', '261'),
(1236, 262, '_menu_item_object_id', '60'),
(1237, 262, '_menu_item_object', 'category'),
(1238, 262, '_menu_item_target', ''),
(1239, 262, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1240, 262, '_menu_item_xfn', ''),
(1241, 262, '_menu_item_url', ''),
(1243, 263, '_menu_item_type', 'taxonomy'),
(1244, 263, '_menu_item_menu_item_parent', '261'),
(1245, 263, '_menu_item_object_id', '61'),
(1246, 263, '_menu_item_object', 'category'),
(1247, 263, '_menu_item_target', ''),
(1248, 263, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1249, 263, '_menu_item_xfn', ''),
(1250, 263, '_menu_item_url', ''),
(1252, 264, '_menu_item_type', 'taxonomy'),
(1253, 264, '_menu_item_menu_item_parent', '256'),
(1254, 264, '_menu_item_object_id', '54'),
(1255, 264, '_menu_item_object', 'category'),
(1256, 264, '_menu_item_target', ''),
(1257, 264, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1258, 264, '_menu_item_xfn', ''),
(1259, 264, '_menu_item_url', ''),
(1261, 265, '_menu_item_type', 'taxonomy'),
(1262, 265, '_menu_item_menu_item_parent', '264'),
(1263, 265, '_menu_item_object_id', '58'),
(1264, 265, '_menu_item_object', 'category'),
(1265, 265, '_menu_item_target', ''),
(1266, 265, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1267, 265, '_menu_item_xfn', ''),
(1268, 265, '_menu_item_url', ''),
(1270, 266, '_menu_item_type', 'taxonomy'),
(1271, 266, '_menu_item_menu_item_parent', '264'),
(1272, 266, '_menu_item_object_id', '59'),
(1273, 266, '_menu_item_object', 'category'),
(1274, 266, '_menu_item_target', ''),
(1275, 266, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1276, 266, '_menu_item_xfn', ''),
(1277, 266, '_menu_item_url', ''),
(1279, 267, '_menu_item_type', 'taxonomy'),
(1280, 267, '_menu_item_menu_item_parent', '0'),
(1281, 267, '_menu_item_object_id', '64'),
(1282, 267, '_menu_item_object', 'category'),
(1283, 267, '_menu_item_target', ''),
(1284, 267, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1285, 267, '_menu_item_xfn', ''),
(1286, 267, '_menu_item_url', ''),
(1288, 273, '_edit_last', '1'),
(1289, 273, '_edit_lock', '1575472402:1'),
(1290, 273, '_thumbnail_id', '125'),
(1291, 273, '_yoast_wpseo_primary_category', '55'),
(1292, 273, '_yoast_wpseo_content_score', '60'),
(1293, 273, '_yoast_wpseo_focuskeywords', ''),
(1294, 273, '_yoast_wpseo_keywordsynonyms', ''),
(1295, 275, '_edit_last', '1'),
(1296, 275, '_edit_lock', '1575474882:1'),
(1297, 275, '_thumbnail_id', '202'),
(1298, 275, '_yoast_wpseo_primary_category', '60'),
(1299, 275, '_price', '300000'),
(1300, 275, '_yoast_wpseo_content_score', '60'),
(1301, 275, '_yoast_wpseo_focuskeywords', ''),
(1302, 275, '_yoast_wpseo_keywordsynonyms', '');

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
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
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
(2, 1, '2019-11-08 13:15:12', '2019-11-08 13:15:12', '<!-- wp:paragraph -->\n<p>Đây là trang mẫu. Nó khác với bài viết bởi vì nó thường cố định và hiển thị trong menu của bạn. Nhiều người bắt đầu với trang Giới thiệu nơi bạn chia sẻ thông tin cho những ai ghé thăm. Nó có thể bắt đầu như thế này:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Chào bạn! Tôi là một người bán hàng, và đây là website của tôi. Tôi sống ở Hà Nội, có một gia đình nhỏ, và tôi thấy cách sử dụng WordPress rất thú vị.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>... hoặc cái gì đó như thế này:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Công ty chúng tôi được thành lập năm 2010, và cung cấp dịch vụ chất lượng cho rất nhiều sự kiện tại khắp Việt Nam. Với văn phòng đặt tại Hà Nội, TP. Hồ Chí Minh cùng hơn 40 nhân sự, chúng tôi là nơi nhiều đối tác tin tưởng giao cho tổ chức các sự kiện lớn.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Là một người dùng WordPress mới, bạn nên ghé thăm <a href=\"http://localhost/wp_baotoanviet/wp-admin/\">bảng tin</a> để xóa trang này và tạo trang mới cho nội dung của chính bạn. Chúc bạn vui vẻ!</p>\n<!-- /wp:paragraph -->', 'Trang Mẫu', '', 'trash', 'closed', 'open', '', 'Trang mẫu__trashed', '', '', '2019-11-09 10:25:34', '2019-11-09 10:25:34', '', 0, 'http://localhost/wp_baotoanviet/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-11-08 13:15:12', '2019-11-08 13:15:12', '<!-- wp:heading --><h2>Chúng tôi là ai</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Địa chỉ website là: http://localhost/wp_baotoanviet.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Thông tin cá nhân nào bị thu thập và tại sao thu thập</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Bình luận</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Khi khách truy cập để lại bình luận trên trang web, chúng tôi thu thập dữ liệu được hiển thị trong biểu mẫu bình luận và cũng là địa chỉ IP của người truy cập và chuỗi user agent của người dùng trình duyệt để giúp phát hiện spam</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Một chuỗi ẩn danh được tạo từ địa chỉ email của bạn (còn được gọi là hash) có thể được cung cấp cho dịch vụ Gravatar để xem bạn có đang sử dụng nó hay không. Chính sách bảo mật của dịch vụ Gravatar có tại đây: https://automattic.com/privacy/. Sau khi chấp nhận bình luận của bạn, ảnh tiểu sử của bạn được hiển thị công khai trong ngữ cảnh bình luận của bạn.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Thư viện</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Nếu bạn tải hình ảnh lên trang web, bạn nên tránh tải lên hình ảnh có dữ liệu vị trí được nhúng (EXIF GPS) đi kèm. Khách truy cập vào trang web có thể tải xuống và giải nén bất kỳ dữ liệu vị trí nào từ hình ảnh trên trang web.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Thông tin liên hệ</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Nếu bạn viết bình luận trong website, bạn có thể cung cấp cần nhập tên, email địa chỉ website trong cookie. Các thông tin này nhằm giúp bạn không cần nhập thông tin nhiều lần khi viết bình luận khác. Cookie này sẽ được lưu giữ trong một năm.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Nếu bạn vào trang đăng nhập, chúng tôi sẽ thiết lập một cookie tạm thời để xác định nếu trình duyệt cho phép sử dụng cookie. Cookie này không bao gồm thông tin cá nhân và sẽ được gỡ bỏ khi bạn đóng trình duyệt.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Khi bạn đăng nhập, chúng tôi sẽ thiết lập một vài cookie để lưu thông tin đăng nhập và lựa chọn hiển thị. Thông tin đăng nhập gần nhất lưu trong hai ngày, và lựa chọn hiển thị gần nhất lưu trong một năm. Nếu bạn chọn &quot;Nhớ tôi&quot;, thông tin đăng nhập sẽ được lưu trong hai tuần. Nếu bạn thoát tài khoản, thông tin cookie đăng nhập sẽ bị xoá.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Nếu bạn sửa hoặc công bố bài viết, một bản cookie bổ sung sẽ được lưu trong trình duyệt. Cookie này không chứa thông tin cá nhân và chỉ đơn giản bao gồm ID của bài viết bạn đã sửa. Nó tự động hết hạn sau 1 ngày.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Nội dung nhúng từ website khác</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Các bài viết trên trang web này có thể bao gồm nội dung được nhúng (ví dụ: video, hình ảnh, bài viết, v.v.). Nội dung được nhúng từ các trang web khác hoạt động theo cùng một cách chính xác như khi khách truy cập đã truy cập trang web khác.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Những website này có thể thu thập dữ liệu về bạn, sử dụng cookie, nhúng các trình theo dõi của bên thứ ba và giám sát tương tác của bạn với nội dung được nhúng đó, bao gồm theo dõi tương tác của bạn với nội dung được nhúng nếu bạn có tài khoản và đã đăng nhập vào trang web đó.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Phân tích</h3><!-- /wp:heading --><!-- wp:heading --><h2>Chúng tôi chia sẻ dữ liệu của bạn với ai</h2><!-- /wp:heading --><!-- wp:heading --><h2>Dữ liệu của bạn tồn tại bao lâu</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Nếu bạn để lại bình luận, bình luận và siêu dữ liệu của nó sẽ được giữ lại vô thời hạn. Điều này là để chúng tôi có thể tự động nhận ra và chấp nhận bất kỳ bình luận nào thay vì giữ chúng trong khu vực đợi kiểm duyệt.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Đối với người dùng đăng ký trên trang web của chúng tôi (nếu có), chúng tôi cũng lưu trữ thông tin cá nhân mà họ cung cấp trong hồ sơ người dùng của họ. Tất cả người dùng có thể xem, chỉnh sửa hoặc xóa thông tin cá nhân của họ bất kỳ lúc nào (ngoại trừ họ không thể thay đổi tên người dùng của họ). Quản trị viên trang web cũng có thể xem và chỉnh sửa thông tin đó.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Các quyền nào của bạn với dữ liệu của mình</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Nếu bạn có tài khoản trên trang web này hoặc đã để lại nhận xét, bạn có thể yêu cầu nhận tệp xuất dữ liệu cá nhân mà chúng tôi lưu giữ về bạn, bao gồm mọi dữ liệu bạn đã cung cấp cho chúng tôi. Bạn cũng có thể yêu cầu chúng tôi xóa mọi dữ liệu cá nhân mà chúng tôi lưu giữ về bạn. Điều này không bao gồm bất kỳ dữ liệu nào chúng tôi có nghĩa vụ giữ cho các mục đích hành chính, pháp lý hoặc bảo mật.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Các dữ liệu của bạn được gửi tới đâu</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Các bình luận của khách (không phải là thành viên) có thể được kiểm tra thông qua dịch vụ tự động phát hiện spam.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Thông tin liên hệ của bạn</h2><!-- /wp:heading --><!-- wp:heading --><h2>Thông tin bổ sung</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cách chúng tôi bảo vệ dữ liệu của bạn</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Các quá trình tiết lộ dữ liệu mà chúng tôi thực hiện</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Những bên thứ ba chúng tôi nhận dữ liệu từ đó</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Việc quyết định và/hoặc thu thập thông tin tự động mà chúng tôi áp dụng với dữ liệu người dùng</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Các yêu cầu công bố thông tin được quản lý</h3><!-- /wp:heading -->', 'Chính sách bảo mật', '', 'trash', 'closed', 'open', '', 'chinh-sach-bao-mat__trashed', '', '', '2019-11-09 10:25:39', '2019-11-09 10:25:39', '', 0, 'http://localhost/wp_baotoanviet/?page_id=3', 0, 'page', '', 0),
(5, 1, '2019-11-09 10:25:34', '2019-11-09 10:25:34', '<!-- wp:paragraph -->\n<p>Đây là trang mẫu. Nó khác với bài viết bởi vì nó thường cố định và hiển thị trong menu của bạn. Nhiều người bắt đầu với trang Giới thiệu nơi bạn chia sẻ thông tin cho những ai ghé thăm. Nó có thể bắt đầu như thế này:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Chào bạn! Tôi là một người bán hàng, và đây là website của tôi. Tôi sống ở Hà Nội, có một gia đình nhỏ, và tôi thấy cách sử dụng WordPress rất thú vị.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>... hoặc cái gì đó như thế này:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Công ty chúng tôi được thành lập năm 2010, và cung cấp dịch vụ chất lượng cho rất nhiều sự kiện tại khắp Việt Nam. Với văn phòng đặt tại Hà Nội, TP. Hồ Chí Minh cùng hơn 40 nhân sự, chúng tôi là nơi nhiều đối tác tin tưởng giao cho tổ chức các sự kiện lớn.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Là một người dùng WordPress mới, bạn nên ghé thăm <a href=\"http://localhost/wp_baotoanviet/wp-admin/\">bảng tin</a> để xóa trang này và tạo trang mới cho nội dung của chính bạn. Chúc bạn vui vẻ!</p>\n<!-- /wp:paragraph -->', 'Trang Mẫu', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-11-09 10:25:34', '2019-11-09 10:25:34', '', 2, 'http://localhost/wp_baotoanviet/2019/11/09/2-revision-v1/', 0, 'revision', '', 0),
(6, 1, '2019-11-09 10:25:39', '2019-11-09 10:25:39', '<!-- wp:heading --><h2>Chúng tôi là ai</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Địa chỉ website là: http://localhost/wp_baotoanviet.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Thông tin cá nhân nào bị thu thập và tại sao thu thập</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Bình luận</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Khi khách truy cập để lại bình luận trên trang web, chúng tôi thu thập dữ liệu được hiển thị trong biểu mẫu bình luận và cũng là địa chỉ IP của người truy cập và chuỗi user agent của người dùng trình duyệt để giúp phát hiện spam</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Một chuỗi ẩn danh được tạo từ địa chỉ email của bạn (còn được gọi là hash) có thể được cung cấp cho dịch vụ Gravatar để xem bạn có đang sử dụng nó hay không. Chính sách bảo mật của dịch vụ Gravatar có tại đây: https://automattic.com/privacy/. Sau khi chấp nhận bình luận của bạn, ảnh tiểu sử của bạn được hiển thị công khai trong ngữ cảnh bình luận của bạn.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Thư viện</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Nếu bạn tải hình ảnh lên trang web, bạn nên tránh tải lên hình ảnh có dữ liệu vị trí được nhúng (EXIF GPS) đi kèm. Khách truy cập vào trang web có thể tải xuống và giải nén bất kỳ dữ liệu vị trí nào từ hình ảnh trên trang web.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Thông tin liên hệ</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Nếu bạn viết bình luận trong website, bạn có thể cung cấp cần nhập tên, email địa chỉ website trong cookie. Các thông tin này nhằm giúp bạn không cần nhập thông tin nhiều lần khi viết bình luận khác. Cookie này sẽ được lưu giữ trong một năm.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Nếu bạn vào trang đăng nhập, chúng tôi sẽ thiết lập một cookie tạm thời để xác định nếu trình duyệt cho phép sử dụng cookie. Cookie này không bao gồm thông tin cá nhân và sẽ được gỡ bỏ khi bạn đóng trình duyệt.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Khi bạn đăng nhập, chúng tôi sẽ thiết lập một vài cookie để lưu thông tin đăng nhập và lựa chọn hiển thị. Thông tin đăng nhập gần nhất lưu trong hai ngày, và lựa chọn hiển thị gần nhất lưu trong một năm. Nếu bạn chọn &quot;Nhớ tôi&quot;, thông tin đăng nhập sẽ được lưu trong hai tuần. Nếu bạn thoát tài khoản, thông tin cookie đăng nhập sẽ bị xoá.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Nếu bạn sửa hoặc công bố bài viết, một bản cookie bổ sung sẽ được lưu trong trình duyệt. Cookie này không chứa thông tin cá nhân và chỉ đơn giản bao gồm ID của bài viết bạn đã sửa. Nó tự động hết hạn sau 1 ngày.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Nội dung nhúng từ website khác</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Các bài viết trên trang web này có thể bao gồm nội dung được nhúng (ví dụ: video, hình ảnh, bài viết, v.v.). Nội dung được nhúng từ các trang web khác hoạt động theo cùng một cách chính xác như khi khách truy cập đã truy cập trang web khác.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Những website này có thể thu thập dữ liệu về bạn, sử dụng cookie, nhúng các trình theo dõi của bên thứ ba và giám sát tương tác của bạn với nội dung được nhúng đó, bao gồm theo dõi tương tác của bạn với nội dung được nhúng nếu bạn có tài khoản và đã đăng nhập vào trang web đó.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Phân tích</h3><!-- /wp:heading --><!-- wp:heading --><h2>Chúng tôi chia sẻ dữ liệu của bạn với ai</h2><!-- /wp:heading --><!-- wp:heading --><h2>Dữ liệu của bạn tồn tại bao lâu</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Nếu bạn để lại bình luận, bình luận và siêu dữ liệu của nó sẽ được giữ lại vô thời hạn. Điều này là để chúng tôi có thể tự động nhận ra và chấp nhận bất kỳ bình luận nào thay vì giữ chúng trong khu vực đợi kiểm duyệt.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Đối với người dùng đăng ký trên trang web của chúng tôi (nếu có), chúng tôi cũng lưu trữ thông tin cá nhân mà họ cung cấp trong hồ sơ người dùng của họ. Tất cả người dùng có thể xem, chỉnh sửa hoặc xóa thông tin cá nhân của họ bất kỳ lúc nào (ngoại trừ họ không thể thay đổi tên người dùng của họ). Quản trị viên trang web cũng có thể xem và chỉnh sửa thông tin đó.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Các quyền nào của bạn với dữ liệu của mình</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Nếu bạn có tài khoản trên trang web này hoặc đã để lại nhận xét, bạn có thể yêu cầu nhận tệp xuất dữ liệu cá nhân mà chúng tôi lưu giữ về bạn, bao gồm mọi dữ liệu bạn đã cung cấp cho chúng tôi. Bạn cũng có thể yêu cầu chúng tôi xóa mọi dữ liệu cá nhân mà chúng tôi lưu giữ về bạn. Điều này không bao gồm bất kỳ dữ liệu nào chúng tôi có nghĩa vụ giữ cho các mục đích hành chính, pháp lý hoặc bảo mật.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Các dữ liệu của bạn được gửi tới đâu</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Các bình luận của khách (không phải là thành viên) có thể được kiểm tra thông qua dịch vụ tự động phát hiện spam.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Thông tin liên hệ của bạn</h2><!-- /wp:heading --><!-- wp:heading --><h2>Thông tin bổ sung</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cách chúng tôi bảo vệ dữ liệu của bạn</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Các quá trình tiết lộ dữ liệu mà chúng tôi thực hiện</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Những bên thứ ba chúng tôi nhận dữ liệu từ đó</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Việc quyết định và/hoặc thu thập thông tin tự động mà chúng tôi áp dụng với dữ liệu người dùng</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Các yêu cầu công bố thông tin được quản lý</h3><!-- /wp:heading -->', 'Chính sách bảo mật', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2019-11-09 10:25:39', '2019-11-09 10:25:39', '', 3, 'http://localhost/wp_baotoanviet/2019/11/09/3-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2019-11-09 10:25:56', '2019-11-09 10:25:56', '<label> Họ và tên:\r\n    [text* your-name] </label>\r\n\r\n<label> Email:\r\n    [email* your-email] </label>\r\n\r\n<label> Số điện thoại\r\n    [tel tel-755] </label>\r\n\r\n<label> Tiêu đề\r\n    [text your-subject] </label>\r\n\r\n\r\n<label> Nội dung\r\n    [textarea your-message] </label>\r\n\r\n[submit \"Gửi\"]\n1\nCông Ty Cổ Phần Bảo Toàn Việt \"[your-subject]\"\nCông Ty Cổ Phần Bảo Toàn Việt <minh.nhat.dev@gmail.com>\nminh.nhat.dev@gmail.com\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Công Ty Cổ Phần Bảo Toàn Việt (//localhost:3000/wp_baotoanviet)\nReply-To: [your-email]\n\n\n\n\nCông Ty Cổ Phần Bảo Toàn Việt \"[your-subject]\"\nCông Ty Cổ Phần Bảo Toàn Việt <minh.nhat.dev@gmail.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Công Ty Cổ Phần Bảo Toàn Việt (//localhost:3000/wp_baotoanviet)\nReply-To: minh.nhat.dev@gmail.com\n\n\n\nCảm ơn bạn đã liên hệ với chúng tôi, Chúng tôi sẽ trả lời sớm nhất\nHệ thống đang bận, vui lòng thử lại sau\nVui lòng nhập lại\nHệ thống đang bận, vui lòng thử lại sau\nYou must accept the terms and conditions before sending your message.\nBắt buộc\nQuá nhiều kí tự\nQuá nhiều kí tự\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2019-11-14 03:48:55', '2019-11-14 03:48:55', '', 0, 'http://localhost/wp_baotoanviet/?post_type=wpcf7_contact_form&#038;p=8', 0, 'wpcf7_contact_form', '', 0),
(9, 1, '2019-11-09 10:32:17', '2019-11-09 10:32:17', '[contact-form-7 id=\"8\" title=\"Contact form 1\"]', 'From contact', '', 'trash', 'closed', 'closed', '', 'dia-chi__trashed', '', '', '2019-11-11 03:08:14', '2019-11-11 03:08:14', '', 0, 'http://localhost/wp_baotoanviet/?page_id=9', 0, 'page', '', 0),
(10, 1, '2019-11-09 10:32:17', '2019-11-09 10:32:17', '<div>\r\n\r\n<strong>CÔNG TY CỔ PHẦN PHÁT TRIỂN CÔNG NGHỆ HỢP NHẤT</strong>\r\n<div>\r\n<div><b>Hà Nội:</b> Số 6A ngõ 235 Nguyễn Trãi, Thanh Xuân, Hà Nội. <em>(<a title=\"bản đồ đến thiết bị quang\" href=\"https://goo.gl/maps/ALM8MYxRKHw\" target=\"_blank\" rel=\"nofollow noopener noreferrer\">Bản đồ đường đi</a>)</em></div>\r\n<div>Điện thoại: (024) 35511222 - (024) 35510427</div>\r\n<div><b>Hồ Chí Minh:</b> 108/1/6 Khu Biệt Thự Làng Hoa, Đường số 10 (Cây Trâm), Gò Vấp, HCM. <em>(Đối diện công viên Làng Hoa)</em></div>\r\n<div>Điện thoại: (028) 62959899 - (028) 62959919</div>\r\n<div><b>Đà Nẵng:</b> 259 đường Trưng Nữ Vương, Hòa Thuận Đông, Quận Hải Châu, Đà Nẵng.</div>\r\n<div>Điện thoại: 0335 866 266 - 0345 666 118</div>\r\n<div>Website: <strong><a title=\"dây cáp quang, phụ kiện quang, hộp phối quang odf, dây nhảy quang, bộ chuyển đổi quang điện, video converter quang\" href=\"https://thietbiquang.net/\">www.baotoanviet.com</a></strong> - Email nhận báo giá: <strong>baotoanviet.net@gmail.com</strong></div>\r\n</div>\r\n</div>\r\n© 2012 <strong>HopNhat Group</strong>™ All Rights Reserved. Design and SEO by <strong>Minh Nhat</strong>', 'Địa chỉ', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-11-09 10:32:17', '2019-11-09 10:32:17', '', 9, 'http://localhost/wp_baotoanviet/2019/11/09/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2019-11-09 10:37:46', '2019-11-09 10:37:46', '<div>\r\n\r\n<strong>CÔNG TY CỔ PHẦN BẢO TOÀN VIỆT</strong>\r\n<div>\r\n<div><b>Hà Nội:</b> Số 6A ngõ 235 Nguyễn Trãi, Thanh Xuân, Hà Nội. <em>(<a title=\"bản đồ đến thiết bị quang\" href=\"https://goo.gl/maps/ALM8MYxRKHw\" target=\"_blank\" rel=\"nofollow noopener noreferrer\">Bản đồ đường đi</a>)</em></div>\r\n<div>Điện thoại: (024) 35511222 - (024) 35510427</div>\r\n<div><b>Hồ Chí Minh:</b> 108/1/6 Khu Biệt Thự Làng Hoa, Đường số 10 (Cây Trâm), Gò Vấp, HCM. <em>(Đối diện công viên Làng Hoa)</em></div>\r\n<div>Điện thoại: (028) 62959899 - (028) 62959919</div>\r\n<div><b>Đà Nẵng:</b> 259 đường Trưng Nữ Vương, Hòa Thuận Đông, Quận Hải Châu, Đà Nẵng.</div>\r\n<div>Điện thoại: 0335 866 266 - 0345 666 118</div>\r\n<div>Website: <strong><a title=\"dây cáp quang, phụ kiện quang, hộp phối quang odf, dây nhảy quang, bộ chuyển đổi quang điện, video converter quang\" href=\"https://thietbiquang.net/\">www.baotoanviet.com</a></strong> - Email nhận báo giá: <strong>baotoanviet.net@gmail.com</strong></div>\r\n</div>\r\n</div>\r\n© 2012 <strong>HopNhat Group</strong>™ All Rights Reserved. Design and SEO by <strong>Minh Nhat</strong>', 'Địa chỉ', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-11-09 10:37:46', '2019-11-09 10:37:46', '', 9, 'http://localhost/wp_baotoanviet/2019/11/09/9-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2019-11-09 10:40:58', '2019-11-09 10:40:58', '<div>\r\n\r\n<strong>CÔNG TY CỔ PHẦN BẢO TOÀN VIỆT</strong>\r\n<div>\r\n<div><b>Hà Nội:</b> Số 6A ngõ 235 Nguyễn Trãi, Thanh Xuân, Hà Nội. <em>(<a title=\"bản đồ đến thiết bị quang\" href=\"https://goo.gl/maps/ALM8MYxRKHw\" target=\"_blank\" rel=\"nofollow noopener noreferrer\">Bản đồ đường đi</a>)</em></div>\r\n<div>Điện thoại: (024) 35511222 - (024) 35510427</div>\r\n<div><b>Hồ Chí Minh:</b> 108/1/6 Khu Biệt Thự Làng Hoa, Đường số 10 (Cây Trâm), Gò Vấp, HCM. <em>(Đối diện công viên Làng Hoa)</em></div>\r\n<div>Điện thoại: (028) 62959899 - (028) 62959919</div>\r\n<div><b>Đà Nẵng:</b> 259 đường Trưng Nữ Vương, Hòa Thuận Đông, Quận Hải Châu, Đà Nẵng.</div>\r\n<div>Điện thoại: 0335 866 266 - 0345 666 118</div>\r\n<div>Website: <strong><a title=\"dây cáp quang, phụ kiện quang, hộp phối quang odf, dây nhảy quang, bộ chuyển đổi quang điện, video converter quang\" href=\"https://thietbiquang.net/\">www.baotoanviet.com</a></strong> - Email nhận báo giá: <strong>baotoanviet.net@gmail.com</strong></div>\r\n</div>\r\n</div>\r\n© 2019 <strong>BaoToanViet</strong>™ All Rights Reserved. Design and SEO by <strong>Minh Nhat</strong>', 'Địa chỉ', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-11-09 10:40:58', '2019-11-09 10:40:58', '', 9, 'http://localhost/wp_baotoanviet/2019/11/09/9-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2019-11-09 15:20:48', '2019-11-09 15:20:48', ' ', '', '', 'publish', 'closed', 'closed', '', '31', '', '', '2019-11-16 03:31:19', '2019-11-16 03:31:19', '', 2, 'http://localhost/wp_baotoanviet/?p=31', 18, 'nav_menu_item', '', 0),
(37, 1, '2019-11-10 08:22:00', '2019-11-10 08:22:00', 'Đây là trang giới thiệu', 'Giới thiệu', '', 'publish', 'closed', 'closed', '', 'gioi-thieu', '', '', '2019-11-10 16:36:19', '2019-11-10 16:36:19', '', 0, 'http://localhost/wp_baotoanviet/?page_id=37', 0, 'page', '', 0),
(38, 1, '2019-11-09 15:37:31', '2019-11-09 15:37:31', '', 'Giới thiệu', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2019-11-09 15:37:31', '2019-11-09 15:37:31', '', 37, 'http://localhost/wp_baotoanviet/2019/11/09/37-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2019-11-10 08:20:48', '2019-11-10 08:20:48', '<div>\r\n\r\n<strong>\r\nCÔNG TY CỔ PHẦN BẢO TOÀN VIỆT</strong>\r\n<div>\r\n<div><b>Hà Nội:</b> Số 6A ngõ 235 Nguyễn Trãi, Thanh Xuân, Hà Nội. <em>(<a title=\"bản đồ đến thiết bị quang\" href=\"https://goo.gl/maps/ALM8MYxRKHw\" target=\"_blank\" rel=\"nofollow noopener noreferrer\">Bản đồ đường đi</a>)</em></div>\r\n<div>Điện thoại: (024) 35511222 - (024) 35510427</div>\r\n<div><b>Hồ Chí Minh:</b> 108/1/6 Khu Biệt Thự Làng Hoa, Đường số 10 (Cây Trâm), Gò Vấp, HCM. <em>(Đối diện công viên Làng Hoa)</em></div>\r\n<div>Điện thoại: (028) 62959899 - (028) 62959919</div>\r\n<div><b>Đà Nẵng:</b> 259 đường Trưng Nữ Vương, Hòa Thuận Đông, Quận Hải Châu, Đà Nẵng.</div>\r\n<div>Điện thoại: 0335 866 266 - 0345 666 118</div>\r\n<div>Website: <strong><a title=\"dây cáp quang, phụ kiện quang, hộp phối quang odf, dây nhảy quang, bộ chuyển đổi quang điện, video converter quang\" href=\"https://thietbiquang.net/\">www.baotoanviet.com</a></strong> - Email nhận báo giá: <strong>baotoanviet.net@gmail.com</strong></div>\r\n</div>\r\n</div>', 'Nội dung liên hệ', '', 'publish', 'closed', 'closed', '', 'noi-dung-lien-he', '', '', '2019-11-11 03:32:18', '2019-11-11 03:32:18', '', 0, 'http://localhost/wp_baotoanviet/?page_id=43', 0, 'page', '', 0),
(44, 1, '2019-11-10 08:20:48', '2019-11-10 08:20:48', 'Liên hệ', 'Liên hệ', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2019-11-10 08:20:48', '2019-11-10 08:20:48', '', 43, 'http://localhost/wp_baotoanviet/2019/11/10/43-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2019-11-10 08:21:48', '2019-11-10 08:21:48', '', 'Trang chủ', '', 'publish', 'closed', 'closed', '', 'trang-chu', '', '', '2019-11-22 03:25:21', '2019-11-22 03:25:21', '', 0, 'http://localhost/wp_baotoanviet/?p=46', 1, 'nav_menu_item', '', 0),
(51, 1, '2019-11-10 08:22:26', '2019-11-10 08:22:26', ' ', '', '', 'publish', 'closed', 'closed', '', '51', '', '', '2019-11-22 03:25:21', '2019-11-22 03:25:21', '', 0, 'http://localhost/wp_baotoanviet/?p=51', 2, 'nav_menu_item', '', 0),
(73, 1, '2019-11-10 10:47:11', '2019-11-10 10:47:11', '<div>\r\n\r\n<strong>CÔNG TY CỔ PHẦN BẢO TOÀN VIỆT</strong>\r\n<div>\r\n<div><b>Hà Nội:</b> Số 6A ngõ 235 Nguyễn Trãi, Thanh Xuân, Hà Nội. <em>(<a title=\"bản đồ đến thiết bị quang\" href=\"https://goo.gl/maps/ALM8MYxRKHw\" target=\"_blank\" rel=\"nofollow noopener noreferrer\">Bản đồ đường đi</a>)</em></div>\r\n<div>Điện thoại: (024) 35511222 - (024) 35510427</div>\r\n<div><b>Hồ Chí Minh:</b> 108/1/6 Khu Biệt Thự Làng Hoa, Đường số 10 (Cây Trâm), Gò Vấp, HCM. <em>(Đối diện công viên Làng Hoa)</em></div>\r\n<div>Điện thoại: (028) 62959899 - (028) 62959919</div>\r\n<div><b>Đà Nẵng:</b> 259 đường Trưng Nữ Vương, Hòa Thuận Đông, Quận Hải Châu, Đà Nẵng.</div>\r\n<div>Điện thoại: 0335 866 266 - 0345 666 118</div>\r\n<div>Website: <strong><a title=\"dây cáp quang, phụ kiện quang, hộp phối quang odf, dây nhảy quang, bộ chuyển đổi quang điện, video converter quang\" href=\"https://thietbiquang.net/\">www.baotoanviet.com</a></strong> - Email nhận báo giá: <strong>baotoanviet.net@gmail.com</strong></div>\r\n</div>\r\n</div>', 'Địa chỉ', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-11-10 10:47:11', '2019-11-10 10:47:11', '', 9, 'http://localhost/wp_baotoanviet/2019/11/10/9-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2019-11-10 14:32:04', '2019-11-10 14:32:04', '', 'Trang chủ', '', 'publish', 'closed', 'closed', '', 'trang-chu-2', '', '', '2019-11-19 02:30:24', '2019-11-19 02:30:24', '', 0, 'http://localhost/wp_baotoanviet/?p=76', 1, 'nav_menu_item', '', 0),
(77, 1, '2019-11-10 14:32:04', '2019-11-10 14:32:04', ' ', '', '', 'publish', 'closed', 'closed', '', '77', '', '', '2019-11-19 02:30:24', '2019-11-19 02:30:24', '', 0, 'http://localhost/wp_baotoanviet/?p=77', 2, 'nav_menu_item', '', 0),
(80, 1, '2019-11-10 15:28:09', '2019-11-10 15:28:09', '<div>\r\n\r\n<strong>CÔNG TY CỔ PHẦN BẢO TOÀN VIỆT</strong>\r\n<div>\r\n<div><b>Hà Nội:</b> Số 6A ngõ 235 Nguyễn Trãi, Thanh Xuân, Hà Nội. <em>(<a title=\"bản đồ đến thiết bị quang\" href=\"https://goo.gl/maps/ALM8MYxRKHw\" target=\"_blank\" rel=\"nofollow noopener noreferrer\">Bản đồ đường đi</a>)</em></div>\r\n<div>Điện thoại: (024) 35511222 - (024) 35510427</div>\r\n<div><b>Hồ Chí Minh:</b> 108/1/6 Khu Biệt Thự Làng Hoa, Đường số 10 (Cây Trâm), Gò Vấp, HCM. <em>(Đối diện công viên Làng Hoa)</em></div>\r\n<div>Điện thoại: (028) 62959899 - (028) 62959919</div>\r\n<div><b>Đà Nẵng:</b> 259 đường Trưng Nữ Vương, Hòa Thuận Đông, Quận Hải Châu, Đà Nẵng.</div>\r\n<div>Điện thoại: 0335 866 266 - 0345 666 118</div>\r\n<div>Website: <strong><a title=\"dây cáp quang, phụ kiện quang, hộp phối quang odf, dây nhảy quang, bộ chuyển đổi quang điện, video converter quang\" href=\"https://thietbiquang.net/\">www.baotoanviet.com</a></strong> - Email nhận báo giá: <strong>baotoanviet.net@gmail.com</strong></div>\r\n</div>\r\n</div>', 'Liên hệ', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2019-11-10 15:28:09', '2019-11-10 15:28:09', '', 43, 'http://localhost/wp_baotoanviet/2019/11/10/43-revision-v1/', 0, 'revision', '', 0),
(81, 1, '2019-11-10 15:30:55', '2019-11-10 15:30:55', '<iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3834.2700307562413!2d108.20748031485819!3d16.051471288891918!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x314219b9a28b38f7%3A0xe2926cff83e2272b!2zMTkwIEzDqiDEkMOsbmggTMO9LCBIw7JhIFRodeG6rW4gTmFtLCBI4bqjaSBDaMOidSwgxJDDoCBO4bq1bmcgNTUwMDAw!5e0!3m2!1sen!2s!4v1573399829388!5m2!1sen!2s\" width=\"750\" height=\"400\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe>', 'Google Map', '', 'publish', 'closed', 'closed', '', 'google-map', '', '', '2019-11-10 15:36:13', '2019-11-10 15:36:13', '', 0, 'http://localhost/wp_baotoanviet/?page_id=81', 0, 'page', '', 0),
(82, 1, '2019-11-10 15:30:55', '2019-11-10 15:30:55', '<iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3834.2700307562413!2d108.20748031485819!3d16.051471288891918!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x314219b9a28b38f7%3A0xe2926cff83e2272b!2zMTkwIEzDqiDEkMOsbmggTMO9LCBIw7JhIFRodeG6rW4gTmFtLCBI4bqjaSBDaMOidSwgxJDDoCBO4bq1bmcgNTUwMDAw!5e0!3m2!1sen!2s!4v1573399829388!5m2!1sen!2s\" width=\"600\" height=\"450\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe>', 'Google Map', '', 'inherit', 'closed', 'closed', '', '81-revision-v1', '', '', '2019-11-10 15:30:55', '2019-11-10 15:30:55', '', 81, 'http://localhost/wp_baotoanviet/2019/11/10/81-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2019-11-10 15:35:54', '2019-11-10 15:35:54', '<iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3834.2700307562413!2d108.20748031485819!3d16.051471288891918!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x314219b9a28b38f7%3A0xe2926cff83e2272b!2zMTkwIEzDqiDEkMOsbmggTMO9LCBIw7JhIFRodeG6rW4gTmFtLCBI4bqjaSBDaMOidSwgxJDDoCBO4bq1bmcgNTUwMDAw!5e0!3m2!1sen!2s!4v1573399829388!5m2!1sen!2s\" width=\"800\" height=\"550\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe>', 'Google Map', '', 'inherit', 'closed', 'closed', '', '81-revision-v1', '', '', '2019-11-10 15:35:54', '2019-11-10 15:35:54', '', 81, 'http://localhost/wp_baotoanviet/2019/11/10/81-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2019-11-10 15:36:13', '2019-11-10 15:36:13', '<iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3834.2700307562413!2d108.20748031485819!3d16.051471288891918!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x314219b9a28b38f7%3A0xe2926cff83e2272b!2zMTkwIEzDqiDEkMOsbmggTMO9LCBIw7JhIFRodeG6rW4gTmFtLCBI4bqjaSBDaMOidSwgxJDDoCBO4bq1bmcgNTUwMDAw!5e0!3m2!1sen!2s!4v1573399829388!5m2!1sen!2s\" width=\"750\" height=\"400\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe>', 'Google Map', '', 'inherit', 'closed', 'closed', '', '81-revision-v1', '', '', '2019-11-10 15:36:13', '2019-11-10 15:36:13', '', 81, 'http://localhost/wp_baotoanviet/2019/11/10/81-revision-v1/', 0, 'revision', '', 0),
(85, 1, '2019-11-10 15:39:51', '2019-11-10 15:39:51', '[contact-form-7 id=\"8\" title=\"Contact form 1\"]', 'From contact', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-11-10 15:39:51', '2019-11-10 15:39:51', '', 9, 'http://localhost/wp_baotoanviet/2019/11/10/9-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2019-11-10 15:46:54', '2019-11-10 15:46:54', '[contact-form-7 id=\"8\" title=\"Contact form 1\"]\r\n<div>\r\n\r\n<strong>\r\nCÔNG TY CỔ PHẦN BẢO TOÀN VIỆT</strong>\r\n<div>\r\n<div><b>Hà Nội:</b> Số 6A ngõ 235 Nguyễn Trãi, Thanh Xuân, Hà Nội. <em>(<a title=\"bản đồ đến thiết bị quang\" href=\"https://goo.gl/maps/ALM8MYxRKHw\" target=\"_blank\" rel=\"nofollow noopener noreferrer\">Bản đồ đường đi</a>)</em></div>\r\n<div>Điện thoại: (024) 35511222 - (024) 35510427</div>\r\n<div><b>Hồ Chí Minh:</b> 108/1/6 Khu Biệt Thự Làng Hoa, Đường số 10 (Cây Trâm), Gò Vấp, HCM. <em>(Đối diện công viên Làng Hoa)</em></div>\r\n<div>Điện thoại: (028) 62959899 - (028) 62959919</div>\r\n<div><b>Đà Nẵng:</b> 259 đường Trưng Nữ Vương, Hòa Thuận Đông, Quận Hải Châu, Đà Nẵng.</div>\r\n<div>Điện thoại: 0335 866 266 - 0345 666 118</div>\r\n<div>Website: <strong><a title=\"dây cáp quang, phụ kiện quang, hộp phối quang odf, dây nhảy quang, bộ chuyển đổi quang điện, video converter quang\" href=\"https://thietbiquang.net/\">www.baotoanviet.com</a></strong> - Email nhận báo giá: <strong>baotoanviet.net@gmail.com</strong></div>\r\n</div>\r\n</div>', 'Liên hệ', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2019-11-10 15:46:54', '2019-11-10 15:46:54', '', 43, 'http://localhost/wp_baotoanviet/2019/11/10/43-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2019-11-10 15:47:03', '2019-11-10 15:47:03', '<div>\r\n\r\n<strong>\r\nCÔNG TY CỔ PHẦN BẢO TOÀN VIỆT</strong>\r\n<div>\r\n<div><b>Hà Nội:</b> Số 6A ngõ 235 Nguyễn Trãi, Thanh Xuân, Hà Nội. <em>(<a title=\"bản đồ đến thiết bị quang\" href=\"https://goo.gl/maps/ALM8MYxRKHw\" target=\"_blank\" rel=\"nofollow noopener noreferrer\">Bản đồ đường đi</a>)</em></div>\r\n<div>Điện thoại: (024) 35511222 - (024) 35510427</div>\r\n<div><b>Hồ Chí Minh:</b> 108/1/6 Khu Biệt Thự Làng Hoa, Đường số 10 (Cây Trâm), Gò Vấp, HCM. <em>(Đối diện công viên Làng Hoa)</em></div>\r\n<div>Điện thoại: (028) 62959899 - (028) 62959919</div>\r\n<div><b>Đà Nẵng:</b> 259 đường Trưng Nữ Vương, Hòa Thuận Đông, Quận Hải Châu, Đà Nẵng.</div>\r\n<div>Điện thoại: 0335 866 266 - 0345 666 118</div>\r\n<div>Website: <strong><a title=\"dây cáp quang, phụ kiện quang, hộp phối quang odf, dây nhảy quang, bộ chuyển đổi quang điện, video converter quang\" href=\"https://thietbiquang.net/\">www.baotoanviet.com</a></strong> - Email nhận báo giá: <strong>baotoanviet.net@gmail.com</strong></div>\r\n</div>\r\n</div>', 'Liên hệ', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2019-11-10 15:47:03', '2019-11-10 15:47:03', '', 43, 'http://localhost/wp_baotoanviet/2019/11/10/43-revision-v1/', 0, 'revision', '', 0),
(88, 1, '2019-11-10 16:36:19', '2019-11-10 16:36:19', 'Đây là trang giới thiệu', 'Giới thiệu', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2019-11-10 16:36:19', '2019-11-10 16:36:19', '', 37, 'http://localhost/wp_baotoanviet/2019/11/10/37-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2019-11-11 03:08:36', '2019-11-11 03:08:36', '[contact-form-7 id=\"8\" title=\"Contact form 1\"]', 'Liên hệ', '', 'publish', 'closed', 'closed', '', 'lien-he', '', '', '2019-11-11 03:32:32', '2019-11-11 03:32:32', '', 0, 'http://localhost/wp_baotoanviet/?page_id=89', 0, 'page', '', 0),
(90, 1, '2019-11-11 03:08:36', '2019-11-11 03:08:36', '[contact-form-7 id=\"8\" title=\"Contact form 1\"]', 'Form liên hệ', '', 'inherit', 'closed', 'closed', '', '89-revision-v1', '', '', '2019-11-11 03:08:36', '2019-11-11 03:08:36', '', 89, 'http://localhost/wp_baotoanviet/2019/11/11/89-revision-v1/', 0, 'revision', '', 0),
(91, 1, '2019-11-11 03:32:18', '2019-11-11 03:32:18', '<div>\r\n\r\n<strong>\r\nCÔNG TY CỔ PHẦN BẢO TOÀN VIỆT</strong>\r\n<div>\r\n<div><b>Hà Nội:</b> Số 6A ngõ 235 Nguyễn Trãi, Thanh Xuân, Hà Nội. <em>(<a title=\"bản đồ đến thiết bị quang\" href=\"https://goo.gl/maps/ALM8MYxRKHw\" target=\"_blank\" rel=\"nofollow noopener noreferrer\">Bản đồ đường đi</a>)</em></div>\r\n<div>Điện thoại: (024) 35511222 - (024) 35510427</div>\r\n<div><b>Hồ Chí Minh:</b> 108/1/6 Khu Biệt Thự Làng Hoa, Đường số 10 (Cây Trâm), Gò Vấp, HCM. <em>(Đối diện công viên Làng Hoa)</em></div>\r\n<div>Điện thoại: (028) 62959899 - (028) 62959919</div>\r\n<div><b>Đà Nẵng:</b> 259 đường Trưng Nữ Vương, Hòa Thuận Đông, Quận Hải Châu, Đà Nẵng.</div>\r\n<div>Điện thoại: 0335 866 266 - 0345 666 118</div>\r\n<div>Website: <strong><a title=\"dây cáp quang, phụ kiện quang, hộp phối quang odf, dây nhảy quang, bộ chuyển đổi quang điện, video converter quang\" href=\"https://thietbiquang.net/\">www.baotoanviet.com</a></strong> - Email nhận báo giá: <strong>baotoanviet.net@gmail.com</strong></div>\r\n</div>\r\n</div>', 'Nội dung liên hệ', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2019-11-11 03:32:18', '2019-11-11 03:32:18', '', 43, 'http://localhost/wp_baotoanviet/43-revision-v1/', 0, 'revision', '', 0),
(92, 1, '2019-11-11 03:32:32', '2019-11-11 03:32:32', '[contact-form-7 id=\"8\" title=\"Contact form 1\"]', 'Liên hệ', '', 'inherit', 'closed', 'closed', '', '89-revision-v1', '', '', '2019-11-11 03:32:32', '2019-11-11 03:32:32', '', 89, 'http://localhost/wp_baotoanviet/89-revision-v1/', 0, 'revision', '', 0),
(93, 1, '2019-11-11 03:32:52', '2019-11-11 03:32:52', ' ', '', '', 'publish', 'closed', 'closed', '', '93', '', '', '2019-11-19 02:30:24', '2019-11-19 02:30:24', '', 0, 'http://localhost/wp_baotoanviet/?p=93', 3, 'nav_menu_item', '', 0),
(95, 1, '2019-11-11 04:36:09', '2019-11-11 04:36:09', '', 'Banner 1', '', 'publish', 'closed', 'closed', '', 'banner-1', '', '', '2019-11-11 04:37:44', '2019-11-11 04:37:44', '', 0, 'http://localhost/wp_baotoanviet/?post_type=banner&#038;p=95', 0, 'banner', '', 0),
(97, 1, '2019-11-11 04:36:41', '2019-11-11 04:36:41', '', 'Banner 2', '', 'publish', 'closed', 'closed', '', 'banner-2', '', '', '2019-11-11 04:38:18', '2019-11-11 04:38:18', '', 0, 'http://localhost/wp_baotoanviet/?post_type=banner&#038;p=97', 0, 'banner', '', 0),
(99, 1, '2019-11-11 04:37:36', '2019-11-11 04:37:36', 'Công Ty Cổ Phần Bảo Toàn Việt', 'banner-2', 'Công Ty Cổ Phần Bảo Toàn Việt', 'inherit', 'open', 'closed', '', 'banner-2-2', '', '', '2019-11-11 04:37:42', '2019-11-11 04:37:42', '', 95, 'http://localhost/wp_baotoanviet/wp-content/uploads/2019/11/banner-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(101, 1, '2019-11-11 04:38:14', '2019-11-11 04:38:14', 'Công Ty Cổ Phần Bảo Toàn Việt', 'banner-1', 'Công Ty Cổ Phần Bảo Toàn Việt', 'inherit', 'open', 'closed', '', 'banner-1-2', '', '', '2019-11-11 04:38:17', '2019-11-11 04:38:17', '', 97, 'http://localhost/wp_baotoanviet/wp-content/uploads/2019/11/banner-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(102, 1, '2019-11-11 05:55:34', '2019-11-11 05:55:34', '', 'banner 3', '', 'publish', 'closed', 'closed', '', 'banner-3', '', '', '2019-11-11 05:55:34', '2019-11-11 05:55:34', '', 0, 'http://localhost/wp_baotoanviet/?post_type=banner&#038;p=102', 0, 'banner', '', 0),
(103, 1, '2019-11-11 05:55:13', '2019-11-11 05:55:13', 'Công Ty Cổ Phần Bảo Toàn Việt', 'it-solutions-banner', 'Công Ty Cổ Phần Bảo Toàn Việt', 'inherit', 'open', 'closed', '', 'it-solutions-banner', '', '', '2019-11-11 05:55:32', '2019-11-11 05:55:32', '', 102, 'http://localhost/wp_baotoanviet/wp-content/uploads/2019/11/it-solutions-banner.jpg', 0, 'attachment', 'image/jpeg', 0),
(120, 1, '2019-11-11 08:44:49', '2019-11-11 08:44:49', 'Content1\r\ncontent2', 'MODULE QUANG CISCO 1000BASE-LX/LH GBIC, MODULE CISCO 1000BASE-LX/LH GBIC', 'CISCO 1000BASE-LX/LH GBIC The Cisco 1000BASE-LX/LH GBIC (WS-G5486) fully complies with the IEEE 802.3z 1000BASE-LX standard. However, its higher optical quality allows it to reach 6.2 miles (10 kilometers) over single-mode fiber (SMF), compared with the 3.1 miles (5 km) specified in the standard.', 'trash', 'closed', 'closed', '', 'module-quang-cisco-1000base-lx-lh-gbic-module-cisco-1000base-lx-lh-gbic__trashed', '', '', '2019-11-18 04:20:21', '2019-11-18 04:20:21', '', 0, 'http://localhost/wp_baotoanviet/?post_type=product&#038;p=120', 0, 'product', '', 0),
(121, 1, '2019-11-11 08:44:22', '2019-11-11 08:44:22', '', '1498711044cisco-MGBLH1', '', 'inherit', 'open', 'closed', '', '1498711044cisco-mgblh1', '', '', '2019-11-11 08:44:22', '2019-11-11 08:44:22', '', 120, 'http://localhost/wp_baotoanviet/wp-content/uploads/2019/11/1498711044cisco-MGBLH1.jpg', 0, 'attachment', 'image/jpeg', 0),
(122, 1, '2019-11-11 08:46:26', '2019-11-11 08:46:26', 'content1\r\ncontent2\r\n', 'MODULE SFP CISCO GLC-LH-SMD, GLC-LH-SMD TRANSCEIVER MODULE SFP 1000BLX/LH', 'Module Cisco GLC-LH-SMD​ là dòng SFP chạy trên bước sóng 1310nm khoảng cách xa tới 10KM với cáp quang singlemode chuẩn kết nối LC/LC (đầu nhỏ), Module quang SFP Cisco GLC-LH-SMD có cơ chế cắm nóng tức là khi thiết bị đang hoạt động bạn có thể thay thế ngay cắm Module quang này vào các thiết bị như Switch), Router của cisco mà không cần phải tắt thiết bị hoặc khởi động lại mà thiết bị tự nhận và active để hoạt động luôn khi Module SFP Cisco GLC-LH-SMD này được cắm vào.', 'trash', 'closed', 'closed', '', 'module-sfp-cisco-glc-lh-smd-glc-lh-smd-transceiver-module-sfp-1000blx-lh__trashed', '', '', '2019-11-18 04:20:20', '2019-11-18 04:20:20', '', 0, 'http://localhost/wp_baotoanviet/?post_type=product&#038;p=122', 0, 'product', '', 0),
(123, 1, '2019-11-11 08:46:06', '2019-11-11 08:46:06', '', '1498809344GLC-LH-SMD-1', '', 'inherit', 'open', 'closed', '', '1498809344glc-lh-smd-1', '', '', '2019-11-11 08:46:06', '2019-11-11 08:46:06', '', 122, 'http://localhost/wp_baotoanviet/wp-content/uploads/2019/11/1498809344GLC-LH-SMD-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(124, 1, '2019-11-11 08:47:45', '2019-11-11 08:47:45', 'content1\r\ncontent2\r\n', 'MODULE QUANG CISCO 1000BASE-LX/LH GBIC, MODULE CISCO 1000BASE-LX/LH GBIC', 'CISCO 1000BASE-LX/LH GBIC The Cisco 1000BASE-LX/LH GBIC (WS-G5486) fully complies with the IEEE 802.3z 1000BASE-LX standard. However, its higher optical quality allows it to reach 6.2 miles (10 kilometers) over single-mode fiber (SMF), compared with the 3.1 miles (5 km) specified in the standard.', 'trash', 'closed', 'closed', '', 'module-quang-cisco-1000base-lx-lh-gbic-module-cisco-1000base-lx-lh-gbic-2__trashed', '', '', '2019-11-18 04:20:20', '2019-11-18 04:20:20', '', 0, 'http://localhost/wp_baotoanviet/?post_type=product&#038;p=124', 0, 'product', '', 0),
(125, 1, '2019-11-11 08:47:42', '2019-11-11 08:47:42', '', '1416804367WS-G5486=', '', 'inherit', 'open', 'closed', '', '1416804367ws-g5486', '', '', '2019-11-11 08:47:42', '2019-11-11 08:47:42', '', 124, 'http://localhost/wp_baotoanviet/wp-content/uploads/2019/11/1416804367WS-G5486.jpg', 0, 'attachment', 'image/jpeg', 0),
(126, 1, '2019-11-11 08:48:54', '2019-11-11 08:48:54', 'Nội dung nè\r\nhihi nè\r\nahaha\r\n', 'MODULE QUANG SFP 1.25GBPS LOẠI 1 CORE, MODULE QUANG SFP 1.25GBPS', 'Module quang SFP 1.25Gbps Module SFP hay còn được gọi là SFP transceiver, SFP module hay module quang là loại module được dùng cho các thiết bị như switch, converter, DSLAM, SDH có cổng (khe) theo chuẩn SFP (Small Form Factor).', 'trash', 'closed', 'closed', '', 'module-quang-sfp-1-25gbps-loai-1-core-module-quang-sfp-1-25gbps__trashed', '', '', '2019-11-18 04:20:20', '2019-11-18 04:20:20', '', 0, 'http://localhost/wp_baotoanviet/?post_type=product&#038;p=126', 0, 'product', '', 0),
(127, 1, '2019-11-11 08:48:40', '2019-11-11 08:48:40', '', '1571453288ODF-24FO-Cablexa', '', 'inherit', 'open', 'closed', '', '1571453288odf-24fo-cablexa', '', '', '2019-11-11 08:48:40', '2019-11-11 08:48:40', '', 126, 'http://localhost/wp_baotoanviet/wp-content/uploads/2019/11/1571453288ODF-24FO-Cablexa.jpg', 0, 'attachment', 'image/jpeg', 0),
(129, 1, '2019-11-11 08:50:21', '2019-11-11 08:50:21', 'content1\r\ncontent2\r\n', 'MODULE QUANG SFP 1.25GBPS LOẠI 2 CORE, MODULE QUANG SFP 1.25GBPS LOẠI 2 CORE', 'Module quang SFP 1.25Gbps Module SFP hay còn được gọi là SFP transceiver, SFP module hay module quang là loại module được dùng cho các thiết bị như switch, converter, DSLAM, SDH có cổng (khe) theo chuẩn SFP (Small Form Factor).', 'trash', 'closed', 'closed', '', 'module-quang-sfp-1-25gbps-loai-2-core-module-quang-sfp-1-25gbps-loai-2-core__trashed', '', '', '2019-11-18 04:20:19', '2019-11-18 04:20:19', '', 0, 'http://localhost/wp_baotoanviet/?post_type=product&#038;p=129', 0, 'product', '', 0),
(130, 1, '2019-11-11 08:50:17', '2019-11-11 08:50:17', '', '1416454233Module quang SFP copy', '', 'inherit', 'open', 'closed', '', '1416454233module-quang-sfp-copy', '', '', '2019-11-11 08:50:17', '2019-11-11 08:50:17', '', 129, 'http://localhost/wp_baotoanviet/wp-content/uploads/2019/11/1416454233Module-quang-SFP-copy.jpg', 0, 'attachment', 'image/jpeg', 0),
(132, 1, '2019-11-11 08:54:46', '2019-11-11 08:54:46', 'content1\r\ncontent2', 'JUNIPER EX2200-24T-4G-TAA, JUNIPER EX2200-24T-4G-TAA 24-PORT 10/100/1000BASE-T 4 SFP', 'Địa chỉ phân phối Switch Juniper EX2200-24T-4G-TAA 24-port 10/100/1000BASE-T 4 SFP+ chính hãng, giá cạnh tranh, có sẵn hàng uy tín hàng đầu.', 'trash', 'closed', 'closed', '', 'juniper-ex2200-24t-4g-taa-juniper-ex2200-24t-4g-taa-24-port-10-100-1000base-t-4-sfp__trashed', '', '', '2019-11-18 04:20:19', '2019-11-18 04:20:19', '', 0, 'http://localhost/wp_baotoanviet/?post_type=product&#038;p=132', 0, 'product', '', 0),
(133, 1, '2019-11-11 08:54:42', '2019-11-11 08:54:42', '', 'goc_1571569294', '', 'inherit', 'open', 'closed', '', 'goc_1571569294', '', '', '2019-11-11 08:54:42', '2019-11-11 08:54:42', '', 132, 'http://localhost/wp_baotoanviet/wp-content/uploads/2019/11/goc_1571569294.jpg', 0, 'attachment', 'image/jpeg', 0),
(134, 1, '2019-11-11 08:55:36', '2019-11-11 08:55:36', 'content1\r\ncontent2\r\n', 'JUNIPER EX2300-48T-VC, JUNIPER EX2300-48T-VC 48 X 10/100/1000BASE-T, 4 X 1/10GBE SFP/SFP+', 'Juniper EX2300-48T-VC 48 Ports 10/100/1000BASE-T, 4 x 1/10GbE SFP/SFP+ Uplink Slot phân phối bởi Hợp Nhất có đầy đủ giấy tờ, giá thành cạnh tranh, bảo hành dài hạn.', 'trash', 'closed', 'closed', '', 'juniper-ex2300-48t-vc-juniper-ex2300-48t-vc-48-x-10-100-1000base-t-4-x-1-10gbe-sfp-sfp__trashed', '', '', '2019-11-18 04:20:18', '2019-11-18 04:20:18', '', 0, 'http://localhost/wp_baotoanviet/?post_type=product&#038;p=134', 0, 'product', '', 0),
(135, 1, '2019-11-11 08:55:33', '2019-11-11 08:55:33', '', 'goc_1571210863', '', 'inherit', 'open', 'closed', '', 'goc_1571210863', '', '', '2019-11-11 08:55:33', '2019-11-11 08:55:33', '', 134, 'http://localhost/wp_baotoanviet/wp-content/uploads/2019/11/goc_1571210863.jpg', 0, 'attachment', 'image/jpeg', 0),
(137, 1, '2019-11-11 09:00:43', '2019-11-11 09:00:43', 'content1\r\ncontent2\r\n', 'JUNIPER EX2200-48P-4G, GIÁ TỐT JUNIPER EX2200-48P-4G 48-PORT 10/100/1000BASE-T, POE', 'Phân phối Switch Cisco Juniper EX2200-48P-4G 48-port 10/100/1000BASE-T Ethernet Switch with PoE+ 4 SFP với giá thành tốt nhất, có sẵn và miễn phí vận chuyển.', 'trash', 'closed', 'closed', '', 'juniper-ex2200-48p-4g-gia-tot-juniper-ex2200-48p-4g-48-port-10-100-1000base-t-poe__trashed', '', '', '2019-11-18 04:20:18', '2019-11-18 04:20:18', '', 0, 'http://localhost/wp_baotoanviet/?post_type=product&#038;p=137', 0, 'product', '', 0),
(138, 1, '2019-11-11 09:00:40', '2019-11-11 09:00:40', '', '1571210393WS-C2960X-24PD-L', '', 'inherit', 'open', 'closed', '', '1571210393ws-c2960x-24pd-l', '', '', '2019-11-11 09:00:40', '2019-11-11 09:00:40', '', 137, 'http://localhost/wp_baotoanviet/wp-content/uploads/2019/11/1571210393WS-C2960X-24PD-L.jpg', 0, 'attachment', 'image/jpeg', 0),
(139, 1, '2019-11-11 09:01:24', '2019-11-11 09:01:24', 'content1\r\ncontent2\r\n', 'JUNIPER EX3400-48P, BÁO GIÁ TỐT JUNIPER EX3400-48P 48 PORT POE+ 4 SFP+ 2 QSFP+', 'Phân phối Switch Juniper EX3400-48P 48 Port PoE+ 4 SFP+ 2 QSFP+ chính hãng, có nguồn gốc rõ ràng, báo giá nhanh, giá tốt, đặt hàng 4 - 6 tuần, bảo hành 12 tháng.', 'trash', 'closed', 'closed', '', 'juniper-ex3400-48p-bao-gia-tot-juniper-ex3400-48p-48-port-poe-4-sfp-2-qsfp__trashed', '', '', '2019-11-18 04:20:18', '2019-11-18 04:20:18', '', 0, 'http://localhost/wp_baotoanviet/?post_type=product&#038;p=139', 0, 'product', '', 0),
(140, 1, '2019-11-11 09:01:16', '2019-11-11 09:01:16', '', '1572926591EX2200-24T-4G-TAA', '', 'inherit', 'open', 'closed', '', '1572926591ex2200-24t-4g-taa', '', '', '2019-11-11 09:01:16', '2019-11-11 09:01:16', '', 139, 'http://localhost/wp_baotoanviet/wp-content/uploads/2019/11/1572926591EX2200-24T-4G-TAA.jpg', 0, 'attachment', 'image/jpeg', 0),
(141, 1, '2019-11-11 09:02:14', '2019-11-11 09:02:14', 'content1\r\ncontent2\r\n', 'JUNIPER EX3400-24P, BÁO GIÁ JUNIPER EX3400-24P 24-PORT POE+ , 4 SFP+ AND 2 QSFP+', 'Phân phối Switch Juniper EX3400-24P 24-port PoE+ Ethernet Switch with 4 SFP+ and 2 QSFP+ Uplink Ports chính hãng, giá thành cạnh tranh, bảo hành 12 tháng.', 'trash', 'closed', 'closed', '', 'juniper-ex3400-24p-bao-gia-juniper-ex3400-24p-24-port-poe-4-sfp-and-2-qsfp__trashed', '', '', '2019-11-18 04:20:17', '2019-11-18 04:20:17', '', 0, 'http://localhost/wp_baotoanviet/?post_type=product&#038;p=141', 0, 'product', '', 0),
(142, 1, '2019-11-11 09:02:11', '2019-11-11 09:02:11', '', 'goc_1572151810', '', 'inherit', 'open', 'closed', '', 'goc_1572151810', '', '', '2019-11-11 09:02:11', '2019-11-11 09:02:11', '', 141, 'http://localhost/wp_baotoanviet/wp-content/uploads/2019/11/goc_1572151810.jpg', 0, 'attachment', 'image/jpeg', 0),
(143, 1, '2019-11-12 08:49:03', '2019-11-12 08:49:03', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2019-11-12 08:49:03', '2019-11-12 08:49:03', '', 0, 'http://localhost/wp_baotoanviet/wp-content/uploads/2019/11/logo.png', 0, 'attachment', 'image/png', 0),
(144, 1, '2019-11-12 08:49:15', '2019-11-12 08:49:15', '{\n    \"site_icon\": {\n        \"value\": 143,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-12 08:49:15\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '1d46bf9e-054b-49aa-bbdb-bf9e7f9e96ac', '', '', '2019-11-12 08:49:15', '2019-11-12 08:49:15', '', 0, 'http://localhost/wp_baotoanviet/1d46bf9e-054b-49aa-bbdb-bf9e7f9e96ac/', 0, 'customize_changeset', '', 0),
(145, 1, '2019-11-12 09:56:27', '2019-11-12 09:56:27', 'đâsd', 'Product demo', '', 'trash', 'closed', 'closed', '', 'product-demo__trashed', '', '', '2019-11-18 04:20:17', '2019-11-18 04:20:17', '', 0, 'http://localhost/wp_baotoanviet/?post_type=product&#038;p=145', 0, 'product', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(150, 1, '2019-11-15 06:05:43', '2019-11-15 06:05:43', '', 'goc_1547185168', '', 'inherit', 'open', 'closed', '', 'goc_1547185168', '', '', '2019-11-15 06:05:43', '2019-11-15 06:05:43', '', 0, 'http://localhost/wp_baotoanviet/wp-content/uploads/2019/11/goc_1547185168.jpg', 0, 'attachment', 'image/jpeg', 0),
(154, 1, '2019-11-15 06:07:22', '2019-11-15 06:07:22', '', '1545281074day-nhay-upc-va-apc', '', 'inherit', 'open', 'closed', '', '1545281074day-nhay-upc-va-apc', '', '', '2019-11-15 06:07:22', '2019-11-15 06:07:22', '', 0, 'http://localhost/wp_baotoanviet/wp-content/uploads/2019/11/1545281074day-nhay-upc-va-apc.jpg', 0, 'attachment', 'image/jpeg', 0),
(177, 1, '2019-11-16 02:44:23', '2019-11-16 02:44:23', 'ádasd', 'ahihi', 'ád', 'trash', 'open', 'open', '', 'ahihi__trashed', '', '', '2019-11-16 03:09:04', '2019-11-16 03:09:04', '', 0, 'http://localhost/wp_baotoanviet/?p=177', 0, 'post', '', 0),
(178, 1, '2019-11-16 02:44:23', '2019-11-16 02:44:23', 'ádasd', 'ahihi', 'ád', 'inherit', 'closed', 'closed', '', '177-revision-v1', '', '', '2019-11-16 02:44:23', '2019-11-16 02:44:23', '', 177, 'http://localhost/wp_baotoanviet/177-revision-v1/', 0, 'revision', '', 0),
(189, 1, '2019-11-16 03:25:40', '2019-11-16 03:25:40', 'content', 'CÁP QUANG OM2, OM3, OM4 LÀ GÌ PHÂN BIỆT VÀ SO SÁNH, LỰA CHỌN CÁP QUANG OM2, OM3, OM4', 'Lựa chọn cáp quang multimode, cáp quang OM2, cáp quang OM3, cáp quang OM4. Bài viết sẽ so sánh, phân biệt các loại cáp quang Multimode này và giúp bạn lựa chọn đúng loại cáp cho hệ thống. Với những đặc tính vượt trội của mình, cáp quang OM2, OM3, OM4 có những đặc điểm khác biệt nhau và đây chính là chìa khóa giúp mở ra thời đại mới cho ngành công nghệ số nói chung cũng như các ứng dụng mạng tốc độ cao nói riêng của tương lai.', 'publish', 'open', 'open', '', 'cap-quang-om2-om3-om4-la-gi-phan-biet-va-so-sanh-lua-chon-cap-quang-om2-om3-om4', '', '', '2019-11-16 03:25:40', '2019-11-16 03:25:40', '', 0, 'http://localhost/wp_baotoanviet/?p=189', 0, 'post', '', 0),
(190, 1, '2019-11-16 03:25:40', '2019-11-16 03:25:40', 'content', 'CÁP QUANG OM2, OM3, OM4 LÀ GÌ PHÂN BIỆT VÀ SO SÁNH, LỰA CHỌN CÁP QUANG OM2, OM3, OM4', 'Lựa chọn cáp quang multimode, cáp quang OM2, cáp quang OM3, cáp quang OM4. Bài viết sẽ so sánh, phân biệt các loại cáp quang Multimode này và giúp bạn lựa chọn đúng loại cáp cho hệ thống. Với những đặc tính vượt trội của mình, cáp quang OM2, OM3, OM4 có những đặc điểm khác biệt nhau và đây chính là chìa khóa giúp mở ra thời đại mới cho ngành công nghệ số nói chung cũng như các ứng dụng mạng tốc độ cao nói riêng của tương lai.', 'inherit', 'closed', 'closed', '', '189-revision-v1', '', '', '2019-11-16 03:25:40', '2019-11-16 03:25:40', '', 189, 'http://localhost/wp_baotoanviet/189-revision-v1/', 0, 'revision', '', 0),
(191, 1, '2019-11-16 03:28:08', '2019-11-16 03:28:08', 'content', 'NHẬN BIẾT CÁP QUANG FTTH VÀ FTTB CÁC LOẠI HÌNH INTERNET CÁP QUANG PHỔ BIẾN Ở VIỆT NAM, SỰ KHÁC NHAU GIỮA FTTH VÀ FTTB', 'NHẬN BIẾT CÁP QUANG FTTH VÀ FTTB CÁC LOẠI HÌNH INTERNET CÁP QUANG PHỔ BIẾN Ở VIỆT NAM, SỰ KHÁC NHAU GIỮA FTTH VÀ FTTBNHẬN BIẾT CÁP QUANG FTTH VÀ FTTB CÁC LOẠI HÌNH INTERNET CÁP QUANG PHỔ BIẾN Ở VIỆT NAM, SỰ KHÁC NHAU GIỮA FTTH VÀ FTTB', 'publish', 'open', 'open', '', 'nhan-biet-cap-quang-ftth-va-fttb-cac-loai-hinh-internet-cap-quang-pho-bien-o-viet-nam-su-khac-nhau-giua-ftth-va-fttb', '', '', '2019-11-16 03:28:08', '2019-11-16 03:28:08', '', 0, 'http://localhost/wp_baotoanviet/?p=191', 0, 'post', '', 0),
(192, 1, '2019-11-16 03:28:08', '2019-11-16 03:28:08', 'content', 'NHẬN BIẾT CÁP QUANG FTTH VÀ FTTB CÁC LOẠI HÌNH INTERNET CÁP QUANG PHỔ BIẾN Ở VIỆT NAM, SỰ KHÁC NHAU GIỮA FTTH VÀ FTTB', 'NHẬN BIẾT CÁP QUANG FTTH VÀ FTTB CÁC LOẠI HÌNH INTERNET CÁP QUANG PHỔ BIẾN Ở VIỆT NAM, SỰ KHÁC NHAU GIỮA FTTH VÀ FTTBNHẬN BIẾT CÁP QUANG FTTH VÀ FTTB CÁC LOẠI HÌNH INTERNET CÁP QUANG PHỔ BIẾN Ở VIỆT NAM, SỰ KHÁC NHAU GIỮA FTTH VÀ FTTB', 'inherit', 'closed', 'closed', '', '191-revision-v1', '', '', '2019-11-16 03:28:08', '2019-11-16 03:28:08', '', 191, 'http://localhost/wp_baotoanviet/191-revision-v1/', 0, 'revision', '', 0),
(193, 1, '2019-11-16 03:30:10', '2019-11-16 03:30:10', 'content', 'MODE LÀ GÌ ? CÁCH PHÂN BIỆT CÁP QUANG SINGLEMODE VÀ MULTIMODE, SỰ KHÁC NHAU GIỮA CÁP QUANG SINGLEMODE VÀ CÁP QUANG MULTIMODE', 'Ngày nay với sự phát triển của CNTT, cùng với đó là sự xuất hiện của các loại hình dịch vụ như: truyền hình cáp, mạng cáp quang, internet cáp quang,… làm gia tăng không ngừng như cầu về băng thông mạng. Cáp quang được dùng trong hệ thống mạng được chia làm hai loại cáp quang thông dụng là cáp quang singlemode và cáp quang multimode. Vậy cách phân biệt cáp quang singlemode và cáp quang multimode như thế nào? Xin mời các bạn theo dõi bài viết sau.', 'publish', 'open', 'open', '', 'mode-la-gi-cach-phan-biet-cap-quang-singlemode-va-multimode-su-khac-nhau-giua-cap-quang-singlemode-va-cap-quang-multimode', '', '', '2019-11-16 03:30:10', '2019-11-16 03:30:10', '', 0, 'http://localhost/wp_baotoanviet/?p=193', 0, 'post', '', 0),
(194, 1, '2019-11-16 03:30:10', '2019-11-16 03:30:10', 'content', 'MODE LÀ GÌ ? CÁCH PHÂN BIỆT CÁP QUANG SINGLEMODE VÀ MULTIMODE, SỰ KHÁC NHAU GIỮA CÁP QUANG SINGLEMODE VÀ CÁP QUANG MULTIMODE', 'Ngày nay với sự phát triển của CNTT, cùng với đó là sự xuất hiện của các loại hình dịch vụ như: truyền hình cáp, mạng cáp quang, internet cáp quang,… làm gia tăng không ngừng như cầu về băng thông mạng. Cáp quang được dùng trong hệ thống mạng được chia làm hai loại cáp quang thông dụng là cáp quang singlemode và cáp quang multimode. Vậy cách phân biệt cáp quang singlemode và cáp quang multimode như thế nào? Xin mời các bạn theo dõi bài viết sau.', 'inherit', 'closed', 'closed', '', '193-revision-v1', '', '', '2019-11-16 03:30:10', '2019-11-16 03:30:10', '', 193, 'http://localhost/wp_baotoanviet/193-revision-v1/', 0, 'revision', '', 0),
(196, 1, '2019-11-16 03:31:19', '2019-11-16 03:31:19', ' ', '', '', 'publish', 'closed', 'closed', '', '196', '', '', '2019-11-22 03:25:24', '2019-11-22 03:25:24', '', 0, 'http://localhost/wp_baotoanviet/?p=196', 17, 'nav_menu_item', '', 0),
(197, 1, '2019-11-16 03:31:19', '2019-11-16 03:31:19', ' ', '', '', 'publish', 'closed', 'closed', '', '197', '', '', '2019-11-22 03:25:24', '2019-11-22 03:25:24', '', 0, 'http://localhost/wp_baotoanviet/?p=197', 18, 'nav_menu_item', '', 0),
(200, 1, '2019-11-17 00:49:19', '2019-11-17 00:49:19', 'noi dung', 'DÂY NHẢY QUANG SINGLEMODE OS1 SIMPLEX FPC-SX-OS1, DÂY NHẢY QUANG SINGLEMODE FPC-SX-OS1 HÃNG CABLEXA, GIÁ RẺ', 'zxxxx', 'trash', 'closed', 'closed', '', 'xxx__trashed', '', '', '2019-11-18 04:20:16', '2019-11-18 04:20:16', '', 0, 'http://localhost/wp_baotoanviet/?post_type=product&#038;p=200', 0, 'product', '', 0),
(201, 1, '2019-11-17 00:49:02', '2019-11-17 00:49:02', '', 'doihinh-chinhthuc_1', '', 'inherit', 'open', 'closed', '', 'doihinh-chinhthuc_1', '', '', '2019-11-17 00:49:02', '2019-11-17 00:49:02', '', 200, 'http://localhost/wp_baotoanviet/wp-content/uploads/2019/11/doihinh-chinhthuc_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(202, 1, '2019-11-17 02:46:48', '2019-11-17 02:46:48', '', '1571105648FPC-SX-OS1', '', 'inherit', 'open', 'closed', '', '1571105648fpc-sx-os1', '', '', '2019-11-17 02:46:48', '2019-11-17 02:46:48', '', 200, 'http://localhost/wp_baotoanviet/wp-content/uploads/2019/11/1571105648FPC-SX-OS1.jpg', 0, 'attachment', 'image/jpeg', 0),
(204, 1, '2019-11-17 07:50:20', '2019-11-17 07:50:20', '<p class=\"txt\"><i class=\"ion-ios-location\"></i> <b>Đà Nẵng:</b> S259 Trưng Nữ Vương, Phường Hòa Thuận Đông, Quận Hải Châu.</p>\r\n<i  style=\"color: #e73435;\" class=\"ion-android-call\"></i>  0335.866.266 - 0345.666.118', 'Thông tin đặt hàng', '', 'publish', 'closed', 'closed', '', 'thong-tin-dat-hang', '', '', '2019-11-22 04:37:38', '2019-11-22 04:37:38', '', 0, 'http://localhost/wp_baotoanviet/?page_id=204', 0, 'page', '', 0),
(205, 1, '2019-11-17 07:50:20', '2019-11-17 07:50:20', '<i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i> <strong>Hà Nội </strong> 259 Trưng Nữ Vương, Phường Hòa Thuận Đông, Quận Hải Châu', 'Thông tin đặt hàng', '', 'inherit', 'closed', 'closed', '', '204-revision-v1', '', '', '2019-11-17 07:50:20', '2019-11-17 07:50:20', '', 204, 'http://localhost/wp_baotoanviet/204-revision-v1/', 0, 'revision', '', 0),
(206, 1, '2019-11-17 07:50:43', '2019-11-17 07:50:43', '<i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i> <strong><span style=\"color: #ff0000;\">Hà Nội</span> </strong> 259 Trưng Nữ Vương, Phường Hòa Thuận Đông, Quận Hải Châu', 'Thông tin đặt hàng', '', 'inherit', 'closed', 'closed', '', '204-revision-v1', '', '', '2019-11-17 07:50:43', '2019-11-17 07:50:43', '', 204, 'http://localhost/wp_baotoanviet/204-revision-v1/', 0, 'revision', '', 0),
(207, 1, '2019-11-17 07:53:08', '2019-11-17 07:53:08', '<i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i><strong>Đà Nẵng </strong> 259 Trưng Nữ Vương, Phường Hòa Thuận Đông, Quận Hải Châu', 'Thông tin đặt hàng', '', 'inherit', 'closed', 'closed', '', '204-revision-v1', '', '', '2019-11-17 07:53:08', '2019-11-17 07:53:08', '', 204, 'http://localhost/wp_baotoanviet/204-revision-v1/', 0, 'revision', '', 0),
(208, 1, '2019-11-17 07:53:43', '2019-11-17 07:53:43', '<i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i><strong><span style=\"color: #e73435;\">Đà Nẵng</span> </strong> 259 Trưng Nữ Vương, Phường Hòa Thuận Đông, Quận Hải Châu', 'Thông tin đặt hàng', '', 'inherit', 'closed', 'closed', '', '204-revision-v1', '', '', '2019-11-17 07:53:43', '2019-11-17 07:53:43', '', 204, 'http://localhost/wp_baotoanviet/204-revision-v1/', 0, 'revision', '', 0),
(209, 1, '2019-11-17 08:03:31', '2019-11-17 08:03:31', '<i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i><strong><span style=\"color: #e73435;\">Đà Nẵng</span> </strong> 259 Trưng Nữ Vương, Phường Hòa Thuận Đông, Quận Hải Châu\r\n<i class=\"fa fa-phone\" aria-hidden=\"true\"></i> 0763688222', 'Thông tin đặt hàng', '', 'inherit', 'closed', 'closed', '', '204-revision-v1', '', '', '2019-11-17 08:03:31', '2019-11-17 08:03:31', '', 204, 'http://localhost/wp_baotoanviet/204-revision-v1/', 0, 'revision', '', 0),
(210, 1, '2019-11-17 08:04:19', '2019-11-17 08:04:19', '<i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i><strong><span style=\"color: #e73435;\">Đà Nẵng</span> </strong> 259 Trưng Nữ Vương, Phường Hòa Thuận Đông, Quận Hải Châu\r\n\r\n&nbsp;\r\n\r\n<i class=\"fa fa-phone\" aria-hidden=\"true\"></i> 0763688222', 'Thông tin đặt hàng', '', 'inherit', 'closed', 'closed', '', '204-revision-v1', '', '', '2019-11-17 08:04:19', '2019-11-17 08:04:19', '', 204, 'http://localhost/wp_baotoanviet/204-revision-v1/', 0, 'revision', '', 0),
(211, 1, '2019-11-17 08:11:54', '2019-11-17 08:11:54', '<i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i><strong><span style=\"color: #e73435;\">Đà Nẵng</span> </strong> 259 Trưng Nữ Vương, Phường Hòa Thuận Đông, Quận Hải Châu\r\n\r\nádasdasd\r\n\r\n&nbsp;', 'Thông tin đặt hàng', '', 'inherit', 'closed', 'closed', '', '204-revision-v1', '', '', '2019-11-17 08:11:54', '2019-11-17 08:11:54', '', 204, 'http://localhost/wp_baotoanviet/204-revision-v1/', 0, 'revision', '', 0),
(212, 1, '2019-11-17 08:13:09', '2019-11-17 08:13:09', '<p><i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i><strong><span style=\"color: #e73435;\">Đà Nẵng</span> </strong> 259 Trưng Nữ Vương, Phường Hòa Thuận Đông, Quận Hải Châu</p>\n<p><i class=\"fa fa-phone\" aria-hidden=\"true\"></i> 070 250 3009</p>', 'Thông tin đặt hàng', '', 'inherit', 'closed', 'closed', '', '204-autosave-v1', '', '', '2019-11-17 08:13:09', '2019-11-17 08:13:09', '', 204, 'http://localhost/wp_baotoanviet/204-autosave-v1/', 0, 'revision', '', 0),
(213, 1, '2019-11-17 08:13:10', '2019-11-17 08:13:10', '<p><i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i><strong><span style=\"color: #e73435;\">Đà Nẵng</span> </strong> 259 Trưng Nữ Vương, Phường Hòa Thuận Đông, Quận Hải Châu</p>\r\n<p><i class=\"fa fa-phone\" aria-hidden=\"true\"></i> 070 250 3009</p>', 'Thông tin đặt hàng', '', 'inherit', 'closed', 'closed', '', '204-revision-v1', '', '', '2019-11-17 08:13:10', '2019-11-17 08:13:10', '', 204, 'http://localhost/wp_baotoanviet/204-revision-v1/', 0, 'revision', '', 0),
(214, 1, '2019-11-17 08:22:57', '2019-11-17 08:22:57', '<i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i><strong><span style=\"color: #e73435;\">Đà Nẵng</span> </strong> 259 Trưng Nữ Vương, Phường Hòa Thuận Đông, Quận Hải Châu\r\n<i class=\"fa fa-phone\" aria-hidden=\"true\"></i> 070 250 3009', 'Thông tin đặt hàng', '', 'inherit', 'closed', 'closed', '', '204-revision-v1', '', '', '2019-11-17 08:22:57', '2019-11-17 08:22:57', '', 204, 'http://localhost/wp_baotoanviet/204-revision-v1/', 0, 'revision', '', 0),
(215, 1, '2019-11-17 08:23:17', '2019-11-17 08:23:17', '<i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i> <strong><span style=\"color: #e73435;\"> Đà Nẵng</span> </strong> 259 Trưng Nữ Vương, Phường Hòa Thuận Đông, Quận Hải Châu\r\n<i class=\"fa fa-phone\" aria-hidden=\"true\"></i> 070 250 3009', 'Thông tin đặt hàng', '', 'inherit', 'closed', 'closed', '', '204-revision-v1', '', '', '2019-11-17 08:23:17', '2019-11-17 08:23:17', '', 204, 'http://localhost/wp_baotoanviet/204-revision-v1/', 0, 'revision', '', 0),
(216, 1, '2019-11-17 08:24:21', '2019-11-17 08:24:21', '<i style=\"color: #e73435;\" class=\"fa fa-map-marker\" aria-hidden=\"true\"></i> <strong><span style=\"color: #e73435;\"> Đà Nẵng</span> </strong> 259 Trưng Nữ Vương, Phường Hòa Thuận Đông, Quận Hải Châu\r\n<i  style=\"color: #e73435;\" class=\"fa fa-phone\" aria-hidden=\"true\"></i> 070 250 3009', 'Thông tin đặt hàng', '', 'inherit', 'closed', 'closed', '', '204-revision-v1', '', '', '2019-11-17 08:24:21', '2019-11-17 08:24:21', '', 204, 'http://localhost/wp_baotoanviet/204-revision-v1/', 0, 'revision', '', 0),
(217, 1, '2019-11-17 08:24:53', '2019-11-17 08:24:53', '<i style=\"color: #e73435;\" class=\"fa fa-map-marker\" aria-hidden=\"true\"></i> <strong><span style=\"color: #e73435;\"> Đà Nẵng</span> </strong> 259 Trưng Nữ Vương, Phường Hòa Thuận Đông, Quận Hải Châu\r\n<i  style=\"color: #e73435;\" class=\"fa fa-phone\" aria-hidden=\"true\"></i> 070 250 3009 - 0702503008', 'Thông tin đặt hàng', '', 'inherit', 'closed', 'closed', '', '204-revision-v1', '', '', '2019-11-17 08:24:53', '2019-11-17 08:24:53', '', 204, 'http://localhost/wp_baotoanviet/204-revision-v1/', 0, 'revision', '', 0),
(218, 1, '2019-11-17 08:26:01', '2019-11-17 08:26:01', '<p class=\"txt\"><i class=\"fa fa-clock-o\" aria-hidden=\"true\"></i> Giao hàng trong 30 phút, đổi trả 1 tháng (nếu lỗi).</p>\r\n<p class=\"txt\"><i class=\"fa fa-truck\" aria-hidden=\"true\"></i> Giao hàng toàn quốc - thanh toán tại nhà (khi nhận hàng).</p>\r\n<p class=\"txt\"><i class=\"fa fa-handshake-o\" aria-hidden=\"true\"></i> Uy tín trên <b>10 năm kinh nghiệm</b> về hệ thống cáp quang và công trình điện nhẹ.</p>', 'Thông tin giao hàng', '', 'publish', 'closed', 'closed', '', 'thong-tin-giao-hang', '', '', '2019-11-17 08:26:01', '2019-11-17 08:26:01', '', 0, 'http://localhost/wp_baotoanviet/?page_id=218', 0, 'page', '', 0),
(219, 1, '2019-11-17 08:26:01', '2019-11-17 08:26:01', '<p class=\"txt\"><i class=\"fa fa-clock-o\" aria-hidden=\"true\"></i> Giao hàng trong 30 phút, đổi trả 1 tháng (nếu lỗi).</p>\r\n<p class=\"txt\"><i class=\"fa fa-truck\" aria-hidden=\"true\"></i> Giao hàng toàn quốc - thanh toán tại nhà (khi nhận hàng).</p>\r\n<p class=\"txt\"><i class=\"fa fa-handshake-o\" aria-hidden=\"true\"></i> Uy tín trên <b>10 năm kinh nghiệm</b> về hệ thống cáp quang và công trình điện nhẹ.</p>', 'Thông tin giao hàng', '', 'inherit', 'closed', 'closed', '', '218-revision-v1', '', '', '2019-11-17 08:26:01', '2019-11-17 08:26:01', '', 218, 'http://localhost/wp_baotoanviet/218-revision-v1/', 0, 'revision', '', 0),
(220, 1, '2019-11-17 08:30:41', '2019-11-17 08:30:41', '<i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i> <b>Hà Nội:</b> Số 6A Ngõ 235 đường Nguyễn Trãi, quận Thanh Xuân, TP Hà Nội.\r\n<i  style=\"color: #e73435;\" class=\"fa fa-phone\" aria-hidden=\"true\"></i> 070 250 3009 - 0702503008', 'Thông tin đặt hàng', '', 'inherit', 'closed', 'closed', '', '204-revision-v1', '', '', '2019-11-17 08:30:41', '2019-11-17 08:30:41', '', 204, 'http://localhost/wp_baotoanviet/204-revision-v1/', 0, 'revision', '', 0),
(221, 1, '2019-11-17 08:31:22', '2019-11-17 08:31:22', '<p class=\"txt\"><i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i> <b>Hà Nội:</b> Số 6A Ngõ 235 đường Nguyễn Trãi, quận Thanh Xuân, TP Hà Nội.</p>\r\n<i  style=\"color: #e73435;\" class=\"fa fa-phone\" aria-hidden=\"true\"></i> 070 250 3009 - 0702503008', 'Thông tin đặt hàng', '', 'inherit', 'closed', 'closed', '', '204-revision-v1', '', '', '2019-11-17 08:31:22', '2019-11-17 08:31:22', '', 204, 'http://localhost/wp_baotoanviet/204-revision-v1/', 0, 'revision', '', 0),
(224, 1, '2019-11-18 04:27:31', '2019-11-18 04:27:31', ' ', '', '', 'publish', 'closed', 'closed', '', '224', '', '', '2019-11-20 14:20:46', '2019-11-20 14:20:46', '', 0, 'http://localhost/wp_baotoanviet/?p=224', 14, 'nav_menu_item', '', 0),
(225, 1, '2019-11-18 04:27:31', '2019-11-18 04:27:31', ' ', '', '', 'publish', 'closed', 'closed', '', '225', '', '', '2019-11-20 14:20:46', '2019-11-20 14:20:46', '', 0, 'http://localhost/wp_baotoanviet/?p=225', 13, 'nav_menu_item', '', 0),
(226, 1, '2019-11-18 04:27:31', '2019-11-18 04:27:31', ' ', '', '', 'publish', 'closed', 'closed', '', '226', '', '', '2019-11-20 14:20:46', '2019-11-20 14:20:46', '', 0, 'http://localhost/wp_baotoanviet/?p=226', 3, 'nav_menu_item', '', 0),
(227, 1, '2019-11-18 04:27:31', '2019-11-18 04:27:31', ' ', '', '', 'publish', 'closed', 'closed', '', '227', '', '', '2019-11-20 14:20:46', '2019-11-20 14:20:46', '', 0, 'http://localhost/wp_baotoanviet/?p=227', 15, 'nav_menu_item', '', 0),
(228, 1, '2019-11-18 04:28:36', '2019-11-18 04:28:36', ' ', '', '', 'publish', 'closed', 'closed', '', '228', '', '', '2019-11-20 14:20:46', '2019-11-20 14:20:46', '', 51, 'http://localhost/wp_baotoanviet/?p=228', 4, 'nav_menu_item', '', 0),
(229, 1, '2019-11-18 04:28:37', '2019-11-18 04:28:37', ' ', '', '', 'publish', 'closed', 'closed', '', '229', '', '', '2019-11-20 14:20:46', '2019-11-20 14:20:46', '', 51, 'http://localhost/wp_baotoanviet/?p=229', 7, 'nav_menu_item', '', 0),
(230, 1, '2019-11-18 04:28:37', '2019-11-18 04:28:37', ' ', '', '', 'publish', 'closed', 'closed', '', '230', '', '', '2019-11-20 14:20:46', '2019-11-20 14:20:46', '', 51, 'http://localhost/wp_baotoanviet/?p=230', 10, 'nav_menu_item', '', 0),
(234, 1, '2019-11-18 09:47:26', '2019-11-18 09:47:26', 'content\ncontent', 'MODULE CISCO GLC-SX-MMD, MODULE QUANG SFP CISCO GLC-SX-MMD', 'Cisco GLC-SX-MMD 1000BASE-SX SFP, tương thích với tiêu chuẩn IEEE 802.3z 1000BASE-SX, hoạt động trên các liên kết multimode 50 μm truyền trên bước sóng 850nm 550m trên sợi quang 62,5 μm lên đến 220 m. Nó có thể hỗ trợ lên đến 1km trên cáp quang multimode fiber cable 50 μm được tối ưu hóa. Bước sóng 850nm 550m phạm vi nhiệt độ hoạt động mở rộng và hỗ trợ DOM, kết nối chuẩn LC / PC kép.', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2019-11-18 09:47:26', '2019-11-18 09:47:26', '', 0, 'http://localhost/wp_baotoanviet/?post_type=product&#038;p=234', 0, 'product', '', 0),
(236, 1, '2019-11-18 08:38:24', '2019-11-18 08:38:24', 'content\r\ncontent\r\n', 'MODULE CISCO GLC-SX-MMD, MODULE QUANG SFP CISCO GLC-SX-MMD', 'Cisco GLC-SX-MMD 1000BASE-SX SFP, tương thích với tiêu chuẩn IEEE 802.3z 1000BASE-SX, hoạt động trên các liên kết multimode 50 μm truyền trên bước sóng 850nm 550m trên sợi quang 62,5 μm lên đến 220 m. Nó có thể hỗ trợ lên đến 1km trên cáp quang multimode fiber cable 50 μm được tối ưu hóa. Bước sóng 850nm 550m phạm vi nhiệt độ hoạt động mở rộng và hỗ trợ DOM, kết nối chuẩn LC / PC kép.', 'publish', 'closed', 'closed', '', 'module-cisco-glc-sx-mmd-module-quang-sfp-cisco-glc-sx-mmd', '', '', '2019-11-18 09:47:49', '2019-11-18 09:47:49', '', 0, 'http://localhost/wp_baotoanviet/?post_type=product&#038;p=236', 0, 'product', '', 0),
(237, 1, '2019-11-18 08:59:44', '2019-11-18 08:59:44', 'content', 'MODULE G-COPPER-FGSFP 10/100/1000MBPS, RJ45, 100M,', 'Module G-COPPER-FGSFP 10/100/1000Mbps, RJ45, 100m, kích thước (11mm x 75mm x 11mm) và nặng có 0.2kg chính hãng đầy đủ giấy tờ CO,CQ, Bảo hành 24 tháng. Liên hệ 0966 100 110 để được tư vấn và hỗ trợ.', 'publish', 'closed', 'closed', '', 'module-g-copper-fgsfp-10-100-1000mbps-rj45-100m', '', '', '2019-12-04 15:27:58', '2019-12-04 15:27:58', '', 0, 'http://localhost/wp_baotoanviet/?post_type=product&#038;p=237', 0, 'product', '', 0),
(238, 1, '2019-11-19 02:30:09', '2019-11-19 02:30:09', ' ', '', '', 'publish', 'closed', 'closed', '', '238', '', '', '2019-11-20 14:20:46', '2019-11-20 14:20:46', '', 0, 'http://localhost/wp_baotoanviet/?p=238', 16, 'nav_menu_item', '', 0),
(239, 1, '2019-11-19 02:30:10', '2019-11-19 02:30:10', ' ', '', '', 'publish', 'closed', 'closed', '', '239', '', '', '2019-11-20 14:20:46', '2019-11-20 14:20:46', '', 45, 'http://localhost/wp_baotoanviet/?p=239', 17, 'nav_menu_item', '', 0),
(240, 1, '2019-11-19 02:30:10', '2019-11-19 02:30:10', ' ', '', '', 'publish', 'closed', 'closed', '', '240', '', '', '2019-11-20 14:20:46', '2019-11-20 14:20:46', '', 45, 'http://localhost/wp_baotoanviet/?p=240', 18, 'nav_menu_item', '', 0),
(241, 1, '2019-11-19 02:30:10', '2019-11-19 02:30:10', ' ', '', '', 'publish', 'closed', 'closed', '', '241', '', '', '2019-11-20 14:20:46', '2019-11-20 14:20:46', '', 45, 'http://localhost/wp_baotoanviet/?p=241', 19, 'nav_menu_item', '', 0),
(243, 1, '2019-11-19 02:39:21', '2019-11-19 02:39:21', ' ', '', '', 'publish', 'closed', 'closed', '', '243', '', '', '2019-11-20 14:20:46', '2019-11-20 14:20:46', '', 0, 'http://localhost/wp_baotoanviet/?p=243', 20, 'nav_menu_item', '', 0),
(244, 1, '2019-11-19 02:39:19', '2019-11-19 02:39:19', ' ', '', '', 'publish', 'closed', 'closed', '', '244', '', '', '2019-11-20 14:20:46', '2019-11-20 14:20:46', '', 0, 'http://localhost/wp_baotoanviet/?p=244', 2, 'nav_menu_item', '', 0),
(245, 1, '2019-11-20 14:01:17', '2019-11-20 14:01:17', ' ', '', '', 'publish', 'closed', 'closed', '', '245', '', '', '2019-11-20 14:20:46', '2019-11-20 14:20:46', '', 52, 'http://localhost/wp_baotoanviet/?p=245', 5, 'nav_menu_item', '', 0),
(246, 1, '2019-11-20 14:01:17', '2019-11-20 14:01:17', ' ', '', '', 'publish', 'closed', 'closed', '', '246', '', '', '2019-11-20 14:20:46', '2019-11-20 14:20:46', '', 52, 'http://localhost/wp_baotoanviet/?p=246', 6, 'nav_menu_item', '', 0),
(247, 1, '2019-11-20 14:01:17', '2019-11-20 14:01:17', ' ', '', '', 'publish', 'closed', 'closed', '', '247', '', '', '2019-11-20 14:20:46', '2019-11-20 14:20:46', '', 53, 'http://localhost/wp_baotoanviet/?p=247', 8, 'nav_menu_item', '', 0),
(248, 1, '2019-11-20 14:01:17', '2019-11-20 14:01:17', ' ', '', '', 'publish', 'closed', 'closed', '', '248', '', '', '2019-11-20 14:20:46', '2019-11-20 14:20:46', '', 53, 'http://localhost/wp_baotoanviet/?p=248', 9, 'nav_menu_item', '', 0),
(249, 1, '2019-11-20 14:01:17', '2019-11-20 14:01:17', ' ', '', '', 'publish', 'closed', 'closed', '', '249', '', '', '2019-11-20 14:20:46', '2019-11-20 14:20:46', '', 54, 'http://localhost/wp_baotoanviet/?p=249', 11, 'nav_menu_item', '', 0),
(250, 1, '2019-11-20 14:01:17', '2019-11-20 14:01:17', ' ', '', '', 'publish', 'closed', 'closed', '', '250', '', '', '2019-11-20 14:20:46', '2019-11-20 14:20:46', '', 54, 'http://localhost/wp_baotoanviet/?p=250', 12, 'nav_menu_item', '', 0),
(251, 1, '2019-11-20 14:20:46', '2019-11-20 14:20:46', '', 'Trang chủ', '', 'publish', 'closed', 'closed', '', 'trang-chu-4', '', '', '2019-11-20 14:20:46', '2019-11-20 14:20:46', '', 0, 'http://localhost/wp_baotoanviet/?p=251', 1, 'nav_menu_item', '', 0),
(252, 1, '2019-11-20 14:42:18', '2019-11-20 14:42:18', '<p class=\"txt\"><i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i> <b>Đà Nẵng:</b> S259 Trưng Nữ Vương, Phường Hòa Thuận Đông, Quận Hải Châu.</p>\r\n<i  style=\"color: #e73435;\" class=\"fa fa-phone\" aria-hidden=\"true\"></i> 0335.866.266 - 0345.666.118', 'Thông tin đặt hàng', '', 'inherit', 'closed', 'closed', '', '204-revision-v1', '', '', '2019-11-20 14:42:18', '2019-11-20 14:42:18', '', 204, 'http://localhost/wp_baotoanviet/204-revision-v1/', 0, 'revision', '', 0),
(254, 1, '2019-11-22 03:25:24', '2019-11-22 03:25:24', ' ', '', '', 'publish', 'closed', 'closed', '', '254', '', '', '2019-11-22 03:25:24', '2019-11-22 03:25:24', '', 0, 'http://localhost/wp_baotoanviet/?p=254', 15, 'nav_menu_item', '', 0),
(255, 1, '2019-11-22 03:25:24', '2019-11-22 03:25:24', ' ', '', '', 'publish', 'closed', 'closed', '', '255', '', '', '2019-11-22 03:25:24', '2019-11-22 03:25:24', '', 0, 'http://localhost/wp_baotoanviet/?p=255', 14, 'nav_menu_item', '', 0),
(256, 1, '2019-11-22 03:25:21', '2019-11-22 03:25:21', ' ', '', '', 'publish', 'closed', 'closed', '', '256', '', '', '2019-11-22 03:25:21', '2019-11-22 03:25:21', '', 0, 'http://localhost/wp_baotoanviet/?p=256', 3, 'nav_menu_item', '', 0),
(257, 1, '2019-11-22 03:25:21', '2019-11-22 03:25:21', ' ', '', '', 'publish', 'closed', 'closed', '', '257', '', '', '2019-11-22 03:25:21', '2019-11-22 03:25:21', '', 51, 'http://localhost/wp_baotoanviet/?p=257', 4, 'nav_menu_item', '', 0),
(258, 1, '2019-11-22 03:25:22', '2019-11-22 03:25:22', ' ', '', '', 'publish', 'closed', 'closed', '', '258', '', '', '2019-11-22 03:25:22', '2019-11-22 03:25:22', '', 52, 'http://localhost/wp_baotoanviet/?p=258', 5, 'nav_menu_item', '', 0),
(259, 1, '2019-11-22 03:25:22', '2019-11-22 03:25:22', ' ', '', '', 'publish', 'closed', 'closed', '', '259', '', '', '2019-11-22 03:25:22', '2019-11-22 03:25:22', '', 52, 'http://localhost/wp_baotoanviet/?p=259', 6, 'nav_menu_item', '', 0),
(260, 1, '2019-11-22 03:25:22', '2019-11-22 03:25:22', ' ', '', '', 'publish', 'closed', 'closed', '', '260', '', '', '2019-11-22 03:25:22', '2019-11-22 03:25:22', '', 52, 'http://localhost/wp_baotoanviet/?p=260', 7, 'nav_menu_item', '', 0),
(261, 1, '2019-11-22 03:25:22', '2019-11-22 03:25:22', ' ', '', '', 'publish', 'closed', 'closed', '', '261', '', '', '2019-11-22 03:25:22', '2019-11-22 03:25:22', '', 51, 'http://localhost/wp_baotoanviet/?p=261', 8, 'nav_menu_item', '', 0),
(262, 1, '2019-11-22 03:25:22', '2019-11-22 03:25:22', ' ', '', '', 'publish', 'closed', 'closed', '', '262', '', '', '2019-11-22 03:25:22', '2019-11-22 03:25:22', '', 53, 'http://localhost/wp_baotoanviet/?p=262', 9, 'nav_menu_item', '', 0),
(263, 1, '2019-11-22 03:25:23', '2019-11-22 03:25:23', ' ', '', '', 'publish', 'closed', 'closed', '', '263', '', '', '2019-11-22 03:25:23', '2019-11-22 03:25:23', '', 53, 'http://localhost/wp_baotoanviet/?p=263', 10, 'nav_menu_item', '', 0),
(264, 1, '2019-11-22 03:25:23', '2019-11-22 03:25:23', ' ', '', '', 'publish', 'closed', 'closed', '', '264', '', '', '2019-11-22 03:25:23', '2019-11-22 03:25:23', '', 51, 'http://localhost/wp_baotoanviet/?p=264', 11, 'nav_menu_item', '', 0),
(265, 1, '2019-11-22 03:25:23', '2019-11-22 03:25:23', ' ', '', '', 'publish', 'closed', 'closed', '', '265', '', '', '2019-11-22 03:25:23', '2019-11-22 03:25:23', '', 54, 'http://localhost/wp_baotoanviet/?p=265', 12, 'nav_menu_item', '', 0),
(266, 1, '2019-11-22 03:25:24', '2019-11-22 03:25:24', ' ', '', '', 'publish', 'closed', 'closed', '', '266', '', '', '2019-11-22 03:25:24', '2019-11-22 03:25:24', '', 54, 'http://localhost/wp_baotoanviet/?p=266', 13, 'nav_menu_item', '', 0),
(267, 1, '2019-11-22 03:25:24', '2019-11-22 03:25:24', ' ', '', '', 'publish', 'closed', 'closed', '', '267', '', '', '2019-11-22 03:25:24', '2019-11-22 03:25:24', '', 0, 'http://localhost/wp_baotoanviet/?p=267', 16, 'nav_menu_item', '', 0),
(268, 1, '2019-11-22 04:37:17', '2019-11-22 04:37:17', '<p class=\"txt\"><i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i> <b>Đà Nẵng:</b> S259 Trưng Nữ Vương, Phường Hòa Thuận Đông, Quận Hải Châu.</p>\r\n<i  style=\"color: #e73435;\" class=\"ion-android-call\"></i>  0335.866.266 - 0345.666.118', 'Thông tin đặt hàng', '', 'inherit', 'closed', 'closed', '', '204-revision-v1', '', '', '2019-11-22 04:37:17', '2019-11-22 04:37:17', '', 204, 'http://localhost/wp_baotoanviet/204-revision-v1/', 0, 'revision', '', 0),
(269, 1, '2019-11-22 04:37:38', '2019-11-22 04:37:38', '<p class=\"txt\"><i class=\"ion-ios-location\"></i> <b>Đà Nẵng:</b> S259 Trưng Nữ Vương, Phường Hòa Thuận Đông, Quận Hải Châu.</p>\r\n<i  style=\"color: #e73435;\" class=\"ion-android-call\"></i>  0335.866.266 - 0345.666.118', 'Thông tin đặt hàng', '', 'inherit', 'closed', 'closed', '', '204-revision-v1', '', '', '2019-11-22 04:37:38', '2019-11-22 04:37:38', '', 204, 'http://localhost/wp_baotoanviet/204-revision-v1/', 0, 'revision', '', 0),
(271, 1, '2019-12-04 14:45:21', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-12-04 14:45:21', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp_baotoanviet/?p=271', 0, 'post', '', 0),
(272, 1, '2019-12-04 14:49:29', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-12-04 14:49:29', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp_baotoanviet/?post_type=product&p=272', 0, 'product', '', 0),
(273, 1, '2019-12-04 14:52:08', '2019-12-04 14:52:08', '', 'Sản phẩm của bộ chuyển đổi quang 10/100', '', 'publish', 'closed', 'closed', '', 'san-pham-cua-bo-chuyen-doi-quang-10-100', '', '', '2019-12-04 14:52:08', '2019-12-04 14:52:08', '', 0, 'http://localhost/wp_baotoanviet/?post_type=product&#038;p=273', 0, 'product', '', 0),
(274, 1, '2019-12-04 15:15:42', '2019-12-04 15:15:42', '', 'Sản phẩm của bộ chuyển đổi quang 10/100', '', 'inherit', 'closed', 'closed', '', '273-autosave-v1', '', '', '2019-12-04 15:15:42', '2019-12-04 15:15:42', '', 273, 'http://localhost/wp_baotoanviet/273-autosave-v1/', 0, 'revision', '', 0),
(275, 1, '2019-12-04 15:40:14', '2019-12-04 15:40:14', '', 'DÂY NHẢY QUANG SINGLEMODE OS1 SIMPLEX FPC-SX-OS1, DÂY NHẢY QUANG SINGLEMODE FPC-SX-OS1 HÃNG CABLEXA, GIÁ RẺ', '', 'publish', 'closed', 'closed', '', 'day-nhay-quang-singlemode-os1-simplex-fpc-sx-os1-day-nhay-quang-singlemode-fpc-sx-os1-hang-cablexa-gia-re', '', '', '2019-12-04 15:40:14', '2019-12-04 15:40:14', '', 0, 'http://localhost/wp_baotoanviet/?post_type=product&#038;p=275', 0, 'product', '', 0);

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
(24, 'menusp', 'menusp', 0),
(29, 'menumain', 'menumain', 0),
(30, 'menucat', 'menucat', 0),
(45, 'Tin tức giải pháp', 'tin-tuc-giai-phap', 0),
(46, 'Sơ đồ giải pháp quang', 'so-do-giai-phap-quang', 0),
(47, 'Hướng dẫn sử dụng', 'huong-dan-su-dung', 0),
(48, 'Tin tức tổng hợp', 'tin-tuc-tong-hop', 0),
(51, 'Thiết bị quang', 'thiet-bi-quang', 0),
(52, 'Bộ chuyển đổi quang', 'bo-chuyen-doi-quang', 0),
(53, 'Dây nhảy quang', 'day-nhay-quang', 0),
(54, 'Phụ kiện quang', 'phu-kien-quang', 0),
(55, 'Bộ chuyển đổi quang 10/100', 'bo-chuyen-doi-quang-10-100', 0),
(56, 'Bộ chuyển đổi quang 10/100/100', 'bo-chuyen-doi-quang-10-100-100', 0),
(57, 'Bộ chuyển đối RS232/485/422', 'bo-chuyen-doi-rs232-485-422', 0),
(58, 'Khay nối quang', 'khay-noi-quang', 0),
(59, 'Suy hao quang', 'suy-hao-quang', 0),
(60, 'Dây hàn quang FC', 'day-han-quang-fc', 0),
(61, 'Dây hàn quang LC', 'day-han-quang-lc', 0),
(62, 'Thiết bị mạng', 'thiet-bi-mang', 0),
(63, 'Thiết bị Cisco', 'thiet-bi-cisco', 0),
(64, 'Tủ mạng Unirack', 'tu-mang-unirack', 0);

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
(46, 24, 0),
(51, 24, 0),
(76, 30, 0),
(77, 30, 0),
(93, 30, 0),
(120, 51, 0),
(122, 51, 0),
(124, 51, 0),
(126, 51, 0),
(129, 51, 0),
(132, 51, 0),
(134, 51, 0),
(137, 51, 0),
(139, 51, 0),
(141, 51, 0),
(145, 51, 0),
(177, 51, 0),
(189, 46, 0),
(189, 51, 0),
(191, 46, 0),
(191, 51, 0),
(193, 47, 0),
(193, 51, 0),
(196, 24, 0),
(197, 24, 0),
(200, 51, 0),
(224, 29, 0),
(225, 29, 0),
(226, 29, 0),
(227, 29, 0),
(228, 29, 0),
(229, 29, 0),
(230, 29, 0),
(236, 51, 0),
(236, 52, 0),
(236, 55, 0),
(237, 51, 0),
(237, 52, 0),
(237, 56, 0),
(238, 29, 0),
(239, 29, 0),
(240, 29, 0),
(241, 29, 0),
(243, 29, 0),
(244, 29, 0),
(245, 29, 0),
(246, 29, 0),
(247, 29, 0),
(248, 29, 0),
(249, 29, 0),
(250, 29, 0),
(251, 29, 0),
(254, 24, 0),
(255, 24, 0),
(256, 24, 0),
(257, 24, 0),
(258, 24, 0),
(259, 24, 0),
(260, 24, 0),
(261, 24, 0),
(262, 24, 0),
(263, 24, 0),
(264, 24, 0),
(265, 24, 0),
(266, 24, 0),
(267, 24, 0),
(273, 51, 0),
(273, 52, 0),
(273, 55, 0),
(275, 53, 0),
(275, 60, 0);

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
(24, 24, 'nav_menu', '', 0, 18),
(29, 29, 'nav_menu', '', 0, 20),
(30, 30, 'nav_menu', '', 0, 3),
(45, 45, 'categorypost', '', 0, 0),
(46, 46, 'categorypost', '', 45, 2),
(47, 47, 'categorypost', '', 45, 1),
(48, 48, 'categorypost', '', 45, 0),
(51, 51, 'category', '', 0, 6),
(52, 52, 'category', '', 51, 3),
(53, 53, 'category', '', 51, 1),
(54, 54, 'category', '', 51, 0),
(55, 55, 'category', '', 52, 2),
(56, 56, 'category', '', 52, 1),
(57, 57, 'category', '', 52, 0),
(58, 58, 'category', '', 54, 0),
(59, 59, 'category', '', 54, 0),
(60, 60, 'category', '', 53, 1),
(61, 61, 'category', '', 53, 0),
(62, 62, 'category', '', 0, 0),
(63, 63, 'category', '', 0, 0),
(64, 64, 'category', '', 0, 0);

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
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '0'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"bb46ec8d68a391bd9eb743b6eb60df28519ebbf70ca5a895a60d09ba68d62e5f\";a:4:{s:10:\"expiration\";i:1576680319;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36\";s:5:\"login\";i:1575470719;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '271'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'wp_user-settings', 'editor=html&libraryContent=browse&mfold=o&hidetb=1'),
(20, 1, 'wp_user-settings-time', '1573978385'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:21:\"add-post-type-product\";i:1;s:12:\"add-post_tag\";i:2;s:15:\"add-post_format\";}'),
(23, 1, 'nav_menu_recently_edited', '24'),
(25, 1, 'meta-box-order_product', 'a:3:{s:4:\"side\";s:51:\"submitdiv,categorydiv,tagsdiv-post_tag,postimagediv\";s:6:\"normal\";s:30:\"postexcerpt,wpseo_meta,slugdiv\";s:8:\"advanced\";s:5:\"price\";}'),
(26, 1, 'screen_layout_product', '2'),
(27, 1, 'closedpostboxes_product', 'a:0:{}'),
(28, 1, 'metaboxhidden_product', 'a:2:{i:0;s:10:\"wpseo_meta\";i:1;s:7:\"slugdiv\";}'),
(29, 1, 'closedpostboxes_dashboard', 'a:0:{}'),
(30, 1, 'metaboxhidden_dashboard', 'a:6:{i:0;s:17:\"dashboard_php_nag\";i:1;s:19:\"dashboard_right_now\";i:2;s:18:\"dashboard_activity\";i:3;s:24:\"wpseo-dashboard-overview\";i:4;s:21:\"dashboard_quick_press\";i:5;s:17:\"dashboard_primary\";}'),
(33, 1, 'closedpostboxes_post', 'a:0:{}'),
(34, 1, 'metaboxhidden_post', 'a:6:{i:0;s:11:\"categorydiv\";i:1;s:13:\"trackbacksdiv\";i:2;s:10:\"postcustom\";i:3;s:16:\"commentstatusdiv\";i:4;s:7:\"slugdiv\";i:5;s:9:\"authordiv\";}'),
(35, 1, 'meta-box-order_post', 'a:3:{s:4:\"side\";s:67:\"submitdiv,categorydiv,tagsdiv-post_tag,categorypostdiv,postimagediv\";s:6:\"normal\";s:82:\"postexcerpt,wpseo_meta,trackbacksdiv,postcustom,commentstatusdiv,slugdiv,authordiv\";s:8:\"advanced\";s:0:\"\";}'),
(36, 1, 'screen_layout_post', '2'),
(38, 1, 'wp_yoast_notifications', 'a:1:{i:0;a:2:{s:7:\"message\";s:599:\"<p>You&#039;re using WordPress in Vietnamese. While Yoast SEO has been translated to Vietnamese for 95%, it&#039;s not been shipped with the plugin yet. You can help! Register at <a href=\"https://translate.wordpress.org/projects/wp-plugins/wordpress-seo/\">Translating WordPress</a> to help complete the translation to Vietnamese!</p><p><a href=\"https://translate.wordpress.org/projects/wp-plugins/wordpress-seo/\">Register now &raquo;</a></p><a class=\"button\" href=\"/wp_baotoanviet/wp-admin/admin.php?page=wpseo_titles&#038;remove_i18n_promo=1\">Please don&#039;t show me this notification anymore</a>\";s:7:\"options\";a:9:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:31:\"i18nModuleTranslationAssistance\";s:5:\"nonce\";N;s:8:\"priority\";d:0.5;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";a:1:{i:0;s:20:\"wpseo_manage_options\";}s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}}');

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
(1, 'admin', '$P$BrsO2QX/umKT3cNcm7ZDtntFxg.Jx00', 'admin', 'minh.nhat.dev@gmail.com', '', '2019-11-08 13:15:12', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_yoast_seo_links`
--

CREATE TABLE `wp_yoast_seo_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `target_post_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_yoast_seo_links`
--

INSERT INTO `wp_yoast_seo_links` (`id`, `url`, `post_id`, `target_post_id`, `type`) VALUES
(17, 'https://goo.gl/maps/ALM8MYxRKHw', 43, 0, 'external'),
(18, 'https://thietbiquang.net/', 43, 0, 'external');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_yoast_seo_meta`
--

CREATE TABLE `wp_yoast_seo_meta` (
  `object_id` bigint(20) UNSIGNED NOT NULL,
  `internal_link_count` int(10) UNSIGNED DEFAULT NULL,
  `incoming_link_count` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_yoast_seo_meta`
--

INSERT INTO `wp_yoast_seo_meta` (`object_id`, `internal_link_count`, `incoming_link_count`) VALUES
(1, 0, 0),
(4, 0, 0),
(7, 0, 0),
(9, 0, 0),
(13, 0, 0),
(14, 0, 0),
(15, 0, 0),
(16, 0, 0),
(17, 0, 0),
(18, 0, 0),
(19, 0, 0),
(20, 0, 0),
(21, 0, 0),
(22, 0, 0),
(23, 0, 0),
(24, 0, 0),
(25, 0, 0),
(26, 0, 0),
(27, 0, 0),
(28, 0, 0),
(29, 0, 0),
(30, 0, 0),
(32, 0, 0),
(33, 0, 0),
(34, 0, 0),
(35, 0, 0),
(36, 0, 0),
(37, 0, 0),
(39, 0, 0),
(40, 0, 0),
(41, 0, 0),
(42, 0, 0),
(43, 0, 0),
(45, 0, 0),
(47, 0, 0),
(48, 0, 0),
(49, 0, 0),
(50, 0, 0),
(52, 0, 0),
(53, 0, 0),
(54, 0, 0),
(55, 0, 0),
(56, 0, 0),
(57, 0, 0),
(58, 0, 0),
(59, 0, 0),
(60, 0, 0),
(61, 0, 0),
(62, 0, 0),
(63, 0, 0),
(64, 0, 0),
(65, 0, 0),
(66, 0, 0),
(67, 0, 0),
(68, 0, 0),
(69, 0, 0),
(70, 0, 0),
(71, 0, 0),
(72, 0, 0),
(74, 0, 0),
(75, 0, 0),
(78, 0, 0),
(79, 0, 0),
(81, 0, 0),
(89, 0, 0),
(94, 0, 0),
(95, 0, 0),
(96, 0, 0),
(97, 0, 0),
(98, 0, 0),
(100, 0, 0),
(102, 0, 0),
(104, 0, 0),
(105, 0, 0),
(106, 0, 0),
(107, 0, 0),
(108, 0, 0),
(109, 0, 0),
(110, 0, 0),
(111, 0, 0),
(112, 0, 0),
(113, 0, 0),
(114, 0, 0),
(115, 0, 0),
(116, 0, 0),
(117, 0, 0),
(118, 0, 0),
(119, 0, 0),
(120, 0, 0),
(122, 0, 0),
(124, 0, 0),
(126, 0, 0),
(128, 0, 0),
(129, 0, 0),
(131, 0, 0),
(132, 0, 0),
(134, 0, 0),
(136, 0, 0),
(137, 0, 0),
(139, 0, 0),
(141, 0, 0),
(145, 0, 0),
(146, 0, 0),
(147, 0, 0),
(148, 0, 0),
(149, 0, 0),
(151, 0, 0),
(152, 0, 0),
(153, 0, 0),
(155, 0, 0),
(156, 0, 0),
(157, 0, 0),
(158, 0, 0),
(159, 0, 0),
(160, 0, 0),
(161, 0, 0),
(162, 0, 0),
(163, 0, 0),
(164, 0, 0),
(165, 0, 0),
(166, 0, 0),
(167, 0, 0),
(168, 0, 0),
(169, 0, 0),
(170, 0, 0),
(171, 0, 0),
(172, 0, 0),
(173, 0, 0),
(174, 0, 0),
(175, 0, 0),
(176, 0, 0),
(177, 0, 0),
(179, 0, 0),
(180, 0, 0),
(181, 0, 0),
(182, 0, 0),
(183, 0, 0),
(184, 0, 0),
(185, 0, 0),
(186, 0, 0),
(187, 0, 0),
(188, 0, 0),
(189, 0, 0),
(191, 0, 0),
(193, 0, 0),
(195, 0, 0),
(198, 0, 0),
(199, 0, 0),
(200, 0, 0),
(203, 0, 0),
(204, 0, 0),
(218, 0, 0),
(222, 0, 0),
(223, 0, 0),
(231, 0, 0),
(232, 0, 0),
(233, 0, 0),
(234, 0, 0),
(235, 0, 0),
(236, 0, 0),
(237, 0, 0),
(242, 0, 0),
(253, 0, 0),
(270, 0, 0),
(273, 0, 0),
(275, 0, 0);

--
-- Chỉ mục cho các bảng đã đổ
--

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
  ADD UNIQUE KEY `option_name` (`option_name`);

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
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

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
-- Chỉ mục cho bảng `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link_direction` (`post_id`,`type`);

--
-- Chỉ mục cho bảng `wp_yoast_seo_meta`
--
ALTER TABLE `wp_yoast_seo_meta`
  ADD UNIQUE KEY `object_id` (`object_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=950;

--
-- AUTO_INCREMENT cho bảng `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1303;

--
-- AUTO_INCREMENT cho bảng `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=276;

--
-- AUTO_INCREMENT cho bảng `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT cho bảng `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT cho bảng `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT cho bảng `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
