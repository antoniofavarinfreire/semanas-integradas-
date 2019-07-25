<?php
use Livro\Database\Record;
use Livro\Database\Transaction;
class EventoTipo extends Record
{
    const TABLENAME = 'evento_has_tipo';

    public static function last(){
        Transaction::open('sei');
        $aux = Transaction::get();
        $sql = "SELECT * FROM evento_has_tipo ORDER BY id DESC LIMIT 1";
        Transaction::log($sql);
        $result = $aux->query($sql);
        if($result){
            return $result->fetchObject(__CLASS__);
        }else{
            return array("id"=>1);
        }
    }

    public static function id($evento){
        Transaction::open('sei');
        $aux = Transaction::get();
        $sql = "SELECT * FROM evento_has_tipo WHERE evento_id=$evento";
        Transaction::log($sql);
        $result = $aux->query($sql);
        $tipo = $result->fetchObject(__CLASS__);
        $tipo = $tipo->data['tipo_id'];
        if($result){
            $sql = "SELECT * FROM tipo WHERE id=$tipo";
            Transaction::log($sql);
            $result = $aux->query($sql);
            $tipo = $result->fetchObject(__CLASS__);
            return $tipo;
        }else{
            throw new Exception('Erro ao carregar a tipo');
        }
    }

    public static function associate($evento, $tipo, $dia){
        Transaction::open('sei');
        $last = EventoTipo::last();
        $id = $last->id + 1;
        $id = (int)$id;
        $dia = (string)$dia;
        $aux = Transaction::get();
        $sql = "INSERT INTO evento_has_tipo(evento_id,evento_dia_dataDia,tipo_id,id)VALUES($evento,'$dia',$tipo,$id)";
        Transaction::log($sql);
        $aux->query($sql);

    }

    public static function unassociate($evento){
        Transaction::open('sei');
        $aux = Transaction::get();
        $sql = "DELETE FROM evento_has_tipo WHERE evento_id=$evento";
        $aux->query($sql);
    }
}