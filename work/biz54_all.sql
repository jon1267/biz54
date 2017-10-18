-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 26 2017 г., 11:23
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
(1, 'About to Company Name', '<p><strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum eget bibendum tellus. Nunc vel imperdiet tellus. Mauris ornare aliquam urna, accumsan bibendum eros auctor ac.</strong><br />\r\n<br />\r\nOmnis velit quasi soluta natus qui. Sunt corrupti sequi accusamus perferendis voluptas. Maiores fuga eos corrupti et. Ipsa recusandae sit temporibus eos libero. Eligendi ea eum autem cupiditate. Et tempore aspernatur magni voluptas perferendis sapiente ducimus. Et suscipit rerum repellendus. Sit quia ea qui voluptate non. Facere provident consequatur sapiente harum.</p>', '2017-08-15 06:57:16', '2017-09-25 07:46:11'),
(2, 'Our Mission', '<p><strong>Nunc malesuada pulvinar suscipit. Phasellus sed tortor quis ligula facilisis aliquam. Aliquam quis magna eu dolor posuere malesuada. Quisque consequat, metus fermentum convallis imperdiet, ante justo pharetra enim.</strong><br />\r\n<br />\r\nIn beatae voluptatem ex laborum. Voluptatem quis itaque quod qui non sequi. Delectus minima voluptatem quia porro harum. Harum omnis et earum et et et. Aut consequuntur dolore eius sit. Fugit in id molestiae eum itaque. Fugiat omnis consequatur odit perspiciatis voluptas beatae. Adipisci quia reprehenderit quia quaerat. Quos veniam minima ullam quibusdam assumenda. Saepe qui sed eum dolor ab aut.<br />\r\n<br />\r\nQuisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,</p>', '2017-08-15 06:57:16', '2017-09-25 07:46:25');

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
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `category_id` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `articles`
--

