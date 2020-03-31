<?php

/**
 * Абстрактный класс AdminBase содержит общию логику для контроллерв, которые
 * используються в панели администратора 
 */
abstract class AdminBase
{
    /**
     * Метод, который проверяет пользователя на то, являеться ли он администратором
     * @return boolean
     */
    public static function checkAdmin()
    {
        //Проверяем авторизован ли пользователь. Если нет, он будет переадресован
        $userId = User::checkLogged();

        //Получаем информацию с текущим пользователе
        $user = User::getUserById($userId);

        //Если роль текущего пользователя "Admin", предостовляем ему доступ
        if ($user['role'] == 'admin'){
            return true;
        }
        //Иначе завершаем работу с сообщение о закрытии
        die('Access denied');
    }
}
    

