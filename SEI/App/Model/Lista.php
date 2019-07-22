<?php

use Livro\Database\Record;
use Livro\Database\Criteria;
use Livro\Database\Repository;
use Livro\Database\Transaction;

Class Lista extends Record{
        const TABLENAME = 'pessoa_has_evento';
        
        public static function list($cpf){
            Transaction::open('sei');
            $aux = Transaction::get();
            $sql = "SELECT * FROM pessoa_has_evento WHERE pessoa_cpf=$cpf";
            Transaction::log($sql);
            $result = $aux->query($sql);
            $results=FALSE;
            if ($result){
                    // percorre os resultados da consulta, retornando um objeto
                while ($row = $result->fetchObject(__CLASS__)){
                        // armazena no array $results;
                        $results[] = $row;
                }
                return $results;
            }else{
                return $result;
            }
        }
}
?>