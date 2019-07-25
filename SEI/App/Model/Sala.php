<?php
use Livro\Database\Record;
use Livro\Database\Transaction;
class Sala extends Record
{
    const TABLENAME = 'sala';

    public static function find2($nome)
    {
        Transaction::open('sei');
        $aux = Transaction::get();
        $sql = "SELECT * FROM sala WHERE nome='$nome'";
        Transaction::log($sql);
        $result = $aux->query($sql);
        if($result){
            return $result->fetchObject(__CLASS__);
        }
    }
}
