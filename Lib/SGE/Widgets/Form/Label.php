<?php
namespace SGE\Widgets\Form;

use SGE\Widgets\Base\Element;

/**
 * Representa um rótulo de texto
 *
 */
class Label extends Field implements FormElementInterface
{
    private $tag;
    
    /**
     * Construtor
     * @param $value text label
     */
    public function __construct($value)
    {
        // set the label's content
        $this->setValue($value);
        
        // create a new element
        $this->tag = new Element('label');
    }
    
    /**
     * Adiciona conteúdo no label
     */
    public function add($child)
    {
        $this->tag->add($child);
    }
    
    /**
     * Exibe o widget
     */
    public function show()
    {
        $this->tag->add($this->value);
        $this->tag->show();
    }
}
