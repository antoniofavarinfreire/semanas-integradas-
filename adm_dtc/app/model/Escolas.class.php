<?php
/**
 * Escolas Active Record
 * @author  <your-name-here>
 */
class Escolas extends TRecord
{
    const TABLENAME = 'escolas';
    const PRIMARYKEY= 'id';
    const IDPOLICY =  'max'; // {max, serial}
    
    
    /**
     * Constructor method
     */
    public function __construct($id = NULL, $callObjectLoad = TRUE)
    {
        parent::__construct($id, $callObjectLoad);
        parent::addAttribute('inep');
        parent::addAttribute('nome');
        parent::addAttribute('categoria');
    }


}
