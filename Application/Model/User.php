<?php

use SGE\Database\Connection;

class User{
    
    public function login($data){
       $DB = new Connection;
       $sql = "";
       $rows = $DB->query($sql);
        # Valida login 

        # retorna o id do usuário 


    }
}