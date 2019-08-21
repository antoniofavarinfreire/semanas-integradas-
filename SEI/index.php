<?php
date_default_timezone_set('America/Sao_Paulo');

// Lib loader
require_once 'Lib/Livro/Core/ClassLoader.php';
$al= new Livro\Core\ClassLoader;
$al->addNamespace('Livro', 'Lib/Livro');
$al->register();

// App loader
require_once 'Lib/Livro/Core/AppLoader.php';
$al= new Livro\Core\AppLoader;
$al->addDirectory('App/Control');
$al->addDirectory('App/Model');
$al->register();

$loader = require 'vendor/autoload.php';
$loader->register();



if(session_status() !== PHP_SESSION_ACTIVE) session_start();
if (isset($_SESSION['cpf'])) {
    if(isset($_COOKIE['evento'])){
        header('location:presenca.php');
    }
    if(in_array(1,$_SESSION['tipo'])){
        $template = file_get_contents('App/Templates/adm.html');
        $class = 'DashboardView';

    }elseif(in_array(2,$_SESSION['tipo'])){
        $template = file_get_contents('App/Templates/peasant.html');
        $class = 'DashboardView';

    }
}

else {
    $template = file_get_contents('App/Templates/login.html');
    $class = 'LoginForm';
}

if (isset($_GET['class']) AND (isset($_SESSION['cpf']))){
    
    $class = $_GET['class'];
}

if (class_exists($class))
{
    try
    {
        $pagina = new $class;
        ob_start();
        $pagina->show();
        $content = ob_get_contents();
        ob_end_clean();
    }
    catch (Exception $e)
    {
        $content = $e->getMessage() . '<br>' .$e->getTraceAsString();
    }
}
$output = str_replace('{content}', $content, $template);
$output = str_replace('{class}',   $class, $output);
echo $output;
