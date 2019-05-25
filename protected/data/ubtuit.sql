-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Июн 08 2018 г., 12:16
-- Версия сервера: 10.1.25-MariaDB
-- Версия PHP: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `ubtuit`
--

-- --------------------------------------------------------

--
-- Структура таблицы `go_category`
--

CREATE TABLE `go_category` (
  `id` int(11) NOT NULL,
  `hash` varchar(150) NOT NULL,
  `title` varchar(150) NOT NULL,
  `lang_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `go_category`
--

INSERT INTO `go_category` (`id`, `hash`, `title`, `lang_id`) VALUES
(8, 'news', 'Yangiliklar', 1),
(9, 'events', 'Tadbirlar', 1),
(10, 'university', 'Universitet', 1),
(11, 'structure', 'Tuzilma', 1),
(12, 'activity', 'Faoliyat', 1),
(13, 'applicants', 'Abiturientlarga', 1),
(14, 'for-students', 'Talabalarga', 1),
(15, 'achievements', 'Yutuqlar', 1),
(24, 'news', 'Новости', 2),
(25, 'events', 'Мероприятия', 2),
(26, 'university', 'Университет', 2),
(27, 'structure', 'Структура', 2),
(28, 'activity', 'Деятельность', 2),
(29, 'applicants', 'Абитуриентам', 2),
(30, 'for-students', 'Студентам', 2),
(31, 'achievements', 'Достижения', 2),
(32, 'news', 'News', 3),
(33, 'events', 'Events', 3),
(34, 'university', 'University', 3),
(35, 'structure', 'Structure', 3),
(36, 'activity', 'Activity', 3),
(37, 'applicants', 'For applicants', 3),
(38, 'for-students', 'For students', 3),
(39, 'achievements', 'Achievements', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `go_content`
--

CREATE TABLE `go_content` (
  `id` int(11) NOT NULL,
  `lang_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `hash` varchar(150) NOT NULL,
  `description` text NOT NULL,
  `meta_tags` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `created` int(11) NOT NULL,
  `updated` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `go_content`
--

INSERT INTO `go_content` (`id`, `lang_id`, `category_id`, `title`, `hash`, `description`, `meta_tags`, `meta_description`, `created`, `updated`, `created_by`, `image`) VALUES
(18, 1, 8, 'Qabul kvotalari', 'quotes', '\r\n\r\n\r\n\r\n\r\n<p style=\"text-align: center;\"><strong>Toshkent axborot texnologiyalari universiteti Urganch filialining 2017-2018 o’quv yilida bakalavrlar tayyorlash bo’yicha qabul kvotalari</strong></p>\r\n<table style=\"height: 490px; width: 618px;\">\r\n<tbody>\r\n<tr style=\"height: 114px;\">\r\n<td style=\"width: 33px; height: 114px;\" width=\"29\">\r\n<p><strong>№</strong></p>\r\n</td>\r\n<td style=\"width: 79px; height: 114px;\" width=\"75\">\r\n<p><strong>Shifr</strong></p>\r\n</td>\r\n<td style=\"width: 301px; height: 114px;\" width=\"297\">\r\n<p><strong>Ta’lim yo’nalishlari</strong></p>\r\n</td>\r\n<td style=\"width: 56px; height: 114px;\" width=\"52\">\r\n<p><strong>Jami</strong></p>\r\n</td>\r\n<td style=\"width: 75px; height: 114px;\" width=\"71\">\r\n<p><strong>Davlat grantlari asosida</strong></p>\r\n<p><strong>Jami</strong></p>\r\n</td>\r\n<td style=\"width: 74px; height: 114px;\" width=\"70\">\r\n<p><strong>To’lov-kontrakt asosida</strong></p>\r\n<p><strong>Jami</strong></p>\r\n</td>\r\n</tr>\r\n<tr style=\"height: 46px;\">\r\n<td style=\"width: 33px; height: 46px;\" width=\"29\">\r\n<p> </p>\r\n</td>\r\n<td style=\"width: 79px; height: 46px;\" width=\"75\">\r\n<p> </p>\r\n</td>\r\n<td style=\"width: 301px; height: 46px;\" width=\"297\">\r\n<p>OTM bo’yicha jami:</p>\r\n</td>\r\n<td style=\"width: 56px; height: 46px;\" width=\"52\">\r\n<p>225</p>\r\n</td>\r\n<td style=\"width: 75px; height: 46px;\" width=\"71\">\r\n<p>65</p>\r\n</td>\r\n<td style=\"width: 74px; height: 46px;\" width=\"70\">\r\n<p>160</p>\r\n</td>\r\n</tr>\r\n<tr style=\"height: 46px;\">\r\n<td style=\"width: 33px; height: 46px;\" width=\"29\">\r\n<p> </p>\r\n</td>\r\n<td style=\"width: 380px; height: 46px;\" colspan=\"2\" width=\"372\">\r\n<p style=\"text-align: center;\">shu jumladan, ta’lim yo’nalishlari bo’yicha</p>\r\n</td>\r\n<td style=\"width: 56px; height: 46px;\" width=\"52\">\r\n<p> </p>\r\n</td>\r\n<td style=\"width: 75px; height: 46px;\" width=\"71\">\r\n<p> </p>\r\n</td>\r\n<td style=\"width: 74px; height: 46px;\" width=\"70\">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr style=\"height: 46px;\">\r\n<td style=\"width: 33px; height: 46px;\" width=\"29\">\r\n<p>1</p>\r\n</td>\r\n<td style=\"width: 79px; height: 46px;\" width=\"75\">\r\n<p>5330300</p>\r\n</td>\r\n<td style=\"width: 301px; height: 46px;\" width=\"297\">\r\n<p>Axborot xavfsizligi (soxalar bo’yicha)</p>\r\n</td>\r\n<td style=\"width: 56px; height: 46px;\" width=\"52\">\r\n<p>30</p>\r\n</td>\r\n<td style=\"width: 75px; height: 46px;\" width=\"71\">\r\n<p>10</p>\r\n</td>\r\n<td style=\"width: 74px; height: 46px;\" width=\"70\">\r\n<p>20</p>\r\n</td>\r\n</tr>\r\n<tr style=\"height: 64px;\">\r\n<td style=\"width: 33px; height: 64px;\" width=\"29\">\r\n<p>2</p>\r\n</td>\r\n<td style=\"width: 79px; height: 64px;\" width=\"75\">\r\n<p>5330500</p>\r\n</td>\r\n<td style=\"width: 301px; height: 64px;\" width=\"297\">\r\n<p>Kompyuter injiniring (\"Kompyuter injiniring\", \"AT-servis\")</p>\r\n</td>\r\n<td style=\"width: 56px; height: 64px;\" width=\"52\">\r\n<p>75</p>\r\n</td>\r\n<td style=\"width: 75px; height: 64px;\" width=\"71\">\r\n<p>20</p>\r\n</td>\r\n<td style=\"width: 74px; height: 64px;\" width=\"70\">\r\n<p>55</p>\r\n</td>\r\n</tr>\r\n<tr style=\"height: 46px;\">\r\n<td style=\"width: 33px; height: 46px;\" width=\"29\">\r\n<p>3</p>\r\n</td>\r\n<td style=\"width: 79px; height: 46px;\" width=\"75\">\r\n<p>5330600</p>\r\n</td>\r\n<td style=\"width: 301px; height: 46px;\" width=\"297\">\r\n<p>Dasturiy injiniring</p>\r\n</td>\r\n<td style=\"width: 56px; height: 46px;\" width=\"52\">\r\n<p>50</p>\r\n</td>\r\n<td style=\"width: 75px; height: 46px;\" width=\"71\">\r\n<p>15</p>\r\n</td>\r\n<td style=\"width: 74px; height: 46px;\" width=\"70\">\r\n<p>35</p>\r\n</td>\r\n</tr>\r\n<tr style=\"height: 64px;\">\r\n<td style=\"width: 33px; height: 64px;\" width=\"29\">\r\n<p>4</p>\r\n</td>\r\n<td style=\"width: 79px; height: 64px;\" width=\"75\">\r\n<p>5350100</p>\r\n</td>\r\n<td style=\"width: 301px; height: 64px;\" width=\"297\">\r\n<p>Telekommunikatsiya texnologiyalari (\"Telekommunikatsiyalar\")</p>\r\n</td>\r\n<td style=\"width: 56px; height: 64px;\" width=\"52\">\r\n<p>50</p>\r\n</td>\r\n<td style=\"width: 75px; height: 64px;\" width=\"71\">\r\n<p>15</p>\r\n</td>\r\n<td style=\"width: 74px; height: 64px;\" width=\"70\">\r\n<p>35</p>\r\n</td>\r\n</tr>\r\n<tr style=\"height: 64px;\">\r\n<td style=\"width: 33px; height: 64px;\" width=\"29\">\r\n<p>5</p>\r\n</td>\r\n<td style=\"width: 79px; height: 64px;\" width=\"75\">\r\n<p>5350400</p>\r\n</td>\r\n<td style=\"width: 301px; height: 64px;\" width=\"297\">\r\n<p>Axborot-kommunikatsiya texnologiyalari sohasida kasb ta’limi</p>\r\n</td>\r\n<td style=\"width: 56px; height: 64px;\" width=\"52\">\r\n<p>20</p>\r\n</td>\r\n<td style=\"width: 75px; height: 64px;\" width=\"71\">\r\n<p>5</p>\r\n</td>\r\n<td style=\"width: 74px; height: 64px;\" width=\"70\">\r\n<p>15</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n\r\n', 'qabul, kvota', '', 1513771289, 1514186875, 0, ''),
(19, 1, 10, 'Universitet haqida', 'university', '<p>\r\n	Toshkent axborot texnologiyalari universiteti Urganch filiali O&rsquo;zbekiston Republikasi Prezidentining 2005 yil 2 iyundagi PQ-91-sonli &ldquo;Axborot texnologiyadari sohasida kadrlar tayyorlash tizimini takomillashtirish to&rsquo;g&rsquo;risida&rdquo;gi Qarori bilan tashkil qilingan. O&rsquo;zbekiston Republikasi Prezidentining 2013 yil 26 martdagi &ldquo;Axborot kommunikatsiya texnologiyalari sohasida kadrlar tayyorlash tizimini yanada takomillashtirish chora-tadbirlari to&rsquo;g&rsquo;risida&rdquo;gi PQ-1942-son qaroriga asosan &ldquo;Kompyuter injiniringi&rdquo;, &ldquo;Dasturiy injiniring&rdquo;, &ldquo;Telekommunikatsiya texnologiyalari&rdquo;, &ldquo;Axborot xavfsizligi&rdquo; va &ldquo;AKT sohasida kasb ta&rsquo;limi&rdquo; kabi 5 ta ta&rsquo;lim yo&rsquo;nalishlari hamda &ldquo;Kompyuter injiniringi&rdquo; kabi magistratura mutaxassisliklari bo&rsquo;yicha kadrlar tayyorlash yo&rsquo;lga qo&rsquo;yildi. Bakalavriat ta&rsquo;lim yo&rsquo;nalishlari soni 5 ta bo&rsquo;lib, ularda 704 nafar talabalar, magistratura mutaxassisligi bo&rsquo;yicha 4 nafar magistrant taxsil olmoqda. Filial tarkibida 1 ta &ldquo;Kompyuter injiniring&rdquo; fakulteti mavjud bo&rsquo;lib, undagi 6 ta kafedrada 48 nafar professor-o&rsquo;qituvchilar faoliyat ko&rsquo;rsatmoqda.</p>\r\n', 'universitet, TATU, Urganch, filial', 'TATU Urgnch filiali haqida', 1513773752, 1513941523, 0, ''),
(20, 1, 8, 'Me\'yoriy hujjatlar', 'documents', '<p>\r\n	Docs</p>\r\n', 'hujjat', '', 1513773866, 1513852086, 0, ''),
(21, 1, 8, 'To\'lov rekvizitlari', 'rekvizit', '<h2>\r\n	Toshkent axborot texnologiyalari universiteti Urganch filiali</h2>\r\n<p>\r\n	Manzil: 210000, Urganch sh., Al-Xorazmiy ko&#39;cha, 110-uy</p>\r\n<p>\r\n	Tel/fax: (0362) 224-61-32</p>\r\n<p>\r\n	Shx/r: 400110860334017950100078003</p>\r\n<p>\r\n	INN: 205767452</p>\r\n<p>\r\n	OKONX: 92110</p>\r\n<p>\r\n	Moliya Vazirligi G&#39;aznachiligi Bank: Markaziy bank Toshkent shahar Bosh Boshqarmasi</p>\r\n<p>\r\n	XKKM x/r: 23402000300100001010</p>\r\n<p>\r\n	INN: 201122919</p>\r\n<p>\r\n	MFO: 00014</p>\r\n', 'rekvizit', '', 1513773947, 1513774167, 0, ''),
(22, 1, 8, 'Magistratura', 'masters', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; background-color: rgb(255, 255, 255);\">\r\n	<strong style=\"box-sizing: border-box;\">1.Qabul to&#39;g&#39;risida umumiy ma&#39;lumot</strong></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; background-color: rgb(255, 255, 255);\">\r\n	Hujjatlar qabul qilish muddati: 2017 yil 1 iyuldan 30 iyulga qadar</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; background-color: rgb(255, 255, 255);\">\r\n	Qabul komissiyasi ish tartibi: Dushanba - Shanba (9:00-18:00)</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; background-color: rgb(255, 255, 255);\">\r\n	Qabul komissiyasi telefonlari: (+99891) 420-00-81</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; background-color: rgb(255, 255, 255);\">\r\n	Qabul komissiyasi elektron manzili: uf.tatu@mail.ru</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; background-color: rgb(255, 255, 255);\">\r\n	<strong style=\"box-sizing: border-box;\">2.Abituriyentlar tomonidan qabul komissiyasiga taqdim etadigan hujjatlar to&#39;plami:</strong></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; background-color: rgb(255, 255, 255);\">\r\n	Mutaxassislik nomi, o&lsquo;qitish tili va shakli ko&lsquo;rsatilgan holdagi rekotr nomiga ariza;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; background-color: rgb(255, 255, 255);\">\r\n	1.Oliy ma`lumot to&rsquo;g&rsquo;risidagi hujjat va uning ilovasi asli;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; background-color: rgb(255, 255, 255);\">\r\n	2.086/U-shakldagi tibbiy ma&#39;lumotnoma;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; background-color: rgb(255, 255, 255);\">\r\n	3.fuqarolik pasporti nusxasi;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; background-color: rgb(255, 255, 255);\">\r\n	4. 3,5x4,5 sm o&#39;lchamdagi 6 dona fotosurat;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; background-color: rgb(255, 255, 255);\">\r\n	5. papka (skorosshivatel) 1 dona, konvert 1 dona</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; background-color: rgb(255, 255, 255);\">\r\n	6. Bundan tashqari abituriyent qabul komissiyasiga pasport va harbiy xizmatga aloqadorligi haqidagi hujjatini shaxsan ko&#39;rsatadi.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; background-color: rgb(255, 255, 255);\">\r\n	<strong style=\"box-sizing: border-box;\">3.Qabul jarayoniga oid ma&#39;lumotlar</strong></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; background-color: rgb(255, 255, 255);\">\r\n	2017/2018 o&#39;quv yilida mutaxassisliklar bo&#39;yicha qabul kvotasi</p>\r\n<table class=\"table table-bordered\" style=\"box-sizing: border-box; border-spacing: 0px; border-collapse: collapse; background-color: rgb(255, 255, 255); max-width: 100%; margin-bottom: 20px; border: 1px solid rgb(221, 221, 221); color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 16px; text-align: justify;\">\r\n	<tbody style=\"box-sizing: border-box;\">\r\n		<tr style=\"box-sizing: border-box;\">\r\n			<td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border: 1px solid rgb(221, 221, 221);\">\r\n				<p style=\"box-sizing: border-box; margin: 0px 0px 10px;\">\r\n					<strong style=\"box-sizing: border-box;\">Shifr</strong></p>\r\n			</td>\r\n			<td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border: 1px solid rgb(221, 221, 221);\" width=\"262\">\r\n				<p style=\"box-sizing: border-box; margin: 0px 0px 10px;\">\r\n					<strong style=\"box-sizing: border-box;\">Mutaxassisliklar</strong></p>\r\n			</td>\r\n			<td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border: 1px solid rgb(221, 221, 221);\">\r\n				<p style=\"box-sizing: border-box; margin: 0px 0px 10px;\">\r\n					<strong style=\"box-sizing: border-box;\">Jami</strong></p>\r\n			</td>\r\n			<td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border: 1px solid rgb(221, 221, 221);\" width=\"78\">\r\n				<p style=\"box-sizing: border-box; margin: 0px 0px 10px;\">\r\n					<strong style=\"box-sizing: border-box;\">Davlat granti asosida</strong></p>\r\n			</td>\r\n			<td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border: 1px solid rgb(221, 221, 221);\" width=\"101\">\r\n				<p style=\"box-sizing: border-box; margin: 0px 0px 10px;\">\r\n					<strong style=\"box-sizing: border-box;\">To&rsquo;lov shartnoma asosida</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr style=\"box-sizing: border-box;\">\r\n			<td colspan=\"2\" style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border: 1px solid rgb(221, 221, 221);\" width=\"346\">\r\n				<p style=\"box-sizing: border-box; margin: 0px 0px 10px;\">\r\n					TATU Urganch filiali bo&rsquo;yicha jami:</p>\r\n			</td>\r\n			<td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border: 1px solid rgb(221, 221, 221);\">\r\n				<p style=\"box-sizing: border-box; margin: 0px 0px 10px;\">\r\n					5</p>\r\n			</td>\r\n			<td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border: 1px solid rgb(221, 221, 221);\">\r\n				<p style=\"box-sizing: border-box; margin: 0px 0px 10px;\">\r\n					2</p>\r\n			</td>\r\n			<td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border: 1px solid rgb(221, 221, 221);\">\r\n				<p style=\"box-sizing: border-box; margin: 0px 0px 10px;\">\r\n					3</p>\r\n			</td>\r\n		</tr>\r\n		<tr style=\"box-sizing: border-box;\">\r\n			<td colspan=\"5\" style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border: 1px solid rgb(221, 221, 221);\" width=\"572\">\r\n				<p style=\"box-sizing: border-box; margin: 0px 0px 10px;\">\r\n					Shu jumladan, mutaxassisliklar bo&rsquo;yicha</p>\r\n			</td>\r\n		</tr>\r\n		<tr style=\"box-sizing: border-box;\">\r\n			<td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border: 1px solid rgb(221, 221, 221);\">\r\n				<p style=\"box-sizing: border-box; margin: 0px 0px 10px;\">\r\n					5А330501</p>\r\n			</td>\r\n			<td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border: 1px solid rgb(221, 221, 221);\" width=\"262\">\r\n				<p style=\"box-sizing: border-box; margin: 0px 0px 10px;\">\r\n					Kompyuter injiniringi (&ldquo;Kompyuter tizimlarini loyihalash&rdquo;)</p>\r\n			</td>\r\n			<td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border: 1px solid rgb(221, 221, 221);\">\r\n				<p style=\"box-sizing: border-box; margin: 0px 0px 10px;\">\r\n					3</p>\r\n			</td>\r\n			<td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border: 1px solid rgb(221, 221, 221);\">\r\n				<p style=\"box-sizing: border-box; margin: 0px 0px 10px;\">\r\n					1</p>\r\n			</td>\r\n			<td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border: 1px solid rgb(221, 221, 221);\">\r\n				<p style=\"box-sizing: border-box; margin: 0px 0px 10px;\">\r\n					2</p>\r\n			</td>\r\n		</tr>\r\n		<tr style=\"box-sizing: border-box;\">\r\n			<td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border: 1px solid rgb(221, 221, 221);\">\r\n				<p style=\"box-sizing: border-box; margin: 0px 0px 10px;\">\r\n					5А350101</p>\r\n			</td>\r\n			<td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border: 1px solid rgb(221, 221, 221);\" width=\"262\">\r\n				<p style=\"box-sizing: border-box; margin: 0px 0px 10px;\">\r\n					Telekommunikatsiya injiniringi (&ldquo;Telekommunikatsiya tarmoqlari&rdquo;)</p>\r\n			</td>\r\n			<td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border: 1px solid rgb(221, 221, 221);\">\r\n				<p style=\"box-sizing: border-box; margin: 0px 0px 10px;\">\r\n					2</p>\r\n			</td>\r\n			<td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border: 1px solid rgb(221, 221, 221);\">\r\n				<p style=\"box-sizing: border-box; margin: 0px 0px 10px;\">\r\n					1</p>\r\n			</td>\r\n			<td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border: 1px solid rgb(221, 221, 221);\">\r\n				<p style=\"box-sizing: border-box; margin: 0px 0px 10px;\">\r\n					1</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'TATU, Magistratura', '', 1513855229, 1514545362, 0, ''),
(23, 1, 8, 'Filialda \"Eng faol yosh dasturchi\" tanlovi o\'tkazildi', 'active-programmer', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify;\">\r\n	Muhammad al-Xorazmiy nomidagi Toshkent axborot texnologiyalari universiteti Urganch filialida 17-18 dekabr sanasida &ldquo;Eng faol tezkor dasturchi&rdquo; tanlovi talaba &ndash; yoshlar o&rsquo;rtasida o&rsquo;tkazildi. Tanlovning kengash a&rsquo;zolari O&rsquo;zbekiston yoshlar ittifoqi filial boshlang&rsquo;ich tashkiloti yetakchisi O&rsquo;.Matyaqubov, &ldquo;Dasturiy injiniring&rdquo; kafedrasi o&rsquo;qituvchisi U.Hasanov, &ldquo;Dasturiy injiniring&rdquo; kafedrasi o&rsquo;qituvchisi J.Karimov, filial O&rsquo;zbekiston yoshlar ittifoqi boshlang&rsquo;ich tashkiloti &ldquo;Tashabbus va yoshlar tadbirkorligi&rdquo; yo&rsquo;nalishi sardori E.Palvanovlardan iborat.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify;\">\r\n	15 dekabr sanasida tanlovningbirinchi bosqichi o&rsquo;tkazildi va Tanlovda quyidagi filialimiz talabalari o&rsquo;zaro kuch sinashdilar.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify;\">\r\n	 </p>\r\n<ol style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; color: #333333; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify;\">\r\n	<li style=\"box-sizing: border-box;\">\r\n		Fayzixanov 914-17 guruh talabasi</li>\r\n	<li style=\"box-sizing: border-box;\">\r\n		Sharipov 943-17 guruh talabasi</li>\r\n	<li style=\"box-sizing: border-box;\">\r\n		Boltaboyev 943-17 guruh talabasi</li>\r\n	<li style=\"box-sizing: border-box;\">\r\n		Matchonov 943-17 guruh talabasi</li>\r\n	<li style=\"box-sizing: border-box;\">\r\n		Atajanov 943-17 guruh talabasi</li>\r\n	<li style=\"box-sizing: border-box;\">\r\n		Hurjanov 943-17 guruh talabasi</li>\r\n	<li style=\"box-sizing: border-box;\">\r\n		Azzadov 933-17 guruh talabasi</li>\r\n	<li style=\"box-sizing: border-box;\">\r\n		Rustamov 952-17 guruh talabasi</li>\r\n	<li style=\"box-sizing: border-box;\">\r\n		Boltaboyeva 921-17 guruh talabasi</li>\r\n	<li style=\"box-sizing: border-box;\">\r\n		Gulmirzaev 921-17 guruh talabasi</li>\r\n	<li style=\"box-sizing: border-box;\">\r\n		Orinov 931-17 guruh talabasi</li>\r\n	<li style=\"box-sizing: border-box;\">\r\n		Davletov 913-17 guruh talabasi</li>\r\n	<li style=\"box-sizing: border-box;\">\r\n		Rahimberganov 913-17 guruh talabasi</li>\r\n	<li style=\"box-sizing: border-box;\">\r\n		Maxmurod 913-17 guruh talabasi</li>\r\n	<li style=\"box-sizing: border-box;\">\r\n		Xudayberganov 913-17 guruh talabasi</li>\r\n	<li style=\"box-sizing: border-box;\">\r\n		Yuldashev 913-17 guruh talabasi</li>\r\n	<li style=\"box-sizing: border-box;\">\r\n		Qalandarov 941-17 guruh talabasi</li>\r\n	<li style=\"box-sizing: border-box;\">\r\n		Orinov 941-17 guruh talabasi</li>\r\n	<li style=\"box-sizing: border-box;\">\r\n		Sadullaev 942-17 guruh talabasi</li>\r\n	<li style=\"box-sizing: border-box;\">\r\n		Atamuratov 942-17 guruh talabasi</li>\r\n	<li style=\"box-sizing: border-box;\">\r\n		Razzaqov 942-17 guruh talabasi</li>\r\n	<li style=\"box-sizing: border-box;\">\r\n		Razzaqberdiev 942-17 guruh talabasi</li>\r\n	<li style=\"box-sizing: border-box;\">\r\n		Bobojanov 942-17 guruh talabasi</li>\r\n	<li style=\"box-sizing: border-box;\">\r\n		Sh.Satimov 942-17 guruh talabasi</li>\r\n	<li style=\"box-sizing: border-box;\">\r\n		A.Abdullaev 911-17 guruh talabasi</li>\r\n	<li style=\"box-sizing: border-box;\">\r\n		Y.Raximova 911-17 guruh talabasi</li>\r\n	<li style=\"box-sizing: border-box;\">\r\n		D.Polvanov 911-17 guruh talabasi</li>\r\n	<li style=\"box-sizing: border-box;\">\r\n		N.Abduqodirov 932-17 guruh talabasi</li>\r\n	<li style=\"box-sizing: border-box;\">\r\n		B.Rustamov 932-17 guruh talabasi</li>\r\n	<li style=\"box-sizing: border-box;\">\r\n		X.Rajapov 931-17 guruh talabasi</li>\r\n	<li style=\"box-sizing: border-box;\">\r\n		Sh.Xudayberganov 931-17 guruh talabasi</li>\r\n</ol>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify;\">\r\n	 </p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify;\">\r\n	18 dekabr sanasida tanlovning ikkinchi bosqichi o&rsquo;tkazildi va uch nafar g&rsquo;olib kengash a&rsquo;zolari tomonidan aniqlandi.</p>\r\n<ol style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; color: #333333; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify;\">\r\n	<li style=\"box-sizing: border-box;\">\r\n		Sadullaev 942-17 guruh talabasi</li>\r\n	<li style=\"box-sizing: border-box;\">\r\n		Razzaqov 942-17 guruh talabasi</li>\r\n	<li style=\"box-sizing: border-box;\">\r\n		Abdullaev 911-17 guruh talabasi</li>\r\n</ol>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify;\">\r\n	Filial rahbaryati va O&rsquo;zbekiston yoshlar ittifoqining qaroriga binoan g&rsquo;oliblar, fililada 27 dekabr sanasida o&rsquo;tkazildigan &ldquo;Yangi yil&rdquo; tadbirida taqdirlanadilar.</p>\r\n', '', '', 1514187757, 1514195643, 0, '1514195643.jpg'),
(24, 1, 8, 'Kompyuter injiniring fakulteti', 'faculty', '<h2 style=\"box-sizing: border-box; font-family: Montserrat, sans-serif; line-height: 40px; color: rgb(51, 51, 51); margin: 0px; font-size: 30px; text-align: justify; background-color: rgb(255, 255, 255);\">\r\n	<img align=\"left\" alt=\"\" height=\"250\" hspace=\"10\" src=\"/upload/userfiles/images/14c6698f8786f62717d717ccaea28aa6.jpg\" width=\"194\" />Allaberganov Odilbek Raximovich</h2>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; background-color: rgb(255, 255, 255);\">\r\n	<strong style=\"box-sizing: border-box;\">Telefon:</strong> (8 362) 224-61-28</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; background-color: rgb(255, 255, 255);\">\r\n	Qabul vaqti: Har kuni 15.00-17.00 (dushanbadan shanbagacha 9.00 dan 17.00 gacha tushlik 13.00 dan 14.00 gacha)</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; background-color: rgb(255, 255, 255);\">\r\n	<strong style=\"box-sizing: border-box;\">Lavozim vazifalari:</strong> &bull; Fakultet dekanatining faoliyatini va xodimlarini umumiy boshqarish; &bull; Fakultetda malakali mutaxassis kadrlar tayyorlashni ta&rsquo;minlash, o&rsquo;quv-uslubiy, ilmiy, ma&rsquo;naviy-ma&rsquo;rifiy ishlarga bevosita rahbarlik qilish, davlat ta&rsquo;lim standartlari, o&rsquo;quv rejalar, o&rsquo;quv dasturlar bajarilishini ta&rsquo;minlash; &bull; O&rsquo;quv mashg&rsquo;ulotlarini o&rsquo;tkazish jadvallari tuzishni tashkil etish va bajarilishini nazorat qilish, talabalarning o&rsquo;zlashtirishi va davomati tekshirib borilishini, reyting nazorati olib borilishini, intizom nazoratini tashkil etish: &bull; Talabalarning kursdan kursga o&rsquo;tkazish to&rsquo;g&rsquo;risida buyruqlar loyihasini tayyorlash; &bull; Talabalarga stipendiya berilishi to&rsquo;g&rsquo;risidagi taqdimnomani tayyorlash; &bull; Talabalarning bitiruv malakaviy ishlarini himoya qilishi va davlat attestatsiyasida qatnashishlarini tashkil etish; &bull; Iqtidorli talabalarni izlash, aniqlash va ular bilan individual, maqsadli ishlash tadbirlarini tashkil etish, ularni fanlar bo&rsquo;yicha olimpiadalar, turli jamg&rsquo;armalar (jumladan xorijiy) tanlovlarida qatna-shishga tayyorlash; &bull; Stajyor-tadqiqotchi-izlanuvchilarni tayyorlash, professor-o&rsquo;qituvchilar malakasini oshirishi ishlarini muvofiqlashtirish; &bull; Fakultet tarkibidagi ta&rsquo;lim yo&rsquo;nalishlariga taalluqli darsliklar, o&rsquo;quv va uslubiy qo&rsquo;llanmalar tayyorlash ishlarini muvofiqlashtirish, boshqarish; &bull; Yangi informatsion texnologiyalarni o&rsquo;quv jarayoniga keng tatbiq etilishini, professor-o&rsquo;qituvchilarning yangi informatsion texnologiyalarni egallashlarini ta&rsquo;minlash; &bull; Ilmiy va ilmiy uslubiy konferentsiyalar, kafedralararo yig&rsquo;ilishlar, fakultet professor-o&rsquo;qituvchilari va talabalari ishtirokida dolzarb mavzularda (jumladan, o&rsquo;z sohasida yangiliklar va ilmiy-texnik rivojlanish masalalari, mamlakat iqtisodiy- ijtimoiy rivojlanishi masalalari va h.k.) seminarlar, muloqot (diskussiya)lar tashkil etish va o&rsquo;tkazish; &bull; Oliy ta&rsquo;lim muassasasining marketing xizmati bilan hamkorlikda fakultetda tayyorlanadigan mutaxassisliklar bo&rsquo;yicha mavjud va istiqbol ehtiyojni o&rsquo;rganish, mutaxassislarga talabgor tashkilot, korxona, muassasalar bilan aloqalar o&rsquo;rnatish, bitiruvchilarni ishga joylashishi imkoniyatlarini tartibga solish (maqsadli shartnomalar), amaliy tavsiyalar berish; &bull; Turdosh oliy va o&rsquo;rta-maxsus ta&rsquo;lim muassasalari hamda ilmiy muassasalar, jumladan rivojlangan xorijiy mamlakatlar bilan hamkorlik aloqalarini o&rsquo;rnatish; &bull; Fakultet miqyosida mustaqil ravishda qo&rsquo;shimcha ta&rsquo;lim xizmatlari ko&rsquo;rsatishni tashkil etish (o&rsquo;z hisob raqamiga ega bo&rsquo;lgan alohida &laquo;Markaz&raquo;, &laquo;Kurs&raquo; va sh.k.), grantlar, investitsiyalar jalb etish, bunda fakultet professor-o&rsquo;qituvchilari va talabalarining faol ishtirokini ta&rsquo;minlash; &bull; Talabalar turar joylarida tarbiyaviy ishlarni tashkil etish: &bull; Vakolati doirasida murojaatlarni ko&rsquo;rib chiqish.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; background-color: rgb(255, 255, 255);\">\r\n	Fakultet 2005-yilda tashkil qilingan. Axborot texnologiyalari bo`yicha kadrlarni tayyorlashda yetakchi hisoblanadi. 2013 yil 2 sentabrdan Kompyuter injiniring fakulteti deb nomlangan.</p>\r\n', 'TATU, KI, dekanat', '', 1514533133, 1514534514, 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `go_event`
--

CREATE TABLE `go_event` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `place` varchar(100) NOT NULL,
  `sana` varchar(20) NOT NULL,
  `start_time` varchar(20) DEFAULT NULL,
  `end_time` varchar(20) DEFAULT NULL,
  `description` text NOT NULL,
  `photo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `go_gallery`
--

CREATE TABLE `go_gallery` (
  `id` int(11) NOT NULL,
  `title_ru` varchar(150) NOT NULL,
  `title_uz` varchar(150) NOT NULL,
  `title_en` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `go_gallery`
--

INSERT INTO `go_gallery` (`id`, `title_ru`, `title_uz`, `title_en`) VALUES
(1, 'Номера', 'Xonalar', 'Rooms'),
(2, 'Ресторан', 'Restoran', 'Restaurant'),
(3, 'Общие', 'Umumiy', 'General');

-- --------------------------------------------------------

--
-- Структура таблицы `go_gallery_images`
--

CREATE TABLE `go_gallery_images` (
  `id` int(11) NOT NULL,
  `gallery_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description_uz` text,
  `description_ru` text,
  `description_en` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `go_gallery_images`
--

INSERT INTO `go_gallery_images` (`id`, `gallery_id`, `image`, `description_uz`, `description_ru`, `description_en`) VALUES
(26, 1, '1514189757_gallery_236.jpg', '', '', ''),
(27, 1, '1514189766_gallery_108.jpg', '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `go_languages`
--

CREATE TABLE `go_languages` (
  `id` int(11) NOT NULL,
  `lang` varchar(10) NOT NULL,
  `flag` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `go_languages`
--

INSERT INTO `go_languages` (`id`, `lang`, `flag`) VALUES
(1, 'uz', ''),
(2, 'ru', ''),
(3, 'en', '');

-- --------------------------------------------------------

--
-- Структура таблицы `go_menu`
--

CREATE TABLE `go_menu` (
  `id` int(11) NOT NULL,
  `lang_id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `type` enum('horizontal','vertical','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `go_menu`
--

INSERT INTO `go_menu` (`id`, `lang_id`, `name`, `type`) VALUES
(1, 1, 'MainMenu Uz', 'horizontal'),
(2, 2, 'mainMenu Ru', 'horizontal'),
(3, 3, 'MainMenu En', 'horizontal');

-- --------------------------------------------------------

--
-- Структура таблицы `go_menuitem`
--

CREATE TABLE `go_menuitem` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `url` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `go_menuitem`
--

INSERT INTO `go_menuitem` (`id`, `menu_id`, `title`, `parent_id`, `url`) VALUES
(104, 1, 'Bosh sahifa', 0, '/'),
(105, 1, 'Universitet', 0, '/content/university'),
(106, 1, 'Tuzilma', 0, '/content/structure'),
(107, 1, 'Faoliyat', 0, '/content/activity'),
(108, 1, 'Abituriyentlarga', 0, '/content/for-abiturients'),
(109, 1, 'Talabalarga', 0, '/content/for-students'),
(110, 1, 'Yangiliklar', 0, '/news'),
(111, 1, 'Me\'yoriy hujjatlar', 105, '/content/documents'),
(112, 1, 'Rekvizitlar', 105, '/content/rekvizit'),
(113, 1, 'Aloqa', 105, '/contact'),
(114, 1, 'Kengashlar', 106, '/content/assemblies'),
(115, 1, 'Rahbariyat', 106, '/content/executive'),
(116, 1, 'Fakultet', 106, '/content/faculty'),
(117, 1, 'Kafedralar', 106, '/content/departments'),
(118, 1, 'Markazlar', 106, '/content/centers'),
(119, 1, 'Bo\'limlar', 106, '/content/sections'),
(120, 1, 'E\'lonlar', 110, '/news/announcements'),
(121, 1, 'Tadbirlar', 110, '/news/events'),
(122, 1, 'Yutuqlar', 110, '/news/achievements'),
(123, 1, 'Foto lavhalar', 110, '/gallery/photos'),
(124, 1, 'Video lavhalar', 110, '/videos'),
(125, 1, 'O\'quv faoliyati', 107, '/content/edu-activity'),
(126, 1, 'Ilmiy faoliyat', 107, '/content/sc-activities'),
(127, 1, 'Ijtimoiy faoliyat', 107, '/content/social-activities'),
(128, 1, 'Innovatsion faoliyat', 107, '/content/innovative-activities'),
(129, 1, 'Ta\'lim yo\'nalishlari', 108, '/content/edu-directions'),
(130, 1, 'Hujjatlar to\'plami', 108, '/content/abit-docs'),
(131, 1, 'Qabul kvotalari', 108, '/content/quotes'),
(132, 1, 'Qabul natijalari', 108, '/content/rec-results'),
(133, 1, 'Magistratura', 108, '/content/masters'),
(134, 1, 'Stipendiyalari, grantlar va tanlovlar', 109, '/content/scholar'),
(135, 1, 'Yo\'riqnoma, nizom va qoidalar', 109, '/content/nizom'),
(136, 1, 'Online resurslar', 109, '/content/resources'),
(137, 1, 'Startup loyihalar', 109, '/content/startups'),
(138, 2, 'Главная', 0, '/'),
(139, 2, 'Университет', 0, '/content/university'),
(140, 2, 'Структура', 0, '/content/structure'),
(141, 2, 'Деятельность', 0, '/content/activity'),
(142, 2, 'Для абитуриентов', 0, '/content/for-abiturients'),
(143, 2, 'Для студентов', 0, '/content/for-students'),
(144, 2, 'Новости', 0, '/news'),
(145, 2, 'Документы', 139, '/content/documents'),
(146, 2, 'Реквизиты', 139, '/content/rekvizit'),
(147, 2, 'Контакты', 139, '/contact'),
(148, 2, 'Советы', 140, '/content/assemblies'),
(149, 2, 'Руководство', 140, '/content/executive'),
(150, 2, 'Факультет', 140, '/faculty'),
(151, 2, 'Кафедры', 140, '/content/departments'),
(152, 2, 'Центры', 140, '/content/centers'),
(153, 2, 'Отделения', 140, '/content/sections'),
(154, 2, 'Объявления', 144, '/news/announcements'),
(155, 2, 'Мероприятия', 144, '/news/events'),
(156, 2, 'Достижения', 144, '/news/achievements'),
(157, 2, 'Фотогалереи', 144, '/gallery/photos'),
(158, 2, 'Видеогалереи', 144, '/videos'),
(159, 2, 'Учебная деятельность', 141, '/content/edu-activity'),
(160, 2, 'Научная деятельность', 141, '/content/sc-activities'),
(161, 2, 'Социальная деятельность', 141, '/content/social-activities'),
(162, 2, 'Инновационная деятельность', 141, '/content/innovative-activities'),
(163, 2, 'Специализации', 142, '/content/edu-directions'),
(164, 2, 'Перечень документов', 142, '/content/abit-docs'),
(165, 2, 'Квоты приема', 142, '/content/quotes'),
(166, 2, 'Результаты приема', 142, '/content/rec-results'),
(167, 2, 'Магистратура', 142, '/content/masters'),
(168, 2, 'Стипендии, гранты', 143, '/content/scholar'),
(169, 2, 'Руководства и правила', 143, '/content/nizom'),
(170, 2, 'Онлайн ресурсы', 143, '/content/resources'),
(171, 2, 'Стартап проекты', 143, '/content/startups'),
(172, 3, 'Homepage', 0, '/'),
(173, 3, 'University', 0, '/content/university'),
(174, 3, 'Structure', 0, '/content/structure'),
(175, 3, 'Activity', 0, '/content/activity'),
(176, 3, 'For applicants', 0, '/content/for-applicats'),
(177, 3, 'For students', 0, '/content/for-students'),
(178, 3, 'News', 0, '/news'),
(179, 3, 'Normative documents', 173, '/content/documents'),
(180, 3, 'Bank details', 173, '/content/rekvizit'),
(181, 3, 'Contacts', 173, '/contact'),
(182, 3, 'Council', 174, '/content/council'),
(183, 3, 'Management', 174, '/content/management'),
(184, 3, 'Faculty', 174, '/content/faculty'),
(185, 3, 'Departments', 174, '/content/departments'),
(186, 3, 'Centers', 174, '/content/centers'),
(187, 3, 'Executive modules', 174, '/content/sections'),
(188, 3, 'Announcements', 178, '/news/announcements'),
(189, 3, 'Events', 178, '/news/events'),
(190, 3, 'Achievements', 178, '/news/achievements'),
(191, 3, 'Photo gallery', 178, '/gallery/photos'),
(192, 3, 'Videos', 178, '/videos'),
(193, 3, 'Academic activity', 175, '/content/academic-activity'),
(194, 3, 'Scientific activity', 175, '/content/scintific-activity'),
(195, 3, 'Social activity', 175, '/content/social-activity'),
(196, 3, 'Innovative activity', 175, '/content/innovative-activity'),
(197, 3, 'Specialties', 176, '/content/specialties'),
(198, 3, 'Application documents', 176, '/content/app-docs'),
(199, 3, 'Admission quotes', 176, '/content/quotes'),
(200, 3, 'Admission results', 176, '/content/admission-results'),
(201, 3, 'Master degree', 176, '/content/masters'),
(202, 3, 'Grants and scholarships', 177, '/content/scholar'),
(203, 3, 'Instruction and rules', 177, '/content/rules'),
(204, 3, 'Online resources', 177, '/content/resources'),
(205, 3, 'Startup projects', 177, '/content/startups'),
(206, 3, 'Open data', 173, '/content/open-data'),
(207, 1, 'Ochiq ma\'lumotlar', 105, '/content/open-data'),
(208, 2, 'Открытие данные', 139, '/content/open-data');

-- --------------------------------------------------------

--
-- Структура таблицы `go_slider`
--

CREATE TABLE `go_slider` (
  `id` int(11) NOT NULL,
  `img` varchar(255) NOT NULL,
  `title` varchar(80) DEFAULT NULL,
  `lang_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `go_slider`
--

INSERT INTO `go_slider` (`id`, `img`, `title`, `lang_id`) VALUES
(8, '1513696365_slider_231.jpg', 'Muhammad Al-Xorazmiy nomidagi TATU Urganch filiali', 1),
(9, '1513696395_slider_301.jpg', '2017-yil Xalq bilan muloqot va inson manfaatlari yili', 1),
(10, '1513696365_slider_231.jpg', 'Ургенчский филиал ТУИТ имени Мухаммада Ал-Хорезми', 2),
(11, '1513696395_slider_301.jpg', '2017 год - Год общения с народом и интересов человека', 2),
(12, '1513696365_slider_231.jpg', 'Urgench branch of TUIT named after Mukhammad Al-Khorezmi', 3),
(13, '1513696395_slider_301.jpg', '2017 year - Year of communication with people and human interests', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `go_user`
--

CREATE TABLE `go_user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `go_user`
--

INSERT INTO `go_user` (`id`, `username`, `password`, `first_name`, `last_name`, `role`) VALUES
(1, 'admin', 'e52cd90ae1ba454cdb50b52ef96e1367', 'Administrator', 'Khorezm Palace', 'administrator'),
(2, 'bekmurod', '70273afd87f4568b5f5479ad99e70042', 'Bekmurod', 'Xo\'jamurodov', 'administrator'),
(3, 'arslon', '70273afd87f4568b5f5479ad99e70042', 'Arslon', 'Saidov', 'administrator');

-- --------------------------------------------------------

--
-- Структура таблицы `go_videos`
--

CREATE TABLE `go_videos` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `source` text NOT NULL,
  `created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `go_videos`
--

INSERT INTO `go_videos` (`id`, `title`, `source`, `created`) VALUES
(1, 'Khorezm Palace, Urgench, Uzbekistan', '<iframe width=\"420\" height=\"315\" src=\"https://www.youtube.com/embed/jv3wt_g3U8U\" frameborder=\"0\" allowfullscreen></iframe>', 1412123122),
(2, 'Khorezm Palace', '<iframe width=\"420\" height=\"315\" src=\"https://www.youtube.com/embed/BAz9MfkkLuU\" frameborder=\"0\" allowfullscreen></iframe>', 143252352);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `go_category`
--
ALTER TABLE `go_category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `go_content`
--
ALTER TABLE `go_content`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hash` (`hash`);

--
-- Индексы таблицы `go_event`
--
ALTER TABLE `go_event`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `go_gallery`
--
ALTER TABLE `go_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `go_gallery_images`
--
ALTER TABLE `go_gallery_images`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `go_languages`
--
ALTER TABLE `go_languages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `go_menu`
--
ALTER TABLE `go_menu`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `go_menuitem`
--
ALTER TABLE `go_menuitem`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `go_slider`
--
ALTER TABLE `go_slider`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `go_user`
--
ALTER TABLE `go_user`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `go_videos`
--
ALTER TABLE `go_videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `go_category`
--
ALTER TABLE `go_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT для таблицы `go_content`
--
ALTER TABLE `go_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT для таблицы `go_event`
--
ALTER TABLE `go_event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `go_gallery`
--
ALTER TABLE `go_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `go_gallery_images`
--
ALTER TABLE `go_gallery_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT для таблицы `go_languages`
--
ALTER TABLE `go_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `go_menu`
--
ALTER TABLE `go_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `go_menuitem`
--
ALTER TABLE `go_menuitem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=209;
--
-- AUTO_INCREMENT для таблицы `go_slider`
--
ALTER TABLE `go_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT для таблицы `go_user`
--
ALTER TABLE `go_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `go_videos`
--
ALTER TABLE `go_videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
