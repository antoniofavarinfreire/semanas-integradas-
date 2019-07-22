<?php
/**
 * Contador Active Record
 * @author  <your-name-here>
 */
class Contador extends TRecord
{
    const TABLENAME = 'contador';
    const PRIMARYKEY= 'id';
    const IDPOLICY =  'max'; // {max, serial}
    
    
    /**
     * Constructor method
     */
    public function __construct($id = NULL, $callObjectLoad = TRUE)
    {
        parent::__construct($id, $callObjectLoad);
        parent::addAttribute('pagina');
        parent::addAttribute('titulo');
        parent::addAttribute('publicacao');
        parent::addAttribute('total');
    }


}
