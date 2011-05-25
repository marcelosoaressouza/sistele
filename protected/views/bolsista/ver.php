<?php
$this->breadcrumbs=array('Bolsistas'=>array('index'),'Ver Bolsistas',);

$this->menu=array(array('label'=>'Criar', 'url'=>array('create&id='.$_GET['id'])),);

Yii::app()->clientScript->registerScript('search', "
        $('.search-button').click(function(){
        $('.search-form').toggle();
        return false;
        });
        $('.search-form form').submit(function(){
        $.fn.yiiGridView.update('bolsista-grid', {
        data: $(this).serialize()
        });
        return false;
        });
        ");
?>

<?php
    echo CHtml::beginForm('/bolsista/create', 'post', array('id'=>'frm','name'=>'frm'));
    echo '<center>';
    echo '&nbsp;&nbsp;'.CHtml::submitButton('Adicionar Novo Registro', array('name'=>'Adicionar', 'onclick'=> 'document.pressed=this.name'));
    echo '</center>';
    echo CHtml::endForm();
?>

<?php
$this->widget('zii.widgets.grid.CGridView', array(
                  'id'=>'bolsista-grid',
                  'dataProvider'=>$dados,
                  'columns'=>array(
                      'nome',
                      'email',
                      'telefones',
                      'tipo_bolsa',
                      'inicio_vigencia',
                      'termino_vigencia',
                      array('name' => 'Lattes', 'type'=>'raw', 'value' => 'CHtml::link($data->url_lattes, $data->url_lattes, array ("target"=>"_blank"))'),
                      array('name' => 'Telecentro', 'value' => '$data->telecentro->nome', 'filter'=>false),
                      array(
                          'class'=>'CButtonColumn','template'=>'{view}{delete}{update}'
                      ),
                  ),
              ));
?>