<?php session_start(); ?>
<!-- 
    Структура
        Пользовательская
            1. Главная страница
            2. Каталог
                главная страница
                страница категории
                страница товара
            3. Блог
                список всех записей в блоге
                страница одной записи
            4. Корзина
            5. Кабинет пользователя
                Список заказов
                Редактировать личные данные
            6. Регистрация
            7. Авторизация 
            
        Админская
            1. Управление категориями
            2. Управление товароми
            3. Управление заказами
            4. Управление пользователями
-->
<?php


// FRONT CONTROLLER

// 1. Общие настройки
ini_set('display_errors', 1);
error_reporting(E_ALL);


// 2. Подключение файлов системы
define('ROOT', dirname(__FILE__));
require_once(ROOT . '/components/Autoload.php');
// require_once(ROOT . '/components/Router.php');
// require_once(ROOT . '/components/Db.php');


// 4. Вызов Router
$router = new Router();
$router->run();
