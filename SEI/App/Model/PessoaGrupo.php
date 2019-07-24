<?php
use Livro\Database\Record;
use Livro\Database\Transaction;
use Dompdf\Exception;

class PessoaGrupo extends Record
{
    const TABLENAME = 'pessoa_has_grupo';

    public static function last(){
        Transaction::open('sei');
        $aux = Transaction::get();
        $sql = "SELECT * FROM pessoa_has_grupo ORDER BY id DESC LIMIT 1";
        Transaction::log($sql);
        $result = $aux->query($sql);
        if($result){
            return $result->fetchObject(__CLASS__);
        }else{
            return array("id"=>1);
        }
    }

    public static function associate($pessoa, $grupos){
        Transaction::open('sei');
        $aux = Transaction::get();
        $last = PessoaGrupo::last();
        $id = $last->id + 1;
        $id = (int)$id;
        foreach($grupos as $grupo){
            $sql = "INSERT INTO pessoa_has_grupo(pessoa_cpf,grupo_id,id)VALUES('$pessoa',$grupo,$id)";
            $aux->query($sql);
            $id++;
        }
    }

    public static function unAssociate($pessoa){
        Transaction::open('sei');
        $aux = Transaction::get();
        $sql = "DELETE FROM pessoa_has_grupo WHERE pessoa_cpf='$pessoa'";
        $aux->query($sql);
    }

    public static function getAssociates($pessoa){
        Transaction::open('sei');
        $sql = "SELECT * FROM pessoa_has_grupo WHERE pessoa_cpf='$pessoa'";
        $aux = Transaction::get();
        $result = $aux->query($sql);
        $results = array();
        if($result){
            while($row = $result->fetchObject(__CLASS__)){
                $results[] = $row;
            }
            return $results;
        }else{
            throw new Exception('Sem grupo cadastrado');
        }
    }

    public static function getIds($pessoa){
        $grupos = PessoaGrupo::getAssociates($pessoa);
        $ids = array();
        if($grupos){
            foreach($grupos as $grupo){
                $ids[] = $grupo->grupo_id;
            }
            return $ids;
        }
    }
}
