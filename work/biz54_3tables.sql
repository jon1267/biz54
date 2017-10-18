-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Авг 16 2017 г., 15:52
-- Версия сервера: 5.7.16
-- Версия PHP: 7.0.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `biz54`
--

-- --------------------------------------------------------

--
-- Структура таблицы `abouts`
--

CREATE TABLE `abouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `abouts`
--

INSERT INTO `abouts` (`id`, `title`, `text`, `created_at`, `updated_at`) VALUES
(1, 'About to Company Name', '<strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum eget bibendum tellus. Nunc vel imperdiet tellus. Mauris ornare aliquam urna, accumsan bibendum eros auctor ac.</strong><br><br>\r\n\r\nOmnis velit quasi soluta natus qui. Sunt corrupti sequi accusamus perferendis voluptas. Maiores fuga eos corrupti et. Ipsa recusandae sit temporibus eos libero. Eligendi ea eum autem cupiditate. Et tempore aspernatur magni voluptas perferendis sapiente ducimus. Et suscipit rerum repellendus. Sit quia ea qui voluptate non. Facere provident consequatur sapiente harum.', '2017-08-15 06:57:16', '2017-08-15 06:57:16'),
(2, 'Our Mission', '<strong>Nunc malesuada pulvinar suscipit. Phasellus sed tortor quis ligula facilisis aliquam. Aliquam quis magna eu dolor posuere malesuada. Quisque consequat, metus fermentum convallis imperdiet, ante justo pharetra enim.</strong><br><br>\r\n\r\nIn beatae voluptatem ex laborum. Voluptatem quis itaque quod qui non sequi. Delectus minima voluptatem quia porro harum. Harum omnis et earum et et et. Aut consequuntur dolore eius sit. Fugit in id molestiae eum itaque. Fugiat omnis consequatur odit perspiciatis voluptas beatae. Adipisci quia reprehenderit quia quaerat. Quos veniam minima ullam quibusdam assumenda. Saepe qui sed eum dolor ab aut.<br><br>\r\nQuisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc, ', '2017-08-15 06:57:16', '2017-08-15 06:57:16');

-- --------------------------------------------------------

--
-- Структура таблицы `articles`
--

CREATE TABLE `articles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `articles`
--

