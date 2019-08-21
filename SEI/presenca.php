<?php
$db = new mysqli('localhost','sge','indiolambda','sge');

function givePresenca($id,$cpf){
    $id = (int)$id;
    $db = new mysqli('localhost','sge','indiolambda','sge');
    $sql = "SELECT * FROM pessoa_has_evento WHERE pessoa_cpf='$cpf' AND evento_id=$id";
    $result = $db->query($sql);
    $gets = $result->num_rows;
    $nowh = date('H:i:s');
    $nowd = date('Y-m-d');
    if($gets == 0){
        $sql = "INSERT INTO pessoa_has_evento(pessoa_cpf,evento_id,presenca,ordem,datainscricao,horainscricao)VALUES('$cpf',$id,'s',1,'$nowd','$nowh')";
        if($db->query($sql)=== TRUE){
            return TRUE;
        }else{
            return FALSE;
        }
    }else{
        $sql = "UPDATE pessoa_has_evento SET presenca='s' WHERE pessoa_cpf='$cpf' AND evento_id=$id";
        $result = $db->query($sql);
        $gets = $result->num_rows;
        if($gets > 0){
            return TRUE;
        }else{
            return FALSE;
        }
    } 
}

if(!isset($_GET['code']) && !isset($_COOKIE['evento'])){
    header('location:index.php');
}

if(!isset($_COOKIE['cpf']) || empty($_COOKIE['cpf'])){
    header('location:index.php');
}


$code =  $_GET['code'];
setcookie('evento',$code);
$cpf = $_COOKIE['cpf'];
$sql = "SELECT id,inicio,tipo_id FROM evento WHERE code='$code'";
$result = $db->query($sql);
$gets = $result->fetch_assoc();
$id = $gets['id'];
$inicio = $gets['inicio'];
$tipo = $gets['tipo_id'];
$sql = "SELECT * FROM pessoa_has_grupo WHERE pessoa_cpf=$cpf";
$result = $db->query($sql);
$grupos = array();
while($gets = $result->fetch_assoc()){
    $grupos[] = $gets['grupo_id'];
}
$sql = "SELECT * FROM pessoa_has_evento WHERE pessoa_cpf='$cpf' AND evento_id=$id";
$result = $db->query($sql);
$gets = $result->num_rows;
    
$nowh = date('H:i:s');
$twoplus = date('H:i:s',strtotime($inicio)+7200);
if($tipo == 11){
    if(givePresenca($id,$cpf)){
        setcookie('evento',null, -1, '/');
        unset($_COOKIE['evento']);
        header("location:index.php?class=DashboardView&method=pospresenca");
    }
    header('location:index.php');
}elseif($nowh >= $inicio && $nowh < $twoplus){
    if(givePresenca($id,$cpf)){
        setcookie('evento',null, -1, '/');
        unset($_COOKIE['evento']);
        header("location:index.php?class=DashboardView&method=pospresenca");
    }
    header('location:index.php');
}elseif(in_array(4,$grupos)){
    if(givePresenca($id,$cpf)){
        setcookie('evento',null, -1, '/');
        unset($_COOKIE['evento']);
        header("location:index.php?class=DashboardView&method=pospresenca");
    }
    header('location:index.php');
}elseif($gets >= 1){
    if(givePresenca($id,$cpf)){
        setcookie('evento',null, -1, '/');
        unset($_COOKIE['evento']);
        header("location:index.php?class=DashboardView&method=pospresenca");
    }
    header('location:index.php');
}else{
    echo "Você ainda não pode se inscrever nessa atividade";
}


?>