<?php

/**
 * This is the model class for table "telecentro".
 *
 * The followings are the available columns in table 'telecentro':
 * @property string $id
 * @property string $codigo
 * @property string $nome
 * @property string $endereco
 * @property string $cep
 * @property string $municipio
 * @property string $uf
 * @property string $ponto_de_referencia
 * @property string $responsavel
 * @property string $email
 * @property string $telefones
 * @property string $proponente
 * @property string $tipo_de_conexao
 * @property string $tipo_de_telecentro
 * @property string $observacao
 */
class Telecentro extends CActiveRecord
{
    /**
     * Returns the static model of the specified AR class.
     * @return Telecentro the static model class
     */
    public static function model($className=__CLASS__)
    {
        return parent::model($className);
    }

    /**
     * @return string the associated database table name
     */
    public function tableName()
    {
        return 'telecentro';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules()
    {
        return array(
                   array('codigo', 'required'),
                   array('nome', 'safe'),
                   array('endereco', 'safe'),
                   array('cep', 'safe'),
                   array('municipio', 'safe'),
                   array('uf', 'safe'),
                   array('ponto_de_referencia', 'safe'),
                   array('responsavel', 'safe'),
                   array('email', 'safe'),
                   array('telefones', 'safe'),
                   array('proponente', 'safe'),
                   array('tipo_de_conexao', 'safe'),
                   array('tipo_de_telecentro', 'safe'),
                   array('observacao', 'safe'),
                   array('codigo, nome, endereco, cep, municipio, uf, ponto_de_referencia, responsavel, email, telefones, proponente, tipo_de_conexao,tipo_de_telecentro, observacao', 'safe', 'on'=>'search'),
               );
    }

    /**
     * @return array relational rules.
     */
    public function relations()
    {
        return array();
    }

    /**
     * @return array customized attribute labels (name=>label)
     */
    public function attributeLabels()
    {
        return array(
                    'codigo' => 'Código'
                    ,'nome' => 'Nome'
                    ,'endereco' => 'Endereço'
                    ,'cep' => 'CEP'
                    ,'municipio' => 'Município'
                    ,'uf' => 'UF'
                    ,'ponto_de_referencia' => 'Ponto de Referência'
                    ,'responsavel' => 'Responsável'
                    ,'email' => 'E-Mail(s)'
                    ,'telefones' => 'Telefone(s)'
                    ,'proponente' => 'Proponente'
                    ,'tipo_de_conexao' => 'Tipo de Conexão'
                    ,'tipo_de_telecentro' => 'Tipo de Telecentro'
                    ,'observacao' => 'Observação'
               );
    }

    /**
     * Retrieves a list of models based on the current search/filter conditions.
     * @return CActiveDataProvider the data provider that can return the models based on the search/filter conditions.
     */
    public function search()
    {
        $criteria = new CDbCriteria;
        $criteria->compare('id'                        , $this->id, true);
        $criteria->compare('codigo'                    , $this->codigo, true);
        $criteria->compare('lower(nome)'               , mb_strtolower($this->nome), true);
        $criteria->compare('lower(endereco)'           , mb_strtolower($this->endereco), true);
        $criteria->compare('cep'                       , $this->cep, true);
        $criteria->compare('lower(municipio)'          , mb_strtolower($this->municipio), true);
        $criteria->compare('lower(uf)'                 , mb_strtolower($this->uf), true);
        $criteria->compare('lower(ponto_de_referencia)', mb_strtolower($this->ponto_de_referencia), true);
        $criteria->compare('lower(responsavel)'        , mb_strtolower($this->responsavel), true);
        $criteria->compare('lower(email)'              , mb_strtolower($this->email), true);
        $criteria->compare('telefones'                 , $this->telefones, true);
        $criteria->compare('lower(proponente)'         , mb_strtolower($this->proponente), true);
        $criteria->compare('tipo_de_conexao'           , $this->tipo_de_conexao, true);
        $criteria->compare('tipo_de_telecentro'        , $this->tipo_de_telecentro, true);
        $criteria->compare('lower(observacao)'         , mb_strtolower($this->observacao), true);
        
//        $criteria->order='nome_telecentro ASC';
        
        return new CActiveDataProvider(get_class($this), array('criteria'=>$criteria));
    }
}
