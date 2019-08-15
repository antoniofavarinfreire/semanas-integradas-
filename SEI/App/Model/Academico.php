<?php

use Livro\Database\Record;
use Livro\Database\Criteria;
use Livro\Database\Repository;
use Livro\Database\Transaction;

class Academico extends Record
{
    const TABLENAME = 'academico';

    public static function find2($cpf){
        Transaction::open('sei');
        $aux = Transaction::get();
        $sql = "select * from academico where pessoa_cpf='$cpf'";
        $result = $aux->query($sql);
        return $result->fetchObject(__CLASS__);
    }

}
