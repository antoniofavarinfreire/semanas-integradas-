<?php
use Livro\Database\Transaction;
use Livro\Database\Record;

class Eventos extends Record{
        const TABLENAME = 'eventos';

        public function all2(){
                Transaction::open('sei');
                $sql = "select e.id, e.nome, es.sala_nome, e.inicio, e.dia_dataDia from evento e join evento_has_sala es where e.id = es.evento_id" ;
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