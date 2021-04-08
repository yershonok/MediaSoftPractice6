<?php

    $host = 'localhost';    // ***
    $dbname = 'postgres';   // учётка PostgreSQL
    $port = '5432';          // порт БД
    $user = 'root';         // логин PostgreSQL
    $password = 'root';     // пароль PostgreSQL

$dsn = "pgsql:host={$host};port:{$port};dbname={$dbname};user={$user};password={$password}"; // подключение к БД
$con = mysqli_connect('localhost','root','root','postgres','5432');
mysqli_select_db('postgres', $con);

$name = filter_var(trim($_POST['name']),FILTER_SANITIZE_STRING);
$surname = filter_var(trim($_POST['surname']),FILTER_SANITIZE_STRING);

if (mb_strlen($name) <2 || mb_strlen($name) >20)
    {
        echo "Недопустимая длина имени";
        exit;
    }

    else if (!preg_match('/^[а-яА-Я]+$/iu', $name))
        {
            echo "В имени не должно быть чисел!";
            exit;
        }

if (mb_strlen($surname) <2 || mb_strlen($surname) >20)
        {
            echo "Недопустимая длина фамилии";
            exit;
        }

    else if (!preg_match('/^[а-яА-Я]+$/iu', $surname))
        {
            echo "В фамилии не должно быть чисел!";
            exit;
        }

header('location: /' );

?>