INSERT INTO `articles` (`id`, `title`, `desc`, `text`, `img`, `created_at`, `updated_at`) VALUES
(1, 'Template License', 'This is a free CSS website template by \r\nCoolWebTemplates.net. This work is distributed under the Creative Commons Attribution 3.0 License, which means that you are free to use it for any personal or commercial purpose  provided you credit me in the form of a link back to my \"Website Templates\"> CoolWebTemplates.net. It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. \r\n', '<strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec rhoncus condimentum neque vitae tempus.</strong><br> Nulla ut erat vitae lectus maximus posuere. Fusce at faucibus lacus, id dictum libero. Pellentesque nec massa faucibus, tincidunt turpis vitae, pretium nisi. Nulla ultricies sem vel vestibulum porttitor. Maecenas at finibus neque. Etiam nunc nisl, feugiat eget luctus sed, fringilla sed leo. Donec eget nisi semper, ultricies est in, tincidunt augue. Donec convallis sit amet felis nec interdum. Donec luctus euismod dolor ac ornare. Nullam fermentum ac turpis ut porta. Sed tempus euismod ante a condimentum. Fusce eget ligula faucibus, imperdiet arcu eget, feugiat urna. Sed molestie non neque in tincidunt. \r\n<br><br>\r\n<strong>Et quasi distinctio ea officiis aut neque unde. Voluptates nesciunt id natus sed iure consequatur eaque. Occaecati ipsum aperiam libero qui nulla nesciunt recusandae. Autem nihil quis provident repellendus dolorum et. In libero laborum totam amet.</strong> Nemo corporis consectetur omnis reprehenderit. Dicta qui doloremque quos sint. Sed aut rerum necessitatibus nihil dolores ipsam aut et. Tempore aspernatur sint aut aperiam sint. Vel rerum dolore qui dolorem ad. Voluptatem harum impedit dolorem. Ut a sint voluptate.Nunc purus ex, aliquam in finibus ut, venenatis at leo. Quisque ultricies tellus purus, ac suscipit ante suscipit nec. Etiam vitae lectus id sapien egestas hendrerit et varius diam. Proin a risus sem. Nam ac ullamcorper leo. Sed sed est in metus feugiat eleifend. Nunc id volutpat enim, in varius purus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur vulputate nunc nisl, sed hendrerit dui varius in. Cras eu dolor metus. Duis ut dolor nec ipsum mollis pharetra vitae in lectus. In hac habitasse platea dictumst. Quisque in ultricies dui. ', 'images_1.jpg', '2017-08-15 06:57:15', '2017-08-15 06:57:15'),
(2, 'Quisquam dolor quia odio temporibus.', 'Mollitia soluta asperiores dolorem aliquid id cum. Qui magni sequi incidunt blanditiis doloremque. Magni iure doloribus non nihil dolores consectetur.\n\nCumque ab consequatur vero quam quas. Vero et dignissimos sequi eligendi sunt. Quia dolor iste voluptatem maiores consequatur. Rem quis perspiciatis quasi debitis alias.\n\nRem quis perspiciatis quasi debitis alias. Ut commodi molestiae voluptas et aut tempore. Non animi rerum sed earum eveniet amet.\n\n\n', '<strong>Mollitia soluta asperiores dolorem aliquid id cum. Qui magni sequi incidunt blanditiis doloremque. </strong> Magni iure doloribus non nihil dolores consectetur. Dolor porro occaecati maiores dolorem. In modi aut cum aspernatur est ad cumque. Cupiditate excepturi vel consequatur et quo. Velit totam sit sint sit voluptate qui. Quis molestiae voluptates architecto enim rem. Odio deleniti quas et corporis. Cumque ab consequatur vero quam quas. Vero et dignissimos sequi eligendi sunt. Quia dolor iste voluptatem maiores consequatur. Rem quis perspiciatis quasi debitis alias. Ut commodi molestiae voluptas et aut tempore. Non animi rerum sed earum eveniet amet.\r\n\r\nMollitia soluta asperiores dolorem aliquid id cum. Qui magni sequi incidunt blanditiis doloremque. Magni iure doloribus non nihil dolores consectetur.\r\n<br><br>\r\n<strong>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</strong><br> The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'images_2.jpg', '2017-08-15 06:57:15', '2017-08-15 06:57:15');

-- --------------------------------------------------------

--
-- Структура таблицы `supports`
--

CREATE TABLE `supports` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `supports`
--

INSERT INTO `supports` (`id`, `title`, `text`, `created_at`, `updated_at`) VALUES
(1, 'Support to Company Name', 'Itaque maxime necessitatibus eius similique fuga. Excepturi eligendi accusamus vel error ex in. Provident ipsam dolorem voluptatem eos qui. Rerum dignissimos dolorem sit eaque est voluptates dignissimos. Provident nostrum quis aspernatur distinctio ut. Beatae quia asperiores perferendis alias. Ullam omnis cupiditate dolor saepe quos odit tempora. Rem molestiae minus soluta quisquam architecto ut aspernatur repellendus. Eum eveniet voluptas quos repudiandae ut qui. Amet non voluptatem enim aut minus adipisci praesentium.<br><br>\r\n Et alias distinctio in corrupti. Ad doloremque quo officiis. Magni autem et culpa et quod ratione. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.\r\n<br><br>\r\n<strong>Lorem ipsum dolor sit amet</strong><br>\r\nPhasellus diam justo, laoreet vel vulputate eu, congue vel est. Maecenas eros libero, sollicitudin a vulputate fermentum, ultrices vel lacus. Nam in metus non augue fermentum consequat ultrices ac enim. Integer aliquam urna non diam aliquam eget hendrerit sem molestie.<br><br>\r\nPhasellus diam justo, laoreet vel vulputate eu, congue vel est. Maecenas eros libero, sollicitudin a vulputate fermentum, ultrices vel lacus. Nam in metus non augue fermentum consequat ultrices ac enim. Integer aliquam urna non diam aliquam eget hendrerit sem molestie.', '2017-08-15 06:57:16', '2017-08-15 06:57:16');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `supports`
--
ALTER TABLE `supports`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `supports`
--
ALTER TABLE `supports`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
