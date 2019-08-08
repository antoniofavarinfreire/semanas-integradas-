<?php

use Livro\Database\Record;
use Livro\Database\Criteria;
use Livro\Database\Repository;
use Livro\Database\Transaction;

Class ListaEventos extends Record{
        const TABLENAME = 'listaeventos';
        
        public static function list($cpf){
            Transaction::open('sei');
            $aux = Transaction::get();
            $sql = "select evento.nome nome, evento.local local, evento.inicio inicio, evento.duracao dura, evento.dia_dia dia, pessoa_has_evento.presenca from evento join pessoa_has_evento on evento.id=pessoa_has_evento.evento_id where pessoa_has_evento.pessoa_cpf=$cpf";
            $result = $aux->query($sql);
            $results = array();
            if($result){
                while($row = $result->fetchObject(__CLASS__)){
                    $results[] = $row;
                }
            }
            return $results;
        }

}
?>