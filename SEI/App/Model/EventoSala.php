<?php
use Livro\Database\Record;
use Livro\Database\Transaction;

class EventoSala extends Record
{
    const TABLENAME = 'evento_has_sala';
    
    public static function last(){
        Transaction::open('sei');
        $aux = Transaction::get();
        $sql = "SELECT * FROM evento_has_sala ORDER BY id DESC LIMIT 1";
        Transaction::log($sql);
        $result = $aux->query($sql);
        if($result){
            return $result->fetchObject(__CLASS__);
        }else{
            return array("id"=>1);
        }
    }

    public static function associate($evento, $sala, $dia){
        Transaction::open('sei');
        $aux = Transaction::get();
        $last = EventoSala::last();
        $id = $last->id + 1;
        $id = (int)$id;
        $sql = "INSERT INTO evento_has_sala(evento_id,evento_dia_dataDia,sala_nome,id)VALUES($evento,'$dia','$sala',$id)";
        Transaction::log($sql);
        $aux->query($sql);
    }
}
