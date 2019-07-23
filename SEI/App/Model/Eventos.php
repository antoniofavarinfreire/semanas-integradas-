<?php
use Livro\Database\Transaction;
use Livro\Database\Record;

class Eventos extends Record{
        const TABLENAME = 'eventos';

        public function all2(){
                Transaction::open('sei');
                $sql = "select evento.id, evento.nome, evento_has_sala.sala_nome, evento.inicio, evento.dia_dataDia FROM evento join evento_has_sala";
                $aux = Transaction::get();
                Transaction::log($sql);
                $result = $aux->query($sql);
                $results = array();
                while($row = $result->fetchObject(__CLASS__)){
                    $results[] = $row;
                }
                return $results;
        }
    }

?>