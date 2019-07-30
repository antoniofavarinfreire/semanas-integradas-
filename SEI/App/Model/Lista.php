<?php

use Livro\Database\Record;
use Livro\Database\Criteria;
use Livro\Database\Repository;
use Livro\Database\Transaction;

Class Lista extends Record{
        const TABLENAME = 'lista';
        
        public static function list($evento){
            Transaction::open('sei');
            $aux = Transaction::get();
            $sql = "SELECT pessoa.nome nome, pessoa_has_evento.pessoa_cpf cpf, pessoa_has_evento.presenca presenca, pessoa_has_evento.espera espera, pessoa_has_evento.confirmacao confirmacao from pessoa join pessoa_has_evento on pessoa.cpf=cpf where evento_id=$evento";
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