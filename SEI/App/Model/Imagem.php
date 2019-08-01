<?php
use Livro\Database\Record;
use Livro\Database\Transaction;

class Imagem extends Record
{
    const TABLENAME = 'imagem';
    const PRIMARYKEY = 'nome';
}
