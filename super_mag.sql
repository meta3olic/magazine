-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 31 2020 г., 15:28
-- Версия сервера: 5.7.25
-- Версия PHP: 7.0.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `super_mag`
--

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `name`, `sort_order`, `status`) VALUES
(1, 'Рубашки', 1, 1),
(2, 'Платья', 5, 1),
(3, 'Футболки', 3, 1),
(4, 'Майки', 4, 1),
(5, 'Сумки', 2, 1),
(6, 'Чемоданы', 6, 1),
(7, 'Брюки', 7, 1),
(8, 'Пиджаки', 8, 1),
(9, 'Галстуки', 9, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `category_id` int(11) NOT NULL,
  `code` int(11) NOT NULL,
  `price` float NOT NULL,
  `availability` int(11) NOT NULL,
  `brand` varchar(255) CHARACTER SET utf8 NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL,
  `is_new` int(11) NOT NULL DEFAULT '0',
  `is_recommended` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `name`, `category_id`, `code`, `price`, `availability`, `brand`, `image`, `description`, `is_new`, `is_recommended`, `status`) VALUES
(1, 'Springfield', 1, 143, 2710, 1, 'Chepirka', 'template/images/cart/SP014EMHXBQ3_10261889_1_v1_2x.jpeg', 'Состав: Хлопок - 100%\r\nРазмер товара на модели: M INT\r\nПараметры модели: 103-78-98\r\nРост модели на фото: 189\r\nДлина: 78 см\r\nДлина рукава: 65 см\r\nСезон: мульти\r\nЦвет: бордовый\r\nУзор: клетка\r\nТип силуэта: прямой\r\nСтрана производства: Бангладеш\r\nЗастежка: пуговицы\r\n', 0, 0, 1),
(2, 'Tom Tailor', 1, 1720, 3190, 1, 'TOM TAILOR GmbH', 'template\\images\\cart\\TO172EMHQFG0_10274707_1_v1.jpeg', 'Состав: Хлопок - 100%\r\nДлина: 75 см\r\nДлина рукава: 66 см\r\nСезон: мульти\r\nЦвет: мультиколор\r\nУзор: клетка\r\nТип силуэта: приталенный\r\nСтрана производства: Индонезия\r\nЗастежка: пуговицы\r\n\r\nАдрес изготовителя: Германия, Garstedter Weg 14, 22453 Hamburg\r\n', 0, 1, 1),
(3, 'Tom Tailor Denim', 1, 7937, 2790, 1, 'TOM TAILOR GmbH', 'template\\images\\cart\\TO793EMHQEL7_10223785_1_v1_2x.jpeg', 'Состав: Хлопок - 100%\r\nРазмер товара на модели: M INT\r\nПараметры модели: 101-82-95\r\nРост модели на фото: 189\r\nДлина: 74 см\r\nДлина рукава: 67 см\r\nСезон: мульти\r\nЦвет: синий\r\nУзор: полоска\r\nТип силуэта: прямой\r\nСтрана производства: Бангладеш\r\nЗастежка: пуговицы\r\n', 0, 1, 1),
(4, 'Burton Menswear London', 1, 148, 3790, 1, 'Banana Republic', 'template\\images\\cart\\BU014EMIHZF8_10314645_1_v1.jpeg', 'Состав: Хлопок - 100%\r\nСезон: мульти\r\nЦвет: мультиколор\r\nУзор: однотонный\r\nТип силуэта: прямой\r\nКарманы: 1\r\nСтрана производства: Индия\r\nЗастежка: пуговицы', 0, 1, 1),
(5, 'Vera Nova', 5, 2120, 4990, 1, 'ООО \"С-МАГАЗИН.РУ\"', 'template\\images\\cart\\MP002XW120YN_9930183_1_v1_2x.jpeg', 'Состав: Полиэстер - 65%, Вискоза - 30%, Эластан - 5%\r\nРазмер товара на модели: 42 RUS\r\nПараметры модели: 83-61-91\r\nРост модели на фото: 180\r\nДлина: 92 см\r\nСезон: мульти\r\nЦвет: черный\r\nУзор: однотонный\r\nГарантийный период: не установлен\r\nСтрана производства: Россия\r\nЗастежка: молния\r\nАдрес изготовителя: 630501 Новосибирская область, р.п. Краснообск 206-105\r\n', 1, 1, 1),
(6, 'Trends Brands', 5, 2162, 3590, 1, 'ИП Тихонова', 'template\\images\\cart\\MP002XW1G6E2_10529211_1_v1_2x.jpeg', 'Состав: Полиэстер - 100%\r\nРазмер товара на модели: 42 RUS\r\nПараметры модели: 85-58-85\r\nРост модели на фото: 174\r\nДлина: 96 см\r\nДлина рукава: 55 см\r\nСезон: мульти\r\nЦвет: черный\r\nУзор: однотонный\r\nГарантийный период: не установлен\r\nСтрана производства: Россия\r\nЗастежка: без застежки\r\nАдрес изготовителя: г. Москва ул. Малая Юшуньская д.1 стр.1\r\n', 1, 1, 1),
(7, 'Call Me Bride', 5, 200, 8900, 1, 'ИП Юмакова Надежда Александровна', 'template\\images\\cart\\MP002XW0HUI0_10323736_1_v1_2x.jpeg', 'Состав: Вискоза - 50%, Полиэстер - 50%\r\nРазмер товара на модели: 42 RUS\r\nПараметры модели: 85-62-91\r\nРост модели на фото: 178\r\nДлина: 118 см\r\nДлина рукава: 55 см\r\nСезон: мульти\r\nЦвет: фиолетовый\r\nУзор: однотонный\r\nГарантийный период: 30 дней\r\nСтрана производства: Россия\r\nЗастежка: молния\r\nАдрес изготовителя: 195271, Санкт-Петербург, ул. Брюсовская, д.22, кв. 105\r\n', 0, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `product_order`
--

CREATE TABLE `product_order` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `user_phone` varchar(255) CHARACTER SET utf8 NOT NULL,
  `user_comment` text CHARACTER SET utf8 NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `products` json NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `product_order`
--

INSERT INTO `product_order` (`id`, `user_name`, `user_phone`, `user_comment`, `user_id`, `date`, `products`, `status`) VALUES
(6, 'u1', '9532843269', 'comment', 1, 'Tuesday 31st of March 2020 12:01:26 AM', '{\"2\": 1, \"3\": 1, \"4\": 1}', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `role`) VALUES
(1, 'u1', 'google@gmail.com', 'qwe123', 'admin'),
(6, 'nikita', 'nikitastart@yandex.ru', 'qwe123', ''),
(7, 'Nikita', 'google@gmail.com1', 'qwe123', '');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `product_order`
--
ALTER TABLE `product_order`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `product_order`
--
ALTER TABLE `product_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
