

<?php

/**
 * This is the model class for table "bolsista".
 *
 * The followings are the available columns in table 'bolsista':
 * @property string nome
 * @property string email
 * @property string telefones
 * @property string tipo_bolsa
 * @property string inicio_vigencia
 * @property string termino_vigencia
 * @property string url_lattes
 * @property string id_telecentro
 * @property string id
 *
 * The followings are the available model relations:
 * @property Telecentro $id_telecentro
 */
class Bolsista extends CActiveRecord
{
    /**
     * Returns the static model of the specified AR class.
     * @return Bolsista the static model class
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
        return 'bolsista';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules()
    {
        return array(
                   array('id_telecentro', 'required'),
                   array('nome', 'safe'),
                   array('email', 'safe'),
                   array('telefones', 'safe'),
                   array('tipo_bolsa', 'safe'),
                   array('inicio_vigencia', 'safe'),
                   array('termino_vigencia', 'safe'),
                   array('url_lattes', 'safe'),
                   array('id, nome, email, telefones, tipo_bolsa, inicio_vigencia, termino_vigencia, url_lattes, id_telecentro', 'safe', 'on'=>'search'),
               );
    }

    /**
     * @return array relational rules.
     */
    public function relations()
    {
        return array('telecentro' => array(self::BELONGS_TO, 'Telecentro', 'id_telecentro'),);
    }

    /**
     * @return array customized attribute labels (name=>label)
     */
    public function attributeLabels()
    {
        return array(
                     'nome'             => 'Nome',
                     'email'            => 'E-Mail',
                     'telefones'        => 'Telefones',
                     'tipo_bolsa'       => 'Tipo de Bolsa',
                     'inicio_vigencia'  => 'Inicio Vigência',
                     'termino_vigencia' => 'Termino Vigência',
                     'url_lattes'       => 'Lattes',
                     'id_telecentro'    => 'Telecentro'
                    );
    }

    /**
     * Retrieves a list of models based on the current search/filter conditions.
     * @return CActiveDataProvider the data provider that can return the models based on the search/filter conditions.
     */
    public function search()
    {
        $criteria=new CDbCriteria;

        $criteria->compare('id'               , $this->id, true);
        $criteria->compare('lower(nome)'      , mb_strtolower($this->nome), true);
        $criteria->compare('lower(email)'     , mb_strtolower($this->email), true);
        $criteria->compare('telefones'        , $this->telefones, true);
        $criteria->compare('tipo_bolsa'       , $this->tipo_bolsa, true);
        $criteria->compare('inicio_vigencia'  , $this->inicio_vigencia, true);
        $criteria->compare('termino_vigencia' , $this->termino_vigencia, true);
        $criteria->compare('url_lattes'       , $this->url_lattes, true);
        $criteria->compare('id_telecentro'    , $this->id_telecentro, true);

        return new CActiveDataProvider(get_class($this), array('criteria'=>$criteria,));
    }
}
