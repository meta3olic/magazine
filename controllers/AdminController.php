<?php

/**
 * Контролеер AdminController
 * Главная страница админпанели
 */
class AdminController extends AdminBase
{
    /**
     * Action для стартовой страницы "Панель админитсратора"
     */
    public function actionIndex()
    {
        //Проверка доступа
        self::checkAdmin();

        //Подключаем вид
        require_once(ROOT . '/views/admin/index.php');
        return true; 
    }
}

 