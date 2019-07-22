<?php
date_default_timezone_set('America/Sao_Paulo');

// Lib loader
require_once '../../Lib/SGE/Session/Session.php';
require_once '../../Lib/SGE/Core/ClassLoader.php';
$al= new SGE\Core\ClassLoader;
$al->addNamespace('SGE', 'Lib/SGE');
$al->register();

// App loader
require_once '../../Lib/SGE/Core/AppLoader.php';
$al= new SGE\Core\AppLoader;
$al->addDirectory('Application/Control');
$al->addDirectory('Application/Model');
$al->register();

use SGE\Session\Session;

new Session;
if (Session::getValue('logged')) {
    Session::freeSession();// tirar isso depois
    #logado
}
else {
    require_once 'userLogin.php';
    if(isset($_POST)){
        $data = $_POST;
        $userLogin =  new userLogin;
        $result = $userLogin->login($data);
        if(!isset($result['erro'])){
            Session::setValue('userid',$result);
        }else{
            #trata erro
        }
       
    }
}