INSERT INTO `articles` (`id`, `title`, `desc`, `text`, `img`, `created_at`, `updated_at`, `user_id`, `category_id`) VALUES
(1, 'Template License', '<p>This is a free CSS website template by CoolWebTemplates.net. This work is distributed under the Creative Commons Attribution 3.0 License, which means that you are free to use it for any personal or commercial purpose provided you credit me in the form of a link back to my &quot;Website Templates&quot;&gt; CoolWebTemplates.net. It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p>', '<p><strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec rhoncus condimentum neque vitae tempus.</strong><br />\r\nNulla ut erat vitae lectus maximus posuere. Fusce at faucibus lacus, id dictum libero. Pellentesque nec massa faucibus, tincidunt turpis vitae, pretium nisi. Nulla ultricies sem vel vestibulum porttitor. Maecenas at finibus neque. Etiam nunc nisl, feugiat eget luctus sed, fringilla sed leo. Donec eget nisi semper, ultricies est in, tincidunt augue. Donec convallis sit amet felis nec interdum. Donec luctus euismod dolor ac ornare. Nullam fermentum ac turpis ut porta. Sed tempus euismod ante a condimentum. Fusce eget ligula faucibus, imperdiet arcu eget, feugiat urna. Sed molestie non neque in tincidunt.<br />\r\n<br />\r\n<strong>Et quasi distinctio ea officiis aut neque unde. Voluptates nesciunt id natus sed iure consequatur eaque. Occaecati ipsum aperiam libero qui nulla nesciunt recusandae. Autem nihil quis provident repellendus dolorum et. In libero laborum totam amet.</strong> Nemo corporis consectetur omnis reprehenderit. Dicta qui doloremque quos sint. Sed aut rerum necessitatibus nihil dolores ipsam aut et. Tempore aspernatur sint aut aperiam sint. Vel rerum dolore qui dolorem ad. Voluptatem harum impedit dolorem. Ut a sint voluptate.Nunc purus ex, aliquam in finibus ut, venenatis at leo. Quisque ultricies tellus purus, ac suscipit ante suscipit nec. Etiam vitae lectus id sapien egestas hendrerit et varius diam. Proin a risus sem. Nam ac ullamcorper leo. Sed sed est in metus feugiat eleifend. Nunc id volutpat enim, in varius purus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur vulputate nunc nisl, sed hendrerit dui varius in. Cras eu dolor metus. Duis ut dolor nec ipsum mollis pharetra vitae in lectus. In hac habitasse platea dictumst. Quisque in ultricies dui.</p>', 'images_1.jpg', '2017-08-15 06:57:15', '2017-09-25 07:40:29', 1, 3),
(2, 'Quisquam dolor  temporibus.', '<p>Mollitia soluta asperiores dolorem aliquid id cum. Qui magni sequi incidunt blanditiis doloremque. Magni iure doloribus non nihil dolores consectetur. Cumque ab consequatur vero quam quas. Vero et dignissimos sequi eligendi sunt. Quia dolor iste voluptatem maiores consequatur. Rem quis perspiciatis quasi debitis alias. Rem quis perspiciatis quasi debitis alias. Ut commodi molestiae voluptas et aut tempore. Non animi rerum sed earum eveniet amet.</p>', '<p><strong>Mollitia soluta asperiores dolorem aliquid id cum. Qui magni sequi incidunt blanditiis doloremque. </strong> Magni iure doloribus non nihil dolores consectetur. Dolor porro occaecati maiores dolorem. In modi aut cum aspernatur est ad cumque. Cupiditate excepturi vel consequatur et quo. Velit totam sit sint sit voluptate qui. Quis molestiae voluptates architecto enim rem. Odio deleniti quas et corporis. Cumque ab consequatur vero quam quas. Vero et dignissimos sequi eligendi sunt. Quia dolor iste voluptatem maiores consequatur. Rem quis perspiciatis quasi debitis alias. Ut commodi molestiae voluptas et aut tempore. Non animi rerum sed earum eveniet amet. Mollitia soluta asperiores dolorem aliquid id cum. Qui magni sequi incidunt blanditiis doloremque. Magni iure doloribus non nihil dolores consectetur.<br />\r\n<br />\r\n<strong>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</strong><br />\r\nThe point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', 'images_2.jpg', '2017-08-15 06:57:15', '2017-09-22 07:47:47', 2, 2),
(3, 'Генератор черезвычайных текстов', '<p>Добро пожаловать на генератор рыбных текстов! Здесь абсолютно комфортно вы можете генерировать тексты- &laquo;рыбы&raquo; для решения задач в области макетирования.<br />\r\nМы будем постепенно расширять функциональ- ность нашего сайта и ждем с нетерпением ваших отзывов.<br />\r\nПрисылайте нам ваши рыбные тексты! Мы будем рады!<br />\r\n&nbsp;</p>', '<p>Проснувшись однажды утром после беспокойного сна, Грегор Замза обнаружил, что он у себя в постели превратился в страшное насекомое. Лежа на панцирнотвердой спине, он видел, стоило ему приподнять голову, свой коричневый, выпуклый, разделенный дугообразными чешуйками живот, на верхушке которого еле держалось готовое вот-вот окончательно сползти одеяло. Его многочисленные, убого тонкие по сравнению с остальным телом ножки беспомощно копошились у него перед глазами. &laquo;Что со мной случилось?&raquo; &ndash; подумал он. Это не было сном. Его комната, настоящая, разве что слишком маленькая, но обычная комната, мирно покоилась в своих четырех хорошо знакомых стенах. Над столом, где были разложены распакованные образцы сукон &ndash; Замза был коммивояжером, &ndash; висел портрет, который он недавно вырезал из иллюстрированного журнала и вставил в красивую золоченую рамку. На портрете была изображена дама в меховой шляпе и боа, она сидела очень прямо и протягивала зрителю тяжелую меховую муфту, в которой целиком исчезала ее рука. Затем взгляд Грегора устремился в окно, и пасмурная погода &ndash; слышно было, как по жести подоконника стучат капли дождя &ndash; привела его и вовсе в грустное настроение. &laquo;Хорошо бы еще немного поспать и забыть всю эту чепуху&raquo;, &ndash; подумал он, но это было совершенно неосуществимо, он привык спать на правом боку, а в теперешнем своем</p>', 'images_3.jpg', '2017-08-24 13:20:44', '2017-09-22 07:47:14', 2, 4),
(4, 'Страдания юного Вертера  ', 'Душа моя озарена неземной радостью, как эти чудесные весенние утра, которыми я наслаждаюсь от всего сердца. Я совсем один и блаженствую в здешнем краю, словно созданном для таких, как я. Я так счастлив, мой друг, так упоен ощущением покоя, что искусство мое страдает от этого. Ни одного штриха не мог бы я сделать, а никогда не был таким большим художником, как в эти минуты. Когда от милой моей долины поднимается пар и полдневное солнце стоит над непроницаемой чащей...', 'Душа моя озарена неземной радостью, как эти чудесные весенние утра, которыми я наслаждаюсь от всего сердца. Я совсем один и блаженствую в здешнем краю, словно созданном для таких, как я. Я так счастлив, мой друг, так упоен ощущением покоя, что искусство мое страдает от этого. Ни одного штриха не мог бы я сделать, а никогда не был таким большим художником, как в эти минуты. Когда от милой моей долины поднимается пар и полдневное солнце стоит над непроницаемой чащей темного леса и лишь редкий луч проскальзывает в его святая святых, а я лежу в высокой траве у быстрого ручья и, прильнув к земле, вижу тысячи всевозможных былинок и чувствую, как близок моему сердцу крошечный мирок, что снует между стебельками, наблюдаю эти неисчислимые, непостижимые разновидности червяков и мошек и чувствую близость всемогущего, создавшего нас по своему подобию, веяние вселюбящего, судившего нам парить в вечном блаженстве, когда взор мой туманится и все вокруг меня и небо надо мной запечатлены в моей душе, точно образ возлюбленной, - тогда, дорогой друг, меня часто томит мысль: \"Ах! Как бы выразить, как бы вдохнуть в рисунок то, что так полно, так трепетно живет во мне, запечатлеть отражение моей души, как душа моя - отражение предвечного бога!\" Друг \r\n\r\n\r\n', 'images_5.jpg', '2017-08-30 09:45:15', '2017-08-30 09:45:15', 1, 4),
(5, 'Страдания юного Кафки', '<p>Проснувшись однажды утром после беспокойного сна, Грегор Замза обнаружил, что он у себя в постели превратился в страшное насекомое. Лежа на панцирнотвердой спине, он видел, стоило ему приподнять голову, свой коричневый, выпуклый, разделенный дугообразными чешуйками живот, на верхушке которого еле держалось готовое вот-вот окончательно сползти одеяло. Его многочисленные, убого тонкие по сравнению с остальным телом ножки...</p>', '<p>Проснувшись однажды утром после беспокойного сна, Грегор Замза обнаружил, что он у себя в постели превратился в страшное насекомое. Лежа на панцирнотвердой спине, он видел, стоило ему приподнять голову, свой коричневый, выпуклый, разделенный дугообразными чешуйками живот, на верхушке которого еле держалось готовое вот-вот окончательно сползти одеяло. Его многочисленные, убого тонкие по сравнению с остальным телом ножки беспомощно копошились у него перед глазами. &laquo;Что со мной случилось?&raquo; &ndash; подумал он. Это не было сном. Его комната, настоящая, разве что слишком маленькая, но обычная комната, мирно покоилась в своих четырех хорошо знакомых стенах. Над столом, где были разложены распакованные образцы сукон &ndash; Замза был коммивояжером, &ndash; висел портрет, который он недавно вырезал из иллюстрированного журнала и вставил в красивую золоченую рамку. На портрете была изображена дама в меховой шляпе и боа, она сидела очень прямо и протягивала зрителю тяжелую меховую муфту, в которой целиком исчезала ее рука. Затем взгляд Грегора устремился в окно, и пасмурная погода &ndash; слышно было, как по жести подоконника стучат капли дождя &ndash; привела его и вовсе в грустное настроение. &laquo;Хорошо бы еще немного поспать и забыть всю эту чепуху&raquo;, &ndash; подумал он, но это было совершенно неосуществимо, он привык спать на правом боку, а в теперешнем своем</p>', 'images_3.jpg', '2017-09-02 09:45:15', '2017-09-21 12:30:14', 2, 2),
(6, 'Quisquam dolor quia odio temporibus.', 'Mollitia soluta asperiores dolorem aliquid id cum. Qui magni sequi incidunt blanditiis doloremque. Magni iure doloribus non nihil dolores consectetur.\r\n\r\nCumque ab consequatur vero quam quas. Vero et dignissimos sequi eligendi sunt. Quia dolor iste voluptatem maiores consequatur. Rem quis perspiciatis quasi debitis alias.\r\n\r\nRem quis perspiciatis quasi debitis alias. Ut commodi molestiae voluptas et aut tempore. Non animi rerum sed earum eveniet amet.\r\n\r\n\r\n', '<strong>Mollitia soluta asperiores dolorem aliquid id cum. Qui magni sequi incidunt blanditiis doloremque. </strong> Magni iure doloribus non nihil dolores consectetur. Dolor porro occaecati maiores dolorem. In modi aut cum aspernatur est ad cumque. Cupiditate excepturi vel consequatur et quo. Velit totam sit sint sit voluptate qui. Quis molestiae voluptates architecto enim rem. Odio deleniti quas et corporis. Cumque ab consequatur vero quam quas. Vero et dignissimos sequi eligendi sunt. Quia dolor iste voluptatem maiores consequatur. Rem quis perspiciatis quasi debitis alias. Ut commodi molestiae voluptas et aut tempore. Non animi rerum sed earum eveniet amet.\r\n\r\nMollitia soluta asperiores dolorem aliquid id cum. Qui magni sequi incidunt blanditiis doloremque. Magni iure doloribus non nihil dolores consectetur.\r\n<br><br>\r\n<strong>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</strong><br> The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'images_2.jpg', '2017-08-15 03:57:15', '2017-08-15 03:57:15', 1, 3),
(7, 'Template License', '<p>This is a free CSS website template by CoolWebTemplates.net. This work is distributed under the Creative Commons Attribution 3.0 License, which means that you are free to use it for any personal or commercial purpose provided you credit me in the form of a link back to my &quot;Website Templates&quot;&gt; CoolWebTemplates.net. It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p>', '<p><strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec rhoncus condimentum neque vitae tempus.</strong><br />\r\nNulla ut erat vitae lectus maximus posuere. Fusce at faucibus lacus, id dictum libero. Pellentesque nec massa faucibus, tincidunt turpis vitae, pretium nisi. Nulla ultricies sem vel vestibulum porttitor. Maecenas at finibus neque. Etiam nunc nisl, feugiat eget luctus sed, fringilla sed leo. Donec eget nisi semper, ultricies est in, tincidunt augue. Donec convallis sit amet felis nec interdum. Donec luctus euismod dolor ac ornare. Nullam fermentum ac turpis ut porta. Sed tempus euismod ante a condimentum. Fusce eget ligula faucibus, imperdiet arcu eget, feugiat urna. Sed molestie non neque in tincidunt.<br />\r\n<br />\r\n<strong>Et quasi distinctio ea officiis aut neque unde. Voluptates nesciunt id natus sed iure consequatur eaque. Occaecati ipsum aperiam libero qui nulla nesciunt recusandae. Autem nihil quis provident repellendus dolorum et. In libero laborum totam amet.</strong> Nemo corporis consectetur omnis reprehenderit. Dicta qui doloremque quos sint. Sed aut rerum necessitatibus nihil dolores ipsam aut et. Tempore aspernatur sint aut aperiam sint. Vel rerum dolore qui dolorem ad. Voluptatem harum impedit dolorem. Ut a sint voluptate.Nunc purus ex, aliquam in finibus ut, venenatis at leo. Quisque ultricies tellus purus, ac suscipit ante suscipit nec. Etiam vitae lectus id sapien egestas hendrerit et varius diam. Proin a risus sem. Nam ac ullamcorper leo. Sed sed est in metus feugiat eleifend. Nunc id volutpat enim, in varius purus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur vulputate nunc nisl, sed hendrerit dui varius in. Cras eu dolor metus. Duis ut dolor nec ipsum mollis pharetra vitae in lectus. In hac habitasse platea dictumst. Quisque in ultricies dui.</p>', 'images_1.jpg', '2017-08-15 03:57:15', '2017-09-26 08:10:14', 3, 5),
(8, 'Статья 8 many times', '<p>OSPanel это достаточно сложный программный комплекс с постоянно совершенствующейся архитектурой. Как таковой процедуры обновления не предусмотрено. При выходе новой версии OSPanel необходимо заново выполнить все настройки, скопировать папки ваших сайтов и выполнить перенос баз данных. Не распаковывайте файлы дистрибутива поверх существующей версии, а так же не пытайтесь скопировать файлы конфигурации и профилей из старой версии программы в новую!</p>', '<p>Установка обновлений</p>\r\n\r\n<p>OSPanel это достаточно сложный программный комплекс с постоянно совершенствующейся архитектурой. Как таковой процедуры обновления не предусмотрено. При выходе новой версии OSPanel необходимо заново выполнить все настройки, скопировать папки ваших сайтов и выполнить перенос баз данных. Не распаковывайте файлы дистрибутива поверх существующей версии, а так же не пытайтесь скопировать файлы конфигурации и профилей из старой версии программы в новую! Поскольку выход новых версий OSPanel иногда может быть довольно частым, то не стоит обновлять вашу сборку каждый раз, лучше пропустите несколько версий.<br />\r\nЕсли есть возможность обновиться простым копированием файлов, то ссылка на патч всегда публикуется в новостях на сайте вместе с аннотацией к новой версии.</p>', '6VjWGPrz.jpg', '2017-09-21 09:23:58', '2017-09-26 08:10:27', 3, 4),
(9, 'новые модули OS Panel edited', '<p>Совместимость edit</p>\r\n\r\n<p>Часть новых модулей OSPanel (PHP 5.5, MongoDB, Apache 2.4) несовместима с устаревшими операционными системами, такими как Windows XP, Windows 2003, Windows Vista. При использовании таких модулей и запуске сервера на устаревших системах вы получите сообщение об ошибке. Так же следует знать, что некоторые модули могут работать только совместно, например это Apache 2.4 и PHP 5.5.</p>', '<p>Установка обновлений edit</p>\r\n\r\n<p>OSPanel это достаточно сложный программный комплекс с постоянно совершенствующейся архитектурой. Как таковой процедуры обновления не предусмотрено. При выходе новой версии OSPanel необходимо заново выполнить все настройки, скопировать папки ваших сайтов и выполнить перенос баз данных. Не распаковывайте файлы дистрибутива поверх существующей версии, а так же не пытайтесь скопировать файлы конфигурации и профилей из старой версии программы в новую! Поскольку выход новых версий OSPanel иногда может быть довольно частым, то не стоит обновлять вашу сборку каждый раз, лучше пропустите несколько версий.<br />\r\n<br />\r\nЕсли есть возможность обновиться простым копированием файлов, то ссылка на патч всегда публикуется в новостях на сайте вместе с аннотацией к новой версии.</p>', 'JfWNQmgT.jpg', '2017-09-22 07:45:55', '2017-09-22 12:39:36', 1, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `title`, `alias`, `created_at`, `updated_at`) VALUES
(1, 0, 'Блог', 'blog', NULL, NULL),
(2, 1, 'Компьютеры', 'computers', NULL, NULL),
(3, 1, 'Интересное', 'interesting', NULL, NULL),
(4, 1, 'Советы', 'soveti', NULL, NULL),
(5, 1, 'Политика', 'politika', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `article_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `text`, `name`, `email`, `site`, `parent_id`, `article_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Hello World! Hello Univerce! I am here!', 'Jon', 'iamnomail', '', 0, 1, NULL, '2017-08-14 07:31:41', '2017-08-14 07:31:41'),
(2, 'Hello again! I am here.', '', '', '', 0, 1, 1, '2017-08-15 11:25:45', '2017-08-15 11:25:45'),
(3, 'Это комментарий 1 на статью 3', 'Дикий Джо', 'nomail@mail.com', '', 1, 1, NULL, '2017-08-28 08:25:45', '2017-08-28 08:25:45'),
(4, 'Hi from Jesica!', 'Jesica', 'jesica@mail.com', '', 2, 1, NULL, '2017-09-08 05:23:44', '2017-09-08 05:23:44'),
(5, 'Я убью тебя Jesica!', 'Дикий Джо', 'jesica@mail.com', '', 4, 1, NULL, '2017-09-08 05:25:37', '2017-09-08 05:25:37'),
(6, 'Hi! Nice blog for smart dialog.', 'Stefan', 'ste@gmail.com', '', 1, 1, NULL, '2017-09-08 06:44:11', '2017-09-08 06:44:11'),
(7, 'Stefan ! Your mudak !', '', '', '', 0, 3, 2, '2017-09-08 06:45:42', '2017-09-08 06:45:42'),
(8, '111 111', 'Jon', 'no mail', '', 1, 1, NULL, '2017-09-13 11:40:56', '2017-09-13 11:40:56'),
(9, '111 111', '111', 'no mail', '', 6, 1, NULL, '2017-09-13 11:41:49', '2017-09-13 11:41:49'),
(10, '111 wild 111 jon', 'Wild Jon', 'no mail', '', 3, 1, NULL, '2017-09-13 11:43:04', '2017-09-13 11:43:04'),
(11, '111 not 111 but 121 121', '111', 'nomail', '', 10, 1, NULL, '2017-09-13 11:44:31', '2017-09-13 11:44:31'),
(12, '222 222', '222', 'nomail', '', 0, 2, NULL, '2017-09-13 12:18:50', '2017-09-13 12:18:50'),
(13, '333 333', '333', 'nomail', '', 0, 2, NULL, '2017-09-13 12:19:13', '2017-09-13 12:19:13'),
(14, '222 your mudak', 'for 222', 'nomail', '', 12, 2, NULL, '2017-09-13 12:20:06', '2017-09-13 12:20:06'),
(15, 'your mudak Yorself !!!', '222', 'nomail', '', 14, 2, NULL, '2017-09-13 12:21:14', '2017-09-13 12:21:14'),
(16, 'STOPed this!', '', '', '', 0, 2, 2, '2017-09-13 12:22:55', '2017-09-13 12:22:55'),
(17, 'Am agree with Test.', '', '', '', 0, 2, 1, '2017-09-13 12:24:29', '2017-09-13 12:24:29'),
(18, 'STOPed slang. Am agree with Test.', '', '', '', 15, 2, 1, '2017-09-13 12:25:06', '2017-09-13 12:25:06'),
(19, 'а ты кто такой ?', '333', 'no mail', '', 18, 2, NULL, '2017-09-13 12:39:57', '2017-09-13 12:39:57'),
(20, 'no 333 but 444', '333', 'no mail', '', 13, 2, NULL, '2017-09-13 12:40:46', '2017-09-13 12:40:46'),
(21, 'FINISH !!!', '', '', '', 11, 1, 1, '2017-09-14 10:21:19', '2017-09-14 10:21:19'),
(22, 'And thats FINISH !!!', '', '', '', 0, 1, 1, '2017-09-14 10:22:56', '2017-09-14 10:22:56');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_08_15_093549_create_articles_table', 1),
(4, '2017_08_15_093645_create_supports_table', 1),
(5, '2017_08_15_093718_create_abouts_table', 1),
(10, '2017_08_18_134246_create_comments_table', 2),
(11, '2017_08_18_134631_create_categories_table', 2),
(12, '2017_08_18_143156_ChangeArticlesTable', 3),
(13, '2017_08_21_102857_ChangeCommentsTable', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 'Support to Company Name', '<p>Itaque maxime necessitatibus eius similique fuga. Excepturi eligendi accusamus vel error ex in. Provident ipsam dolorem voluptatem eos qui. Rerum dignissimos dolorem sit eaque est voluptates dignissimos. Provident nostrum quis aspernatur distinctio ut. Beatae quia asperiores perferendis alias. Ullam omnis cupiditate dolor saepe quos odit tempora. Rem molestiae minus soluta quisquam architecto ut aspernatur repellendus. Eum eveniet voluptas quos repudiandae ut qui. Amet non voluptatem enim aut minus adipisci praesentium.<br />\r\n<br />\r\nEt alias distinctio in corrupti. Ad doloremque quo officiis. Magni autem et culpa et quod ratione. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<br />\r\n<br />\r\n<strong>Lorem ipsum dolor sit amet</strong><br />\r\nPhasellus diam justo, laoreet vel vulputate eu, congue vel est. Maecenas eros libero, sollicitudin a vulputate fermentum, ultrices vel lacus. Nam in metus non augue fermentum consequat ultrices ac enim. Integer aliquam urna non diam aliquam eget hendrerit sem molestie.<br />\r\n<br />\r\nPhasellus diam justo, laoreet vel vulputate eu, congue vel est. Maecenas eros libero, sollicitudin a vulputate fermentum, ultrices vel lacus. Nam in metus non augue fermentum consequat ultrices ac enim. Integer aliquam urna non diam aliquam eget hendrerit sem molestie.</p>', '2017-08-15 06:57:16', '2017-09-26 07:51:49');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Test', 'test@test.com', '$2y$10$2w.Bw4Pf7/KnWwNpu8rFwuJ7CQHXTFQ1Y37P1dcx3aKsPENBZ62d2', 'uwtEEKDJiyfuB4FFqMUvOLUy47I00mmam0NdwLLETuHfmDxNtWLi7SsY8wvw', '2017-08-18 11:46:42', '2017-08-18 11:46:42'),
(2, 'Test1', 'test1@test.com', '$2y$10$wyuq/qIkoleeins.N1KpWusKydVD/wMyOnEvg6rCJFG/.t.nL1zy.', 'C8i0qZstgx4aS0WtPCnAaQjxn8aF8X2OQY7LWumd916EbERmpMq9ITM27v3N', '2017-09-07 13:05:14', '2017-09-07 13:05:14'),
(3, 'Test2', 'test2@test.com', '$2y$10$E.rybXCe2RdfLRsj.h5G3.6gAI4DKA/61TOwrMiZsFNDv2FPhTBgS', '4v0Q9dPdyftk4ksyuH6gPFJjK5DvtRskdANieFF5km11GryxlsNGGWw6pr4I', '2017-09-25 11:59:23', '2017-09-26 07:30:16');

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
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `supports`
--
ALTER TABLE `supports`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT для таблицы `supports`
--
ALTER TABLE `supports`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
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
