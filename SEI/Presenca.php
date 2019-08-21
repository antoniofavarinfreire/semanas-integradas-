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

$c = $_COOKIE['cpf'];

if(session_status() !== PHP_SESSION_ACTIVE) session_start();
if(!empty($_COOKIE['cpf'])){
    $code = $_COOKIE['evento'];
    $sql = "SELECT id,inicio,vagas,tipo_id FROM evento WHERE code='$code'";
    $result = $dbBrute->query($sql);
    while($results = $result->fetch(PDO::FETCH_NUM)){
        $id = $results[0];
        $hora = $results[1];
        $vagas = $results[2];
        $tipo = $results[3];
    }
    $id = (int)$id;
    $cpf = $_COOKIE['cpf'];
    $sql = "SELECT grupo_id FROM pessoa_has_grupo WHERE pessoa_cpf='$cpf' ";
    $result = $dbBrute->query($sql);
    $grupos = array();
    if($tipo == 11){
        $sql = "INSERT INTO pessoa_has_evento(pessoa_cpf,evento_id,presenca,ordem,datainscricao,horainscricao)VALUES($cpf,$id,'s',1,$nowd,$nowh)";
        $result = $dbBrute->prepare($sql);
        $result->execute();
        $foi = $result->rowCount();
        if($foi > 0 ){
            unset($_COOKIE['evento']);
            setcookie('evento',null, -1, '/');
            header("location:index.php?class=DashboardView&method=pospresenca");
        }else{
            echo "Erro Ao Cadastrar, Fale com o Voluntário para presença manual";
        }
    }
    if($result->rowCount() == 0 ){
        echo "por favor, se cadastre antes na pagina da <a href='https://sei.joinville.udesc.br'>SEI</a>";
    }
    while($resultb = $result->fetch(PDO::FETCH_ASSOC)){
        $grupos[] = $resultb['grupo_id'];
    }
    $sql = "SELECT presenca FROM pessoa_has_evento WHERE pessoa_cpf='$cpf' and evento_id=$id";
    $result = $dbBrute->query($sql);
    $resultb = $result->fetch(PDO::FETCH_ASSOC);
    $status = $resultb['presenca'];
    $ordem = $resultb['ordem'];
    $nowh = date('H:i:s');
    if(($result->rowCount() == 0)&&(in_array(4,$grupos))){
        $nowd = date('Y-m-d');
        $nowh = date('H:i:s');
        //verify array
        $sql = "INSERT INTO pessoa_has_evento(pessoa_cpf,evento_id,presenca,ordem,datainscricao,horainscricao)VALUES($cpf,$id,'s',1,$nowd,$nowh)";
        //$result = $dbBrute->prepare($sql);
        $dbBrute->exec($sql);
        $foi = $dbBrute->rowCount();
        if($foi > 0 ){
            unset($_COOKIE['evento']);
            setcookie('evento',null, -1, '/');
            header("location:index.php?class=DashboardView&method=pospresenca");
        }else{
            echo "Erro Ao Cadastrar, Fale com o Voluntário para presença manual";
        }
    
    }elseif(in_array(4,$grupos)){
        $sql = "UPDATE pessoa_has_evento SET presenca='s' WHERE pessoa_cpf='$cpf' and evento_id=$id";
        $result = $dbBrute->prepare($sql);
        $result->execute();
        $foi = $result->rowCount();
        if($foi > 0 ){
            unset($_COOKIE['evento']);
            setcookie('evento',null, -1, '/');
            header("location:index.php?class=DashboardView&method=pospresenca");
        }else{
            echo "Erro Ao Cadastrar, Fale com o Voluntário para presença manual";
        }
    
    }elseif($nowh >= $inicio){
        if($result->rowCount()==0){
            $sql = "INSERT INTO pessoa_has_evento(pessoa_cpf,evento_id,presenca,ordem,datainscricao,horainscricao)VALUES($cpf,$id,'s',1,$nowd,$nowh)";
            $result = $dbBrute->prepare($sql);
            $result->execute();
            $foi = $result->rowCount();
            if($foi > 0 ){
                unset($_COOKIE['evento']);
                setcookie('evento',null, -1, '/');
                header("location:index.php?class=DashboardView&method=pospresenca");
            }else{
                echo "Erro Ao Cadastrar, Fale com o Voluntário para presença manual";
            }
        }else{
            $sql = "UPDATE pessoa_has_evento SET presenca='s' WHERE pessoa_cpf='$cpf' and evento_id=$id";
            $result = $dbBrute->prepare($sql);
            $result->execute();
            $foi = $result->rowCount();
        if($foi > 0 ){
            unset($_COOKIE['evento']);
            setcookie('evento',null, -1, '/');
            header("location:index.php?class=DashboardView&method=pospresenca");
        }else{
            echo "Erro Ao Cadastrar, Fale com o Voluntário para presença manual";
        }
        }
    }elseif($status = 's'){
        unset($_COOKIE['evento']);
        setcookie('evento',null, -1, '/');
        header("location:index.php");
    
    }elseif($result->rowCount()==0){
        echo "Evento ainda não aberto para inscrições automaticas";
    }else{
        $sql = "UPDATE pessoa_has_evento SET presenca='s' WHERE pessoa_cpf='$cpf' and evento_id=$id";
        $result = $dbBrute->prepare($sql);
        $result->execute();
        $foi = $result->rowCount();
        if($foi > 0 ){
            unset($_COOKIE['evento']);
            setcookie('evento',null, -1, '/');
            header("location:index.php?class=DashboardView&method=pospresenca");
        }else{
            echo "Erro Ao Cadastrar, Fale com o Voluntário para presença manual";
        }
    }
}else{
    header("location:index.php");
}

?>
