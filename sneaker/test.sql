-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 04, 2021 lúc 03:00 AM
-- Phiên bản máy phục vụ: 10.4.17-MariaDB
-- Phiên bản PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `test`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_category`
--

CREATE TABLE `db_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(2) NOT NULL,
  `parentid` int(11) NOT NULL,
  `orders` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_category`
--

INSERT INTO `db_category` (`id`, `name`, `link`, `level`, `parentid`, `orders`, `created_at`, `created_by`, `updated_at`, `updated_by`, `trash`, `status`) VALUES
(1, 'Giày Adidas Stan smith', 'giay-adidas-stan-smith', 2, 3, '0', '2020-10-05 16:15:39', '4', '2021-05-16 09:13:33', '1', 1, 1),
(2, 'Nike', 'nike', 2, 3, '0', '2020-10-05 16:15:39', '4', '2020-10-10 18:47:38', '1', 0, 1),
(3, 'Giày Adidas chính hãng', 'giay-adidas-chinh-hang', 1, 0, '0', '2020-10-05 16:15:39', '4', '2020-10-10 19:28:14', '1', 1, 1),
(4, 'Giày Gucci chính hãng', 'gucci', 1, 0, '1', '2020-10-05 16:15:39', '1', '2020-10-10 19:31:14', '1', 0, 1),
(5, 'Adidas', 'adidas', 2, 4, '0', '2020-10-05 16:15:39', '1', '2020-10-10 18:47:54', '1', 0, 1),
(6, 'Gucci', 'guccii', 2, 4, '1', '2020-10-05 16:15:39', '1', '2020-10-05 16:15:39', '1', 0, 1),
(7, 'Giày Adidas Ultraboost', 'giay-adidas-ultraboost', 2, 3, '1', '2020-10-05 16:15:39', '1', '2021-05-16 09:15:41', '1', 1, 1),
(8, 'Giày Adidas Yeezy 350', 'giay-adidas-yeezy-350', 2, 3, '2', '2020-10-05 16:15:39', '1', '2021-05-16 09:18:36', '1', 1, 1),
(9, 'Giày GUCCI Rhyton', 'giay-gucci-rhyton', 2, 4, '0', '2020-10-05 16:15:39', '1', '2021-05-16 09:21:18', '1', 0, 1),
(10, 'Giày Nike chính hãng', 'giay-nike-chinh-hang', 1, 0, '0', '2020-10-05 16:15:39', '1', '2020-10-10 19:29:13', '1', 1, 1),
(11, 'Giày GUCCI Ace', 'giay-gucci-ace', 2, 4, '1', '2020-10-05 16:15:39', '1', '2021-05-16 09:22:48', '1', 0, 1),
(13, 'Nike', 'nike', 3, 1, '0', '2020-10-05 16:15:39', '1', '2020-10-05 16:15:39', '1', 0, 1),
(14, 'Giày chạy bộ Nike', 'chay-bo', 2, 10, '1', '2020-10-10 18:39:09', '1', '2020-10-10 18:39:09', '1', 1, 1),
(15, 'Giày Nike Air Jordan', 'jordan', 2, 10, '2', '2020-10-10 18:44:12', '1', '2021-05-15 21:32:30', '1', 1, 1),
(16, 'Giày Nike Air Force 1', 'giay-nike-air-force-1', 2, 10, '1', '2020-10-10 18:49:55', '1', '2021-05-16 09:07:22', '1', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_config`
--

CREATE TABLE `db_config` (
  `id` int(11) NOT NULL,
  `mail_smtp` varchar(68) COLLATE utf8_unicode_ci NOT NULL,
  `mail_smtp_password` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Password mail shop',
  `mail_noreply` varchar(68) COLLATE utf8_unicode_ci NOT NULL,
  `priceShip` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_config`
--

INSERT INTO `db_config` (`id`, `mail_smtp`, `mail_smtp_password`, `mail_noreply`, `priceShip`, `title`, `description`) VALUES
(1, 'ankhangatat5@gmail.com', '123', 'ankhangatat5@gmail.com', '30000', 'MessiEsport - ', 'Giày chính hãng-Chất lượng cao');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_contact`
--

CREATE TABLE `db_contact` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `trash` int(11) NOT NULL DEFAULT 1,
  `fullname` varchar(80) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_contact`
--

INSERT INTO `db_contact` (`id`, `title`, `phone`, `email`, `content`, `created_at`, `status`, `trash`, `fullname`) VALUES
(11, 'đă', '01234567489', 'ankhangatat5@gmail.com', 'adawdawd dawdawdawd adadadawdada dâdwd', '2021/5/17', 0, 1, 'ankhang');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_content`
--

CREATE TABLE `db_content` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `introtext` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `fulltext` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `created_by` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `trash` int(1) NOT NULL DEFAULT 1,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_content`
--

INSERT INTO `db_content` (`id`, `title`, `alias`, `introtext`, `fulltext`, `img`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `status`) VALUES
(10, 'HƯỚNG DẪN THANH TOÁN', 'huong-dan-thanh-toan', '', '<p><strong><em>1. Thanh to&aacute;n tiền mặt tại nh&agrave; khi nhận h&agrave;ng th&ocirc;ng qua h&igrave;nh thức giao h&agrave;ng trực tiếp, chuyển ph&aacute;t nhanh hoặc COD:</em></strong></p>\r\n\r\n<p>Khi nh&acirc;n vi&ecirc;n giao h&agrave;ng giao ph&aacute;t, kh&aacute;ch h&agrave;ng kiểm tra sản phẩm về h&igrave;nh thức đảm bảo, kh&aacute;ch h&agrave;ng nhận h&agrave;ng v&agrave; thanh to&aacute;n trực tiếp cho nh&acirc;n vi&ecirc;n giao h&agrave;ng theo gi&aacute; trị tiền tr&ecirc;n h&oacute;a đơn. Ngo&agrave;i ra kh&aacute;ch h&agrave;ng kh&ocirc;ng phải thanh to&aacute;n bất kỳ 1 chi ph&iacute; n&agrave;o kh&aacute;c.</p>\r\n\r\n<p><strong><em>2. Thanh to&aacute;n tiền mặt tại cửa h&agrave;ng:</em></strong></p>\r\n\r\n<p>Kh&aacute;ch h&agrave;ng đến cửa h&agrave;ng tham quan, mua sản phẩm sẽ thanh to&aacute;n trực tiếp bằng tiền mặt hoặc quẹt thẻ qua POS ng&acirc;n h&agrave;ng tại cửa h&agrave;ng.</p>\r\n\r\n<p><strong><em>3. Chuyển khoản qua ng&acirc;n h&agrave;ng:</em></strong></p>\r\n\r\n<p>Nếu địa điểm giao h&agrave;ng l&agrave; ngoại th&agrave;nh, ngoại tỉnh nhưng kh&aacute;c với địa điểm thanh to&aacute;n (trong trường hợp Qu&yacute; kh&aacute;ch gửi qu&agrave;, gửi h&agrave;ng cho bạn b&egrave;, đối t&aacute;c &hellip;) ch&uacute;ng t&ocirc;i sẽ thu tiền trước 100% gi&aacute; trị h&agrave;ng bằng phương thức chuyển khoản trước khi giao h&agrave;ng. Kh&aacute;ch h&agrave;ng được miễn ph&iacute; vận chuyển</p>\r\n\r\n<p>Kh&aacute;ch h&agrave;ng c&oacute; thể ho&agrave;n to&agrave;n y&ecirc;n t&acirc;m với h&igrave;nh thức thanh to&aacute;n n&agrave;y. v&igrave; khi chuyển tiền ở ng&acirc;n h&agrave;ng , ng&acirc;n h&agrave;ng sẽ đưa cho bạn một giấy ủy nhiệm chi trong đ&oacute; c&oacute; số tiền v&agrave; số TK m&agrave;&nbsp; bạn chuyển tiền tới, n&ecirc;n c&aacute;c bạn&nbsp; kh&ocirc;ng phải lo lắng m&igrave;nh chuyển tiền rồi m&agrave; Galle Watch kh&ocirc;ng chuyển h&agrave;ng, giấy ủy nhiệm chi đ&oacute; ch&iacute;nh l&agrave; bằng chứng bạn đ&atilde; chuyển tiền&nbsp; v&agrave;&nbsp; ng&acirc;n h&agrave;ng&nbsp; m&agrave; bạn chuy&ecirc;n tiền c&oacute; thể l&agrave;m r&otilde; điều đ&oacute; cho bạn. Ch&uacute;ng t&ocirc;i&nbsp; b&aacute;n h&agrave;ng lu&ocirc;n đăt chữ&nbsp; t&iacute;n&nbsp; l&ecirc;n đầu v&agrave; lu&ocirc;n cố gắng c&oacute; những chất lượng dịch vụ tốt nhất với kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p>Th&ocirc;ng tin số t&agrave;i khoản giao dịch với <strong><a href=\"https://www.organica.com/\">Organica</a></strong></p>\r\n\r\n<p>-Ng&acirc;n h&agrave;ng Vietcombank: <strong>Đặng Văn Hưng</strong></p>\r\n\r\n<p>Số t&agrave;i khoản:&nbsp;<strong>0311000718162</strong><strong>- VCB&nbsp;Lệ Thủy</strong></p>\r\n\r\n<p><em>Để biết th&ecirc;m th&ocirc;ng tin chi tiết, Qu&yacute; kh&aacute;ch vui l&ograve;ng li&ecirc;n hệ trực tiếp với nh&acirc;n vi&ecirc;n tư vấn b&aacute;n h&agrave;ng hoặc li&ecirc;n hệ theo số tổng đ&agrave;i miễn ph&iacute; 18006785 để được hỗ trợ.Xin tr&acirc;n trọng cảm ơn!</em></p>\r\n', 'h-ng-d-n-thanh-toan-online-thanh-toan.jpg', '2020-10-06 18:07:22', '70', '2020-10-06 18:07:22', '70', 0, 1),
(11, 'Cách để tự bảo vệ bản thân khi mua sắm Online', 'cach-de-tu-bao-ve-ban-than-khi-mua-sam-online', '', '<p>Lu&ocirc;n nhớ rằng Internet kh&ocirc;ng phải l&agrave; m&ocirc;i trường được kiểm so&aacute;t an to&agrave;n m&agrave; l&agrave; một nơi kh&ocirc;ng c&oacute; luật lệ. Sự thật l&agrave; kh&ocirc;ng c&oacute; g&igrave; đảm bảo việc cho sự an to&agrave;n của bạn khi mua h&agrave;ng online, v&agrave; thậm ch&iacute; ch&iacute;nh những c&ocirc;ng ty lớn cũng c&oacute; thể bị ảnh hưởng bởi những lỗ hổng bảo mật. Blog n&agrave;y sẽ liệt k&ecirc; một v&agrave;i rủi ro bảo mật đ&aacute;ng ch&uacute; &yacute; nhất v&agrave; đưa ra những lời khuy&ecirc;n thực tiễn nhằm gi&uacute;p bạn mua sắm trực tuyến một c&aacute;ch an to&agrave;n trong năm nay.</p>\r\n\r\n<h2>LỪA ĐẢO BẰNG H&Igrave;NH THỨC PHISHING</h2>\r\n\r\n<p>V&agrave;o những thời điểm giảm gi&aacute; như Black Friday hoặc Cyber Monday, bạn c&oacute; nhiều khả năng trở th&agrave;nh nạn nh&acirc;n của c&aacute;c tr&ograve; lừa đảo Phishing &ndash; c&aacute;c cuộc tấn c&ocirc;ng được gửi trực tiếp cho mọi người th&ocirc;ng qua email nhằm đ&aacute;nh cắp th&ocirc;ng tin thanh to&aacute;n v&agrave; th&ocirc;ng tin c&aacute; nh&acirc;n. Những kẻ tấn c&ocirc;ng gửi đi Phising email với vỏ bọc l&agrave; những nh&agrave; b&aacute;n lẻ lớn c&ugrave;ng những ưu đ&atilde;i hấp dẫn v&agrave; điều n&agrave;y đủ hấp dẫn với nhiều người mua h&agrave;ng khiến họ đưa ra những quyết định thiếu ch&iacute;nh x&aacute;c v&agrave; click v&agrave;o những đường dẫn độc hại. Những đường link n&agrave;y c&oacute; thể lấy dữ liệu c&aacute; nh&acirc;n v&agrave; dữ liệu thanh to&aacute;n của bạn gửi thẳng cho kẻ xấu hoặc l&acirc;y nhiễm phần mềm độc hại v&agrave;o thiết bị của bạn.</p>\r\n\r\n<p>Thậm ch&iacute; cả những c&ocirc;ng ty lớn cũng c&oacute; thể trở th&agrave;nh mục ti&ecirc;u của những cuộc tấn c&ocirc;ng n&agrave;y. Theo nghi&ecirc;n cứu của Positive Technologies, c&oacute; 88% nh&acirc;n vi&ecirc;n mở c&aacute;c tệp v&agrave; đường dẫn kh&ocirc;ng x&aacute;c định m&agrave; họ nhận được qua email. Đầu năm nay, Saks Fifth Avenue đ&atilde; trở th&agrave;nh nạn nh&acirc;n của một vụ tấn c&ocirc;ng như vậy, năm triệu t&agrave;i khoản thẻ t&iacute;n dụng v&agrave; ghi nợ đ&atilde; bị đ&aacute;nh cắp từ hệ thống của họ.</p>\r\n\r\n<p>C&aacute;c chiến dịch Phising được tạo ra để điều khiển cảm x&uacute;c của bạn. Những kẻ gửi email sẽ cố gắng thuyết phục bạn rằng ch&uacute;ng từ một nguồn đ&aacute;ng tin cậy v&agrave; rất kh&oacute; để ph&aacute;t hiện ra rằng email c&oacute; ch&iacute;nh chủ hay kh&ocirc;ng.</p>\r\n\r\n<p>Dưới đ&acirc;y l&agrave; một số lời khuy&ecirc;n gi&uacute;p bạn ph&aacute;t hiện v&agrave; tr&aacute;nh lừa đảo phising:</p>\r\n\r\n<ol>\r\n	<li><strong>Cảnh gi&aacute;c với những email kh&ocirc;ng mong muốn hoặc từ nguồn chưa x&aacute;c định</strong>. Nếu một cửa h&agrave;ng m&agrave; bạn thường kh&ocirc;ng nhận được email nay lại lần đầu ti&ecirc;n li&ecirc;n hệ với bạn, đ&oacute; c&oacute; thể l&agrave; lừa đảo.</li>\r\n	<li><strong>Ch&uacute; &yacute; tới lỗi ch&iacute;nh tả trong email</strong>. Tội phạm mạng thường kh&ocirc;ng c&oacute; chuy&ecirc;n m&ocirc;n marketing v&agrave; một bức email cẩu thả c&oacute; thể cho thấy đ&acirc;y l&agrave; tr&ograve; lừa đảo rẻ tiền.</li>\r\n	<li><strong>Email c&oacute; ch&agrave;o bạn bằng t&ecirc;n kh&ocirc;ng?</strong>&nbsp;Tội phạm thường kh&ocirc;ng biết được họ t&ecirc;n đầy đủ của bạn, ch&iacute;nh v&igrave; vậy ch&uacute;ng thường chỉ gọi bạn bằng &Ocirc;ng hoặc B&agrave;.</li>\r\n	<li><strong>Kh&ocirc;ng v&agrave;o những đường dẫn lạ chứa trong email.</strong>&nbsp;Tr&ocirc;ng c&oacute; vẻ như đ&oacute; l&agrave; một m&oacute;n hời, nhưng thực tế ch&uacute;ng c&oacute; thể khiến bạn phải trả gi&aacute; đắt.</li>\r\n	<li><strong>Lu&ocirc;n ghi nhớ rằng địa chỉ người gửi kh&ocirc;ng đảm bảo chắc chắn rằng email đ&oacute; đến từ đ&uacute;ng người hoặc tổ chức m&agrave; n&oacute; ghi trong đ&oacute;</strong>. Nếu nhận thấy điều g&igrave; mờ &aacute;m, bạn cần x&aacute;c nhận trực tiếp với người gửi.</li>\r\n</ol>\r\n\r\n<h2>MUA SẮM ONLINE Ở MỘT TRANG WEB TMĐT GIẢ MẠO</h2>\r\n\r\n<p>Tội phạm kh&ocirc;ng chỉ hướng mục ti&ecirc;u trực tiếp tới kh&aacute;ch h&agrave;ng m&agrave; c&ograve;n tới c&aacute;c nh&agrave; b&aacute;n lẻ (hoặc trang TMĐT) nổi tiếng. Nếu bạn điền th&ocirc;ng tin thẻ t&iacute;n dụng v&agrave;o một trang web giả mạo, bạn c&oacute; thể đang trao t&agrave;i khoản ng&acirc;n h&agrave;ng của m&igrave;nh cho những t&ecirc;n tội phạm mạng.</p>\r\n\r\n<p>Tất nhi&ecirc;n việc bị lừa đảo kh&ocirc;ng phải lỗi của bạn, nhưng ch&uacute;ng ta n&ecirc;n đề cao cảnh gi&aacute;c để đề ph&ograve;ng rủi ro. Ở một v&agrave;i trang web, bạn c&oacute; thể thấy c&aacute;c chỉ dẫn trực quan về t&iacute;nh bảo mật, như biểu tượng ổ kh&oacute;a cho thấy thằng trang web đ&oacute; sử dụng chuẩn bảo mật Secure Sockets Layer (SSL) &ndash; đ&acirc;y l&agrave; một giao thức m&atilde; h&oacute;a th&ocirc;ng tin được gửi giữa tr&igrave;nh duyệt web, v&iacute; dụ như Google Chrome v&agrave; m&aacute;y chủ của c&aacute;c c&ocirc;ng ty b&aacute;n lẻ bạn sử dụng. Tuy nhi&ecirc;n kh&ocirc;ng c&oacute; g&igrave; đảm bảo rằng th&ocirc;ng tin của bạn an to&agrave;n. M&ugrave;a h&egrave; vừa qua, ch&uacute;ng t&ocirc;i đ&atilde; chứng kiến nhiều c&ocirc;ng ty như Newegg, Ticketmaster v&agrave; British Airways bị đ&aacute;nh cắp dữ liệu thẻ t&iacute;n dụng được nhập tr&ecirc;n trang web bởi phần mềm độc hại &ndash; v&agrave; họ đều sử dụng SSL.</p>\r\n\r\n<p>Ch&iacute;nh v&igrave; vậy, kh&aacute;ch h&agrave;ng cần phải tự bảo vệ m&igrave;nh khi l&ecirc;n mạng.</p>\r\n\r\n<p>Dưới đ&acirc;y l&agrave; một số lời khuy&ecirc;n gi&uacute;p bạn tự bảo vệ bản th&acirc;n khỏi những trang web bị tin tặc kiểm so&aacute;t:</p>\r\n\r\n<ol>\r\n	<li><strong>Thử c&aacute;c c&ocirc;ng cụ miễn ph&iacute; gi&uacute;p bạn phần biệt giữa trang web nguy hiểm v&agrave; an to&agrave;n</strong>. V&iacute; dụ như Web of Trust.</li>\r\n	<li><strong>H&atilde;y nhớ rằng kể cả những trang web &ldquo;an to&agrave;n&rdquo; cũng c&oacute; thể bị tấn c&ocirc;ng.</strong>&nbsp;Ch&iacute;nh v&igrave; vậy bạn n&ecirc;n c&acirc;n nhắc sử dụng c&aacute;c c&ocirc;ng cụ chặn phần mềm độc hại miễn ph&iacute;. NoScript được biết tới như một tiện &iacute;ch mở rộng miễn ph&iacute; gi&uacute;p ngăn chặn m&atilde; độc trong l&uacute;c thanh to&aacute;n.</li>\r\n	<li><strong>Sử dụng thẻ ảo để mua sắm trực tuyến</strong>. Những thẻ n&agrave;y c&oacute; v&ograve;ng đời ngắn v&agrave; cho ph&eacute;p bạn đặt hạn mức giao dịch. Điều n&agrave;y nghĩa l&agrave; nếu bạn bị tin tặc tấn c&ocirc;ng, ch&uacute;ng cũng kh&ocirc;ng thể tiếp cận được t&agrave;i khoản ng&acirc;n h&agrave;ng của bạn. Một số ng&acirc;n h&agrave;ng v&agrave; nh&agrave; cung cấp t&iacute;n dụng như Bank of America (ShopSafe), Capital One (ENO) v&agrave; Citi cũng cung cấp những dịch vụ n&agrave;y. B&ecirc;n cạnh đ&oacute; c&ograve;n c&oacute; những nh&agrave; cung cấp chuy&ecirc;n dụng kh&aacute;c như Entropay.</li>\r\n	<li><strong>Nếu bạn cần thanh to&aacute;n trực tuyến bằng thẻ ghi nợ hoặc thẻ t&iacute;n dụng, h&atilde;y chọn thẻ t&iacute;n dụng.</strong>&nbsp;Bạn thường nhận được sự bảo vệ tốt hơn trong c&aacute;c giao dịch mua cũng như dễ d&agrave;ng được bảo hiểm hơn trong trường hợp trở th&agrave;nh nạn nh&acirc;n của một vụ lừa đảo.</li>\r\n	<li><strong>Theo d&otilde;i t&agrave;i khoản ng&acirc;n h&agrave;ng của bạn một c&aacute;ch kỹ lưỡng để kịp thời ph&aacute;t hiện ra hoạt động lừa đảo</strong>. Bật th&ocirc;ng b&aacute;o SMS cho t&agrave;i khoản của bạn để c&oacute; thể nhận được x&aacute;c nhận trực quan cho giao dịch mua h&agrave;ng m&agrave; bạn thực hiện. Nếu t&agrave;i khoản ng&acirc;n h&agrave;ng của bạn cho ph&eacute;p bạn đặt hạn mức giao dịch, h&atilde;y sử dụng t&iacute;nh năng n&agrave;y. V&agrave; tất nhi&ecirc;n, nếu bạn nhận thấy bất kỳ giao dịch đ&aacute;ng ngờ n&agrave;o, h&atilde;y th&ocirc;ng b&aacute;o cho ng&acirc;n h&agrave;ng của bạn ngay lập tức v&agrave; chặn thẻ.</li>\r\n</ol>\r\n', 'Screen-Shot-2017-11-03-at-8_18_36-AM.png', '2021-01-19 11:16:51', '1', '2021-01-19 11:16:51', '1', 0, 1),
(12, 'Top 10 ứng dụng mua sắm online tốt nhất năm 2020 ', 'top-10-ung-dung-mua-sam-online-tot-nhat-nam-2020', '', '<p><strong>1. Lazada</strong></p>\r\n\r\n<p>Lazada một ứng dụng mua sắm trực tuyến tr&ecirc;n thiết bị di động gia nhập v&agrave;o thị trường Việt Nam v&agrave;o đầu năm 2012. Đ&acirc;y l&agrave; th&agrave;nh vi&ecirc;n của Lazada Group một trong những trung t&acirc;m mua sắm trực tuyến lớn tại Đ&ocirc;ng Nam &Aacute;.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://womenleadersforum.vn/wp-content/uploads/2020/03/popupapp-2016-v1-Copy.jpg\" style=\"height:469px; width:700px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Lazada mang đến cho kh&aacute;ch h&agrave;ng những trải nghiệm mua sắm v&ocirc; c&ugrave;ng tuyệt vời với nhiều mặt h&agrave;ng thuộc nhiều thương hiệu kh&aacute;c nhau tr&ecirc;n thế giới. K&egrave;m theo đ&oacute; l&agrave; giao diện dễ sử dụng v&agrave; giao h&agrave;ng nhanh ch&oacute;ng, tiết kiệm.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>2. Shopee</strong></p>\r\n\r\n<p>Shopee l&agrave; ứng dụng thu h&uacute;t lượng người d&ugrave;ng lớn nhất tr&ecirc;n thị trường hiện nay với hơn 40 triệu lượt tải về, hiện ứng dụng đang c&oacute; mặt ở 7 quốc gia như: Singapore, Th&aacute;i Lan, Việt Nam, Malaysia, Đ&agrave;i Loan, Indonesia v&agrave; Philippines.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://womenleadersforum.vn/wp-content/uploads/2020/03/Sp-Copy.jpg\" style=\"height:515px; width:700px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Mua sắm tại Shopee bạn sẽ được hưởng nhiều ưu đ&atilde;i như: miễn ph&iacute; cước vận chuyển đối với đơn h&agrave;ng tr&ecirc;n 180.000 vnđ,&nbsp;ưu đ&atilde;i tặng sản phẩm cho kh&aacute;ch h&agrave;ng mới với gi&aacute; 0đ, t&iacute;ch hợp nhiều tr&ograve; chơi vui nhộn để săn xu đổi nhiều ưu đ&atilde;i hấp dẫn,&hellip;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>2. Tiki</strong></p>\r\n\r\n<p>Từ một trang web b&aacute;n s&aacute;ch đơn thuần, Tiki đang trở th&agrave;nh một đối thủ lớn của c&aacute;c trang thương mại điện tử kh&aacute;c.&nbsp;Độ phủ s&oacute;ng của Tiki trong thời gian qua tại thị trường Việt Nam khiến c&aacute;i t&ecirc;n n&agrave;y đ&atilde; qu&aacute; đỗi th&acirc;n&nbsp;thuộc.&nbsp;Tiki hiện cũng đang l&agrave; ứng dụng được người d&ugrave;ng t&igrave;m kiếm nhiều nhất, cho thấy sức h&uacute;t của Tiki l&agrave; mạnh mẽ đến như thế n&agrave;o. Nếu bạn đang c&oacute; nhu cầu mua h&agrave;ng n&oacute;i chung v&agrave; mua s&aacute;ch n&oacute;i ri&ecirc;ng th&igrave; Tiki ch&iacute;nh l&agrave; sự lựa chọn kh&ocirc;ng thể thiếu d&agrave;nh cho bạn.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://womenleadersforum.vn/wp-content/uploads/2020/03/3-Top-7-app-ban-hang-online-thanh-cong-nhat-viet-nam-2019-730x414.jpg\" style=\"height:414px; width:730px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>4. Sendo</strong></p>\r\n\r\n<p>Từ khi ứng dụng ra mắt, Sendo nổi l&ecirc;n như l&agrave; một trong những ứng dụng top đầu&nbsp;gi&uacute;p kh&aacute;ch an t&acirc;m khi mua sắm. Sendo đem lại cho bạn những trải nghiệm v&ocirc; c&ugrave;ng thu h&uacute;t, gi&uacute;p bạn c&oacute; cơ hội tiếp cận được rất nhiều mặt h&agrave;ng trải d&agrave;i từ c&ocirc;ng nghệ, thời trang, mỹ phẩm,&hellip; v&agrave;&nbsp;cập nhật li&ecirc;n tục c&aacute;c chương tr&igrave;nh khuyến m&atilde;i hấp dẫn, miễn ph&iacute; vận chuyển.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://womenleadersforum.vn/wp-content/uploads/2020/03/4-Top-7-app-ban-hang-online-thanh-cong-nhat-viet-nam-2019-1-Copy.jpg\" style=\"height:488px; width:700px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>5. VinID</strong></p>\r\n\r\n<p>VinID l&agrave; ứng dụng&nbsp;b&aacute;n h&agrave;ng trực tuyến thuộc tập đo&agrave;n Vingroup, một si&ecirc;u thị online với h&agrave;ng trăm sản phẩm chất lượng của nhiều thương hiệu nổi tiếng.&nbsp;Tại VinID, bạn c&oacute; thể dễ d&agrave;ng mua sắm trực tuyến c&aacute;c sản phẩm chất lượng cao thuộc c&aacute;c thương hiệu của Vingroup như: Thực phẩm, rau củ tươi sống từ Vinmart, Smartphone, thiết bị điện từ từ Vinpro, nghỉ dưỡng, kh&aacute;ch sạn, resort,&hellip; c&ugrave;ng những chương tr&igrave;nh&nbsp;đến từ c&aacute;c nh&agrave; cung cấp kh&aacute;c, cũng như thanh to&aacute;n điện &ndash; nước &ndash; internet,&hellip; khiến cuộc sống của bạn tiện lợi v&agrave; th&ocirc;ng minh hơn.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://womenleadersforum.vn/wp-content/uploads/2020/03/5-Top-7-app-ban-hang-online-thanh-cong-nhat-viet-nam-2019-Copy.jpg\" style=\"height:423px; width:700px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>6. WService</strong></p>\r\n\r\n<p>WService l&agrave; ứng dụng Mobile VIP Card đầu ti&ecirc;n tại Việt Nam được đầu tư bởi Tập đo&agrave;n Truyền th&ocirc;ng Nam Hương. Ứng dụng n&agrave;y được ra đời với sứ mệnh l&agrave; thay thế to&agrave;n bộ hệ thống thẻ VIP vật của c&aacute;c doanh nghiệp, kh&aacute;ch h&agrave;ng mua sắm kh&ocirc;ng cần đến những chiếc thẻ bất tiện d&ugrave; l&agrave; online hay trực tiếp tại c&aacute;c cửa h&agrave;ng đa ng&agrave;nh. &ldquo;Sinh sau đẻ muộn&rdquo;, WService c&oacute; nhiều lợi thế, kết hợp đầy đủ c&aacute;c t&iacute;nh năng để hỗ trợ qu&aacute; tr&igrave;nh mua sắm, l&agrave;m c&aacute;c kh&aacute;ch h&agrave;ng h&agrave;i l&ograve;ng như: t&igrave;m kiếm th&ocirc;ng minh, tr&ograve; chuyện trực tiếp với cửa h&agrave;ng, giao diện dễ sử dụng, xem nhận x&eacute;t v&agrave; đ&aacute;nh gi&aacute; thực,&hellip; Đặc biệt l&agrave; c&oacute; những lợi &iacute;ch đặc quyền&nbsp;khiến kh&aacute;ch h&agrave;ng &ldquo;m&ecirc; t&iacute;t&rdquo;:</p>\r\n\r\n<p>&ndash; Người ti&ecirc;u d&ugrave;ng đồng l&uacute;c trở th&agrave;nh kh&aacute;ch h&agrave;ng VIP của h&agrave;ng trăm thương hiệu tr&ecirc;n app</p>\r\n\r\n<p>&ndash; Mua sắm bất k&igrave; l&uacute;c n&agrave;o bạn cũng c&oacute; thể hưởng ưu đ&atilde;i theo hạng mức thẻ th&agrave;nh vi&ecirc;n, c&oacute; thể l&ecirc;n đến 30%.</p>\r\n\r\n<p>&ndash; T&iacute;ch điểm sau mỗi lần ti&ecirc;u d&ugrave;ng, đổi qu&agrave; tặng, voucher v&agrave; n&acirc;ng hạng mức thẻ để nhận nhiều hơn những ưu đ&atilde;i, mua sắm c&agrave;ng tiết kiệm.</p>\r\n\r\n<p>&ndash; Giới thiệu bạn b&egrave; sử dụng sẽ được hưởng 5% tiền thưởng sau mỗi h&oacute;a đơn.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://womenleadersforum.vn/wp-content/uploads/2020/03/WS-Copy.jpeg\" style=\"height:600px; width:600px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>7. Chợ Tốt</strong></p>\r\n\r\n<p>Chợ Tốt l&agrave; một ứng dụng kết nối giữa người b&aacute;n v&agrave; người mua hiệu quả. Tại đ&acirc;y bạn được ph&eacute;p rao b&aacute;n m&agrave; kh&ocirc;ng phải mất bất kỳ khoản ph&iacute; n&agrave;o. Tại Chợ Tốt bạn c&oacute; thể li&ecirc;n hệ với người b&aacute;n h&agrave;ng bằng nhiều c&aacute;ch như gọi điện, nhắn tin v&agrave; qua email. Với Chợ Tốt, bạn dễ d&agrave;ng&nbsp;rao vặt miễn ph&iacute;, cập nhật li&ecirc;n tục c&aacute;c mặt h&agrave;ng v&agrave; gi&aacute; b&aacute;n,&nbsp;kho sản phẩm đa dạng như: xe, nh&agrave;, đồ điện, đồ ngoại thất,&hellip;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://womenleadersforum.vn/wp-content/uploads/2020/03/ungdungmuasam5_20190918124202-Copy.png\" style=\"height:450px; width:600px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>8. Zalora</strong></p>\r\n\r\n<p>Zalora l&agrave; ứng dụng chuy&ecirc;n về c&aacute;c sản phẩm quần &aacute;o thời trang, phụ kiện, gi&agrave;y d&eacute;p, mỹ phẩm cho cả nam v&agrave; nữ. Zalora c&oacute; giao diện tối giản cho phi&ecirc;n bản thiết bị di động, v&igrave; thế bạn c&oacute; thể xem hơn 1000 thương hiệu h&agrave;ng đầu với hơn 50.000 sản phẩm; với bộ lọc th&ocirc;ng minh, lọc theo loại v&agrave; gi&aacute;, xem c&aacute;c sản phẩm h&agrave;ng đầu. Zalora lu&ocirc;n giảm gi&aacute; đặc biệt d&agrave;nh cho kh&aacute;ch h&agrave;ng th&acirc;n thiết v&agrave;&nbsp;bạn c&oacute; thể lưu nhanh ch&oacute;ng c&aacute;c sản phẩm bạn y&ecirc;u th&iacute;ch v&agrave;o &ldquo;Mục Y&ecirc;u Th&iacute;ch&rdquo;.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://womenleadersforum.vn/wp-content/uploads/2020/03/6-Top-7-app-ban-hang-online-thanh-cong-nhat-viet-nam-2019-Copy.jpg\" style=\"height:423px; width:700px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>8.</strong>&nbsp;<strong>Amazon</strong></p>\r\n\r\n<p>Nếu bạn c&oacute; nhu cầu mua h&agrave;ng quốc tế th&igrave; kh&ocirc;ng thể kh&ocirc;ng nhắc đến Amazon. Ứng dụng Amazon đ&atilde; thực sự rất th&agrave;nh c&ocirc;ng, nhận được nhiều lượt tải lớn từ c&aacute;c kh&aacute;ch h&agrave;ng tr&ecirc;n thế giới. Kh&aacute;ch h&agrave;ng c&oacute; thể mua sắm được h&agrave;ng triệu sản phẩm từ tất cả c&aacute;c thương hiệu nổi tiếng tr&ecirc;n to&agrave;n cầu. Amazon với nhiều tiện t&iacute;ch cho c&aacute;c kh&aacute;ch h&agrave;ng:</p>\r\n\r\n<p>&ndash; Chỉ cần sử dụng &ldquo;Voice Search&rdquo; để t&igrave;m kiếm sản phẩm theo đ&uacute;ng nhu cầu.</p>\r\n\r\n<p>&ndash; Khả năng qu&eacute;t m&atilde; vạch v&agrave; h&igrave;nh ảnh để so s&aacute;nh h&agrave;ng h&oacute;a v&agrave; kiểm tra gi&aacute; cả.</p>\r\n\r\n<p>&ndash; Kiểm tra c&aacute;c ưu đ&atilde;i hộp v&agrave;ng, bao gồm c&aacute;c giao dịch ưu đ&atilde;i trong ng&agrave;y.</p>\r\n\r\n<p>&ndash; Gửi v&agrave; chia sẻ c&aacute;c li&ecirc;n kết sản phẩm qua email, SMS, Facebook.</p>\r\n\r\n<p>&ndash; C&ocirc;ng nghệ quản l&yacute; đơn h&agrave;ng&nbsp;hiệu quả.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://womenleadersforum.vn/wp-content/uploads/2020/03/ungdungmuasam6_20190918124239-Copy.png\" style=\"height:450px; width:600px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>10. AliExpress</strong></p>\r\n\r\n<p>AliExpress l&agrave; một ứng dụng mua sắm online trực thuộc tập đo&agrave;n Alibaba. AliExpress nổi tiếng với c&aacute;c mặt h&agrave;ng thời trang, phụ kiện c&ocirc;ng nghệ, thiết bị điện &ndash; điện tử với nhiều ph&acirc;n kh&uacute;c từ b&igrave;nh d&acirc;n đến cao cấp. Mua h&agrave;ng tại AliExpress c&oacute; thể miễn ph&iacute; vận chuyển hơn 75% sản phẩm,&nbsp;thanh to&aacute;n trực tuyến an to&agrave;n v&agrave; đảm bảo, hỗ trợ nhiều ng&ocirc;n ngữ kh&aacute;c nhau, hay bạn ho&agrave;n to&agrave;n c&oacute; thể thanh to&aacute;n cho m&oacute;n h&agrave;ng của m&igrave;nh với bất kỳ loại tiền tệ n&agrave;o&hellip;.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://womenleadersforum.vn/wp-content/uploads/2020/03/aliexpress-Copy.jpg\" style=\"height:394px; width:700px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hy vọng với 10&nbsp;ứng dụng mua sắm&nbsp;nổi bật&nbsp;tr&ecirc;n đ&acirc;y, bạn sẽ c&oacute; được những trải nghiệm mua sắm online thuận tiện, tiết kiệm,&nbsp;sở hữu những sản phẩm cực k&igrave; hấp dẫn với gi&aacute; ưu đ&atilde;i!</p>\r\n', 'WS.jpg', '2021-01-19 11:19:06', '1', '2021-01-19 11:19:06', '1', 0, 1),
(13, 'Thời cơ của mua sắm trực tuyến', 'thoi-co-cua-mua-sam-truc-tuyen', '', '<p>&Ocirc;ng Nguyễn B&igrave;nh Minh - Ủy vi&ecirc;n BCH Hiệp hội Thương mại điện tử Việt Nam (VECOM) cho biết:&nbsp; &ldquo;Do t&acirc;m l&yacute; ngại ra ngo&agrave;i đi chợ, mua h&agrave;ng v&igrave; sợ l&acirc;y nhiễm bệnh, nhiều người d&acirc;n đ&atilde; lựa chọn mua c&aacute;c sản phẩm thiết yếu, c&aacute;c vật dụng y tế qua mạng. Ch&iacute;nh v&igrave; thế, hoạt động thương mại điện tử trong thời gian gần đ&acirc;y kh&aacute; s&ocirc;i nổi. Trước đ&acirc;y, hoạt động mua b&aacute;n tr&ecirc;n mạng chỉ nở rộ v&agrave;o thời điểm trước tết, c&ograve;n thời điểm sau Tết thường trầm xuống th&igrave; trong thời điểm n&agrave;y năm 2020, hoạt động mua b&aacute;n tr&ecirc;n mạng vẫn rất s&ocirc;i động&rdquo;.</p>\r\n\r\n<p>Trao đổi với ph&oacute;ng vi&ecirc;n b&aacute;o Lao Động, &ocirc;ng Vương Mạnh Ho&agrave;ng - Chủ tịch Tập đo&agrave;n tr&iacute; tuệ số cho rằng, đ&acirc;y cũng l&agrave; thời điểm c&aacute;c doanh nghiệp thương mại điện tử đổi mới v&agrave; chuẩn ho&aacute; quy tr&igrave;nh kinh doanh khi dịch COVID-19 b&ugrave;ng ph&aacute;t v&agrave; diễn biến ng&agrave;y c&agrave;ng phức tạp. &Ocirc;ng Mạnh Ho&agrave;ng chỉ ra ba điểm thay đổi cốt l&otilde;i m&agrave; c&aacute;c doanh nghiệp kinh doanh thương mại điện tử đang chuyển m&igrave;nh.&nbsp;</p>\r\n\r\n<p>Thứ nhất, nhiều doanh nghiệp đ&atilde; chủ động nhập m&aacute;y m&oacute;c về sản xuất trong nước thay v&igrave; nhập khẩu từ nước ngo&agrave;i. Nếu như trước đ&acirc;y, c&aacute;c chủ doanh nghiệp kinh doanh, b&aacute;n h&agrave;ng online chủ yếu phụ thuộc v&agrave;o lượng h&agrave;ng, nguồn nguy&ecirc;n liệu nhập khẩu từ Trung Quốc. Hiện nay khi bi&ecirc;n giới bị đ&oacute;ng cửa, số lượng h&agrave;ng th&ocirc;ng quan &iacute;t, kh&ocirc;ng &iacute;t doanh nghiệp đ&atilde; mạnh dạn đầu tư tiền tỉ để nhập m&aacute;y m&oacute;c chủ động sản xuất trong nước, kh&ocirc;ng phụ thuộc v&agrave;o nguồn cung từ Trung Quốc nữa.&nbsp;</p>\r\n\r\n<p>Thứ hai, về ph&aacute;t triển kho b&atilde;i chứa h&agrave;ng ho&aacute;. Trước đ&acirc;y việc tuồn h&agrave;ng qua c&aacute;c con đường tiểu ngạch, đường bi&ecirc;n về kh&aacute; nhanh ch&oacute;ng trong 3-4 ng&agrave;y n&ecirc;n c&aacute;c chủ doanh nghiệp hầu như kh&ocirc;ng c&oacute; &yacute; định x&acirc;y dựng kho trữ h&agrave;ng ho&aacute;. Sau khi dịch COVID-19 xảy ra, nhiều &ocirc;ng chủ phải t&iacute;nh tới chuyện đầu tư b&agrave;i bản, x&acirc;y dựng kho trữ h&agrave;ng ho&aacute;, tr&aacute;nh rủi ro khi nhập h&agrave;ng từ Trung Quốc kh&ocirc;ng được.</p>\r\n\r\n<p>Thứ ba, tr&iacute;ch lập quỹ dự ph&ograve;ng rủi ro để đảm bảo doanh nghiệp vẫn tồn tại trong thời điểm kh&oacute; khăn. Trước đ&acirc;y, đa số c&aacute;c doanh nghiệp chỉ tr&iacute;ch quỹ dự ph&ograve;ng tối đa l&ecirc;n tới 3 th&aacute;ng. Nhưng sau khi đại dịch COVID-19 xảy ra, nhiều doanh nghiệp bu&ocirc;n b&aacute;n thương mại điện tử mới biết m&igrave;nh cần tr&iacute;ch lập dự ph&ograve;ng từ 8 th&aacute;ng đến 1 năm. B&agrave;i học nhiều doanh nghiệp ph&aacute; sản trong thời gian qua l&agrave; v&igrave; kh&ocirc;ng đủ vốn, phải b&aacute;n bớt t&agrave;i sản để trả nợ lương, nợ ng&acirc;n h&agrave;ng...</p>\r\n\r\n<p>&Ocirc;ng Vương Mạnh Ho&agrave;ng cho biết: &ldquo;C&ocirc;ng ty ch&uacute;ng t&ocirc;i đang chuyển hướng nhập h&agrave;ng từ c&aacute;ch nguồn mới như Th&aacute;i Lan, L&agrave;o, Campuchia, Indonesia... Trước đ&acirc;y c&ocirc;ng ty t&ocirc;i chủ yếu lấy h&agrave;ng Trung Quốc đại lục th&igrave; nay đa dạng sang cả thị trường Đ&agrave;i Loan (Trung Quốc), Hồng K&ocirc;ng (Trung Quốc), Ả Rập...&rdquo;.</p>\r\n\r\n<p>Về giải ph&aacute;p, &ocirc;ng Vương Mạnh Ho&agrave;ng cho biết: &ldquo;Trong thời điểm dịch COVID-19 ở Trung Quốc dần được kiểm so&aacute;t, việc sản xuất sẽ sớm phục hồi.&nbsp;</p>\r\n\r\n<p>Tại Việt Nam, ch&iacute;nh phủ đ&atilde; c&oacute; những giải ph&aacute;p quyết liệt hỗ trợ doanh nghiệp. T&ocirc;i tin rằng đ&acirc;y l&agrave; lợi thế để c&aacute;c doanh nghiệp trong nước ngay tại thời điểm n&agrave;y l&ecirc;n kế hoạch đầu tư quảng c&aacute;o, cơ sở vật chất, m&aacute;y m&oacute;c, nh&acirc;n sự để chuẩn bị b&aacute;n h&agrave;ng ngay khi dịch kết th&uacute;c. Theo &ocirc;ng Nguyễn B&igrave;nh Minh: &ldquo;Quy m&ocirc; c&aacute;c s&agrave;n thương mại điện tử của Việt Nam đang ng&agrave;y c&agrave;ng lớn, trị gi&aacute; nhiều s&agrave;n đang được đ&aacute;nh gi&aacute; cao, nếu c&oacute; sự hợp nhất của một số s&agrave;n th&igrave; sẽ c&oacute; thể h&igrave;nh th&agrave;nh n&ecirc;n c&aacute;c doanh nghiệp thương mại điện tử c&oacute; gi&aacute; trị l&ecirc;n đến hơn 1 tỉ USD.&nbsp;</p>\r\n\r\n<p><strong>Nhiều giải ph&aacute;p để ph&aacute;t triển thương mại điện tử</strong></p>\r\n\r\n<p>Theo b&agrave; Nguyễn Huỳnh Trang - Ph&oacute; Gi&aacute;m đốc Sở C&ocirc;ng Thương TPHCM, để chủ động ứng ph&oacute; với dịch COVID-19, Sở đ&atilde; đề nghị c&aacute;c DN tham gia b&igrave;nh ổn thị trường TPHCM, c&aacute;c DN ph&acirc;n phối tăng cường b&aacute;n h&agrave;ng qua k&ecirc;nh thương mại điện tử. C&ugrave;ng với đ&oacute;, khuyến kh&iacute;ch người d&acirc;n ưu ti&ecirc;n sử dụng h&igrave;nh thức mua h&agrave;ng trực tuyến để hạn chế đến những nơi tập trung đ&ocirc;ng người (chợ, si&ecirc;u thị, cửa h&agrave;ng tiện lợi) v&agrave; lựa chọn những đơn vị ph&acirc;n phối uy t&iacute;n để mua h&agrave;ng, tr&aacute;nh t&igrave;nh trạng vừa mua phải h&agrave;ng gi&aacute; cao m&agrave; chất lượng thiếu bảo đảm.</p>\r\n\r\n<p>Theo &ocirc;ng Đỗ Quốc Huy - Gi&aacute;m đốc Marketing của Saigon Co.op, nhằm phục vụ cho nhu cầu mua sắm của kh&aacute;ch h&agrave;ng trong t&igrave;nh h&igrave;nh dịch bệnh COVID-19, hạn chế tụ tập đ&ocirc;ng người ở một địa điểm, đơn vị tăng cường dịch vụ b&aacute;n h&agrave;ng tận nh&agrave;.</p>\r\n\r\n<p>Theo đ&oacute;, hơn 800 điểm b&aacute;n của Saigon Co.op bao gồm Co.opmart, Co.opmart SCA, Co.opXtra, Co.op Food, Finelife, Co.op Smile sẽ tăng cường đặt h&agrave;ng v&agrave; giao h&agrave;ng qua điện thoại kể từ ng&agrave;y 16.3. Nh&acirc;n vi&ecirc;n si&ecirc;u thị sẽ gửi đến tận nh&agrave; kh&aacute;ch h&agrave;ng phiếu đặt h&agrave;ng c&oacute; sẵn danh mục gồm 3 nh&oacute;m h&agrave;ng (thực phẩm tươi sống; thực phẩm c&ocirc;ng nghệ thiết yếu; h&oacute;a phẩm). Kh&aacute;ch h&agrave;ng chỉ cần chọn lựa theo danh mục n&agrave;y v&agrave; li&ecirc;n hệ si&ecirc;u thị (gọi điện trực tiếp hoặc chụp h&igrave;nh gửi qua zalo, viber, tin nhắn&hellip;) theo số điện thoại tr&ecirc;n phiếu đặt h&agrave;ng, h&agrave;ng sẽ được đưa tới nh&agrave;. Danh mục h&agrave;ng h&oacute;a trong phiếu đặt h&agrave;ng c&oacute; thời gian sử dụng trong v&ograve;ng 7 ng&agrave;y. B&ecirc;n cạnh h&igrave;nh thức phiếu đặt h&agrave;ng, dịch vụ đặt h&agrave;ng qua điện thoại của Saigon Co.op vẫn tiếp tục phục vụ kh&aacute;ch h&agrave;ng theo giờ hoạt động của điểm b&aacute;n. L.H</p>\r\n', 'unnamed.jpg', '2021-01-19 11:21:40', '1', '2021-01-19 11:21:40', '1', 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_customer`
--

CREATE TABLE `db_customer` (
  `id` int(11) NOT NULL,
  `fullname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(13) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `trash` int(1) NOT NULL DEFAULT 1,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_customer`
--

INSERT INTO `db_customer` (`id`, `fullname`, `username`, `password`, `address`, `phone`, `email`, `created`, `trash`, `status`) VALUES
(2, 'Hiệp gà', 'hiep1998', 'e10adc3949ba59abbe56e057f20f883e', '', '0981643651', 'vanhiepp1998@gmail.com', '2020-10-07 22:10:08', 0, 1),
(9, 'Nguyễn Đức Lương', 'luong1998', 'e10adc3949ba59abbe56e057f20f883e', '', '090932323', 'luong@gmail.com', '2020-10-07 22:10:08', 0, 1),
(39, 'Bảo bự', '', '', '', '052244141', 'baobu@gmail.com', '2020-10-07 22:10:08', 0, 1),
(46, 'Dương Minh Trí', '', '', '', '0908030405', '', '2020-10-07 22:10:08', 0, 1),
(47, 'Trần Thanh Tuy', '', '', '', '090305146', '', '2020-10-07 22:10:08', 0, 1),
(48, 'Xuân Thịnh', '', '', '', '090640316', '', '2020-10-07 22:10:08', 0, 1),
(49, 'Minh Sang', '', '', '', '0913164136', '', '2020-10-07 22:10:08', 0, 1),
(50, 'Hoàng Dũng', '', '', '', '096323646', '', '2020-10-07 22:10:08', 0, 1),
(51, 'Nguyễn Văn Trường', '', '', '', '0357646765', '', '2020-10-07 22:10:08', 0, 1),
(52, 'Hiệp Ngô', '', '', '', '076613166', '', '2020-10-07 22:10:08', 0, 1),
(53, 'Thanh Sơn', '', '', '', '0903121564', '', '2020-10-07 22:10:08', 0, 1),
(54, 'Thành', '', '', '', '033564616', '', '2020-10-07 22:10:08', 0, 1),
(55, 'Lương 21', '', '', '', '03056451', '', '2020-10-07 22:10:08', 0, 1),
(56, 'Tuấn Anh', '', '', '', '0305464844', '', '2020-10-07 22:10:08', 0, 1),
(57, 'Tiến Đạt', '', '', '', '032133234', '', '2020-10-07 22:10:08', 0, 1),
(66, 'Hiệp 2019', 'hiep2019', 'e10adc3949ba59abbe56e057f20f883e', '', '0306444854', 'vanhiepp19988@gmail.com', '2020-10-07 22:10:08', 0, 1),
(67, 'Đặng Hưn', '', '', '', '0964689432', '', '2020-10-05 16:48:01', 0, 1),
(68, 'Đặng Hưng', 'hungdang', 'e10adc3949ba59abbe56e057f20f883e', '', '0964689430', 'hung1205@gmail.com', '2020-10-06 00:00:00', 0, 1),
(69, 'Đặng Hưng', 'khachhang', 'e10adc3949ba59abbe56e057f20f883e', '', '0964689480', '', '2020-10-06 00:00:00', 0, 1),
(70, 'Đặng Hưng', 'vanhung', 'e10adc3949ba59abbe56e057f20f883e', '', '0964689439', 'hungstarblog@gmail.com', '2020-10-06 00:00:00', 0, 1),
(71, 'Test Mail', 'testmail', 'e10adc3949ba59abbe56e057f20f883e', '', '09646894132', 'yigepan903@lancastercoc.com', '2020-10-06 00:00:00', 0, 1),
(72, 'Organica', 'taikhoan', 'e10adc3949ba59abbe56e057f20f883e', '', '0969696969', 'adss@organic.vn', '2021-01-19 00:00:00', 0, 1),
(73, 'Organic ', 'Organica', 'e10adc3949ba59abbe56e057f20f883e', '', '0965686655', 'langthanglethuy@gmail.com', '2021-01-19 00:00:00', 0, 1),
(74, 'Nguyễn Đức Anh', 'nguyenaucanh', 'ccec6986d5d96f8822046016f9a2cdb5', '', '92555555', 'jcz43928@cuoly.com', '2021-01-19 00:00:00', 0, 1),
(75, 'HUng', '', '', '', '0952645555', '', '2021-01-21 17:29:27', 0, 1),
(76, 'HUng', '', '', '', '0952645555', '', '2021-01-21 17:32:42', 0, 1),
(78, 'NguyenAnKhang', 'ankhang0206', '43bc5c5168aacaf42c73acc8380a0ae0', '', '0123456789', 'k2.healer001@gmail.com', '2021-05-12 00:00:00', 1, 1),
(80, 'tranthainhu', 'tranthainhu', 'e10adc3949ba59abbe56e057f20f883e', '', '0123564789', 'ankhangatat5@gmail.com', '2021-05-22 00:00:00', 1, 1),
(81, 'NguyenAnKhang', 'ankhang020620', 'e10adc3949ba59abbe56e057f20f883e', '', '0326196078', 'qazplmwsxokn@gmail.com', '2021-05-24 00:00:00', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_discount`
--

CREATE TABLE `db_discount` (
  `id` int(11) NOT NULL COMMENT 'ID',
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Mã giảm giá',
  `discount` int(11) NOT NULL COMMENT 'Số tiền',
  `limit_number` int(11) NOT NULL COMMENT 'giới hạn lượt mua',
  `number_used` int(11) NOT NULL COMMENT 'Số lượng đã nhập',
  `expiration_date` date NOT NULL COMMENT 'Ngày hết hạn',
  `payment_limit` int(11) NOT NULL COMMENT 'giới hạn đơn hàng tối thiểu',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Mô tả',
  `created` date NOT NULL,
  `orders` int(11) NOT NULL,
  `trash` int(1) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_discount`
--

INSERT INTO `db_discount` (`id`, `code`, `discount`, `limit_number`, `number_used`, `expiration_date`, `payment_limit`, `description`, `created`, `orders`, `trash`, `status`) VALUES
(1, 'MAHETLUOT', 100000, 30, 30, '2019-09-29', 500000, 'Giam 100000', '2019-06-10', 1, 0, 1),
(2, 'VANHIEP', 200000, 20, 3, '2019-06-12', 500000, 'Giam 200k', '2019-06-10', 1, 0, 1),
(3, 'VANHIEP123', 200000, 300, 103, '2019-07-20', 300000, 'giảm 200k', '2019-06-25', 1, 0, 1),
(4, 'MAHETHAN', 150000, 68, 23, '2019-06-30', 500000, 'giảm 300k', '2019-06-25', 1, 0, 1),
(13, 'CAOTHANG', 150000, 200, 0, '2019-07-26', 100000, 'Giảm 150k', '2019-07-06', 1, 0, 1),
(18, 'DANAVTC', 50000, 10, 0, '2021-05-12', 10000, 'Khuyễn Mãi', '2020-10-05', 1, 0, 1),
(27, 'VVIG5YZAWUZM', 100000, 1, 0, '2021-06-12', 0, 'Mã giảm giá 100.000 đ tự động khi đăng ký thành công', '2021-05-12', 0, 0, 1),
(28, 'ZQOEVY4XPYF3', 100000, 1, 0, '2021-06-17', 0, 'Mã giảm giá 100.000 đ tự động khi đăng ký thành công', '2021-05-17', 0, 0, 1),
(29, 'CL9PHHSJKQFO', 100000, 1, 0, '2021-06-22', 0, 'Mã giảm giá 100.000 đ tự động khi đăng ký thành công', '2021-05-22', 0, 1, 1),
(30, 'YFIG3M6YDF2O', 100000, 1, 0, '2021-06-24', 0, 'Mã giảm giá 100.000 đ tự động khi đăng ký thành công', '2021-05-24', 0, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_district`
--

CREATE TABLE `db_district` (
  `id` int(5) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `provinceid` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_district`
--

INSERT INTO `db_district` (`id`, `name`, `type`, `provinceid`) VALUES
(1, 'Quận Ba Đình', 'Quận', 1),
(2, 'Quận Hoàn Kiếm', 'Quận', 1),
(3, 'Quận Tây Hồ', 'Quận', 1),
(4, 'Quận Long Biên', 'Quận', 1),
(5, 'Quận Cầu Giấy', 'Quận', 1),
(6, 'Quận Đống Đa', 'Quận', 1),
(7, 'Quận Hai Bà Trưng', 'Quận', 1),
(8, 'Quận Hoàng Mai', 'Quận', 1),
(9, 'Quận Thanh Xuân', 'Quận', 1),
(10, 'Huyện Sóc Sơn', 'Huyện', 1),
(11, 'Huyện Đông Anh', 'Huyện', 1),
(18, 'Huyện Gia Lâm', 'Huyện', 1),
(19, 'Quận Nam Từ Liêm', 'Quận', 1),
(20, 'Huyện Thanh Trì', 'Huyện', 1),
(21, 'Quận Bắc Từ Liêm', 'Quận', 1),
(24, 'Thành phố Hà Giang', 'Thành phố', 2),
(26, 'Huyện Đồng Văn', 'Huyện', 2),
(27, 'Huyện Mèo Vạc', 'Huyện', 2),
(28, 'Huyện Yên Minh', 'Huyện', 2),
(29, 'Huyện Quản Bạ', 'Huyện', 2),
(30, 'Huyện Vị Xuyên', 'Huyện', 2),
(31, 'Huyện Bắc Mê', 'Huyện', 2),
(32, 'Huyện Hoàng Su Phì', 'Huyện', 2),
(33, 'Huyện Xín Mần', 'Huyện', 2),
(34, 'Huyện Bắc Quang', 'Huyện', 2),
(35, 'Huyện Quang Bình', 'Huyện', 2),
(40, 'Thành phố Cao Bằng', 'Thành phố', 4),
(42, 'Huyện Bảo Lâm', 'Huyện', 4),
(43, 'Huyện Bảo Lạc', 'Huyện', 4),
(44, 'Huyện Thông Nông', 'Huyện', 4),
(45, 'Huyện Hà Quảng', 'Huyện', 4),
(46, 'Huyện Trà Lĩnh', 'Huyện', 4),
(47, 'Huyện Trùng Khánh', 'Huyện', 4),
(48, 'Huyện Hạ Lang', 'Huyện', 4),
(49, 'Huyện Quảng Uyên', 'Huyện', 4),
(50, 'Huyện Phục Hoà', 'Huyện', 4),
(51, 'Huyện Hoà An', 'Huyện', 4),
(52, 'Huyện Nguyên Bình', 'Huyện', 4),
(53, 'Huyện Thạch An', 'Huyện', 4),
(58, 'Thành Phố Bắc Kạn', 'Thành phố', 6),
(60, 'Huyện Pác Nặm', 'Huyện', 6),
(61, 'Huyện Ba Bể', 'Huyện', 6),
(62, 'Huyện Ngân Sơn', 'Huyện', 6),
(63, 'Huyện Bạch Thông', 'Huyện', 6),
(64, 'Huyện Chợ Đồn', 'Huyện', 6),
(65, 'Huyện Chợ Mới', 'Huyện', 6),
(66, 'Huyện Na Rì', 'Huyện', 6),
(70, 'Thành phố Tuyên Quang', 'Thành phố', 8),
(71, 'Huyện Lâm Bình', 'Huyện', 8),
(72, 'Huyện Nà Hang', 'Huyện', 8),
(73, 'Huyện Chiêm Hóa', 'Huyện', 8),
(74, 'Huyện Hàm Yên', 'Huyện', 8),
(75, 'Huyện Yên Sơn', 'Huyện', 8),
(76, 'Huyện Sơn Dương', 'Huyện', 8),
(80, 'Thành phố Lào Cai', 'Thành phố', 10),
(82, 'Huyện Bát Xát', 'Huyện', 10),
(83, 'Huyện Mường Khương', 'Huyện', 10),
(84, 'Huyện Si Ma Cai', 'Huyện', 10),
(85, 'Huyện Bắc Hà', 'Huyện', 10),
(86, 'Huyện Bảo Thắng', 'Huyện', 10),
(87, 'Huyện Bảo Yên', 'Huyện', 10),
(88, 'Huyện Sa Pa', 'Huyện', 10),
(89, 'Huyện Văn Bàn', 'Huyện', 10),
(94, 'Thành phố Điện Biên Phủ', 'Thành phố', 11),
(95, 'Thị Xã Mường Lay', 'Thị xã', 11),
(96, 'Huyện Mường Nhé', 'Huyện', 11),
(97, 'Huyện Mường Chà', 'Huyện', 11),
(98, 'Huyện Tủa Chùa', 'Huyện', 11),
(99, 'Huyện Tuần Giáo', 'Huyện', 11),
(100, 'Huyện Điện Biên', 'Huyện', 11),
(101, 'Huyện Điện Biên Đông', 'Huyện', 11),
(102, 'Huyện Mường Ảng', 'Huyện', 11),
(103, 'Huyện Nậm Pồ', 'Huyện', 11),
(105, 'Thành phố Lai Châu', 'Thành phố', 12),
(106, 'Huyện Tam Đường', 'Huyện', 12),
(107, 'Huyện Mường Tè', 'Huyện', 12),
(108, 'Huyện Sìn Hồ', 'Huyện', 12),
(109, 'Huyện Phong Thổ', 'Huyện', 12),
(110, 'Huyện Than Uyên', 'Huyện', 12),
(111, 'Huyện Tân Uyên', 'Huyện', 12),
(112, 'Huyện Nậm Nhùn', 'Huyện', 12),
(116, 'Thành phố Sơn La', 'Thành phố', 14),
(118, 'Huyện Quỳnh Nhai', 'Huyện', 14),
(119, 'Huyện Thuận Châu', 'Huyện', 14),
(120, 'Huyện Mường La', 'Huyện', 14),
(121, 'Huyện Bắc Yên', 'Huyện', 14),
(122, 'Huyện Phù Yên', 'Huyện', 14),
(123, 'Huyện Mộc Châu', 'Huyện', 14),
(124, 'Huyện Yên Châu', 'Huyện', 14),
(125, 'Huyện Mai Sơn', 'Huyện', 14),
(126, 'Huyện Sông Mã', 'Huyện', 14),
(127, 'Huyện Sốp Cộp', 'Huyện', 14),
(128, 'Huyện Vân Hồ', 'Huyện', 14),
(132, 'Thành phố Yên Bái', 'Thành phố', 15),
(133, 'Thị xã Nghĩa Lộ', 'Thị xã', 15),
(135, 'Huyện Lục Yên', 'Huyện', 15),
(136, 'Huyện Văn Yên', 'Huyện', 15),
(137, 'Huyện Mù Căng Chải', 'Huyện', 15),
(138, 'Huyện Trấn Yên', 'Huyện', 15),
(139, 'Huyện Trạm Tấu', 'Huyện', 15),
(140, 'Huyện Văn Chấn', 'Huyện', 15),
(141, 'Huyện Yên Bình', 'Huyện', 15),
(148, 'Thành phố Hòa Bình', 'Thành phố', 17),
(150, 'Huyện Đà Bắc', 'Huyện', 17),
(151, 'Huyện Kỳ Sơn', 'Huyện', 17),
(152, 'Huyện Lương Sơn', 'Huyện', 17),
(153, 'Huyện Kim Bôi', 'Huyện', 17),
(154, 'Huyện Cao Phong', 'Huyện', 17),
(155, 'Huyện Tân Lạc', 'Huyện', 17),
(156, 'Huyện Mai Châu', 'Huyện', 17),
(157, 'Huyện Lạc Sơn', 'Huyện', 17),
(158, 'Huyện Yên Thủy', 'Huyện', 17),
(159, 'Huyện Lạc Thủy', 'Huyện', 17),
(164, 'Thành phố Thái Nguyên', 'Thành phố', 19),
(165, 'Thành phố Sông Công', 'Thành phố', 19),
(167, 'Huyện Định Hóa', 'Huyện', 19),
(168, 'Huyện Phú Lương', 'Huyện', 19),
(169, 'Huyện Đồng Hỷ', 'Huyện', 19),
(170, 'Huyện Võ Nhai', 'Huyện', 19),
(171, 'Huyện Đại Từ', 'Huyện', 19),
(172, 'Thị xã Phổ Yên', 'Thị xã', 19),
(173, 'Huyện Phú Bình', 'Huyện', 19),
(178, 'Thành phố Lạng Sơn', 'Thành phố', 20),
(180, 'Huyện Tràng Định', 'Huyện', 20),
(181, 'Huyện Bình Gia', 'Huyện', 20),
(182, 'Huyện Văn Lãng', 'Huyện', 20),
(183, 'Huyện Cao Lộc', 'Huyện', 20),
(184, 'Huyện Văn Quan', 'Huyện', 20),
(185, 'Huyện Bắc Sơn', 'Huyện', 20),
(186, 'Huyện Hữu Lũng', 'Huyện', 20),
(187, 'Huyện Chi Lăng', 'Huyện', 20),
(188, 'Huyện Lộc Bình', 'Huyện', 20),
(189, 'Huyện Đình Lập', 'Huyện', 20),
(193, 'Thành phố Hạ Long', 'Thành phố', 22),
(194, 'Thành phố Móng Cái', 'Thành phố', 22),
(195, 'Thành phố Cẩm Phả', 'Thành phố', 22),
(196, 'Thành phố Uông Bí', 'Thành phố', 22),
(198, 'Huyện Bình Liêu', 'Huyện', 22),
(199, 'Huyện Tiên Yên', 'Huyện', 22),
(200, 'Huyện Đầm Hà', 'Huyện', 22),
(201, 'Huyện Hải Hà', 'Huyện', 22),
(202, 'Huyện Ba Chẽ', 'Huyện', 22),
(203, 'Huyện Vân Đồn', 'Huyện', 22),
(204, 'Huyện Hoành Bồ', 'Huyện', 22),
(205, 'Thị xã Đông Triều', 'Thị xã', 22),
(206, 'Thị xã Quảng Yên', 'Thị xã', 22),
(207, 'Huyện Cô Tô', 'Huyện', 22),
(213, 'Thành phố Bắc Giang', 'Thành phố', 24),
(215, 'Huyện Yên Thế', 'Huyện', 24),
(216, 'Huyện Tân Yên', 'Huyện', 24),
(217, 'Huyện Lạng Giang', 'Huyện', 24),
(218, 'Huyện Lục Nam', 'Huyện', 24),
(219, 'Huyện Lục Ngạn', 'Huyện', 24),
(220, 'Huyện Sơn Động', 'Huyện', 24),
(221, 'Huyện Yên Dũng', 'Huyện', 24),
(222, 'Huyện Việt Yên', 'Huyện', 24),
(223, 'Huyện Hiệp Hòa', 'Huyện', 24),
(227, 'Thành phố Việt Trì', 'Thành phố', 25),
(228, 'Thị xã Phú Thọ', 'Thị xã', 25),
(230, 'Huyện Đoan Hùng', 'Huyện', 25),
(231, 'Huyện Hạ Hoà', 'Huyện', 25),
(232, 'Huyện Thanh Ba', 'Huyện', 25),
(233, 'Huyện Phù Ninh', 'Huyện', 25),
(234, 'Huyện Yên Lập', 'Huyện', 25),
(235, 'Huyện Cẩm Khê', 'Huyện', 25),
(236, 'Huyện Tam Nông', 'Huyện', 25),
(237, 'Huyện Lâm Thao', 'Huyện', 25),
(238, 'Huyện Thanh Sơn', 'Huyện', 25),
(239, 'Huyện Thanh Thuỷ', 'Huyện', 25),
(240, 'Huyện Tân Sơn', 'Huyện', 25),
(243, 'Thành phố Vĩnh Yên', 'Thành phố', 26),
(244, 'Thị xã Phúc Yên', 'Thị xã', 26),
(246, 'Huyện Lập Thạch', 'Huyện', 26),
(247, 'Huyện Tam Dương', 'Huyện', 26),
(248, 'Huyện Tam Đảo', 'Huyện', 26),
(249, 'Huyện Bình Xuyên', 'Huyện', 26),
(250, 'Huyện Mê Linh', 'Huyện', 1),
(251, 'Huyện Yên Lạc', 'Huyện', 26),
(252, 'Huyện Vĩnh Tường', 'Huyện', 26),
(253, 'Huyện Sông Lô', 'Huyện', 26),
(256, 'Thành phố Bắc Ninh', 'Thành phố', 27),
(258, 'Huyện Yên Phong', 'Huyện', 27),
(259, 'Huyện Quế Võ', 'Huyện', 27),
(260, 'Huyện Tiên Du', 'Huyện', 27),
(261, 'Thị xã Từ Sơn', 'Thị xã', 27),
(262, 'Huyện Thuận Thành', 'Huyện', 27),
(263, 'Huyện Gia Bình', 'Huyện', 27),
(264, 'Huyện Lương Tài', 'Huyện', 27),
(268, 'Quận Hà Đông', 'Quận', 1),
(269, 'Thị xã Sơn Tây', 'Thị xã', 1),
(271, 'Huyện Ba Vì', 'Huyện', 1),
(272, 'Huyện Phúc Thọ', 'Huyện', 1),
(273, 'Huyện Đan Phượng', 'Huyện', 1),
(274, 'Huyện Hoài Đức', 'Huyện', 1),
(275, 'Huyện Quốc Oai', 'Huyện', 1),
(276, 'Huyện Thạch Thất', 'Huyện', 1),
(277, 'Huyện Chương Mỹ', 'Huyện', 1),
(278, 'Huyện Thanh Oai', 'Huyện', 1),
(279, 'Huyện Thường Tín', 'Huyện', 1),
(280, 'Huyện Phú Xuyên', 'Huyện', 1),
(281, 'Huyện Ứng Hòa', 'Huyện', 1),
(282, 'Huyện Mỹ Đức', 'Huyện', 1),
(288, 'Thành phố Hải Dương', 'Thành phố', 30),
(290, 'Thị xã Chí Linh', 'Thị xã', 30),
(291, 'Huyện Nam Sách', 'Huyện', 30),
(292, 'Huyện Kinh Môn', 'Huyện', 30),
(293, 'Huyện Kim Thành', 'Huyện', 30),
(294, 'Huyện Thanh Hà', 'Huyện', 30),
(295, 'Huyện Cẩm Giàng', 'Huyện', 30),
(296, 'Huyện Bình Giang', 'Huyện', 30),
(297, 'Huyện Gia Lộc', 'Huyện', 30),
(298, 'Huyện Tứ Kỳ', 'Huyện', 30),
(299, 'Huyện Ninh Giang', 'Huyện', 30),
(300, 'Huyện Thanh Miện', 'Huyện', 30),
(303, 'Quận Hồng Bàng', 'Quận', 31),
(304, 'Quận Ngô Quyền', 'Quận', 31),
(305, 'Quận Lê Chân', 'Quận', 31),
(306, 'Quận Hải An', 'Quận', 31),
(307, 'Quận Kiến An', 'Quận', 31),
(308, 'Quận Đồ Sơn', 'Quận', 31),
(309, 'Quận Dương Kinh', 'Quận', 31),
(311, 'Huyện Thuỷ Nguyên', 'Huyện', 31),
(312, 'Huyện An Dương', 'Huyện', 31),
(313, 'Huyện An Lão', 'Huyện', 31),
(314, 'Huyện Kiến Thuỵ', 'Huyện', 31),
(315, 'Huyện Tiên Lãng', 'Huyện', 31),
(316, 'Huyện Vĩnh Bảo', 'Huyện', 31),
(317, 'Huyện Cát Hải', 'Huyện', 31),
(318, 'Huyện Bạch Long Vĩ', 'Huyện', 31),
(323, 'Thành phố Hưng Yên', 'Thành phố', 33),
(325, 'Huyện Văn Lâm', 'Huyện', 33),
(326, 'Huyện Văn Giang', 'Huyện', 33),
(327, 'Huyện Yên Mỹ', 'Huyện', 33),
(328, 'Huyện Mỹ Hào', 'Huyện', 33),
(329, 'Huyện Ân Thi', 'Huyện', 33),
(330, 'Huyện Khoái Châu', 'Huyện', 33),
(331, 'Huyện Kim Động', 'Huyện', 33),
(332, 'Huyện Tiên Lữ', 'Huyện', 33),
(333, 'Huyện Phù Cừ', 'Huyện', 33),
(336, 'Thành phố Thái Bình', 'Thành phố', 34),
(338, 'Huyện Quỳnh Phụ', 'Huyện', 34),
(339, 'Huyện Hưng Hà', 'Huyện', 34),
(340, 'Huyện Đông Hưng', 'Huyện', 34),
(341, 'Huyện Thái Thụy', 'Huyện', 34),
(342, 'Huyện Tiền Hải', 'Huyện', 34),
(343, 'Huyện Kiến Xương', 'Huyện', 34),
(344, 'Huyện Vũ Thư', 'Huyện', 34),
(347, 'Thành phố Phủ Lý', 'Thành phố', 35),
(349, 'Huyện Duy Tiên', 'Huyện', 35),
(350, 'Huyện Kim Bảng', 'Huyện', 35),
(351, 'Huyện Thanh Liêm', 'Huyện', 35),
(352, 'Huyện Bình Lục', 'Huyện', 35),
(353, 'Huyện Lý Nhân', 'Huyện', 35),
(356, 'Thành phố Nam Định', 'Thành phố', 36),
(358, 'Huyện Mỹ Lộc', 'Huyện', 36),
(359, 'Huyện Vụ Bản', 'Huyện', 36),
(360, 'Huyện Ý Yên', 'Huyện', 36),
(361, 'Huyện Nghĩa Hưng', 'Huyện', 36),
(362, 'Huyện Nam Trực', 'Huyện', 36),
(363, 'Huyện Trực Ninh', 'Huyện', 36),
(364, 'Huyện Xuân Trường', 'Huyện', 36),
(365, 'Huyện Giao Thủy', 'Huyện', 36),
(366, 'Huyện Hải Hậu', 'Huyện', 36),
(369, 'Thành phố Ninh Bình', 'Thành phố', 37),
(370, 'Thành phố Tam Điệp', 'Thành phố', 37),
(372, 'Huyện Nho Quan', 'Huyện', 37),
(373, 'Huyện Gia Viễn', 'Huyện', 37),
(374, 'Huyện Hoa Lư', 'Huyện', 37),
(375, 'Huyện Yên Khánh', 'Huyện', 37),
(376, 'Huyện Kim Sơn', 'Huyện', 37),
(377, 'Huyện Yên Mô', 'Huyện', 37),
(380, 'Thành phố Thanh Hóa', 'Thành phố', 38),
(381, 'Thị xã Bỉm Sơn', 'Thị xã', 38),
(382, 'Thị xã Sầm Sơn', 'Thị xã', 38),
(384, 'Huyện Mường Lát', 'Huyện', 38),
(385, 'Huyện Quan Hóa', 'Huyện', 38),
(386, 'Huyện Bá Thước', 'Huyện', 38),
(387, 'Huyện Quan Sơn', 'Huyện', 38),
(388, 'Huyện Lang Chánh', 'Huyện', 38),
(389, 'Huyện Ngọc Lặc', 'Huyện', 38),
(390, 'Huyện Cẩm Thủy', 'Huyện', 38),
(391, 'Huyện Thạch Thành', 'Huyện', 38),
(392, 'Huyện Hà Trung', 'Huyện', 38),
(393, 'Huyện Vĩnh Lộc', 'Huyện', 38),
(394, 'Huyện Yên Định', 'Huyện', 38),
(395, 'Huyện Thọ Xuân', 'Huyện', 38),
(396, 'Huyện Thường Xuân', 'Huyện', 38),
(397, 'Huyện Triệu Sơn', 'Huyện', 38),
(398, 'Huyện Thiệu Hóa', 'Huyện', 38),
(399, 'Huyện Hoằng Hóa', 'Huyện', 38),
(400, 'Huyện Hậu Lộc', 'Huyện', 38),
(401, 'Huyện Nga Sơn', 'Huyện', 38),
(402, 'Huyện Như Xuân', 'Huyện', 38),
(403, 'Huyện Như Thanh', 'Huyện', 38),
(404, 'Huyện Nông Cống', 'Huyện', 38),
(405, 'Huyện Đông Sơn', 'Huyện', 38),
(406, 'Huyện Quảng Xương', 'Huyện', 38),
(407, 'Huyện Tĩnh Gia', 'Huyện', 38),
(412, 'Thành phố Vinh', 'Thành phố', 40),
(413, 'Thị xã Cửa Lò', 'Thị xã', 40),
(414, 'Thị xã Thái Hoà', 'Thị xã', 40),
(415, 'Huyện Quế Phong', 'Huyện', 40),
(416, 'Huyện Quỳ Châu', 'Huyện', 40),
(417, 'Huyện Kỳ Sơn', 'Huyện', 40),
(418, 'Huyện Tương Dương', 'Huyện', 40),
(419, 'Huyện Nghĩa Đàn', 'Huyện', 40),
(420, 'Huyện Quỳ Hợp', 'Huyện', 40),
(421, 'Huyện Quỳnh Lưu', 'Huyện', 40),
(422, 'Huyện Con Cuông', 'Huyện', 40),
(423, 'Huyện Tân Kỳ', 'Huyện', 40),
(424, 'Huyện Anh Sơn', 'Huyện', 40),
(425, 'Huyện Diễn Châu', 'Huyện', 40),
(426, 'Huyện Yên Thành', 'Huyện', 40),
(427, 'Huyện Đô Lương', 'Huyện', 40),
(428, 'Huyện Thanh Chương', 'Huyện', 40),
(429, 'Huyện Nghi Lộc', 'Huyện', 40),
(430, 'Huyện Nam Đàn', 'Huyện', 40),
(431, 'Huyện Hưng Nguyên', 'Huyện', 40),
(432, 'Thị xã Hoàng Mai', 'Thị xã', 40),
(436, 'Thành phố Hà Tĩnh', 'Thành phố', 42),
(437, 'Thị xã Hồng Lĩnh', 'Thị xã', 42),
(439, 'Huyện Hương Sơn', 'Huyện', 42),
(440, 'Huyện Đức Thọ', 'Huyện', 42),
(441, 'Huyện Vũ Quang', 'Huyện', 42),
(442, 'Huyện Nghi Xuân', 'Huyện', 42),
(443, 'Huyện Can Lộc', 'Huyện', 42),
(444, 'Huyện Hương Khê', 'Huyện', 42),
(445, 'Huyện Thạch Hà', 'Huyện', 42),
(446, 'Huyện Cẩm Xuyên', 'Huyện', 42),
(447, 'Huyện Kỳ Anh', 'Huyện', 42),
(448, 'Huyện Lộc Hà', 'Huyện', 42),
(449, 'Thị xã Kỳ Anh', 'Thị xã', 42),
(450, 'Thành Phố Đồng Hới', 'Thành phố', 44),
(452, 'Huyện Minh Hóa', 'Huyện', 44),
(453, 'Huyện Tuyên Hóa', 'Huyện', 44),
(454, 'Huyện Quảng Trạch', 'Thị xã', 44),
(455, 'Huyện Bố Trạch', 'Huyện', 44),
(456, 'Huyện Quảng Ninh', 'Huyện', 44),
(457, 'Huyện Lệ Thủy', 'Huyện', 44),
(458, 'Thị xã Ba Đồn', 'Huyện', 44),
(461, 'Thành phố Đông Hà', 'Thành phố', 45),
(462, 'Thị xã Quảng Trị', 'Thị xã', 45),
(464, 'Huyện Vĩnh Linh', 'Huyện', 45),
(465, 'Huyện Hướng Hóa', 'Huyện', 45),
(466, 'Huyện Gio Linh', 'Huyện', 45),
(467, 'Huyện Đa Krông', 'Huyện', 45),
(468, 'Huyện Cam Lộ', 'Huyện', 45),
(469, 'Huyện Triệu Phong', 'Huyện', 45),
(470, 'Huyện Hải Lăng', 'Huyện', 45),
(471, 'Huyện Cồn Cỏ', 'Huyện', 45),
(474, 'Thành phố Huế', 'Thành phố', 46),
(476, 'Huyện Phong Điền', 'Huyện', 46),
(477, 'Huyện Quảng Điền', 'Huyện', 46),
(478, 'Huyện Phú Vang', 'Huyện', 46),
(479, 'Thị xã Hương Thủy', 'Thị xã', 46),
(480, 'Thị xã Hương Trà', 'Thị xã', 46),
(481, 'Huyện A Lưới', 'Huyện', 46),
(482, 'Huyện Phú Lộc', 'Huyện', 46),
(483, 'Huyện Nam Đông', 'Huyện', 46),
(490, 'Quận Liên Chiểu', 'Quận', 48),
(491, 'Quận Thanh Khê', 'Quận', 48),
(492, 'Quận Hải Châu', 'Quận', 48),
(493, 'Quận Sơn Trà', 'Quận', 48),
(494, 'Quận Ngũ Hành Sơn', 'Quận', 48),
(495, 'Quận Cẩm Lệ', 'Quận', 48),
(497, 'Huyện Hòa Vang', 'Huyện', 48),
(498, 'Huyện Hoàng Sa', 'Huyện', 48),
(502, 'Thành phố Tam Kỳ', 'Thành phố', 49),
(503, 'Thành phố Hội An', 'Thành phố', 49),
(504, 'Huyện Tây Giang', 'Huyện', 49),
(505, 'Huyện Đông Giang', 'Huyện', 49),
(506, 'Huyện Đại Lộc', 'Huyện', 49),
(507, 'Thị xã Điện Bàn', 'Thị xã', 49),
(508, 'Huyện Duy Xuyên', 'Huyện', 49),
(509, 'Huyện Quế Sơn', 'Huyện', 49),
(510, 'Huyện Nam Giang', 'Huyện', 49),
(511, 'Huyện Phước Sơn', 'Huyện', 49),
(512, 'Huyện Hiệp Đức', 'Huyện', 49),
(513, 'Huyện Thăng Bình', 'Huyện', 49),
(514, 'Huyện Tiên Phước', 'Huyện', 49),
(515, 'Huyện Bắc Trà My', 'Huyện', 49),
(516, 'Huyện Nam Trà My', 'Huyện', 49),
(517, 'Huyện Núi Thành', 'Huyện', 49),
(518, 'Huyện Phú Ninh', 'Huyện', 49),
(519, 'Huyện Nông Sơn', 'Huyện', 49),
(522, 'Thành phố Quảng Ngãi', 'Thành phố', 51),
(524, 'Huyện Bình Sơn', 'Huyện', 51),
(525, 'Huyện Trà Bồng', 'Huyện', 51),
(526, 'Huyện Tây Trà', 'Huyện', 51),
(527, 'Huyện Sơn Tịnh', 'Huyện', 51),
(528, 'Huyện Tư Nghĩa', 'Huyện', 51),
(529, 'Huyện Sơn Hà', 'Huyện', 51),
(530, 'Huyện Sơn Tây', 'Huyện', 51),
(531, 'Huyện Minh Long', 'Huyện', 51),
(532, 'Huyện Nghĩa Hành', 'Huyện', 51),
(533, 'Huyện Mộ Đức', 'Huyện', 51),
(534, 'Huyện Đức Phổ', 'Huyện', 51),
(535, 'Huyện Ba Tơ', 'Huyện', 51),
(536, 'Huyện Lý Sơn', 'Huyện', 51),
(540, 'Thành phố Qui Nhơn', 'Thành phố', 52),
(542, 'Huyện An Lão', 'Huyện', 52),
(543, 'Huyện Hoài Nhơn', 'Huyện', 52),
(544, 'Huyện Hoài Ân', 'Huyện', 52),
(545, 'Huyện Phù Mỹ', 'Huyện', 52),
(546, 'Huyện Vĩnh Thạnh', 'Huyện', 52),
(547, 'Huyện Tây Sơn', 'Huyện', 52),
(548, 'Huyện Phù Cát', 'Huyện', 52),
(549, 'Thị xã An Nhơn', 'Thị xã', 52),
(550, 'Huyện Tuy Phước', 'Huyện', 52),
(551, 'Huyện Vân Canh', 'Huyện', 52),
(555, 'Thành phố Tuy Hoà', 'Thành phố', 54),
(557, 'Thị xã Sông Cầu', 'Thị xã', 54),
(558, 'Huyện Đồng Xuân', 'Huyện', 54),
(559, 'Huyện Tuy An', 'Huyện', 54),
(560, 'Huyện Sơn Hòa', 'Huyện', 54),
(561, 'Huyện Sông Hinh', 'Huyện', 54),
(562, 'Huyện Tây Hoà', 'Huyện', 54),
(563, 'Huyện Phú Hoà', 'Huyện', 54),
(564, 'Huyện Đông Hòa', 'Huyện', 54),
(568, 'Thành phố Nha Trang', 'Thành phố', 56),
(569, 'Thành phố Cam Ranh', 'Thành phố', 56),
(570, 'Huyện Cam Lâm', 'Huyện', 56),
(571, 'Huyện Vạn Ninh', 'Huyện', 56),
(572, 'Thị xã Ninh Hòa', 'Thị xã', 56),
(573, 'Huyện Khánh Vĩnh', 'Huyện', 56),
(574, 'Huyện Diên Khánh', 'Huyện', 56),
(575, 'Huyện Khánh Sơn', 'Huyện', 56),
(576, 'Huyện Trường Sa', 'Huyện', 56),
(582, 'Thành phố Phan Rang-Tháp Chàm', 'Thành phố', 58),
(584, 'Huyện Bác Ái', 'Huyện', 58),
(585, 'Huyện Ninh Sơn', 'Huyện', 58),
(586, 'Huyện Ninh Hải', 'Huyện', 58),
(587, 'Huyện Ninh Phước', 'Huyện', 58),
(588, 'Huyện Thuận Bắc', 'Huyện', 58),
(589, 'Huyện Thuận Nam', 'Huyện', 58),
(593, 'Thành phố Phan Thiết', 'Thành phố', 60),
(594, 'Thị xã La Gi', 'Thị xã', 60),
(595, 'Huyện Tuy Phong', 'Huyện', 60),
(596, 'Huyện Bắc Bình', 'Huyện', 60),
(597, 'Huyện Hàm Thuận Bắc', 'Huyện', 60),
(598, 'Huyện Hàm Thuận Nam', 'Huyện', 60),
(599, 'Huyện Tánh Linh', 'Huyện', 60),
(600, 'Huyện Đức Linh', 'Huyện', 60),
(601, 'Huyện Hàm Tân', 'Huyện', 60),
(602, 'Huyện Phú Quí', 'Huyện', 60),
(608, 'Thành phố Kon Tum', 'Thành phố', 62),
(610, 'Huyện Đắk Glei', 'Huyện', 62),
(611, 'Huyện Ngọc Hồi', 'Huyện', 62),
(612, 'Huyện Đắk Tô', 'Huyện', 62),
(613, 'Huyện Kon Plông', 'Huyện', 62),
(614, 'Huyện Kon Rẫy', 'Huyện', 62),
(615, 'Huyện Đắk Hà', 'Huyện', 62),
(616, 'Huyện Sa Thầy', 'Huyện', 62),
(617, 'Huyện Tu Mơ Rông', 'Huyện', 62),
(618, 'Huyện Ia H\' Drai', 'Huyện', 62),
(622, 'Thành phố Pleiku', 'Thành phố', 64),
(623, 'Thị xã An Khê', 'Thị xã', 64),
(624, 'Thị xã Ayun Pa', 'Thị xã', 64),
(625, 'Huyện KBang', 'Huyện', 64),
(626, 'Huyện Đăk Đoa', 'Huyện', 64),
(627, 'Huyện Chư Păh', 'Huyện', 64),
(628, 'Huyện Ia Grai', 'Huyện', 64),
(629, 'Huyện Mang Yang', 'Huyện', 64),
(630, 'Huyện Kông Chro', 'Huyện', 64),
(631, 'Huyện Đức Cơ', 'Huyện', 64),
(632, 'Huyện Chư Prông', 'Huyện', 64),
(633, 'Huyện Chư Sê', 'Huyện', 64),
(634, 'Huyện Đăk Pơ', 'Huyện', 64),
(635, 'Huyện Ia Pa', 'Huyện', 64),
(637, 'Huyện Krông Pa', 'Huyện', 64),
(638, 'Huyện Phú Thiện', 'Huyện', 64),
(639, 'Huyện Chư Pưh', 'Huyện', 64),
(643, 'Thành phố Buôn Ma Thuột', 'Thành phố', 66),
(644, 'Thị Xã Buôn Hồ', 'Thị xã', 66),
(645, 'Huyện Ea H\'leo', 'Huyện', 66),
(646, 'Huyện Ea Súp', 'Huyện', 66),
(647, 'Huyện Buôn Đôn', 'Huyện', 66),
(648, 'Huyện Cư M\'gar', 'Huyện', 66),
(649, 'Huyện Krông Búk', 'Huyện', 66),
(650, 'Huyện Krông Năng', 'Huyện', 66),
(651, 'Huyện Ea Kar', 'Huyện', 66),
(652, 'Huyện M\'Đrắk', 'Huyện', 66),
(653, 'Huyện Krông Bông', 'Huyện', 66),
(654, 'Huyện Krông Pắc', 'Huyện', 66),
(655, 'Huyện Krông A Na', 'Huyện', 66),
(656, 'Huyện Lắk', 'Huyện', 66),
(657, 'Huyện Cư Kuin', 'Huyện', 66),
(660, 'Thị xã Gia Nghĩa', 'Thị xã', 67),
(661, 'Huyện Đăk Glong', 'Huyện', 67),
(662, 'Huyện Cư Jút', 'Huyện', 67),
(663, 'Huyện Đắk Mil', 'Huyện', 67),
(664, 'Huyện Krông Nô', 'Huyện', 67),
(665, 'Huyện Đắk Song', 'Huyện', 67),
(666, 'Huyện Đắk R Lấp', 'Huyện', 67),
(667, 'Huyện Tuy Đức', 'Huyện', 67),
(672, 'Thành phố Đà Lạt', 'Thành phố', 68),
(673, 'Thành phố Bảo Lộc', 'Thành phố', 68),
(674, 'Huyện Đam Rông', 'Huyện', 68),
(675, 'Huyện Lạc Dương', 'Huyện', 68),
(676, 'Huyện Lâm Hà', 'Huyện', 68),
(677, 'Huyện Đơn Dương', 'Huyện', 68),
(678, 'Huyện Đức Trọng', 'Huyện', 68),
(679, 'Huyện Di Linh', 'Huyện', 68),
(680, 'Huyện Bảo Lâm', 'Huyện', 68),
(681, 'Huyện Đạ Huoai', 'Huyện', 68),
(682, 'Huyện Đạ Tẻh', 'Huyện', 68),
(683, 'Huyện Cát Tiên', 'Huyện', 68),
(688, 'Thị xã Phước Long', 'Thị xã', 70),
(689, 'Thị xã Đồng Xoài', 'Thị xã', 70),
(690, 'Thị xã Bình Long', 'Thị xã', 70),
(691, 'Huyện Bù Gia Mập', 'Huyện', 70),
(692, 'Huyện Lộc Ninh', 'Huyện', 70),
(693, 'Huyện Bù Đốp', 'Huyện', 70),
(694, 'Huyện Hớn Quản', 'Huyện', 70),
(695, 'Huyện Đồng Phú', 'Huyện', 70),
(696, 'Huyện Bù Đăng', 'Huyện', 70),
(697, 'Huyện Chơn Thành', 'Huyện', 70),
(698, 'Huyện Phú Riềng', 'Huyện', 70),
(703, 'Thành phố Tây Ninh', 'Thành phố', 72),
(705, 'Huyện Tân Biên', 'Huyện', 72),
(706, 'Huyện Tân Châu', 'Huyện', 72),
(707, 'Huyện Dương Minh Châu', 'Huyện', 72),
(708, 'Huyện Châu Thành', 'Huyện', 72),
(709, 'Huyện Hòa Thành', 'Huyện', 72),
(710, 'Huyện Gò Dầu', 'Huyện', 72),
(711, 'Huyện Bến Cầu', 'Huyện', 72),
(712, 'Huyện Trảng Bàng', 'Huyện', 72),
(718, 'Thành phố Thủ Dầu Một', 'Thành phố', 74),
(719, 'Huyện Bàu Bàng', 'Huyện', 74),
(720, 'Huyện Dầu Tiếng', 'Huyện', 74),
(721, 'Thị xã Bến Cát', 'Thị xã', 74),
(722, 'Huyện Phú Giáo', 'Huyện', 74),
(723, 'Thị xã Tân Uyên', 'Thị xã', 74),
(724, 'Thị xã Dĩ An', 'Thị xã', 74),
(725, 'Thị xã Thuận An', 'Thị xã', 74),
(726, 'Huyện Bắc Tân Uyên', 'Huyện', 74),
(731, 'Thành phố Biên Hòa', 'Thành phố', 75),
(732, 'Thị xã Long Khánh', 'Thị xã', 75),
(734, 'Huyện Tân Phú', 'Huyện', 75),
(735, 'Huyện Vĩnh Cửu', 'Huyện', 75),
(736, 'Huyện Định Quán', 'Huyện', 75),
(737, 'Huyện Trảng Bom', 'Huyện', 75),
(738, 'Huyện Thống Nhất', 'Huyện', 75),
(739, 'Huyện Cẩm Mỹ', 'Huyện', 75),
(740, 'Huyện Long Thành', 'Huyện', 75),
(741, 'Huyện Xuân Lộc', 'Huyện', 75),
(742, 'Huyện Nhơn Trạch', 'Huyện', 75),
(747, 'Thành phố Vũng Tàu', 'Thành phố', 77),
(748, 'Thành phố Bà Rịa', 'Thành phố', 77),
(750, 'Huyện Châu Đức', 'Huyện', 77),
(751, 'Huyện Xuyên Mộc', 'Huyện', 77),
(752, 'Huyện Long Điền', 'Huyện', 77),
(753, 'Huyện Đất Đỏ', 'Huyện', 77),
(754, 'Huyện Tân Thành', 'Huyện', 77),
(755, 'Huyện Côn Đảo', 'Huyện', 77),
(760, 'Quận 1', 'Quận', 79),
(761, 'Quận 12', 'Quận', 79),
(762, 'Quận Thủ Đức', 'Quận', 79),
(763, 'Quận 9', 'Quận', 79),
(764, 'Quận Gò Vấp', 'Quận', 79),
(765, 'Quận Bình Thạnh', 'Quận', 79),
(766, 'Quận Tân Bình', 'Quận', 79),
(767, 'Quận Tân Phú', 'Quận', 79),
(768, 'Quận Phú Nhuận', 'Quận', 79),
(769, 'Quận 2', 'Quận', 79),
(770, 'Quận 3', 'Quận', 79),
(771, 'Quận 10', 'Quận', 79),
(772, 'Quận 11', 'Quận', 79),
(773, 'Quận 4', 'Quận', 79),
(774, 'Quận 5', 'Quận', 79),
(775, 'Quận 6', 'Quận', 79),
(776, 'Quận 8', 'Quận', 79),
(777, 'Quận Bình Tân', 'Quận', 79),
(778, 'Quận 7', 'Quận', 79),
(783, 'Huyện Củ Chi', 'Huyện', 79),
(784, 'Huyện Hóc Môn', 'Huyện', 79),
(785, 'Huyện Bình Chánh', 'Huyện', 79),
(786, 'Huyện Nhà Bè', 'Huyện', 79),
(787, 'Huyện Cần Giờ', 'Huyện', 79),
(794, 'Thành phố Tân An', 'Thành phố', 80),
(795, 'Thị xã Kiến Tường', 'Thị xã', 80),
(796, 'Huyện Tân Hưng', 'Huyện', 80),
(797, 'Huyện Vĩnh Hưng', 'Huyện', 80),
(798, 'Huyện Mộc Hóa', 'Huyện', 80),
(799, 'Huyện Tân Thạnh', 'Huyện', 80),
(800, 'Huyện Thạnh Hóa', 'Huyện', 80),
(801, 'Huyện Đức Huệ', 'Huyện', 80),
(802, 'Huyện Đức Hòa', 'Huyện', 80),
(803, 'Huyện Bến Lức', 'Huyện', 80),
(804, 'Huyện Thủ Thừa', 'Huyện', 80),
(805, 'Huyện Tân Trụ', 'Huyện', 80),
(806, 'Huyện Cần Đước', 'Huyện', 80),
(807, 'Huyện Cần Giuộc', 'Huyện', 80),
(808, 'Huyện Châu Thành', 'Huyện', 80),
(815, 'Thành phố Mỹ Tho', 'Thành phố', 82),
(816, 'Thị xã Gò Công', 'Thị xã', 82),
(817, 'Thị xã Cai Lậy', 'Huyện', 82),
(818, 'Huyện Tân Phước', 'Huyện', 82),
(819, 'Huyện Cái Bè', 'Huyện', 82),
(820, 'Huyện Cai Lậy', 'Thị xã', 82),
(821, 'Huyện Châu Thành', 'Huyện', 82),
(822, 'Huyện Chợ Gạo', 'Huyện', 82),
(823, 'Huyện Gò Công Tây', 'Huyện', 82),
(824, 'Huyện Gò Công Đông', 'Huyện', 82),
(825, 'Huyện Tân Phú Đông', 'Huyện', 82),
(829, 'Thành phố Bến Tre', 'Thành phố', 83),
(831, 'Huyện Châu Thành', 'Huyện', 83),
(832, 'Huyện Chợ Lách', 'Huyện', 83),
(833, 'Huyện Mỏ Cày Nam', 'Huyện', 83),
(834, 'Huyện Giồng Trôm', 'Huyện', 83),
(835, 'Huyện Bình Đại', 'Huyện', 83),
(836, 'Huyện Ba Tri', 'Huyện', 83),
(837, 'Huyện Thạnh Phú', 'Huyện', 83),
(838, 'Huyện Mỏ Cày Bắc', 'Huyện', 83),
(842, 'Thành phố Trà Vinh', 'Thành phố', 84),
(844, 'Huyện Càng Long', 'Huyện', 84),
(845, 'Huyện Cầu Kè', 'Huyện', 84),
(846, 'Huyện Tiểu Cần', 'Huyện', 84),
(847, 'Huyện Châu Thành', 'Huyện', 84),
(848, 'Huyện Cầu Ngang', 'Huyện', 84),
(849, 'Huyện Trà Cú', 'Huyện', 84),
(850, 'Huyện Duyên Hải', 'Huyện', 84),
(851, 'Thị xã Duyên Hải', 'Thị xã', 84),
(855, 'Thành phố Vĩnh Long', 'Thành phố', 86),
(857, 'Huyện Long Hồ', 'Huyện', 86),
(858, 'Huyện Mang Thít', 'Huyện', 86),
(859, 'Huyện  Vũng Liêm', 'Huyện', 86),
(860, 'Huyện Tam Bình', 'Huyện', 86),
(861, 'Thị xã Bình Minh', 'Thị xã', 86),
(862, 'Huyện Trà Ôn', 'Huyện', 86),
(863, 'Huyện Bình Tân', 'Huyện', 86),
(866, 'Thành phố Cao Lãnh', 'Thành phố', 87),
(867, 'Thành phố Sa Đéc', 'Thành phố', 87),
(868, 'Thị xã Hồng Ngự', 'Thị xã', 87),
(869, 'Huyện Tân Hồng', 'Huyện', 87),
(870, 'Huyện Hồng Ngự', 'Huyện', 87),
(871, 'Huyện Tam Nông', 'Huyện', 87),
(872, 'Huyện Tháp Mười', 'Huyện', 87),
(873, 'Huyện Cao Lãnh', 'Huyện', 87),
(874, 'Huyện Thanh Bình', 'Huyện', 87),
(875, 'Huyện Lấp Vò', 'Huyện', 87),
(876, 'Huyện Lai Vung', 'Huyện', 87),
(877, 'Huyện Châu Thành', 'Huyện', 87),
(883, 'Thành phố Long Xuyên', 'Thành phố', 89),
(884, 'Thành phố Châu Đốc', 'Thành phố', 89),
(886, 'Huyện An Phú', 'Huyện', 89),
(887, 'Thị xã Tân Châu', 'Thị xã', 89),
(888, 'Huyện Phú Tân', 'Huyện', 89),
(889, 'Huyện Châu Phú', 'Huyện', 89),
(890, 'Huyện Tịnh Biên', 'Huyện', 89),
(891, 'Huyện Tri Tôn', 'Huyện', 89),
(892, 'Huyện Châu Thành', 'Huyện', 89),
(893, 'Huyện Chợ Mới', 'Huyện', 89),
(894, 'Huyện Thoại Sơn', 'Huyện', 89),
(899, 'Thành phố Rạch Giá', 'Thành phố', 91),
(900, 'Thị xã Hà Tiên', 'Thị xã', 91),
(902, 'Huyện Kiên Lương', 'Huyện', 91),
(903, 'Huyện Hòn Đất', 'Huyện', 91),
(904, 'Huyện Tân Hiệp', 'Huyện', 91),
(905, 'Huyện Châu Thành', 'Huyện', 91),
(906, 'Huyện Giồng Riềng', 'Huyện', 91),
(907, 'Huyện Gò Quao', 'Huyện', 91),
(908, 'Huyện An Biên', 'Huyện', 91),
(909, 'Huyện An Minh', 'Huyện', 91),
(910, 'Huyện Vĩnh Thuận', 'Huyện', 91),
(911, 'Huyện Phú Quốc', 'Huyện', 91),
(912, 'Huyện Kiên Hải', 'Huyện', 91),
(913, 'Huyện U Minh Thượng', 'Huyện', 91),
(914, 'Huyện Giang Thành', 'Huyện', 91),
(916, 'Quận Ninh Kiều', 'Quận', 92),
(917, 'Quận Ô Môn', 'Quận', 92),
(918, 'Quận Bình Thuỷ', 'Quận', 92),
(919, 'Quận Cái Răng', 'Quận', 92),
(923, 'Quận Thốt Nốt', 'Quận', 92),
(924, 'Huyện Vĩnh Thạnh', 'Huyện', 92),
(925, 'Huyện Cờ Đỏ', 'Huyện', 92),
(926, 'Huyện Phong Điền', 'Huyện', 92),
(927, 'Huyện Thới Lai', 'Huyện', 92),
(930, 'Thành phố Vị Thanh', 'Thành phố', 93),
(931, 'Thị xã Ngã Bảy', 'Thị xã', 93),
(932, 'Huyện Châu Thành A', 'Huyện', 93),
(933, 'Huyện Châu Thành', 'Huyện', 93),
(934, 'Huyện Phụng Hiệp', 'Huyện', 93),
(935, 'Huyện Vị Thuỷ', 'Huyện', 93),
(936, 'Huyện Long Mỹ', 'Huyện', 93),
(937, 'Thị xã Long Mỹ', 'Thị xã', 93),
(941, 'Thành phố Sóc Trăng', 'Thành phố', 94),
(942, 'Huyện Châu Thành', 'Huyện', 94),
(943, 'Huyện Kế Sách', 'Huyện', 94),
(944, 'Huyện Mỹ Tú', 'Huyện', 94),
(945, 'Huyện Cù Lao Dung', 'Huyện', 94),
(946, 'Huyện Long Phú', 'Huyện', 94),
(947, 'Huyện Mỹ Xuyên', 'Huyện', 94),
(948, 'Thị xã Ngã Năm', 'Thị xã', 94),
(949, 'Huyện Thạnh Trị', 'Huyện', 94),
(950, 'Thị xã Vĩnh Châu', 'Thị xã', 94),
(951, 'Huyện Trần Đề', 'Huyện', 94),
(954, 'Thành phố Bạc Liêu', 'Thành phố', 95),
(956, 'Huyện Hồng Dân', 'Huyện', 95),
(957, 'Huyện Phước Long', 'Huyện', 95),
(958, 'Huyện Vĩnh Lợi', 'Huyện', 95),
(959, 'Thị xã Giá Rai', 'Thị xã', 95),
(960, 'Huyện Đông Hải', 'Huyện', 95),
(961, 'Huyện Hoà Bình', 'Huyện', 95),
(964, 'Thành phố Cà Mau', 'Thành phố', 96),
(966, 'Huyện U Minh', 'Huyện', 96),
(967, 'Huyện Thới Bình', 'Huyện', 96),
(968, 'Huyện Trần Văn Thời', 'Huyện', 96),
(969, 'Huyện Cái Nước', 'Huyện', 96),
(970, 'Huyện Đầm Dơi', 'Huyện', 96),
(971, 'Huyện Năm Căn', 'Huyện', 96),
(972, 'Huyện Phú Tân', 'Huyện', 96),
(973, 'Huyện Ngọc Hiển', 'Huyện', 96);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_order`
--

CREATE TABLE `db_order` (
  `id` int(11) NOT NULL,
  `orderCode` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `customerid` int(11) NOT NULL,
  `orderdate` datetime NOT NULL,
  `fullname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `money` int(12) NOT NULL,
  `price_ship` int(11) NOT NULL,
  `coupon` int(11) NOT NULL,
  `province` int(5) NOT NULL,
  `district` int(5) NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `trash` int(1) NOT NULL DEFAULT 1,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_order`
--

INSERT INTO `db_order` (`id`, `orderCode`, `customerid`, `orderdate`, `fullname`, `phone`, `money`, `price_ship`, `coupon`, `province`, `district`, `address`, `trash`, `status`) VALUES
(7, '9Xa0wWsx', 39, '2020-10-06 22:10:25', 'Ngô Văn Hiệp test', '981643651', 73190000, 30000, 0, 79, 761, 'Lê đức thọ', 0, 2),
(8, 'kBbR02fq', 2, '2020-10-06 22:10:25', 'Ngô Văn Hiệp', '0981643651', 22520000, 30000, 0, 60, 597, 'so nha 23', 0, 3),
(9, 'ynPqQjPX', 9, '2020-10-06 22:10:25', 'Ngô Văn Hiệp', '0981643651', 30610000, 30000, 0, 74, 721, 'so nha 23', 0, 4),
(10, '9PKJZdES', 9, '2019-06-14 00:17:31', 'Ngô Văn Hiệp', '981643651', 68280000, 30000, 0, 79, 764, 'Hẻm 493, Lê đức thọ, Phường 16', 0, 4),
(42, 'ONyIhUsT', 2, '2020-10-06 22:10:25', 'Hiệp gà', '0981643651', 29600000, 30000, 0, 70, 696, 'ss', 0, 3),
(43, '5OV82vwX', 39, '2020-10-06 22:10:25', 'Bảo bự', '0932323252', 20030000, 30000, 0, 79, 770, '30, Nam kỳ khởi nghĩa', 0, 4),
(44, 'A3M9aBsQ', 2, '2020-10-06 22:10:25', 'Hiệp gà', '0981643651', 80510000, 30000, 0, 79, 760, '33, Hàm nghi', 0, 4),
(45, 'Q3KRv23X', 2, '2020-10-06 22:10:25', 'Hiệp gà', '0981643651', 34610000, 30000, 0, 79, 760, '33, Hàm nghi', 0, 3),
(46, 'YCuxWwS8', 2, '2020-10-06 22:10:25', 'Hiệp gà', '0981643651', 39710000, 30000, 0, 79, 761, '11A, Quốc lô 1A, Ngã tư ga', 0, 2),
(47, 'qpzSKH6S', 2, '2020-10-06 22:10:25', 'Hiệp gà', '0981643651', 20530000, 30000, 0, 79, 761, '', 0, 2),
(48, '3pBolrH7', 2, '2020-10-06 22:10:25', 'Hiệp gà', '0981643651', 20180000, 30000, 0, 79, 771, '', 0, 3),
(49, 'DNZ9O0v4', 2, '2020-10-06 22:10:25', 'Hiệp gà', '0981643651', 134570000, 30000, 0, 52, 543, 'ddd', 0, 4),
(50, 'B9pS7vS9', 46, '2020-10-06 22:10:25', 'Dương Minh Trí', '0908030405', 33800000, 30000, 0, 79, 778, '90, Nguyễn Thị Thấp, Phuong Tân Thuận', 0, 4),
(51, '2PaYlRw0', 47, '2020-10-06 22:10:25', 'Trần Thanh Tuy', '090305146', 17500000, 30000, 0, 96, 969, '11, Nguyễn Trãi', 0, 2),
(52, 'iLsZ3OSp', 2, '2020-10-06 22:10:25', 'Hiệp gà', '0981643651', 49630000, 30000, 100000, 79, 760, '33, Võ thị sáu, phường Bến nghé', 0, 3),
(53, 'ZRpyN4s4', 2, '2019-06-24 22:50:43', 'Hiệp gà', '0981643651', 11920000, 30000, 100000, 31, 311, '11, Lê Duẩn, p11', 0, 4),
(54, 'ynJiNdW6', 48, '2020-10-06 22:10:25', 'Xuân Thịnh', '090640316', 15330000, 30000, 100000, 79, 765, '11, Điện Biên Phủ, p 11', 0, 4),
(55, 'rGAmiC25', 49, '2020-10-06 22:10:25', 'Minh Sang', '0913164136', 22230000, 30000, 100000, 79, 773, 'Số 33, Hẻm 337, Nguyễn Tất Thành, p10', 0, 2),
(56, 'DVpI5Z2S', 50, '2020-10-06 22:10:25', 'Hoàng Dũng', '096323646', 52410000, 30000, 100000, 79, 764, '11, Phan Huy Ích, p4', 0, 4),
(57, 'qWuGMFF4', 2, '2020-10-06 22:10:25', 'Hiệp gà', '0981643651', 860000, 30000, 100000, 79, 760, '11, Hàm Nghi, p14', 0, 2),
(58, 'Ys1tyS43', 9, '2020-10-06 22:10:25', 'Nguyễn Đức Lương', '090932323', 19430000, 30000, 100000, 79, 761, '11, Hà Huy Giáp, p Thành Lộc', 0, 4),
(59, 'ZtQ6Lo3D', 9, '2020-10-06 22:10:25', 'Nguyễn Đức Lương', '090932323', 15920000, 30000, 100000, 79, 760, '11, Lý Tự Trọng, P Bến Thành', 0, 4),
(60, 'BrDHRuS3', 9, '2020-10-06 22:10:25', 'Nguyễn Đức Lương', '090932323', 18930000, 30000, 0, 60, 595, '', 0, 4),
(61, 'J2DcgBS5', 9, '2020-10-06 22:10:25', 'Nguyễn Đức Lương', '090932323', 18930000, 30000, 0, 96, 972, '', 0, 4),
(62, 'UbFtpe2E', 9, '2020-10-06 22:10:25', 'Nguyễn Đức Lương', '090932323', 14830000, 30000, 100000, 92, 926, 'EEFEF', 0, 4),
(63, 'L5M40Dle', 9, '2020-10-06 22:10:25', 'Nguyễn Đức Lương', '090932323', 15870000, 30000, 150000, 79, 778, '11, Nguyễn Thị Thập, p Tân Thuận', 0, 4),
(64, 'B17rt3S6', 51, '2020-10-06 22:10:25', 'Nguyễn Văn Trường', '0357646765', 29730000, 30000, 200000, 48, 497, '30a, Phạm Văn Chiêu', 0, 4),
(65, 'p7fMeu3n', 2, '2020-10-06 22:10:25', 'Hiệp Ngô', '076613166', 16820000, 30000, 0, 79, 778, 'efef', 0, 2),
(66, '8yXWhO11', 53, '2020-10-06 22:10:25', 'Thanh Sơn', '0903121564', 15330000, 30000, 100000, 79, 760, '46, Lê Lơi, Bến Thành', 0, 4),
(67, '6lVn7Bim', 54, '2020-10-06 22:10:25', 'Thành', '033564616', 51830000, 30000, 0, 79, 760, '33, Đường số 14', 0, 4),
(68, 'qxDgoJvp', 2, '2020-10-06 22:10:25', 'Hiệp gà', '0981643651', 23010000, 30000, 0, 79, 761, '33A/11, Đường Hà Huy Giáp', 0, 4),
(69, 'voGyL6jS', 55, '2020-10-06 22:10:25', 'Lương 21', '03056451', 11720000, 30000, 200000, 79, 760, '33, Huỳnh Thúc Khàng, P Bến Thành', 0, 4),
(70, 'IOM5jzdT', 9, '2020-10-06 22:10:25', 'Nguyễn Đức Lương', '090932323', 48000000, 30000, 0, 79, 778, 'Hẻm 253, Trần Xuân Soạn, Tân Thuận', 0, 4),
(71, 'bTRYE81q', 56, '2020-10-06 22:10:25', 'Tuấn Anh', '0305464844', 22810000, 30000, 200000, 79, 760, '44, Lê Lai, P Bến Thành', 0, 4),
(72, 'MlzJ2HV5', 2, '2020-10-06 22:10:25', 'Hiệp gà', '0981643651', 31780000, 30000, 200000, 79, 768, '27, Đào Duy Anh', 0, 3),
(73, '5LZxClVb', 2, '2020-10-06 22:10:25', 'Hiệp gà', '0981643651', 30830000, 30000, 0, 95, 957, 'wded', 0, 4),
(74, 'q1sHScIN', 57, '2020-10-06 22:10:25', 'Tiến Đạt', '032133234', 12730000, 30000, 0, 79, 775, '33, Nguyễn Hữa Cảnh', 0, 4),
(75, '3x4iJyP1', 66, '2020-10-06 22:10:25', 'Hiệp 2019', '0306444854', 7360000, 30000, 100000, 79, 778, '33, Nguyễn Thị Thập', 0, 4),
(76, 'lbnTky4Z', 67, '2020-10-05 16:48:01', 'Đặng Hưn', '0964689432', 16530000, 30000, 0, 48, 494, 'DD', 0, 2),
(77, 'B6HOqGwl', 68, '2020-10-06 16:15:10', 'Đặng Hưng', '0964689430', 180000, 30000, 0, 48, 498, 's', 0, 4),
(78, 'XLAF9hSW', 68, '2020-10-06 16:16:43', 'Đặng Hưng', '0964689430', 84000, 30000, 0, 96, 968, 's', 0, 4),
(79, 'dzgWi4My', 70, '2020-10-06 16:31:37', 'Đặng Hưng', '0964689439', 180000, 30000, 0, 48, 498, 'sssssssssssss', 0, 4),
(80, 'bo4LlRvU', 70, '2020-10-06 16:33:08', 'Đặng Hưng', '0964689439', 84000, 30000, 0, 70, 698, 'hiih', 0, 4),
(81, 'N2hJgnie', 70, '2020-10-06 16:51:29', 'Đặng Hưng', '0964689439', 138000, 30000, 0, 48, 498, 'sssssssssssss', 0, 2),
(82, '9Ezg0rmG', 70, '2020-10-06 17:00:47', 'Đặng Hưng', '0964689439', 180000, 30000, 0, 48, 498, 's', 0, 2),
(83, '5xSH8kD9', 70, '2020-10-06 17:24:23', 'Đặng Hưng', '0964689439', 180000, 30000, 0, 92, 925, 'hihi', 0, 3),
(84, '0ZxwUEkS', 70, '2020-10-06 17:43:55', 'Đặng Hưng', '0964689439', 170000, 30000, 0, 48, 493, 's', 0, 3),
(85, 'M2NBslKA', 70, '2020-10-06 17:46:28', 'Đặng Hưng', '0964689439', 240000, 30000, 0, 48, 498, 's', 0, 3),
(86, 'GwzSg0he', 70, '2020-10-06 17:49:50', 'Đặng Hưng', '0964689439', 170000, 30000, 0, 77, 755, 'Nguyễn Văn Thoại', 0, 3),
(87, 'TBXWnRJ3', 70, '2020-10-07 07:55:03', 'Đặng Hưng', '0964689439', 84000, 30000, 0, 79, 776, 'hiih', 0, 3),
(88, 'nqAbZ3N7', 70, '2020-10-07 08:17:44', 'Đặng Hưng', '0964689439', 180000, 30000, 0, 66, 643, 'Nguyễn Văn Thoại', 0, 3),
(89, 'hrUmsi1w', 70, '2020-10-07 10:08:40', 'Đặng Hưng', '0964689439', 150000, 30000, 0, 67, 662, 'hihi', 0, 3),
(90, 'sG6jnrFA', 70, '2020-10-07 16:34:48', 'Đặng Hưng', '0964689439', 324000, 30000, 0, 48, 493, '99 Tô Hiến Thành', 0, 3),
(91, 'VajEbtFc', 70, '2020-10-07 17:27:45', 'Đặng Hưng', '0964689439', 180000, 30000, 0, 92, 926, 'hihi', 0, 3),
(92, 'jzrOFt0I', 70, '2020-10-08 14:33:49', 'Đặng Hưng', '0964689439', 84000, 30000, 0, 1, 271, 'h', 0, 2),
(93, 'FStdYl6C', 70, '2020-10-08 14:34:59', 'Đặng Hưng', '0964689439', 84000, 30000, 0, 92, 925, 's', 0, 2),
(94, 'E0KS52dF', 70, '2020-10-08 14:36:03', 'Đặng Hưng', '0964689439', 300000, 30000, 0, 4, 46, 'h', 0, 2),
(95, 'L4Rg018Z', 70, '2020-10-10 21:00:04', 'Đặng Hưng', '0964689439', 90000, 30000, 0, 48, 493, '99 Tô Hiến Thành', 0, 2),
(96, 'lZbtFAQU', 70, '2020-10-10 21:11:47', 'Đặng Hưng', '0964689439', 180000, 30000, 0, 46, 474, 'Nguyễn Văn Thoại', 0, 2),
(97, 'IkOiBend', 73, '2021-01-19 11:13:46', 'Organic ', '0965686655', 180000, 30000, 0, 48, 490, 'Ngo Gia Tu', 0, 3),
(98, '2i9opZyR', 73, '2021-01-19 15:07:43', 'Organic ', '0965686655', 1890000, 30000, 0, 48, 495, 'Ngo Gia Tu', 0, 2),
(99, 'aghto57p', 73, '2021-01-19 16:30:08', 'Organic ', '0965686655', 90000, 30000, 0, 48, 497, 'Ngo Gia Tu', 0, 2),
(100, 'joBvbUC0', 73, '2021-01-19 16:43:17', 'Organic ', '0965686655', 17030000, 30000, 0, 48, 492, 'Ngo Gia Tu', 0, 4),
(101, 'fwqkV08p', 75, '2021-01-21 17:29:27', 'HUng', '0952645555', 130000, 30000, 0, 66, 650, 's', 0, 2),
(102, 'VzStRH9P', 76, '2021-01-21 17:32:42', 'HUng', '0952645555', 60030000, 30000, 0, 66, 656, 's', 0, 2),
(103, '3tEnmBdK', 81, '2021-05-24 08:24:43', 'NguyenAnKhang', '0326196078', 505000, 30000, 0, 92, 925, 'ad', 1, 1),
(104, 'nC3sk70S', 81, '2021-05-24 09:07:34', 'NguyenAnKhang', '0326196078', 3480000, 30000, 0, 92, 925, 'tp cAO LANH ', 1, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_orderdetail`
--

CREATE TABLE `db_orderdetail` (
  `id` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `count` int(10) NOT NULL,
  `price` int(11) NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_orderdetail`
--

INSERT INTO `db_orderdetail` (`id`, `orderid`, `productid`, `count`, `price`, `trash`, `status`) VALUES
(7, 7, 1, 4, 18290000, 1, 1),
(8, 8, 1, 3, 18290000, 1, 1),
(9, 9, 1, 3, 18290000, 1, 1),
(10, 10, 1, 3, 18290000, 1, 1),
(50, 42, 20, 1, 16790000, 1, 1),
(51, 42, 5, 2, 6390000, 1, 1),
(52, 43, 2, 1, 20000000, 1, 1),
(53, 44, 25, 3, 18900000, 1, 1),
(54, 44, 19, 2, 11890000, 1, 1),
(55, 45, 20, 2, 16790000, 1, 1),
(56, 45, 22, 4, 250000, 1, 1),
(57, 46, 23, 2, 19500000, 1, 1),
(58, 46, 11, 2, 340000, 1, 1),
(59, 47, 23, 1, 19500000, 1, 1),
(60, 47, 22, 4, 250000, 1, 1),
(61, 48, 25, 1, 18900000, 1, 1),
(62, 48, 22, 5, 250000, 1, 1),
(63, 49, 20, 6, 16790000, 1, 1),
(64, 49, 25, 1, 18900000, 1, 1),
(65, 49, 24, 1, 14900000, 1, 1),
(66, 50, 20, 1, 16790000, 1, 1),
(67, 50, 12, 2, 8490000, 1, 1),
(68, 51, 20, 1, 16790000, 1, 1),
(69, 51, 11, 3, 340000, 1, 1),
(70, 52, 28, 2, 15400000, 1, 1),
(71, 52, 25, 1, 18900000, 1, 1),
(72, 53, 13, 1, 11990000, 1, 1),
(73, 54, 28, 1, 15400000, 1, 1),
(74, 55, 25, 1, 18900000, 1, 1),
(75, 55, 11, 10, 340000, 1, 1),
(76, 56, 25, 1, 18900000, 1, 1),
(77, 56, 20, 2, 16790000, 1, 1),
(78, 57, 22, 1, 250000, 1, 1),
(79, 57, 11, 2, 340000, 1, 1),
(80, 58, 23, 1, 19500000, 1, 1),
(81, 59, 9, 1, 15990000, 1, 1),
(82, 60, 25, 1, 18900000, 1, 1),
(83, 61, 25, 1, 18900000, 1, 1),
(84, 62, 24, 1, 14900000, 1, 1),
(85, 63, 9, 1, 15990000, 1, 1),
(86, 64, 16, 1, 29900000, 1, 1),
(87, 65, 20, 1, 16790000, 1, 1),
(88, 66, 28, 1, 15400000, 1, 1),
(89, 67, 7, 1, 21900000, 1, 1),
(90, 67, 16, 1, 29900000, 1, 1),
(91, 68, 15, 2, 11490000, 1, 1),
(92, 69, 19, 1, 11890000, 1, 1),
(93, 70, 9, 3, 15990000, 1, 1),
(94, 71, 15, 2, 11490000, 1, 1),
(95, 72, 5, 5, 6390000, 1, 1),
(96, 73, 28, 2, 15400000, 1, 1),
(97, 74, 27, 1, 12700000, 1, 1),
(98, 75, 22, 1, 250000, 1, 1),
(99, 75, 14, 1, 790000, 1, 1),
(100, 75, 5, 1, 6390000, 1, 1),
(101, 76, 34, 1, 16500000, 1, 1),
(102, 77, 37, 1, 150000, 1, 1),
(103, 78, 40, 1, 54000, 1, 1),
(104, 79, 39, 1, 150000, 1, 1),
(105, 80, 40, 1, 54000, 1, 1),
(106, 81, 40, 2, 54000, 1, 1),
(107, 82, 39, 1, 150000, 1, 1),
(108, 83, 39, 1, 150000, 1, 1),
(109, 84, 36, 2, 70000, 1, 1),
(110, 85, 36, 3, 70000, 1, 1),
(111, 86, 31, 1, 140000, 1, 1),
(112, 87, 40, 1, 54000, 1, 1),
(113, 88, 39, 1, 150000, 1, 1),
(114, 89, 38, 1, 120000, 1, 1),
(115, 90, 40, 1, 54000, 1, 1),
(116, 90, 38, 2, 120000, 1, 1),
(117, 91, 39, 1, 150000, 1, 1),
(118, 92, 40, 1, 54000, 1, 1),
(119, 93, 40, 1, 54000, 1, 1),
(120, 94, 32, 1, 270000, 1, 1),
(121, 95, 50, 1, 60000, 1, 1),
(122, 96, 39, 1, 150000, 1, 1),
(123, 97, 39, 1, 150000, 1, 1),
(124, 98, 30, 1, 1860000, 1, 1),
(125, 99, 50, 1, 60000, 1, 1),
(126, 100, 43, 100, 170000, 1, 1),
(127, 101, 51, 1, 100000, 1, 1),
(128, 102, 51, 600, 100000, 1, 1),
(129, 103, 80, 1, 475000, 1, 1),
(130, 104, 70, 3, 1150000, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_producer`
--

CREATE TABLE `db_producer` (
  `id` int(10) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `trash` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_producer`
--

INSERT INTO `db_producer` (`id`, `name`, `code`, `keyword`, `created_at`, `created_by`, `modified`, `modified_by`, `status`, `trash`) VALUES
(1, 'Nhà cung cấp Gucci', 'Gucci', 'Gucci', '2019-05-22 16:08:31', 4, '2021-05-12 12:04:03', 1, 1, 1),
(2, 'Nhà cung cấp Adidas', 'Adidas', 'Adidas', '2019-06-12 23:30:37', 1, '2021-05-12 10:25:36', 1, 1, 1),
(3, 'Nhà cung cấp Nike', 'Nike', 'Nike', '2019-05-22 16:06:31', 4, '2021-05-12 10:25:57', 1, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_product`
--

CREATE TABLE `db_product` (
  `id` int(11) NOT NULL,
  `catid` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sortDesc` text COLLATE utf8_unicode_ci NOT NULL,
  `detail` text COLLATE utf8_unicode_ci NOT NULL,
  `producer` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `number_buy` int(11) NOT NULL,
  `sale` int(3) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `price_sale` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `created_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'HDL',
  `modified` datetime NOT NULL,
  `modified_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'HDL',
  `trash` int(1) NOT NULL DEFAULT 1,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_product`
--

INSERT INTO `db_product` (`id`, `catid`, `name`, `alias`, `avatar`, `img`, `sortDesc`, `detail`, `producer`, `number`, `number_buy`, `sale`, `price`, `price_sale`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `status`) VALUES
(1, 2, 'Samsung Galaxy S10+ (Plus) Green', 'samsung-galaxy-s10-plus-green', '5df5496a8fb411fd207b39eae9802655.jpg', '5a6fb8ec2db3063e1e241a3e75d4e3ee.png', 'Samsung Galaxy S10 Plus Green chính hãng, nhiều ưu đãi khi đặt trước', '<h3><strong>Thiết kế thi&ecirc;n hướng&nbsp;<a href=\"https://cellphones.com.vn/samsung-galaxy-note-9-chinh-hang.html\" target=\"_blank\">Note 9</a>, kiểu m&agrave;n h&igrave;nh Infinity-O độc đ&aacute;o</strong></h3>\r\n\r\n<p>B&agrave;i to&aacute;n về hiển thị full m&agrave;n h&igrave;nh đ&atilde; được Samsung ho&agrave;n th&agrave;nh xuất sắc tr&ecirc;n Samsung Galaxy S10 Plus. Với thiết kế Infinity-O, m&agrave;n h&igrave;nh 6.4 inch tr&ecirc;n Galaxy S10 Plus đ&atilde; gần như chiếm trọn bộ mặt trước, với viền tr&ecirc;n v&agrave; cằm ở dưới rất mỏng. Tai thỏ, cũng như phần viền d&agrave;y đ&atilde; biến mất, thay v&agrave;o đ&oacute; l&agrave; một &lsquo;nốt ruồi&rsquo; chứa 2 camera selfie nằm ở g&oacute;c phải m&agrave;n h&igrave;nh.</p>\r\n\r\n<p>Phần nốt ruồi n&agrave;y được Samsung thiết kế rất tỉ mỉ, gọn g&agrave;ng, kh&ocirc;ng g&acirc;y qu&aacute; nhiều sự ch&uacute; &yacute;. B&ecirc;n cạnh đ&oacute;, nh&agrave; sản xuất H&agrave;n Quốc cũng kỹ lưỡng c&agrave;i đặt sẵn tr&ecirc;n m&aacute;y những h&igrave;nh nền mặc định &lsquo;tối dần&rsquo; về ph&iacute;a g&oacute;c tr&aacute;i, nhằm gi&uacute;p thiết kế tr&ocirc;ng liền lạc hơn.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/samsung/Samsung-galaxy-s10-plus-chinh-hang-2.jpg.jpg\" style=\"height:525px; width:840px\" /></p>\r\n\r\n<h2><strong><a href=\"https://cellphones.com.vn/samsung-galaxy-s10plus-chinh-hang.html\" target=\"_blank\">Samsung Galaxy S10 Plus</a>&nbsp;ch&iacute;nh h&atilde;ng, nhiều ưu đ&atilde;i khi đặt trước</strong></h2>\r\n\r\n<p><em>Vậy l&agrave;&nbsp;<strong><a href=\"https://cellphones.com.vn/mobile/samsung/galaxy-s.html\" target=\"_blank\">Samsung Galaxy S&nbsp;</a></strong>thế hệ thứ 10 đ&atilde; được ra mắt, v&agrave; kh&ocirc;ng l&agrave;m người d&ugrave;ng thất vọng một ch&uacute;t n&agrave;o. Trong bộ ba si&ecirc;u phẩm d&ograve;ng S năm nay,<strong><a href=\"https://cellphones.com.vn/samsung-galaxy-s10plus-chinh-hang.html\" target=\"_blank\">Samsung Galaxy S10 Plus</a>&nbsp;</strong>l&agrave; thiết bị đắt gi&aacute; cũng như được trang bị những t&iacute;nh năng đ&igrave;nh đ&aacute;m nhất từ&nbsp;<strong><a href=\"https://cellphones.com.vn/mobile/samsung.html\" target=\"_blank\">Samsung</a></strong>. Đ&acirc;y hứa hẹn sẽ trở th&agrave;nh một trong những smartphone ho&agrave;n hảo nhất năm 2019. Ngo&agrave;i ra, c&aacute;c si&ecirc;u phẩm dự kiến tr&igrave;nh l&agrave;ng của Samsung như&nbsp;<a href=\"https://cellphones.com.vn/samsung-galaxy-s10e.html\" target=\"_blank\"><strong>Samsung Galaxy S10e</strong></a>,&nbsp;<a href=\"https://cellphones.com.vn/samsung-galaxy-note-10-chinh-hang.html\" target=\"_blank\"><strong>Samsung Galaxy Note 10&nbsp;</strong></a>với những thiết kế c&ugrave;ng t&iacute;nh năng đột ph&aacute; hứa hẹn sẽ b&ugrave;ng nổ giới c&ocirc;ng nghệ trong năm nay.&nbsp;</em></p>\r\n\r\n<h3><strong>Thiết kế thi&ecirc;n hướng&nbsp;<a href=\"https://cellphones.com.vn/samsung-galaxy-note-9-chinh-hang.html\" target=\"_blank\">Note 9</a>, kiểu m&agrave;n h&igrave;nh Infinity-O độc đ&aacute;o</strong></h3>\r\n\r\n<p>B&agrave;i to&aacute;n về hiển thị full m&agrave;n h&igrave;nh đ&atilde; được Samsung ho&agrave;n th&agrave;nh xuất sắc tr&ecirc;n Samsung Galaxy S10 Plus. Với thiết kế Infinity-O, m&agrave;n h&igrave;nh 6.4 inch tr&ecirc;n Galaxy S10 Plus đ&atilde; gần như chiếm trọn bộ mặt trước, với viền tr&ecirc;n v&agrave; cằm ở dưới rất mỏng. Tai thỏ, cũng như phần viền d&agrave;y đ&atilde; biến mất, thay v&agrave;o đ&oacute; l&agrave; một &lsquo;nốt ruồi&rsquo; chứa 2 camera selfie nằm ở g&oacute;c phải m&agrave;n h&igrave;nh.</p>\r\n\r\n<p>Phần nốt ruồi n&agrave;y được Samsung thiết kế rất tỉ mỉ, gọn g&agrave;ng, kh&ocirc;ng g&acirc;y qu&aacute; nhiều sự ch&uacute; &yacute;. B&ecirc;n cạnh đ&oacute;, nh&agrave; sản xuất H&agrave;n Quốc cũng kỹ lưỡng c&agrave;i đặt sẵn tr&ecirc;n m&aacute;y những h&igrave;nh nền mặc định &lsquo;tối dần&rsquo; về ph&iacute;a g&oacute;c tr&aacute;i, nhằm gi&uacute;p thiết kế tr&ocirc;ng liền lạc hơn.</p>\r\n\r\n<p><img alt=\"thiết kế samsung galaxy s10 plus\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/samsung/Samsung-galaxy-s10-plus-chinh-hang-1.jpg_1.jpg\" /></p>\r\n\r\n<p>Về thiết kế mặt lưng, tr&ecirc;n Galaxy S10 Plus, thay v&igrave; đặt camera nằm dọc, Samsung đ&atilde; xoay ngang cụm camera giống như tr&ecirc;n Note 9. Đồng thời v&acirc;n tay cũng đ&atilde; được t&iacute;ch hợp thẳng v&agrave;o trong m&agrave;n h&igrave;nh. Nhờ đ&oacute; m&agrave; thiết kế tr&ecirc;n m&aacute;y tr&ocirc;ng gọn g&agrave;ng, vu&ocirc;ng vứt hơn. Song song với đ&oacute;, Galaxy S10 Plus cũng c&oacute; độ mỏng rất ấn tượng, chỉ 7.8mm v&agrave; c&oacute; hai khối lượng dựa v&agrave;o tuỳ phi&ecirc;n bản: 175g (bản thường), 198g (bản gốm).</p>\r\n\r\n<p><img alt=\"màn hình samsung galaxy s10\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/samsung/Samsung-galaxy-s10-plus-chinh-hang-2.jpg.jpg\" /></p>\r\n\r\n<p>Samsung cũng kh&ocirc;ng qu&ecirc;n mang l&ecirc;n S10 Plus khả năng kh&aacute;ng nước IP68 cũng như mặt k&iacute;nh bảo vệ Gorilla Glass 5 ở ph&iacute;a sau. Về m&agrave;u sắc, Samsung Galaxy S10 Plus sở hữu rất nhiều phi&ecirc;n bản m&agrave;u sắc như: Prism White, Prism Black, Prism Green, Prism Blue, Canary Yellow, Flamingo Pink, Ceramic Black, Ceramic White. Nhưng hiện tại bạn c&oacute; thể đặt h&agrave;ng trước c&aacute;c m&agrave;u như Prism White, Prism Black v&agrave; Prism Green.</p>\r\n\r\n<h3><strong>M&agrave;n h&igrave;nh Dynamic AMOLED 2K, t&iacute;ch hợp cảm biến v&acirc;n tay si&ecirc;u &acirc;m&nbsp;</strong></h3>\r\n\r\n<p>Tr&ecirc;n m&agrave;n h&igrave;nh Galaxy S10 Plus, nếu như thiết kế Infinity-O l&agrave; một điểm c&aacute;ch t&acirc;n, th&igrave; chất lượng hiển thị lại l&agrave; một lời khẳng định về chất lượng. M&agrave;n h&igrave;nh 6.4 inch tr&ecirc;n Galaxy S10 Plus được trang bị tấm nền Dynamic AMOLED do ch&iacute;nh Samsung ph&aacute;t triển. Với kỹ thuật Dynamic Tone Mapping, m&agrave;n h&igrave;nh sử dụng tấm nền tr&ecirc;n sẽ hỗ trợ tối ưu độ tương phản cho từng khung h&igrave;nh kh&aacute;c nhau. Song song với đ&oacute;, Dynamic AMOLED cũng đạt chuẩn HDR10+. Đi k&egrave;m với độ ph&acirc;n giải rất cao - 1440 x 3040, m&agrave;n h&igrave;nh tr&ecirc;n Galaxy S10 Plus chắc chắn sẽ mang đến những trải nghiệm hiển thị xuất sắc chưa từng c&oacute;.<img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/samsung/Samsung-galaxy-s10-plus-chinh-hang-4.jpg\" style=\"height:473px; width:840px\" /></p>\r\n\r\n<h3><strong>Hiệu năng mạnh mẽ với Exynos 9820, dung lượng RAM 8GB tối thiểu</strong></h3>\r\n\r\n<p>Galaxy S10 Plus được Samsung n&acirc;ng cấp l&ecirc;n vi xử l&yacute; Exynos 9820. Đ&acirc;y l&agrave; một CPU được thiết kế tr&ecirc;n tiến tr&igrave;nh 8nm v&agrave; chắc chắn sẽ mang đến một tốc độ xử l&yacute; nhanh hơn thế hệ cũ 9810 rất nhiều. Nh&acirc;n NPU cũng xuất hiện nhằm hỗ trợ c&aacute;c thuật to&aacute;n xử l&yacute; AI. B&ecirc;n cạnh đ&oacute;, mức ti&ecirc;u thụ pin của bộ vi xử l&yacute; n&agrave;y cũng &iacute;t hơn đ&aacute;ng kể. Song song với vi xử l&yacute; mạnh mẽ, Samsung cũng trang bị cho Galaxy S10 Plus bộ nhớ RAM tối thiểu l&agrave; 8GB (cho hai phi&ecirc;n bản 128<strong>/<a href=\"https://cellphones.com.vn/samsung-galaxy-s10-plus-512gb.html\" target=\"_blank\">512GB</a></strong>&nbsp;bộ nhớ trong). Đặc biệt hơn, bản tối đa cấu h&igrave;nh&nbsp;<strong><a href=\"https://cellphones.com.vn/samsung-galaxy-s10-plus-1tb.html\" target=\"_blank\">Galaxy S10 Plus 1TB</a></strong>&nbsp;sẽ sở hữu dung lượng RAM l&ecirc;n đến 12GB.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/samsung/Samsung-galaxy-s10-plus-chinh-hang-5.jpg\" style=\"height:531px; width:840px\" /></p>\r\n', 1, 320, 60, 10, 18290000, 15290000, '2019-05-22 16:22:43', '4', '2019-06-27 17:11:20', '1', 0, 1),
(2, 1, 'Táo Juliet hữu cơ\r\n', 'trai-cay-nhap-khau/tao-juliet-huu-co1', '1c8f01e59cf56a2c2e946b58f64f7624.jpg', 'b6a64d0316b06e976ad4324a4063e341.jpg#13b9fc538c72f97683304fcd8c7194fb.jpg#2aa38bbfc27b9aac9d958fb4898bbe08.png', 'Sức mạnh đầu bảng thế giới smartphone', '<p><strong>Bạn cần mua một chiếc iPhone thời thượng, cấu h&igrave;nh mạnh mẽ v&agrave; camera xuất sắc nhất trong tầm gi&aacute; hợp l&yacute;. iPhone XR 128GB ch&iacute;nh l&agrave; lựa chọn d&agrave;nh cho bạn.</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-xr-16.jpg\" style=\"height:534px; width:800px\" /></strong>Bộ vi xử l&yacute; Apple A12 Bionic tr&ecirc;n iPhone XR 128GB đang l&agrave; con chip mạnh mẽ nhất thế giới smartphone hiện nay. Bạn sẽ c&oacute; 6 nh&acirc;n, trong đ&oacute; 2 nh&acirc;n hiệu năng cao nhanh hơn 15% v&agrave; 4 nh&acirc;n tiết kiệm điện tiết kiệm hơn 50% so với thế hệ trước A11 Bionic của iPhone X. Đồng thời GPU đồ họa của A12 Bionic mạnh hơn tới 50%, cho ph&eacute;p bạn chơi mọi tựa game ở cấu h&igrave;nh cao nhất một c&aacute;ch nhẹ nh&agrave;ng v&agrave; mượt m&agrave;.</p>\r\n\r\n<p><img alt=\"\" src=\"https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-xr-12.jpg\" style=\"height:533px; width:800px\" />B&ecirc;n cạnh sức mạnh đ&aacute;ng kinh ngạc, Apple A12 Bionic c&ograve;n l&agrave; con chip hỗ trợ tr&iacute; tuệ nh&acirc;n tạo. Với 8 nh&acirc;n Neural Engine c&oacute; khả năng học hỏi theo thời gian thực, iPhone XR c&oacute; thể nhận ra th&oacute;i quen sử dụng điện thoại của bạn, sau đ&oacute; đưa ra những dự đo&aacute;n, h&agrave;nh động xử l&yacute; nhanh dựa tr&ecirc;n những g&igrave; bạn l&agrave;m từng ng&agrave;y. 8 nh&acirc;n AI ri&ecirc;ng biệt c&ograve;n hỗ trợ cho iPhone XR trong rất nhiều trường hợp, từ nhận diện khu&ocirc;n mặt, chụp ảnh x&oacute;a ph&ocirc;ng, smart HDR cho đến c&ocirc;ng nghệ thực tế tăng cường AR. Mọi thứ đều trở n&ecirc;n dễ d&agrave;ng với bạn tr&ecirc;n iPhone XR.</p>\r\n\r\n<p><img alt=\"\" src=\"https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-xr-2.jpg\" style=\"height:533px; width:800px\" /></p>\r\n\r\n<h3><strong>Camera chỉ một l&agrave; đủ</strong></h3>\r\n\r\n<p>Kh&ocirc;ng cần qu&aacute; nhiều camera sau mang t&iacute;nh chạy đua, iPhone XR 128GB vẫn nổi bật khi sở hữu cảm biến camera xuất sắc h&agrave;ng đầu. Camera ch&iacute;nh tr&ecirc;n iPhone XR c&oacute; độ ph&acirc;n giải 12MP, khẩu độ f/1.8, lấy n&eacute;t nhanh gấp đ&ocirc;i, chụp đ&ecirc;m sắc n&eacute;t v&agrave; c&oacute; khả năng chụp ảnh x&oacute;a ph&ocirc;ng ưu việt. T&iacute;nh năng nổi bật nhất l&agrave; Smart HDR, chụp đẹp trong mọi điều kiện &aacute;nh s&aacute;ng nhờ khả năng b&ugrave; trừ s&aacute;ng ho&agrave;n hảo. iPhone XR kh&ocirc;ng chỉ chụp ảnh x&oacute;a ph&ocirc;ng ch&iacute;nh x&aacute;c m&agrave; c&ograve;n c&oacute; thể điều chỉnh được độ mờ của hậu cảnh, th&ecirc;m c&aacute;c hiệu ứng để ảnh ch&acirc;n dung của bạn đẹp một c&aacute;ch chuy&ecirc;n nghiệp.</p>\r\n\r\n<h3><strong>Chiếc iPhone m&agrave;n h&igrave;nh lớn tr&agrave;n viền cạnh</strong></h3>\r\n\r\n<p>Đ&uacute;ng như đặc trưng của d&ograve;ng iPhone X, iPhone XR 128GB sử dụng thiết kế tr&agrave;n viền gi&uacute;p cho d&ugrave; m&agrave;n h&igrave;nh lớn tới 6,1 inch nhưng iPhone XR vẫn nhỏ gọn hơn so với iPhone 8 Plus, dễ d&agrave;ng cầm nắm thao t&aacute;c bằng một tay. M&agrave;n h&igrave;nh iPhone XR c&ocirc;ng nghệ Liquid Retina sắc n&eacute;t, m&agrave;u sắc ch&iacute;nh x&aacute;c, độ s&aacute;ng cao, t&aacute;i tạo cuộc sống v&ocirc; c&ugrave;ng ch&acirc;n thực. Đ&acirc;y l&agrave; m&agrave;n h&igrave;nh LCD đẹp nhất thế giới smartphone với 6 tấm cảm biến đ&egrave;n nền dưới m&agrave;n h&igrave;nh, tự động điều chỉnh c&acirc;n bằng trắng th&ocirc;ng minh để thay đổi nhiệt độ m&agrave;u dựa theo m&ocirc;i trường, gi&uacute;p bạn lu&ocirc;n được tận hưởng m&agrave;n h&igrave;nh đẹp v&agrave; dễ chịu cho mắt.<img alt=\"\" src=\"https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-xr-17.jpg\" style=\"height:583px; width:800px\" /></p>\r\n\r\n<h3><strong>Thoải m&aacute;i lựa chọn m&agrave;u sắc theo &yacute; th&iacute;ch</strong></h3>\r\n\r\n<p>Kh&ocirc;ng chỉ c&oacute; kiểu d&aacute;ng đẹp mắt khi được ho&agrave;n thiện từ nh&ocirc;m v&agrave; vỏ k&iacute;nh bền nhất trong thế giới smartphone, iPhone XR c&ograve;n l&agrave; chiếc iPhone nhiều lựa chọn m&agrave;u sắc nhất. Rất nhiều m&agrave;u sắc đang chờ bạn lựa chọn: Đỏ, v&agrave;ng, trắng, hồng, đen, xanh. Đội ngũ thiết kế của Apple đ&atilde; d&ugrave;ng 7 tấm nền m&agrave;u sắc để m&agrave;u sơn c&oacute; độ s&acirc;u đầy ấn tượng phản chiếu qua lớp k&iacute;nh sang trọng. Vỏ k&iacute;nh cũng mang lại cho iPhone XR khả năng sạc kh&ocirc;ng d&acirc;y. Đặc biệt, iPhone XR c&ograve;n rất bền vững nhờ khả năng chống nước, mang tới sự y&ecirc;n t&acirc;m khi sử dụng.</p>\r\n\r\n<h3><strong>Thời lượng pin tuyệt vời</strong></h3>\r\n\r\n<p>Một trong những l&yacute; do để iPhone XR được y&ecirc;u th&iacute;ch ch&iacute;nh l&agrave; thời lượng pin. Đ&acirc;y l&agrave; chiếc iPhone c&oacute; thời lượng pin tốt nhất hiện nay, đảm bảo cho bạn sử dụng thoải m&aacute;i trong thời gian l&ecirc;n tới hai ng&agrave;y. C&ocirc;ng việc v&agrave; giải tr&iacute; lu&ocirc;n lu&ocirc;n tr&ocirc;i chảy với một chiếc điện thoại hiệu năng mạnh, pin tốt như iPhone XR.</p>\r\n\r\n<h3><strong>N&acirc;ng tầm bảo mật khu&ocirc;n mặt</strong></h3>\r\n\r\n<p>Nhận diện khu&ocirc;n mặt Face ID tr&ecirc;n iPhone XR đ&atilde; được n&acirc;ng l&ecirc;n tầm cao mới. Bạn c&oacute; thể mở kh&oacute;a iPhone, đăng nhập v&agrave;o ứng dụng hay thanh to&aacute;n chỉ trong nh&aacute;y mắt m&agrave; kh&ocirc;ng cần nhập mật khẩu. Đơn giản chỉ l&agrave; cầm m&aacute;y l&ecirc;n, điện thoại sẽ qu&eacute;t khu&ocirc;n mặt si&ecirc;u nhanh v&agrave; x&aacute;c thực mở kh&oacute;a ngay lập tức.<img alt=\"\" src=\"https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-xr-11.jpg\" style=\"height:533px; width:800px\" /></p>\r\n', 1, 20, 26, 20, 21000000, 20000000, '2019-05-26 23:28:34', '1', '2019-06-27 17:08:04', '1', 0, 1),
(5, 2, 'GIỎ QUÀ SỨC KHỎE\r\n', 'gio-qua-suc-khoe', '636872943529900358_samsung-galaxy-a50-trang-1.png', '2803038d1e70c78f962564f440b52282.jpg#63f7ee76f51d47c525d4f3813ee9dc29.jpg', 'Điện thoại Samsung Galaxy A50 – Smartphone với màn hình tràn viền, cụm 3 camera ấn tượng', '<p><em>Sau&nbsp;<a href=\"https://cellphones.com.vn/samsung-galaxy-a20.html\" target=\"_blank\"><strong>Galaxy A20</strong></a>&nbsp;v&agrave;&nbsp;<a href=\"https://cellphones.com.vn/samsung-galaxy-a30-64gb.html\" target=\"_blank\"><strong>Galaxy A30</strong></a>&nbsp;th&igrave; mới đ&acirc;y&nbsp;<a href=\"https://cellphones.com.vn/mobile/samsung.html\" target=\"_blank\"><strong>SamSung</strong></a>&nbsp;tiếp tục bổ sung một c&aacute;i t&ecirc;n mới v&agrave;o danh s&aacute;ch&nbsp;<a href=\"https://cellphones.com.vn/mobile/samsung/galaxy-a.html\" target=\"_blank\"><strong>Galaxy A</strong></a>&nbsp;của m&igrave;nh, đ&oacute; ch&iacute;nh l&agrave;&nbsp;<strong>SamSung Galaxy A50</strong>. A50 với nhiều c&ocirc;ng nghệ với v&agrave; hấp dẫn như cảm biến v&acirc;n tay trong m&agrave;n h&igrave;nh, cụm 3 camera hứa hẹn sẽ mang đến trải nghiệm tuyệt vời cho người d&ugrave;ng.</em></p>\r\n\r\n<h3><strong>M&agrave;n h&igrave;nh 6.4 inch &ndash; tận hưởng trọn vẹn với m&agrave;n h&igrave;nh v&ocirc; cực</strong></h3>\r\n\r\n<p>Galaxy A50 sở hữu một m&agrave;n h&igrave;nh c&oacute; k&iacute;ch thước lớn l&ecirc;n đến 6.4 inch c&ugrave;ng c&ocirc;ng nghệ m&agrave;n h&igrave;nh Infinity-U tr&agrave;n viền mang đến những trải nghiệm tận c&ugrave;ng cho người d&ugrave;ng. C&ugrave;ng với đ&oacute; l&agrave; tấm nền&nbsp;<a href=\"https://www.lifewire.com/super-amoled-4151073\" target=\"_self\">Super AMOLED</a>&nbsp;chuẩn FHD+ v&agrave; m&agrave;n h&igrave;nh 16 triệu m&agrave;u nhờ đ&oacute; A50 mang đến những trải nghiệm xem ho&agrave;n to&agrave;n kh&aacute;c biệt với những h&igrave;nh ảnh sắc n&eacute;t, ch&acirc;n thực v&agrave; sống động đến từng chi tiết.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/samsung/Galaxy-A50-1.jpg\" style=\"height:469px; width:840px\" /></p>\r\n\r\n<p>B&ecirc;n cạnh một m&agrave;n h&igrave;nh v&ocirc; cực với chất lượng hiển thị tốt th&igrave; Galaxy A50 c&ograve;n sở hữu một thiết kế ấn tượng với mặt k&iacute;nh 3D cao cấp kết hợp viền m&agrave;n h&igrave;nh cong tr&agrave;n tinh tế tạo n&ecirc;n một tổng thể nguy&ecirc;n khối liền mạch ho&agrave;n hảo nhờ đ&oacute; m&aacute;y cho khả năng cầm nắm kh&aacute; chắc chắn. Ngo&agrave;i ra, m&agrave;u sắc cũng l&agrave; một điểm nhấn ấn tượng tr&ecirc;n A50 khi m&aacute;y sở hữu nhiều phi&ecirc;n bản m&agrave;u độc đ&aacute;o&nbsp; như đen thi&ecirc;n thạch, xanh đại dương v&agrave; trắng ngọc trai.</p>\r\n\r\n<h3><strong>Bộ ba camera sau với khả năng chụp ảnh AI cho những bức ảnh chuẩn nhiếp ảnh gia</strong></h3>\r\n\r\n<p>Với ba ổng k&iacute;nh đa khẩu độ, từ camera g&oacute;c si&ecirc;u rộng 8MP mang đến g&oacute;c chụp 123 độ thật như mắt nh&igrave;n đến camera đo chiều s&acirc;u 5MP v&agrave; camera khẩu độ lớn 25MP thu s&aacute;ng vượt trội. Ngo&agrave;i ra, cụm camera sau tr&ecirc;n Galaxy A50 c&ograve;n được t&iacute;ch hợp nhiều t&iacute;nh năng th&ocirc;ng minh như chế độ tối ưu h&oacute;a cảnh gi&uacute;p nhận diện chủ thể. Hay c&ocirc;ng nghệ tr&iacute; th&ocirc;ng minh nh&acirc;n tạo AI gi&uacute;p tự động tối ưu độ s&aacute;ng, độ b&atilde;o h&ograve;a gi&uacute;p bức ảnh lu&ocirc;n đẹp ho&agrave;n hảo.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/samsung/Galaxy-A50-2.jpg\" style=\"height:473px; width:840px\" /></p>\r\n\r\n<p>Tất cả đ&oacute; gi&uacute;p Galaxy A50 cho ra những bức ảnh c&oacute; chất lượng như được chụp bởi những nhiếp ảnh gia chuy&ecirc;n nghiệp. Bất kể thời gian v&agrave; kh&ocirc;ng gian, h&agrave;nh tr&igrave;nh của bạn sẽ trở n&ecirc;n trọn vẹn với cụm 3 camera sẵn s&agrave;ng bắt trọn mọi n&eacute;t đẹp d&ugrave; trong điều kiện thiếu s&aacute;ng.&nbsp;</p>\r\n\r\n<p>Đặc bi&ecirc;t với t&iacute;nh năng nhận diện ảnh lỗi khi Galaxy A50 c&oacute; thể ph&acirc;n biệt được c&aacute;c trường hợp mắt nhắm, ống k&iacute;nh bị mờ hay ngược s&aacute;ng. Nhờ đ&oacute; người d&ugrave;ng c&oacute; thể kịp thời điều chỉnh v&agrave; cho ra những khoảnh khắc ho&agrave;n hảo v&agrave; sắc n&eacute;t nhất.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/samsung/Galaxy-A50-3.jpg\" style=\"height:446px; width:840px\" /></p>\r\n\r\n<h3><strong>Mở kh&oacute;a nhanh v&agrave; bảo mật an to&agrave;n với x&aacute;c thực sinh trắc học</strong></h3>\r\n\r\n<p>Galaxy A50 với&nbsp; c&ocirc;ng nghệ bảo mật sinh trắc học t&acirc;n tiến với khả năng qu&eacute;t v&acirc;n tay&nbsp; dưới m&agrave;n h&igrave;nh nhanh ch&oacute;ng v&agrave; an to&agrave;n. Ngo&agrave;i ra, bạn cũng c&oacute; thể lựa chọn một phương thức kh&aacute;c v&agrave; nhanh ch&oacute;ng kh&ocirc;ng k&eacute;m đ&oacute; ch&iacute;nh l&agrave; nhận diện khu&ocirc;n mặt. Việc bạn cần l&agrave;m l&agrave; giữ điện thoại trước mặt, c&ocirc;ng nghệ nhận diện khu&ocirc;n mặt sẽ gi&uacute;p bạn truy cập v&agrave;o điện thoại một c&aacute;ch nhanh ch&oacute;ng nhưng kh&ocirc;ng k&eacute;m phần an to&agrave;n.</p>\r\n', 2, 368, 11, 10, 6990000, 6390000, '2019-06-03 21:49:23', '1', '2019-06-27 17:04:43', '1', 0, 1),
(7, 1, 'Giấm táo hữu cơ Bragg 473ml\r\n', 'dam-tao-huu-co-bragg\r\n', '636483223586180190_1.jpg', '49159254e59c88f0fd2cc7a61dcc45c8.jpg', 'iPhone X 64GB – Siêu phẩm kỷ niệm 10 năm của Apple', '<p><em>Sản phẩm kỷ niệm 10 năm ra mắt của Apple n&ecirc;n&nbsp;<strong>iPhone X 64GB ch&iacute;nh h&atilde;ng VN/A</strong>&nbsp;c&oacute; sự thay đổi so với bộ đ&ocirc;i&nbsp;<a href=\"https://cellphones.com.vn/mobile/apple/iphone-8-8-plus.html\" target=\"_blank\">iPhone 8, 8 Plus</a>&nbsp;trước đ&oacute; từ t&iacute;nh năng đến thiết kế khiến nhiều người d&ugrave;ng smartphone khao kh&aacute;t. Ngo&agrave;i ra, bạn c&oacute; thể tham khảo phi&ecirc;n bản dung lượng bộ nhớ trong cao hơn l&agrave;&nbsp;<strong><a href=\"https://cellphones.com.vn/apple-iphone-x-256-gb-chinh-hang-vn.html\" target=\"_blank\">iPhone X 256GB</a></strong></em></p>\r\n\r\n<h3><strong>iPhone m&atilde; VN/A l&agrave; g&igrave;? V&igrave; sao n&ecirc;n chọn iPhone X 64GB ch&iacute;nh h&atilde;ng VN/A?</strong></h3>\r\n\r\n<p>Trước khi ra mắt mỗi sản phẩm cho từng thị trường th&igrave; Apple đ&atilde; nghi&ecirc;n cứu rất kỹ lưỡng để ph&ugrave; hợp nhất với thị trường đ&oacute;. V&iacute; dụ như với Nhật Bản v&agrave; H&agrave;n Quốc đ&oacute; l&agrave; cấm chụp l&eacute;n n&ecirc;n smartphone của 2 thị trường n&agrave;y sẽ kh&ocirc;ng tắt được &acirc;m chụp h&igrave;nh. V&agrave; điện thoại iPhone tại thị trường Việt Nam cũng sẽ như vậy, Apple đ&atilde; nghi&ecirc;n cứu những th&oacute;i quen, quy định của Việt Nam để sản xuất ra iPhone X 64GB ch&iacute;nh h&atilde;ng m&atilde; VN/A.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/apple/iPhone-X-64GB-chinh-hang-VNA-1.jpg\" style=\"height:586px; width:840px\" /></p>\r\n\r\n<p>Vậy cụ thể iPhone m&atilde; VA/A l&agrave; g&igrave;? iPhone m&atilde; VN/A l&agrave; h&agrave;nh do ch&iacute;nh Apple sản xuất cho từng thị trường cụ thể v&agrave; đảm bảo chất lượng, kiểm duyệt của Apple. N&ecirc;n khi mua<em>&nbsp;iPhone X 64GB ch&iacute;nh h&atilde;ng m&atilde; VN/A</em>&nbsp;kh&aacute;ch h&agrave;ng sẽ được hưởng nhiều ưu đ&atilde;i hơn so với iPhone cũ, iPhone x&aacute;ch tay. Đ&oacute; l&agrave; ch&iacute;nh s&aacute;ch bảo h&agrave;nh hấp dẫn, nguồn gốc r&otilde; r&agrave;ng, sản phẩm đầy phụ kiện. Đ&acirc;y l&agrave; những điều m&agrave; iPhone X cũ sẽ kh&ocirc;ng thể c&oacute; hoặc c&oacute; kh&ocirc;ng đầy đủ.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/apple/iPhone-X-64GB-chinh-hang-VNA-2.jpg\" style=\"height:560px; width:840px\" /></p>\r\n\r\n<p>So với những năm trước th&igrave; Apple từng sản xuất những mẫu smartphone c&oacute; dung lượng chỉ 16GB, 32GB th&igrave; 64GB đ&atilde; l&agrave; một dung lượng lớn, đủ để đ&aacute;p ứng mọi nhu cầu sử dụng của kh&aacute;ch h&agrave;ng. Được chạy tr&ecirc;n một hệ điều h&agrave;nh iOS đ&atilde; được tối ưu h&oacute;a, iPhone X 64GB cho ph&eacute;p người d&ugrave;ng thoải m&aacute;i lưu trữ &acirc;m nhạc, h&igrave;nh ảnh, video hay tải c&aacute;c ứng dụng m&agrave; kh&ocirc;ng lo đầy bộ nhớ.</p>\r\n\r\n<h3><strong>iPhone X 64GB thiết kế đột ph&aacute; với m&agrave;n h&igrave;nh tai thỏ</strong></h3>\r\n\r\n<p>Sau 4 năm trung th&agrave;nh với một kiểu thiết kế, bắt đầu từ iPhone 6/ 6 Plus đến&nbsp;<a href=\"https://cellphones.com.vn/mobile/apple/iphone-8-8-plus.html\" target=\"_blank\">iPhone 8/8 Plus</a>, th&igrave; m&atilde;i đến iPhone X Apple mới c&oacute; một sự thay đổi ho&agrave;n to&agrave;n trong thiết kế của m&igrave;nh.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/apple/iPhone-X-64GB-chinh-hang-VNA-5.jpg\" style=\"height:466px; width:840px\" /></p>\r\n\r\n<p>Face ID hoạt động bằng c&aacute;ch sử dụng camera hồng ngoại, m&ocirc;̣t đ&egrave;n chi&ecirc;́u v&agrave; cảm bi&ecirc;́n ch&acirc;́m với hơn 30.000 điểm kh&ocirc;ng nh&igrave;n thấy được để x&acirc;y dựng v&agrave; đ&ocirc;́i chi&ecirc;́u t&acirc;́t cả đường n&eacute;t tr&ecirc;n khu&ocirc;n mặt của người d&ugrave;ng mang lại khả năng nhận diện khu&ocirc;n mặt cực k&igrave; chuẩn x&aacute;c. D&ugrave; người d&ugrave;ng c&oacute; cạo đi r&acirc;u, thay đổi kiểu t&oacute;c th&igrave; Face ID cũng dễ d&agrave;ng nhận ra v&agrave; mở kh&oacute;a iPhone một c&aacute;ch nhanh ch&oacute;ng.</p>\r\n\r\n<h3><strong>Vi xử l&yacute;&nbsp;<a href=\"https://cellphones.com.vn/sforum/chipset-apple-a11-bionic-tren-iphone-8-va-iphone-x-danh-bai-tat-ca-cac-thiet-bi-android-voi-diem-geekbench-cao-ngat-nguong\" target=\"_blank\">Apple A11 Bionic</a>&nbsp;đem lại những trải nghiệm d&ugrave;ng tuyệt vời</strong></h3>\r\n\r\n<p>Hiệu năng l&agrave; điều chưa bao giờ phải b&agrave;n c&atilde;i với c&aacute;c sản phẩm từ Apple v&agrave;&nbsp;<em>iPhone X 64Gb</em>&nbsp;cũng kh&ocirc;ng ngoại lệ.&nbsp;<strong>iPhone X 64GB</strong>&nbsp;được trang bị chip xử l&yacute; A11 Bionic s&aacute;u l&otilde;i (Hexa core) 64 bit đem lại tốc độ nhanh hơn 25% so với chip A10, tiết kiệm năng lượng l&ecirc;n tới 70%.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/apple/iPhone-X-64GB-chinh-hang-VNA-6.jpg\" style=\"height:466px; width:840px\" /></p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;&nbsp;<a href=\"https://www.notebookcheck.net/Apple-A11-Bionic-GPU-GPU-Benchmarks-and-Specs.250994.0.html\" target=\"_blank\">chip xử l&yacute; đồ họa GPU M11</a>&nbsp;cũng gi&uacute;p cải thiện tốc độ l&ecirc;n khoảng 30% so với GPU cũ. Nhờ vậy, người d&ugrave;ng c&oacute; thể lướt game nhanh v&agrave; mượt hơn.</p>\r\n\r\n<h3><strong>Mua iPhone X 64GB ch&iacute;nh h&atilde;ng VN/A gi&aacute; tốt tại CellphoneS</strong></h3>\r\n\r\n<p>Smartphone&nbsp;<em><strong>iPhone X 64GB ch&iacute;nh h&atilde;ng</strong></em>&nbsp;l&agrave; một flagship rất đ&aacute;ng để trải nghiệm. Hiện sản phẩm đang được b&aacute;n ch&iacute;nh h&atilde;ng tại hệ thống cửa h&agrave;ng của CellphoneS,nếu bạn quan t&acirc;m đến sản phẩm n&agrave;y th&igrave; h&atilde;y đến c&aacute;c hệ thống cửa h&agrave;ng&nbsp;<a href=\"https://cellphones.com.vn/\" target=\"_blank\">CellphoneS&nbsp;</a>để được trải nghiệm tận tay. Ngo&agrave;i ra, khi mua iPhone X 64GB ch&iacute;nh h&atilde;ng kh&aacute;ch h&agrave;ng sẽ được hưởng nhiều ch&iacute;nh s&aacute;ch ưu đ&atilde;i mua h&agrave;ng trả g&oacute;p với thẻ t&iacute;n dụng, bảo h&agrave;nh 12 th&aacute;ng ch&iacute;nh h&atilde;ng, 1 đổi 1 trong 30 ng&agrave;y, miễn ph&iacute; giao h&agrave;ng, thu tiền tại nh&agrave;.</p>\r\n', 2, 190, 20, 0, 21900000, 21900000, '2019-06-03 22:04:43', '1', '2019-06-27 16:57:33', '1', 0, 1),
(9, 7, 'Sữa tươi hữu cơ Vinamilk 180ml\r\n', 'sua-tuoi-huu-co-180ml', '636753320259321737_huawei-mate20-pro-xanhla-1.jpg', 'cf69d7775e92df0125cf38b8dc38e697.jpg', 'Huawei Mate 20 Pro chính hãng - Thông tin giá bán, cấu hình chi tiết, quà tặng khủng', '<p>Huawei đang dần chứng minh với thế giới rằng họ l&agrave; c&ocirc;ng ty c&ocirc;ng nghệ chuy&ecirc;n sản xuất smartphone chất lượng cao nắm trong tay gần 10% thị phần smartphone to&agrave;n thế giới.&nbsp;Điện thoại&nbsp;<strong>Huawei Mate 20 Pro</strong>&nbsp;tiếp tục được&nbsp;<a href=\"https://cellphones.com.vn/mobile/huawei.html\" target=\"_blank\">Huawei</a>&nbsp;cho ra đời nhằm củng cố điều đ&oacute;.</p>\r\n\r\n<h2>Thiết kế Huawei Mate 20 Pro đẳng cấp</h2>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/huawei/huawei-mate-20-pro-chinh-hang-1_1.png\" style=\"height:600px; width:640px\" /></p>\r\n\r\n<p><strong>Huawei Mate 20 Pro</strong>&nbsp;v&agrave;&nbsp;<em><a href=\"https://cellphones.com.vn/huawei-mate-20-chinh-hang.html\" target=\"_blank\">Huawei Mate 20</a></em>&nbsp;đều sở hữu thiết kế hai mặt k&iacute;nh b&oacute;ng bẩy tạo vẻ đẹp tinh tế v&agrave; bắt mắt với bất cứ ai nh&igrave;n v&agrave;o. B&ecirc;n cạnh đ&oacute;, kiểu d&aacute;ng vu&ocirc;ng vắn hiện đại v&agrave; những đường bo cong hợp l&yacute; để tạo cảm gi&aacute;c cầm nắm chắc chắn. Đặc biệt, với thiết kế cong 2 b&ecirc;n giống như tr&ecirc;n chiếc Mate RS Porsche Design hay giống c&aacute;c thiết bị Galaxy d&ograve;ng S mới đến từ Samsung gi&uacute;p cho m&aacute;y dễ d&agrave;ng nằm gọn trong tay người d&ugrave;ng.</p>\r\n\r\n<h2>M&agrave;n h&igrave;nh Mate 20 Pro tr&agrave;n viền sắc n&eacute;t</h2>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/huawei/huawei-mate-20-pro-chinh-hang-4_1.png\" style=\"height:600px; width:640px\" /></p>\r\n\r\n<p><strong>Mate 20 Pro</strong>&nbsp;sở hữu m&agrave;n h&igrave;nh c&oacute; k&iacute;ch thước lớn 6.39 inches c&ugrave;ng độ ph&acirc;n giải&nbsp;2K+ 3120x1440 cho khả năng hiển thị ngo&agrave;i trời v&agrave; g&oacute;c nh&igrave;n cực tốt. B&ecirc;n cạnh đ&oacute;, c&ocirc;ng nghệ m&agrave;n h&igrave;nh&nbsp;OLED đem lại h&igrave;nh ảnh v&agrave; video được t&aacute;i tạo một c&aacute;ch ch&acirc;n thực, sắc n&eacute;t với độ s&aacute;ng, độ tương phản cao ở từng chi tiết, thỏa m&atilde;n nhu cầu giải tr&iacute; của người d&ugrave;ng.</p>\r\n\r\n<h2>Cấu h&igrave;nh Huawei Mate 20 Pro ch&iacute;nh h&atilde;ng mạnh mẽ</h2>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/huawei/huawei-mate-20-pro-chinh-hang-6.png\" style=\"height:453px; width:640px\" /></p>\r\n\r\n<p><strong>Huawei Mate 20 Pro</strong>&nbsp;<strong>ch&iacute;nh h&atilde;ng</strong>&nbsp;được trang bị chip mới l&agrave; Kirin 980 do ch&iacute;nh Huawei tự sản xuất tr&ecirc;n tiến tr&igrave;nh 7nm c&oacute; NPU d&agrave;nh ri&ecirc;ng cho tr&iacute; th&ocirc;ng minh nh&acirc;n tạo đem lại khả năng xử l&yacute; t&aacute;c vụ năng v&ocirc; c&ugrave;ng mượt m&agrave; v&agrave; ổn định.</p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, RAM 6 GB thoải m&aacute;i cho bạn c&ugrave;ng bộ nhớ trong 128GB gi&uacute;p bạn lưu trữ dữ liệu thỏa th&iacute;ch.&nbsp;<strong>Mate 20 Pro</strong>&nbsp;được chạy tr&ecirc;n nền hệ điều h&agrave;nh Android 9.</p>\r\n\r\n<h2>Camera Huawei Mate 20 Pro ch&iacute;nh h&atilde;ng bắt trọn từng khoảnh khắc</h2>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/huawei/huawei-mate-20-pro-chinh-hang-3_1.png\" style=\"height:600px; width:640px\" /></p>\r\n\r\n<p><strong>Mate 20 Pro</strong>&nbsp;Ch&iacute;nh h&atilde;ng được trang bị ba camera trang bị AI bao gồm camera ch&iacute;nh c&oacute; độ ph&acirc;n giải 40MP v&agrave; hai camera phụ c&oacute; độ ph&acirc;n giải 20MP đơn sắc + 8MP tele hỗ trợ c&ocirc;ng nghệ AI, nhận dạng được nhiều bối cảnh kh&aacute;c nhau như phong cảnh, đồ ăn... gi&uacute;p cho camera c&oacute; thể bắt được chủ thể khu&ocirc;n h&igrave;nh v&agrave; l&agrave;m mờ hậu cảnh một c&aacute;ch ch&iacute;nh x&aacute;c. C&ograve;n camera trước của m&aacute;y c&oacute; độ ph&acirc;n giải l&ecirc;n đến 24MP gi&uacute;p người d&ugrave;ng c&oacute; những bức ảnh tự sướng ảo diệu, tự tin chia sẻ cho bạn b&egrave;.</p>\r\n\r\n<h2>Thời lượng pin Mate 20 Pro ch&iacute;nh h&atilde;ng ấn tượng</h2>\r\n\r\n<p><strong>Huawei Mate 20 Pro</strong>&nbsp;ch&iacute;nh h&atilde;ng sở hữu pin với dung lượng 4.200 mAh, con chip tiết kiệm pin cho thời gian sử dụng l&agrave; dư dả trong một ng&agrave;y. Ngo&agrave;i ra,&nbsp;<strong>Mate 20 Pro&nbsp;</strong>c&ograve;n được hỗ trợ c&ocirc;ng nghệ sạc nhanh cho ph&eacute;p điện thoại tăng 50% tốc độ chỉ trong 25 ph&uacute;t gi&uacute;p cho người d&ugrave;ng mau ch&oacute;ng sử dụng m&aacute;y khi cần thiết. Ngo&agrave;i ra, Huawei Mate 20 Pro c&ograve;n hỗ trợ sạc ngược cho c&aacute;c thiết bị được trang bị c&ocirc;ng nghệ NFC.</p>\r\n\r\n<p>Mua&nbsp;<a href=\"https://cellphones.com.vn/huawei-mate-20-pro-chinh-hang.html\" target=\"_blank\"><em>Huawei Mate 20 Pro Ch&iacute;nh h&atilde;ng gi&aacute; bao nhi&ecirc;u</em></a>, chế độ bảo h&agrave;nh như thế n&agrave;o? H&atilde;y đến với CellphoneS, hệ thống b&aacute;n lẻ điện thoại tr&ecirc;n to&agrave;n quốc hiện sẽ cung cấp cho kh&aacute;ch h&agrave;ng sản phẩm Huawei&nbsp;<strong><em>Mate 20 Pro</em></strong>&nbsp;ch&iacute;nh h&atilde;ng trong thời gian sớm nhất khi được nh&agrave; sản xuất ra mắt c&ugrave;ng với việc b&aacute;n mức gi&aacute; v&ocirc; c&ugrave;ng hấp dẫn, chế độ hậu m&atilde;i v&ocirc; c&ugrave;ng tốt. Đối với c&aacute;c kh&aacute;ch h&agrave;ng ở xa c&oacute; nhu cầu mua sản phẩm c&oacute; thể tham khảo qua dịch vụ mua h&agrave;ng v&agrave; thanh to&aacute;n tận nơi miễn ph&iacute; của CellphoneS. Đặc biệt, đối với những sản phẩm mới ra mắt, kh&aacute;ch h&agrave;ng c&oacute; thể đặt cọc online để ưu ti&ecirc;n nhận m&aacute;y v&agrave; sở hữu nhiều phần qu&agrave; hấp dẫn.</p>\r\n', 2, 220, 30, 10, 16990000, 15990000, '2019-06-03 22:14:17', '1', '2019-06-27 17:14:06', '1', 0, 1),
(11, 10, 'Nước ép lựu hữu cơ Rabenhorst 750ml\r\n', 'nuoc-ep-luu-huu-co-rabenhorst-750ml', '9d67ba4f20f38ec6a2232ec0fca5f9e0.jpg', 'a505b96c64649c2414eb8a31b2829ae0.jpg#64ee9342e51da2b72877a7c1a253e796.jpg', 'Cáp AUKEY 3 trong 1 (Lightning, Micro, USB-C) CB-BAL5 1.2m Chuẩn MFI', '', 2, 605, 27, 0, 340000, 340000, '2019-06-03 22:21:22', '1', '2019-06-03 22:21:22', '1', 0, 1),
(12, 8, 'Chai Xịt họng Keo ong Hữu cơ Ladrome 30 ml\r\n', 'chai-xit-hong-keo-ong-huu-co-propolis-30-ml', '74ca778d59300c8f71236c436fa6dd9e.jpg', 'c7a3137f57a2855ef38d9d023d6a1042.jpg#a0a18f7b513c1519f364b69f327918ea.png', 'Điện thoại Xiaomi Mi 8 64GB – Smartphone giá rẻ cấu hình mạnh đáng mua nhất hiện nay', '<p><em><strong>(*) Điện thoại Xiaomi ch&iacute;nh h&atilde;ng, c&oacute; sẵn tiếng Việt, đầy đủ ứng dụng của Google. Bạn c&oacute; thể sử dụng ngay b&igrave;nh thường. Kh&aacute;c với c&aacute;c m&aacute;y h&agrave;ng x&aacute;ch tay: kh&ocirc;ng c&oacute; sẵn rom tiếng Việt, chặn c&aacute;c ứng dụng của Google</strong></em></p>\r\n\r\n<p><em>Những năm gần đ&acirc;y&nbsp;<a href=\"https://cellphones.com.vn/mobile/xiaomi.html\" target=\"_blank\">Xiaomi</a>&nbsp;đang c&oacute; những bước tiến mạnh mẽ trở th&agrave;nh một trọng những nh&agrave; sản xuất smartphone lớn nhất thế giới. Những chiếc điện thoại Xiaomi thường c&oacute; thiết kế đẹp, cấu h&igrave;nh mạnh nhưng lại c&oacute; gi&aacute; cả rẻ hơn so với c&aacute;c h&agrave;ng đ&oacute;. Điển h&igrave;nh trong đ&oacute; c&oacute; chiếc điện thoại&nbsp;<strong>Xiaomi Mi 8 64GB</strong>&nbsp;v&agrave; n&oacute; đang c&oacute; b&aacute;n với mức gi&aacute; kh&aacute; tốt tại CellphoneS.</em></p>\r\n\r\n<h3><strong>Xiaomi Mi 8 64GB c&oacute; m&agrave;n h&igrave;nh tr&agrave;n viền với thiết kế tai thỏ độc đ&aacute;o</strong></h3>\r\n\r\n<p>M&agrave;n h&igrave;nh Xiaomi c&oacute; thiết kế tr&agrave;n viền l&agrave; 6.21 inch với c&aacute;c cạnh b&ecirc;n đều rất mỏng gi&uacute;p tối đa hiển thị v&agrave; t&ocirc;n l&ecirc;n vẻ cao cấp của Xiaomi Mi 8. Độ ph&acirc;n giải m&agrave;n h&igrave;nh Xiaomi Mi 8 l&agrave; full HD+ (1080*2248 pixels) với mật độ điểm ảnh l&ecirc;n đến 402 ppi. V&igrave; thế Xiaomi Mi 8 cho chất lượng h&igrave;nh ảnh r&otilde; n&eacute;t đến từng chi tiết v&agrave; v&ocirc; c&ugrave;ng mềm mại cho sự trải nghiệm một c&aacute;ch ch&acirc;n thật nhất khi sử dụng.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/xiaomi/xiaomi-mi-8-64-gb-2.jpg\" style=\"height:520px; width:840px\" /></p>\r\n\r\n<p>C&ocirc;ng nghệ m&agrave;n h&igrave;nh&nbsp;<a href=\"https://www.samsung.com/global/galaxy/what-is/amoled/\" target=\"_blank\">AMOLED&nbsp;</a>16 triệu&nbsp;m&agrave;u cao cấp kh&ocirc;ng những gi&uacute;p chất lượng h&igrave;nh ảnh hiển thị tốt hơn m&agrave; n&oacute; c&ograve;n c&oacute; độ bền cao v&agrave; c&acirc;n bằng m&agrave;u sắc tốt hơn so với c&aacute;c c&ocirc;ng nghệ m&agrave;n h&igrave;nh kh&aacute;c. Tuy bền nhưng AMOLED kh&ocirc;ng c&oacute; độ d&agrave;y cao gi&uacute;p c&aacute;c thao t&aacute;c vuốt tr&ecirc;n Xiaomi Mi 8 trở n&ecirc;n rất linh hoạt v&agrave; ch&acirc;n thật. Ngo&agrave;i ra, hai cạnh b&ecirc;n hai cạnh b&ecirc;n của m&aacute;y cũng được thiết kế mỏng v&agrave; v&aacute;t cong 2.5D cho cảm gi&aacute;c vuốt rất chạm dễ d&agrave;ng hơn.</p>\r\n\r\n<h3><strong>Hiệu năng mạnh mẽ chiến mọi tựa game với&nbsp;<a href=\"https://cellphones.com.vn/sforum/snap-845-co-diem-benchmark-diem-do-hoa-cao-hon-han-iphone-x\" target=\"_blank\">Snapdragon 845</a></strong></h3>\r\n\r\n<p>Xiaomi Mi 8 chạy tr&ecirc;n nền tảng&nbsp;<a href=\"https://www.trustedreviews.com/news/android-8-1-oreo-features-release-date-download-changes-phones-3317301\" target=\"_blank\">Android 8.1 (Oreo)</a>&nbsp;sở&nbsp;hữu một trong những con chip mạnh nhất hiện nay Snapdragon 845. V&igrave; thế c&aacute;c thao t&aacute;c hằng ng&agrave;y như lướt web, facebook, youtube,&hellip; đều rất mượt m&agrave;. Kh&ocirc;ng những thế Xiaomi Mi 8 c&ograve;n c&oacute; thể chiến mọi tựa game 3D hiện nay một c&aacute;ch dễ d&agrave;ng nhưng ở một số game vẫn chưa để được chế độ max setting v&igrave; sự tối ưu h&oacute;a ứng dụng tr&ecirc;n nền tảng&nbsp;<a href=\"https://cellphones.com.vn/sforum/android-phan-mem-doc-hai\" target=\"_blank\">Android</a>&nbsp;vẫn chưa tốt.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/xiaomi/xiaomi-mi-64gb-3.jpg\" style=\"height:560px; width:840px\" /></p>\r\n\r\n<p>Ngo&agrave;i ra, với RAM 6GB cũng gi&uacute;p đ&atilde; nhiệm m&aacute;y chạy một c&aacute;ch mượt m&agrave;, &iacute;t khi bị reload. Sự chuyển qua chuyển lại giữa c&aacute;i ứng dụng dường như kh&ocirc;ng c&oacute; độ trễ. Bộ nhớ trong 64GB gi&uacute;p mọi lưu trữ tr&ecirc;n Xiaomi Mi 8 được tốt nhất hạn chế tr&agrave;n bộ nhớ.</p>\r\n\r\n<h3><strong>Camera 12MP sắc n&eacute;t với t&iacute;nh năng x&oacute;a ph&ocirc;ng tuyệt vời</strong></h3>\r\n\r\n<p>Kh&ocirc;ng những c&oacute; hiệu năng mạnh mẽ Xiaomi Mi 8 c&ograve;n c&oacute; camera ấn tượng. Cụm camera k&eacute;p được Xiaomi trang bị với camera ch&iacute;nh 12 MP (khẩu độ f/2.4) v&agrave; camera phụ 12MP (khẩu độ f/1.8). Với bộ đ&ocirc;i camera n&agrave;y chẳng những gi&uacute;p Xiaomi Mi 8<strong>&nbsp;</strong>cho ra những h&igrave;nh ảnh ch&acirc;n thật m&agrave; n&oacute; c&ograve;n l&agrave;m được nhiều điều hơn thế. Cụm camera k&eacute;p c&oacute; c&aacute;c t&iacute;nh năng như chụp x&oacute;a ph&ocirc;ng, tự động lấy n&eacute;t, zoom quang 2X, LED flash k&eacute;p. Đồng thời, camera n&agrave;y c&ograve;n được trang bị c&ocirc;ng nghệ chống rung quang học 4 trục thế hệ mới v&agrave; c&oacute; thể quay video 2160p@60fps. Nhờ vậy m&agrave; người d&ugrave;ng c&oacute; thể ghi lại những khoảnh khắc đẹp hằng ng&agrave;y của m&igrave;nh một c&aacute;ch dễ d&agrave;ng v&agrave; ch&acirc;n thật nhất.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/xiaomi/xiaomi-mi-8-64-gb-4.jpg\" style=\"height:360px; width:840px\" /></p>\r\n\r\n<p>Camera trước Xiaomi Mi 8 c&oacute; độ ph&acirc;n giải 20MP (khẩu độ f/2.0) với khả năng quay video 1080P gi&uacute;p c&aacute;c cuộc gọi videocall cho h&igrave;nh ảnh sắc n&eacute;t dễ chịu với người đối diện. T&iacute;nh năng l&agrave;m đẹp cũng gi&uacute;p những tấm ảnh selfie trở n&ecirc;n mịn m&agrave;ng v&agrave; tươi tắn hơn.</p>\r\n\r\n<h3><strong>Xiaomi Mi 8 64GB - dung lượng bộ nhớ trong lớn cho khả năng lưu chữ tốt</strong></h3>\r\n\r\n<p>Ngo&agrave;i dung lượng 64GB Xiaomi Mi 8 c&ograve;n c&oacute; dung lượng 128GB. Nhưng hiện nay người d&ugrave;ng vẫn ưa chuộng phi&ecirc;n bản 64GB nhiều hơn. 64GB nghe c&oacute; vẻ nhỏ hơn rất nhiều so với phi&ecirc;n bản 128GB nhưng khả năng lưu trữ của n&oacute; vẫn v&ocirc; c&ugrave;ng lớn. V&agrave; phi&ecirc;n bản Xiaomi Mi 8 64GB cũng rẻ hơn so với phi&ecirc;n bản 128GB. Vậy với 64GB người d&ugrave;ng c&oacute; thể lưu trữ được những g&igrave;?</p>\r\n\r\n<p>- Khi mua m&aacute;y cần dung lượng cho c&agrave;i đặt hệ điều h&agrave;nh v&agrave; c&aacute;c ứng dụng bắt buộc kh&aacute;c như google, CH play,&hellip; n&ecirc;n dung lượng thực tế chỉ c&ograve;n khoảng 42GB trống</p>\r\n\r\n<p>- 42GB c&oacute; thể c&agrave;i hơn 30 game từ 1GB-2GB tr&ecirc;n CH play. Những game n&agrave;y đa phần đều l&agrave; game hay c&oacute; đồ họa tốt.</p>\r\n\r\n<p>- Người d&ugrave;ng c&oacute; c&oacute; thể lưu trữ h&agrave;ng ng&agrave;n b&agrave;i h&aacute;t v&agrave; ảnh chụp với dung lượng n&agrave;y.</p>\r\n\r\n<p>- C&oacute; thể quay video hơn 20 video full HD mỗi video 20&rsquo;.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/xiaomi/xiaomi-mi-8-64-gb-7.jpg\" style=\"height:562px; width:840px\" /></p>\r\n\r\n<p>Như vậy mới thấy với dung lượng 64GB m&agrave; người d&ugrave;ng đ&atilde; c&oacute; thể lưu trữ được dữ liệu khủng như thế n&agrave;o. Dĩ nhi&ecirc;n những điều tr&ecirc;n chỉ l&agrave; v&iacute; dụ tr&ecirc;n thực tế khi sử dụng điện thoại người d&ugrave;ng sẽ ph&acirc;n bổ dữ liệu của m&igrave;nh để lưu trữ nhạc, video, game, ảnh, c&aacute;c ứng dụng,.. nhưng vẫn c&ograve;n rất nhiều dung lượng trống b&ecirc;n trong điện thoại.&nbsp;</p>\r\n\r\n<p>Tuy vậy với những người thường xuy&ecirc;n sử dụng điện thoại để l&agrave;m việc quay video, lưu trữ h&igrave;nh ảnh rất nhiều th&igrave; cần c&acirc;n nhắc mua phi&ecirc;n bản Xiaomi Mi 8 128GB để cho khả năng lưu trữ được tốt hơn.</p>\r\n\r\n<h3><strong>Vi&ecirc;n pin 3400 mAh cho thời gian sử dụng tốt t&iacute;ch hợp&nbsp;<a href=\"https://www.qualcomm.com/solutions/mobile-computing/features/quick-charge\" target=\"_blank\">sạc nhanh Quick Charge</a>&nbsp;4.0</strong></h3>\r\n\r\n<p>Với vi&ecirc;n pin lớn 3400 mAh sẽ gi&uacute;p Xiaomi Mi 8 64GB trụ được đến cuối ng&agrave;y mới sạc cới c&aacute;c thao t&aacute;c hằng ng&agrave;y như nghe nhạc, chơi game, lướt web, face book,&hellip; Nhưng n&ecirc;u sử dụng li&ecirc;n tục dĩ nhi&ecirc;n vi&ecirc;n pin n&agrave;y sẽ kh&ocirc;ng đ&aacute;p ứng đủ nhu cầu người d&ugrave;ng bắt buộc phải sạc th&ecirc;m một lần nữa trong ng&agrave;y.&nbsp;</p>\r\n', 1, 220, 4, 0, 8490000, 8490000, '2019-06-03 22:27:35', '1', '2019-06-27 16:42:14', '1', 0, 1),
(13, 8, 'Chai Xịt họng Keo ong Hữu cơ Ladrome 30 ml\r\n', 'chai-xit-hong-keo-ong-huu-co-propolis-30-ml', 'c2a795629d0748415fef66b954e5943a.jpg', '2675a4cd565d020d5bb2ef292b3a4d96.jpg#f016a6a0b3c651a1263b13f23e7c6aa5.jpg', 'Điện thoại Xiaomi Mi 9 chính hãng – smartphone cao cấp cấu hình “khủng long”', '<p><em><strong>(*) Điện thoại Xiaomi ch&iacute;nh h&atilde;ng, c&oacute; sẵn tiếng Việt, đầy đủ ứng dụng của Google. Bạn c&oacute; thể sử dụng ngay b&igrave;nh thường. Kh&aacute;c với c&aacute;c m&aacute;y h&agrave;ng x&aacute;ch tay: kh&ocirc;ng c&oacute; sẵn rom tiếng Việt, chặn c&aacute;c ứng dụng của Google</strong></em></p>\r\n\r\n<p>Sau sự ra mắt th&agrave;nh c&ocirc;ng của h&agrave;ng loạt smartphone cao cấp gi&aacute; rẻ, Xiaomi tiếp tục tr&igrave;nh l&agrave;ng chiếc điện thoại cao cấp mới với t&ecirc;n gọi l&agrave; Xiaomi Mi 9. L&agrave; thiết bị được trang bị vi xử l&yacute; Snapdragon 855 mạnh nhất của Qualcomm v&agrave; camera sở hữu độ ph&acirc;n giải cao 48MP. Xiaomi Mi 9 l&agrave; chiếc smartphone đầy hứa hẹn cho những ai th&iacute;ch chụp ảnh, với cấu h&igrave;nh camera rất cao.</p>\r\n\r\n<h3>Thiết kế, m&agrave;n h&igrave;nh Xiaomi Mi 9 cao cấp, hiện đại</h3>\r\n\r\n<p>Xiaomi Mi 9 mang thiết kế đặc trưng của phi&ecirc;n bản tiền nhiệm, mặt lưng k&iacute;nh được cường lực b&oacute;ng bẩy kết hợp với bộ khung nh&ocirc;m chắc chắn tạo n&ecirc;n vẻ đẹp h&agrave;i h&ograve;a khiến cho người d&ugrave;ng kh&ocirc;ng khỏi rời mắt. B&ecirc;n cạnh đ&oacute;, mặt lưng được v&aacute;t cong nhẹ v&agrave; bốn g&oacute;c được bo tr&ograve;n gi&uacute;p cho cảm gi&aacute;c cầm nắm được tốt hơn. Hơn nữa, m&aacute;y d&ugrave;ng m&agrave;n h&igrave;nh khuyết đỉnh nhưng được l&agrave;m nhỏ gọn hơn v&agrave; c&oacute; h&igrave;nh giọt nước gi&uacute;p cho m&aacute;y c&oacute; c&aacute;i nh&igrave;n tổng thể tinh tế hơn Mi 8.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/xiaomi/xiaomi-mi-9-1.jpg\" style=\"height:488px; width:840px\" />Về m&agrave;n h&igrave;nh, Xiaomi Mi 9 được trang bị m&agrave;n h&igrave;nh c&oacute; k&iacute;ch thước lớn 6.4 inch nhưng do được tối ưu phần viền n&ecirc;n tổng thể m&aacute;y vẫn rất vừa vặn trong l&ograve;ng b&agrave;n tay. Hơn nữa, phần nội dung được tr&agrave;n ra s&aacute;t m&eacute;p cạnh sẽ n&acirc;ng cao việc trải nghiệm giải tr&iacute; như xem phim hay chơi game. Ngo&agrave;i ra, độ ph&acirc;n giải Full HD+ tỉ lệ 19:9 gi&uacute;p hiển thị nhiều th&ocirc;ng tin hơn v&agrave; hỗ trợ tốt cho c&ocirc;ng việc lẫn giải tr&iacute; hơn so với 18:9 th&ocirc;ng thường</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/xiaomi/xiaomi-mi-9-2.jpg\" style=\"height:472px; width:840px\" /></p>\r\n\r\n<p>Hơn nữa, c&ocirc;ng nghệ m&agrave;n h&igrave;nh AMOLED đem lại m&agrave;u sắc hiển thị rực rỡ, nịnh mắt, độ s&aacute;ng v&agrave; độ tương phản cao, m&agrave;u đen s&acirc;u v&agrave; đậm v&agrave; đặc biệt l&agrave; khả năng tiết kiệm hơn so với c&aacute;c c&ocirc;ng nghệ m&agrave;n h&igrave;nh kh&aacute;c qua đ&oacute; cho thời gian sử dụng vượt trội&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .</p>\r\n\r\n<h3>Chụp ảnh ấn tượng với ba camera của Xiaomi Mi 9</h3>\r\n\r\n<p>Xiaomi Mi 9 sở hữu đến ba camera ở mặt sau, bao gồm camera ch&iacute;nh c&oacute; độ ph&acirc;n giải cực khủng 48MP cảm biến Sony IMX 586, camera phụ lần lượt l&agrave; 13MP v&agrave; 16MP, cảm biến TOF 3D (Time-of-Flight c&oacute; khả năng cảm biến nhận diện chiều s&acirc;u, khoảng c&aacute;ch 3D). Xiaomi Mi 9 chắc chắn sẽ khiến cho người d&ugrave;ng h&agrave;i l&ograve;ng với những bức ảnh ưng &yacute;.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/xiaomi/xiaomi-mi-9-3.jpg\" style=\"height:556px; width:840px\" /></p>\r\n\r\n<p>C&ograve;n camera trước của cũng được h&atilde;ng đặc biệt chăm ch&uacute;t khi trang bị độ ph&acirc;n giải 24MP Sony IMX576 t&iacute;ch hợp c&ocirc;ng nghệ tr&iacute; tuệ nh&acirc;n tạo AI c&ugrave;ng đ&egrave;n LED trợ s&aacute;ng, mang lại những bức ảnh selfie r&otilde; n&eacute;t v&agrave; ch&acirc;n thực.</p>\r\n\r\n<h3>Hiệu năng mạnh mẽ v&agrave; t&iacute;nh năng bảo mật v&acirc;n tay dưới m&agrave;n h&igrave;nh tr&ecirc;n Xiaomi Mi 9</h3>\r\n\r\n<p>Xiaomi Mi 9 được t&iacute;ch hợp vi xử l&yacute; hiện đang đứng đầu về hiệu năng Snapdragon 855. Đ&acirc;y l&agrave; chip c&oacute; nhiều ưu điểm như: c&oacute; khả năng truy cập dữ liệu với tốc độ 5G, CPU nhanh hơn tới 45%, xử l&yacute; đồ họa nhanh hơn 20% so với người tiền nhiệm, Snapdragon 845, Quay video 4K chế độ Portrait, hỗ trợ VR tr&ecirc;n di động với độ ph&acirc;n giải 8K v&agrave; tốc độ 120 fps. Nh&igrave;n chung, Snapdragon 855 kh&ocirc;ng chỉ mang lại cho người d&ugrave;ng khả năng xử l&yacute; mạnh hơn m&agrave; c&ograve;n nhiều trải nghiệm tuyệt vời hơn.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/xiaomi/xiaomi-mi-9-4.jpg\" style=\"height:473px; width:840px\" /></p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, RAM 6 GB cho người d&ugrave;ng khả năng chạy đa nhiệm mượt m&agrave;, đi c&ugrave;ng l&agrave; bộ nhớ trong 64 GB gi&uacute;p bạn lưu trữ dữ liệu c&aacute; nh&acirc;n thỏa th&iacute;ch. Xiaomi Mi 9 được chạy tr&ecirc;n hệ điều h&agrave;nh MIUI 10 dựa tr&ecirc;n nền tảng Android 9 Pie.</p>\r\n\r\n<p>Điểm nổi bật của chiếc m&aacute;y n&agrave;y l&agrave; cảm biến v&acirc;n tay dưới m&agrave;n h&igrave;nh. Cảm biến n&agrave;y được đặt ngay dưới m&agrave;n h&igrave;nh AMOLED v&agrave; được hoạt động khi đầu ng&oacute;n tay người d&ugrave;ng chạm l&ecirc;n bề mặt m&agrave;n h&igrave;nh, cảm biến sẽ ph&aacute;t ra c&aacute;c tia s&aacute;ng đọc dấu v&acirc;n tay, sau đ&oacute; chuyển th&ocirc;ng tin về bộ cảm biến quang học. Sau đ&oacute;, bộ xử l&yacute; AI sẽ ph&acirc;n t&iacute;ch v&agrave; ghi nhận 300 điểm kh&aacute;c biệt tr&ecirc;n v&acirc;n tay, như khoảng c&aacute;ch giữa c&aacute;c đường v&acirc;n v&agrave; cuối c&ugrave;ng l&agrave; ghi nhận mở kh&oacute;a thiết bị.</p>\r\n\r\n<p>Xiaomi Mi 9 sở hữu vi&ecirc;n pin c&oacute; dung lượng 3.700 mAh, cung cấp đủ điện năng để người d&ugrave;ng sử dụng trong v&ograve;ng một ng&agrave;y với c&aacute;c nhu cầu cơ bản. Ngo&agrave;i ra, m&aacute;y c&ograve;n t&iacute;ch hợp c&ocirc;ng nghệ sạc nhanh sạc nhanh 32W để tiết kiệm thời gian sạc pin.</p>\r\n', 2, 260, 16, 0, 11990000, 11990000, '2019-06-03 22:30:05', '1', '2019-06-27 16:40:11', '1', 0, 1);
INSERT INTO `db_product` (`id`, `catid`, `name`, `alias`, `avatar`, `img`, `sortDesc`, `detail`, `producer`, `number`, `number_buy`, `sale`, `price`, `price_sale`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `status`) VALUES
(14, 10, 'Chai Xịt họng Keo ong Hữu cơ Ladrome 30 ml\r\n', 'chai-xit-hong-keo-ong-huu-co-propolis-30-ml', 'b95189cc9d879cd58511ea653de13c56.jpg', '20ef52d914472f3d878625aad5ba4d86.jpg#01de8bfa781e18587fa0b4ccaf89cba6.jpg', 'Pin sạc dự phòng Xiaomi 20000 Gen 3 Type-C 2019 – Dung lượng pin khủng 20.000 mAh sử dụng được cho cả máy tính cá nhân', '<p><em>Ng&agrave;y nay những sản phẩm&nbsp;<a href=\"https://cellphones.com.vn/mobile.html\" target=\"_self\"><strong>smartphone</strong></a>&nbsp;hay m&aacute;y t&iacute;nh bảng được người d&ugrave;ng sử dụng rất nhiều để phụ phụ cho những nhu cầu giải tr&iacute;, l&agrave;m việc, đọc b&aacute;o, &hellip; Tuy vậy, những thiết bị n&agrave;y pin cũng kh&aacute; tr&acirc;u nhưng hầu hết ch&uacute;ng đều kh&ocirc;ng thể trụ được m&ocirc;t ng&agrave;y nếu như cường độ sử dụng cao. Ch&iacute;nh v&igrave; thế m&agrave; sạc dự ph&ograve;ng đang ng&agrave;y trở n&ecirc;n phổ biến đối với người d&ugrave;ng c&ocirc;ng nghệ hiện nay. Vừa qua th&igrave; Xiaomi đ&atilde; cho ra mắt<strong>&nbsp;pin sạc dự ph&ograve;ng Xiaomi 20000 Gen 3 Type-C 2019</strong>&nbsp;với dung lượng pin lớn, hỗ trợ sạc nhanh với c&ocirc;ng suất lớn v&agrave; mức gi&aacute; hợp l&yacute;.</em></p>\r\n\r\n<h3><strong>Thiết kế mạnh mẽ c&ugrave;ng chất liệu&nbsp;<a href=\"https://3dinsider.com/what-is-abs/\" target=\"_blank\">nhựa ABS</a>&nbsp;nhằm giảm thiểu trọng lượng tối đa</strong></h3>\r\n\r\n<p><strong>Pin dự ph&ograve;ng Xiaomi 20000 Gen 3 Type-C&nbsp;</strong>được nh&agrave; sản xuất Xiaomi kho&aacute;c l&ecirc;n m&igrave;nh một m&agrave;u đen huyền mạnh mẽ rất ph&ugrave; hợp với c&aacute;c thiết bị smartphone hiện nay. Đa số phụ kiện hiện nay sẽ sử dụng m&agrave;u đen v&igrave; điều n&agrave;y sẽ l&agrave;m nổi bật thiết bị th&ocirc;ng minh m&agrave; m&igrave;nh sử dụng.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/accessories/power_bank/pin-sac-du-phong-xiaomo-20000-gen3-typeC-den-hinh1.jpg.jpg\" style=\"height:620px; width:840px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Được thiết kế th&agrave;nh h&igrave;nh chữ nhật v&agrave; được bo tr&ograve;n cả bốn cạnh hết sức tinh tế th&igrave; cảm gi&aacute;c đầu ti&ecirc;n m&agrave; ch&uacute;ng ta c&oacute; thể cảm nhận ở pin sạc dự ph&ograve;ng n&agrave;y l&agrave; cầm nắm rất chắc tay. Xiaomi sử dụng chất liệu nhựa ABS thay v&igrave; nh&ocirc;m như một số sản phẩm trước đ&oacute; nhằm giảm thiểu trọng lượng của vi&ecirc;n pin. Với việc trọng lượng được tối giản hết mức th&igrave; ch&uacute;ng ta ho&agrave;n to&agrave;n c&oacute; thể mang sạc dự ph&ograve;ng n&agrave;y đi bất cứ đ&acirc;u trong c&aacute;c hoạt động hằng ng&agrave;y của m&igrave;nh.</p>\r\n\r\n<h3><strong><a href=\"https://cellphones.com.vn/phu-kien/pin-du-phong.html\" target=\"_blank\">Pin dự ph&ograve;ng</a>&nbsp;với dung lượng khủng 20000 mAh v&agrave; khả năng sạc nhanh l&ecirc;n đến 45W</strong></h3>\r\n\r\n<p>Kh&aacute;c với những vi&ecirc;n sạc dự ph&ograve;ng hiện c&oacute; tr&ecirc;n thị trường chỉ c&oacute; dung lượng pin tầm 10000 mAh th&igrave;&nbsp;<strong>pin dự ph&ograve;ng Xiaomi 20000 Gen 3 Type-C</strong>&nbsp;sở hữu dung lượng lưu trữ l&ecirc;n đến 20000 mAh c&oacute; thể sạc nhiều lần li&ecirc;n tiếp cho thiết bị của bạn m&agrave; kh&ocirc;ng cần phải nạp năng lượng lại trong thời gian ngắn.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/accessories/power_bank/pin-sac-du-phong-xiaomo-20000-gen3-typeC-den-hinh2.jpg.jpg\" style=\"height:620px; width:840px\" /></p>\r\n\r\n<p>Ngo&agrave;i ra, thiết bị c&ograve;n được trang bị 1&nbsp;cổng&nbsp;<a href=\"https://www.pcmag.com/article/332797/what-is-usb-c-an-explainer\" target=\"_blank\">USB-C</a>&nbsp;k&egrave;m theo 2 cổng USB-A. N&acirc;ng cấp lớn nhất của&nbsp;<em>Xiaomi 20000 Gen 3 Type-C</em>&nbsp;l&agrave; khả năng sạc nhanh l&ecirc;n đến 45W (cho cả đầu v&agrave;o v&agrave; đầu ra) th&ocirc;ng qua cổng USB-C.</p>\r\n\r\n<h3><strong>Sạc dự ph&ograve;ng đầu ti&ecirc;n đủ khả năng sạc cho laptop</strong></h3>\r\n\r\n<p>Nhờ c&ocirc;ng suất mạnh v&agrave; dung lượng rất lớn th&igrave;&nbsp;<strong>pin dự ph&ograve;ng Xiaomi 20000 Gen 3 Type-C</strong>&nbsp;l&agrave; sạc dự ph&ograve;ng đầu ti&ecirc;n của Xiaomi đủ sức để sạc được cho laptop. Để l&agrave;m được điều n&agrave;y, laptop sẽ cần phải c&oacute; cổng USB-C hỗ trợ&nbsp;<a href=\"https://www.androidauthority.com/usb-power-delivery-806266/\" target=\"_blank\">Power Delivery</a>(truyền tải điện).</p>\r\n', 1, 731, 110, 0, 790000, 790000, '2019-06-03 22:33:51', '1', '2019-06-23 17:54:59', '1', 0, 1),
(15, 6, 'Chai Xịt họng Keo ong Hữu cơ Ladrome 30 ml\r\n', 'chai-xit-hong-keo-ong-huu-co-propolis-30-ml', 'd2c4ca51c189e719b725035e7586f871.jpg', '84c6f5c124046b93c3d736a42581046f.jpg#736f3a5a22b4bc0e0c3178e4b7ed81ba.jpg', 'Máy tính xách tay Asus A512FA-EJ117T  với thiết kế màn hình tràn viền tinh tế và công nghệ sạc nhanh tiện lợi', '<p><em>Chắc hẳn ai cũng mong muốn trang bị cho m&igrave;nh một chiếc&nbsp;<a href=\"https://cellphones.com.vn/laptop.html\" target=\"_blank\"><strong>laptop</strong></a>&nbsp;với thiết kế ấn tượng, c&aacute;c t&iacute;nh năng hiện đại đi k&egrave;m một gi&aacute; th&agrave;nh hợp l&iacute;. Vậy th&igrave; chiếc&nbsp;<strong>laptop Asus A512FA-EJ117T</strong>&nbsp;chắc chắn sẽ l&agrave; một lựa chọn v&ocirc; c&ugrave;ng ho&agrave;n hảo, chắc chắn sẽ khiến người d&ugrave;ng h&agrave;i l&ograve;ng.</em></p>\r\n\r\n<h3><strong>Thiết kế gọn nhẹ v&agrave; được trang bị hệ thống tản nhiệt hiện đại</strong></h3>\r\n\r\n<p>Asus A512FA-EJ117T mang tr&ecirc;n m&igrave;nh một sự trang nh&atilde; trong thiết kế, với trọng lượng 1.6kg v&agrave; k&iacute;ch thước 357.2 x 230.4 x 19.9 mm khiến chiếc&nbsp;<a href=\"https://cellphones.com.vn/laptop/asus.html\" target=\"_blank\"><strong>laptop Asus</strong></a>&nbsp;n&agrave;y v&ocirc; c&ugrave;ng gọn nhẹ, rất ph&ugrave; hợp với c&aacute;c đối tượng như học sinh, sinh vi&ecirc;n hay nh&acirc;n vi&ecirc;n văn ph&ograve;ng v&igrave; t&iacute;nh chất th&acirc;n thiện với nhu cầu di chuyển của m&igrave;nh.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/laptop/laptop-asus-a512fa-ej117t-core-i3-8145u-ba-1.jpg\" style=\"height:506px; width:840px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>C&aacute;c đường n&eacute;t của chiếc laptop n&agrave;y v&ocirc; c&ugrave;ng vu&ocirc;ng vức, c&aacute;c mặt phẳng được gia c&ocirc;ng trơn nhẵn v&ocirc; c&ugrave;ng tỉ mỉ. Đế của Asus A512FA-EJ117T được thiết kế n&acirc;ng cao hơn 2&ordm; so với mặt tiếp x&uacute;c, tạo điều kiện thuận tiện cho thao t&aacute;c của người d&ugrave;ng. Ngo&agrave;i ra, chiếc laptop n&agrave;y c&ograve;n được trang bị hệ thống tản hiệu v&ocirc; c&ugrave;ng hiệu quả.</p>\r\n\r\n<h3><strong>M&agrave;n h&igrave;nh tr&agrave;n viền ấn tượng c&ugrave;ng c&ocirc;ng nghệ m&agrave;n h&igrave;nh Led backlit FHD</strong></h3>\r\n\r\n<p>Với Asus A512FA-EJ117T người d&ugrave;ng sẽ được trải nghiệm như đang sử dụng một m&agrave;n h&igrave;nh tr&agrave;n viền v&ocirc; c&ugrave;ng ấn tượng. Tỉ lệ&nbsp;screen-to-body-ratio đạt được đến 88%, c&ugrave;ng k&iacute;ch thước m&agrave;n h&igrave;nh 15.6 inches. Với c&aacute;c con số n&agrave;y, bạn sẽ c&oacute; một kh&ocirc;ng gian hiển thị ho&agrave;n hảo.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/laptop/laptop-asus-a512fa-ej117t-core-i3-8145u-ba-2.jpg\" style=\"height:428px; width:840px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Song song đ&oacute;, với độ ph&acirc;n giải l&agrave; 1920 x 1080, Asus đ&atilde; th&ocirc;ng qua chiếc laptop n&agrave;y để mang đến cho người d&ugrave;ng chất lượng hiển thị h&igrave;nh ảnh sống động, m&agrave; kh&ocirc;ng hề khiến bạn bị l&oacute;a mắt khi theo d&otilde;i. C&ocirc;ng nghệ m&agrave;n h&igrave;nh Led backlit FHD với cấu tạo si&ecirc;u mỏng v&agrave; ti&ecirc;u thụ &iacute;t điện năng hơn cũng như khả năng t&aacute;i chế cao v&igrave; kh&ocirc;ng chứa c&aacute;c th&agrave;nh phần đạt mức nguy hiểm.</p>\r\n\r\n<h3><strong>Hiệu năng mạnh mẽ chạy tr&ecirc;n phi&ecirc;n bản hệ điều h&agrave;nh&nbsp;<a href=\"https://cellphones.com.vn/sforum/windows-10-sap-co-them-theme-mau-trang-cuc-sang\" target=\"_blank\">Windows 10</a>&nbsp;c&ugrave;ng khả năng lưu trữ lớn</strong></h3>\r\n\r\n<p>Asus Vivobook 15 A512FA-EJ117T sở hữu CPU&nbsp;<a href=\"https://ark.intel.com/content/www/vn/vi/ark/products/149090/intel-core-i3-8145u-processor-4m-cache-up-to-3-90-ghz.html\" target=\"_blank\">Intel Core&nbsp;i3-8145U</a>&nbsp;2.1 GHz mang đến hiệu năng v&agrave; tốc độ xử l&iacute; v&ocirc; c&ugrave;ng nhanh nhạy, c&ugrave;ng khả năng tiết kiệm điện năng hiệu quả. Với dung lượng ram 4GB hỗ trợ đắc lực cho việc lưu trữ v&agrave; xử l&iacute; c&aacute;c t&aacute;c vụ một c&aacute;ch mượt m&agrave; nhất. Việc lưu trữ th&ocirc;ng tin, dữ liệu trở n&ecirc;n v&ocirc; c&ugrave;ng đơn giản v&agrave; thoải m&aacute;i với 1TB ổ cứng HDD. Nhờ đ&oacute; m&agrave; Asus Vivobook 15 th&aacute;ch thức c&aacute;c phần mềm đồ họa lẫn c&aacute;c loại game nặng nhất.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/laptop/laptop-asus-a512fa-ej117t-core-i3-8145u-ba-3.jpg\" style=\"height:426px; width:840px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Touchpad của Asus A512FA-EJ117T rất nhạy lại v&ocirc; c&ugrave;ng dễ sử dụng, ngo&agrave;i ra c&ograve;n t&iacute;ch hợp nhận diện v&acirc;n tay tiện lợi, nhờ đ&oacute; m&agrave; khả năng bảo mật tốt hơn so với mật khẩu bằng b&agrave;n ph&iacute;m.</p>\r\n\r\n<h3><strong>Khả năng sạc nhanh c&ugrave;ng c&ocirc;ng nghệ bảo vệ pin&nbsp;<a href=\"https://www.asus.com/us/support/FAQ/1032726/\" target=\"_blank\">Battery Health Charging</a></strong></h3>\r\n\r\n<p>Sở hữu vi&ecirc;n&nbsp;<a href=\"https://electronics.howstuffworks.com/everyday-tech/lithium-ion-battery.htm\" target=\"_blank\">pin Li-ion</a>&nbsp;2 Cells 37 Whrs&nbsp;mang đến khả năng&nbsp;sử dụng gần như cả ng&agrave;y cho c&aacute;c hoạt động th&ocirc;ng thường. Ngo&agrave;i ra, khả năng sạc cực nhanh l&agrave; một trong những ưu điểm vượt trội của Asus A512FA-EJ117T, dung lượng pin sẽ đạt mức 60% trong chưa đầy 50 ph&uacute;t.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/laptop/laptop-asus-a512fa-ej117t-core-i3-8145u-ba-4.jpg\" style=\"height:452px; width:840px\" /></p>\r\n', 2, 120, 6, 0, 11490000, 11490000, '2019-06-03 22:36:43', '1', '2019-06-23 17:54:37', '1', 0, 1),
(16, 11, 'Chai Xịt họng Keo ong Hữu cơ Ladrome 30 ml\r\n', 'chai-xit-hong-keo-ong-huu-co-propolis-30-ml', '441c401340a20e12eb44d159e8cbd72a.jpg', '2d6c253a47b945c830cf2ea731f995ed.jpg#305e036a276dfa0d1844cfc305aa26f0.jpg#d74c3c405b20ab5bdc354bfc2ed27ac4.jpg#220ab7ba8f2149a182a33b0789b938e9.jpg', 'Apple MacBook Pro 13 inch 128GB MPXQ2 (2017)', '<h3>Thiết kế v&agrave; ngoại h&igrave;nh Apple MacBook Pro 13 inch 128GB MPXQ2</h3>\r\n\r\n<p>Sở hữu thiết kế mỏng v&agrave; nhẹ với m&agrave;n h&igrave;nh LED-backlit IPS LCD, 2560 x 1600 pixels, 13.3 inches l&agrave;m cho h&igrave;nh ảnh hiển thị cực k&igrave; sắc n&eacute;t v&agrave; thực tế.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/laptop/macbook/apple-macbook-pro-13-inch-128gb-mpxq2-1.jpg\" style=\"height:360px; width:640px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>M&aacute;y được tạo n&ecirc;n từ kim loại nguy&ecirc;n khối, tuy nhi&ecirc;n ch&uacute;ng c&ograve;n mỏng v&agrave; nhẹ hơn rất nhiều so với phi&ecirc;n bản cũ với trọng lượng chỉ 1.37kg.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Hiệu suất cực khủng của Apple MacBook Pro 13 inch 128GB MPXQ2</h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/laptop/macbook/apple-macbook-pro-13-inch-128gb-mpxq2-3.jpg\" style=\"height:427px; width:640px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Với phi&ecirc;n bản Apple MacBook Pro 13 inch 2017 n&agrave;y, người d&ugrave;ng đảm bảo h&agrave;i l&ograve;ng với tốc độ xử l&iacute; Intel Core i5 Dual-core 2.3 GHz, Turbo Boost l&ecirc;n đến 3.6 GHz, 64MB eDRAM, bộ RAM 8GB, bộ nhớ lưu trữ 128 GB PCIe, đồ họa Intel Iris Plus Graphics 640 xử l&iacute; đồ họa nhanh hơn 130% thực sự đ&atilde; chinh phục to&agrave;n bộ người d&ugrave;ng.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Apple MacBook Pro 13 inch 128GB MPXQ2 lưu lượng pin cực bền</h3>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/laptop/macbook/apple-macbook-pro-13-inch-128gb-mpxq2-4.jpg\" style=\"height:360px; width:640px\" /></p>\r\n', 2, 61, 4, 0, 29900000, 29900000, '2019-06-03 22:40:49', '1', '2019-06-23 17:54:42', '1', 0, 1),
(18, 6, 'Chai Xịt họng Keo ong Hữu cơ Ladrome 30 ml\r\n', 'chai-xit-hong-keo-ong-huu-co-propolis-30-ml', '057abb3c59a567ad0a730422fe2fe2a0.jpg', 'bfa43fbff54788626a7f5b876ad1e573.jpg#7b7b2921713608c27ec12d66c7973fd2.jpg#a64986a8622edd9744fe5eecd2878fb7.jpg#6da3e971273bdff3b680b42d12adb749.jpg', 'Máy tính xách tay Asus Zenbook 14 UX433FA-A6113T: Dòng laptop mỏng nhẹ và đầy mạnh mẽ', '<p><em><a href=\"https://cellphones.com.vn/laptop/asus.html\" target=\"_blank\"><strong>Laptop Asus</strong></a>&nbsp;Zenbook lu&ocirc;n được biết đến như một trong những d&ograve;ng laptop mỏng nhẹ v&agrave; đẹp v&agrave; cũng l&agrave; sự lựa chọn thường thấy ở giới doanh nh&acirc;n - nh&acirc;n vi&ecirc;n văn ph&ograve;ng. Với phi&ecirc;n bản&nbsp;<strong>Asus Zenbook UX433FA-A6113T</strong>. Asus tiếp tục cải tiến Zenbook 14 với nhiều n&acirc;ng cấp về m&agrave;n h&igrave;nh cũng như vi xử l&yacute;.</em></p>\r\n\r\n<h3><strong>Thiết kế si&ecirc;u mỏng, gọn nhẹ với độ d&agrave;y 16mm v&agrave; trọng lượng 1kg</strong></h3>\r\n\r\n<p>Khung m&aacute;y si&ecirc;u gọn nhẹ đ&atilde; l&agrave;m n&ecirc;n mẫu laptop 14-inch nhỏ gọn nhất từ trước đến nay, m&agrave; tr&ecirc;n thực tế chỉ c&oacute; k&iacute;ch thước xấp xỉ một tờ giấy A4 v&agrave; c&ograve;n l&agrave; một trong những chiếc m&aacute;y t&iacute;nh x&aacute;ch tay nhỏ nhất thế giới với độ d&agrave;y 16mm v&agrave; nặng 1.2kg.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/laptop/Laptop-Asus-Zenbook-14-UX433FA-A6113T-1.jpg\" style=\"height:500px; width:840px\" /></p>\r\n\r\n<p>Lớp ho&agrave;n thiện v&acirc;n kim loại đồng t&acirc;m lấy cảm hứng từ Zen đặc trưng tr&ecirc;n nắp lưng c&ugrave;ng hai m&agrave;u sắc lựa chọn: xanh, bạc. Cả hai mẫu thiết kế n&agrave;y đều được nhấn mạnh bằng sự tương phản của panel viền m&agrave;u &agrave;ng hồng ph&iacute;a tr&ecirc;n b&agrave;n ph&iacute;m, l&agrave;m t&ocirc;n l&ecirc;n th&ecirc;m vẻ sang trọng.</p>\r\n\r\n<h3><strong>M&agrave;n h&igrave;nh kh&ocirc;ng</strong><strong>&nbsp;viền&nbsp;</strong><a href=\"https://www.asus.com/support/FAQ/1038282/\" target=\"_blank\"><strong>NanoEdge</strong></a><strong>&nbsp;(1920x1080)</strong>&nbsp;<strong>thể hiện m&agrave;u sắc tối ưu</strong><strong>,&nbsp;</strong><strong>g&oacute;c nh&igrave;n rộng</strong></h3>\r\n\r\n<p>Asus Zenbook 14 UX433FA-A6113T đ&atilde; trang bị m&agrave;n h&igrave;nh độ ph&acirc;n giải cao (1920x1080), r&otilde; n&eacute;t v&agrave; trong trẻo gi&uacute;p cho từng h&igrave;nh ảnh đều trở n&ecirc;n tốt nhất với g&oacute;c nh&igrave;n rộng 178 , m&agrave;u sắc ch&iacute;nh x&aacute;c v&agrave; sống động.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/laptop/Laptop-Asus-Zenbook-14-UX433FA-A6113T-2.jpg\" style=\"height:500px; width:840px\" /></p>\r\n\r\n<p>M&agrave;n h&igrave;nh n&agrave;y c&ograve;n hỗ trợ những c&ocirc;ng nghệ độc quyền của ASUS &ndash; trong đ&oacute; c&oacute;&nbsp;<a href=\"https://www.asus.com/vn/support/FAQ/1009986/\" target=\"_blank\">ASUS Splendid</a>&nbsp;v&agrave;&nbsp;<a href=\"https://www.asus.com/me-en/support/FAQ/1038464/\" target=\"_blank\">ASUS Tru2Life Video</a>&nbsp;&ndash;&nbsp;tinh chỉnh c&aacute;c th&ocirc;ng số m&agrave;n h&igrave;nh để đảm bảo độ thoải m&aacute;i tối đa cho mắt cũng như khả năng thể hiện m&agrave;u sắc tối ưu cho mọi loại nội dung.</p>\r\n\r\n<h3><strong>V</strong><strong>i xử l&yacute;&nbsp;<a href=\"https://ark.intel.com/content/www/vn/vi/ark/products/149088/intel-core-i5-8265u-processor-6m-cache-up-to-3-90-ghz.html\" target=\"_blank\">Intel&reg; Core&trade; i5-8265U</a>&nbsp;trải</strong><strong>&nbsp;nghiệm thoải m&aacute;i đa t&aacute;c vụ, khai ph&aacute; mọi dữ liệu</strong></h3>\r\n\r\n<p>ZenBook 14 được x&acirc;y dựng để mang đến sức mạnh kh&ocirc;ng giới hạn cho trải nghiệm m&aacute;y t&iacute;nh v&ocirc; c&ugrave;ng nhẹ nh&agrave;ng khi di chuyển. Trang bị bộ vi xử l&yacute; Intel&reg; Core&trade; i5-8265U Kabylake Refresh thế hệ thứ 8 mới nhất c&ugrave;ng với tốc độ khởi động ứng dụng si&ecirc;u tốc c&oacute; được từ 256GB SSD NVMe, ZenBook 14 sẽ kh&ocirc;ng bao giờ để bạn phải chờ đợi.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/laptop/Laptop-Asus-Zenbook-14-UX433FA-A6113T-3.jpg\" style=\"height:500px; width:840px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>D&ugrave; bạn đang soạn lập t&agrave;i liệu phức tạp, khai ph&aacute; dữ liệu, chỉnh sửa ảnh, bi&ecirc;n tập video hay chỉ đơn giản l&agrave; giải tr&iacute; với một v&aacute;n game, Asus Zenbook 14 UX433FA-A6113T đều cho ph&eacute;p bạn l&agrave;m nhiều hơn v&agrave; nhanh hơn.</p>\r\n\r\n<h3><strong><a href=\"https://www.computerworld.com/article/3244347/what-is-windows-hello-microsofts-biometrics-security-system-explained.html\" target=\"_blank\">Window Hello</a>&nbsp;mở kho&aacute; bằng khu&ocirc;n mặt c&ugrave;ng&nbsp;<a href=\"https://cellphones.com.vn/sforum/schannel-amazon-alexa-tro-ly-ao-voi-tiem-nang-danh-bai-siri-va-google-assitant-nay-co-gi-hay\" target=\"_blank\">trợ l&yacute; ảo Alexa</a>&nbsp;gi&uacute;p bạn thực hiện thao t&aacute;c dễ d&agrave;ng</strong></h3>\r\n\r\n<p>Phần cứng sinh trắc học ti&ecirc;n tiến hoạt động liền mạch với Windows Hello v&agrave; Cortana, nhờ đ&oacute; bạn c&oacute; thể đ&aacute;nh thức m&aacute;y t&iacute;nh v&agrave; chỉ cần đăng nhập bằng khu&ocirc;n mặt v&agrave; ra lệnh cho Asus Zenbook 14 bằng giọng n&oacute;i.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/laptop/Laptop-Asus-Zenbook-14-UX433FA-A6113T-4.jpg\" style=\"height:500px; width:840px\" /></p>\r\n\r\n<p>Th&ecirc;m v&agrave;o đ&oacute;, Alexa bởi Microsoft l&agrave; trợ l&yacute; ảo, sử dụng điện to&aacute;n đ&aacute;m m&acirc;y v&agrave; AI gi&uacute;p bạn thực hiện c&aacute;c c&ocirc;ng việc, giải tr&iacute;, t&igrave;m th&ocirc;ng tin chung, v.v... Chỉ cần y&ecirc;u cầu chơi nhạc, đọc tin tức, điều khiển ng&ocirc;i nh&agrave; th&ocirc;ng minh, kể chuyện cười,... Alexa sẽ trả lời ngay lập tức.</p>\r\n\r\n<h3><strong>C&ocirc;ng</strong><strong>&nbsp;nghệ&nbsp;</strong><strong><a href=\"https://www.pcworld.idg.com.au/mediareleases/10909/asus-sonicmaster-composes-new-notebook-audio/\" target=\"_blank\">SonicMaster&nbsp;</a>khuếch</strong><strong>&nbsp;đại&nbsp;</strong><strong>&acirc;m thanh lớn hơn m&agrave; kh&ocirc;ng bị m&eacute;o tiếng</strong></h3>\r\n\r\n<p>Để tạo n&ecirc;n c&ocirc;ng nghệ &acirc;m thanh ASUS SonicMaster thế hệ tiếp theo, đội ngũ Golden Ear của ASUS đ&atilde; hợp t&aacute;c với c&aacute;c chuy&ecirc;n gia về hệ thống &acirc;m thanh xe hơi v&agrave; gia đ&igrave;nh lừng danh, Harman Kardon.</p>\r\n', 2, 180, 13, 10, 22990000, 22490000, '2019-06-04 23:28:14', '1', '2019-06-23 17:54:25', '1', 0, 1),
(19, 9, 'Chai Xịt họng Keo ong Hữu cơ Ladrome 30 ml\r\n', 'chai-xit-hong-keo-ong-huu-co-propolis-30-ml', '2fffae1beec0f68c13e8c9864445e29d.jpg', 'e7de832e8da20d696a99e562a2d77921.jpg#19f19b95a5e3da0faf795a102fc8f432.jpg', 'Máy tính xách tay HP Pavilion 15-cs0014TU 4MF01PA – Laptop phù hợp với mọi tầng lớp', '<p><em>D&ograve;ng&nbsp;<a href=\"https://cellphones.com.vn/laptop/hp.html\" target=\"_blank\"><strong>m&aacute;y t&iacute;nh x&aacute;ch tay của HP</strong></a>&nbsp;chắc chắn l&agrave; c&aacute;i t&ecirc;n rất phổ biến với giới văn ph&ograve;ng với ti&ecirc;u ch&iacute;: gi&aacute; cả phải chăng, cấu h&igrave;nh tốt, thiết kế đẹp mắt &hellip; Ch&iacute;nh v&igrave; thế,&nbsp;<strong>laptop HP Pavilion 15-cs0014TU 4MF01PA</strong>&nbsp;lu&ocirc;n l&agrave; sự lựa chọn của đ&ocirc;ng đảo của người d&ugrave;ng, từ học sinh, sinh vi&ecirc;n, nh&acirc;n vi&ecirc;n văn ph&ograve;ng,&hellip;</em></p>\r\n\r\n<h3><strong>Thiết kế nh&ocirc;m cao cấp</strong>&nbsp;<strong>với độ mỏng chỉ 17.9mm, c&aacute;c đường cong bo tr&ograve;n tỉ mỉ tinh tế</strong></h3>\r\n\r\n<p>Laptop HP Pavilion 15-cs0014TU 4MF01PA c&oacute; thiết kế nh&ocirc;m đẹp mắt, cao cấp. C&aacute;c đường n&eacute;t tr&ecirc;n thiết bị đều được ho&agrave;n thiện tỉ mỉ, tinh tế với độ mỏng chỉ 17.9mm gi&uacute;p người d&ugrave;ng c&oacute; thể thoải m&aacute;i mang đi để sử dụng bất cứ l&uacute;c n&agrave;o.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/laptop/HP/Laptop_HP_Pavilion_15-cs0014TU_4MF01PA_1__.jpg\" style=\"height:500px; width:840px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Tr&ecirc;n nắp laptop được sơn 1 lớp tr&aacute;ng bạc &iacute;t b&aacute;m v&acirc;n tay v&agrave; bụi bẩn. C&aacute;c đường cong bo tr&ograve;n bao quanh th&acirc;n m&aacute;y kết hợp 2 n&uacute;t nhựa để người d&ugrave;ng đ&aacute;nh m&aacute;y thoải m&aacute;i hơn &ndash; thiết kế n&agrave;y cũng gần giống 2 đế nẫy của c&aacute;c b&agrave;n ph&iacute;m rời.</p>\r\n\r\n<h3><strong>M&agrave;n h&igrave;nh 15.6 inch Full HD với&nbsp;<a href=\"https://www.viewsonic.com/library/photography/what-is-an-ips-monitor-panel\" target=\"_blank\">tấm nền IPS</a>&nbsp;cho h&igrave;nh ảnh r&otilde; n&eacute;t v&agrave; sống động</strong></h3>\r\n\r\n<p>Laptop HP Pavilion 15-cs0014TU 4MF01PA c&oacute; k&iacute;ch thước 15.6 inch độ ph&acirc;n giải Full HD tạo ra h&igrave;nh ảnh r&otilde; n&eacute;t v&agrave; sống động khi phục vụ giải tr&iacute;, xem phim hay c&aacute;c c&ocirc;ng việc đồ hoạ đều thể hiện tốt tr&ecirc;n m&agrave;n h&igrave;nh.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/laptop/HP/Laptop_HP_Pavilion_15-cs0014TU_4MF01PA_2_.jpg\" style=\"height:500px; width:840px\" /></p>\r\n\r\n<p>Laptop c&ograve;n sử dụng c&ocirc;ng nghệ tấm nền IPS anti-glare cho g&oacute;c nh&igrave;n l&ecirc;n tới 178 độ gi&uacute;p người dung nh&igrave;n nghi&ecirc;ng kh&ocirc;ng bị thay đổi m&agrave;u sắc. Phần viền hai b&ecirc;n m&agrave;n h&igrave;nh được chế t&aacute;c mỏng hơn c&ograve;n 6.5 mm tương đương c&aacute;c laptop cao cấp kh&aacute;c tr&ecirc;n thị trường.</p>\r\n\r\n<h3><strong>Vi xử l&yacute;&nbsp;<a href=\"https://ark.intel.com/content/www/us/en/ark/products/137977/intel-core-i3-8130u-processor-4m-cache-up-to-3-40-ghz.html\" target=\"_blank\">Intel Core i3-8130U</a>&nbsp;v&agrave; ổ cứng 1TB phục vụ tốt nhu cầu l&agrave;m việc, giải tr&iacute;</strong></h3>\r\n\r\n<p>Laptop HP Pavilion 15-cs0014TU 4MF01PA được trang bị vi xử l&yacute; Intel Core i3-8130U tốc độ 2.2 GHz, cho thời gian xử l&yacute; dữ liệu nhanh hơn 45% v&agrave; hiệu năng tăng 25% so với d&ograve;ng trước đ&oacute;. B&ecirc;n cạnh đ&oacute;, bộ nhớ RAM DDR4 dung lượng 4 GB đ&aacute;p ứng tốt c&aacute;c nhu cầu học tập, l&agrave;m việc văn ph&ograve;ng hay giải tr&iacute;.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/laptop/HP/Laptop_HP_Pavilion_15-cs0014TU_4MF01PA_3_.jpg\" style=\"height:500px; width:840px\" /></p>\r\n\r\n<p>Sản phẩm kh&ocirc;ng hổ trợ card đồ hoạ rời m&agrave; chỉ d&ugrave;ng GPU t&iacute;ch hợp&nbsp;<a href=\"https://www.notebookcheck.net/Intel-UHD-Graphics-620-GPU-Review-Benchmarks-and-Specs.239936.0.html\" target=\"_blank\">Intel UHD 620</a>,&nbsp;để phục vụ nhu cầu chơi 1 số game online hiện nay. K&egrave;m theo đ&oacute; l&agrave; ổ cứng HDD l&ecirc;n đến 1TB gi&uacute;p người dung tha hồ lưu trữ th&ocirc;ng tin c&aacute; nh&acirc;n, t&agrave;i liệu v&agrave; nhiều game hơn.</p>\r\n\r\n<h3><strong>Trang bị thỏi pin 3 Cell 41Wh cung cấp năng lượng sử dụng đến 7 tiếng</strong></h3>\r\n\r\n<p>Laptop HP Pavilion 15-cs0014TU 4MF01PA &nbsp;được trang bị 3 Cell pin 41Wh cho thời gian sử dụng của m&aacute;y kh&aacute; do t&iacute;ch hợp loại chip tiết kiệm điện (i3-8130U). V&igrave; vậy, thỏi pin của m&aacute;y ho&agrave;n to&agrave;n c&oacute; thể gi&uacute;p người d&ugrave;ng sử dụng mượt m&agrave; trong thời gian kh&aacute; d&agrave;i.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/laptop/HP/Laptop_HP_Pavilion_15-cs0014TU_4MF01PA_4_.jpg\" style=\"height:500px; width:840px\" /></p>\r\n\r\n<p>Thực tế cho thấy, laptop khi dung để soạn thảo văn bản, xử l&yacute; c&ocirc;ng việc văn ph&ograve;ng th&igrave; sẽ sử dụng được đến 7 tiếng. Ngo&agrave;i ra, HP Pavilion 15-cs0014TU c&ograve;n hỗ trợ c&ocirc;ng nghệ sạc nhanh HP FastCharge cho ph&eacute;p sạc tới 50% pin chỉ sau khoảng 45 ph&uacute;t vừa d&ugrave;ng vừa sạc.</p>\r\n\r\n<h3><strong>Thiết kế b&agrave;n ph&iacute;m</strong>&nbsp;<strong>chiclet v&agrave; touch pad rộng r&atilde;i, tạo cảm gi&aacute;c thoải khi nhập liệu</strong></h3>\r\n\r\n<p>HP Pavilion 15-cs0014TU được thiết kế b&agrave;n ph&iacute;m kiểu chiclet với khoảng c&aacute;ch giữa c&aacute;c</p>\r\n\r\n<p>Bắt được t&acirc;m l&yacute; đ&oacute;, HP đ&atilde; trang bị cho laptop HP Pavilion 15-cs0014TU 4MF01PA hai dải loa B&amp;O được đặt ở ph&iacute;a tr&ecirc;n khu vực b&agrave;n ph&iacute;m. Nh&igrave;n chung loa của m&aacute;y c&oacute; &acirc;m lượng lớn, dải &acirc;m treble, dải trung t&aacute;i tạo &acirc;m thanh trong vắt, gi&uacute;p mang lại chất lượng &acirc;m thanh tuyệt vời cho người d&ugrave;ng.</p>\r\n\r\n<h3><strong>HP Pavilion 15-cs0014TU 4MF01PA cung cấp&nbsp;<a href=\"https://cellphones.com.vn/sforum/windows-10-sap-co-them-theme-mau-trang-cuc-sang\" target=\"_blank\">Win10</a>&nbsp;bản quyền, k&egrave;m theo chế độ bảo h&agrave;nh tại nh&agrave;</strong></h3>\r\n\r\n<p>Win 10 bản quyền ở laptop cung cấp độ an to&agrave;n cao, hạn chế tối đa virus v&agrave; nguy cơ mất dữ liệu. Laptop sử dụng ổn định, tương th&iacute;ch với hầu hết game v&agrave; ứng dụng, thường xuy&ecirc;n được cập nhật, sửa lỗi từ nh&agrave; cung cấp. Đặc biệt l&agrave; hạn sử dụng vĩnh viễn kh&ocirc;ng cần mua đi mua lại nhiều lần.</p>\r\n\r\n<p>CellphoneS lu&ocirc;n nỗ lực hết m&igrave;nh trong việc đảm bảo chất lượng sản phẩm, cũng như dịch vụ hỗ trợ sau b&aacute;n h&agrave;ng. Laptop sẽ bao gồm chế độ bảo h&agrave;nh tại nh&agrave; của hệ thống b&aacute;n h&agrave;ng uy t&iacute;n CellPhoneS. Ch&uacute;ng t&ocirc;i lu&ocirc;n c&oacute; đội ngũ kĩ thuật vi&ecirc;n chuy&ecirc;n nghiệp, c&oacute; nhiều năm kinh nghiệm trong việc bảo h&agrave;nh. Gi&uacute;p kh&aacute;ch h&agrave;ng tiết kiệm được thời gian v&agrave; hạn chế đi lại khi laptop c&oacute; bất k&igrave; trục trặc g&igrave;, nh&acirc;n vi&ecirc;n của ch&uacute;ng t&ocirc;i sẽ c&oacute; mặt kịp thời để xử l&yacute;.</p>\r\n', 2, 140, 22, 10, 13890000, 11890000, '2019-06-04 23:30:36', '1', '2019-06-23 17:54:19', '1', 0, 1),
(20, 5, 'Chai Xịt họng Keo ong Hữu cơ Ladrome 30 ml\r\n', 'chai-xit-hong-keo-ong-huu-co-propolis-30-ml', '7041fb19db5fc6b0232f6b29914424d6.jpg', '8eaed859be980f79ae65426b01be5d21.jpg#e8a82e95d2df07f19ffc79c0f06e5ca7.jpg#84dc9f701c61f6a00b28ad8766ad6159.jpg', 'Máy tính xách tay Dell Vostro 15 5581 - mẫu laptop nắm bắt được công nghệ tiên tiến, người dùng luôn được trải nghiệm độc đáo', '<p><em>Với thiết kế lu&ocirc;n giữ được sự đơn giản nhưng hiệu quả m&agrave; d&ograve;ng&nbsp;<strong>Dell Vostro 15 5581</strong>&nbsp;l&agrave;m việc n&agrave;y mang lại thật sự đ&aacute;ng t&igrave;m hiệu. Lu&ocirc;n nắm bắt được c&ocirc;ng nghệ ti&ecirc;n tiến, người d&ugrave;ng lu&ocirc;n được trải nghiệm những c&ocirc;ng nghệ mới m&agrave;&nbsp;Dell&nbsp;mang lại được sự trải nghiệm tốt hơn c&aacute;c&nbsp;ứng dụng&nbsp;đ&aacute;p ứng cho c&ocirc;ng việc cũng như tăng th&ecirc;m phần th&uacute; vị trong thời gian giải tr&iacute;. Hỗ trợ bảo mật v&acirc;n tay gi&uacute;p người d&ugrave;ng c&oacute; thể lưu trữ th&ocirc;ng tin tốt hơn, an to&agrave;n hơn chỉ với 1 lần chạm.</em></p>\r\n\r\n<h3><strong>Thiết kế vỏ nh&ocirc;m tinh giản, chuy&ecirc;n nghiệp</strong></h3>\r\n\r\n<p>G&oacute;p phần v&agrave;o phong th&aacute;i chỉnh chu cho người d&ugrave;ng c&ocirc;ng sở hiện đại, Dell Vostro 15 5581 c&oacute; cấu tr&uacute;c vỏ nh&ocirc;m, t&ocirc;ng m&agrave;u x&aacute;m trung t&iacute;nh th&iacute;ch hợp cho người d&ugrave;ng nam lẫn nữ.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/laptop/Dell/DELL-VOSTRO-15-5581-1.jpg\" style=\"height:487px; width:840px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dell Vostro 15 5581 được thiết kế đơn giản nhưng kh&ocirc;ng k&eacute;m phần sang trọng, tinh tế với lớp vỏ ngo&agrave;i cứng c&aacute;p, chắc chắn gi&uacute;p bảo vệ tốt c&aacute;c linh kiện b&ecirc;n trong v&agrave; c&aacute;c g&oacute;c cạnh được bo tr&ograve;n nhẹ tạo cảm gi&aacute;c thoải m&aacute;i khi cầm nắm. Ngo&agrave;i ra, với k&iacute;ch thước tổng thể 36.1 x 24.9 x 1.8cm v&agrave; trọng lượng chỉ khoảng 1.9kg, bạn c&oacute; thể bỏ m&aacute;y v&agrave;o t&uacute;i x&aacute;ch hoặc balo v&agrave; mang theo b&ecirc;n m&igrave;nh đến bất cứ nơi n&agrave;o bạn muốn để sử dụng khi cần.</p>\r\n\r\n<h3><strong>M&agrave;n h&igrave;nh Full&nbsp;</strong><strong>H</strong><strong>D với&nbsp;<a href=\"https://www.tomshardware.com/reviews/ips-in-plane-switching-definition,5748.html\" target=\"_blank\">tấm nền IPS</a></strong><strong>&nbsp;c&ugrave;ng đ&egrave;n nền LED</strong><strong>&nbsp;chống ch&oacute;i</strong></h3>\r\n\r\n<p>Sử dụng tấm nền IPS với điểm mạnh nằm ở g&oacute;c nh&igrave;n rộng, chống l&oacute;a hỗ trợ người d&ugrave;ng c&oacute; thể nh&igrave;n từ nhiều g&oacute;c độ cũng như sử dụng ngay trong m&ocirc;i trường c&oacute; &aacute;nh nắng trực tiếp. Với độ bền cao hơn, duy tr&igrave; tu&ocirc;i thọ sản phẩm l&acirc;u hơn, bền bỉ hơn c&ugrave;ng độ ph&acirc;n giải 1920 x 1080 với h&igrave;nh ảnh chuẩn&nbsp;Full HD&nbsp;được g&oacute;i gọn trong k&iacute;ch thước 15,6 inch mang đến trải nghiệm h&igrave;nh ảnh sắc n&eacute;t.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/laptop/Dell/DELL-VOSTRO-15-5581-2.jpg\" style=\"height:634px; width:840px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Một điểm cộng cho chiếc Dell Vostro 5581&nbsp;70175952 đ&oacute; l&agrave; được trang bị đường viền hẹp 2 mặt, vừa tạo được g&oacute;c nh&igrave;n rộng, vừa l&agrave;m cho m&aacute;y trở n&ecirc;n mỏng nhẹ hơn khi nằm trọn trong khung h&igrave;nh Laptop 14inch ti&ecirc;u chuẩn. M&agrave;n h&igrave;nh Full HD k&iacute;ch thước 14 inch của Vostro 5481 v&agrave; 15,6 inch tr&ecirc;n Vostro 5581 cho khung h&igrave;nh rộng, cung cấp những thước h&igrave;nh rực rỡ, sắc n&eacute;t từng chi tiết. Tầm nền IPS ngăn ngừa mỏi mắt v&agrave; chống ch&oacute;i gi&uacute;p người d&ugrave;ng văn ph&ograve;ng c&oacute; thể l&agrave;m việc dưới mọi m&ocirc;i trường &aacute;nh s&aacute;ng.</p>\r\n\r\n<p>Đ&egrave;n nền LED chống ch&oacute;i 15,6 inch FHD (1920 x 1080) M&agrave;n h&igrave;nh IPS viền kh&ocirc;ng chạm. C&ocirc;ng nghệ&nbsp;m&agrave;n h&igrave;nh IPS&nbsp;sẽ gi&uacute;p chiếc laptop n&agrave;y t&aacute;i tạo được h&igrave;nh ảnh một c&aacute;ch r&otilde; r&agrave;ng, m&agrave;u sắc ch&iacute;nh x&aacute;c v&agrave; g&oacute;c nh&igrave;n rộng hơn. Tuy nhi&ecirc;n, c&oacute; 1 nhược điểm cho m&agrave;n h&igrave;nh IPS đ&oacute; l&agrave; sẽ ti&ecirc;u tốn điện năng hơn khoảng 15% v&agrave; chi ph&iacute; sản xuất cũng đắt hơn so với tấm nền TN.</p>\r\n\r\n<h3><strong>Cấu h&igrave;nh khủng vi xử l&yacute; core i5 thế hệ thứ 8 Kabylake Refresh với ổ cứng&nbsp;</strong><strong>4GB DDR4</strong></h3>\r\n\r\n<p>Dell Vostro 15 5581 sử dụng chip&nbsp;Intel&nbsp;Core&nbsp;i5&nbsp;đ&aacute;p ứng được hầu hết tất cả c&aacute;c ti&ecirc;u chuẩn&nbsp;ứng dụng&nbsp;hiện nay. 8265U thuộc thế hệ thứ 8 với độ xung nhịp 1.6 GHz &ndash; 3.9 GHz với 4 nh&acirc;n 8 luồng mang lại tốc độ xử l&yacute; ti&ecirc;u chuẩn cung cấp &ldquo;kh&ocirc;ng gian&rdquo; l&agrave;m việc đảm bảo gi&uacute;p người d&ugrave;ng được trải nghiệm chuy&ecirc;n s&acirc;u. Kh&ocirc;ng đơn giản l&agrave; để đ&aacute;p ứng&nbsp;ứng dụng, độ xung nhịp lớn cũng gi&uacute;p người d&ugrave;ng chạy đa nhiệm tốt hơn v&agrave; mang đến sự mượt m&agrave; với nhiều tab tr&ecirc;n nền c&aacute;c tr&igrave;nh duyệt.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/laptop/Dell/DELL-VOSTRO-15-5581-3.jpg\" style=\"height:538px; width:840px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Với RAM 4GB&nbsp;DDR4&nbsp;2666MHz thuộc dạng tầm trung, ngo&agrave;i những gi&acirc;y ph&uacute;t l&agrave;m việc căng thẳng người d&ugrave;ng c&oacute; thể tận hưởng những khoảng thời gian giải tr&iacute; nhẹ nh&agrave;ng. Với 4GB&nbsp;RAM&nbsp;người d&ugrave;ng c&oacute; thể thoải m&aacute;i chơi c&aacute;c game c&oacute; cấu h&igrave;nh tương đối đủ để đ&aacute;p ứng với mức tối thiểu của c&aacute;c dạng game lớn. Với 2 khe cắm hỗ trợ tối đa người d&ugrave;ng l&ecirc;n đến 16GB. T&igrave;m hiểu th&ecirc;m th&igrave;&nbsp;DDR4&nbsp;được xem như l&agrave; sự n&acirc;ng cấp từ&nbsp;DDR3.&nbsp;DDR4&nbsp;được ra mắt với hiệu năng l&agrave;m việc cao hơn, ti&ecirc;u thụ &iacute;t điện năng hơn b&ecirc;n cạnh 1 v&agrave;i chức năng kh&aacute;c của được n&acirc;ng cấp v&agrave; cải tiến. Giảm thiểu 40% điện năng, sở hữu t&iacute;nh năng kiểm tra phần dư tuần ho&agrave;n (CRC) để thực thi nhiệm vụ kiểm tra đường truyền v&agrave; giải quyết mang lại t&iacute;nh an to&agrave;n của dữ liệu, ph&aacute;t hiện t&iacute;nh chẵn lẻ tr&ecirc;n chip nhằm x&aacute;c thực t&iacute;nh to&agrave;n vẹn của dữ liệu, b&ecirc;n cạnh đ&oacute; c&ograve;n thực hiện 1 v&agrave;i t&iacute;nh năng RAS mạnh mẽ kh&aacute;c.&nbsp;</p>\r\n\r\n<p>Sử dụng ch&iacute;p&nbsp;<a href=\"https://www.notebookcheck.net/Intel-UHD-Graphics-620-GPU-Review-Benchmarks-and-Specs.239936.0.html\" target=\"_blank\">intel&nbsp;UHD&nbsp;Graphics 620</a>&nbsp;thuộc d&ograve;ng chip cải tiến n&acirc;ng cao khả năng l&agrave;m việc so với 520, với thử nghiệm qua 3D Mark Cloud Gate (đ&aacute;nh gi&aacute; về khả năng xử l&yacute; đồ họa game). Intel&nbsp;HD Graphics 620 nhanh hơn khoảng 7% so với d&ograve;ng 520 trước đ&oacute;.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/laptop/Dell/DELL-VOSTRO-15-5581-5.jpg\" style=\"height:358px; width:840px\" /></p>\r\n\r\n<h3><strong>Mạnh mẽ với card đồ họa rời 2GB v&agrave; t&iacute;ch hợp sẵn win10 + Office 365</strong></h3>\r\n\r\n<p>Dell Vostro 15 5581 t&iacute;ch hợp card đồ họa rời&nbsp;<a href=\"https://www.notebookcheck.net/NVIDIA-GeForce-MX130-GPU-Benchmarks-and-Specs.258054.0.html\" target=\"_blank\">NVIDIA GeForce MX130</a>&nbsp;2GB GDDR5 b&ecirc;n trong gi&uacute;p Dell Vostro 15 5581 c&oacute; thể chạy tốt hơn những&nbsp;phần mềm&nbsp;đồ họa văn ph&ograve;ng v&agrave; chơi được c&aacute;c dạng game c&oacute; cấu h&igrave;nh tầm trung. Với kiến tr&uacute;c Maxell cũ nhưng NVIDIA GeForce MX130 vẫn mạnh hơn khoảng 2,5 lần so với ch&iacute;nh card&nbsp;Intel&nbsp;UHD&nbsp;Graphics 620 onboard</p>\r\n', 1, 300, 26, 10, 18790000, 16790000, '2019-06-04 23:33:43', '1', '2019-06-04 23:33:43', '1', 0, 1),
(21, 1, 'Chai Xịt họng Keo ong Hữu cơ Ladrome 30 ml\r\n', 'chai-xit-hong-keo-ong-huu-co-propolis-30-ml', 'a6a1f3a7e3191930164237d7abbcf552.jpg', '511ea2148be73decc55c4cc807626d5a.jpg#328c007de67c9215673348a2cb1f0743.jpg#3249faead50a8a99fc7ff3178f70de6a.jpg#21cecadc38c1d1b3bea0df11ea01f981.jpg', 'iPhone 8 Plus 64GB - Smartphone đến từ thương hiệu Apple uy tín', '<p><em>Trong thời buổi hiện đại ng&agrave;y nay, smartphone l&agrave; một trong những thiết bị di động kh&ocirc;ng thể thiếu đối với bất k&igrave; người d&ugrave;ng n&agrave;o. Nổi bật v&agrave; thịnh h&agrave;nh trong c&aacute;c thương hiệu tr&ecirc;n thị trường hiện nay kh&ocirc;ng thể n&agrave;o kh&ocirc;ng kể đến h&atilde;ng Apple. C&aacute;c sản phẩm đến từ Apple đều mang lại chất lượng ho&agrave;n hảo. Như thường lệ,&nbsp;<strong>iPhone 8 Plus</strong>&nbsp;<strong>64GB&nbsp;</strong>ra đời với thiết kế c&ugrave;ng t&iacute;nh năng tuyệt vời sẽ mang đến cho người d&ugrave;ng những trải nghiệm th&uacute; vị nhất.</em></p>\r\n\r\n<h3><strong>Tại sao người d&ugrave;ng n&ecirc;n chọn mua iPhone 8 Plus 64GB ch&iacute;nh h&atilde;ng VN/A?</strong></h3>\r\n\r\n<p>L&yacute; do để người d&ugrave;ng lựa chọn chiếc&nbsp;<strong><em><a href=\"https://cellphones.com.vn/mobile/apple/iphone-8-8-plus.html\" target=\"_self\">iPhone 8 Plus</a></em></strong>&nbsp;ch&iacute;nh h&atilde;ng VN/A v&igrave; đ&acirc;y l&agrave; chiếc điện thoại c&oacute; gi&aacute; th&agrave;nh hợp l&yacute; v&agrave; chất lượng đảm bảo. Đ&acirc;y l&agrave; sản phẩm h&agrave;ng ch&iacute;nh h&atilde;ng sản xuất cho thị trường Việt Nam, do đại l&yacute; Apple được ủy quyền tại Việt Nam ph&acirc;n phối.&nbsp;Chất lượng h&agrave;ng h&oacute;a của iPhone 8 Plus 64GB ch&iacute;nh h&atilde;ng VN/A được đảm bảo theo đ&uacute;ng ti&ecirc;u chuẩn nh&agrave; sản xuất. Đặc biệt, tại hệ thống CellphoneS c&oacute; dịch vụ đổi mới 30 ng&agrave;y sau khi mua sản phẩm, bảo hiểm 1 năm hoặc hơn tại c&aacute;c trung t&acirc;m bảo h&agrave;nh ủy quyền.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/apple/iphone-8plus-64gb-2.jpeg\" style=\"height:572px; width:840px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Đặc biệt, cả hai mặt k&iacute;nh của điện thoại đều được cắt 2.5D ho&agrave;n hảo v&agrave; tinh tế, cụm camera cũng được bọc v&ograve;ng kim loại để mang đến n&eacute;t sang trọng nhưng cũng kh&ocirc;ng k&eacute;m phần hiện đại cho điện thoại. Mặt k&iacute;nh n&agrave;y cũng sẽ c&oacute; thể hỗ trợ c&ocirc;ng nghệ sạc kh&ocirc;ng d&acirc;y rất độc đ&aacute;o.</p>\r\n\r\n<h3><strong>Trang bị camera k&eacute;p 12 MP, quay phim 4K chất lượng cao</strong></h3>\r\n\r\n<p>Hệ thống camera k&eacute;p tại mặt sau của iPhone 8 Plus 64GB được cải tiến mạnh mẽ với một ống k&iacute;nh rộng độ ph&acirc;n giải 12MP (f/1.8) v&agrave; một ống k&iacute;nh tele đồng độ ph&acirc;n giải (f.2/8). Hệ thống camera k&eacute;p n&agrave;y được n&acirc;ng cấp cho khả năng thu nhận &aacute;nh s&aacute;ng nhiều hơn, gi&uacute;p h&igrave;nh ảnh sắc n&eacute;t v&agrave; chi tiết hơn trong mọi điều kiện m&ocirc;i trường. Với cấu h&igrave;nh n&agrave;y, iPhone 8 Plus cho ph&eacute;p bạn&nbsp;<a href=\"https://cellphones.com.vn/sforum/moi-xem-bo-phim-ngan-4k-tuyet-dep-duoc-quay-toan-bo-bang-iphone-6s-plus\" target=\"_blank\">quay video chất lượng 4K</a>. Camera trước của m&aacute;y c&oacute; độ ph&acirc;n giải 7MP (f/2.2) kết hợp c&ugrave;ng c&ocirc;ng nghệ chống rung tự động ti&ecirc;n tiến.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/apple/iphone-8plus-64gb-3.jpeg\" style=\"height:572px; width:840px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Đặc biệt, đ&acirc;y l&agrave; lần đầu ti&ecirc;n iPhone t&iacute;ch hợp t&iacute;nh năng&nbsp;<a href=\"https://www.pocket-lint.com/phones/news/apple/142244-what-is-apple-s-portrait-lighting-and-how-does-it-work-on-iphone\" target=\"_blank\">Portrait Lightning</a>&nbsp;tr&ecirc;n camera&nbsp;trước nhằm gi&uacute;p người d&ugrave;ng điều chỉnh &aacute;nh s&aacute;ng trực tiếp khi thực hiện c&aacute;c t&aacute;c vụ selfie.Ngo&agrave;i ra, tr&ecirc;n iPhone 8 Plus 64GB cũng được Apple trang bị c&ocirc;ng nghệ ổn định h&igrave;nh ảnh quang học OIS gi&uacute;p lấy n&eacute;t nhanh v&agrave; ch&iacute;nh x&aacute;c hơn. Điện thoại cũng c&oacute; khả năng quay phim chất lượng cao 4K/60fps v&agrave; 1080p/240fps kết hợp c&ugrave;ng c&aacute;c chức năng hiện đại kh&aacute;c, gi&uacute;p người d&ugrave;ng c&oacute; những trải nghiệm h&igrave;nh ảnh tuyệt vời nhất.</p>\r\n\r\n<h3><strong>Hiệu năng mạnh mẽ v&agrave; nhanh ch&oacute;ng từ chip Apple A11 Bionic 6 nh&acirc;n</strong></h3>\r\n\r\n<p>iPhone 8 Plus 64GB được trang bị con chip&nbsp;<a href=\"https://cellphones.com.vn/sforum/chipset-apple-a11-bionic-tren-iphone-8-va-iphone-x-danh-bai-tat-ca-cac-thiet-bi-android-voi-diem-geekbench-cao-ngat-nguong\" target=\"_blank\">Apple A11 Bionic 6</a>&nbsp;nh&acirc;n mới nhất, trong đ&oacute; 2 nh&acirc;n c&oacute; khả năng xử l&yacute; nhanh hơn 25%, 4 nh&acirc;n c&ograve;n lại c&oacute; tốc độ nhanh hơn 70% so với d&ograve;ng&nbsp;<a href=\"https://cellphones.com.vn/sforum/chip-apple-a10-se-co-toi-6-nhan-xu-ly\" target=\"_blank\">chip A10</a>. Hệ điều h&agrave;nh&nbsp;<a href=\"https://cellphones.com.vn/sforum/25-thu-thuat-nho-co-the-ban-chua-biet-tren-he-dieu-hanh-ios-11-4-1\" target=\"_blank\">iOS 11</a>&nbsp;tr&ecirc;n m&aacute;y được đ&aacute;nh gi&aacute; cao với nhiều cải tiến vượt bậc về giao diện, cho khả năng đa nhiệm mượt m&agrave;, hỗ trợ mạnh t&iacute;nh năng thực tế ảo AR, gi&uacute;p người d&ugrave;ng c&oacute; được trải nghiệm ho&agrave;n hảo hơn.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/apple/iphone-8plus-64gb-4.jpeg\" style=\"height:572px; width:840px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, GPU cũng được Apple tự sản xuất để đưa v&agrave;o chiếc iPhone 8 Plus 64GB mới với khả năng ti&ecirc;u thụ điện năng chỉ bằng 1/2 so với trước. Điều n&agrave;y sẽ cho ph&eacute;p điện thoại vừa hoạt động v&ocirc; c&ugrave;ng mạnh mẽ vừa c&oacute; thể dễ d&agrave;ng tối ưu h&oacute;a c&aacute;c t&aacute;c vụ đồ họa, c&ocirc;ng nghệ AR cũng như tr&iacute; tuệ nh&acirc;n tạo m&agrave; Apple đang ph&aacute;t triển.</p>\r\n\r\n<h3><strong>M&agrave;n h&igrave;nh sắc n&eacute;t với c&ocirc;ng nghệ&nbsp;<a href=\"https://www.pocket-lint.com/tablets/news/apple/137264-what-is-apple-true-tone-display\" target=\"_blank\">True Tone</a></strong></h3>\r\n\r\n<p>Đối với iPhone 8 Plus 64GB, người d&ugrave;ng sẽ c&oacute; trải nghiệm tr&ecirc;n m&agrave;n&nbsp;h&igrave;nh&nbsp;<a href=\"https://www.macworld.co.uk/feature/apple/retina-display-3466732/\" target=\"_blank\">Retina</a>&nbsp;5.5 inch chuẩn HD, tấm nền LCD cảm ứng điện dung c&ugrave;ng c&ocirc;ng nghệ&nbsp;<a href=\"https://www.tomshardware.com/reviews/ips-in-plane-switching-definition,5748.html\" target=\"_blank\">IPS</a>, 16 triệu m&agrave;u, độ ph&acirc;n giải 1080 x 1920 pixels c&ugrave;ng mật độ điểm ảnh 401ppi cho khả năng hiển thị ho&agrave;n hảo.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/apple/iphone-8plus-64gb-6.jpeg\" style=\"height:572px; width:840px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ngo&agrave;i ra, iPhone 8 Plus 64GB c&ograve;n trang bị t&iacute;nh năng sạc nhanh hiện đại. Điện thoại c&oacute; thể sạc đầy 50% pin dung lượng 2900mAh chỉ trong vỏn vẹn 30 ph&uacute;t, thay v&igrave; phải mất hơn 1 giờ như tr&ecirc;n chiếc iPhone 7 tiền nhiệm. Bởi lẽ, đế sạc kh&ocirc;ng d&acirc;y được hỗ trợ kết nối với c&aacute;p Type &ndash; C hỗ trợ d&ograve;ng điện l&ecirc;n tới 100W, thay v&igrave; chỉ 10W như cổng&nbsp;<a href=\"https://whatis.techtarget.com/definition/micro-USB\" target=\"_blank\">microUSB</a>&nbsp;th&ocirc;ng thường.</p>\r\n\r\n<h3><strong>iPhone 8 Plus 64GB được t&iacute;ch hợp nhiều t&iacute;nh năng hiện đại: cảm biến v&acirc;n tay&nbsp;<a href=\"https://cellphones.com.vn/sforum/3-meo-don-gian-giup-cam-bien-van-tay-touch-id-tren-iphone-nhay-hon\" target=\"_blank\">Touch ID</a>, ti&ecirc;u chuẩn kh&aacute;ng nước IP68</strong></h3>\r\n\r\n<p>iPhone 8 Plus 64GB vẫn được t&iacute;ch hợp cảm biến v&acirc;n tay Touch ID v&agrave;o n&uacute;t Home như iPhone 7/ 7 Plus, điều n&agrave;y cho ph&eacute;p người d&ugrave;ng dễ d&agrave;ng truy cập v&agrave;o c&aacute;c ứng dụng, thực hiện nhiều t&aacute;c vụ hơn với c&aacute;c mức phản hồi lực kh&aacute;c nhau v&agrave; độ bảo mật được tối ưu hơn.</p>\r\n\r\n<p>Th&ecirc;m v&agrave;o đ&oacute;,<strong>&nbsp;</strong>&nbsp;iPhone 8 Plus 64GB c&ograve;n được trang bị kh&aacute;ng nước, bụi đạt chuẩn IP68. Trang bị n&agrave;y cho ph&eacute;p điện thoại chịu nước ở độ s&acirc;u 1 m&eacute;t trong v&ograve;ng 30 ph&uacute;t. Người d&ugrave;ng c&oacute; thể ho&agrave;n to&agrave;n y&ecirc;n t&acirc;m sử dụng điện thoại dưới trời mưa hay trong m&ocirc;i trường kh&oacute;i bụi.<img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/apple/iphone-8plus-64gb-7.jpeg\" style=\"height:572px; width:840px\" /></p>\r\n\r\n<p>Ngo&agrave;i ra, loa ngo&agrave;i tr&ecirc;n iPhone 8 Plus cũng cho c&ocirc;ng suất lớn hơn 25% so với người tiền nhiệm. Điện thoại c&ograve;n sử dụng cổng Lightning v&agrave; tai nghe Earpods để ph&ugrave; hợp với những ai đang sử dụng&nbsp;<a href=\"https://cellphones.com.vn/mobile/apple/iphone-7-7-plus.html\" target=\"_blank\">iPhone 7/7Plus</a>.</p>\r\n\r\n<h3><strong>Mua iPhone 8 Plus 64GB ch&iacute;nh h&atilde;ng VN/A đảm bảo chất lượng tại hệ thống&nbsp;<a href=\"https://cellphones.com.vn/\" target=\"_blank\">CellphoneS</a></strong></h3>\r\n\r\n<p>Nếu bạn đang muốn t&igrave;m mua một chiếc smartphone với chất lượng ho&agrave;n hảo v&agrave; gi&aacute; cả hợp l&yacute; th&igrave;&nbsp;<strong>iPhone 8 Plus 64GB ch&iacute;nh h&atilde;ng VN/A&nbsp;</strong>sẽ l&agrave; một lựa chọn tuyệt vời.&nbsp;Đặc biệt hơn, tại ​hệ thống&nbsp;<strong>CellphoneS</strong>​, bạn c&oacute; thể ho&agrave;n to&agrave;n y&ecirc;n t&acirc;m khi mua sản phẩm n&agrave;y v&igrave; ​CellphoneS c&oacute; chế độ bảo h&agrave;nh &ndash; đổi trả chu đ&aacute;o c&ugrave;ng dịch vụ giao h&agrave;ng &ndash; thu tiền tại nh&agrave; miễn ph&iacute; tr&ecirc;n to&agrave;n quốc</p>\r\n', 2, 240, 17, 12, 19500000, 18200000, '2019-06-10 00:03:02', '1', '2019-06-10 00:03:02', '2', 0, 1),
(22, 10, 'Chai Xịt họng Keo ong Hữu cơ Ladrome 30 ml\r\n', 'chai-xit-hong-keo-ong-huu-co-propolis-30-ml', '3f83d23fdc12378fc61ac5c0e55c2476.png', '3daf27b63c30e5a8f1dc1d2ab0934959.png#92877a41b87dae8377bdfdb840fad3f0.png', 'Chuột không dây Logitech M185, Chính hãng', '', 2, 720, 161, 0, 250000, 250000, '2019-06-10 00:04:42', '1', '2019-06-23 17:54:03', '1', 0, 1);
INSERT INTO `db_product` (`id`, `catid`, `name`, `alias`, `avatar`, `img`, `sortDesc`, `detail`, `producer`, `number`, `number_buy`, `sale`, `price`, `price_sale`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `status`) VALUES
(23, 1, 'Chai Xịt họng Keo ong Hữu cơ Ladrome 30 ml\r\n', 'chai-xit-hong-keo-ong-huu-co-propolis-30-ml', 'ae20440301730c38e1ca3f1440c50fcc.jpg', '765bd745b649eb90984b26d9d29a6e66.jpg#a031fcbb6b6a47fe5159c21c55c84df2.jpg#fe694bb7f08d8a12e62d7e23ce43d5aa.jpg', 'Apple iPad Pro 11 2018 Wi-fi 64GB Chính hãng - Cấu hình và tính năng', '<p>Nhằm mục đ&iacute;ch biến&nbsp;<a href=\"https://cellphones.com.vn/tablet/ipad-pro.html\" target=\"_blank\">iPad Pro</a>&nbsp;th&agrave;nh chiếc m&aacute;y t&iacute;nh bảng c&oacute; khả năng thay thế đảm nhiệm c&ocirc;ng việc cho laptop, năm nay Apple đ&atilde; ra mắt phi&ecirc;n bản n&acirc;ng cấp mạnh mẽ về thiết kế lẫn hiệu năng &ldquo;khủng&rdquo; cho&nbsp;<strong>Apple iPad Pro 11 2018 Wi-fi 64GB Ch&iacute;nh h&atilde;ng</strong>.</p>\r\n\r\n<h3>Thiết kế viền si&ecirc;u mỏng tr&ecirc;n Apple iPad Pro 11 2018 Wi-fi 64GB Ch&iacute;nh h&atilde;ng</h3>\r\n\r\n<p>Về thiết kế,&nbsp;<strong>iPad Pro 11 2018 Wi-fi 64GB</strong>&nbsp;sở hữu phần c&aacute;c cạnh viền xung quanh mỏng đều nhau ở bốn cạnh. M&aacute;y đ&atilde; bỏ đi ph&iacute;m home truyền thống thay v&agrave;o đ&oacute; l&agrave; c&aacute;c cử chỉ vuốt khi sử dụng như tr&ecirc;n iPhone X. Tổng k&iacute;ch thước của sản phẩm l&agrave; 247.6 x 178.5 x 5.9mm v&agrave; c&oacute; trọng lượng 468g. Với k&iacute;ch thước n&agrave;y c&ugrave;ng với c&aacute;c cạnh xung quanh được bo tr&ograve;n mềm mại sẽ tạo cho người d&ugrave;ng cảm gi&aacute;c cầm nắm v&ocirc; c&ugrave;ng chắc chắn v&agrave; thoải m&aacute;i.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/tablet/apple/apple-ipad-pro-11-2018-wi-fi-64gb-chinh-hang-1_1.jpg\" style=\"height:839px; width:840px\" /></p>\r\n\r\n<h3>Trang bị c&ocirc;ng nghệ Face ID cao cấp tr&ecirc;n Apple iPad Pro 11 2018 Wi-fi 64GB Ch&iacute;nh h&atilde;ng</h3>\r\n\r\n<p>Sản phẩm đ&atilde; được Apple thay thế phương thức bảo mật cảm biến v&acirc;n tay th&agrave;nh Face ID. Với cụm camera TrueDepth được t&iacute;ch hợp tr&ecirc;n&nbsp;<strong>iPad Pro 11 2018</strong>&nbsp;sẽ cho ph&eacute;p m&aacute;y nhận dạng tối đa 2 gương mặt người d&ugrave;ng. Đồng thời bất cứ hướng xoay cầm m&aacute;y theo chiều n&agrave;o của người d&ugrave;ng, Face ID cũng c&oacute; thể thực hiện mở kh&oacute;a được.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/tablet/apple/apple-ipad-pro-11-2018-wi-fi-64gb-chinh-hang-2_1.jpg\" style=\"height:840px; width:840px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/tablet/apple/apple-ipad-pro-11-2018-wi-fi-64gb-chinh-hang-4_1.jpg\" style=\"height:840px; width:840px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Trang bị cổng USB-Type C tr&ecirc;n Apple iPad Pro 11 2018 Wi-fi 64GB Ch&iacute;nh h&atilde;ng</h3>\r\n\r\n<p>Đ&acirc;y l&agrave; lần đầu ti&ecirc;n Apple thay thế cổng kết nối Lightning tr&ecirc;n d&ograve;ng thiết bị iPad Pro của m&igrave;nh. Với việc t&iacute;ch hợp USB-Type C sẽ cho ph&eacute;p người d&ugrave;ng đồng bộ h&oacute;a tốt hơn với c&aacute;c thiết bị ngoại vi kh&aacute;c tr&ecirc;n thị trường. Đồng thời cổng kết nối n&agrave;y sẽ gi&uacute;p tốc độ truyền tải dữ liệu nhanh l&ecirc;n đến 10 gigabit. Người d&ugrave;ng c&oacute; thể xuất h&igrave;nh ảnh truyền từ m&agrave;n h&igrave;nh&nbsp;<strong>iPad Pro 11 64GB</strong>&nbsp;ra m&agrave;n h&igrave;nh ngo&agrave;i với độ ph&acirc;n giải khủng l&ecirc;n đến 5K.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/tablet/apple/apple-ipad-pro-11-2018-wi-fi-64gb-chinh-hang-3_1.jpg\" style=\"height:840px; width:840px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/tablet/apple/apple-ipad-pro-11-2018-wi-fi-64gb-chinh-hang-5_1.jpg\" style=\"height:840px; width:840px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Hiệu năng đỉnh cao tr&ecirc;n Apple iPad Pro 11 2018 Wi-fi 64GB Ch&iacute;nh h&atilde;ng</h3>\r\n\r\n<p><strong><a href=\"https://cellphones.com.vn/apple-ipad-pro-11-2018-wifi-64-gb-chinh-hang.html\" target=\"_blank\">Apple iPad Pro 11 2018 Wi-fi 64GB Ch&iacute;nh h&atilde;ng</a></strong>&nbsp;được mệnh danh l&agrave; chiếc m&aacute;y t&iacute;nh bảng đầu ti&ecirc;n tr&ecirc;n thế giới c&oacute; hiệu năng mạnh hơn cả c&aacute;c d&ograve;ng laptop c&ugrave;ng mức gi&aacute; tr&ecirc;n thị trường. Cụ thể trang bị con chip Apple A12X Bionic với 8 l&otilde;i CPU nhanh hơn đến 35% so với thiết bị tiềm nhiệm v&agrave; 7 l&otilde;i GPU cho tốc độ xử l&yacute; đồ họa nhanh hơn 2 lần so với con chip A11X. Con chip n&agrave;y được sản xuất theo tiến tr&igrave;nh 7nm tối t&acirc;n nhất tr&ecirc;n thị trường. Sở hữu b&ecirc;n trong 10 tỷ b&oacute;ng b&aacute;n dẫn mang đến hiệu năng cực xuất sắc trong mọi t&aacute;c vụ từ đơn giản đến phức tạp nhất.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1, 470, 32, 15, 22500000, 19500000, '2019-06-10 00:07:42', '1', '2019-06-23 17:53:49', '1', 0, 0),
(24, 5, 'Chai Xịt họng Keo ong Hữu cơ Ladrome 30 ml\r\n', 'chai-xit-hong-keo-ong-huu-co-propolis-30-ml', 'ed89f871f145b6b99099923be292f9ba.jpg', 'd678d1325a0ef2723e395da364f67092.jpg#cd30cc5a1ed94166742788b0b2876086.jpg#efb8d711e852b823cec67e8c8b8ac595.jpg#4d08e4839006d7694348defb7980b91d.jpg', 'Máy tính xách tay Dell Inspiron 15 3576 70157552 chính hãng, chất lượng tại hệ thống Smart Store', '<p><em>Dell l&agrave; một trong những thương hiệu&nbsp;<a href=\"https://cellphones.com.vn/laptop.html\" target=\"_blank\"><strong>laptop</strong></a>&nbsp;thịnh h&agrave;nh tr&ecirc;n thị trường hiện nay với c&aacute;c sản phẩm chất lượng v&agrave; ph&ugrave; hợp với nhiều đối tượng người d&ugrave;ng, nổi bật trong đ&oacute; l&agrave; chiếc laptop&nbsp;<strong>Dell Inspiron 15</strong>. Nếu bạn l&agrave; một người d&ugrave;ng cơ bản v&agrave; kh&ocirc;ng y&ecirc;u cầu những chiếc m&aacute;y ultrabook cao cấp với thiết kế đẹp v&agrave; cấu h&igrave;nh khủng,&nbsp;<strong>Dell Inspiron 15 3576 70157552</strong>&nbsp;sẽ l&agrave; một lựa chọn ph&ugrave; hợp.</em></p>\r\n\r\n<h3><strong>Thiết kế cứng c&aacute;p, gọn nhẹ với chất liệu nhựa cao cấp</strong></h3>\r\n\r\n<p>Dell Inspiron 15 3576 70157552 được bao bọc bởi lớp vỏ ngo&agrave;i bằng nhựa m&agrave;u đen cứng c&aacute;p, bản lề chắc chắn gi&uacute;p bảo vệ tốt c&aacute;c linh kiện b&ecirc;n trong. C&aacute;c g&oacute;c cạnh của m&aacute;y được bo tr&ograve;n nhẹ tạo cảm gi&aacute;c thoải m&aacute;i khi cầm nắm, tr&aacute;nh việc cứa v&agrave;o da tay v&agrave; g&acirc;y kh&oacute; chịu khi sử dụng. Hai b&ecirc;n viền l&agrave; điểm nhấn ch&iacute;nh của m&aacute;y khi được l&agrave;m từ nhựa b&oacute;ng nổi bật, tinh tế.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/laptop/Dell/dell-inspiron-3576-1.jpg\" style=\"height:572px; width:840px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Với trọng lượng 2.3kg, người d&ugrave;ng c&oacute; thể mang theo m&aacute;y b&ecirc;n m&igrave;nh đến bất cứ nơi n&agrave;o để sử dụng khi cần. Hơn nữa, Dell c&ograve;n đảm bảo cho chiếc laptop của bạn hoạt động tốt nhất ở cả những khu vực n&oacute;ng v&agrave; c&oacute; nhiệt độ khắc nghiệt nhất khi khả năng chịu nhiệt độ của Dell Inspiron 15 3576 70157552 l&ecirc;n tới hơn 75 độ C.</p>\r\n\r\n<h3><strong>M&agrave;n h&igrave;nh Full HD, k&iacute;ch thước 15.6 inch đem đến trải nghiệm h&igrave;nh ảnh tuyệt vời</strong></h3>\r\n\r\n<p>Dell Inspiron 15 3576 70157552 được trang bị m&agrave;n h&igrave;nh Full HD, k&iacute;ch thước lớn 15.6 inch c&ugrave;ng độ ph&acirc;n giải 1920 x 1080 pixels, tương đương 142 ppi cho trải nghiệm tuyệt vời, sắc n&eacute;t đến từng chi tiết. M&agrave;n h&igrave;nh của Inspiron 3576 hiển thị m&agrave;u đẹp, sống động v&agrave; ch&acirc;n thực khiến bất cứ kh&aacute;ch h&agrave;ng kh&oacute; t&iacute;nh n&agrave;o đều phải h&agrave;i l&ograve;ng.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/laptop/Dell/dell-inspiron-3576-2.jpg\" style=\"height:572px; width:840px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Đặc biệt, m&agrave;n h&igrave;nh c&ograve;n được t&iacute;ch hợp c&ocirc;ng nghệ chống l&oacute;a Anti-Glare cho ph&eacute;p hiển thị tốt ngay cả dưới điều kiện ban đ&ecirc;m thiếu &aacute;nh s&aacute;ng hoặc qu&aacute; nhiều &aacute;nh s&aacute;ng chiếu v&agrave;o. Ngo&agrave;i ra, trang bị HD Webcam gi&uacute;p người d&ugrave;ng c&oacute; những trải nghiệm ho&agrave;n hảo khi thực hiện c&aacute;c cuộc tr&ograve; chuyện trực tuyến.</p>\r\n\r\n<h3><strong>Hiệu năng vượt trội c&ugrave;ng chip&nbsp;<a href=\"https://ark.intel.com/content/www/vn/vi/ark/products/124967/intel-core-i5-8250u-processor-6m-cache-up-to-3-40-ghz.html\" target=\"_blank\">Intel Core i5-8250U</a>&nbsp;thế hệ thứ 8</strong></h3>\r\n\r\n<p>Dell Inspiron 15 3576 70157552 được trang bị chip Intel Core i5-8250U thế hệ thứ 8 si&ecirc;u tốc, 4 nh&acirc;n 8 buồng với tốc độ 1,6GHz upto 3,4GHz c&ugrave;ng bộ nhớ đệm 6MB xử l&yacute; tốt mọi ứng dụng m&agrave; bạn mong muốn. M&aacute;y c&oacute; 4GB DDR4 2400MHz ti&ecirc;n tiến c&ugrave;ng 1 khe cắm thứ 2 sẵn s&agrave;ng n&acirc;ng cấp th&ecirc;m bất cứ l&uacute;c n&agrave;o. Ổ cứng HDD 1TB cho bạn thoải m&aacute;i lưu trữ c&aacute;c dữ liệu c&aacute; nh&acirc;n.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/laptop/Dell/dell-inspiron-3576-3.jpg\" style=\"height:572px; width:840px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ngo&agrave;i phi&ecirc;n bản Win 10 được lập tr&igrave;nh sẵn, Dell Inspiron 15 3576 70157552 c&ograve;n c&oacute; cả phi&ecirc;n bản chạy hệ điều h&agrave;nh Ubuntu cho tốc độ xử l&yacute; vượt trội v&agrave; bảo mật cao hơn.</p>\r\n\r\n<p>M&aacute;y c&ograve;n c&oacute; card đồ họa rời AMD Radeon 520 Graphics 2GB GDDR5 sẵn s&agrave;ng hỗ trợ c&aacute;c ứng dụng đồ họa v&agrave; c&aacute;c game cấu h&igrave;nh mạnh. Dell Inspiron 15 3576 kh&ocirc;ng chỉ hoạt động tốt trong ứng dụng văn ph&ograve;ng m&agrave; c&ograve;n xử l&yacute; tốt c&aacute;c c&ocirc;ng việc đồ họa v&agrave; tất cả c&aacute;c tựa game như Dota, Li&ecirc;n minh huyền thoại,&nbsp;<a href=\"https://www.livemint.com/Technology/2KSD3xh8fRjBPuUkKCf8dK/Game-Review-PUBG-Mobile-is-immensely-addictive-like-the-PC.html\" target=\"_blank\">PUBG</a>,...</p>\r\n\r\n<h3><strong>B&agrave;n ph&iacute;m c&ugrave;ng touchpad dễ thao t&aacute;c</strong></h3>\r\n\r\n<p>B&agrave;n ph&iacute;m của Dell Inspiron 15 3576 70157552 được thiết kế theo phong c&aacute;ch truyền thống của Dell với k&iacute;ch thước, khoảng c&aacute;ch giữa c&aacute;c ph&iacute;m hợp l&yacute;, ph&iacute;m bấm &ecirc;m, h&agrave;nh tr&igrave;nh ph&iacute;m d&agrave;i, độ nảy tốt tạo cảm gi&aacute;c thoải m&aacute;i cho người d&ugrave;ng trong từng thao t&aacute;c nhập liệu.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/laptop/Dell/dell-inspiron-3576-4.jpg\" style=\"height:572px; width:840px\" /></p>\r\n\r\n<p>B&agrave;n ph&iacute;m được thiết kế mỗi ph&iacute;m sử dụng được hơn 10 triệu lần bấm, ri&ecirc;ng Touchpad cảm ứng với hơn 1 triệu lần chạm m&agrave; kh&ocirc;ng bị lỗi. B&agrave;n ph&iacute;m cũng hỗ trợ đ&egrave;n nền backlit gi&uacute;p bạn ho&agrave;n to&agrave;n c&oacute; thể l&agrave;m việc trong m&ocirc;i trường thiếu s&aacute;ng.</p>\r\n\r\n<h3><strong>Dung lượng pin ổn định, thời lượng sử dụng bền bỉ</strong></h3>\r\n\r\n<p>Dell Inspiron 15 3576 70157552 được trang bị vi&ecirc;n pin dung lượng 42Wh, dạng 4 cell. Tuy dung lượng kh&ocirc;ng qu&aacute; cao như c&aacute;c sản phẩm kh&aacute;c nhưng vẫn đ&aacute;p ứng được c&aacute;c nhu cầu sử dụng h&agrave;ng ng&agrave;y của người d&ugrave;ng.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/laptop/Dell/dell-inspiron-3576-5.jpg\" style=\"height:572px; width:840px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Tuy vậy, c&aacute;c phần cứng &ldquo;ăn điện&rdquo; nhất được trang bị b&ecirc;n trong m&aacute;y (CPU v&agrave; GPU đồ họa rời) đều l&agrave; loại tiết kiệm điện (i5-8250U v&agrave;&nbsp;<a href=\"https://www.notebookcheck.net/AMD-Radeon-520-GPU-Benchmarks-and-Specs.214532.0.html\" target=\"_blank\">Radeon 520</a>), vi&ecirc;n pin của m&aacute;y ho&agrave;n to&agrave;n c&oacute; thể gi&uacute;p chiếc laptop n&agrave;y hoạt động tốt trong thời gian kh&aacute; d&agrave;i. Theo đo đạc thực tế, người d&ugrave;ng c&oacute; thể sử dụng m&aacute;y tới hơn 7 tiếng&nbsp; li&ecirc;n tục khi duyệt web v&agrave; hơn 4 tiếng khi sử dụng để xem video.</p>\r\n\r\n<h3><strong>Kết nối đa dạng, đ&aacute;p ứng mọi nhu cầu cần thiết</strong></h3>\r\n\r\n<p>L&agrave; chiếc laptop phục vụ c&ocirc;ng việc n&ecirc;n Dell Inspiron 15 3576 70157552 c&oacute; đầy đủ c&aacute;c cổng kết nối th&ocirc;ng dụng hiện nay. Cổng sạc, cổng ethernet v&agrave; 2 cổng USB 3.0 Type-A c&ugrave;ng khe tho&aacute;t nhiệt được đặt b&ecirc;n tr&aacute;i. Ở ph&iacute;a đối diện l&agrave; ổ đĩa quang, th&ecirc;m 1 cổng USB 2.0 Type-A nữa c&ugrave;ng khe thẻ SD v&agrave; 1 cổng &acirc;m thanh 3.5mm.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/laptop/Dell/dell-inspiron-3576-6.jpg\" style=\"height:572px; width:840px\" /></p>\r\n\r\n<p>Cổng kết nối hiện đại&nbsp;<a href=\"https://www.lifewire.com/what-is-usb-3-0-2626038\" target=\"_blank\">USB 3.0</a>&nbsp;cho&nbsp;tốc độ sao ch&eacute;p dữ liệu được nhanh ch&oacute;ng hơn. Cổng HDMI hỗ trợ việc tr&igrave;nh chiếu h&igrave;nh ảnh, &acirc;m thanh từ laptop qua m&aacute;y chiếu, tivi được tiện lợi hơn. Ổ đĩa DVD th&iacute;ch hợp cho việc học ngoại ngữ hay c&agrave;i win, kết nối kh&ocirc;ng d&acirc;y Bluetooth 4.1 cho ph&eacute;p kết nối với c&aacute;c thiết bị như tai nghe, chuột v&agrave; sử dụng tiện lợi hơn.</p>\r\n\r\n<h3><strong>Laptop Dell Inspiron 15 3576 70157552 đảm bảo ch&iacute;nh h&atilde;ng, chất lượng tại hệ thống&nbsp;<a href=\"https://cellphones.com.vn/\" target=\"_blank\">CellphoneS</a></strong></h3>\r\n\r\n<p>H&atilde;y đến với CellphoneS - hệ thống b&aacute;n lẻ điện thoại tr&ecirc;n to&agrave;n quốc để sở hữu cho m&igrave;nh&nbsp;<strong>Laptop Dell Inspiron 15 3576 70157552</strong>&nbsp;đảm bảo ch&iacute;nh h&atilde;ng, chất lượng, mức gi&aacute; hợp l&yacute; c&ugrave;ng nhiều ưu đ&atilde;i hấp dẫn.&nbsp;Tại ​hệ thống&nbsp;<strong>CellphoneS</strong>​, bạn c&oacute; thể ho&agrave;n to&agrave;n y&ecirc;n t&acirc;m khi mua sản phẩm n&agrave;y v&igrave; ​CellphoneS c&oacute; chế độ bảo h&agrave;nh &ndash; đổi trả chu đ&aacute;o c&ugrave;ng dịch vụ giao h&agrave;ng &ndash; thu tiền tại nh&agrave; miễn ph&iacute; tr&ecirc;n to&agrave;n quốc. Đặc biệt, đối với những sản phẩm mới ra mắt, kh&aacute;ch h&agrave;ng c&oacute; thể đặt cọc online để ưu ti&ecirc;n nhận m&aacute;y v&agrave; sở hữu nhiều phần qu&agrave; hấp dẫn.</p>\r\n', 2, 250, 3, 0, 14900000, 14900000, '2019-06-10 00:10:34', '1', '2019-06-23 17:53:43', '1', 0, 1),
(25, 2, 'Chai Xịt họng Keo ong Hữu cơ Ladrome 30 ml\r\n', 'chai-xit-hong-keo-ong-huu-co-propolis-30-ml', 'bb0cd93933cdc906b66e3fc8a961ee35.jpg', 'd153c29c6407ab35d622591d57ab5e68.jpg#7b8e18f37db91158adc2bad1c146f40d.jpg', 'Điện thoại Samsung Galaxy Note 9 – Smartphone đầu tiên sở hữu bút S Pen hỗ trợ Bluetooth có thể dùng như điều khiển từ xa', '<p><em><a href=\"https://cellphones.com.vn/mobile/samsung/galaxy-note.html\" target=\"_blank\"><strong>Galaxy Note</strong></a>&nbsp;lu&ocirc;n l&agrave; d&ograve;ng sản phẩn đầu ti&ecirc;n được&nbsp;<a href=\"https://cellphones.com.vn/mobile/samsung.html\" target=\"_blank\"><strong>Samsung</strong></a>&nbsp;đưa v&agrave;o những c&ocirc;ng nghệ mới hoặc những &yacute; tưởng thiết kế c&aacute;ch t&acirc;n nhất. Tuy nhi&ecirc;n chiếc Note 9 lại đi theo một hướng kh&aacute;c với với tập trung v&agrave;o ho&agrave;n thiện những thứ sẵn c&oacute; v&agrave; đưa ra một số c&ocirc;ng nghệ mới để c&oacute; thể cải thiện trải nghiệm cho người d&ugrave;ng. L&agrave; một người c&oacute; đam m&ecirc; về c&ocirc;ng nghệ cũng như l&agrave; một SamFan ch&acirc;n ch&iacute;nh th&igrave; chiếc si&ecirc;u phẩm&nbsp;<strong>Samsung Galaxy Note 9</strong>&nbsp;sẽ l&agrave; một lựa chọn bạn kh&ocirc;ng n&ecirc;n bỏ qua.</em></p>\r\n\r\n<h3><strong>Thiết kế sang trọng với bộ khung nh&ocirc;m v&agrave; hai mặt lưng k&iacute;nh cường lực&nbsp;<a href=\"https://cellphones.com.vn/sforum/gorilla-glass-5-chinh-thuc-ra-mat\" target=\"_blank\">Gorilla Glass 5</a></strong></h3>\r\n\r\n<p>Nh&igrave;n tổng thể, thiết kế của Note 9 cơ bản vẫn kh&ocirc;ng kh&aacute;c biệt so với Note 8. Kiểu d&aacute;ng chung của m&aacute;y vẫn vậy với khung nh&ocirc;m v&agrave; hai mặt lưng k&iacute;nh cường lực Gorilla Glass 5. Hai m&eacute;p k&iacute;nh mặt trước v&agrave; sau bo cong nhẹ hơn Galaxy S8/S9 v&agrave; c&aacute;c g&oacute;c bo vu&ocirc;ng hơn n&ecirc;n tr&ocirc;ng khỏe khoắn v&agrave; nam t&iacute;nh chứ kh&ocirc;ng mềm mại như d&ograve;ng&nbsp;<a href=\"https://cellphones.com.vn/mobile/samsung/galaxy-s.html\" target=\"_blank\">Galaxy S</a>.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/samsung/samsung-galaxy-note-9-hinh1.jpg_1.jpg\" style=\"height:560px; width:840px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, phần cạnh của&nbsp;<strong>Galaxy Note 9</strong>&nbsp;kh&ocirc;ng c&ograve;n bo cong v&agrave;o hai mặt k&iacute;nh v&agrave; b&oacute;ng lo&aacute;ng như phi&ecirc;n bản tiền nhiệm. Samsung đ&atilde; gia tăng độ nh&aacute;m ở phần khung viền, c&aacute;c m&eacute;p cạnh m&agrave;n h&igrave;nh đồng thời cũng được v&aacute;t nhẹ gi&uacute;p cho trải nghiệm cầm nắm được an to&agrave;n hơn, kh&oacute; bị tuột tay hơn với k&iacute;ch thước đồ sộ 6.4 inch của m&igrave;nh.</p>\r\n\r\n<h3><strong>Smartphone sở hữu m&agrave;n h&igrave;nh&nbsp;<a href=\"https://www.trustedreviews.com/news/what-is-oled-3285263\" target=\"_blank\">OLED</a>&nbsp;cho khả&nbsp;năng hiển thị tốt</strong></h3>\r\n\r\n<p>Một điều đ&aacute;ng khen tr&ecirc;n Note 9 l&agrave; k&iacute;ch thước m&agrave;n h&igrave;nh được n&acirc;ng l&ecirc;n th&agrave;nh 6.4 inch so với tiền nhiệm nhưng k&iacute;ch thước tổng thể kh&ocirc;ng đổi, ch&iacute;nh nhờ Samsung đ&atilde; l&agrave;m cho phần viền cạnh dưới mỏng hơn. Cạnh tr&ecirc;n c&ograve;n lại kh&ocirc;ng đổi khi Samsung n&oacute;i kh&ocirc;ng với m&agrave;n h&igrave;nh tai thỏ (notch) vốn l&agrave; xu hướng thiết kế hiện nay. Về tỉ lệ v&agrave; độ ph&acirc;n giải th&igrave; Note 9 kh&ocirc;ng kh&aacute;c nhiều so với Note 8 khi vẫn sử dụng m&agrave;n h&igrave;nh 18:5:9 k&egrave;m độ ph&acirc;n giải 2960x1440 pixels sắc n&eacute;t.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/samsung/samsung-galaxy-note-9-hinh2.jpg_1.jpg\" style=\"height:560px; width:840px\" /></p>\r\n\r\n<p>Tất nhi&ecirc;n về chất lượng hiện thị th&igrave; Note 9 vẫn l&agrave; một trong những mẫu smartphone c&oacute; m&agrave;n h&igrave;nh OLED tốt nhất hiện nay. Theo đ&aacute;nh gi&aacute; Display Mate, m&aacute;y c&oacute; độ ch&iacute;nh x&aacute;c m&agrave;u tuyệt đối v&agrave; khả năng hiện thị m&agrave;u sắc ch&iacute;nh x&aacute;c nhất, độ s&aacute;ng tăng cao hơn 27% so với Note 8 v&agrave; độ tương phản l&agrave; 32 %. Tr&ecirc;n thực tế, Note 9 mang đến trải nghiệm ho&agrave;n hảo tr&ecirc;n mọi g&oacute;c cạnh, m&agrave;n h&igrave;nh lớn khi kết hợp c&ugrave;ng m&agrave;u sắc sống động gi&uacute;p cho những trải nghiệm khi xem phim hay chơi game đều thật sự tuyệt hảo.</p>\r\n\r\n<h3><strong>B&uacute;t S Pen được kết nối&nbsp;<a href=\"https://cellphones.com.vn/sforum/bluetooth-5-1-ra-mat-ho-tro-them-dinh-vi-va-dieu-huong-chinh-xac-den-tung-centimet\" target=\"_blank\">Bluetooth</a>&nbsp;chỉ cần sạc 40 gi&acirc;y cho thời gian sử dụng 30 ph&uacute;t</strong></h3>\r\n\r\n<p>Một điểm đặc biệt l&agrave; b&uacute;t S Pen mới đ&atilde; được bổ sung kết nối Bluetooth để sử dụng điều khiển từ xa cho một số ứng dụng tr&ecirc;n điện thoại như chuyển chế độ chụp v&agrave; chụp ảnh, nghe nhạc, ghi &acirc;m, di chuyển tới lui khi xem ảnh v&agrave; điều khiển slide tr&igrave;nh chiếu PowerPoint, &hellip; S Pen đ&atilde; trở n&ecirc;n đa dụng hơn v&agrave; đến được với số người dụng hơn, kh&ocirc;ng chỉ hữu &iacute;ch với nh&oacute;m người cần vẽ vời hay viết ghi ch&uacute; nữa. B&acirc;y giờ bạn đ&atilde; c&oacute; thể tự sướng kh&ocirc;ng lo rung tay hay c&oacute; để điều khiển file thuyết tr&igrave;nh ngay tr&ecirc;n Note 9 với sự hỗ trợ của&nbsp;<a href=\"https://www.samsung.com/vn/apps/samsung-dex/\" target=\"_blank\">DeX&nbsp;</a>HDMI&nbsp;v&agrave; b&uacute;t S Pen m&agrave; kh&ocirc;ng cần d&ugrave;ng đến laptop nữa.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/samsung/samsung-galaxy-note-9-hinh3.jpg_1.jpg\" style=\"height:560px; width:840px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/samsung/samsung-galaxy-note-9-hinh3.jpg_1.jpg\" style=\"height:560px; width:840px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"Khi nghe tin rò rỉ bút S Pen hỗ trợ Bluetooth, nhiều người đã lo ngại vấn đề sạc pin của nó. Thực tế thì S Pen khing dùng pin mà dùng siêu tụ điện, có thể sạc đầy chỉ trong 40 giây sau khi đút vào máy theo như công bố của Samsung. Mỗi lần sạc bút đủ dùng trong 30 phút ở chế độ kết nỗi Bluetooth với điện thoại, tương đương 200 lần bấm. Khi hết pin, bút vẫn có thể sử dụng các chức năng thông thường như viết, vẽ, tin nhắn động, …  Camera được tích hợp công nghệ Dual Pixel cho khả năng chụp ảnh thiếu sáng ấn tượng Với sự kết hợp của AI (trí thông minh nhân tạo) thì camera Note 9 sẽ mang đến chất lượng hình ảnh khá ấn tượng sau khoảng thời gian sử dụng. Khả năng nhận dạng khá nhanh chóng các trường hợp thường thấy ở smartphone như ống kính bị ẩn, phát hiện ra chủ thể đang nhắm mắt.\" /><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/samsung/samsung-galaxy-note-9-hinh4.jpg_1.jpg\" style=\"height:560px; width:840px\" /></p>\r\n\r\n<p>Sở hữu khẩu độ cao, khả năng t&ugrave;y chỉnh khẩu độ theo từng m&ocirc;i trường &aacute;nh s&aacute;ng. Note 9 kh&ocirc;ng kh&oacute; để l&agrave;m chủ những khung h&igrave;nh thiếu s&aacute;ng. Độ chi tiết vẫn thể hiện kh&aacute; tốt, m&agrave;u sắc kh&ocirc;ng bị bệch. Ngo&agrave;i ra với lợi thế từ c&ocirc;ng nghệ Dual Pixel t&iacute;ch hợp b&ecirc;n trong cảm biến ảnh của Note 9, tốc độ chụp trong điều kiện thiếu s&aacute;ng vẫn đảm bảo chủ thể kh&ocirc;ng bị rung, nh&egrave;o khi đang di chuyển.</p>\r\n\r\n<h3><strong>Cấu h&igrave;nh mạnh khi sở hữu chip&nbsp;<a href=\"https://cellphones.com.vn/sforum/exynos-9810-vuot-moc-4-000-diem-don-loi-trong-bai-kiem-tra-hieu-nang-cua-geekbench\" target=\"_blank\">Exynos 9810</a>&nbsp;v&agrave; thời lượng pin l&ecirc;n đến 4000 mAh</strong></h3>\r\n\r\n<p>Với những g&igrave; ưu t&uacute; v&agrave; mạnh mẽ nhất th&igrave; Samsung đ&atilde; trang bị cho Note 9 bộ vi xử l&yacute; Exynos 9810 k&egrave;m theo đ&oacute; l&agrave; bộ nhớ RAM 6 GB cho phi&ecirc;n bản 128 GB v&agrave; 8 GB cho phi&ecirc;n bản 512 GB. Thừa sức để đ&aacute;p ứng cho người d&ugrave;ng ở mọi thao t&aacute;c d&ugrave; l&agrave; những tựa game nặng k&yacute; nhất hiện nay th&igrave; mọi thứ vẫn rất mượt m&agrave;.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/samsung/samsung-galaxy-note-9-hinh5.jpg_1.jpg\" style=\"height:560px; width:840px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"Không những thế, Note 9 còn sở hữu dung lượng pin khủng lên đến 4000 mAh giúp cho người dùng có thể tự tin bật Wi-Fi và 4G liên tục. Với nhu cầu sử dụng hàng ngày thì thông thường 1 ngày rưỡi đến 2 ngày mới phải sạc một lần. Có thể nói đây là yếu tố rất đáng giá vì phần lớn smartphone cao cấp hiện tại chỉ có thời lượng pin trung bình chứ không quá thoải mái sử dụng.  Mua Samsung Galaxy Note 9 giá ưu đãi chỉ có tại CellphoneS Cả về thiết kế, hiệu năng, camera lẫn bút S Pen đều được Samsung trau chuốt từng chút một, tạo nên một khối thống nhất hoàn hảo và khác biệt hơn bất kỳ mẫu máy cao cấp nào trên thị trường hiện nay. Hiện tại CellphoneS đang có mức giá hết sức ưu đãi dành cho sản phẩm Samsung Galaxy Note 10 cùng với đó là thời gian bảo hành dài hạn lên đến 12 tháng từ ngày quý khách mua sản phẩm.\" /></p>\r\n\r\n<p>Kh&ocirc;ng những thế, Note 9 c&ograve;n sở hữu dung lượng pin khủng l&ecirc;n đến 4000 mAh gi&uacute;p cho người d&ugrave;ng c&oacute; thể tự tin bật Wi-Fi v&agrave;&nbsp;<a href=\"https://cellphones.com.vn/sforum/mang-4g-la-gi-toc-do-co-that-su-vuot-troi-hon-3g\" target=\"_blank\">4G</a>&nbsp;li&ecirc;n tục. Với nhu cầu sử dụng h&agrave;ng ng&agrave;y th&igrave; th&ocirc;ng thường 1 ng&agrave;y rưỡi đến 2 ng&agrave;y mới phải sạc một lần. C&oacute; thể n&oacute;i đ&acirc;y l&agrave; yếu tố rất đ&aacute;ng gi&aacute; v&igrave; phần lớn smartphone cao cấp hiện tại chỉ c&oacute; thời lượng pin trung b&igrave;nh chứ kh&ocirc;ng qu&aacute; thoải m&aacute;i sử dụng.</p>\r\n\r\n<h3><strong>Mua Samsung Galaxy Note 9 gi&aacute; ưu đ&atilde;i&nbsp;</strong></h3>\r\n\r\n<p>Cả về thiết kế, hiệu năng, camera lẫn b&uacute;t S Pen đều được Samsung trau chuốt từng ch&uacute;t một, tạo n&ecirc;n một khối thống nhất ho&agrave;n hảo v&agrave; kh&aacute;c biệt hơn bất kỳ mẫu m&aacute;y cao cấp n&agrave;o tr&ecirc;n thị trường hiện nay. Hiện tại CellphoneS đang c&oacute; mức gi&aacute; hết sức ưu đ&atilde;i d&agrave;nh cho sản phẩm Samsung Galaxy Note 10 c&ugrave;ng với đ&oacute; l&agrave; thời gian bảo h&agrave;nh d&agrave;i hạn l&ecirc;n đến 12 th&aacute;ng từ ng&agrave;y qu&yacute; kh&aacute;ch mua sản phẩm.</p>\r\n', 2, 367, 5, 15, 22980000, 18900000, '2019-06-10 00:14:46', '1', '2019-06-27 16:37:01', '1', 0, 1),
(27, 2, 'Chai Xịt họng Keo ong Hữu cơ Ladrome 30 ml\r\n', 'chai-xit-hong-keo-ong-huu-co-propolis-30-ml', 'cadd73e4617f599e52932e90a8f94976.jpg', 'b96fbb511e7d5d4424ca2eae52a3eb28.jpg#d5276929094f87e470ca2d957917c59d.jpg#ab6c2dc71ee55a8e3aa58b9dfe6ec896.jpg#d7ed3e9c74108cfa3d260b8b097ca6a1.jpg', 'Thiết kế Samsung Galaxy S8 Plus: vẻ đẹp độc đáo từ màn hình “không viền”', '<h2>Samsung Galaxy S8 Plus ch&iacute;nh h&atilde;ng</h2>\r\n\r\n<p>Sau th&agrave;nh c&ocirc;ng vang dội của bộ đ&ocirc;i&nbsp;<a href=\"https://cellphones.com.vn/mobile/samsung/galaxy-s/galaxy-s7-s7-edge.html\" target=\"_blank\">Galaxy S7, Galaxy S7 Edge</a>, Samsung tiếp tục mang đến cho thị trường nhiều bất ngờ với cặp&nbsp;<a href=\"https://cellphones.com.vn/mobile/samsung/galaxy-s8.html\" target=\"_blank\">Galaxy S8/S8 Plus</a>&nbsp;sở hữu thiết kế độc đ&aacute;o v&agrave; nhiều t&iacute;nh năng mới th&uacute; vị. Trong đ&oacute;, Galaxy S8 Plus được dự b&aacute;o sẽ l&agrave; đối thủ xứng tầm của d&ograve;ng iPhone Plus.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.cellphones.com.vn/media/wysiwyg/mobile/samsung/samsung-galaxy-s8-plus-chinh-hang-1.jpg\" style=\"height:458px; width:640px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Vẫn l&agrave; thiết kế nguy&ecirc;n khối với bộ khung nh&ocirc;m v&agrave; hai mặt trước sau ốp k&iacute;nh cường lực b&oacute;ng bảy, nhưng Galaxy S8 Plus đ&atilde; được n&acirc;ng l&ecirc;n một tầm cao mới khi phần viền được l&agrave;m cực mỏng, tr&agrave;n ra s&aacute;t c&aacute;c m&eacute;p cạnh, tạo n&ecirc;n m&agrave;n h&igrave;nh m&agrave; Samsung gọi l&agrave; &ldquo;v&ocirc; cực&rdquo;, tạo n&ecirc;n một vẻ đẹp vừa độc đ&aacute;p vừa quyến rũ.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>M&agrave;n h&igrave;nh Samsung Galaxy S8 Plus: hai cạnh cong, hiển thị sắc n&eacute;t đến từng chi tiết</h3>\r\n\r\n<p>Hai cạnh b&ecirc;n của Galaxy S8 Plus được l&agrave;m cong 3D v&agrave; vẫn được t&iacute;ch hợp thanh c&ocirc;ng cụ gi&uacute;p người d&ugrave;ng truy cập nhanh c&aacute;c ứng dụng rất tiện lợi.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.cellphones.com.vn/media/wysiwyg/mobile/samsung/samsung-galaxy-s8-plus-chinh-hang-2.jpg\" style=\"height:427px; width:640px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Về m&agrave;n h&igrave;nh, Samsung trang bị độ ph&acirc;n giải 1440 x 2960 theo tỷ lệ mới (18.5:9) nhằm tối ưu h&oacute;a đa nhiệm, kết hợp c&ugrave;ng k&iacute;ch thước lớn, l&ecirc;n đến 6.2 inch mang lại cho người d&ugrave;ng trải nghiệm ấn tượng khi xem phim v&agrave; chơi game giải tr&iacute;.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Hiệu năng Samsung Galaxy S8 Plus: mạnh mẽ đến kinh ngạc</h3>\r\n\r\n<p>Samsung Galaxy S8 Plus C&ocirc;ng ty được trang bị vi xử l&yacute; Exynos 8895 t&aacute;m nh&acirc;n sản xuất tr&ecirc;n tiến tr&igrave;nh 10nm hiện đại cho hiệu năng cực kỳ đ&aacute;ng nể. N&oacute; đạt kết quả benchmark vượt trội hơn tất cả những smartphone c&oacute; mặt tr&ecirc;n thị trường v&agrave;o thời điểm ra mắt, kể cả iPhone 7 Plus.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.cellphones.com.vn/media/wysiwyg/mobile/samsung/samsung-galaxy-s8-plus-chinh-hang-3.jpg\" style=\"height:360px; width:640px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Nhiều t&iacute;nh năng hữu &iacute;ch trang bị tr&ecirc;n Samsung Galaxy S8 Plus</h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Với Galaxy S8 Plus, người d&ugrave;ng tự tin nghe điện thoại dưới trời mưa v&igrave; m&aacute;y được t&iacute;ch hợp ti&ecirc;u chuẩn chống nước IP68 (ng&acirc;m được trong nước ở độ s&acirc;u 1,5m trong v&ograve;ng 30 ph&uacute;t).</p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, Galaxy S8 Plus hỗ trợ người d&ugrave;ng bảo mật theo nhiều h&igrave;nh thức: bằng mật khẩu, h&igrave;nh vẽ, v&acirc;n tay hoặc mống mắt. Bạn cũng c&oacute; thể mở kh&oacute;a nhanh bằng c&aacute;ch k&iacute;ch hoạt chế độ nhận diện khu&ocirc;n mặt.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.cellphones.com.vn/media/wysiwyg/mobile/samsung/samsung-galaxy-s8-plus-chinh-hang-5.jpg\" style=\"height:327px; width:640px\" /></p>\r\n\r\n<p>Những thao t&aacute;c hằng ng&agrave;y sẽ được thực hiện nhanh ch&oacute;ng m&agrave; kh&ocirc;ng cần d&ugrave;ng đến đ&ocirc;i tay nhờ trợ l&yacute; ảo Bixby mới (điều khiển bằng giọng n&oacute;i) m&agrave; Samsung trang bị cho Galaxy S8 Plus. Đặc biệt, h&atilde;ng c&ograve;n ph&aacute;t h&agrave;nh một phụ kiện đặc biệt c&oacute; t&ecirc;n Samsung DeX để biến Galaxy S8 Plus th&agrave;nh m&aacute;y t&iacute;nh để b&agrave;n.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Camera Samsung Galaxy S8 Plus: ng&agrave;y c&agrave;ng gần hơn với m&aacute;y ảnh chuy&ecirc;n nghiệp</h3>\r\n\r\n<p>Với độ ph&acirc;n giải 12MP, ống k&iacute;nh khẩu độ lớn f/1.7, c&ocirc;ng nghệ lấy n&eacute;t DualPixel v&agrave; c&ocirc;ng nghệ chống rung quang học, camera sau của Galaxy S8 Plus mang lại những bức ảnh si&ecirc;u n&eacute;t, kh&ocirc;ng hề thua k&eacute;m m&aacute;y ảnh chuy&ecirc;n nghiệp DSLR.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.cellphones.com.vn/media/wysiwyg/mobile/samsung/samsung-galaxy-s8-plus-chinh-hang-7.jpg\" style=\"height:370px; width:640px\" /></p>\r\n\r\n<h3>Thời lượng pin Samsung Galaxy S8 Plus đ&aacute;p ứng tốt nhu cầu</h3>\r\n\r\n<p>Với vi&ecirc;n pin dung lượng 3500mAh v&agrave; con chip Exynos mới tiết kiệm điện năng, Galaxy S8 Plus đ&aacute;p ứng tốt nhu cầu l&agrave;m việc v&agrave; giải tr&iacute; trong ng&agrave;y. M&aacute;y cũng được t&iacute;ch hợp c&ocirc;ng nghệ sạc nhanh, người d&ugrave;ng c&oacute; thể nhanh ch&oacute;ng nạp lại năng lượng cho thiết bị th&ocirc;ng qua cổng USB Type-C (cắm được c&aacute;p theo cả 2 chiều) v&agrave; đế sạc kh&ocirc;ng d&acirc;y.</p>\r\n', 2, 430, 53, 20, 17900000, 12700000, '2019-06-14 21:46:25', '1', '2019-06-14 21:46:25', '1', 0, 1),
(28, 2, 'Chai Xịt họng Keo ong Hữu cơ Ladrome 30 ml\r\n', 'chai-xit-hong-keo-ong-huu-co-propolis-30-ml', '15e1004aae0ad9dc632fab1c2c49a46f.jpg', 'b4b312066a992ca228092a0fd28d66d4.jpg#6143e44c305aec0801910443dc700a6c.png', 'Điện thoại Samsung Galaxy S10 - Cập nhật thông tin cấu hình, giá bán, chương trình khuyến mãi', '<p><em>Sự kiện Samsung Unpacked 2019 đ&atilde; kh&eacute;p lại với th&agrave;nh c&ocirc;ng kh&ocirc;ng thể tuyệt vời hơn, ch&iacute;nh l&agrave; biết thế hệ S thứ 10 của m&igrave;nh th&agrave;nh t&acirc;m điểm, chiếm s&oacute;ng to&agrave;n bộ spotlight của Đại hội MWC 2019. Thực sự, Samsung Galaxy S10 kh&ocirc;ng hẳn l&agrave; bản n&acirc;ng cấp ho&agrave;n hảo về mọi mặt nhưng n&oacute; hội tụ đủ, đ&uacute;ng những yếu tố cần thiết để người d&ugrave;ng cả thấy kh&ocirc;ng nh&agrave;m ch&aacute;n v&agrave; h&agrave;o hứng muốn sở hữu. Samsung Galaxy S10 cũng ch&iacute;nh l&agrave; bước s&atilde;i ch&acirc;n xa bắt kịp với c&aacute;c đối thủ song vẫn chứng minh ng&ocirc;i vương của bản th&acirc;n sau một năm nhạt nh&ograve;a.</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>Thiết kế đỉnh cao &ndash; điểm nhấn m&agrave;n h&igrave;nh &ldquo;nốt ruồi&rdquo;</strong></h3>\r\n\r\n<p>C&ocirc;ng nghệ Infinity O đ&atilde; được Samsung c&ocirc;ng bố v&agrave; ứng dụng tr&ecirc;n c&aacute;c smartphone tầm trung của m&igrave;nh. Tuy kh&ocirc;ng c&ograve;n qu&aacute; xa lạ nhưng với ph&acirc;n kh&uacute;c cao cấp đ&acirc;y l&agrave; một sự mới mẻ b&ecirc;n cạnh một rừng tai thỏ đủ thế loại. Tấm nền hiển thị tr&ecirc;n S10 cũng đ&atilde; được n&acirc;ng cấp, v&agrave; giờ đ&acirc;y sau bao nhi&ecirc;u năng gắn b&oacute; với Super AMOLED, Samsung gọi c&ocirc;ng nghệ mới của m&igrave;nh l&agrave; Dynamic AMOLED. Samsung Galaxy S10 c&oacute; độ ph&acirc;n giải m&agrave;n h&igrave;nh Quad HD+ với tỷ lệ 19:9 mới, điều đặt biệt l&agrave; độ s&aacute;ng của tấm nền mới l&ecirc;n đến 1200nits đạt chuẩn HDR10 v&agrave; HDR10+ đầu ti&ecirc;n tr&ecirc;n thiết bị duy động. Kh&ocirc;ng những thế Samsung Galaxy S10 c&ograve;n được c&ocirc;ng nhận đạt 100% chuẩn m&agrave;u điện ảnh DCI-P3 v&agrave; độ tương phản khủng khiếp 2.000.000:1. Hiển thị tr&ecirc;n Galaxy S10 kh&ocirc;ng c&oacute; g&igrave; để c&oacute; thể ph&agrave;n n&agrave;n bất kể mục đ&iacute;ch sử dụng, điều kiện m&ocirc;i trường.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/samsung/samsung-galaxy-s10.jpg\" style=\"height:408px; width:840px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Vẫn l&agrave; triết l&yacute; thiết kế quen thuộc của Samsung từ 2016, kim loại c&ugrave;ng với 2 mặt k&iacute;nh cong nhưng tr&igrave;nh độ ho&agrave;n thiện của Samsung Galaxy S10 đ&atilde; đạt đến tr&igrave;nh độ tuyệt hảo đến từng chi tiết nhỏ. M&agrave;u sắc cũng l&agrave; điểm thu h&uacute;t của c&aacute;c series S10 vẫn bắt kịp xung hướng Gradient nhưng c&aacute;ch l&agrave;m của Samsung v&ocirc; c&ugrave;ng tinh tế v&agrave; nhẹ nh&agrave;ng d&ugrave; l&agrave; chuyển m&agrave;u nhưng vẫn giữ t&ocirc;ng m&agrave;u ch&iacute;nh chủ đạo kh&ocirc;ng kề qu&aacute; rực, qu&aacute; chỏi nhau. Khung viền được đ&aacute;nh b&oacute;ng, c&ugrave;ng với mặt trước một m&agrave;u đen tạo cho viền c&oacute; cảm đ&atilde; mỏng lại c&agrave;ng mỏng hơn. Cụm ba camera sau đặt ngang hơi hướng của Note 8, kh&ocirc;ng c&ograve;n cảm biến v&acirc;n tay b&agrave;n chạm nữa n&ecirc;n mặt lưng trong gọn g&agrave;n c&acirc;n đối. Cạnh tr&ecirc;n l&agrave; khe sim + thẻ nhớ, dưới vẫn l&agrave; cổng 3.5mm + cổng sạc type-C + loa ngo&agrave;i, ph&iacute;m &acirc;m lượng + ph&iacute;m Bixby vẫn b&ecirc;n tr&aacute;i, b&ecirc;n phải l&agrave; ph&iacute;m nguồn.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/samsung/s10_-_m_t_sau.jpg\" style=\"height:605px; width:840px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Tuy được đ&aacute;nh gi&aacute; cao về thiết kế song Samsung Galaxy S10 vẫn vấp phải nhưng tranh c&atilde;i về mặt thiết kế. Về ph&iacute;m nguồn đặt qu&aacute; cao, g&acirc;y thay t&aacute;c cho những người c&oacute; b&agrave;n tay nhỏ kh&oacute; khăn hơn. Hay kịch liệt hơn ch&iacute;nh l&agrave; c&ocirc;ng nghệ Infinity - O, phần nhỏ người d&ugrave;ng kh&ocirc;ng chấp nhận với việc m&agrave;n h&igrave;nh bị 1 lỗ đen ngứa mắt, cản trở hiển thị, phần c&ograve;n lại th&igrave; chấp nhận v&igrave; giới hạn c&ocirc;ng nghệ cũng như thấy b&igrave;nh thường v&igrave; kh&ocirc;ng ản hưởng qu&aacute; nhiều đến khả năng sử dụng hay hiển thị. Rồi ngay cả c&ocirc;ng nghệ mới v&acirc;n tay si&ecirc;u &acirc;m cũng bị ch&ecirc; tr&aacute;ch l&agrave; qu&aacute; chậm, kh&ocirc;ng thể d&aacute;m m&agrave;n h&igrave;nh&hellip; Nhưng tất cả những điều tr&ecirc;n đều kh&ocirc;ng thể phủ nhận l&agrave; Samsung Galaxy S10 gần như tiệm cận đến sự ho&agrave;n hảo.</p>\r\n\r\n<h3><strong>Bộ vi xử l&yacute; mới ho&agrave;n to&agrave;n, dung lượng pin cao chưa từng c&oacute;</strong></h3>\r\n\r\n<p>Ở thị trường Việt Nam, Samsung trang bị con chip &ldquo;nh&agrave; l&agrave;m&rdquo; Exynos 9820 Octa-core, tiến tr&igrave;nh 8nm mới nhất, 3 cụm nh&acirc;n phối hợp với nhau gồm 2xCustomCPU(M4), 2xCortexA75 v&agrave; 4xCortexA55 cho ph&eacute;p xung nhịp tối đa l&ecirc;n đến 2.7Hz. Về GPU th&igrave; Galaxy S10 trang bị Mali G76MP12 tăng đến 40% so với GPU đang trang bị tr&ecirc;n S9. Hỗ trợ chuẩn RAM cao nhất 4x 16-bit CHLPDDR4x l&ecirc;n đến 12GB, Exynos 9820 hổ trợ USF3.0 nhanh gấp 2 lần chuẩn 2.1 (2.9GHz). B&ecirc;n cạnh đ&oacute; tr&ecirc;n Exynos 9820 c&ograve;n được trang bị 2 nh&acirc;n NPU ri&ecirc;ng biệt hổ trợ c&aacute;c t&iacute;nh năng AI t&iacute;ch hợp v&agrave; d&ugrave;ng AI để do lường ch&iacute;nh x&aacute;c c&oacute; tiến tr&igrave;nh tr&ecirc;n m&aacute;y ph&acirc;n bổ t&agrave;i nguy&ecirc;n m&aacute;y, c&ograve;n c&oacute; c&aacute;c khu vực d&agrave;nh ri&ecirc;ng cho bảo mật, xử l&iacute; h&igrave;nh ảnh&hellip; Theo l&iacute; thuyết th&igrave; năng lực xử l&yacute; của 9820 cao hơn 20% so với 9810 v&agrave; tiết kiệm pin hơn 40%.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/samsung/samsung-galaxy-s10-cau-hinh.jpg\" style=\"height:343px; width:840px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dung lượng pin cũng l&agrave; thứ được Samsung nhấn mạnh cho S10, với vi&ecirc;n pin 4100mAh lớn nhất trong c&aacute;c flagship Samsung hiện tại cho ph&eacute;p d&ugrave;ng trong cả ng&agrave;y d&agrave;i, thậm ch&iacute; sạc ngược cho thiết bị kh&aacute;c bằng t&iacute;nh năng Wireless Powershare mới. Đ&acirc;y cũng l&agrave; lần đầy ti&ecirc;n, Samsung n&acirc;ng tốc độ sạc sau vụ việc Note7, từ 18watt l&ecirc;n 25watt kh&aacute; d&egrave; dặt nhưng vẫn l&agrave;m ấm l&ograve;ng người sử dụng khi m&agrave; Samsung đ&atilde; ở qu&aacute; l&acirc;u với chuẩn Quick Charge 2.0.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/samsung/Screenshot_5.jpg\" style=\"height:318px; width:840px\" /></p>\r\n\r\n<p>Với cấu h&igrave;nh mạnh mẻ hiện tại cũng dung lượng pin thoải m&aacute;i, Galaxy S10 hầu như c&oacute; thẻ g&aacute;nh mọi t&aacute;c vụ nặng nề nhất tr&ecirc;n Android b&acirc;y giờ như chỉnh sửa h&igrave;nh ảnh, l&agrave;m video, t&aacute;c vụ AR, chơi c&aacute;c game khủng nhất tr&ecirc;n CH Play m&agrave; kh&ocirc;ng lo lắng t&igrave;nh trạng chậm, giật lag&hellip;</p>\r\n\r\n<h3><strong>Gia nhập hội flagship ba camera sau &ldquo;chậm nhưng chắc&rdquo;</strong></h3>\r\n\r\n<p>Thiếu s&oacute;t nếu kh&ocirc;ng đề cập đến những n&acirc;ng cấp s&aacute;ng gi&aacute; tr&ecirc;n bộ 3 camera tr&ecirc;n Galaxy S10. Ngo&agrave;i ống k&iacute;nh ch&iacute;nh f1.5-2.4 c&oacute; Dualpixel v&agrave; lấy n&eacute;t theo pha, c&ugrave;ng ống tele 2x f2.4 th&igrave; t&ecirc;n S10 c&ograve;n c&oacute; th&ecirc;m 1 mắt si&ecirc;u rộng l&ecirc;n đến 123 độ f2.2 Điểm được Samsung nhấn mạnh nhất năm nay tr&ecirc;n bộ ba camera ch&iacute;nh l&agrave; chất lượng video khi m&agrave;n được trang bị th&ecirc;m t&iacute;nh năng Steady Shot khiến cho khả năng chống rung tuyệt vời hơn. B&ecirc;n cạnh đ&oacute; sau, c&oacute; v&agrave;i sự thay đổi ch&iacute;nh l&agrave; t&iacute;nh năng x&oacute;a ph&ocirc;ng đ&atilde; được Samsung chuyển từ cam tele về cam ch&iacute;nh. Vừa c&oacute; lợi cũng vừa c&oacute; hại, ảnh từ cam ch&iacute;nh cho ra m&agrave;u sắc chi tiết hay độ s&aacute;ng đều nhỉnh hơn cam tele, g&oacute;c cũng rộng hơn nhưng b&ugrave; lại khi muốn lấy được gần chủ thể phải zoom bằng ch&acirc;n, v&agrave; khả năng t&aacute;ch nền tạo bokeh đều bằng phần mềm n&ecirc;n sẽ c&oacute; đ&ocirc;i ch&uacute;t kh&aacute;c biệt.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/samsung/Screenshot_4.jpg\" style=\"height:488px; width:840px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Năm nay d&atilde;y nhạy s&aacute;ng cũng ch&iacute;nh l&agrave; một trong những sự cả tiến lớn. Khi m&agrave; cả cam trước lẫn cam sau đều phải gọi l&agrave; xuất sắc khi chụp c&aacute;c bức ngược s&aacute;ng, hay gần nguồn s&aacute;ng mạnh. N&oacute;i về camera trước, sự quay lại của lấy n&eacute;t tự động v&agrave; bổ sung th&ecirc;m g&oacute;c chụp rộng hơn l&agrave;m cho c&aacute;c t&ugrave;y chọn selfie phong ph&uacute; v&agrave; chuy&ecirc;n nghiệp hơn. M&agrave;u da v&agrave; c&aacute;c chi tiết đều được giữ lại nhiều hơn, do độ ph&acirc;n giải được n&acirc;ng l&ecirc;n từ 8MP l&ecirc;n 10MP.</p>\r\n\r\n<h3><strong>Giao diện mới OneUI hiện đại, hổ trợ tốt m&agrave;n h&igrave;nh d&agrave;i</strong></h3>\r\n\r\n<p>C&oacute; qu&aacute; nhiều b&agrave;i đ&aacute;nh gi&aacute; trải nghiệm OneUI kể từ khi S10 chưa xuất hiện, hầu như giao diện được trang bị tr&ecirc;n S10 sẽ kh&ocirc;ng kh&aacute;c qu&aacute; nhiều tr&ecirc;n S9 hay Note9 được cập nhật. OneUI được khen nức nở bởi t&iacute;nh tiện dụng c&ugrave;ng với những thay đổi th&acirc;n thiện hơn với người d&ugrave;ng, c&aacute;c t&iacute;nh năng như Darkmode hay điều khiển cử chỉ đều được trang bị ngo&agrave;i ra nhưng thay đổi nhỏ về c&aacute;ch sắp xếp hiện thị cũng ghi điểm c&ocirc;ng cho OneUI trong mắt người ti&ecirc;u d&ugrave;ng.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/samsung/s10_-_OneUI.jpg\" style=\"height:566px; width:840px\" /></p>\r\n\r\n<p>Tuy nhi&ecirc;n v&agrave;i vấn đề tr&ecirc;n OneUI ch&iacute;nh l&agrave; bộ Icon mới trong hoạt h&igrave;nh v&agrave; k&eacute;m sang hẳn so với giao diện cũ. V&agrave; c&aacute;ch điều hướng cử chỉ tr&ecirc;n OneUI kh&aacute; l&agrave; ngu, chả mấy tuận tiện cho người d&ugrave;ng.</p>\r\n\r\n<h3><strong>C&aacute;c t&iacute;nh năng mới được trang bị tr&ecirc;n Galaxy S10</strong></h3>\r\n\r\n<p>Phải kể đến t&iacute;nh năng được Samsung nhấn kh&aacute; s&acirc;u v&agrave; mạnh tr&ecirc;n S10 ch&iacute;nh l&agrave; t&iacute;nh năng sạc ngược Wireless Powershare. Thực tế đ&acirc;y kh&ocirc;ng phải l&agrave; t&iacute;nh năng mới do Samsung nghĩ ra, nhưng trước đ&oacute; với Huawei chưa bao giờ biến t&iacute;nh năng n&agrave;y trở n&ecirc;n hữu &iacute;ch, bởi mang t&iacute;nh tr&igrave;nh diễn nhiều hơn l&agrave; tiện &iacute;ch. Tuy nhi&ecirc;n với hệ sinh th&aacute;i Galaxy, như tai nghe Galaxy Bubs hay đồng hồ Galaxy Watch, Samsung sẽ gi&uacute;p t&iacute;nh năng n&agrave;y c&oacute; nhiều đất diễn hơn.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/samsung/Samsung-galaxy-s10-plus-chinh-hang-8.jpg\" style=\"height:444px; width:840px\" /></p>\r\n\r\n<p>Một t&iacute;nh năng được xem l&agrave; điểm nhấn của S10 ch&iacute;nh l&agrave; cảm biến v&acirc;n tay si&ecirc;u &acirc;m 3D. đ&acirc;y cũng kh&ocirc;ng phải l&agrave; t&iacute;nh năng mới bởi n&oacute; đ&atilde; được Qualcomm nghi&ecirc;n cứu v&agrave; giới thiệu từ l&acirc;u, nhưng phải đến gần đ&acirc;y khi vị tr&iacute; của n&oacute; được đưa xuống dưới m&agrave;n h&igrave;nh th&igrave; mới được xem l&agrave; t&iacute;nh năng mới, v&agrave; Samsung l&agrave; nh&agrave; sản xuất đầu ti&ecirc;n d&ugrave;ng t&iacute;nh năng n&agrave;y. Cơ chế hoạt độ bằng s&oacute;ng &acirc;m vẻ bản đồ 3D v&acirc;n tay, ch&iacute;nh đến từng nm nếu so với c&ocirc;ng nghệ nhận diện Gương mặt th&igrave; đ&acirc;y ch&iacute;nh l&agrave; FaceID của Apple v&igrave; n&oacute; d&ugrave;ng h&igrave;nh ảnh 3D của sinh trắc học chứ kh&ocirc;ng pahir l&agrave; ảnh 2D th&ocirc;ng thường. T&iacute;nh năng tương lai n&agrave;y cho ph&eacute;p sử dụng cả khi ng&oacute;n tay bị d&iacute;nh nước, dầu, lotion&hellip; nhưng lại cự tuyệt d&aacute;n cường lực hay miếng d&aacute;n th&ocirc;ng thường. Trong tương lai Samsung sẽ chắc chắn cho ra mắt những miếng d&aacute;n hỗ trợ c&ocirc;ng nghệ n&agrave;y vừa d&ugrave;ng được v&acirc;n tay, vừa bảo vệ điện thoại khỏi trầy xướt.</p>\r\n', 2, 320, 310, 20, 20900000, 15400000, '2019-06-10 00:20:01', '1', '2019-06-29 15:12:27', '1', 0, 1),
(29, 10, 'Chai Xịt họng Keo ong Hữu cơ Ladrome 30 ml\r\n', 'chai-xit-hong-keo-ong-huu-co-propolis-30-ml', '21944f52af19e4446f7755621031fbd2.jpg', '6c6044d233d6a8373c7f214ae4900462.jpg', 'Loa Bluetooth Xiaomi Mi Basic 2 rất tinh tế, thuận tiện cho di động', '<h2>Đặc điểm loa Bluetooth Xiaomi Mi Basic 2 Ch&iacute;nh h&atilde;ng</h2>\r\n\r\n<p>Như truyền thống của thương hiệu,&nbsp;<strong>loa Bluetooth Xiaomi Mi Basic 2</strong>&nbsp;được b&aacute;n với mức gi&aacute; hấp dẫn m&agrave; chất lượng kh&ocirc;ng hề thua k&eacute;m nhiều sản phẩm gi&aacute; c&oacute; gi&aacute; cao hơn.&nbsp;<a href=\"https://cellphones.com.vn/thiet-bi-am-thanh/loa/xiaomi.html\" target=\"_blank\">Loa Xiaomi</a>&nbsp;l&agrave; sự lựa chọn l&yacute; tưởng với những người d&ugrave;ng muốn &ldquo;đổi gi&oacute;&rdquo; khi nghe nhạc d&ugrave; điều kiện t&agrave;i ch&iacute;nh hạn chế.</p>\r\n\r\n<p><strong>Loa Xiaomi Mi Basic 2</strong>&nbsp;c&oacute; k&iacute;ch thước vừa phải v&agrave; trọng lượng nhẹ, thuận tiện để người d&ugrave;ng mang theo tr&ecirc;n tay hay bỏ v&agrave;o ba l&ocirc;, t&uacute;i x&aacute;ch. B&ecirc;n cạnh đ&oacute;, loa sở hữu phần khung nh&ocirc;m v&agrave; c&aacute;c cạnh v&aacute;t được ho&agrave;n thiện tinh tế, tất cả pha trộn lại với nhau một c&aacute;ch ho&agrave;n hảo tạo n&ecirc;n vẻ đẹp đầy phong c&aacute;ch cho sản phẩm.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"/DO-AN-TN-2019/public/upload/images/Loa-Bluetooth-Xiaomi-Mi-Basic-2-Chinh-hang-4.jpg\" style=\"height:570px; width:840px\" /></p>\r\n\r\n<p><strong>Loa Xiaomi Mi Basic 2</strong>&nbsp;c&oacute; k&iacute;ch thước vừa phải v&agrave; trọng lượng nhẹ, thuận tiện để người d&ugrave;ng mang theo tr&ecirc;n tay hay bỏ v&agrave;o ba l&ocirc;, t&uacute;i x&aacute;ch. B&ecirc;n cạnh đ&oacute;, loa sở hữu phần khung nh&ocirc;m v&agrave; c&aacute;c cạnh v&aacute;t được ho&agrave;n thiện tinh tế, tất cả pha trộn lại với nhau một c&aacute;ch ho&agrave;n hảo tạo n&ecirc;n vẻ đẹp đầy phong c&aacute;ch cho sản phẩm.</p>\r\n\r\n<p><img alt=\"\" src=\"/DO-AN-TN-2019/public/upload/images/Loa-Bluetooth-Xiaomi-Mi-Basic-2-Chinh-hang-2.jpg\" style=\"height:481px; width:840px\" /></p>\r\n\r\n<h3>Loa Bluetooth Xiaomi Mi Basic 2 t&iacute;ch hợp micro</h3>\r\n\r\n<p>Với micro t&iacute;ch hợp,&nbsp;<strong><a href=\"https://cellphones.com.vn/loa-bluetooth-xiaomi-mi-basic-2-chinh-hang.html\" target=\"_self\">loa Xiaomi Mi Basic 2 ch&iacute;nh h&atilde;ng</a></strong>&nbsp;gi&uacute;p người d&ugrave;ng dễ d&agrave;ng trả lời cuộc gọi đến m&agrave; kh&ocirc;ng cần d&ugrave;ng điện thoại. Thay v&agrave;o đ&oacute;, bạn chỉ cần nhấn ph&iacute;m nguồn tr&ecirc;n loa, giữ đ&ocirc;i tay rảnh rang để l&agrave;m nhiều việc kh&aacute;c trong l&uacute;c tr&ograve; chuyện như xem tin tức, lau ch&ugrave;i b&agrave;n ghế...</p>\r\n\r\n<p><img alt=\"\" src=\"/DO-AN-TN-2019/public/upload/images/Loa-Bluetooth-Xiaomi-Mi-Basic-2-Chinh-hang-3.jpg\" style=\"height:493px; width:840px\" /></p>\r\n\r\n<h3>Thời lượng pin loa Bluetooth Xiaomi Mi Basic 2 rất ấn tượng</h3>\r\n\r\n<p>Với vi&ecirc;n pin lithium polymer cho 10 giờ ph&aacute;t nhạc li&ecirc;n tục,&nbsp;<strong>loa di động Xiaomi Mi Basic 2</strong>&nbsp;cung cấp thời lượng pin tuyệt vời để người d&ugrave;ng thoải m&aacute;i nghe nhạc giải tr&iacute; c&aacute; nh&acirc;n hoặc tổ chức những cuộc vui chơi c&ugrave;ng người th&acirc;n v&agrave; bạn b&egrave; trong cả ng&agrave;y m&agrave; kh&ocirc;ng phải lo lắng về việc sạc pin.</p>\r\n', 2, 560, 0, 10, 600000, 450000, '2019-06-26 17:32:25', '1', '2019-06-26 17:32:25', '1', 0, 0);
INSERT INTO `db_product` (`id`, `catid`, `name`, `alias`, `avatar`, `img`, `sortDesc`, `detail`, `producer`, `number`, `number_buy`, `sale`, `price`, `price_sale`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `status`) VALUES
(30, 10, 'Kiều mạch cán giòn Hữu cơ Health Paradise 300g', 'kieu-mach-can-gion-huu-co-health-paradise-300g', 'd5c3b13e8feada94d18a71f458e3781a.png', 'bebea5e7ff20d3499bb5ce36485fa933.png', 'Kiều mạch là một loại hạt chứa nhiều chất xơ, các loại khoáng chất khác như kẽm, sắt,.. và vitamin B. Vì thế những ai đang tìm kiếm một món ăn thay thế gạo, lúa mì, có thể chọn kiều mạch. Kiều mạch cán giòn Hữu cơ mang hương thơm cùng độ giòn tan sẽ khiến bữa sáng thêm phần tuyệt vời, cũng như làm phong phú thêm thực đơn cho ai đang theo chế độ ăn kiêng lành mạnh', '<p>Kiều mạch l&agrave; một loại hạt chứa nhiều chất xơ, c&aacute;c loại kho&aacute;ng chất kh&aacute;c như kẽm, sắt,.. v&agrave; vitamin B. V&igrave; thế những ai đang t&igrave;m kiếm một m&oacute;n ăn thay thế gạo, l&uacute;a m&igrave;, c&oacute; thể chọn kiều mạch. Kiều mạch c&aacute;n gi&ograve;n Hữu cơ mang hương thơm c&ugrave;ng độ gi&ograve;n tan sẽ khiến bữa s&aacute;ng th&ecirc;m phần tuyệt vời, cũng như l&agrave;m phong ph&uacute; th&ecirc;m thực đơn cho ai đang theo chế độ ăn ki&ecirc;ng l&agrave;nh mạnh.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Th&agrave;nh phần:</strong>&nbsp;100% Kiều mạch hữu cơ.</p>\r\n\r\n<p><strong>Khối lượng tịnh:</strong>&nbsp;300g.</p>\r\n\r\n<p><strong>Hạn sử dụng:</strong>&nbsp;In tr&ecirc;n bao b&igrave;.</p>\r\n\r\n<p><strong>Gợi &yacute; sử dụng:</strong>&nbsp;Th&iacute;ch hợp d&ugrave;ng với sữa hoặc sữa chua. C&oacute; thể kết hợp th&ecirc;m một số loại tr&aacute;i c&acirc;y hoặc hạt để th&ecirc;m phần bổ dưỡng.</p>\r\n\r\n<p><strong>Hướng dẫn bảo quản:</strong>&nbsp;Bảo quản nơi kh&ocirc; r&aacute;o v&agrave; tho&aacute;ng m&aacute;t.</p>\r\n\r\n<p><strong>Xuất xứ - Chứng nhận:</strong>&nbsp;Sản phẩm được sản xuất tại M&ocirc;ng Cổ, Trung Quốc v&agrave; được chứng nhận hữu cơ ti&ecirc;u chuẩn Ecocert.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>HEALTH PARADISE</p>\r\n\r\n<p><img alt=\"\" src=\"https://file.organica.vn/uploads/filecloud/2018/June/4/628-401091528105980-1528105980.png\" style=\"height:74px; width:300px\" /></p>\r\n\r\n<p>Health Paradise được th&agrave;nh lập từ năm 1997, l&agrave; một trong những nh&agrave; ph&acirc;n phối lớn c&aacute;c sản phẩm hữu cơ v&agrave; đầu ti&ecirc;n ở Đ&ocirc;ng Nam &Aacute;. Quy tr&igrave;nh đ&oacute;ng g&oacute;i v&agrave; t&aacute;i đ&oacute;ng g&oacute;i c&aacute;c sản phẩm hữu cơ của Health Paradise được chứng nhận đạt chuẩn hữu cơ của NASAA. B&ecirc;n cạnh đ&oacute;, Health Paradise cũng l&agrave; nh&agrave; ph&acirc;n phối c&aacute;c sản phẩm hữu cơ đầu ti&ecirc;n được chứng nhận HALAL bởi JAKIM.</p>\r\n\r\n<p>L&agrave; nh&agrave; ti&ecirc;n phong trong việc nhập khẩu c&aacute;c sản phẩm hữu cơ được chứng nhận h&agrave;ng loạt để đ&oacute;ng g&oacute;i lại v&agrave; ph&acirc;n phối, Health Paradise đảm bảo tất cả c&aacute;c sản phẩm hữu cơ được d&aacute;n nh&atilde;n v&agrave; đ&oacute;ng g&oacute;i lại hợp ph&aacute;p. Họ cũng được Hiệp hội Quốc gia về ph&aacute;t triển bền vững cấp ph&eacute;p t&aacute;i đ&oacute;ng g&oacute;i v&agrave; d&aacute;n nh&atilde;n c&aacute;c sản phẩm hữu cơ. Với vai tr&ograve; l&agrave; một cầu nối vững chắc, Organica đ&atilde; trở th&agrave;nh đối t&aacute;c ph&acirc;n phối độc quyền của Health Paradise tại Việt Nam.</p>\r\n', 2, 10, 1, 0, 1860000, 1860000, '2020-10-05 16:04:52', '1', '2020-10-05 16:06:42', '1', 0, 1),
(31, 4, 'Ngũ cốc Hữu cơ Bắp ngô cán dẹp Sottolestelle 300g', 'ngu-coc-huu-co-bap-ngo-can-dep-sottolestelle-300g', '21df19162fdf7b6406318e3415a26ba7.png', '74b6a52d48df3bbc1f0342f83c28b3a5.png', 'Ngũ cốc hữu cơ bắp ngô cán dẹp Sottolestelle 300g được làm từ bột ngô hữu cơ, đảm bảo hương vị bắp được cảm nhận chân thật khi dùng. Một lựa chọn tuyệt vời để khởi đầu ngày mới với một chút nhẹ nhàng và giòn tan.', '<p><strong>Th&agrave;nh phần:</strong>&nbsp;Bột ng&ocirc; bắp hữu cơ, Mạch nha ng&ocirc; hữu cơ, Muối.</p>\r\n\r\n<p><strong>Khối lượng tịnh:</strong>&nbsp;300g</p>\r\n\r\n<p><strong>Hạn sử dụng:</strong>&nbsp;In tr&ecirc;n bao b&igrave;.</p>\r\n\r\n<p><strong>Gợi &yacute; sử dụng:</strong>&nbsp;Ăn ri&ecirc;ng hoặc pha với sữa chua, sữa hạt hay sữa động vật. C&oacute; thể th&ecirc;m tr&aacute;i c&acirc;y hay c&aacute;c loạt hạt kh&ocirc; để tăng th&ecirc;m hương vị.</p>\r\n\r\n<p><strong>Hướng dẫn bảo quản:</strong>&nbsp;Đậy k&iacute;n v&agrave; bảo quản nơi kh&ocirc; tho&aacute;ng.</p>\r\n\r\n<p><strong>Xuất xứ - Chứng nhận:&nbsp;</strong>Sản phẩm được sản xuất tại &Yacute; v&agrave; đạt chứng nhận hữu cơ ti&ecirc;u chuẩn EU của ch&acirc;u &Acirc;u.</p>\r\n', 2, 10, 0, 0, 140000, 140000, '2020-10-05 16:12:06', '1', '2020-10-05 16:15:00', '1', 0, 1),
(32, 11, 'Hạt Quinoa hữu cơ Health Paradise 500g', 'hat-quinoa-huu-co-health-paradise-500g', '232fc9a85669dd6ce5f31fd2d98f44fc.png', '4e6e6a6d95c16ce6e959924e852289b6.png', 'Health Paradise được thành lập từ năm 1997, là một trong những nhà phân phối lớn các sản phẩm hữu cơ và đầu tiên ở Đông Nam Á. Quy trình đóng gói và tái đóng gói các sản phẩm hữu cơ của Health Paradise được chứng nhận đạt chuẩn hữu cơ của NASAA. Bên cạnh đó, Health Paradise cũng là nhà phân phối các sản phẩm hữu cơ đầu tiên được chứng nhận HALAL bởi JAKIM.', '<p>Th&agrave;nh phần: 100% hạt Quinoa hữu cơ</p>\r\n\r\n<p>Khối lượng tịnh: 500g</p>\r\n\r\n<p>C&ocirc;ng dụng:</p>\r\n\r\n<ul>\r\n	<li>Quinoa đ&atilde; trở th&agrave;nh một trong những loại ngũ cốc được ưa chuộng nhất tr&ecirc;n thế giới, chứa nhiều can-xi, chất sắt, protein thực vật, chất xơ hơn gạo, l&uacute;a m&igrave; hay yến mạch, quinoa c&ograve;n c&oacute; c&aacute;c lợi &iacute;ch về ngăn c&aacute;c bệnh về tim mạch, cải thiện sức khỏe xương, răng. Ngo&agrave;i ra, h&agrave;m lượng tinh bột trong quinoa rất thấp, ph&ugrave; hợp cho những bệnh nh&acirc;n tiểu đường, gi&uacute;p ổn định đường huyết, người muốn giảm c&acirc;n v&agrave; ăn ki&ecirc;ng.</li>\r\n	<li>Hạt Quinoa c&oacute; chứa đầy đủ c&aacute;c acid amin thiết yếu n&ecirc;n rất tốt cho phụ nữ mang thai cũng như trẻ ở giai đoạn ph&aacute;t triển. Sử dụng quinoa thường xuy&ecirc;n c&ograve;n c&oacute; c&ocirc;ng dụng chống l&atilde;o h&oacute;a cho da, gi&uacute;p da dẻ mịn m&agrave;n v&agrave; s&aacute;ng khỏe hơn. Quinoa l&agrave; một nguồn bổ sung l&agrave;nh mạnh cho bất kỳ bữa ăn v&agrave; n&oacute; c&oacute; thể được ăn như bữa ăn s&aacute;ng, hay thay thế cho gạo hoặc chất l&agrave;m đặc cho s&uacute;p, m&oacute;n hầm.</li>\r\n</ul>\r\n\r\n<p>Gợi &yacute; sử dụng:</p>\r\n\r\n<ul>\r\n	<li>N&ecirc;n ng&acirc;m 8 tiếng v&agrave; quinoa 2 tiếng trước khi nấu v&agrave; rửa sạch lại với nước, để r&aacute;o.</li>\r\n	<li>C&oacute; thể cho một &iacute;t dầu olive v&agrave;o nồi, rang sơ với lửa vừa 2-3 ph&uacute;t đến khi c&oacute; m&ugrave;i thơm v&agrave; hạt hơi ngả m&agrave;u v&agrave;ng (ch&uacute; &yacute; đừng để bị ch&aacute;y kh&eacute;t).</li>\r\n	<li>Với tỷ lệ 1 ch&eacute;n k&ecirc; / quinoa, cho 2 ch&eacute;n nước (hoặc nước hầm rau củ quả t&ugrave;y th&iacute;ch), rồi nấu với lửa vừa đến khi cạn nước, hạ nhỏ lửa v&agrave; để th&ecirc;m 5 ph&uacute;t rồi tắt bếp v&agrave; đậy nắp giữ hơi từ 5-10 ph&uacute;t, hạn chế xới mạnh tay. C&oacute; thể sử dụng nồi cơm điện để nấu như nấu cơm b&igrave;nh thường.</li>\r\n	<li>Bước tiếp theo l&agrave; tr&igrave;nh b&agrave;y v&agrave; th&ecirc;m thắt v&agrave;o những m&oacute;n để ăn k&egrave;m, k&ecirc; v&agrave; quinoa đều kh&aacute; dễ ăn v&agrave; c&oacute; thể d&ugrave;ng với nho kh&ocirc;, kỷ tử, t&aacute;o t&agrave;u, hạt điều... để l&agrave;m m&oacute;n ngọt, hoặc th&ecirc;m một ch&uacute;t muối, rau củ quả, c&aacute;c loại hạt để l&agrave;m m&oacute;n mặn.</li>\r\n</ul>\r\n\r\n<p>Hướng dẫn bảo quản: Bảo quản nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t. Đ&oacute;ng k&iacute;n t&uacute;i sau khi d&ugrave;ng.</p>\r\n\r\n<p>Xuất xứ - Chứng nhận: Sản phẩm đạt chứng nhận hữu cơ ti&ecirc;u chuẩn EU của Ch&acirc;u &Acirc;u v&agrave; NASSA của &Uacute;c.</p>\r\n', 2, 10, 1, 0, 270000, 270000, '2020-10-05 16:13:55', '1', '2020-10-10 19:07:45', '1', 0, 1),
(33, 10, 'Bánh mì cuộn Kornspitz hữu cơ (3 cái)', 'banh-mi-cuon-kornspitz-huu-co-3-cai', '98d7ff3aa1359bb1b34e8d305fc5a7f4.png', 'a30e2f1b61932d8db7591f874f1c8915.png', 'Thành phần: bột mì hữu cơ, nước, hạt bí ngô hữu cơ, hạt hướng dương hữu cơ, hạt lanh, hạt mè, bột lúa mạch đen hữu cơ, dầu hướng dương hữu cơ, đường hữu cơ, muối ăn, mạch nha, men, gluten lúa mì, bột chua, chất chống oxy hóa: ascorbic enzyme.', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>Th&agrave;nh phần: bột m&igrave; hữu cơ, nước, hạt b&iacute; ng&ocirc; hữu cơ, hạt hướng dương hữu cơ, hạt lanh, hạt m&egrave;, bột l&uacute;a mạch đen hữu cơ, dầu hướng dương hữu cơ, đường hữu cơ, muối ăn, mạch nha, men, gluten l&uacute;a m&igrave;, bột chua, chất chống oxy h&oacute;a: ascorbic enzyme.</p>\r\n\r\n			<p>HDSD: Kh&ocirc;ng cần r&atilde; đ&ocirc;ng, nướng nhiệt độ 180 độ, độ ẩm 20%, thời gian 5-8 ph&uacute;t.</p>\r\n\r\n			<p>Xuất xứ: &Aacute;o</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>Haubis</p>\r\n\r\n			<p><img alt=\"\" src=\"https://file.organica.vn/uploads/filecloud/2019/October/12/4221-935281570873559-1570873559.jpeg\" style=\"height:119px; width:119px\" /></p>\r\n\r\n			<p>Haubis được biết đến tr&ecirc;n khắp nước &Aacute;o, Ch&acirc;u &Acirc;u, Trung Đ&ocirc;ng v&agrave; Ch&acirc;u &Aacute; về c&aacute;c loại b&aacute;nh m&igrave;, b&aacute;nh m&igrave; cuộn, b&aacute;nh m&igrave; baguette tuyệt ngon, hữu cơ v&agrave; kh&ocirc;ng chất phụ gia, kh&ocirc;ng chất ho&aacute; học, kh&ocirc;ng chất bảo quản, được sản xuất theo ti&ecirc;u chuẩn cao nhất với th&agrave;nh phần nguy&ecirc;n liệu 100% đến từ &Aacute;o. C&aacute;c sản phẩm Haubis được sử dụng nước suối nguy&ecirc;n chất Petzenkirchen, sử dụng muối địa phương v&agrave; muối mỏ nguy&ecirc;n chất chưa qua xử l&yacute;, men chua tự nhi&ecirc;n được ủ trong thời gian d&agrave;i.</p>\r\n\r\n			<p>L&agrave; một c&ocirc;ng ty hoạt động c&oacute; t&iacute;nh to&agrave;n cầu, Haubis đạt c&aacute;c ti&ecirc;u chuẩn vệ sinh cao đ&atilde; được chứng nhận. Haubis kh&ocirc;ng chỉ được chứng nhận theo ti&ecirc;u chuẩn thực phẩm của IFS, m&agrave; c&ograve;n c&oacute; con dấu chất lượng AMA, AMA Biosiegel v&agrave; ti&ecirc;u chuẩn hữu cơ của EU.</p>\r\n\r\n			<p>Với phương ch&acirc;m &ldquo;Sử dụng nguy&ecirc;n vật liệu trong khu vực bất cứ khi n&agrave;o c&oacute; thể&rdquo;, Haubis lu&ocirc;n đảm bảo mọi sản phẩm đến tay người ti&ecirc;u d&ugrave;ng đều phải mang chất lượng h&agrave;ng đầu kh&ocirc;ng hề thay đổi.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 2, 14, 0, 0, 120000, 110000, '2020-10-05 16:17:03', '1', '2021-01-19 15:09:33', '1', 0, 1),
(34, 13, 'Cải bẹ xanh', 'cai-be-xanh', '27b8c194d9c4fb85b36e2e2d15cd3019.png', 'bc7020db77fafa887f194fdcd2980119.png', 'Cải bẹ xanh của Organica được canh tác theo hướng hữu cơ tại trang trại liên kết của Organica tại Cổ Loa, Hà Nội. Cải bẹ xanh được trồng hoàn toàn không sử dụng phân bón hóa học, thuốc diệt cỏ, thuốc bảo vệ thực vật và chất kích thích tăng trưởng.\r\n\r\n', '<p>Cải bẹ xanh l&agrave; loại rau quen thuộc với gia đ&igrave;nh Việt, hay c&ograve;n gọi l&agrave; cải cay, l&agrave; th&agrave;nh phần chủ yếu trong m&ugrave; tạt (wasabi) v&agrave; thường được sử dụng trong c&aacute;c m&oacute;n hải sản tươi sống. Theo y học cổ truyền, cải bẹ xanh c&oacute; vị cay, t&iacute;nh &ocirc;n với t&aacute;c dụng thanh nhiệt, giải độc, giải cảm h&agrave;n, th&ocirc;ng đ&agrave;m, lợi kh&iacute; v&agrave; lợi tiểu&hellip; Nhiều nghi&ecirc;n cứu y học hiện đại cho thấy, cải bẹ xanh c&oacute; chứa nhiều vitamin A, B, C, K, axit nicotic, abumin, catoten,&hellip; rất c&oacute; lợi cho sức khỏe.</p>\r\n\r\n<p>Bạn đang chọn mua c&aacute;c loại thực phẩm hữu cơ của Organica, một trong những thương hiệu ti&ecirc;n phong về ph&aacute;t triển thực phẩm hữu cơ tại Việt Nam. Bạn sẽ y&ecirc;n t&acirc;m, kh&ocirc;ng c&ograve;n phải lo lắng về bữa ăn của gia đ&igrave;nh m&igrave;nh nữa khi chọn mua c&aacute;c sản phẩm hữu cơ của Organica v&igrave; qu&aacute; tr&igrave;nh sản xuất đảm bảo kh&ocirc;ng sử dụng ph&acirc;n b&oacute;n ho&aacute; học, thuốc trừ s&acirc;u, trừ cỏ độc hại, kh&ocirc;ng d&ugrave;ng chất k&iacute;ch th&iacute;ch tăng trưởng hay chất bảo quản, kh&ocirc;ng sử dụng giống hay th&agrave;nh phần biến đổi gene (GMO). Organica c&oacute; trang trại trồng rau củ quả nhiệt đới đạt chuẩn hữu cơ quốc tế USDA của Mỹ v&agrave; Li&ecirc;n minh ch&acirc;u &Acirc;u (EU) đầu ti&ecirc;n tại Việt Nam từ năm 2015. Từ c&aacute;c n&ocirc;ng sản từ trang trại hữu cơ, Organica cũng chế biến th&agrave;nh c&aacute;c loại thực phẩm kh&ocirc; chứng nhận hữu cơ quốc tế. Kh&ocirc;ng chỉ l&agrave; đơn vị đầu tư sản xuất, Organica cũng l&agrave; đơn vị đầu ti&ecirc;n tại Việt Nam ph&aacute;t triển chuỗi cửa h&agrave;ng b&aacute;n lẻ thực phẩm hữu cơ tại TP.HCM, H&agrave; Nội v&agrave; Đ&agrave; Nẵng.</p>\r\n', 1, 160, 1, 0, 16500000, 16500000, '2020-10-05 16:23:13', '1', '2020-10-05 16:42:41', '1', 0, 1),
(35, 16, 'Mỳ Hữu cơ cho bé vị Bó xôi Mennosato 200g', 'my-huu-co-cho-be-vi-bo-xoi-mennosato-200g', '04f540e4f0ec1aeac1e7789a681cbfb9.png', '246fb07870ed09924196739f6d28757a.png', 'Mỳ Hữu cơ cho bé vị Bó xôi Mennosato 200g dành cho bé từ 7 tháng tuổi trở lên. Với sợi mỳ có kích thước nhỏ cùng màu sắc tự nhiên và hương vị của bó xôi, sản phẩm chắc chắn sẽ trở thành món ăn dặm yêu thích hằng ngày của các bé.', '<p><strong>Th&agrave;nh phần:</strong>&nbsp;Bột l&uacute;a m&igrave; hữu cơ 97%, bột cải b&oacute; x&ocirc;i hữu cơ 2%, nước 1%.</p>\r\n\r\n<p><strong>Khối lượng tịnh:</strong>&nbsp;200g.</p>\r\n\r\n<p><strong>Hạn sử dụng:</strong>&nbsp;2 năm kể từ Ng&agrave;y sản xuất.</p>\r\n\r\n<p><strong>Gợi &yacute; sử dụng:</strong>&nbsp;M&igrave; cho v&agrave;o nước s&ocirc;i, đun 6-7 ph&uacute;t. Sau đ&oacute;, vớt ra để r&aacute;o. Rồi d&ugrave;ng trực tiếp hoặc chế biến th&agrave;nh m&oacute;n kh&aacute;c.</p>\r\n\r\n<p><strong>Hướng dẫn bảo quản:</strong>&nbsp;Đậy k&iacute;n v&agrave; bảo quản nơi kh&ocirc; tho&aacute;ng.</p>\r\n\r\n<p><strong>Xuất xứ - Chứng nhận:&nbsp;</strong>Sản phẩm được sản xuất tại Malaysia v&agrave; đạt chứng nhận hữu cơ ti&ecirc;u chuẩn USDA của Mỹ, EU của Ch&acirc;u &Acirc;u, JAS của Nhật.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>MENNOSATO</p>\r\n\r\n<p><img alt=\"\" src=\"https://tpnk2hhcxd.vcdn.com.vn/uploads/filecloud/2020/August/16/6329-235571597562562-1597562562.png\" style=\"height:82px; width:346px\" /></p>\r\n\r\n<p>Với lợi thế l&agrave; nguồn nguyễn liệu hữu cơ 100%, Mennosato tự h&agrave;o phục vụ cho b&eacute; những bữa ăn dinh dưỡng ngon miệng v&agrave; an to&agrave;n cho b&eacute; với sợi m&igrave; được kết hợp từ bột m&igrave; hữu cơ với c&aacute;c loại rau củ hữu cơ, l&agrave; nguồn cung cấp protein v&agrave; chất xơ dồi d&agrave;o cho bữa ăn.</p>\r\n\r\n<p>M&igrave; rau củ hữu cơ Mennosato rất tiện lợi cho c&aacute;c mẹ khi chỉ cần nấu ch&iacute;n mềm, cắt kh&uacute;c nhỏ, kết hợp với nước sốt chuy&ecirc;n dụng hoặc rau củ nấu kĩ cắt nhỏ l&agrave; đ&atilde; c&oacute; ngay một bữa ăn gi&agrave;u dinh dưỡng cho b&eacute;.</p>\r\n', 2, 7, 0, 0, 80000, 80000, '2020-10-06 14:03:42', '1', '2020-10-10 18:51:04', '1', 0, 1),
(36, 16, 'Mỳ Hữu cơ cho bé vị Khoai lang Mennosato 200g', 'my-huu-co-cho-be-vi-khoai-lang-mennosato-200g', '1011d2f90529c96a0c7f7b3805712c89.png', '96cb1df13cd914e3700a038aa88d4473.png', 'Mỳ Hữu cơ cho bé vị Khoai lang Mennosato 200g dành cho bé từ 7 tháng tuổi trở lên. Với sợi mỳ có kích thước nhỏ cùng màu sắc tự nhiên và hương vị của khoai lang, sản phẩm chắc chắn sẽ trở thành món ăn dặm yêu thích hằng ngày của các bé.', '<p>MENNOSATO</p>\r\n\r\n<p><img alt=\"\" src=\"https://tpnk2hhcxd.vcdn.com.vn/uploads/filecloud/2020/August/16/6329-235571597562562-1597562562.png\" style=\"height:82px; width:346px\" /></p>\r\n\r\n<p>Với lợi thế l&agrave; nguồn nguyễn liệu hữu cơ 100%, Mennosato tự h&agrave;o phục vụ cho b&eacute; những bữa ăn dinh dưỡng ngon miệng v&agrave; an to&agrave;n cho b&eacute; với sợi m&igrave; được kết hợp từ bột m&igrave; hữu cơ với c&aacute;c loại rau củ hữu cơ, l&agrave; nguồn cung cấp protein v&agrave; chất xơ dồi d&agrave;o cho bữa ăn.</p>\r\n\r\n<p>M&igrave; rau củ hữu cơ Mennosato rất tiện lợi cho c&aacute;c mẹ khi chỉ cần nấu ch&iacute;n mềm, cắt kh&uacute;c nhỏ, kết hợp với nước sốt chuy&ecirc;n dụng hoặc rau củ nấu kĩ cắt nhỏ l&agrave; đ&atilde; c&oacute; ngay một bữa ăn gi&agrave;u dinh dưỡng cho b&eacute;.</p>\r\n', 1, 10, 0, 10, 80000, 70000, '2020-10-06 14:05:58', '1', '2020-10-10 19:12:27', '1', 0, 1),
(37, 6, 'Đậu xanh Hữu cơ Health Paradise 500g', 'dau-xanh-huu-co-health-paradise-500g', '1256784fc48a56abfa56ea8e1b0cbe4a.png', '45488ab98185ed8f7726fe10667f558d.png', 'Sản phẩm đậu xanh hữu cơ của Health Paradise được trồng và chế biến với chất lượng an toàn trong mỗi bước tuân theo đúng tiêu chuẩn hữu cơ nghiêm ngặt và các hướng dẫn từ nông trại đến lúc đóng gói. Cách sử dụng: Kết hợp đậu xanh với gạo lứt, các món hầm hoặc nấu các món tráng miệng\r\n\r\n', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>HEALTH PARADISE</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p>Health Paradise được th&agrave;nh lập từ năm 1997, l&agrave; một trong những nh&agrave; ph&acirc;n phối lớn c&aacute;c sản phẩm hữu cơ v&agrave; đầu ti&ecirc;n ở Đ&ocirc;ng Nam &Aacute;. Quy tr&igrave;nh đ&oacute;ng g&oacute;i v&agrave; t&aacute;i đ&oacute;ng g&oacute;i c&aacute;c sản phẩm hữu cơ của Health Paradise được chứng nhận đạt chuẩn hữu cơ của NASAA. B&ecirc;n cạnh đ&oacute;, Health Paradise cũng l&agrave; nh&agrave; ph&acirc;n phối c&aacute;c sản phẩm hữu cơ đầu ti&ecirc;n được chứng nhận HALAL bởi JAKIM.</p>\r\n\r\n			<p>L&agrave; nh&agrave; ti&ecirc;n phong trong việc nhập khẩu c&aacute;c sản phẩm hữu cơ được chứng nhận h&agrave;ng loạt để đ&oacute;ng g&oacute;i lại v&agrave; ph&acirc;n phối, Health Paradise đảm bảo tất cả c&aacute;c sản phẩm hữu cơ được d&aacute;n nh&atilde;n v&agrave; đ&oacute;ng g&oacute;i lại hợp ph&aacute;p. Họ cũng được Hiệp hội Quốc gia về ph&aacute;t triển bền vững cấp ph&eacute;p t&aacute;i đ&oacute;ng g&oacute;i v&agrave; d&aacute;n nh&atilde;n c&aacute;c sản phẩm hữu cơ. Với vai tr&ograve; l&agrave; một cầu nối vững chắc, Organica đ&atilde; trở th&agrave;nh đối t&aacute;c ph&acirc;n phối độc quyền của Health Paradise tại Việt Nam.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 2, 25, 0, 10, 160000, 150000, '2020-10-06 14:08:55', '1', '2020-10-10 19:10:26', '1', 0, 1),
(38, 6, 'Đậu thận đỏ hữu cơ Davert 500gr', 'dau-than-do-huu-co-davert-500gr', 'db949e96576eebdb0345c45b333f9c49.jpg', 'dc6e91e035257091bf317ad512972fb1.jpg', 'Đậu thận đỏ đạt chứng nhận hữu cơ châu Âu từ thương hiệu Davert uy tín tại Đức. Đây là lựa chọn lành mạnh để bổ sung vào chế độ ăn của bạn và gia đình.\r\n\r\nThành phần: 100% đậu thận đỏ hữu cơ.\r\n\r\nHướng dẫn sử dụng: Ngâm trong vòng 12 tiếng trước khi chế biến các món yêu thích của bạn, phù hợp cho các món hầm, salad, chè,...\r\n\r\nXuất xứ: Đức.', '<p>DAVERT</p>\r\n\r\n<p><img alt=\"\" src=\"https://tpnk2hhcxd.vcdn.com.vn/uploads/filecloud/2020/April/10/5402-263531586518446-1586518447.jpg\" style=\"height:95px; width:95px\" /></p>\r\n\r\n<p>Dựa tr&ecirc;n 30 năm kinh nghiệm trong ng&agrave;nh thực phẩm hữu cơ, Davert ủng hộ canh t&aacute;c sinh học c&oacute; kiểm so&aacute;t, tiếp tục ph&aacute;t triển c&aacute;c phương ph&aacute;p chế biến, minh bạch, theo d&otilde;i cẩn thận từng bước sản xuất v&agrave; c&aacute;c sản phẩm hữu cơ được bảo đảm - từ kh&acirc;u trồng trọt đến đ&oacute;ng g&oacute;i.</p>\r\n\r\n<p>Tại Đức, Davert l&agrave; một trong những c&ocirc;ng ty uy t&iacute;n h&agrave;ng đầu về c&aacute;c sản phẩm gạo, đậu v&agrave; ngũ cốc đạt những chứng nhận khắt khe nhất như chứng nhận hữu cơ Ch&acirc;u &Acirc;u, chứng nhận Bioland, chứng nhận Demeter...</p>\r\n', 3, 10, 0, 10, 130000, 120000, '2020-10-06 14:10:11', '1', '2020-10-10 19:11:00', '1', 0, 1),
(39, 6, 'Đậu gà Hữu cơ PRIMEAL 500G', 'dau-ga-huu-co-primeal-500g', '372497618e04db879c635ff7414fe46f.png', 'e5d2d1ab17ddbc551d9748946b538472.png', 'Sản phẩm đậu gà của Primeal được chứng nhận tiêu chuẩn hữu cơ của Châu Âu. Đậu gà chứa một nguồn chất xơ dồi dào và kết hợp với nhiều loại gia vị để tạo nên các loại soup và salad dinh dưỡng', '<p>Quan t&acirc;m đến gi&aacute; trị dinh dưỡng của thực phẩm, thương hiệu hữu cơ Prim&eacute;al chọn c&aacute;c th&agrave;nh phần được chứng nhận đảm bảo truy xuất nguồn gốc, minh bạch v&agrave; an to&agrave;n thực phẩm. Đồng thời, với sự kết tinh của dinh dưỡng v&agrave; hương vị lu&ocirc;n l&agrave;m cho c&aacute;c sản phẩm Prim&eacute;al kh&aacute;c biệt v&agrave; mang gi&aacute; trị cao.</p>\r\n\r\n<p>Thương hiệu hữu cơ đến từ Ph&aacute;p, Prim&eacute;al đi theo phương ch&acirc;m n&ocirc;ng nghiệp hữu cơ bền vững, t&ocirc;n trọng con người v&agrave; m&ocirc;i trường. Với hơn 300 sản phẩm hữu cơ, thiết thực với bữa ăn hằng ng&agrave;y, dễ d&ugrave;ng v&agrave; chế biến, bảo quản, để đ&aacute;p ứng mọi nhu cầu v&agrave; mong muốn, thức ăn gia đ&igrave;nh, từ bữa s&aacute;ng cho đến bữa tối.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 3, 10, 2, 10, 160000, 150000, '2020-10-06 14:14:18', '1', '2020-10-10 19:11:23', '1', 0, 1),
(40, 16, 'Bánh phở hữu cơ 250g', 'banh-pho-huu-co-250g', 'c0638cf5d2835c47784f8766c4b5f9d2.png', '03989585e33b01bee1edc9cfb602edea.png', 'Thành phần: gạo hữu cơ, bột mỳ hữu cơ, muối\r\n\r\nHướng dẫn sử dụng:\r\n\r\n- Ngâm trong nước lạnh 5\', luộc 5\', cho vào nước lạnh, vớt ra để ráo.\r\n\r\n- Xào với hải sản, thịt, rau củ, hoặc ăn với nước lèo.\r\n\r\nBảo quản nơi khô ráo, thoáng mát\r\n', '<p>Được sản xuất từ hai nguồn nguy&ecirc;n liệu ch&iacute;nh l&agrave; c&aacute; cơm v&agrave; muối biển được l&ecirc;n men trong th&ugrave;ng gỗ 12 th&aacute;ng với sự kiểm so&aacute;t chặt chẽ theo ti&ecirc;u chuẩn của HACCP đ&atilde; tạo ra d&ograve;ng nước mắm Quốc Hương tinh khiết 100% hương vị đậm đ&agrave; truyền thống của nước mắm Ph&uacute; Quốc với h&agrave;m lượng đạm v&agrave; kho&aacute;ng chất cao tốt cho sức khỏe.</p>\r\n', 1, 501, 4, 0, 60000, 60000, '2020-10-06 14:23:26', '1', '2021-01-21 17:30:48', '1', 0, 1),
(41, 14, 'Quả Olive ngâm muối hữu cơ 365g', 'qua-olive-ngam-muoi-huu-co-365g', '5153ad55e87307f5f378f018eb2352f3.png', '7316440a43baefea17ad7db98dfd742a.png', 'Quả Olive ngâm muối hữu cơ đến từ các vùng nổi tiếng nhất Hy Lạp về sản xuất dầu olive (Lakonia, Kalamata, Crete). Olive được thu hoạch sớm khi chúng còn trong quá trình chín.', '<p>Do thu hoạch sớm, quả olive ng&acirc;m muối của Karpea c&oacute; hương vị rất đặc trưng v&agrave; giữ lại nhiều chất dinh dưỡng của olive chưa ch&iacute;n ho&agrave;n to&agrave;n. N&oacute; được ph&acirc;n biệt bởi hương thơm ri&ecirc;ng biệt của n&oacute;.</p>\r\n\r\n<p><strong>Th&agrave;nh phần:</strong>&nbsp;Olive hữu cơ, Nước muối (Nước 83%, Muối 8%, Giấm 8%, Dầu olive 1%).</p>\r\n\r\n<p>* C&oacute; thể c&ograve;n s&oacute;t hạt nhỏ ngũ cốc.</p>\r\n\r\n<p><strong>Khối lượng tịnh:</strong>&nbsp;365g.</p>\r\n\r\n<p><strong>Gợi &yacute; sử dụng:</strong>&nbsp;D&ugrave;ng trực tiếp, hoặc ăn k&egrave;m rượu vang, salad, hoặc chế biến m&oacute;n ăn.</p>\r\n\r\n<p><strong>Hướng dẫn bảo quản:</strong>&nbsp;Bảo quản nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t, tr&aacute;nh &aacute;nh s&aacute;ng mặt trời. Sau khi mở nắp, bảo quản trong tủ lạnh v&agrave; d&ugrave;ng hết trong v&ograve;ng 14 ng&agrave;y.</p>\r\n\r\n<p><strong>Xuất xứ - Chứng nhận:</strong>&nbsp;Sản phẩm được sản xuất tại Hy Lạp v&agrave; đạt chứng nhận hữu cơ ti&ecirc;u chuẩn EU của ch&acirc;u &Acirc;u.</p>\r\n', 1, 50, 0, 0, 190000, 190000, '2020-10-10 18:41:04', '1', '2020-10-10 18:41:04', '1', 0, 1),
(43, 15, 'Ruốc tôm sinh thái Mùa 50g', 'ruoc-tom-sinh-thai-mua-50g', 'a7898ab9cdb590ca8259a18c1cfe2c3f.png', 'ad1420d3aa554895cf9e58188299ce8b.png', 'Tôm đất sinh thái sống trong rừng đước Cà Mau được khai thác theo phương thức truyền thống của người dân trong vùng, đánh bắt tự nhiên hoàn toàn nên thịt tôm tươi, ngọt. Tôm tươi hấp, bóc vỏ, giã và sao khô trên chảo gang để có ruốc tôm thơm ngon nhất.\r\n\r\n', '<p>M&Ugrave;A l&agrave; thương hiệu chuy&ecirc;n về c&aacute;c đặc sản v&ugrave;ng miền của Việt Nam với sứ mệnh đem hương vị đ&iacute;ch thực của Việt Nam ra thế giới. Mỗi một địa phương, mỗi v&ugrave;ng đất c&oacute; c&aacute;c điều kiện về kh&iacute; hậu, thời tiết, thổ nhưỡng, địa h&igrave;nh kh&aacute;c nhau ph&ugrave; hợp với từng loại c&acirc;y trồng cụ thể. Chỉ c&oacute; ở v&ugrave;ng đất ấy loại n&ocirc;ng sản mới cho những đặc t&iacute;nh thơm ngon nhất m&agrave; kh&ocirc;ng nơi n&agrave;o kh&aacute;c c&oacute; được. Mỗi v&ugrave;ng miền cũng gắn liền với tập qu&aacute;n canh t&aacute;c, chế biến của người d&acirc;n bản địa để tạo ra c&aacute;c sản phẩm đặc trưng từ c&aacute;c đặc sản địa phương.</p>\r\n\r\n<p>Với slogan &ldquo;M&ugrave;a N&agrave;o Thức Ấy&rdquo;, mỗi khi chọn mua c&aacute;c sản phẩm của M&Ugrave;A l&agrave; bạn đang ủng hộ c&aacute;c đặc sản của địa phương l&agrave; th&agrave;nh quả từ c&ocirc;ng sức của những người n&ocirc;ng d&acirc;n bản địa, hay nh&oacute;m cộng đồng địa phương. C&aacute;c sản phẩm của M&Ugrave;A lu&ocirc;n đặt l&ecirc;n h&agrave;ng đầu c&aacute;c ti&ecirc;u ch&iacute; về an to&agrave;n vệ sinh thực phẩm, canh t&aacute;c bền vững với m&ocirc;i trường v&agrave; cộng đồng, chứng nhận hữu cơ quốc tế v&agrave; lấy truy xuất nguồn gốc l&agrave;m kim chỉ nam khi lựa chọn sản phẩm thương hiệu M&Ugrave;A.</p>\r\n\r\n<p><a href=\"https://www.organica.vn/san-pham-che-bien/ruoc-tom-sinh-thai-mua-50g#\">Đ&oacute;ng</a></p>\r\n', 3, 500, 0, 10, 180000, 170000, '2020-10-10 18:47:06', '1', '2020-10-10 19:12:09', '1', 0, 1),
(45, 14, 'Bánh gạo Quinoa hữu cơ Primeal 130g', 'banh-gao-quinoa-huu-co-primeal-130g', '3c92b749cb8d19c558f0061856151f4d.png', '442f5c2f9a7db3768147db00c68d99b2.png', 'Thành phần: Gạo, quinoa và muối biển\r\n\r\nKhối lượng tịnh: 130g\r\n\r\nGợi ý sử dụng: Ăn trực tiếp (thay thế cho bánh mì), là món bánh ngon cho bữa sáng nhanh, hay bữa giữa buổi cần nạp thêm năng lượng. Cũng có thể bỏ vào lò làm nóng bánh để giòn hơn nếu muốn.\r\n\r\nHướng dẫn bảo quản: Bảo quản ở nơi khô ráo, thoáng mát', '<p>Quan t&acirc;m đến gi&aacute; trị dinh dưỡng của thực phẩm, thương hiệu hữu cơ Prim&eacute;al chọn c&aacute;c th&agrave;nh phần được chứng nhận đảm bảo truy xuất nguồn gốc, minh bạch v&agrave; an to&agrave;n thực phẩm. Đồng thời, với sự kết tinh của dinh dưỡng v&agrave; hương vị lu&ocirc;n l&agrave;m cho c&aacute;c sản phẩm Prim&eacute;al kh&aacute;c biệt v&agrave; mang gi&aacute; trị cao.</p>\r\n\r\n<p>Thương hiệu hữu cơ đến từ Ph&aacute;p, Prim&eacute;al đi theo phương ch&acirc;m n&ocirc;ng nghiệp hữu cơ bền vững, t&ocirc;n trọng con người v&agrave; m&ocirc;i trường. Với hơn 300 sản phẩm hữu cơ, thiết thực với bữa ăn hằng ng&agrave;y, dễ d&ugrave;ng v&agrave; chế biến, bảo quản, để đ&aacute;p ứng mọi nhu cầu v&agrave; mong muốn, thức ăn gia đ&igrave;nh, từ bữa s&aacute;ng cho đến bữa tối.</p>\r\n', 1, 50, 0, 0, 120000, 120000, '2020-10-10 18:55:15', '1', '2020-10-10 18:55:15', '1', 0, 1),
(46, 5, 'Bột Gạo nếp Hữu cơ Floating Lotus 500g', 'bot-gao-nep-huu-co-floating-lotus-500g', '874efc5295c94fcda44173f2a9409632.png', 'fe5cc31aad387898184bb90858f696a8.png', 'Bột Gạo nếp Hữu cơ Floating Lotus 500g làm từ giống gạo nếp hữu cơ Thái Lan. Hạt gạo được ngâm để loại bỏ các tạp chất, sau đó xay ướt trước khi tạo thành bột khô. Bột có màu trắng, kết cấu mịn, hương thơm tự nhiên.\r\n\r\n', '<p><strong>Th&agrave;nh phần:</strong>&nbsp;100% Gạo nếp hữu cơ Th&aacute;i đ&atilde; được ng&acirc;m.</p>\r\n\r\n<p><strong>Khối lượng tịnh:</strong>&nbsp;500g.</p>\r\n\r\n<p><strong>Hạn sử dụng:</strong>&nbsp;12 th&aacute;ng sau ng&agrave;y sản xuất.</p>\r\n\r\n<p><strong>Gợi &yacute; sử dụng:</strong>&nbsp;D&ugrave;ng l&agrave;m nguy&ecirc;n liệu cho c&aacute;c loại b&aacute;nh như b&aacute;nh tr&ocirc;i nước, b&aacute;nh &uacute;, b&aacute;nh d&agrave;y, b&aacute;nh &iacute;t trần, b&aacute;nh bao chỉ, b&aacute;nh r&aacute;n vừng,...</p>\r\n\r\n<p><strong>Hướng dẫn bảo quản:</strong>&nbsp;Bảo quản nơi kh&ocirc; r&aacute;o tho&aacute;ng m&aacute;t, đảm bảo vệ sinh an to&agrave;n thực phẩm. Để trong tủ m&aacute;t, tủ đ&ocirc;ng giữ được l&acirc;u hơn.</p>\r\n\r\n<p><strong>Xuất xứ - Chứng nhận:&nbsp;</strong>Sản phẩm được sản xuất tại Th&aacute;i Lan v&agrave; đạt chứng nhận hữu cơ ti&ecirc;u chuẩn USDA của Mỹ v&agrave; ti&ecirc;u chuẩn EU của ch&acirc;u &Acirc;u.</p>\r\n', 2, 10, 0, 0, 110000, 110000, '2020-10-10 19:00:03', '1', '2021-01-21 17:39:04', '1', 0, 1),
(48, 9, 'Bột Gạo tẻ Hữu cơ Floating Lotus 500g', 'bot-gao-te-huu-co-floating-lotus-500g', 'e022de62df95ef166e037b9331bd6dfa.png', '953b8a7ddef1c38912fa824a94e52d63.png', 'Bột Gạo tẻ Hữu cơ Floating Lotus 500g làm từ giống gạo Hương Lài Thái Lan. Hạt gạo được ngâm để loại bỏ các tạp chất, sau đó xay ướt trước khi tạo thành bột khô. Bột có màu trắng, kết cấu mịn, hương thơm tự nhiên.\r\n\r\n', '<p>FLOATING LOTUS</p>\r\n\r\n<p><img alt=\"\" src=\"https://tpnk2hhcxd.vcdn.com.vn/uploads/filecloud/2020/September/1/6447-852911598941660-1598941660.png\" style=\"height:89px; width:129px\" /></p>\r\n\r\n<p>Thương hiệu đến từ Th&aacute;i Lan chuy&ecirc;n cung cấp c&aacute;c loại bột hữu cơ đạt ti&ecirc;u chuẩn USDA của Mỹ v&agrave; EU của ch&acirc;u &Acirc;u. C&aacute;c sản phẩm bột gạo hữu cơ của Floating Lotus ngon hơn, dễ ti&ecirc;u h&oacute;a hơn nhờ kh&acirc;u chọn lựa nguy&ecirc;n liệu cẩn thận v&agrave; quy tr&igrave;nh xử l&yacute; đặc biệt trước khi tạo th&agrave;nh phẩm đến tay người ti&ecirc;u d&ugrave;ng.</p>\r\n', 1, 12, 0, 0, 100000, 100000, '2020-10-10 19:04:20', '1', '2020-10-10 19:04:47', '1', 0, 1),
(50, 11, 'Nhân hạt óc chó hữu cơ Sottolestelle 200g', 'nhan-hat-oc-cho-huu-co-sottolestelle-200g', '5265b139a415dfd4616c93c0658bd8d1.png', 'ddb2b3d0da38d986dff9add86e5f03ac.png', 'Hạt óc chó rất giàu chất béo có lợi cho tim và nhiều chất chống oxy hóa, hàm lượng carbs thấp, hầu hết là chất xơ. Hạt óc chó được sử dụng để làm dầu óc chó - một loại dầu đắt tiền thường được sử dụng trong các món salad trộn. Chất béo omega-3 trong hạt óc chó cao hơn so với các loại hạt khác. Ngoài ra, hạt óc chó còn cung cấp các vitamin và khoáng chất như vitamin B9, vitamin B6, vitamin E, đồng, photpho...\r\n\r\n', '<p>Hạt &oacute;c ch&oacute; rất gi&agrave;u chất b&eacute;o c&oacute; lợi cho tim v&agrave; nhiều chất chống oxy h&oacute;a, h&agrave;m lượng carbs thấp, hầu hết l&agrave; chất xơ. Hạt &oacute;c ch&oacute; được sử dụng để l&agrave;m dầu &oacute;c ch&oacute; - một loại dầu đắt tiền thường được sử dụng trong c&aacute;c m&oacute;n salad trộn. Chất b&eacute;o omega-3 trong hạt &oacute;c ch&oacute; cao hơn so với c&aacute;c loại hạt kh&aacute;c. Ngo&agrave;i ra, hạt &oacute;c ch&oacute; c&ograve;n cung cấp c&aacute;c vitamin v&agrave; kho&aacute;ng chất như vitamin B9, vitamin B6, vitamin E, đồng, photpho...</p>\r\n\r\n<p>Việc bổ sung hạt &oacute;c ch&oacute; v&agrave;o thực đơn h&agrave;ng ng&agrave;y sẽ c&oacute; lợi cho n&atilde;o bộ, tim mạch cũng như ph&ograve;ng ngừa ung thư. Tuy nhi&ecirc;n, cần lưu &yacute; kh&ocirc;ng d&ugrave;ng sản phẩm cho người dị ứng với hạt &oacute;c ch&oacute;.</p>\r\n\r\n<p><strong>Th&agrave;nh phần:</strong>&nbsp;100% Nh&acirc;n hạt &oacute;c ch&oacute; hữu cơ.</p>\r\n\r\n<p><strong>Khối lượng tịnh:</strong>&nbsp;200g.</p>\r\n\r\n<p><strong>Hạn sử dụng:</strong>&nbsp;In tr&ecirc;n bao b&igrave; sản phẩm.</p>\r\n\r\n<p><strong>Gợi &yacute; sử dụng:</strong>&nbsp;D&ugrave;ng trực tiếp hoặc thưởng thức như một m&oacute;n khai vị, m&oacute;n ăn nhẹ, hay l&agrave;m nguy&ecirc;n liệu cho c&aacute;c m&oacute;n salad, m&igrave; ống, ngũ cốc ăn s&aacute;ng, s&uacute;p, c&aacute;c m&oacute;n nướng v&agrave; m&oacute;n tr&aacute;ng miệng.</p>\r\n\r\n<p><strong>Hướng dẫn bảo quản:</strong>&nbsp;Sau khi mở th&igrave; đậy k&iacute;n v&agrave; bảo quản nơi kh&ocirc; tho&aacute;ng.</p>\r\n\r\n<p><strong>Xuất xứ - Chứng nhận:&nbsp;</strong>Sản phẩm được sản xuất tại &Yacute; v&agrave; được chứng nhận hữu cơ ti&ecirc;u chuẩn ICEA v&agrave; ti&ecirc;u chuẩn EU Organic của Ch&acirc;u &Acirc;u.</p>\r\n', 3, 150, 2, 10, 70000, 60000, '2020-10-10 19:09:08', '1', '2020-10-10 19:11:43', '1', 0, 1),
(51, 5, 'Gạo xát dối Nàng Keo Hữu cơ Mùa 2kg', 'gao-xat-doi-nang-keo-huu-co-mua-2kg', '2bd46dbfaa7c09b1ada87b56aa30aa17.png', '31220008943522ac8aea2723c1f9993d.png', '	\r\nNàng Keo là một giống lúa mùa cổ truyền được người dân Bến Tre trồng và gìn giữ từ hàng trăm năm. Tên gọi Nàng Keo là biểu trưng cho sự thơm ngon đặc biệt, tương tự như các giống lúa thơm ngon nổi tiếng khác rải rác ở Đồng Bằng Sông Cửu Long cũng mang tên của một người con gái như Nàng Hương, Nàng Tây, Nàng Thơm, Nàng Tét, Nàng Co, Nàng Nhen, Nàng Côi, Nàng Xe, Nàng Chô… ', '<p>M&Ugrave;A</p>\r\n\r\n<p><img alt=\"\" src=\"https://file.organica.vn/uploads/filecloud/2018/June/28/776-650911530160244-1530160244.jpg\" style=\"height:66px; width:100px\" /></p>\r\n\r\n<p>M&Ugrave;A l&agrave; thương hiệu chuy&ecirc;n về c&aacute;c đặc sản v&ugrave;ng miền của Việt Nam với sứ mệnh đem hương vị đ&iacute;ch thực của Việt Nam ra thế giới. Mỗi một địa phương, mỗi v&ugrave;ng đất c&oacute; c&aacute;c điều kiện về kh&iacute; hậu, thời tiết, thổ nhưỡng, địa h&igrave;nh kh&aacute;c nhau ph&ugrave; hợp với từng loại c&acirc;y trồng cụ thể. Chỉ c&oacute; ở v&ugrave;ng đất ấy loại n&ocirc;ng sản mới cho những đặc t&iacute;nh thơm ngon nhất m&agrave; kh&ocirc;ng nơi n&agrave;o kh&aacute;c c&oacute; được. Mỗi v&ugrave;ng miền cũng gắn liền với tập qu&aacute;n canh t&aacute;c, chế biến của người d&acirc;n bản địa để tạo ra c&aacute;c sản phẩm đặc trưng từ c&aacute;c đặc sản địa phương.</p>\r\n\r\n<p>Với slogan &ldquo;M&ugrave;a N&agrave;o Thức Ấy&rdquo;, mỗi khi chọn mua c&aacute;c sản phẩm của M&Ugrave;A l&agrave; bạn đang ủng hộ c&aacute;c đặc sản của địa phương l&agrave; th&agrave;nh quả từ c&ocirc;ng sức của những người n&ocirc;ng d&acirc;n bản địa, hay nh&oacute;m cộng đồng địa phương. C&aacute;c sản phẩm của M&Ugrave;A lu&ocirc;n đặt l&ecirc;n h&agrave;ng đầu c&aacute;c ti&ecirc;u ch&iacute; về an to&agrave;n vệ sinh thực phẩm, canh t&aacute;c bền vững với m&ocirc;i trường v&agrave; cộng đồng, chứng nhận hữu cơ quốc tế v&agrave; lấy truy xuất nguồn gốc l&agrave;m kim chỉ nam khi lựa chọn sản phẩm thương hiệu M&Ugrave;A.</p>\r\n\r\n<p><a href=\"https://www.organica.vn/ngu-coc-dau-va-hat/gao-nang-keo-xat-doi-huu-co-2kg#\">Đ&oacute;ng</a></p>\r\n', 3, 1235, 601, 0, 110000, 100000, '2021-01-21 17:27:03', '1', '2021-01-21 17:33:24', '1', 0, 1),
(53, 5, 'Đậu xanh Cơ tu 500g', 'dau-xanh-co-tu-500g', '1562df6ff21a550ca6ce63ba0de2906c.png', 'a4fe3e26887209c9bb6b4da80a9c67f4.png', 'Đậu xanh giàu vitamin và khoáng chất cần thiết cho sức khỏe như chất xơ, folate (B9), mangan, magie, photpho, sắt, đồng, kali... Ngoài các vitamin và khoáng chất, đậu xanh còn chứa nhiều vitamin B2, B3, B5, B6, selen và protein thực vật. Các axit amin thiết yếu như phenylalanine, leucine, isoleucine, valine, lysine… cũng được tìm thấy trong đậu xanh.\r\n\r\nCông dụng đối với sức khỏe:\r\n\r\nGiảm cholesterol xấu trong máu\r\nTốt cho hệ tiêu hóa\r\nGiúp giảm đường huyết để ngừa hay giảm nhẹ các bệnh nguy hiểm', '<p>CƠ TU</p>\r\n\r\n<p><img alt=\"\" src=\"https://file.organica.vn/uploads/filecloud/2019/October/7/4183-645131570440609-1570440609.png\" style=\"height:127px; width:144px\" /></p>\r\n\r\n<p>C&aacute;c sản phẩm Cơ Tu được ph&aacute;t triển bởi cộng đồng d&acirc;n tộc thiểu số Cơ Tu ở tỉnh Quảng Nam với sự hỗ trợ từ Tổ chức Cứu trợ/ Ph&aacute;t triển Quốc Tế (FIDR) nhằm th&uacute;c đẩy ph&aacute;t triển n&ocirc;ng th&ocirc;n bền vững.</p>\r\n\r\n<p>C&aacute;c nguy&ecirc;n liệu đều được thu h&aacute;i chừng mực từ rừng hoặc được trồng từ giống thuần chủng địa phương, canh t&aacute;c tự nhi&ecirc;n th&acirc;n thiện m&ocirc;i trường, kh&ocirc;ng c&oacute; dư lượng ho&aacute; học, thu h&aacute;i v&agrave; đ&oacute;ng g&oacute;i tu&acirc;n thủ phương thức canh t&aacute;c hữu cơ.</p>\r\n', 1, 156, 0, 0, 82500, 80000, '2021-01-21 17:38:09', '1', '2021-01-21 17:38:09', '1', 0, 1),
(54, 6, 'Đậu lăng đỏ Hữu cơ PRIMEAL 500G', 'dau-lang-do-huu-co-primeal-500g', '9129c0880cae13bdea122043d002f40c.png', 'df93214ea001ad04e0ffcba7d8aa0805.png', 'Đậu lăng đỏ Primeal của Pháp được chứng nhận hữu cơ theo tiêu chuẩn Châu Âu. Đậu lăng đỏ chứa một nguồn dồi dào Protein, rửa qua và chọn đậu, cho đậu cùng với nước vào chảo lớn. Đun sôi, giảm lửa và đun nhỏ lửa trong 30-45p cho đến khi hoàn thành.9\r\n\r\n', '<p>PRIMEAL</p>\r\n\r\n<p><img alt=\"\" src=\"https://file.organica.vn/uploads/filecloud/2019/October/7/4189-687061570445751-1570445751.png\" style=\"height:98px; width:130px\" /></p>\r\n\r\n<p>Quan t&acirc;m đến gi&aacute; trị dinh dưỡng của thực phẩm, thương hiệu hữu cơ Prim&eacute;al chọn c&aacute;c th&agrave;nh phần được chứng nhận đảm bảo truy xuất nguồn gốc, minh bạch v&agrave; an to&agrave;n thực phẩm. Đồng thời, với sự kết tinh của dinh dưỡng v&agrave; hương vị lu&ocirc;n l&agrave;m cho c&aacute;c sản phẩm Prim&eacute;al kh&aacute;c biệt v&agrave; mang gi&aacute; trị cao.</p>\r\n\r\n<p>Thương hiệu hữu cơ đến từ Ph&aacute;p, Prim&eacute;al đi theo phương ch&acirc;m n&ocirc;ng nghiệp hữu cơ bền vững, t&ocirc;n trọng con người v&agrave; m&ocirc;i trường. Với hơn 300 sản phẩm hữu cơ, thiết thực với bữa ăn hằng ng&agrave;y, dễ d&ugrave;ng v&agrave; chế biến, bảo quản, để đ&aacute;p ứng mọi nhu cầu v&agrave; mong muốn, thức ăn gia đ&igrave;nh, từ bữa s&aacute;ng cho đến bữa tối.</p>\r\n', 3, 56, 0, 0, 90000, 90000, '2021-01-21 17:40:32', '1', '2021-01-21 17:41:02', '1', 0, 1),
(55, 9, 'Bột Gạo lứt đen Hữu cơ Floating Lotus', 'bot-gao-lut-den-huu-co-floating-lotus', '2bd4908baf496c2981dff7d16ec5508e.png', 'bac50d33096d8d526906fb6220808738.png', '	\r\nBột Gạo lứt đen Hữu cơ Floating Lotus 500g làm từ giống gạo lứt đen Riceberry hữu cơ - một giống gạo có giá trị ở Thái Lan, chứa khoáng chất và lượng vitamin E tốt cho sức khỏe. Kết cấu bột mịn, hương thơm dễ chịu, có màu sậm tự nhiên từ màu tím đậm của hạt gạo khi xay.\r\n\r\nThành phần: 100% Gạo lứt đen hữu cơ Thái Lan.\r\n\r\nKhối lượng tịnh: 500g.\r\n\r\nHạn sử dụng: 12 tháng sau ngày sản xuất.\r\n\r\nGợi ý sử dụng: Dùng làm nguyên liệu cho các loại bánh như bông lan, muffin...\r\n\r\nHướng dẫn bảo quản: Bảo quản nơi khô ráo thoáng mát, đảm bảo vệ sinh an toàn thực phẩm. Để trong tủ mát, tủ đông giữ được lâu hơn.\r\n\r\nXuất xứ - Chứng nhận: Sản phẩm được sản xuất tại Thái Lan và đạt chứng nhận hữu cơ tiêu chuẩn USDA của Mỹ và tiêu chuẩn EU của châu Âu.', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>Bột Gạo lứt đen Hữu cơ Floating Lotus 500g l&agrave;m từ giống gạo lứt đen Riceberry hữu cơ - một giống gạo c&oacute; gi&aacute; trị ở Th&aacute;i Lan, chứa kho&aacute;ng chất v&agrave; lượng vitamin E tốt cho sức khỏe. Kết cấu bột mịn, hương thơm dễ chịu, c&oacute; m&agrave;u sậm tự nhi&ecirc;n từ m&agrave;u t&iacute;m đậm của hạt gạo khi xay.</p>\r\n\r\n			<p><strong>Th&agrave;nh phần:</strong>&nbsp;100% Gạo lứt đen hữu cơ Th&aacute;i Lan.</p>\r\n\r\n			<p><strong>Khối lượng tịnh:</strong>&nbsp;500g.</p>\r\n\r\n			<p><strong>Hạn sử dụng:</strong>&nbsp;12 th&aacute;ng sau ng&agrave;y sản xuất.</p>\r\n\r\n			<p><strong>Gợi &yacute; sử dụng:</strong>&nbsp;D&ugrave;ng l&agrave;m nguy&ecirc;n liệu cho c&aacute;c loại b&aacute;nh như b&ocirc;ng lan, muffin...</p>\r\n\r\n			<p><strong>Hướng dẫn bảo quản:</strong>&nbsp;Bảo quản nơi kh&ocirc; r&aacute;o tho&aacute;ng m&aacute;t, đảm bảo vệ sinh an to&agrave;n thực phẩm. Để trong tủ m&aacute;t, tủ đ&ocirc;ng giữ được l&acirc;u hơn.</p>\r\n\r\n			<p><strong>Xuất xứ - Chứng nhận:&nbsp;</strong>Sản phẩm được sản xuất tại Th&aacute;i Lan v&agrave; đạt chứng nhận hữu cơ ti&ecirc;u chuẩn USDA của Mỹ v&agrave; ti&ecirc;u chuẩn EU của ch&acirc;u &Acirc;u.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 1, 12, 0, 0, 200000, 200000, '2021-01-21 17:45:33', '1', '2021-01-21 17:45:33', '1', 0, 1),
(56, 11, 'Hạt hướng dương tách vỏ Hữu cơ Health Paradise 250g', 'hat-huong-duong-tach-vo-huu-co-health-paradise-250g', '189f5ab9071e874d3c248bb848205508.png', '4e7ee1c7df3b40ed5da2b5a0dbf9579d.png', 'Chứng nhận hữu cơ: NASAA\r\nQuy cách đóng gói: 250g\r\nHạt hướng dương không chỉ là một đồ ăn vặt lành mạnh, mà nó còn có chứa các vitamin quan trọng, khoáng chất và axit béo thiết yếu, cần thiết cho sự hoạt động của cơ thể.', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>HEALTH PARADISE</p>\r\n\r\n			<p><img alt=\"\" src=\"https://file.organica.vn/uploads/filecloud/2018/June/4/628-401091528105980-1528105980.png\" style=\"height:74px; width:300px\" /></p>\r\n\r\n			<p>Health Paradise được th&agrave;nh lập từ năm 1997, l&agrave; một trong những nh&agrave; ph&acirc;n phối lớn c&aacute;c sản phẩm hữu cơ v&agrave; đầu ti&ecirc;n ở Đ&ocirc;ng Nam &Aacute;. Quy tr&igrave;nh đ&oacute;ng g&oacute;i v&agrave; t&aacute;i đ&oacute;ng g&oacute;i c&aacute;c sản phẩm hữu cơ của Health Paradise được chứng nhận đạt chuẩn hữu cơ của NASAA. B&ecirc;n cạnh đ&oacute;, Health Paradise cũng l&agrave; nh&agrave; ph&acirc;n phối c&aacute;c sản phẩm hữu cơ đầu ti&ecirc;n được chứng nhận HALAL bởi JAKIM.</p>\r\n\r\n			<p>L&agrave; nh&agrave; ti&ecirc;n phong trong việc nhập khẩu c&aacute;c sản phẩm hữu cơ được chứng nhận h&agrave;ng loạt để đ&oacute;ng g&oacute;i lại v&agrave; ph&acirc;n phối, Health Paradise đảm bảo tất cả c&aacute;c sản phẩm hữu cơ được d&aacute;n nh&atilde;n v&agrave; đ&oacute;ng g&oacute;i lại hợp ph&aacute;p. Họ cũng được Hiệp hội Quốc gia về ph&aacute;t triển bền vững cấp ph&eacute;p t&aacute;i đ&oacute;ng g&oacute;i v&agrave; d&aacute;n nh&atilde;n c&aacute;c sản phẩm hữu cơ. Với vai tr&ograve; l&agrave; một cầu nối vững chắc, Organica đ&atilde; trở th&agrave;nh đối t&aacute;c ph&acirc;n phối độc quyền của Health Paradise tại Việt Nam.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 2, 56, 0, 0, 85000, 85000, '2021-01-21 17:47:21', '1', '2021-01-21 17:47:21', '1', 0, 1),
(58, 16, 'Bún khô hữu cơ Gạo nếp', 'bun-kho-huu-co-gao-nep', '915e403591ba5bfb80564005b81b3a52.png', '3f480317bb99f98a12b8b8c6da74bba1.png', 'Gợi ý sử dụng: Vào mùa nóng rửa sạch mỳ với nước lã, còn mùa lạnh nên rửa bằng nước ấm, sau khi đun sôi nước lên rồi cho mỳ vào khuấy đều đến khi sôi lại lần nữa là có thể ăn. Đặc biệt, mỳ sẽ có vị ngon nhất nếu được nấu với nước hầm xương lợn hoặc nước luộc gà.\r\n\r\nMỳ được làm thủ công, không có chất bảo quản, đảm bảo vệ sinh an toàn thực phẩm.\r\n\r\nBảo quản ở nơi khô thoáng, tránh ánh nắng trực tiếp từ mặt trời.', '<p>Mỳ gạo Bao thai Định Ho&aacute;</p>\r\n\r\n<p><img alt=\"\" src=\"https://file.organica.vn/uploads/filecloud/2019/October/27/4294-148961572169329-1572169329.png\" style=\"height:140px; width:178px\" /></p>\r\n\r\n<p>Mỳ gạo Bao Thai được l&agrave;m từ gạo Bao Thai trứ danh của huyện Định H&oacute;a, tỉnh Th&aacute;i Nguy&ecirc;n l&agrave; sản phẩm thuộc nh&oacute;m đặc sản v&ugrave;ng miền được ch&iacute;nh tay người d&acirc;n thuộc Hợp t&aacute;c x&atilde; Chăn nu&ocirc;i Sản xuất N&ocirc;ng sản Sạch x&atilde; Kim Phượng - huyện Định Ho&aacute; sản xuất v&agrave; được lựa chọn, kiểm duyệt chất lượng kỹ lưỡng bởi Organica.</p>\r\n', 2, 55, 0, 0, 60000, 60000, '2021-01-21 17:54:09', '1', '2021-01-21 17:54:09', '1', 0, 1),
(61, 15, 'Giày Nike1', 'tep-kho', 'fe5cc31aad387898184bb90858f696a8.png', 'fe5cc31aad387898184bb90858f696a8.png', 'Tép sinh thái được đánh bắt theo mùa nước tại vùng rừng ngập mặn Năm Căn, Cà Mau. Vào mùa, người nông dân lựa theo con nước đánh bắt tép, rồi rửa sạch và căn nắng để phơi khô tự nhiên, không làm cho tép khô nứt mà khô giòn và giữ được hương vị ngon nhất.\r\n\r\nThành phần: Tép khô sinh thái 100%\r\n\r\nTrọng lượng: 100gr\r\n\r\nHướng dẫn bảo quản: Bảo quản nơi khô ráo, thoáng mát.\r\n\r\nNSX: Xem trên bao bì.\r\n\r\nHSD: 6 tháng kể từ NSX', '<p>T&eacute;p sinh th&aacute;i được đ&aacute;nh bắt theo m&ugrave;a nước tại v&ugrave;ng rừng ngập mặn Năm Căn, C&agrave; Mau. V&agrave;o m&ugrave;a, người n&ocirc;ng d&acirc;n lựa theo con nước đ&aacute;nh bắt t&eacute;p, rồi rửa sạch v&agrave; căn nắng để phơi kh&ocirc; tự nhi&ecirc;n, kh&ocirc;ng l&agrave;m cho t&eacute;p kh&ocirc; nứt m&agrave; kh&ocirc; gi&ograve;n v&agrave; giữ được hương vị ngon nhất.</p>\r\n\r\n<p>Th&agrave;nh phần: T&eacute;p kh&ocirc; sinh th&aacute;i 100%</p>\r\n\r\n<p>Trọng lượng: 100gr</p>\r\n\r\n<p>Hướng dẫn bảo quản: Bảo quản nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t.</p>\r\n\r\n<p>NSX: Xem tr&ecirc;n bao b&igrave;.</p>\r\n\r\n<p>HSD: 6 th&aacute;ng kể từ NSX</p>\r\n', 1, 1, 0, 0, 65000, 65000, '2021-01-21 17:58:12', '1', '2021-01-21 17:58:12', '1', 0, 1),
(68, 10, 'đâ', 'da', '', '', 'da', '<p>da</p>\r\n', 3, 1, 0, 0, 1, 1, '2021-05-15 22:20:11', '1', '2021-05-15 22:20:11', '1', 0, 1),
(69, 3, 'dada', 'dada', 'b1b7ffea5f2e75f879a4c3a54baf3d3f.png', '90f1efb6d6042935913119cf402b74d3.png', 'da', '<p>da</p>\r\n', 3, 1, 0, 0, 1, 1, '2021-05-15 22:47:11', '1', '2021-05-15 22:47:11', '1', 0, 1),
(70, 1, 'Adidas Stansmith Valentines', 'adidas-stansmith-valentines', 'nikeva.png', 'nikeva.png', 'The Stan Smith là dòng sản phẩm giày quần vợt cổ điển cho nữ, lần đầu tiên xuất hiện vào năm 1971 và đã trở thành một biểu tượng thời trang và nhìn thấy từ sân tennis đến văn phòng trên toàn thế giới.', '<p><strong>Đ&Ocirc;I GI&Agrave;Y C&Aacute; T&Iacute;NH D&Agrave;NH CHO PH&Aacute;I ĐẸP</strong></p>\r\n\r\n<p style=\"text-align:justify\">The Stan Smith l&agrave; d&ograve;ng sản phẩm gi&agrave;y quần vợt cổ điển cho nữ, lần đầu ti&ecirc;n xuất hiện v&agrave;o năm 1971 v&agrave; đ&atilde; trở th&agrave;nh một biểu tượng thời trang v&agrave; nh&igrave;n thấy từ s&acirc;n tennis đến văn ph&ograve;ng tr&ecirc;n to&agrave;n thế giới. Lớp l&oacute;t bằng da, với sockliner OrthoLite&nbsp;mang lại cho gi&agrave;y một c&aacute;i nh&igrave;n cao cấp, g&oacute;t ch&acirc;n được giữ trong da lộn cho một c&aacute;i nh&igrave;n cổ điển v&agrave; 3-sọc đục lỗ mang t&iacute;nh biểu tượng tự h&agrave;o ở hai b&ecirc;n.<br />\r\nCam kết h&agrave;ng ch&iacute;nh h&atilde;ng 100% bao check bao test.</p>\r\n', 2, 10, 0, 52, 2400000, 1150000, '2021-05-16 09:31:28', '1', '2021-05-17 09:17:00', '1', 1, 1),
(71, 9, ' Nikek', 'nikek', 'fc003761c11bf3b3676e7155de3c0524.png', '643de9c238319ddeac5413a9097055af.png', 'da', '<p>da</p>\r\n', 1, 1, 0, 0, 10000, 10000, '2021-05-16 22:41:13', '1', '2021-05-16 22:43:31', '1', 0, 1),
(72, 1, 'Adidas StanSmith Advantage', 'adidas-stansmith-advantage', '314f8765e824ec29218ff96e7e594b45.png', '8904bbee968609740ceab07c1686d84b.png', 'Adidas Stan Smith là mẫu giày huyền thoại nổi tiếng bậc nhất của Adidas. Xuất hiện lần đầu tiên vào năm 1973 trải qua hơn 40 năm lịch sử nó đã ghi dấu ấn tới hàng triệu người trên thế giới. Adidas Stan Smith được đánh giá một trong những mẫu giày biểu tượng không bao giờ lỗi mốt.', '<p><em><strong>Adidas Stan Smith</strong></em>&nbsp;l&agrave; mẫu gi&agrave;y huyền thoại nổi tiếng bậc nhất của&nbsp;Adidas. Xuất hiện lần đầu ti&ecirc;n v&agrave;o năm 1973 trải qua hơn 40 năm lịch sử n&oacute; đ&atilde; ghi dấu ấn tới h&agrave;ng triệu người tr&ecirc;n thế giới.&nbsp;Adidas Stan Smith&nbsp;được đ&aacute;nh gi&aacute; một trong những mẫu gi&agrave;y biểu tượng kh&ocirc;ng bao giờ lỗi mốt.</p>\r\n\r\n<p>Đ&ocirc;i gi&agrave;y Adidas duy nhất b&aacute;n chạy hơn cả Samba ch&iacute;nh l&agrave; Stan Smith. Được lấy t&ecirc;n từ một tay vợt nổi tiếng người Mỹ, người được th&ecirc;u gương mặt l&ecirc;n phần lưỡi gi&agrave;y như một c&aacute;ch để vinh danh. B&ecirc;n cạnh đ&oacute;, người ta cũng kh&ocirc;ng th&ecirc;u 3 sọc quen thuộc l&ecirc;n th&acirc;n gi&agrave;y nữa m&agrave; chuyển sang đục lỗ. Điều n&agrave;y khiến đ&ocirc;i gi&agrave;y nh&igrave;n mới mẻ hơn. Ngo&agrave;i ra, nhờ v&agrave;o thiết kế đơn giản v&agrave; &quot;bất tử&quot; của m&igrave;nh, Stan Smith cũng nhanh ch&oacute;ng trở th&agrave;nh một hiện tượng ngay khi &quot;ra đời&quot; v&agrave; cho đến tận b&acirc;y giờ, n&oacute; vẫn được y&ecirc;u th&iacute;ch v&igrave; sự đa dụng, dễ đi, dễ phối v&agrave; hợp nhiều phong c&aacute;ch kh&aacute;c nhau.</p>\r\n', 2, 5, 0, 0, 2500000, 2500000, '2021-05-17 09:36:54', '1', '2021-05-17 09:36:54', '1', 1, 1);
INSERT INTO `db_product` (`id`, `catid`, `name`, `alias`, `avatar`, `img`, `sortDesc`, `detail`, `producer`, `number`, `number_buy`, `sale`, `price`, `price_sale`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `status`) VALUES
(73, 1, 'Giày thể thao Adidas Stan Smith SupperStar', 'giay-the-thao-adidas-stan-smith-supperstar', '81815552a960dca68025783523f64d7b.png', '116e19667aafe4add10a6b67e4b1bc03.png', 'Adidas Stan Smith là mẫu giày huyền thoại nổi tiếng bậc nhất của Adidas. Xuất hiện lần đầu tiên vào năm 1973 trải qua hơn 40 năm lịch sử nó đã ghi dấu ấn tới hàng triệu người trên thế giới. Adidas Stan Smith được đánh giá một trong những mẫu giày biểu tượng không bao giờ lỗi mốt.', '<p><strong>Adidas Stan Smith&nbsp;</strong>l&agrave; mẫu gi&agrave;y huyền thoại nổi tiếng bậc nhất của&nbsp;<strong>Adidas</strong>. Xuất hiện lần đầu ti&ecirc;n v&agrave;o năm 1973 trải qua hơn 40 năm lịch sử n&oacute; đ&atilde; ghi dấu ấn tới h&agrave;ng triệu người tr&ecirc;n thế giới.&nbsp;<strong>Adidas Stan Smith</strong>&nbsp;được đ&aacute;nh gi&aacute; một trong những mẫu gi&agrave;y biểu tượng kh&ocirc;ng bao giờ lỗi mốt.</p>\r\n\r\n<p>Đ&ocirc;i gi&agrave;y Adidas duy nhất b&aacute;n chạy hơn cả Samba ch&iacute;nh l&agrave; Stan Smith. Được lấy t&ecirc;n từ một tay vợt nổi tiếng người Mỹ, người được th&ecirc;u gương mặt l&ecirc;n phần lưỡi gi&agrave;y như một c&aacute;ch để vinh danh. B&ecirc;n cạnh đ&oacute;, người ta cũng kh&ocirc;ng th&ecirc;u 3 sọc quen thuộc l&ecirc;n th&acirc;n gi&agrave;y nữa m&agrave; chuyển sang đục lỗ. Điều n&agrave;y khiến đ&ocirc;i gi&agrave;y nh&igrave;n mới mẻ hơn. Ngo&agrave;i ra, nhờ v&agrave;o thiết kế đơn giản v&agrave; &quot;bất tử&quot; của m&igrave;nh, Stan Smith cũng nhanh ch&oacute;ng trở th&agrave;nh một hiện tượng ngay khi &quot;ra đời&quot; v&agrave; cho đến tận b&acirc;y giờ, n&oacute; vẫn được y&ecirc;u th&iacute;ch v&igrave; sự đa dụng, dễ đi, dễ phối v&agrave; hợp nhiều phong c&aacute;ch kh&aacute;c nhau.</p>\r\n', 2, 1, 0, 50, 650000, 325000, '2021-05-17 09:52:37', '1', '2021-05-17 09:52:37', '1', 1, 1),
(74, 1, 'Giày thể thao Adidas Stan Smith Full White', 'giay-the-thao-adidas-stan-smith-full-white', '1693ae658fa44f32f3c85f37848a9c2f.png', 'fab7269fdd25530ee82da63a0316b6b3.png', 'Adidas Stan Smith là mẫu giày huyền thoại nổi tiếng bậc nhất của Adidas. Xuất hiện lần đầu tiên vào năm 1973 trải qua hơn 40 năm lịch sử nó đã ghi dấu ấn tới hàng triệu người trên thế giới. Adidas Stan Smith được đánh giá một trong những mẫu giày biểu tượng không bao giờ lỗi mốt.', '<p><strong>Adidas Stan Smith&nbsp;</strong>l&agrave; mẫu gi&agrave;y huyền thoại nổi tiếng bậc nhất của&nbsp;<strong>Adidas</strong>. Xuất hiện lần đầu ti&ecirc;n v&agrave;o năm 1973 trải qua hơn 40 năm lịch sử n&oacute; đ&atilde; ghi dấu ấn tới h&agrave;ng triệu người tr&ecirc;n thế giới.&nbsp;<strong>Adidas Stan Smith</strong>&nbsp;được đ&aacute;nh gi&aacute; một trong những mẫu gi&agrave;y biểu tượng kh&ocirc;ng bao giờ lỗi mốt.</p>\r\n\r\n<p>Đ&ocirc;i gi&agrave;y Adidas duy nhất b&aacute;n chạy hơn cả Samba ch&iacute;nh l&agrave; Stan Smith. Được lấy t&ecirc;n từ một tay vợt nổi tiếng người Mỹ, người được th&ecirc;u gương mặt l&ecirc;n phần lưỡi gi&agrave;y như một c&aacute;ch để vinh danh. B&ecirc;n cạnh đ&oacute;, người ta cũng kh&ocirc;ng th&ecirc;u 3 sọc quen thuộc l&ecirc;n th&acirc;n gi&agrave;y nữa m&agrave; chuyển sang đục lỗ. Điều n&agrave;y khiến đ&ocirc;i gi&agrave;y nh&igrave;n mới mẻ hơn. Ngo&agrave;i ra, nhờ v&agrave;o thiết kế đơn giản v&agrave; &quot;bất tử&quot; của m&igrave;nh, Stan Smith cũng nhanh ch&oacute;ng trở th&agrave;nh một hiện tượng ngay khi &quot;ra đời&quot; v&agrave; cho đến tận b&acirc;y giờ, n&oacute; vẫn được y&ecirc;u th&iacute;ch v&igrave; sự đa dụng, dễ đi, dễ phối v&agrave; hợp nhiều phong c&aacute;ch kh&aacute;c nhau.</p>\r\n', 2, 15, 0, 50, 650000, 325000, '2021-05-17 10:04:11', '1', '2021-05-17 10:04:11', '1', 1, 1),
(75, 1, 'Giày thể thao Adidas Stan Smith Đen', 'giay-the-thao-adidas-stan-smith-den', '9f60d017f7e9abb31255153957af49b4.png', '331f23c1c92d346fab6c9351c9f8270d.png', 'Adidas Stan Smith là mẫu giày huyền thoại nổi tiếng bậc nhất của Adidas. Xuất hiện lần đầu tiên vào năm 1973 trải qua hơn 40 năm lịch sử nó đã ghi dấu ấn tới hàng triệu người trên thế giới. Adidas Stan Smith được đánh giá một trong những mẫu giày biểu tượng không bao giờ lỗi mốt.', '<p><strong>Adidas Stan Smith&nbsp;</strong>l&agrave; mẫu gi&agrave;y huyền thoại nổi tiếng bậc nhất của&nbsp;<strong>Adidas</strong>. Xuất hiện lần đầu ti&ecirc;n v&agrave;o năm 1973 trải qua hơn 40 năm lịch sử n&oacute; đ&atilde; ghi dấu ấn tới h&agrave;ng triệu người tr&ecirc;n thế giới.&nbsp;<strong>Adidas Stan Smith</strong>&nbsp;được đ&aacute;nh gi&aacute; một trong những mẫu gi&agrave;y biểu tượng kh&ocirc;ng bao giờ lỗi mốt.</p>\r\n\r\n<p>Đ&ocirc;i gi&agrave;y Adidas duy nhất b&aacute;n chạy hơn cả Samba ch&iacute;nh l&agrave; Stan Smith. Được lấy t&ecirc;n từ một tay vợt nổi tiếng người Mỹ, người được th&ecirc;u gương mặt l&ecirc;n phần lưỡi gi&agrave;y như một c&aacute;ch để vinh danh. B&ecirc;n cạnh đ&oacute;, người ta cũng kh&ocirc;ng th&ecirc;u 3 sọc quen thuộc l&ecirc;n th&acirc;n gi&agrave;y nữa m&agrave; chuyển sang đục lỗ. Điều n&agrave;y khiến đ&ocirc;i gi&agrave;y nh&igrave;n mới mẻ hơn. Ngo&agrave;i ra, nhờ v&agrave;o thiết kế đơn giản v&agrave; &quot;bất tử&quot; của m&igrave;nh, Stan Smith cũng nhanh ch&oacute;ng trở th&agrave;nh một hiện tượng ngay khi &quot;ra đời&quot; v&agrave; cho đến tận b&acirc;y giờ, n&oacute; vẫn được y&ecirc;u th&iacute;ch v&igrave; sự đa dụng, dễ đi, dễ phối v&agrave; hợp nhiều phong c&aacute;ch kh&aacute;c nhau.</p>\r\n', 2, 16, 0, 50, 650000, 325000, '2021-05-17 10:08:01', '1', '2021-05-17 10:08:01', '1', 1, 1),
(76, 7, 'Giày thể thao Adidas Ultra Boost 4.0 Black REPLICA', 'giay-the-thao-adidas-ultra-boost-4-0-black-replica', '31a24e52f3d298ded8f5216c26e895b7.png', '09214c170aa6ff39bb3c9abbf2d368b7.png', 'ULTRA BOOST đã tăng mức độ hấp dẫn khi tung ra phiên bản 4.0 với cải tiến của cage nhựa dẻo và đế ngoài outsole với công nghệ Torsion với thiết kế Continiental gia tăng độ bám tối đa và bền, cùng lúc với họa tiết vải primeknit mới.', '<p><strong>ULTRA BOOST 4.0</strong>&nbsp;- Một si&ecirc;u phẩm chạy bộ cực kỳ đỉnh v&agrave; tốt &ndash; một niềm tự h&agrave;o của&nbsp;<strong>Adidas</strong>, khả năng th&iacute;ch ứng cao trong qu&aacute; tr&igrave;nh chạy cũng như đ&aacute;p ứng mong đợi về thời trang. Nếu như bạn l&agrave; một&nbsp;<strong>Runner</strong>&nbsp;m&agrave; thiếu&nbsp;<strong>Ultraboost</strong>&nbsp;trong tủ gi&agrave;y th&igrave; quả thật l&agrave; một điều đ&aacute;ng tiếc. Hiện&nbsp;<strong>Ultraboost</strong>&nbsp;đang c&agrave;ng ng&agrave;y ph&aacute;t triển rộng r&atilde;i v&agrave; tăng th&ecirc;m sự ch&uacute; &yacute; từ cộng đồng khi tung ra nhiều phi&ecirc;n bản v&agrave; phối m&agrave;u đẹp đến ngất ng&acirc;y.</p>\r\n\r\n<p>Phần th&acirc;n gi&agrave;y upper được ứng dụng c&ocirc;ng nghệ&nbsp;<strong>Primeknit</strong>&nbsp;gi&uacute;p c&oacute; độ fit co gi&atilde;n theo chuyển động của b&agrave;n ch&acirc;n , thoải m&aacute;i tối đa, thỏa m&atilde;n t&iacute;nh thời trang. Về phần đế ngo&agrave;i outsole được thiết kế theo&nbsp;<strong>&ldquo;stretch web&quot;</strong>&nbsp;gi&uacute;p hỗ trợ bộ đệm, b&aacute;m đường v&agrave; tăng vẻ cứng c&aacute;p v&agrave; mạnh mẽ của đ&ocirc;i gi&agrave;y.&nbsp;</p>\r\n\r\n<p><strong>ULTRA BOOST</strong>&nbsp;đ&atilde; tăng mức độ hấp dẫn khi tung ra&nbsp;<strong>phi&ecirc;n bản 4.0</strong>&nbsp;với cải tiến của cage nhựa dẻo v&agrave; đế ngo&agrave;i outsole với c&ocirc;ng nghệ&nbsp;<strong>Torsion</strong>&nbsp;với thiết kế&nbsp;<strong>Continiental</strong>&nbsp;gia tăng độ b&aacute;m tối đa v&agrave; bền, c&ugrave;ng l&uacute;c với họa tiết vải primeknit mới.</p>\r\n', 2, 1, 0, 50, 950000, 475000, '2021-05-17 10:13:58', '1', '2021-05-17 10:13:58', '1', 1, 1),
(77, 7, 'Giày thể thao Adidas Ultra Boost 2020 Black REPLICA', 'giay-the-thao-adidas-ultra-boost-2020-black-replica', 'e9f97f32bf0a4ac5870220f99a73ea79.png', 'aba7de6faff133455e6ad2c743b1bf4b.png', 'Được nhiều chuyên gia chạy bộ chuyên nghiệp đánh giá Adidas Ultraboost 20 có thể chạy hơn 300 dăm, tương đương hơn 500km. Đây cũng là lời khuyên của các chuyên gia, một đôi giày chạy bộ có thể thay mới sau khi đã sử dụng trên 600km.', '<p>Phần đế ngo&agrave;i được Adidas l&agrave;m bằng cao su lục địa với sự kết hợp c&ugrave;ng Continental v&agrave; hệ thống chống xoắn Torsion System, được nhiều người chạy đ&aacute;nh gi&aacute; Adidas Ultraboost 20 tăng khả năng ma s&aacute;t, gi&uacute;p chống trơn trượt, b&aacute;m chắn chắn mọi địa h&igrave;nh</p>\r\n\r\n<p>Lớp phủ cao su Continental n&agrave;y được Adidas cải tiến v&agrave; thiết kế lại, với c&ocirc;ng nghệ mang t&ecirc;n Stretchweb &ndash; Một thuật ngữ mang t&iacute;nh cấu tr&uacute;c cửa sổ. Điều n&agrave;y c&agrave;ng được c&aacute;c vận động vi&ecirc;n chạy ưa th&iacute;ch, v&agrave; đ&aacute;nh gi&aacute; Adidas Ultraboos 20 gia tăng sự ổn định v&agrave; liền mạch cho kết cấu của đ&ocirc;i gi&agrave;y, tăng ma s&aacute;t v&agrave; b&aacute;m đường hiệu quả.</p>\r\n\r\n<p>Được nhiều chuy&ecirc;n gia chạy bộ chuy&ecirc;n nghiệp đ&aacute;nh gi&aacute; Adidas Ultraboost 20 c&oacute; thể chạy hơn 300 dăm, tương đương hơn 500km. Đ&acirc;y cũng l&agrave; lời khuy&ecirc;n của c&aacute;c chuy&ecirc;n gia, một đ&ocirc;i gi&agrave;y chạy bộ c&oacute; thể thay mới sau khi đ&atilde; sử dụng tr&ecirc;n 600km.</p>\r\n', 2, 12, 0, 50, 1050000, 525000, '2021-05-17 10:21:36', '1', '2021-05-17 10:21:36', '1', 1, 1),
(78, 7, 'Giầy thể thao Adidas Ultra Boost 3.0 Red REPLICA', 'giay-the-thao-adidas-ultra-boost-3-0-red-replica', '2a474ddde33d13cb23eb71f5cecb2af1.png', '0e03bd5970a4785bf2674820a5b622ef.png', 'ULTRA BOOST đã tăng mức độ hấp dẫn khi tung ra phiên bản 3.0 với cải tiến của cage nhựa dẻo và đế ngoài outsole với công nghệ Torsion với thiết kế Continiental gia tăng độ bám tối đa và bền, cùng lúc với họa tiết vải primeknit mới.', '<p><strong>ULTRA BOOST</strong>&nbsp;- Một si&ecirc;u phẩm chạy bộ cực kỳ đỉnh v&agrave; tốt &ndash; một niềm tự h&agrave;o của&nbsp;<strong>Adidas</strong>, khả năng th&iacute;ch ứng cao trong qu&aacute; tr&igrave;nh chạy cũng như đ&aacute;p ứng mong đợi về thời trang. Nếu như bạn l&agrave; một&nbsp;<strong>Runner</strong>&nbsp;m&agrave; thiếu&nbsp;<strong>Ultraboost</strong>&nbsp;trong tủ gi&agrave;y th&igrave; quả thật l&agrave; một điều đ&aacute;ng tiếc. Hiện&nbsp;<strong>Ultraboost</strong>&nbsp;đang c&agrave;ng ng&agrave;y ph&aacute;t triển rộng r&atilde;i v&agrave; tăng th&ecirc;m sự ch&uacute; &yacute; từ cộng đồng khi tung ra nhiều phi&ecirc;n bản v&agrave; phối m&agrave;u đẹp đến ngất ng&acirc;y.</p>\r\n\r\n<p>Phần th&acirc;n gi&agrave;y upper được ứng dụng c&ocirc;ng nghệ&nbsp;<strong>Primeknit</strong>&nbsp;gi&uacute;p c&oacute; độ fit co gi&atilde;n theo chuyển động của b&agrave;n ch&acirc;n , thoải m&aacute;i tối đa, thỏa m&atilde;n t&iacute;nh thời trang. Về phần đế ngo&agrave;i outsole được thiết kế theo&nbsp;<strong>&ldquo;stretch web&quot;</strong>&nbsp;gi&uacute;p hỗ trợ bộ đệm, b&aacute;m đường v&agrave; tăng vẻ cứng c&aacute;p v&agrave; mạnh mẽ của đ&ocirc;i gi&agrave;y.&nbsp;</p>\r\n\r\n<p><strong>ULTRA BOOST</strong>&nbsp;đ&atilde; tăng mức độ hấp dẫn khi tung ra&nbsp;<strong>phi&ecirc;n bản 3.0</strong>&nbsp;với cải tiến của cage nhựa dẻo v&agrave; đế ngo&agrave;i outsole với c&ocirc;ng nghệ&nbsp;<strong>Torsion</strong>&nbsp;với thiết kế&nbsp;<strong>Continiental</strong>&nbsp;gia tăng độ b&aacute;m tối đa v&agrave; bền, c&ugrave;ng l&uacute;c với họa tiết vải primeknit mới.</p>\r\n', 2, 11, 0, 50, 750000, 375000, '2021-05-17 10:27:44', '1', '2021-05-17 10:27:44', '1', 1, 1),
(79, 8, 'Giày thể thao Adidas Yeezy 350 V2 White REPLICA', 'giay-the-thao-adidas-yeezy-350-v2-white-replica', 'f6638567a3b1a705d99ee98394034b6e.png', 'f0860c58cd94db223325a3ea2efbb05b.png', 'YEEZY 350 V2 Là dòng sản phẩm được kết hợp giữa Das và gu thẩm mỹ độc đáo của Kanye West. Thiết kế độc nhất, không thể nhầm lẫn với bất cứ mẫu giày nào khác. Đây là mẫu giày thời trang thích hợp cho các bạn cá tính và năng động', '<p>YEEZY 350 V2 L&agrave; d&ograve;ng sản phẩm được kết hợp giữa Das v&agrave; gu thẩm mỹ độc đ&aacute;o của Kanye West. Thiết kế độc nhất, kh&ocirc;ng thể nhầm lẫn với bất cứ mẫu gi&agrave;y n&agrave;o kh&aacute;c. Đ&acirc;y l&agrave; mẫu gi&agrave;y thời trang th&iacute;ch hợp cho c&aacute;c bạn c&aacute; t&iacute;nh v&agrave; năng động</p>\r\n\r\n<p>THIẾT KẾ:&nbsp;</p>\r\n\r\n<p>-&nbsp;<strong>Đế:</strong>&nbsp;Phần đế được thiết kế theo c&ocirc;ng nghệ&nbsp;<strong>Boost</strong>&nbsp;hiện đại tạo độ bền, độ chống sốc v&agrave; t&iacute;nh năng đ&aacute;p ứng cao.&nbsp;Đế ngo&agrave;i bằng cao su b&aacute;n trong suốt v&agrave; v&aacute;ch ngăn TPU mang lại độ b&aacute;m si&ecirc;u ấn tượng v&agrave; hiệu quả.</p>\r\n\r\n<p>-&nbsp;<strong>Upper (Phần vải):</strong>&nbsp;Với&nbsp;<strong>Yeezy 350 V2&nbsp;</strong>, phần Upper vẫn được l&agrave;m từ chất liệu Primeknit nguy&ecirc;n mảnh với nhiều m&agrave;u kh&aacute;c nhau, &nbsp;&ocirc;m gọn b&agrave;n ch&acirc;n tự nhi&ecirc;n như một lớp da thứ hai. Nổi bật l&ecirc;n tr&ecirc;n đ&oacute; l&agrave; một đường sọc c&oacute; m&agrave;u kh&aacute;c biệt c&ugrave;ng với d&ograve;ng chữ&nbsp;<strong>SPLY-350</strong>&nbsp;chạy d&agrave;i từ g&oacute;t cho đến giữa th&acirc;n gi&agrave;y.</p>\r\n\r\n<p>Sử dụng&nbsp;<strong>gi&agrave;y Yeezy 350 V2&nbsp;</strong>để chạy bộ, tập gym, đi phượt&hellip; hoặc mang đi chơi, đi l&agrave;m, du lịch&hellip; &nbsp;phối với quần Jean, Kaki, Short&hellip; đều được nha.</p>\r\n', 2, 13, 0, 50, 850000, 425000, '2021-05-17 10:31:53', '1', '2021-05-17 10:31:53', '1', 1, 1),
(80, 8, 'Giầy thể thao Adidas Yeezy 350 V2 Supreme REPLICA', 'giay-the-thao-adidas-yeezy-350-v2-supreme-replica', '416e8d0ea3f9012db299628aec007250.png', '5ac813a848ec60f5e6bd354f71023533.png', 'YEEZY 350 V2 Là dòng sản phẩm được kết hợp giữa Das và gu thẩm mỹ độc đáo của Kanye West. Thiết kế độc nhất, không thể nhầm lẫn với bất cứ mẫu giày nào khác. Đây là mẫu giày thời trang thích hợp cho các bạn cá tính và năng động', '<p><strong>YEEZY 350 V2</strong>&nbsp;L&agrave; d&ograve;ng sản phẩm được kết hợp giữa Das v&agrave; gu thẩm mỹ độc đ&aacute;o của&nbsp;<strong>Kanye West</strong>. Thiết kế độc nhất, kh&ocirc;ng thể nhầm lẫn với bất cứ mẫu gi&agrave;y n&agrave;o kh&aacute;c. Đ&acirc;y l&agrave; mẫu gi&agrave;y thời trang th&iacute;ch hợp cho c&aacute;c bạn c&aacute; t&iacute;nh v&agrave; năng động</p>\r\n\r\n<p>THIẾT KẾ:&nbsp;</p>\r\n\r\n<p>-&nbsp;<strong>Đế:</strong>&nbsp;Phần đế được thiết kế theo c&ocirc;ng nghệ&nbsp;<strong>Boost</strong>&nbsp;hiện đại tạo độ bền, độ chống sốc v&agrave; t&iacute;nh năng đ&aacute;p ứng cao.&nbsp;Đế ngo&agrave;i bằng cao su b&aacute;n trong suốt v&agrave; v&aacute;ch ngăn TPU mang lại độ b&aacute;m si&ecirc;u ấn tượng v&agrave; hiệu quả.</p>\r\n\r\n<p>-&nbsp;<strong>Upper (Phần vải):</strong>&nbsp;Với&nbsp;<strong>Yeezy 350 V2&nbsp;</strong>, phần Upper vẫn được l&agrave;m từ chất liệu Primeknit nguy&ecirc;n mảnh với nhiều m&agrave;u kh&aacute;c nhau, &nbsp;&ocirc;m gọn b&agrave;n ch&acirc;n tự nhi&ecirc;n như một lớp da thứ hai. Nổi bật l&ecirc;n tr&ecirc;n đ&oacute; l&agrave; một đường sọc c&oacute; m&agrave;u kh&aacute;c biệt c&ugrave;ng với d&ograve;ng chữ&nbsp;<strong>SPLY-350</strong>&nbsp;chạy d&agrave;i từ g&oacute;t cho đến giữa th&acirc;n gi&agrave;y.</p>\r\n\r\n<p>Sử dụng&nbsp;<strong>gi&agrave;y Yeezy 350 V2&nbsp;</strong>để chạy bộ, tập gym, đi phượt&hellip; hoặc mang đi chơi, đi l&agrave;m, du lịch&hellip; &nbsp;phối với quần Jean, Kaki, Short&hellip; đều được nha.</p>\r\n', 2, 9, 0, 50, 950000, 475000, '2021-05-17 10:38:10', '1', '2021-05-17 10:38:10', '1', 1, 1),
(81, 8, 'Giầy thể thao Adidas Yeezy 350 v2 Clay', 'giay-the-thao-adidas-yeezy-350-v2-clay', '948a470c8c12aca89132c4de667db19c.png', '00b44dc96c1c5a94d5d093f6f2f2389c.png', 'Sau những hình ảnh đầu tiên, cũng như một số tin tức rò rỉ của Adidas Yeezy BOOST 350 V2 “Clay”, chúng ta hôm nay lại được chiêm ngưỡng những hình ảnh chi tiết của đôi giày. Khác với cảm giác đầu tiên có được, phối màu mới nhất của adidas Yeezy BOOST 350 V2 cực kì quyến rũ.', '<p>Điểm ấn tượng nhất của đ&ocirc;i gi&agrave;y ch&iacute;nh l&agrave; &aacute;nh cam ở upper v&agrave; heeltab được phủ nhẹ l&ecirc;n t&ocirc;ng m&agrave;u n&acirc;u đất chủ đạo của sản phẩm. Chi tiết sọc kẻ trong suốt cũng l&agrave; một chi tiết th&uacute; vị nổi bật khi on-feet, kết hợp với nhiều họa tiết nổi do c&aacute;c đường may Primeknit cấu tạo n&ecirc;n gi&uacute;p tổng thể thiết kế đẹp hơn bao giờ hết.</p>\r\n\r\n<p>Đặc biệt, khi đặt đ&ocirc;i gi&agrave;y dưới ho&agrave;ng h&ocirc;n, Adidas Yeezy BOOST 350 V2 &ldquo;Clay&rdquo; h&ograve;a c&ugrave;ng &aacute;nh nắng một c&aacute;ch v&ocirc; c&ugrave;ng h&ograve;a hợp. D&ugrave; nhận nhiều &yacute; kiến tr&aacute;i chiều khi xuất hiện một số h&igrave;nh ảnh đầu ti&ecirc;n, tuy nhi&ecirc;n nếu ai c&ograve;n nhớ phối m&agrave;u &ldquo;Semi-frozen&rdquo; đ&atilde; tr&ecirc;n thực tế đ&atilde; hot như thế n&agrave;o th&igrave; &ldquo;Clay&rdquo; c&oacute; lẽ cũng l&agrave; một trường hợp tương tự.</p>\r\n', 2, 10, 0, 0, 1150000, 1150000, '2021-05-17 10:47:31', '1', '2021-05-17 10:47:31', '1', 1, 1),
(82, 16, 'Giày thể thao Nike Air Force 1 Low', 'giay-the-thao-nike-air-force-1-low', 'c9089dbfaad4a0fb39797d2082316fcb.png', '574e99109a85c3f3b60da57021b6896f.png', 'Nike Air Force 1 |  Đẹp hoàn hảo không góc chết. Đôi giày xứng đáng để có trong mọi tủ giày.', '<p><strong>Nike Air Force 1&nbsp;</strong>|&nbsp;&nbsp;Đẹp ho&agrave;n hảo kh&ocirc;ng g&oacute;c chết. Đ&ocirc;i gi&agrave;y xứng đ&aacute;ng để c&oacute; trong mọi tủ gi&agrave;y.<br />\r\nĐược ra đời&nbsp;từ năm 1982, Đ&ocirc;i gi&agrave;y&nbsp;đ&atilde;&nbsp;được đặt t&ecirc;n theo t&ecirc;n&nbsp;<strong>Air Force One</strong>&nbsp;- Chiếc m&aacute;y bay mang Tổng thống Hoa Kỳ. Đ&oacute; l&agrave; đ&ocirc;i&nbsp;gi&agrave;y b&oacute;ng rổ đầu ti&ecirc;n đặt nh&agrave; cho Nike Air, được&nbsp;&nbsp;Moses Malone v&agrave; Charles Barkley đ&atilde; từng đi, v&agrave; nhanh ch&oacute;ng chiếm được &quot; t&igrave;nh y&ecirc;u&quot;&nbsp;tr&ecirc;n to&agrave;n thế giới. Ng&agrave;y nay, AF1 vẫn kh&ocirc;ng c&oacute; g&igrave; thay đổi, chỉ th&ecirc;m l&agrave; được &aacute;p dụng c&ocirc;ng nghệ mới đặt<strong>&nbsp;t&uacute;i kh&iacute; (Air)</strong>&nbsp;trong g&oacute;t gi&agrave;y nhằm mục đ&iacute;ch tạo sự đ&agrave;n hồi tốt tr&aacute;nh g&acirc;y tổn thương cho b&agrave;n ch&acirc;n.</p>\r\n', 3, 16, 0, 0, 850000, 850000, '2021-05-17 10:54:07', '1', '2021-05-17 10:54:07', '1', 1, 1),
(83, 16, 'Giầy thể thao Nike Air Force 1 Low Nike Air Force 1 Inside Out Broken Deconstruction', 'giay-the-thao-nike-air-force-1-low-nike-air-force-1-inside-out-broken-deconstruction', 'c8d1343cb1aa5f520265ce387ec1d981.png', '2e06e10582bcf8e3bab85f846eb836a9.png', 'Nike Air Force 1 |  Đẹp hoàn hảo không góc chết. Đôi giày xứng đáng để có trong mọi tủ giày.', '<p><strong>Nike Air Force 1&nbsp;</strong>|&nbsp;&nbsp;Đẹp ho&agrave;n hảo kh&ocirc;ng g&oacute;c chết. Đ&ocirc;i gi&agrave;y xứng đ&aacute;ng để c&oacute; trong mọi tủ gi&agrave;y.<br />\r\nĐược ra đời&nbsp;từ năm 1982, Đ&ocirc;i gi&agrave;y&nbsp;đ&atilde;&nbsp;được đặt t&ecirc;n theo t&ecirc;n&nbsp;<strong>Air Force One</strong>&nbsp;- Chiếc m&aacute;y bay mang Tổng thống Hoa Kỳ. Đ&oacute; l&agrave; đ&ocirc;i&nbsp;gi&agrave;y b&oacute;ng rổ đầu ti&ecirc;n đặt nh&agrave; cho Nike Air, được&nbsp;&nbsp;Moses Malone v&agrave; Charles Barkley đ&atilde; từng đi, v&agrave; nhanh ch&oacute;ng chiếm được &quot; t&igrave;nh y&ecirc;u&quot;&nbsp;tr&ecirc;n to&agrave;n thế giới. Ng&agrave;y nay, AF1 vẫn kh&ocirc;ng c&oacute; g&igrave; thay đổi, chỉ th&ecirc;m l&agrave; được &aacute;p dụng c&ocirc;ng nghệ mới đặt<strong>&nbsp;t&uacute;i kh&iacute; (Air)</strong>&nbsp;trong g&oacute;t gi&agrave;y nhằm mục đ&iacute;ch tạo sự đ&agrave;n hồi tốt tr&aacute;nh g&acirc;y tổn thương cho b&agrave;n ch&acirc;n.</p>\r\n', 3, 14, 0, 0, 850000, 850000, '2021-05-17 11:08:32', '1', '2021-05-17 11:08:32', '1', 1, 1),
(84, 16, 'Giầy thể thao Nike Air Force 1 Low Shadow Double Hook', 'giay-the-thao-nike-air-force-1-low-shadow-double-hook', '6573f51f4fadeb93e5e856dd9bb3e8dc.png', '4f36fb85616ef47039281be1de3cc84e.png', 'Nike Air Force 1 |  Đẹp hoàn hảo không góc chết. Đôi giày xứng đáng để có trong mọi tủ giày.', '<p>Được ra đời&nbsp;từ năm 1982, Đ&ocirc;i gi&agrave;y&nbsp;đ&atilde;&nbsp;được đặt t&ecirc;n theo t&ecirc;n&nbsp;<strong>Air Force One</strong>&nbsp;- Chiếc m&aacute;y bay mang Tổng thống Hoa Kỳ. Đ&oacute; l&agrave; đ&ocirc;i&nbsp;gi&agrave;y b&oacute;ng rổ đầu ti&ecirc;n đặt nh&agrave; cho Nike Air, được&nbsp;&nbsp;Moses Malone v&agrave; Charles Barkley đ&atilde; từng đi, v&agrave; nhanh ch&oacute;ng chiếm được &quot; t&igrave;nh y&ecirc;u&quot;&nbsp;tr&ecirc;n to&agrave;n thế giới. Ng&agrave;y nay, AF1 vẫn kh&ocirc;ng c&oacute; g&igrave; thay đổi, chỉ th&ecirc;m l&agrave; được &aacute;p dụng c&ocirc;ng nghệ mới đặt<strong>&nbsp;t&uacute;i kh&iacute; (Air)</strong>&nbsp;trong g&oacute;t gi&agrave;y nhằm mục đ&iacute;ch tạo sự đ&agrave;n hồi tốt tr&aacute;nh g&acirc;y tổn thương cho b&agrave;n ch&acirc;n.</p>\r\n', 3, 5, 0, 50, 920000, 460000, '2021-05-17 11:12:36', '1', '2021-05-17 11:12:36', '1', 1, 1),
(85, 15, 'Giày thể thao Nike Air Jordan 4 Retro Pure Money', 'giay-the-thao-nike-air-jordan-4-retro-pure-money', '2682d27885ba0c069054d92e5c4b6737.png', 'f1261b736ef0f41cfc73acbd9ab2bf11.png', 'Một năm sau sự ra mắt rất thành công của Air Jordan 3, đến lượt Air Jordan 4 trình diện với một vẻ ngoài khác biệt hoàn toàn và cái tên Tinker Hatfield lại một lần nữa được xướng lên.', '<p><strong>Air Jordan 4</strong>&nbsp;c&oacute; form mid-top (kế thừa từ đ&ocirc;i Jordan 3), phần eyelet xỏ d&acirc;y gi&agrave;y c&oacute; waffle tabs tr&ocirc;ng rất hiện đại v&agrave; ấn tượng. &nbsp;Lưỡi g&agrave; (tất nhi&ecirc;n ) vẫn c&oacute; logo Jumpman, tag AIR JORDAN ngược ph&iacute;a b&ecirc;n trong. Sau g&oacute;t l&agrave; phần heel tab một điểm nhấn kh&aacute; đặt trưng, ngay b&ecirc;n dưới l&agrave; logo Nike Air (đối với 4 bản OG) v&agrave; Jumpman (đối với c&aacute;c bản retro sau n&agrave;y).</p>\r\n', 3, 10, 0, 0, 1050000, 1050000, '2021-05-17 11:15:41', '1', '2021-05-17 11:15:41', '1', 1, 1),
(86, 15, 'Giày thể thao Nike Air Jordan 4 Royalty Black', 'giay-the-thao-nike-air-jordan-4-royalty-black', '96749a6164ecdd04c4a2b3059289457e.png', '014daf5bd275e3b75a029667bf6dffe9.png', 'Một năm sau sự ra mắt rất thành công của Air Jordan 3, đến lượt Air Jordan 4 trình diện với một vẻ ngoài khác biệt hoàn toàn và cái tên Tinker Hatfield lại một lần nữa được xướng lên.', '<p><strong>Air Jordan 4</strong>&nbsp;c&oacute; form mid-top (kế thừa từ đ&ocirc;i Jordan 3), phần eyelet xỏ d&acirc;y gi&agrave;y c&oacute; waffle tabs tr&ocirc;ng rất hiện đại v&agrave; ấn tượng. &nbsp;Lưỡi g&agrave; (tất nhi&ecirc;n ) vẫn c&oacute; logo Jumpman, tag AIR JORDAN ngược ph&iacute;a b&ecirc;n trong. Sau g&oacute;t l&agrave; phần heel tab một điểm nhấn kh&aacute; đặt trưng, ngay b&ecirc;n dưới l&agrave; logo Nike Air (đối với 4 bản OG) v&agrave; Jumpman (đối với c&aacute;c bản retro sau n&agrave;y).</p>\r\n', 3, 13, 0, 0, 1050000, 1050000, '2021-05-17 11:17:39', '1', '2021-05-17 11:17:39', '1', 1, 1),
(87, 14, 'Giày chạy bộ Nike Renew Rival', 'giay-chay-bo-nike-renew-rival', 'e7e8aa283be7de96cfa8338218899753.png', 'beb22e7d7941ff19bd8c34d2914d7adb.png', 'Giày chạy bộ nam Nike Renew Rival AA7400-001 với thiết kế năng động, hiện đại giúp người mang thể hiện phong cách riêng, đồng thời hỗ trợ vận động tốt cho đôi chân trong mọi hoạt động.', '<p><strong>Gi&agrave;y chạy bộ nam Nike Renew Rival AA7400-001</strong>&nbsp;với thiết kế năng động, hiện đại gi&uacute;p người mang thể hiện phong c&aacute;ch ri&ecirc;ng, đồng thời hỗ trợ vận động tốt cho đ&ocirc;i ch&acirc;n trong mọi hoạt động. Th&acirc;n gi&agrave;y được cấu tạo bởi vật liệu bền bỉ, &ecirc;m &aacute;i gi&uacute;p bạn lu&ocirc;n cảm thấy thoải m&aacute;i khi mang trong thời gian d&agrave;i. Mặt trong đế d&agrave;y mềm mại n&acirc;ng niu l&ograve;ng b&agrave;n ch&acirc;n, c&ograve;n mặt ngo&agrave;i đế gi&agrave;y hạn chế m&agrave;i m&ograve;n, chống trơn trượt đem đến sự an to&agrave;n cho người mang. Form gi&agrave;y &ocirc;m ch&acirc;n c&ugrave;ng chất liệu th&acirc;n gi&agrave;y c&oacute; t&iacute;nh đ&agrave;n hồi theo chiều chuyển động của b&agrave;n ch&acirc;n gi&uacute;p bạn tự do hoạt động.&nbsp;<em>Gi&agrave;y chạy bộ Nike</em>&nbsp;sở hữu những đường n&eacute;t khỏe khoắn c&ugrave;ng gam m&agrave;u tinh tế, trẻ trung sẽ mang đến cho bạn những trải nghiệm tuyệt vời khi tham gia tập luyện thể thao hay c&aacute;c hoạt động kh&aacute;c thường ng&agrave;y. B&ecirc;n cạnh đ&oacute;, với một đ&ocirc;i gi&agrave;y thể thao, bạn c&oacute; thể phối với nhiều kiểu trang phục theo sở th&iacute;ch tạo n&ecirc;n set đồ ấn tượng, c&aacute; t&iacute;nh.</p>\r\n', 3, 17, 0, 0, 1644000, 1644000, '2021-05-17 11:21:47', '1', '2021-05-17 11:21:47', '1', 1, 1),
(88, 14, 'Giày chạy bộ nam Nike Odyssey React', 'giay-chay-bo-nam-nike-odyssey-react', '4c277c3ab1d95480a545eb0320a6bc77.png', 'bc12b609792f6fd9fa7187d8f04812cd.png', 'Giày chạy bộ nam Nike Odyssey React AO9819-601 với thiết kế sáng tạo, đậm chất thể thao và cá tính cùng chất liệu bền bỉ hỗ trợ vận động tốt, mang đến cho bạn một phong cách riêng.', '<p><strong>Gi&agrave;y chạy bộ nam Nike Odyssey React AO9819-601</strong>&nbsp;với thiết kế s&aacute;ng tạo, đậm chất thể thao v&agrave; c&aacute; t&iacute;nh c&ugrave;ng chất liệu bền bỉ hỗ trợ vận động tốt, mang đến cho bạn một phong c&aacute;ch ri&ecirc;ng. Chất liệu gi&agrave;y được l&agrave;m từ loại vải Flyknit tho&aacute;ng kh&iacute;, dệt tỉ mỉ, tinh tế tạo độ th&ocirc;ng m&aacute;t tr&aacute;nh g&acirc;y hầm b&iacute; hay m&ugrave;i h&ocirc;i. Đế cao su mềm c&ugrave;ng lớp l&oacute;t gi&agrave;y &ecirc;m &aacute;i gi&uacute;p bạn cảm thấy dễ chịu khi hoạt động trong thời gian d&agrave;i. Ngo&agrave;i ra, đế gi&agrave;y c&ograve;n c&oacute; c&aacute;c đường r&atilde;nh chống trơn trượt, được thiết kế th&ecirc;m phần t&uacute;i đệm kh&iacute; nhằm giảm trọng lượng của đ&ocirc;i gi&agrave;y, tăng t&iacute;nh linh hoạt cho đ&ocirc;i ch&acirc;n. N&eacute;t đặc trưng của d&ograve;ng gi&agrave;y Nike đ&oacute; l&agrave; m&agrave;u sắc tinh tế hay c&aacute;ch h&ograve;a quyện m&agrave;u ấn tượng c&ugrave;ng logo thương hiệu nổi bật được in tr&ecirc;n sản phẩm v&agrave; việc sử dụng c&ocirc;ng nghệ hiện đại đ&aacute;p ứng cường độ hoạt động cao.&nbsp;<em>Gi&agrave;y chạy bộ Nike</em>&nbsp;sở hữu phong c&aacute;ch năng động, hiện đại bắt nhịp xu hướng thời trang. Form gi&agrave;y &ocirc;m vừa vặn đ&ocirc;i ch&acirc;n nhưng vẫn tạo cảm gi&aacute;c thoải m&aacute;i, gi&uacute;p bạn tự tin tr&ecirc;n mọi h&agrave;nh tr&igrave;nh. Sản phẩm ph&ugrave; hợp với nhiều d&aacute;ng người v&agrave; độ tuổi, l&agrave; sự lựa chọn l&yacute; tưởng cho những t&iacute;n đồ thể thao.</p>\r\n', 3, 1, 0, 0, 1769000, 1769000, '2021-05-17 11:27:54', '1', '2021-05-17 11:27:54', '1', 1, 1),
(89, 14, 'Giày chạy bộ nam Nike Renew Rival 2', 'giay-chay-bo-nam-nike-renew-rival-2', 'ea524b0c35a9584639c19a6c2d2c1aad.png', 'ece78aa1be4c31f355cabcbfa15fa66e.png', 'Giày chạy bộ nam Nike Renew Rival 2 AT7909-004 với thiết kế năng động, hiện đại giúp người mang thể hiện phong cách riêng, đồng thời hỗ trợ vận động tốt cho đôi chân trong mọi hoạt động.', '<p><strong>Gi&agrave;y chạy bộ nam Nike Renew Rival 2 AT7909-004</strong>&nbsp;với thiết kế năng động, hiện đại gi&uacute;p người mang thể hiện phong c&aacute;ch ri&ecirc;ng, đồng thời hỗ trợ vận động tốt cho đ&ocirc;i ch&acirc;n trong mọi hoạt động. Th&acirc;n gi&agrave;y được cấu tạo bởi vật liệu bền bỉ, &ecirc;m &aacute;i gi&uacute;p bạn lu&ocirc;n cảm thấy thoải m&aacute;i khi mang trong thời gian d&agrave;i. Mặt trong đế d&agrave;y mềm mại n&acirc;ng niu l&ograve;ng b&agrave;n ch&acirc;n, c&ograve;n mặt ngo&agrave;i đế gi&agrave;y hạn chế m&agrave;i m&ograve;n, chống trơn trượt đem đến sự an to&agrave;n cho người mang. Form gi&agrave;y &ocirc;m ch&acirc;n c&ugrave;ng chất liệu th&acirc;n gi&agrave;y c&oacute; t&iacute;nh đ&agrave;n hồi theo chiều chuyển động của b&agrave;n ch&acirc;n gi&uacute;p bạn tự do hoạt động.&nbsp;<em>Gi&agrave;y chạy bộ Nike</em>&nbsp;sở hữu những đường n&eacute;t khỏe khoắn c&ugrave;ng gam m&agrave;u tinh tế, trẻ trung sẽ mang đến cho bạn những trải nghiệm tuyệt vời khi tham gia tập luyện thể thao hay c&aacute;c hoạt động kh&aacute;c thường ng&agrave;y. B&ecirc;n cạnh đ&oacute;, với một đ&ocirc;i gi&agrave;y thể thao, bạn c&oacute; thể phối với nhiều kiểu trang phục theo sở th&iacute;ch tạo n&ecirc;n set đồ ấn tượng, c&aacute; t&iacute;nh.</p>\r\n', 3, 17, 0, 0, 1760000, 1760000, '2021-05-17 11:34:24', '1', '2021-05-17 11:34:24', '1', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_province`
--

CREATE TABLE `db_province` (
  `id` int(5) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `db_province`
--

INSERT INTO `db_province` (`id`, `name`, `type`) VALUES
(1, 'Thành phố Hà Nội', 'Thành phố Trung ương'),
(2, 'Tỉnh Hà Giang', 'Tỉnh'),
(4, 'Tỉnh Cao Bằng', 'Tỉnh'),
(6, 'Tỉnh Bắc Kạn', 'Tỉnh'),
(8, 'Tỉnh Tuyên Quang', 'Tỉnh'),
(10, 'Tỉnh Lào Cai', 'Tỉnh'),
(11, 'Tỉnh Điện Biên', 'Tỉnh'),
(12, 'Tỉnh Lai Châu', 'Tỉnh'),
(14, 'Tỉnh Sơn La', 'Tỉnh'),
(15, 'Tỉnh Yên Bái', 'Tỉnh'),
(17, 'Tỉnh Hoà Bình', 'Tỉnh'),
(19, 'Tỉnh Thái Nguyên', 'Tỉnh'),
(20, 'Tỉnh Lạng Sơn', 'Tỉnh'),
(22, 'Tỉnh Quảng Ninh', 'Tỉnh'),
(24, 'Tỉnh Bắc Giang', 'Tỉnh'),
(25, 'Tỉnh Phú Thọ', 'Tỉnh'),
(26, 'Tỉnh Vĩnh Phúc', 'Tỉnh'),
(27, 'Tỉnh Bắc Ninh', 'Tỉnh'),
(30, 'Tỉnh Hải Dương', 'Tỉnh'),
(31, 'Thành phố Hải Phòng', 'Thành phố Trung ương'),
(33, 'Tỉnh Hưng Yên', 'Tỉnh'),
(34, 'Tỉnh Thái Bình', 'Tỉnh'),
(35, 'Tỉnh Hà Nam', 'Tỉnh'),
(36, 'Tỉnh Nam Định', 'Tỉnh'),
(37, 'Tỉnh Ninh Bình', 'Tỉnh'),
(38, 'Tỉnh Thanh Hóa', 'Tỉnh'),
(40, 'Tỉnh Nghệ An', 'Tỉnh'),
(42, 'Tỉnh Hà Tĩnh', 'Tỉnh'),
(44, 'Tỉnh Quảng Bình', 'Tỉnh'),
(45, 'Tỉnh Quảng Trị', 'Tỉnh'),
(46, 'Tỉnh Thừa Thiên Huế', 'Tỉnh'),
(48, 'Thành phố Đà Nẵng', 'Thành phố Trung ương'),
(49, 'Tỉnh Quảng Nam', 'Tỉnh'),
(51, 'Tỉnh Quảng Ngãi', 'Tỉnh'),
(52, 'Tỉnh Bình Định', 'Tỉnh'),
(54, 'Tỉnh Phú Yên', 'Tỉnh'),
(56, 'Tỉnh Khánh Hòa', 'Tỉnh'),
(58, 'Tỉnh Ninh Thuận', 'Tỉnh'),
(60, 'Tỉnh Bình Thuận', 'Tỉnh'),
(62, 'Tỉnh Kon Tum', 'Tỉnh'),
(64, 'Tỉnh Gia Lai', 'Tỉnh'),
(66, 'Tỉnh Đắk Lắk', 'Tỉnh'),
(67, 'Tỉnh Đắk Nông', 'Tỉnh'),
(68, 'Tỉnh Lâm Đồng', 'Tỉnh'),
(70, 'Tỉnh Bình Phước', 'Tỉnh'),
(72, 'Tỉnh Tây Ninh', 'Tỉnh'),
(74, 'Tỉnh Bình Dương', 'Tỉnh'),
(75, 'Tỉnh Đồng Nai', 'Tỉnh'),
(77, 'Tỉnh Bà Rịa - Vũng Tàu', 'Tỉnh'),
(79, 'Thành phố Hồ Chí Minh', 'Thành phố Trung ương'),
(80, 'Tỉnh Long An', 'Tỉnh'),
(82, 'Tỉnh Tiền Giang', 'Tỉnh'),
(83, 'Tỉnh Bến Tre', 'Tỉnh'),
(84, 'Tỉnh Trà Vinh', 'Tỉnh'),
(86, 'Tỉnh Vĩnh Long', 'Tỉnh'),
(87, 'Tỉnh Đồng Tháp', 'Tỉnh'),
(89, 'Tỉnh An Giang', 'Tỉnh'),
(91, 'Tỉnh Kiên Giang', 'Tỉnh'),
(92, 'Thành phố Cần Thơ', 'Thành phố Trung ương'),
(93, 'Tỉnh Hậu Giang', 'Tỉnh'),
(94, 'Tỉnh Sóc Trăng', 'Tỉnh'),
(95, 'Tỉnh Bạc Liêu', 'Tỉnh'),
(96, 'Tỉnh Cà Mau', 'Tỉnh');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_slider`
--

CREATE TABLE `db_slider` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `created_by` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Supper Admin',
  `modified` datetime NOT NULL,
  `modified_by` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Supper Admin',
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_slider`
--

INSERT INTO `db_slider` (`id`, `name`, `link`, `img`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `status`) VALUES
(1, 'Banner1', 'banner-1', '2.jpg', '2019-06-13 21:27:24', '1', '2019-06-13 23:42:42', '', 0, 1),
(2, 'Banner 2', 'Banner-2', 'default.png', '2019-06-13 23:45:04', '1', '2019-06-13 23:45:44', '', 0, 1),
(3, 'trang chu 1', 'trang-chu', 'default.png', '2019-07-03 17:05:52', '1', '2019-07-03 17:07:18', '', 0, 1),
(5, 'slider trang chu 3', 'slider-trang-chu-3', 'xsmaxbanner.png', '2019-07-03 17:06:58', '1', '2019-07-03 17:06:58', '1', 0, 1),
(7, 'banner', 'banner', 'bannner21.png', '2020-10-05 15:21:20', '1', '2020-10-05 15:21:20', '1', 0, 1),
(8, 'banner ', 'banner', 'bennergt1.png', '2020-10-05 15:27:51', '1', '2021-05-16 21:37:17', '', 1, 1),
(9, 'banner2', 'banner2', 'benner-up.png', '2020-10-05 15:28:08', '1', '2021-05-16 21:47:46', '', 0, 1),
(10, 'banner3', 'banner3', 'benner-up2.png', '2020-10-05 15:28:22', '1', '2021-05-16 21:46:33', '', 0, 1),
(11, 'bennerup', 'bennerup', 'benner-up1.png', '2021-05-16 21:49:09', '1', '2021-05-16 21:49:09', '1', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_user`
--

CREATE TABLE `db_user` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `role` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gender` int(1) NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `trash` int(1) NOT NULL DEFAULT 1,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_user`
--

INSERT INTO `db_user` (`id`, `fullname`, `username`, `password`, `role`, `email`, `gender`, `phone`, `address`, `img`, `created`, `trash`, `status`) VALUES
(1, 'ankhang', 'ankhang', '7c4a8d09ca3762af61e59520943dc26494f8941b', 1, 'admin@gmail.com', 1, '0928167489', 'Đồng Tháp', 'user-group.png', '2019-04-23 09:16:16', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_usergroup`
--

CREATE TABLE `db_usergroup` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `access` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_usergroup`
--

INSERT INTO `db_usergroup` (`id`, `name`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `access`, `status`) VALUES
(1, 'Toàn quyền', '2019-05-14 23:29:15', 1, '2019-05-14 23:29:15', 4, 1, 1, 1),
(2, 'Nhân viên', '2019-05-14 23:29:21', 1, '2019-05-14 23:29:21', 4, 1, 1, 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `db_category`
--
ALTER TABLE `db_category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_config`
--
ALTER TABLE `db_config`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_contact`
--
ALTER TABLE `db_contact`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_content`
--
ALTER TABLE `db_content`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_customer`
--
ALTER TABLE `db_customer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_discount`
--
ALTER TABLE `db_discount`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_district`
--
ALTER TABLE `db_district`
  ADD PRIMARY KEY (`id`),
  ADD KEY `matp` (`provinceid`);

--
-- Chỉ mục cho bảng `db_order`
--
ALTER TABLE `db_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customerid` (`customerid`),
  ADD KEY `province` (`province`),
  ADD KEY `district` (`district`),
  ADD KEY `province_2` (`province`),
  ADD KEY `district_2` (`district`),
  ADD KEY `province_3` (`province`),
  ADD KEY `district_3` (`district`);

--
-- Chỉ mục cho bảng `db_orderdetail`
--
ALTER TABLE `db_orderdetail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productid` (`productid`),
  ADD KEY `orderid` (`orderid`);

--
-- Chỉ mục cho bảng `db_producer`
--
ALTER TABLE `db_producer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_product`
--
ALTER TABLE `db_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `producer` (`producer`),
  ADD KEY `catid` (`catid`);

--
-- Chỉ mục cho bảng `db_province`
--
ALTER TABLE `db_province`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_slider`
--
ALTER TABLE `db_slider`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_user`
--
ALTER TABLE `db_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role` (`role`);

--
-- Chỉ mục cho bảng `db_usergroup`
--
ALTER TABLE `db_usergroup`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `db_category`
--
ALTER TABLE `db_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `db_config`
--
ALTER TABLE `db_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `db_contact`
--
ALTER TABLE `db_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `db_content`
--
ALTER TABLE `db_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `db_customer`
--
ALTER TABLE `db_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT cho bảng `db_discount`
--
ALTER TABLE `db_discount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `db_order`
--
ALTER TABLE `db_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT cho bảng `db_orderdetail`
--
ALTER TABLE `db_orderdetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT cho bảng `db_producer`
--
ALTER TABLE `db_producer`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `db_product`
--
ALTER TABLE `db_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT cho bảng `db_slider`
--
ALTER TABLE `db_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `db_user`
--
ALTER TABLE `db_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `db_usergroup`
--
ALTER TABLE `db_usergroup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `db_district`
--
ALTER TABLE `db_district`
  ADD CONSTRAINT `db_district_ibfk_1` FOREIGN KEY (`provinceid`) REFERENCES `db_province` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `db_order`
--
ALTER TABLE `db_order`
  ADD CONSTRAINT `db_order_ibfk_2` FOREIGN KEY (`province`) REFERENCES `db_province` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `db_order_ibfk_3` FOREIGN KEY (`district`) REFERENCES `db_district` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `db_order_ibfk_4` FOREIGN KEY (`customerid`) REFERENCES `db_customer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `db_orderdetail`
--
ALTER TABLE `db_orderdetail`
  ADD CONSTRAINT `db_orderdetail_ibfk_2` FOREIGN KEY (`productid`) REFERENCES `db_product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `db_orderdetail_ibfk_3` FOREIGN KEY (`orderid`) REFERENCES `db_order` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `db_product`
--
ALTER TABLE `db_product`
  ADD CONSTRAINT `db_product_ibfk_1` FOREIGN KEY (`catid`) REFERENCES `db_category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `db_product_ibfk_2` FOREIGN KEY (`producer`) REFERENCES `db_producer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `db_user`
--
ALTER TABLE `db_user`
  ADD CONSTRAINT `db_user_ibfk_1` FOREIGN KEY (`role`) REFERENCES `db_usergroup` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
