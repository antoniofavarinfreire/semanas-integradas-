<?php
date_default_timezone_set('America/Sao_Paulo');

// Lib loader
require_once 'Lib/SGE/Core/ClassLoader.php';
$al= new SGE\Core\ClassLoader;
$al->addNamespace('SGE', 'Lib/SGE');
$al->register();

// App loader
require_once 'Lib/SGE/Core/AppLoader.php';
$al= new SGE\Core\AppLoader;
$al->addDirectory('App/Control');
$al->addDirectory('App/Model');
$al->register();

use SGE\Session\Session;

$content = '';


new Session;
if (Session::getValue('logged')) {
    header("Location:Application/");
}
else {
    $template = file_get_contents('View/login/login_via.html');
    $class = 'LoginForm';
}

if (isset($_GET['class']) AND Session::getValue('logged'))
{
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
