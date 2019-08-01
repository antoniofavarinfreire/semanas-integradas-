<?php
use Livro\Database\Record;
use Livro\Database\Transaction;

include "qrcode/qrlib.php";
use Dompdf\Exception;

class ImagemEvento extends Record
{
    const TABLENAME = 'imagem_has_evento';

    public static function asssociate($evento){
        $nome = "qr"+(string)$evento->id;
        Transaction::open('sei');
        $aux = Transaction::get();
        $endereco = "../imagens/qrs/";
        $sql = "INSERT INTO imagem(nome,endereco,tipo,id) VALUES ($nome,$endereco,1,$evento->id)";
        $result = $aux->query($sql);
        if(!$result){
            throw new Exception('Erro Insert Imagem');
        }
        $sql = "INSERT INTO imagem_has_evento(imagem_nome,evento_id,evento_dia_dataDia, id) VALUES ($nome, $evento->id, $evento->dia_dataDia, $evento->id)";
        $result = $aux->query($sql);
        if(!$result){
            throw new Exception('Erro Insert Imagem -> Evento');
        }
    }

    public static function unassociate($nome,$id){
        Transaction::open('sei');
        $aux = Transaction::get();
        $sql = "DELETE FROM imagem_has_evento WHERE imagem_nome=$nome AND evento_id=$id";
        $result = $aux ->query($sql);
        if($result){
            throw new Exception('Erro Delete Imagem -> Evento');
        }
        $sql = "DELETE FROM imagem WHERE imagem_nome=$nome";
        $result = $aux ->query($sql);
        if($result){
            throw new Exception('Erro Delete Imagem -> Evento');
        }
    }

    public static function createQR($imagem,$contents){
        $path = $imagem->endereco + $imagem->nome;
        QRcode::png($contents,$path);
    }

}
