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

    public static function unassociate($evento){
        Transaction::open('sei');
        $aux = Transaction::get();
        $sql = "DELETE FROM evento_has_sala WHERE evento_id=$evento";
        $aux->query($sql);
    }

    public static function nome($evento){
        Transaction::open('sei');
        $aux = Transaction::get();
        $sql = "SELECT * FROM evento_has_sala WHERE evento_id=$evento";
        Transaction::log($sql);
        $result = $aux->query($sql);
        if($result){
            $sala = $result->fetchObject(__CLASS__);
            $sala = $sala->data['sala_nome'];
            return $sala;
        }else{
            throw new Exception('Erro ao carregar a sala');
        }
    }

    public static function onThis($sala){
        Transaction::open('sei');
        $aux = Transaction::get();
        $sql = "SELECT * FROM evento_has_sala WHERE sala_nome=$sala";
        Transaction::log($sql);
        $result = $aux->query($sql);
        $results = array();
        if($result){
            while($row = $result->fetchObject(__CLASS__)){
                $results[] = $row;
            }
            return $results;
        }
    }
}
