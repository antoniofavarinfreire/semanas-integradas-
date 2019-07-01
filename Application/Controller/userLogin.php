<?php
require_once '../../Lib/SGE/Session/Session.php';
require_once '../../Lib/SGE/Core/ClassLoader.php';
$al= new SGE\Core\ClassLoader;
$al->addNamespace('SGE', 'Lib/SGE');
$al->register();

// App loader
require_once '../../Lib/SGE/Core/AppLoader.php';
$al= new SGE\Core\AppLoader;
$al->addDirectory('App/Control');
$al->addDirectory('App/Model');
$al->register();


class userLogin {
        
    public function login($data){
        require_once '../Model/User.php';
        
        if(isset($data)){

            if($data['email']!=''&&$data['password']!=''){
                $Login = new Login;
                $userId = $Login->Login($data);
                if(isset($userId)){
                    return $userId;

                }else{
                    return null;
                }

            }else{
                echo "Os campos devem ser preenchidos";
            }
        
        }

    }
}