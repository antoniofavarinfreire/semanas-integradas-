<?php

try{
    $dbBrute = new PDO("mysql:host=localhost;dbname=sge", 'sge', 'indiolambda');
}catch(PDOException $e){
    echo $e->getMessage();  
}

if(!isset($_GET['code']) && !isset($_COOKIE['evento'])){
    header('location:index.php');
}

$code =  $_GET['code'];
setcookie('evento',$code);



if(session_status() !== PHP_SESSION_ACTIVE) session_start();
if(!empty($_SESSION['cpf'])){
    $code = $_COOKIE['evento'];
    $sql = "SELECT id FROM evento WHERE code='$code'";
    $result = $dbBrute->query($sql);
    while($results = $result->fetch(PDO::FETCH_NUM)){
        $id = $results[0];
    }
    $id = (int)$id;
    $cpf = $_SESSION['cpf'];
    $sql = "UPDATE pessoa_has_evento SET presenca='s' WHERE pessoa_cpf='$cpf' and evento_id=$id";
    $result = $dbBrute->prepare($sql);
    $result->execute();
    $foi = $result->rowCount();
    unset($_COOKIE['evento']);
    setcookie('evento',null, -1, '/');
    header("location:index.php?class=DashboardView&method=pospresenca");
}else{
    header("location:index.php");
}

?>
