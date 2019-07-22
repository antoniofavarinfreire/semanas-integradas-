<?php
/**
 * Contatos Active Record
 * @author  <your-name-here>
 */
class Contatos extends TRecord
{
    const TABLENAME = 'contatos';
    const PRIMARYKEY= 'id';
    const IDPOLICY =  'max'; // {max, serial}
    
    
    /**
     * Constructor method
     */
    public function __construct($id = NULL, $callObjectLoad = TRUE)
    {
        parent::__construct($id, $callObjectLoad);
        parent::addAttribute('nome');
        parent::addAttribute('cargo');
        parent::addAttribute('telefone');
        parent::addAttribute('departamento');
    }


}
