<?php
use Livro\Database\Record;
use Livro\Database\Criteria;
use Livro\Database\Repository;

class Atividade extends Record
{
    const TABLENAME = 'atividade';
    /* private $cidade; */
    
    /**
     * Retorna a cidade.
     * Executado sempre se for acessada a propriedade "->cidade"
     */
   /*  public function get_cidade()
    {
        if (empty($this->cidade))
            $this->cidade = new Cidade($this->id_cidade);
        
        return $this->cidade;
    } */
    
    /**
     * Retorna o nome da cidade.
     * Executado sempre se for acessada a propriedade "->nome_cidade"
     */
   /*  public function get_nome_cidade()
    {
        if (empty($this->cidade))
            $this->cidade = new Cidade($this->id_cidade);
        
        return $this->cidade->nome;
    } */
    
    /**
     * Adiciona um grupo à atividade
     */
    public function addTipo(Tipo $tipo)
    {
        $pg = new AtividadeTipo;
        $pg->id_tipo = $tipo->id;
        $pg->id_atividade = $this->id;
        $pg->store();
    }
    
    /**
     * Exclui os tipos da atividade
     */
    public function delTipos()
    {
	    $criteria = new Criteria;
	    $criteria->add('id_atividade', '=', $this->id);
	    
	    $repo = new Repository('AtividadeTipo');
	    return $repo->delete($criteria);
    }
    
    /**
     * Retorna os tipos da atividade
     */
    public function getTipos()
    {
        $tipos = array();
	    $criteria = new Criteria;
	    $criteria->add('id_atividade', '=', $this->id);
	    
	    $repo = new Repository('AtividadeTipo');
	    $vinculos = $repo->load($criteria);
	    if ($vinculos) {
	        foreach ($vinculos as $vinculo) {
	            $tipos[] = new Grupo($vinculo->id_tipo);
	        }
	    }
	    return $tipos;
    }
    
    /**
     * Retorna os ID's de tipos da atividade
     */
    public function getIdsTipos()
    {
        $tipos_ids = array();
	    $tipos = $this->getTipos();
	    if ($tipos) {
	        foreach ($tipos as $tipo) {
	            $tipos_ids[] = $tipo->id;
	        }
	    }
	    
	    return $tipos_ids;
    }
    
    /**
     * Retorna as contas em aberto
     */
    /* public function getContasEmAberto()
    {
        return Conta::getByPessoa($this->id);
    } */
    
    /**
     * Retorna o total em débitos
     */
   /*  public function totalDebitos()
    {
        return Conta::debitosPorPessoa($this->id);
    } */
}
