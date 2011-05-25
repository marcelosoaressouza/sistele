<?php
  $this->breadcrumbs=array('Telecentros',);
  $this->menu=array(array('label'=>'Criar', 'url'=>array('create')), array('label'=>'Relatório(s)', 'url'=>array('report')));

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

<?php echo CHtml::link('Busca Avançada','#',array('class'=>'search-button'));?>
<br/>
<div class="search-form" style="display:none">
<?php $this->renderPartial('_search',array('model'=>$model,));
?>
</div>
<!-- search-form -->

<?php
    echo CHtml::beginForm('telecentro/options', 'post', array('id'=>'frm','name'=>'frm'));
    echo '<center>';
    echo '&nbsp;&nbsp;'.CHtml::submitButton('Adicionar Novo Registro', array('name'=>'Adicionar', 'onclick'=> 'document.pressed=this.name'));
    echo '&nbsp;&nbsp;'.CHtml::submitButton('Relatório(s)'           , array('name'=>'Relatorios', 'onclick'=> 'document.pressed=this.name'));
    echo '</center>';
    echo CHtml::endForm();
?>

<?php

$dataProvider = $model->search();
$dataProvider->pagination->pageSize = 250;

$this->widget('zii.widgets.grid.CGridView', array(
                  'id'=>'telecentro-grid',
                  'dataProvider'=>$dataProvider,
                  'enableSorting'=>true,
                  'filter'=>$model,
                  'columns'=>array('codigo',
                                   'nome',
                                   'responsavel',
                                   'email',
                                   'municipio',
                                   'uf',
                                   'telefones',
                                   'proponente',
                                   array('class'=>'CButtonColumn',
                                         'template'=>'{view}{update}{delete}{bolsista}',
                                         'buttons'=>array('bolsista' => array('label'=>'Ver Bolsistas','imageUrl'=>Yii::app()->request->baseUrl.'/images/bolsista.png','url'=>'Yii::app()->createUrl("bolsista/ver", array("id"=>$data->id))',),),
                                        ),
                                 ),
              ));

?>
