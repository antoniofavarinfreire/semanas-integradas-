<?php
namespace SGE\Widgets\Form;

use SGE\Widgets\Base\Element;

/**
 * Representa botões de verificação
 *
 */
class CheckButton extends Field implements FormElementInterface
{
    /**
     * Exibe o widget na tela
     */
    public function show()
    {
        // atribui as propriedades da TAG
        $tag = new Element('input');
        $tag->class = 'field';		  // classe CSS
        $tag->name = $this->name;     // nome da TAG
        $tag->value = $this->value;   // value
        $tag->type = 'checkbox';      // tipo do input
        
        // se o campo não é editável
        if (!parent::getEditable())
        {
            // desabilita a TAG input
            $tag->readonly = "1";
        }
        
        if ($this->properties)
        {
            foreach ($this->properties as $property => $value)
            {
                $tag->$property = $value;
            }
        }
        
        // exibe a tag
        $tag->show();
    }
}
