-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 07 2017 г., 22:21
-- Версия сервера: 5.7.13
-- Версия PHP: 7.0.8

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

CREATE TABLE IF NOT EXISTS `abouts` (
  `id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(10) unsigned NOT NULL DEFAULT '1',
  `category_id` int(10) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `articles`
--

INSERT INTO `articles` (`id`, `title`, `desc`, `text`, `img`, `created_at`, `updated_at`, `user_id`, `category_id`) VALUES
(1, 'Template License', 'This is a free CSS website template by \r\nCoolWebTemplates.net. This work is distributed under the Creative Commons Attribution 3.0 License, which means that you are free to use it for any personal or commercial purpose  provided you credit me in the form of a link back to my "Website Templates"> CoolWebTemplates.net. It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. \r\n', '<strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec rhoncus condimentum neque vitae tempus.</strong><br> Nulla ut erat vitae lectus maximus posuere. Fusce at faucibus lacus, id dictum libero. Pellentesque nec massa faucibus, tincidunt turpis vitae, pretium nisi. Nulla ultricies sem vel vestibulum porttitor. Maecenas at finibus neque. Etiam nunc nisl, feugiat eget luctus sed, fringilla sed leo. Donec eget nisi semper, ultricies est in, tincidunt augue. Donec convallis sit amet felis nec interdum. Donec luctus euismod dolor ac ornare. Nullam fermentum ac turpis ut porta. Sed tempus euismod ante a condimentum. Fusce eget ligula faucibus, imperdiet arcu eget, feugiat urna. Sed molestie non neque in tincidunt. \r\n<br><br>\r\n<strong>Et quasi distinctio ea officiis aut neque unde. Voluptates nesciunt id natus sed iure consequatur eaque. Occaecati ipsum aperiam libero qui nulla nesciunt recusandae. Autem nihil quis provident repellendus dolorum et. In libero laborum totam amet.</strong> Nemo corporis consectetur omnis reprehenderit. Dicta qui doloremque quos sint. Sed aut rerum necessitatibus nihil dolores ipsam aut et. Tempore aspernatur sint aut aperiam sint. Vel rerum dolore qui dolorem ad. Voluptatem harum impedit dolorem. Ut a sint voluptate.Nunc purus ex, aliquam in finibus ut, venenatis at leo. Quisque ultricies tellus purus, ac suscipit ante suscipit nec. Etiam vitae lectus id sapien egestas hendrerit et varius diam. Proin a risus sem. Nam ac ullamcorper leo. Sed sed est in metus feugiat eleifend. Nunc id volutpat enim, in varius purus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur vulputate nunc nisl, sed hendrerit dui varius in. Cras eu dolor metus. Duis ut dolor nec ipsum mollis pharetra vitae in lectus. In hac habitasse platea dictumst. Quisque in ultricies dui. ', 'images_1.jpg', '2017-08-15 06:57:15', '2017-08-15 06:57:15', 1, 2),
(2, 'Quisquam dolor quia odio temporibus.', 'Mollitia soluta asperiores dolorem aliquid id cum. Qui magni sequi incidunt blanditiis doloremque. Magni iure doloribus non nihil dolores consectetur.\n\nCumque ab consequatur vero quam quas. Vero et dignissimos sequi eligendi sunt. Quia dolor iste voluptatem maiores consequatur. Rem quis perspiciatis quasi debitis alias.\n\nRem quis perspiciatis quasi debitis alias. Ut commodi molestiae voluptas et aut tempore. Non animi rerum sed earum eveniet amet.\n\n\n', '<strong>Mollitia soluta asperiores dolorem aliquid id cum. Qui magni sequi incidunt blanditiis doloremque. </strong> Magni iure doloribus non nihil dolores consectetur. Dolor porro occaecati maiores dolorem. In modi aut cum aspernatur est ad cumque. Cupiditate excepturi vel consequatur et quo. Velit totam sit sint sit voluptate qui. Quis molestiae voluptates architecto enim rem. Odio deleniti quas et corporis. Cumque ab consequatur vero quam quas. Vero et dignissimos sequi eligendi sunt. Quia dolor iste voluptatem maiores consequatur. Rem quis perspiciatis quasi debitis alias. Ut commodi molestiae voluptas et aut tempore. Non animi rerum sed earum eveniet amet.\r\n\r\nMollitia soluta asperiores dolorem aliquid id cum. Qui magni sequi incidunt blanditiis doloremque. Magni iure doloribus non nihil dolores consectetur.\r\n<br><br>\r\n<strong>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</strong><br> The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don''t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn''t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'images_2.jpg', '2017-08-15 06:57:15', '2017-08-15 06:57:15', 1, 3),
(3, 'Генератор рыбных текстов', 'Добро пожаловать на генератор рыбных текстов!\r\nЗдесь абсолютно комфортно вы можете генерировать тексты-\r\n«рыбы» для решения задач в области макетирования.\r\n<br>Мы будем постепенно расширять функциональ-\r\nность нашего сайта и ждем с нетерпением ваших отзывов.\r\n<br>Присылайте нам ваши рыбные тексты! Мы будем рады!<br><br>', 'Проснувшись однажды утром после беспокойного сна, Грегор Замза обнаружил, что он у себя в постели превратился в страшное насекомое. Лежа на панцирнотвердой спине, он видел, стоило ему приподнять голову, свой коричневый, выпуклый, разделенный дугообразными чешуйками живот, на верхушке которого еле держалось готовое вот-вот окончательно сползти одеяло. Его многочисленные, убого тонкие по сравнению с остальным телом ножки беспомощно копошились у него перед глазами. «Что со мной случилось?» – подумал он. Это не было сном. Его комната, настоящая, разве что слишком маленькая, но обычная комната, мирно покоилась в своих четырех хорошо знакомых стенах. Над столом, где были разложены распакованные образцы сукон – Замза был коммивояжером, – висел портрет, который он недавно вырезал из иллюстрированного журнала и вставил в красивую золоченую рамку. На портрете была изображена дама в меховой шляпе и боа, она сидела очень прямо и протягивала зрителю тяжелую меховую муфту, в которой целиком исчезала ее рука. Затем взгляд Грегора устремился в окно, и пасмурная погода – слышно было, как по жести подоконника стучат капли дождя – привела его и вовсе в грустное настроение. «Хорошо бы еще немного поспать и забыть всю эту чепуху», – подумал он, но это было совершенно неосуществимо, он привык спать на правом боку, а в теперешнем своем ', 'images_3.jpg', '2017-08-24 10:20:44', '2017-08-24 10:20:44', 1, 4),
(4, 'Страдания юного Вертера  ', 'Душа моя озарена неземной радостью, как эти чудесные весенние утра, которыми я наслаждаюсь от всего сердца. Я совсем один и блаженствую в здешнем краю, словно созданном для таких, как я. Я так счастлив, мой друг, так упоен ощущением покоя, что искусство мое страдает от этого. Ни одного штриха не мог бы я сделать, а никогда не был таким большим художником, как в эти минуты. Когда от милой моей долины поднимается пар и полдневное солнце стоит над непроницаемой чащей...', 'Душа моя озарена неземной радостью, как эти чудесные весенние утра, которыми я наслаждаюсь от всего сердца. Я совсем один и блаженствую в здешнем краю, словно созданном для таких, как я. Я так счастлив, мой друг, так упоен ощущением покоя, что искусство мое страдает от этого. Ни одного штриха не мог бы я сделать, а никогда не был таким большим художником, как в эти минуты. Когда от милой моей долины поднимается пар и полдневное солнце стоит над непроницаемой чащей темного леса и лишь редкий луч проскальзывает в его святая святых, а я лежу в высокой траве у быстрого ручья и, прильнув к земле, вижу тысячи всевозможных былинок и чувствую, как близок моему сердцу крошечный мирок, что снует между стебельками, наблюдаю эти неисчислимые, непостижимые разновидности червяков и мошек и чувствую близость всемогущего, создавшего нас по своему подобию, веяние вселюбящего, судившего нам парить в вечном блаженстве, когда взор мой туманится и все вокруг меня и небо надо мной запечатлены в моей душе, точно образ возлюбленной, - тогда, дорогой друг, меня часто томит мысль: "Ах! Как бы выразить, как бы вдохнуть в рисунок то, что так полно, так трепетно живет во мне, запечатлеть отражение моей души, как душа моя - отражение предвечного бога!" Друг \r\n\r\n\r\n', 'images_5.jpg', '2017-08-30 12:45:15', '2017-08-30 12:45:15', 1, 4),
(5, 'Страдания юного Кафки   ', 'Проснувшись однажды утром после беспокойного сна, Грегор Замза обнаружил, что он у себя в постели превратился в страшное насекомое. Лежа на панцирнотвердой спине, он видел, стоило ему приподнять голову, свой коричневый, выпуклый, разделенный дугообразными чешуйками живот, на верхушке которого еле держалось готовое вот-вот окончательно сползти одеяло. Его многочисленные, убого тонкие по сравнению с остальным телом ножки...', 'Проснувшись однажды утром после беспокойного сна, Грегор Замза обнаружил, что он у себя в постели превратился в страшное насекомое. Лежа на панцирнотвердой спине, он видел, стоило ему приподнять голову, свой коричневый, выпуклый, разделенный дугообразными чешуйками живот, на верхушке которого еле держалось готовое вот-вот окончательно сползти одеяло. Его многочисленные, убого тонкие по сравнению с остальным телом ножки беспомощно копошились у него перед глазами. «Что со мной случилось?» – подумал он. Это не было сном. Его комната, настоящая, разве что слишком маленькая, но обычная комната, мирно покоилась в своих четырех хорошо знакомых стенах. Над столом, где были разложены распакованные образцы сукон – Замза был коммивояжером, – висел портрет, который он недавно вырезал из иллюстрированного журнала и вставил в красивую золоченую рамку. На портрете была изображена дама в меховой шляпе и боа, она сидела очень прямо и протягивала зрителю тяжелую меховую муфту, в которой целиком исчезала ее рука. Затем взгляд Грегора устремился в окно, и пасмурная погода – слышно было, как по жести подоконника стучат капли дождя – привела его и вовсе в грустное настроение. «Хорошо бы еще немного поспать и забыть всю эту чепуху», – подумал он, но это было совершенно неосуществимо, он привык спать на правом боку, а в теперешнем своем ', 'images_3.jpg', '2017-09-02 12:45:15', '2017-09-02 12:45:15', 1, 3),
(6, 'Quisquam dolor quia odio temporibus.', 'Mollitia soluta asperiores dolorem aliquid id cum. Qui magni sequi incidunt blanditiis doloremque. Magni iure doloribus non nihil dolores consectetur.\r\n\r\nCumque ab consequatur vero quam quas. Vero et dignissimos sequi eligendi sunt. Quia dolor iste voluptatem maiores consequatur. Rem quis perspiciatis quasi debitis alias.\r\n\r\nRem quis perspiciatis quasi debitis alias. Ut commodi molestiae voluptas et aut tempore. Non animi rerum sed earum eveniet amet.\r\n\r\n\r\n', '<strong>Mollitia soluta asperiores dolorem aliquid id cum. Qui magni sequi incidunt blanditiis doloremque. </strong> Magni iure doloribus non nihil dolores consectetur. Dolor porro occaecati maiores dolorem. In modi aut cum aspernatur est ad cumque. Cupiditate excepturi vel consequatur et quo. Velit totam sit sint sit voluptate qui. Quis molestiae voluptates architecto enim rem. Odio deleniti quas et corporis. Cumque ab consequatur vero quam quas. Vero et dignissimos sequi eligendi sunt. Quia dolor iste voluptatem maiores consequatur. Rem quis perspiciatis quasi debitis alias. Ut commodi molestiae voluptas et aut tempore. Non animi rerum sed earum eveniet amet.\r\n\r\nMollitia soluta asperiores dolorem aliquid id cum. Qui magni sequi incidunt blanditiis doloremque. Magni iure doloribus non nihil dolores consectetur.\r\n<br><br>\r\n<strong>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</strong><br> The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don''t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn''t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'images_2.jpg', '2017-08-15 06:57:15', '2017-08-15 06:57:15', 1, 3),
(7, 'Template License', 'This is a free CSS website template by \r\nCoolWebTemplates.net. This work is distributed under the Creative Commons Attribution 3.0 License, which means that you are free to use it for any personal or commercial purpose  provided you credit me in the form of a link back to my "Website Templates"> CoolWebTemplates.net. It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. \r\n', '<strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec rhoncus condimentum neque vitae tempus.</strong><br> Nulla ut erat vitae lectus maximus posuere. Fusce at faucibus lacus, id dictum libero. Pellentesque nec massa faucibus, tincidunt turpis vitae, pretium nisi. Nulla ultricies sem vel vestibulum porttitor. Maecenas at finibus neque. Etiam nunc nisl, feugiat eget luctus sed, fringilla sed leo. Donec eget nisi semper, ultricies est in, tincidunt augue. Donec convallis sit amet felis nec interdum. Donec luctus euismod dolor ac ornare. Nullam fermentum ac turpis ut porta. Sed tempus euismod ante a condimentum. Fusce eget ligula faucibus, imperdiet arcu eget, feugiat urna. Sed molestie non neque in tincidunt. \r\n<br><br>\r\n<strong>Et quasi distinctio ea officiis aut neque unde. Voluptates nesciunt id natus sed iure consequatur eaque. Occaecati ipsum aperiam libero qui nulla nesciunt recusandae. Autem nihil quis provident repellendus dolorum et. In libero laborum totam amet.</strong> Nemo corporis consectetur omnis reprehenderit. Dicta qui doloremque quos sint. Sed aut rerum necessitatibus nihil dolores ipsam aut et. Tempore aspernatur sint aut aperiam sint. Vel rerum dolore qui dolorem ad. Voluptatem harum impedit dolorem. Ut a sint voluptate.Nunc purus ex, aliquam in finibus ut, venenatis at leo. Quisque ultricies tellus purus, ac suscipit ante suscipit nec. Etiam vitae lectus id sapien egestas hendrerit et varius diam. Proin a risus sem. Nam ac ullamcorper leo. Sed sed est in metus feugiat eleifend. Nunc id volutpat enim, in varius purus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur vulputate nunc nisl, sed hendrerit dui varius in. Cras eu dolor metus. Duis ut dolor nec ipsum mollis pharetra vitae in lectus. In hac habitasse platea dictumst. Quisque in ultricies dui. ', 'images_1.jpg', '2017-08-15 06:57:15', '2017-08-15 06:57:15', 1, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) unsigned NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `title`, `alias`, `created_at`, `updated_at`) VALUES
(1, 0, 'Блог', 'blog', NULL, NULL),
(2, 1, 'Компьютеры', 'computers', NULL, NULL),
(3, 1, 'Интересное', 'interesting', NULL, NULL),
(4, 1, 'Советы', 'soveti', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(10) unsigned NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `article_id` int(10) unsigned NOT NULL DEFAULT '1',
  `user_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `text`, `name`, `email`, `site`, `parent_id`, `article_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Hello World! Hello Univerce! I am here!', 'Jon', 'iamnomail@mail.com', '', 0, 1, NULL, '2017-08-14 10:31:41', '2017-08-14 10:31:41'),
(2, 'Hello again! I am here.', 'Paul', 'test@gmail.com', '', 0, 1, NULL, '2017-08-16 11:45:31', '2017-08-16 11:45:31'),
(3, 'Это комментарий 1 на статью 3', 'Дикий Джо', 'nomail@mail.com', '', 0, 3, NULL, '2017-08-28 08:25:45', '2017-08-28 08:25:45'),
(4, 'Hello! I am test!', '', '', '', 0, 1, 1, '2017-09-07 17:34:32', '2017-09-07 17:34:32'),
(5, 'Коммент Степана', 'Степан Петров', 'jon@mail.ru', '', 0, 3, NULL, '2017-09-07 17:39:56', '2017-09-07 17:39:56'),
(6, 'Комментарий Jon', 'Jon', 'nomail@test.com', '', 0, 2, NULL, '2017-09-07 17:42:47', '2017-09-07 17:42:47'),
(7, 'Test say hello Jon!', '', '', '', 0, 2, 1, '2017-09-07 17:58:25', '2017-09-07 17:58:25'),
(8, 'Тут был Вася...', 'Vasia', 'Nomail', '', 0, 2, NULL, '2017-09-07 18:00:51', '2017-09-07 18:00:51'),
(9, 'Это Тата. Снова здрасте.', '', '', '', 0, 2, 2, '2017-09-07 18:28:29', '2017-09-07 18:28:29'),
(10, 'Test1 помножит Вас на ноль...', '', '', '', 0, 3, 2, '2017-09-07 19:04:27', '2017-09-07 19:04:27'),
(11, 'Тата не флуди...', 'Тата', 'Nomail', '', 0, 2, NULL, '2017-09-07 19:17:11', '2017-09-07 19:17:11');

-- --------------------------------------------------------

--
-- Структура таблицы `supports`
--

CREATE TABLE IF NOT EXISTS `supports` (
  `id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_user_id_foreign` (`user_id`),
  ADD KEY `articles_category_id_foreign` (`category_id`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_alias_unique` (`alias`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_article_id_foreign` (`article_id`),
  ADD KEY `comments_user_id_foreign` (`user_id`);

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
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT для таблицы `supports`
--
ALTER TABLE `supports`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `articles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ограничения внешнего ключа таблицы `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_article_id_foreign` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`),
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
