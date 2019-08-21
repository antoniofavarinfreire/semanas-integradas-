<?php
use Livro\Database\Record;
use Livro\Database\Criteria;
use Livro\Database\Repository;
use Livro\Database\Transaction;

try{
    $dbBrute = new PDO("mysql:host=localhost;dbname=sge", 'sge', 'indiolambda');
}catch(PDOException $e){
    echo $e->getMessage();  
}

class Pessoa extends Record
{
    const TABLENAME = 'pessoa';
    const PRIMARYKEY = 'cpf';
    // @param [$cpf] cpf do da pessoa Description


    public static function changePass($cpf,$nasc){
        try{
            $dbBrute = new PDO("mysql:host=localhost;dbname=sge", 'sge', 'indiolambda');
        }catch(PDOException $e){
            echo $e->getMessage();  
        }
        $pass = substr($nasc,0,4);
        $pass .= substr($cpf,0,3);
        $pass = hash('sha512',$pass);
        $sql = "UPDATE pessoa SET senha='$pass' WHERE cpf='$cpf'";
        $result = $dbBrute->prepare($sql);
        $result->execute();
        $foi = $result->rowCount();
        if($foi ==  1){
            return true;
        }else{
            return false;
        }
    }

    public static function find2($cpf)
    {
        Transaction::open('sei');
        $aux = Transaction::get();
        $sql = "SELECT * FROM pessoa WHERE cpf='$cpf'";
        Transaction::log($sql);
        $result = $aux->query($sql);
        if($result){
            return $result->fetchObject(__CLASS__);
        }
    }

    public static function delete2($cpf)
    {
        Transaction::open('sei');
        $aux = Transaction::get();
        $img = Pessoa::find2($cpf);
        $sql = "DELETE FROM pessoa_has_grupo WHERE pessoa_cpf='$cpf'";
        Transaction::log($sql);
        $img = $img->imagem_nome;
        $result = $aux->exec($sql);
        $sql = "DELETE FROM imagem WHERE nome='$img'";
        Transaction::log($sql);
        $result = $aux->exec($sql);
        $sql = "DELETE FROM pessoa WHERE cpf=$cpf";
        Transaction::log($sql);
        $result = $aux->exec($sql);
        return $result;
    }

    public function verify(){
        Transaction::open('sei');
        if(!empty($this->data['cpf'])){
            $ver = $this->find2($this->data['cpf']);
            if($ver){
                throw new Exception('CPF já cadastrado');
            }else{
                if(empty($this->data['nome'])){
                    throw new Exception('Nome não preenchido');
                }
                if(empty($this->data['email'])){
                    throw new Exception('Email não preenchido');
                }
                if(empty($this->data['nascimento'])){
                    throw new Exception('Data de nascimento não preenchida');
                }
                if((empty($this->data['senha']))||(empty($this->data['password_check']))){
                    throw new Exception('Não esqueça de digitar a Senha e sua Confirmação');
                }else{
                    if(strcmp($this->data['senha'], $this->data['password_check'])){
                        throw new Exception("As senhas fornecidas são diferenrtes"); 
                    }else{
                        $hash = password_hash($this->data['senha'],PASSWORD_DEFAULT);
                        $this->data['senha'] = $hash;
                        $this->data = array(
                            'cpf' => $this->data['cpf'],
                            'nome' => $this->data['nome'],
                            'email' => $this->data['email'],
                            'nascimento' => $this->data['nascimento'],
                            'senha' => $this->data['senha'],
                            'id' => $this->data['id'],
                            'imagem_nome' => $this->data['imagem_nome'],
                        );
                    }
                }
            }
        }else{ 
           throw new Exception('CPF não preenchido');
        }
    }

    public function verify2(){
        Transaction::open('sei');
        if(!empty($this->data['cpf'])){
                if(empty($this->data['nome'])){
                    throw new Exception('Nome não preenchido');
                }
                if(empty($this->data['email'])){
                    throw new Exception('Email não preenchido');
                }
                if(empty($this->data['nascimento'])){
                    throw new Exception('Data de nascimento não preenchida');
                }
                if((empty($this->data['senha']))||(empty($this->data['password_check']))){
                    throw new Exception('Não esqueça de digitar a Senha e sua Confirmação');
                }else{
                    if(strcmp($this->data['senha'], $this->data['password_check'])){
                        throw new Exception("As senhas fornecidas são diferenrtes"); 
                    }else{
                        $hash = password_hash($this->data['senha'],PASSWORD_DEFAULT);
                        $this->data['senha'] = $hash;
                        $this->data = array(
                            'cpf' => $this->data['cpf'],
                            'nome' => $this->data['nome'],
                            'email' => $this->data['email'],
                            'nascimento' => $this->data['nascimento'],
                            'senha' => $this->data['senha'],
                            'id' => $this->data['id'],
                            'imagem_nome' => $this->data['imagem_nome'],
                        );
                    }
                }
        }else{ 
           throw new Exception('CPF não preenchido');
        }
    }
    public function update(){
        $this->verify2();
        Transaction::open('sei');
        $aux = Transaction::get();
        $pessoa = Pessoa::find2($this->data['cpf']);
        $this->data['id'] = $pessoa->id;
        $this->data['imagem_nome'] = $pessoa->imagem_nome;
        $sql = "UPDATE pessoa SET ";
        foreach($this->data as $k => $v){
            if($k == "id"){
                $sql.= "$k = $v, ";
            }elseif($k == 'cpf'){
                $sql .= "";
            }else{
                $sql.= "$k = '$v', ";
            }
        }
        $sql = substr($sql,0,-2);
        $cpf = $this->data['cpf'];
        $sql.= " WHERE cpf='$cpf'";
        $aux->query($sql);
    }
}
