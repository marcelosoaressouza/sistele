<?php
$this->breadcrumbs=array('Telecentros'=>array('index'),);

$this->menu=array(
                array('label'=>'Listar Todos', 'url'=>array('index')),
                array('label'=>'Criar', 'url'=>array('create')),
            );

Yii::app()->clientScript->registerScript('search', "
        $('.search-button').click(function(){
        $('.search-form').toggle();
        return false;
        });
        $('.search-form form').submit(function(){
        $.fn.yiiGridView.update('telecentro-grid', {
        data: $(this).serialize()
        });
        return false;
        });
        ");
?>

<?php echo CHtml::link('Busca Avançada','#',array('class'=>'search-button'));?>
<div class="search-form" style="display:none">
<?php $this->renderPartial('_search',array('model'=>$model,));?>
</div>
<!-- search-form -->

<?php
$this->widget('zii.widgets.grid.CGridView', array(
                  'id'=>'telecentro-grid',
                  'dataProvider'=>$model->search(),
                  'filter'=>$model,
                  'columns'=>array(
                        'codigo',
                        'nome',
                        'endereco',
                        'cep',
                        'municipio',
                        'uf',
                        'ponto_de_referencia',
                        'responsavel',
                        'email',
                        'telefones',
                        'proponente',
                        'tipo_de_conexao',
                        'tipo_de_telecentro',
                        'observacao',
                      array('class'=>'CButtonColumn',),
                  ),
              ));
?>
